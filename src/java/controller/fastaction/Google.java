/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.fastaction;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ResourceBundle;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;

/**
 *
 * @author Acer Aspire 7
 */
@WebServlet(name = "Google", urlPatterns = {"/google"})
public class Google extends HttpServlet {

    static final ResourceBundle bundle = ResourceBundle.getBundle("properties.credentials");
    HttpSession session;

    public static String getToken(String code) throws ClientProtocolException, IOException {
        // call api to get token
        String response = Request.Post(bundle.getString("GOOGLE_LINK_GET_TOKEN"))
                .bodyForm(Form.form().add("client_id", bundle.getString("GOOGLE_CLIENT_ID"))
                        .add("client_secret", bundle.getString("GOOGLE_CLIENT_SECRET"))
                        .add("redirect_uri", bundle.getString("GOOGLE_REDIRECT_URI")).add("code", code)
                        .add("grant_type", bundle.getString("GOOGLE_GRANT_TYPE")).build())
                .execute().returnContent().asString();

        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    public static entity.GoogleUser getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        String link = bundle.getString("GOOGLE_LINK_GET_USER_INFO") + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();

        entity.GoogleUser googleUser = new Gson().fromJson(response, entity.GoogleUser.class);

        return googleUser;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        session = request.getSession();
        String code = request.getParameter("code");
        String accessToken = getToken(code);

        String url = "https://people.googleapis.com/v1/people/me?personFields=names,emailAddresses,phoneNumbers,photos,genders";

        String apiResponse = Request.Get(url)
                .addHeader("Authorization", "Bearer " + accessToken)
                .execute()
                .returnContent()
                .asString();

        System.out.println(apiResponse);

        Gson gson = new Gson();
        JsonObject userInfo = gson.fromJson(apiResponse, JsonObject.class);

        String email;
        String avatar;

        if (userInfo.has("emailAddresses") && userInfo.getAsJsonArray("emailAddresses").size() > 0) {
            JsonObject emailAddresses = userInfo.getAsJsonArray("emailAddresses").get(0).getAsJsonObject();
            System.out.println("Email: " + emailAddresses.get("value").getAsString());
            email = emailAddresses.get("value").getAsString();
        } else {
            email = null;
        }

        if (userInfo.has("photos") && userInfo.getAsJsonArray("photos").size() > 0) {
            JsonObject photos = userInfo.getAsJsonArray("photos").get(0).getAsJsonObject();
            avatar = photos.get("url").getAsString();
        } else {
            avatar = null;
        }

        if (email == null) {
            request.setAttribute("msg", "Invalid google account can not login/register!");
            request.getRequestDispatcher("public/Login.jsp").forward(request, response);
        } else {
            doAuthorizeGoogleUser(email, avatar, session, request, response);
        }
    }

    private void doAuthorizeGoogleUser(String email, String avatar,
            HttpSession session, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
