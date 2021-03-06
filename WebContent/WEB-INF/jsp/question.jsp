<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="โปรแกรมพิมพ์บิล, โปรแกรมบัญชีสำเร็จรูป, โปรแกรมขายหน้าร้าน POS, โปรแกรมห้องพัก-คอนโด, โปรแกรมพิมพ์ฟอร์มภาษี">
<meta name="keywords" content="โปรแกรมพิมพ์บิล, โปรแกรมบัญชีสำเร็จรูป, โปรแกรมขายหน้าร้าน POS, โปรแกรมห้องพัก-คอนโด, โปรแกรมพิมพ์ฟอร์มภาษี">
<meta name="author" content="Sirimongkol Panwa">
<title>ถามตอบ</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/metisMenu/dist/metisMenu.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sb-admin-2.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/shop-homepage.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.css">
<style type="text/css">
.thumbnail img { width:150px; height:200px; }
</style>
</head>
<body>
<div id="wrapper">
<!-- Navigation -->
<jsp:include page="nav.jsp"></jsp:include>
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
            	<div class="row">
	                <br>
	                <div class="col-lg-12">  
					<div class="panel panel-info">
					    <div class="panel-heading">
					        <h3 class="panel-title">คำถามที่ถามบ่อย</h3>
					    </div>
					</div>
					</div>
				</div>
                <div class="row">
               
                    <div class="col-lg-12">                                 
                    <c:forEach items="${questions}" var="question">
                    	<div class="col-sm-12 col-lg-12 col-md-12 thumbnail">
	                        <div class="caption-full">
	                        	<div class="col-sm-2 col-lg-2 col-md-2">
	                        		<b>Q${question.seq } : </b>
	                        	</div>
	                        	<div class="col-sm-10 col-lg-10 col-md-10">	 	
		                       		<b><a href="#">${question.question }</a>	  </b>                       
	                        	</div>
	                        	<div class="col-sm-2 col-lg-2 col-md-2">
	                        		<b>ตอบ : </b>
	                        	</div>
	                        	<div class="col-sm-10 col-lg-10 col-md-10">	 	
		                       		<p>${question.answer}</p>             
	                        	</div>		                          
	                        </div>
	                    </div> 
	                    <br> 
	                </c:forEach>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
</div>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/metisMenu/dist/metisMenu.min.js"></script>
    <!-- Custom Theme JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.js"></script>

</body>
</html>