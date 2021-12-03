<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
   <style type="text/css">
   		#layoutSidenav_content{
   			background: white;
   		}
   </style>
<script type="text/javascript">
	function noticeRead(str){
		frm.no.value = str;
		frm.submit();
	}
</script>
   
</head>
<body>
	<div id="content">
		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->
			<h1 class="h3 mb-2 text-gray-800">LOST AND FOUND</h1>
			<p class="mb-4">
				<h1>분실물 리스트</h1>
			</p>

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">분실물 목록</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>번호</th>
									<th>모델</th>
									<th>종류</th>
									<th>현재 있는 위치</th>
									<th>전화번호</th>
									<th>분실물 들어온 날짜</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${lafs }" var="laf">
									<tr onclick="noticeRead('${laf.lnum}')">
										<td>${laf.lnum }</td>
										<td>${laf.lmodel }</td>
										<td>${laf.lname }</td>
										<td>${laf.location }</td>
										<td>${laf.ltel }</td>
										<td>${laf.ldate }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->	
		<nav aria-label="...">
		  <ul class="pagination">
		    <li class="page-item">
		      <a class="page-link" href="lafList.do?nowPage=${page.prev }" tabindex="-1">Previous</a>
		    </li>
		    <c:forEach begin="1" end="${page.lastPage}" varStatus="status">
				<c:if test="${status.count ne page.nowPage}">
		    		<li class="page-item"><a class="page-link" href="lafList.do?nowPage=${status.count}">${status.count}</a></li>
		   		</c:if>
		   		<c:if test="${status.count eq page.nowPage}">
					<li class="page-item active"><a class="page-link" href="lafList.do?nowPage=${status.count}">${status.count}<span class="sr-only">(current)</span></a></li>
		   		</c:if>
		    </c:forEach>
		    <li class="page-item">
		      <a class="page-link" href="lafList.do?nowPage=${page.next }">Next</a>
		    </li>
		  </ul>
		</nav>
		<div>
		<!--	<c:if test="${not empty id}">
				<button type="button" onclick="location.href='noticeForm.do'">글쓰기</button>
			</c:if>-->
		</div>
		<div>
			<form id="frm" action="lafRead.do" method="post">
				<input type="hidden" id="no" name="no">
			</form>
		</div>
	</div>
   </body>
</html>