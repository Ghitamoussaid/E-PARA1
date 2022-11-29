<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="entities.User"%>
<%@page import="services.UserService"%>

<%
       String l = request.getParameter("email");
       String p = request.getParameter("password");
      
       String p1;
       String p2;
       User u = new User();
       UserService us = new UserService();
        
       MessageDigest md = MessageDigest.getInstance("MD5");
       BigInteger bi = new BigInteger(1, md.digest(p.getBytes()));
       BigInteger b2 = new BigInteger(1, md.digest("oooo".getBytes()));
       p2 = b2.toString(16);
       p1 = bi.toString(16);
       
       
       if (l.equalsIgnoreCase("orchinouha@gmail.com") && p1.equals(p2)) {
               u.setEmail(l);
               u.setPassword(p);
               session.setAttribute("user", u);
               response.sendRedirect("Admin.jsp");
           } else {
               for (User u1 : us.findAll()) {
                   if (u1.getEmail().equalsIgnoreCase(l) && u1.getPassword().equals(p1)) {
                       u.setId(u1.getId());
                       u.setEmail(l);
                       u.setPassword(p1);                   
                       session.setAttribute("user", u);
                       response.sendRedirect("Client.jsp");
                   }
               }
           }
       
%>

