<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <%@ include file ="../include/head.jsp" %> 
	<style>
table {
	border-collapse: collapse;
	width: 80%;
	margin: 1rem auto;
	background-color: white;
}

thead {
	box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.1);
}

/* 테이블 행 */
td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
	text-align: center;
}

th {
	padding: 8px;
	text-align: left;
	text-align: center;
	border-top: 2px solid #000;
	border-bottom: 2px solid #000;
	color: #000;
}

/* 테이블 올렸을 때 */
tbody tr:hover {
	background-color: #d3d3d3;
	opacity: 0.9;
	cursor: pointer;
}

/* 테이블 비율 */
th:nth-child(1), td:nth-child(1) {
	width: 5%;
}

th:nth-child(2), td:nth-child(2) {
	width: 15%;
}

th:nth-child(3), td:nth-child(3) {
	width: 10%;
}
th:nth-child(4), td:nth-child(4) {
	width: 10%;
}
th:nth-child(5), td:nth-child(5) {
	width: 10%;
}
th:nth-child(6), td:nth-child(6) {
	width: 10%;
}
th:nth-child(7), td:nth-child(7) {
	width: 10%;
}
th:nth-child(8), td:nth-child(8) {
	width: 10%;
}
th:nth-child(9), td:nth-child(9) {
	width: 10%;
}
th:nth-child(10), td:nth-child(10) {
	width: 10%;
}

th, td {
	border-left: none;
	border-right: none;
}
</style>
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- header-start -->
    <header>
       <%@ include file ="../include/nav.jsp" %>
    </header>
    <!-- header-end -->

    <!-- bradcam_area_start -->
    <div class="bradcam_area breadcam_bg_1">
        <h3> 예약상세 </h3>
    </div>
    <!-- bradcam_area_end -->

    <!-- Main content -->
    
    <div class = " 예약상세 ">
    <div>
	
		<table>
		
			<tr>
				<td>예약번호 </td>
				<td>${res.res_no }</td>
			</tr>
			<tr>
				<td>방번호 </td>
				<td>${res.camp_no }</td>
			</tr>
			<tr>
				<td>입실일 </td>
				<td>${res.campres_checkin }</td>
			</tr>
			<tr>
				<td>퇴실일 </td>
				<td>${res.campres_checkout }</td>
			</tr>
			<tr>
				<td>인원 </td>
				<td>${res.campres_person }</td>
			</tr>
			<tr>
				<td>결제금액</td>
				<td>${pay.pay_price }</td>
			</tr>
			<tr>
				<td>결제방식</td>
				<td>${pay.pay_ment }</td>
			</tr>
			<tr>
				<td>결제일시</td>
				<td>${pay.pay_datetime }</td>
			</tr>
			<c:forEach var = "rentalinfo" items = "${rentalinfo }" >
				<tr>
					<td>${rentalinfo.rental_name }</td>
					<td>${rentalamount[rentalinfo.rental_no] }</td>
				</tr>
			</c:forEach>
		</table>
	</div>

		<a href="myResAll"><button>목록</button></a>
    
    
    
    
    </div>
    <!-- Main content End -->
    
    <!-- footer -->
    <%@ include file ="../include/footer.jsp" %>
    
    

</body>

</html>