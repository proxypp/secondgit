<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    #sidenavAccordion{
        background-color: navy;
    }
</style>
</head>
<body>
	<div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <!--side bar start-->
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <!--side bar first-->
                           <div class="sb-sidenav-menu-heading">분실물 센터</div>
                            <a class="nav-link" href="gido.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                오시는 길
                            </a>
                            
                            <a class="nav-link" href="information.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                분실물 신고절차
                            </a>
                            <!--end side bar first-->
                            <!--side bar second-->
                            <c:if test="${empty id }">
                            <div class="sb-sidenav-menu-heading">login</div>
                            <a class="nav-link" href="memberLoginForm.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                로그인
                            </a>
                            </c:if>
                            <c:if test="${not empty id }">
                            <div class="sb-sidenav-menu-heading">logout</div>
                            <a class="nav-link" href="logout.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                로그아웃
                            </a>
                            </c:if>
                            <c:if test="${empty id}">
                            <a class="nav-link" href="memberInsertForm.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                회원가입
                            </a>
                            </c:if>
                            <c:if test="${not empty id}">
                            <a class="nav-link" href="memberSelect.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                내정보
                            </a>
                            </c:if>
                             <!--end side bar second-->
                             <!--side bar third-->
                             <div class="sb-sidenav-menu-heading">분실물</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayout" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                분실물
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayout" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="lafList.do">분실물 검색</a>
                                    <c:if test="${author eq 'ADMIN'}">
                                    <a class="nav-link" href="lafInsertForm.do">분실물 등록</a>
                                    </c:if>
                                </nav>
                            </div>
                         <!-- <div class="sb-sidenav-menu-heading">습득물</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                습득물
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">습득물 검색</a>
                                    <c:if test="${not empty id }">
                                    <a class="nav-link" href="layout-static.html">습득물 등록</a>
                                    </c:if>
                                </nav>
                            </div>-->
                            <!-- end side bar third-->
                            
                            <!-- side bar five-->
                            <div class="sb-sidenav-menu-heading">고객 요청 사항</div>
                            <a class="nav-link" href="question.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                1:1문의
                            </a>
                            <c:if test="${author eq 'ADMIN' }">
                            <a class="nav-link" href="memberList.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                회원정보
                            </a>
                            </c:if>
                             <!-- end side bar five-->
                        </div>
                    </div>
                    <!-- 부록 -->
                    <div class="sb-sidenav-footer">
                        <div class="small">습득물 관리 센터</div>
                        찾으시길 바랍니다.
                    </div>
                </nav>		
            </div>
</body>
</html>