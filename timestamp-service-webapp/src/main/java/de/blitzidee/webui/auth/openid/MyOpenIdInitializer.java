package de.blitzidee.webui.auth.openid;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.dyuproject.openid.RelyingParty;
import com.dyuproject.openid.ext.AxSchemaExtension;

public class MyOpenIdInitializer 
implements ServletContextListener
{

	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	
	public void contextInitialized(ServletContextEvent arg0) {
	
		RelyingParty.getInstance()
        .addListener(new AxSchemaExtension()
            .addExchange("email")
            .addExchange("country")
            .addExchange("language")
        );
		
		System.out.println("Relying party initialized.");
		
	}
	
	
	
}
