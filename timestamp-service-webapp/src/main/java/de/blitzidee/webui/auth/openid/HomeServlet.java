package de.blitzidee.webui.auth.openid;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dyuproject.openid.OpenIdUser;
import com.dyuproject.openid.RelyingParty;
import com.dyuproject.openid.ext.AxSchemaExtension;

public class HomeServlet extends HttpServlet
{
    static
    {
        RelyingParty.getInstance()
        .addListener(new AxSchemaExtension()
            .addExchange("email")
            .addExchange("country")
            .addExchange("language")
        );
    }
    
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException
    {
        OpenIdUser user = (OpenIdUser)request.getAttribute(OpenIdUser.ATTR_NAME);
                
        Map<String,String> axschema = AxSchemaExtension.get(user);
        
        
        
        String email = axschema.get("email");
        String country = axschema.get("country");
        String language = axschema.get("language");
        
        // do something with your user's data
        
        System.out.println(user.getIdentity() +" "+ email+" "+country+" "+language);
    }
}