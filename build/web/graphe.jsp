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
                        <div class="h3 mb-0">Graphes</div>
                    </div>
                             
                                    
                                    <hr>
                                    
                                  <div class="content">
<div class="container-fluid">
<div class="row">

<div class="card-body">
<div class="chartjs-size-monitor">
<div class="chartjs-size-monitor-expand">
<div class=""></div>



</div>
<div class="chartjs-size-monitor-shrink">
<div class=""></div>



</div>
</div>
<h4 class="card-title">Charts</h4>
<canvas id="barChart" style="height: 158px; display: block; width: 316px;" width="316" height="158" ></canvas>
</div>



</div>
</div>


</div>

                <%@ include file="/templates/footer.jsp" %>
                </div>
</div>



<script src="js/chartjs.min.js" type="text/javascript"></script>
<script src="lib/jquery-3.6.0.min.js" type="text/javascript"></script>



<script>
const marque=[];
const machine = [];
$(document).ready(function(){

$.ajax({
url: "chartController",



method: 'POST',
success: function(data) {

for (var i = 0; i < data.length; i++) {



marque.push(data[i].marque);
machine.push(data[i].count);
}
machine.push(0);
const ctx = document.getElementById('barChart').getContext('2d');



const myChart = new Chart(ctx, {
type: 'bar',
data: {
labels: marque,
datasets: [{
label: 'Votes',
data: machine,
backgroundColor: [
'rgba(255, 99, 132, 0.2)',
'rgba(54, 162, 235, 0.2)',
'rgba(255, 206, 86, 0.2)',
'rgba(75, 192, 192, 0.2)',
'rgba(153, 102, 255, 0.2)',
'rgba(255, 159, 64, 0.2)'
],
borderColor: [
'rgba(255, 99, 132, 1)',
'rgba(54, 162, 235, 1)',
'rgba(255, 206, 86, 1)',
'rgba(75, 192, 192, 1)',
'rgba(153, 102, 255, 1)',
'rgba(255, 159, 64, 1)'
],
borderWidth: 1
}]
},
options: {
scales: {
y: {
beginAtZero: true
}
}
}
});
}





});
});



</script>


            </div>
        </main>

    </body>
</html>
