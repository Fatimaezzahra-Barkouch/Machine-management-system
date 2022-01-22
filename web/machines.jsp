<%-- 
    Document   : machines
    Created on : 3 déc. 2021, 08:50:36
    Author     : Lachgar
--%>

<%@page import="beans.Marque"%>
<%@page import="service.MarqueSerice"%>
<%@page import="beans.Machine"%>
<%@page import="service.MachineService"%>
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
                            <center>
                                <div class="col-lg-12">
                                      <div class="mb-3 mb-md-4 d-flex justify-content-between">
                        <div class="h3 mb-0">Nouvelle machine</div>
                    </div>
                             
                                    
                                    <hr>
                                    <form action="MachineController" method="POST">
                                        <input type="hidden" name="id"
                                               value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>"
                                               size="id" />
                                        <div >
                                            <label for="reference">Référence :</label> 
                                            <input required="" type="text" name="reference" id="reference" value="<%=request.getParameter("reference") == null ? "" : request.getParameter("reference")%>" />


                                        </div><br>

                                        <div >
                                            <label for="dateAchat">Date Achat :</label> 
                                            <input required=""  type="date" name="dateAchat" id="dateAchat" alue="<%=request.getParameter("dateAchat") == null ? "" : request.getParameter("dateAchat")%>" />


                                        </div><br>

                                        <div>
                                            <label for="prix">Prix :</label> 
                                            <input required="" type="text" name="prix" id="prix"value="<%=request.getParameter("prix") == null ? "" : request.getParameter("prix")%>" />


                                        </div><br>
                                        
                                        <div>
                     
                                        <label for="marque">Marque :</label>
                                        <select name="marque" id="marque" class="form-control p_input" value="<%=request.getParameter("marque") == null ? "" : request.getParameter("marque")%>">
                                        <%
                                        MarqueSerice mar = new MarqueSerice();
                                        for (Marque m : mar.findAll()) {
                                        %>
                                        <option style="color: black" value="<%=m.getId()%>"><%=m.getLibelle()%></option>
                                        <%}%>
                                        </select>
                                        </div><br>


                                        <input id="send" type="submit" value="Envoyer" /> 
                                        <input type="reset" value="Annuler" />
                                    </form>
                                </div>
                            </center><br><br>


                            <div class="col-12 col-lg-12">
                                <div class="table-responsive"><br>
                                    <table  class="table align-items-center table-flush table-hover">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Référence</th>
                                                <th>Date Achat</th>
                                                <th>Prix</th>
                                                <th>Marque</th>
                                                <th>Supprimer</th>
                                                <th>Modifier</th>
                                            </tr>
                                        </thead>
                                        <tbody id="content">
                                            <%
                                                MachineService ms = new MachineService();
                                                for (Machine m : ms.findAll()) {
                                            %>
                                            <tr>
                                                <td><%= m.getId()%></td>
                                                <td><%= m.getReference()%></td>
                                                <td><%= m.getDateAchat()%></td>
                                                <td><%= m.getPrix()%></td>
                                                <td><%= m.getMarque()%></td>
                                                <td><a href="MachineController?id=<%=m.getId()%>&op=delete">Supprimer</a></td>
                                                <td><a href="MachineController?id=<%=m.getId()%>&op=update">Modifier</a></td>
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
