package com.javatpoint;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent event) {
        System.out.println("Bill Payment System started successfully.");
    }

    @Override
    public void contextDestroyed(ServletContextEvent event) {
        System.out.println("Bill Payment System stopped.");
    }
}
