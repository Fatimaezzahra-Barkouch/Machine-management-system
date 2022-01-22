<%-- 
    Document   : machines
    Created on : 3 déc. 2021, 08:50:36
    Author     : asus
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
                        <div class="h3 mb-0">Machines par Date</div>
                    </div>
                                
                                    <hr>
                                    <form>
                                        <input type="hidden" name="id"
                                               value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>"
                                               size="id" />
                                        
                                        <div >
                                            <label for="dateAchat1">Premier date :</label>
                                            <input type="date" class="form-control p_input" name="date1" id="dateAchat1"/>
                                        </div><br>



                                            <div >
                                            <label for="dateAchat2">Deuxième date:</label>
                                            <input type="date" class="form-control p_input" name="date2" id="dateAchat2"/>
                                            </div><br>



                                            <button id="chercher" type="button" cclass="btn btn-primary float-right">Afficher</button>
                                                                                   
                                        


                                     
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
                                                
                                            </tr>
                                        </thead>
                                        <tbody id="content">
                                           
                                            
                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div> </div>
                </div>


                <%@ include file="/templates/footer.jsp" %>
            </div>
        </main>
<script src="lib/jquery-3.6.0.min.js" type="text/javascript"></script>
<script src="js/filterMPM.js" type="text/javascript"></script>
    </body>
</html>
