<%-- 
    Document   : machine
    Created on : 13 janv. 2022, 18:18:21
    Author     : asus
--%>

<%@page import="beans.Marque"%>
<%@page import="service.MarqueSerice"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="has-sidebar has-fixed-sidebar-and-header">

        <%@ include file="/templates/header.jsp" %> 
        <main class="main">
            <%@ include file="/templates/menu.jsp" %>
            <div class="content">
                
                <div class="clearfix"></div>

        <div class="content-wrapper">
            <div class="container-fluid">
                <div class="row mt-3">
                    <div class="col-lg-12">
                        
                           <div class="mb-3 mb-md-4 d-flex justify-content-between">
                        <div class="h3 mb-0">Nouvelle marque</div>
                    </div>
                        
                        <hr>
                        <form action="MarqueController" method="POST">
                            <input type="hidden" name="id"
                                   value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>"
                                   size="id" />
                            <div >
                                <label for="code">Code :</label> 
                                <input required="" type="text" name="code" id="code" value="<%=request.getParameter("code") == null ? "" : request.getParameter("code")%>" />


                            </div><br>

                       

                            <div >
                                <label for="libelle">Libelle :</label> 
                                <input required="" type="text" name="libelle" id="libelle" value="<%=request.getParameter("libelle") == null ? "" : request.getParameter("libelle")%>" />


                            </div><br>


                            <input id="send" type="submit" value="Envoyer" /> 
                            <input type="reset" value="Annuler" />
                        </form>
                    </div>



                    <div class="col-12 col-lg-12">
                        <div class="table-responsive"><br>
                            <table  class="table align-items-center table-flush table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>CODE</th>
                                        <th>LIBELLE</th>
                                        <th>Supprimer</th>
                                        <th>Modifier</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        MarqueSerice ms = new MarqueSerice();
                                        for (Marque m : ms.findAll()) {
                                    %>
                                    <tr>
                                        <td><%= m.getId()%></td>
                                        <td><%= m.getCode()%></td>
                                        <td><%= m.getLibelle()%></td>
                                        
                                        <td><a href="MarqueController?id=<%=m.getId()%>&op=delete">Supprimer</a></td>
                                        <td><a href="MarqueController?id=<%=m.getId()%>&op=update">Modifier</a></td>
                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div> </div>
        </div>


                
                
                
                
                
                 <%@ include file="/templates/footer.jsp" %>
            </div>
        </main>

    </body>
</html>
