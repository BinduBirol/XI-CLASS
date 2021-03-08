package edu.action.application;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.apache.xmlbeans.impl.util.Base64;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

public class ClientService {

    public static String callByHttpPost(String URL, String authorization, String contentData, String contentType) {
        HttpClient httpClient = new DefaultHttpClient();
        verifiedClient(httpClient);//Client verifier
        try {
            HttpPost httpPost = new HttpPost(URL);
            StringEntity entity = new StringEntity(contentData, "UTF-8");
            httpPost.setEntity(entity);

            if (authorization != null) {
                httpPost.setHeader("Authorization", "Basic " + new String(Base64.encode(authorization.getBytes())));
                httpPost.setEntity(entity);
            }

            httpPost.setHeader("Content-Type", contentType);
            String response;
            EntityUtils.toString(httpPost.getEntity());
            HttpResponse httpResponse = httpClient.execute(httpPost);
            HttpEntity httpEntity = (httpResponse == null) ? null :
                    httpResponse.getEntity();
            response = (httpEntity != null) ? EntityUtils.toString(httpEntity) : null;
            return response;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public static String callByHttpGet(String URL, String authorization, String paramData,
                                       String contentType) {
        String requestURL = "";
        requestURL = URL + "?" + paramData;
        HttpGet request = new HttpGet(requestURL);
        request.setHeader("Accept", contentType);
        request.setHeader("Content-Type", contentType);

        if (authorization != null) {
            request.setHeader("Authorization", "Basic " + new String(Base64.encode(authorization.getBytes())));
        }
        HttpResponse response = null;
        String strResponse = null;

        try {

            HttpClient client = new DefaultHttpClient();
            verifiedClient(client);//Client verifier

            response = client.execute(request);
            strResponse = (response.getEntity() != null) ?
                    EntityUtils.toString(response.getEntity()) : null;
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return strResponse;
    }

    ///use this function to verify Client for SSL
    public static HttpClient verifiedClient(HttpClient base) {
        try {
            SSLContext ctx = SSLContext.getInstance("SSL");
            X509TrustManager tm = new X509TrustManager() {
                public java.security.cert.X509Certificate[] getAcceptedIssuers() {
                    return null;
                }

                @Override
                public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
                }

                @Override
                public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
                }
            };

            ctx.init(null, new TrustManager[]{tm}, null);
            SSLSocketFactory ssf = new SSLSocketFactory(ctx, SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            ClientConnectionManager mgr = base.getConnectionManager();
            SchemeRegistry registry = mgr.getSchemeRegistry();
            registry.register(new Scheme("https", 443, ssf));
            return new DefaultHttpClient(mgr, base.getParams());
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
 