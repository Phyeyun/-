<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <%@ include file ="../include/head.jsp" %> 
</head>

<body>
    <!-- header-start -->
    <header>
       <%@ include file ="../include/nav.jsp" %>
    </header>
    <!-- header-end -->

    <!-- bradcam_area_start -->
    <div class="bradcam_area breadcam_bg_1">
        <h3></h3>
    </div>
    <!-- bradcam_area_end -->

<!-- Main content -->
<div class="main_content">
    <div class="container">
        <!-- 상품 추가 버튼 -->
        <div class="row">
        <c:if test="${user.user_admin==true }">
            <div class="col-md-12 text-right mb-3">
                <a href="shopInsert" class="btn btn-primary">상품 추가</a>
            </div>
        </c:if>
        </div>
        <div class="row">
            <c:forEach items="${shopList}" var="shopList">
                <div class="col-md-4">
                    <div class="single_product">
			            <img src="${pageContext.request.contextPath}/resources/img/shopInfo/${shopList.image_url}" alt="Product Image" width="200" height="150">
                        <h4>${shopList.shop_name}</h4>
                        <p>${shopList.shop_content}</p>
                        <p>Price: ${shopList.shop_price}</p>
                        <p>Stock: ${shopList.shop_cnt}</p>
                        <a href="shopDetail?shop_no=${shopList.shop_no }" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </c:forEach>
	    </div>
	</div>
</div>

<!-- Main content End -->

    <!-- footer -->
    <%@ include file ="../include/footer.jsp" %>
    <!-- footer end -->
    
    
    <!-- form itself end-->
    
    <!-- 예약이랑 로그인 버튼인데..... 그건 구현 후 붙일거임! 여기 건들지 마세요 -->
    
	<!-- form itself end -->

</body>

</html>