<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<spring:url var="css" value="/resources/css" />
<spring:url var="images" value="/resources/images" />
<spring:url var="js" value="/resources/js" />

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	
	
    <title>Online Shopping - ${title}</title>
	
	<script>
		window.menu = '${title}';
	</script>
    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.css" rel="stylesheet">
    
    <!--Readable Bootstrap Theme CSS -->
    <link href="${css}/READ_BOOTSTRAP_THEME.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<!-- NAVBAR SECTION -->
	<%@include file="./shared/navbar.jsp" %>
	
	<!-- END OF NAVBAR SECTION -->
    
    <!-- SECTION ONE: HOME PAGE -->
    <c:if test="${userClickHome == true}">
    	<%@include file="./home.jsp" %>
    </c:if>
    <!-- END SECTION ONE - HOME PAGE -->

    <!-- SECTION TWO: ABOUT US PAGE -->
    <c:if test="${userClickAbout == true}">
    	<%@include file="./about.jsp" %>
    </c:if>
    
    <!-- END SECTION TWO - ABOUT US PAGE -->

    <!-- SECTION THREE: CONTACT US PAGE -->
    <c:if test="${userClickContact == true}">
    	<%@include file="./contact.jsp" %>
    </c:if>
    
    <!-- END SECTION THREE - CONTACT US PAGE -->
        
    <!-- FOOTER SECTION -->
    
	<%@include file="./shared/footer.jsp" %>
	
    <!-- END FOOTER SECTION -->

    <!-- JavaScript -->
    <script src="${js}/jquery.js"></script>
    <script src="${js}/bootstrap.js"></script>
    <script src="${js}/myapp.js"><</script>

</body>

</html>
