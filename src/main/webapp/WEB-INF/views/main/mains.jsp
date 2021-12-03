<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <style type="text/css">
  	body {
  background: url(https://cdn.pixabay.com/photo/2017/03/25/03/18/brick-2172682_960_720.jpg);
}
.our-team {
  padding: 30px 0 40px;
  background: white;
  text-align: center;
  position: relative;
  overflow: hidden;
}
.our-team .pic {
  display: inline-block;
  height: 130px;
  width: 130px;
  margin-bottom: 50px;
  position: relative;
  z-index: 1;
}
.our-team .pic:before {
  content: "";
  width: 100%;
  background: #eb1768;
  position: absolute;
  bottom: 135%;
  left: 0;
  right: 0;
  transform: scale(3);
  transition: all .3s linear .3s;
}
.our-team:hover .pic:before {
  height: 100%;
}
.our-team .pic:after {
  content: '';
  height: 100%;
  width: 100%;
  border-radius: 50%;
  background: #dd4266;
  position: absolute;
  top: 0;
  left: 0;
  z-index: -1;
}
.our-team .pic img{
  width: 100%;
  height: 100%;
  border-radius: 50%;
  transform: scale(1);
  transition: all .3s ease .3s;
}
.our-team:hover .pic img {
  box-shadow: 0 0 0 14px #f7f5ec;
  transform: scale(.7);
}
.our-team .team-content {
  margin-bottom: 30px;
}
.team-content h3 {
  font-size: 22px;
  letter-spacing: 1px;
  font-weight: 700;
  margin-bottom: 5px;
  text-transform: capitalize;
}
.team-content span {
  display: block;
  font-size: 15px;
  text-transform: capitalize;
}
.our-team .social {
  width: 100%;
  margin: 0;
  padding: 0;
  position: absolute;
  background: #eb1768;
  bottom: -100px;
  left: 0;
  transition: all .3s ease .8s;
}
.our-team:hover .social{
  bottom: 0;
}
.our-team .social li {
  display: inline-block;
}
.our-team .social li a {
  display: block;
  padding: 10px;
  font-size: 17px;
  color: white;
  transition: all .3s ease .3s;
}
.our-team .social li a:hover {
  color: #eb1768;
  background: #f7f5ec;
  text-decoration: none;
}
.mt-4{
	color : navy;
}
.mt-100{
  background-color: #d3d3d3;
}
.breadcrumb-item{
	float: right;
	color : navy;
}
.container{
  padding-bottom: 25px;
}
.breadcrumb-item{
  color: red;
  text-align: right;
}
li{
  float: right;
}

  </style>
</head>


<body>
 <div class="container-fluid px-4">
                        <h1 class="mt-4" align="center"><span class="mt-100"> 안녕하세요 분실물 센터입니다. </span></h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item">분실물/습득물 신고 053-111-2332</li>
                        </ol>
                        <h3 class="mt-4" align="center"><span class="mt-100"> 최근 들어온 분실물들 </span></h3>
</div>
  <div class="container">
    <div class="row">
       <div class="col-md-3 col-sm-6">
        <div class="our-team">
          <div class="pic">
            <img  onclick="location.href='ddd1.do'" src="resources/img/아이폰 13.jpg" alt="">
          </div>
          <div class="team-content">
            <h3>아이폰 13</h3>
            <span>중앙 파출소 13</span>
            <span>053-346-4233</span>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="our-team">
          <div class="pic">
            <img onclick="location.href='ddd2.do'" src="resources/img/갤럭시 20.jpg" alt=""> <!-- 여기서 이미지밖 -->
          </div>
          <div class="team-content">
            <h3>갤럭시 20</h3>
            <span>중앙 파출소 13</span>
            <span>053-346-4233</span>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="our-team">
          <div class="pic">
            <img onclick="location.href='ddd3.do'" src="resources/img/디올 지갑.jpg" alt="">
          </div>
          <div class="team-content">
           <h3>디올 지갑</h3>
            <span>서문시장역 3호선</span>
            <span>053-667-2333</span>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="our-team">
          <div class="pic">
            <img onclick="location.href='ddd4.do'" src="resources/img/여성 외투.jpg" alt="">
          </div>
          <div class="team-content">
           <h3>여성 외투</h3>
            <span>중앙 파출소 13</span>
            <span>053-346-4233</span>
          </div>
        </div>
      </div>
      <!--밑 줄-->
       <div class="col-md-3 col-sm-6" style="padding-top : 30px;">
        <div class="our-team">
          <div class="pic">
            <img onclick="location.href='ddd5.do'" src="resources/img/남성 자켓.jpg" alt="">
          </div>
          <div class="team-content">
            <h3>남성 자켓</h3>
            <span>중앙 파출소 13</span>
            <span>053-346-4233</span>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6" style="padding-top : 30px;">
        <div class="our-team">
          <div class="pic">
            <img onclick="location.href='ddd6.do'" src="resources/img/코드로 배우는 스프링.jpg" alt="">
          </div>
          <div class="team-content">
          <h3>코드로 배우는 스프링</h3>
            <span>대구역 1호선</span>
            <span>053-456-2345</span>
          </div>
        </div>
      </div>
       <div class="col-md-3 col-sm-6" style="padding-top : 30px;">
        <div class="our-team">
          <div class="pic">
            <img onclick="location.href='ddd7.do'" src="resources/img/샤넬 지갑.jpg" alt="">
          </div>
          <div class="team-content">
            <h3>샤넬 가방</h3>
            <span>서문 지구대</span>
            <span>053-444-4233</span>
          </div>
        </div>
      </div>
       <div class="col-md-3 col-sm-6" style="padding-top : 30px;">
        <div class="our-team">
          <div class="pic">
            <img onclick="location.href='ddd8.do'" src="resources/img/갤럭시 버즈2.jpg" alt="">
          </div>
          <div class="team-content">
            <h3>갤럭시 버즈2</h3>
            <span>중앙로역</span>
            <span>053-123-4233</span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <ol class="breadcrumb mb-4">
     <li class="breadcrumb-item" style="color: red;">분실물/습득물 신고 053-111-2332</li>
  </ol>
</body>
</html>