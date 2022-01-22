<%-- 
    Document   : referenceFilter
    Created on : 3 déc. 2021, 23:06:01
    Author     : asus
--%>

<%@page import="java.util.List"%>
<%@page import="beans.Machine"%>
<%@page import="service.MachineService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            section{
                width: 80%;
                margin: 20px auto;
                background: #15EEF9;
                border-radius: 40px;
                padding: 20px;
            }
            section form {
                width: 100%;
                text-align: center;
            }
            section form label{
                font-family:arial;
                font-size: 18px;
                font-weight: 500;
                letter-spacing: 2px;
            }
            section form select{
                width: 250px;
                height: 40px;
                border-radius: 10px;
                letter-spacing: 2px;
                font-size: 20px;
                border :0;
                outline: 0;  
            }
            section form button{
                padding: 10px 15px;
                border-radius: 5px;
                letter-spacing: 2px;
                font-size: 20px;
                border :0;
                outline: 0;
                margin-left: 10px; 
            }
            section table{
                border-collapse: collapse;
                margin: 0 auto;
                width: 90%; 
                border-radius: 1em;
                overflow: hidden;
                font-size: 16px;
            }
            section table tr:nth-child(2n+1){
                background: #186366;
            }
            section table tr{
                height: 60px;
            }
            section table tr td{
                text-align: center;
            }
        </style>
    </head>
 

<%@ include file="/templates/menu.jsp" %>

<div id="right-panel" class="right-panel">
<%@ include file="/templates/header.jsp" %>

            <section>
           <form action="referFilterController" method="POST">
                <label>references :</label>
                <select name="reference" >
                    <%
                        MachineService ms = new MachineService();
                        for (String r: ms.findReference()) {
                    %>
                    <option value="<%= r %>"><%= r %></option>
                     <%}%>
                </select>
                <button type="submit">Load</button>
            </form>
       </section>
       <section>
           <table border="0">
               
                   <tr>
                       <th>ID</th>
                       <th>Reference</th>
                       <th>Date Achat</th>
                       <th>Prix</th>
                   </tr>
                   
                    <%
                        for (Machine m : ms.findMachineByReference(request.getParameter("reference"))) {
                    %>
                    <tr>
                        <td><%= m.getId()%></td>
                        <td><%= m.getReference()%></td>
                        <td><%= m.getDateAchat()%></td>
                        <td><%= m.getPrix()%></td>
                    </tr>
                    <%}%>
               
           </table>

       </section>
<%@ include file="/templates/footer.jsp" %>
</div>
    </body>
</html>