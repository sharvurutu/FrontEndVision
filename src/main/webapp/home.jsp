<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Home page</title>
</head>
<body background="Images/41.jpg">

	<!-- <div class="container text-center">
		<h1>VISION</h1>
		<p>A camera is a tool for learning how to see without a camera.</p>
	</div> -->


	<jsp:include page="navbar.jsp"></jsp:include><br>
	<br>
	<br>
	<jsp:include page="Category.jsp"></jsp:include>


	${SuccessMesssage} ${ErrorMesssage}


	<c:if test="${not empty successmessage}">
		<center>
			<br> <br> <br> <br>
			<h4 style="color: blue">${successmessage}</h4>
		</center>
		<jsp:include page="adminlogin.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>

	</c:if>

	<c:if test="${not empty UserLoginSuccessMessage}">
		<center>

			<h4 style="color: blue">${UserLoginSuccessMessage}${Username}</h4>
		</center>
		<br>
		<br>
		<br>
		<br>

	</c:if>

	<c:if test="${not empty UserLoginErrorMessage}">
		<br>
		<br>
		<br>
		<br>
		<center>
			<h4 style="color: blue">${UserLoginErrorMessage}</h4>
		</center>
		<jsp:include page="login.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<br>
	<c:if test="${not empty UserRegisterSuccess}">
		<center>
			<h4 style="color: blue">${UserRegisterSuccessMessage}</h4>
		</center>
		<jsp:include page="carousel.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>

	</c:if>

	<c:if test="${logout}">
		<br>
		<center>
			<h4 style="color: blue">${logOutMessage}${Username}</h4>
			<br> <br>
		</center>
		<jsp:include page="carousel.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>

	</c:if>
	<c:if test="${accessdenied}">
		<div class="alert alert-danger">
			<strong>${AccessDenied}</strong>
		</div>
		<jsp:include page="carousel.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>

	</c:if>
	<c:if test="${not empty UserRegisterErrorMessage }">
		<center>
			<h4 style="color: green">${UserRegisterErrorMessage}</h4>
		</center>
		<br>
		<br>
		<br>
		<jsp:include page="register.jsp"></jsp:include>


	</c:if>

	<c:if test="${userclickedlogin}">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<jsp:include page="login.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>

	</c:if>

	<c:if test="${ShowCarousel}">
		<jsp:include page="carousel.jsp"></jsp:include>
	</c:if>

	<c:if test="${not empty ShowAdminForm}">
		<center>
			<h4 style="color: blue">${AdminSuccessMessage}</h4>
		</center>
		<jsp:include page="AdminHomePage.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>

	</c:if>

	<c:if test="${ShowSelectedProduct}">
		<br>
		<br>
		<br>
		<jsp:include page="WEB-INF/User/SelectedProduct.jsp"></jsp:include>
		<br>
		<br>
	</c:if>
	<c:if test="${userclickedcontact}">
		<br>
		<br>
		<br>
		<jsp:include page="contactus.jsp"></jsp:include>
		<br>
		<br>
	</c:if>


	<c:if test="${not empty ContactSubmitted}">
		<center>
			<br>
			<h4 style="color: blue">${ContactSubmitted}</h4>
		</center>
		<jsp:include page="carousel.jsp"></jsp:include>

		<br>
		<br>
		<br>
		<br>

	</c:if>

	<c:if test="${userclickedRegister}">
		<br>
		<br>
		<br>
		<br>
		<jsp:include page="register.jsp"></jsp:include>
	</c:if>

	<c:if test="${userclickedAbout}">
		<br>
		<br>
		<br>
		<jsp:include page="aboutus.jsp"></jsp:include>
	</c:if>

	<c:if test="${userclickedInsertCategory}">
		<jsp:include page="WEB-INF/Admin/InsertCategory.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${not empty InsertCategorySuccess}">
		<center>
			<h4 style="color: blue">${InsertCategorySuccess}</h4>
		</center>
		<jsp:include page="WEB-INF/Admin/AllCategory.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<c:if test="${not empty UserCLickedModifyCategory}">
		<jsp:include page="WEB-INF/Admin/ModifyCategory.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<c:if test="${not empty ModifyCategorySuccess}">
		<center>
			<h4 style="color: blue">${ModifyCategorySuccess}</h4>
		</center>
		<jsp:include page="WEB-INF/Admin/AllCategory.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<c:if test="${not empty DeleteCategorySuccess}">
		<center>
			<h4 style="color: blue">${DeleteCategorySuccess}</h4>
		</center>
		<jsp:include page="WEB-INF/Admin/AllCategory.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<c:if test="${not empty ShowingAllCategory}">
		<center>
			<h4 style="color: blue">${ShowingAllCategory}</h4>
		</center>
		<jsp:include page="WEB-INF/Admin/AllCategory.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<c:if test="${UserClickedInsertSupplier}">
		<jsp:include page="WEB-INF/Admin/InsertSupplier.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>


	<c:if test="${not empty InsertSupplierSuccess}">
		<center>
			<h4 style="color: blue">${InsertSupplierSuccess}</h4>
		</center>
		<jsp:include page="WEB-INF/Admin/AllSupplier.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	
	<c:if test="${not empty AdminClickedModifySupplier}">
		<jsp:include page="WEB-INF/Admin/ModifySupplier.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<!-- If Modify Supplier is SuccessFul -->

	<c:if test="${not empty ModifySupplierSuccess}">
		<center>
			<h4 style="color: blue">${ModifySupplierSuccess}</h4>
		</center>
		<jsp:include page="WEB-INF/Admin/AllSupplier.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<c:if test="${not empty DeleteSupplierSuccess}">
		<center>
			<h4 style="color: blue">${DeleteSupplierSuccess}</h4>
		</center>
		<jsp:include page="WEB-INF/Admin/AllSupplier.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<c:if test="${not empty ShowingAllSupplier}">
		<center>
			<h4 style="color: blue">${ShowingAllSupplier}</h4>
		</center>
		<jsp:include page="WEB-INF/Admin/AllSupplier.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>


	<c:if test="${userclickedInsertProduct}">
		<jsp:include page="WEB-INF/Admin/InsertProduct.jsp"></jsp:include>
	</c:if>

	<c:if test="${not empty InsertProductSuccess}">
		<center>
			<h4 style="color: blue">${InsertProductSuccess}</h4>
		</center>
		<jsp:include page="WEB-INF/Admin/AllProduct.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<c:if test="${not empty ShowAllProduct}">
		<center>
			<h4 style="color: blue">${ShowAllProduct}</h4>
		</center>
		<jsp:include page="WEB-INF/Admin/AllProduct.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<c:if test="${not empty AdminClickedModifyProduct}">
		<jsp:include page="WEB-INF/Admin/ModifyProduct.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<c:if test="${not empty ModifyProductSuccess}">
		<center>
			<h4 style="color: blue">${ModifyProductSuccess}</h4>
		</center>
		<jsp:include page="WEB-INF/Admin/AllProduct.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<c:if test="${not empty DeleteProductSuccess}">
		<center>
			<h4 style="color: blue">${DeleteProductSuccess}</h4>
		</center>
		<jsp:include page="WEB-INF/Admin/AllProduct.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>


	<c:if test="${not empty ShowingAllCart}">
		<center>
			<h4 style="color: blue">${CartAddedSuccessMessage}</h4>
		</center>
		<jsp:include page="WEB-INF/User/AllCarts.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>

	<c:if test="${not empty CartAddedSuccessMessage}">
		<center>
			<h4 style="color: blue">${CartAddedSuccessMessage}</h4>
		</center>
		<center>
			<h4 style="color: blue">${CartDeletedSuccessMessage}</h4>
		</center>
		<jsp:include page="WEB-INF/User/AllCarts.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
	</c:if>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>