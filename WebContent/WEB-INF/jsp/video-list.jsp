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
<title>VDO</title>
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
            		<br> <div class="col-lg-12" align="right"> <a href="${pageContext.request.contextPath}/vdo/update" class="btn btn-primary">เพิ่ม VDO</a></div>
                </div> 
              	<div class="row">
                    <div class="col-lg-12">      
                    <br>          
                    <c:forEach items="${productMaps}" var="productMap">
	               		<div class="col-sm-12 col-lg-12 col-md-12 thumbnail">
                        	<div class="col-sm-2 col-lg-2 col-md-2"><br>
                        		<img class="thumbnail" src="${productMap.value.imgSrc }" alt="${productMap.value.productId }">
                        	</div>
                        	<div class="col-sm-10 col-lg-10 col-md-10">	 
	                        	<div class="caption-full">
	                                <h4>${productMap.value.productId }</h4>
	                                <c:forEach items="${videos}" var="video">
	                                	<c:if test="${productMap.value.id == video.productId}"> 
	                                		<p><a href="${pageContext.request.contextPath}/vdo/update/${video.id}" title="แก้ไข/อัพเดต">${video.videoSeq }. ${video.videoName }</a></p> 
	                                	</c:if>	
	                                </c:forEach>                  
	                            </div>
                        	</div>	                          
	                    </div>  
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
<script type="text/javascript">
$(document).ready(function() {

});

</script>
</body>
</html>