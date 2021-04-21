<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    	<title>Branchbit</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/fontawesome/css/all.min.css"/>" rel="stylesheet" >
        <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" >
        <link href="<c:url value="/resources/css/common/common.css"/>" rel="stylesheet" >

    </head>
    <body class="bg-light">
    <div id="container" class="container-fluid">
    	<c:import url="./common/divSidebar.jsp"/>
	    <c:import url="./common/divNavbar.jsp"/>
		<div class="row mt-2">
			<div class="col effect" :class="[active ? 'offset-2' : '']">	
				<div class="row">
					<div class="col-12 ">
						<h4 class="ml-3 mb-3">titulo</h4>
					</div>
					<div class="col-12">
						<div class="card shadow-sm">
							<div class="card-header">
								subtitulo
							</div>
							<div class="body">
<!-- 							aqui va e contenido  -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	    <c:import url="./common/divFooter.jsp"/>
	</div>
	<script src="<c:url value="/resources/jquery/jquery.min.js"/>" type="text/javascript"></script>
	<script src="<c:url value="https://cdn.jsdelivr.net/npm/vue"/>" type="text/javascript"></script>
	<script src="<c:url value="/resources/vue/common/common-vue.js"/>" type="text/javascript"></script>
	<script src="<c:url value="/resources/bootstrap/js/popper.min.js"/>" type="text/javascript"></script>
	<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>" type="text/javascript"></script>
    </body>
</html>
