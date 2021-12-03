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
<script src="resources/jss/jquery-3.6.0.min.js"></script>
   <script>
   $(document).ready(function(){
	   $('#btn1').click(function(){
			if (confirm("등록하시겠습니까?")) {
			document.form1.action = "questionInsertForm.do";
			document.form1.submit();
			}
		});
	   $('#btn2').click(function(){
			if (confirm("답변하시겠습니까?")) {
			document.form1.action = "questionUpdateForm.do";
			document.form1.submit();
			}
		});
	});
	
</script>
</head>
<body>
	<div id="content">
		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->
			<h1 class="h3 mb-2 text-gray-800">QUESTION & ANSWOR</h1>
			<p class="mb-4">
				<h1>1대1문의</h1>
			</p>

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">멤버 목록</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>아이디</th>
									<th>이름</th>
									<th>질문사항</th>
									<th>답변내용</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${ques }" var="quess">
									<tr>
										<td>${quess.id }</td>
										<td>${quess.name }</td>
										<td>${quess.ques }</td>
										<td>${quess.answor }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<form name="form1" method="post">
				<c:if test="${not empty id}">
				<input type="button" value="등록" id="btn1" name="btn1">&nbsp;&nbsp;&nbsp;
				</c:if>
				<c:if test="${author eq 'ADMIN'}">
				<input type="button" value="답변" id="btn2" name="btn2">&nbsp;&nbsp;&nbsp;
				</c:if>
				</form>
				

			</div>
		</div>
		<!-- /.container-fluid -->	
	</div>
	<!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>
</body>
</html>