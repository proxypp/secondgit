<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=3.0">
    <title>HYORIM</title>
    <link rel="stylesheet" href="css/font.css">
    <link rel="stylesheet" href="css/index.css">
    <script type="text/javascript" src="js/index.js"></script>
    <style type="text/css">
    	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap');


* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    border: 0px solid silver;
}

img {
    width: 100px;
}

body {
    font-family: 'Noto Sans KR', sans-serif;
    font-weight:400;
    font-size: 16px;
    line-height: 1rem;
    letter-spacing: 0.1px;
}

h1 {
    font-weight:700;
    font-size: 3.2rem;
    text-transform: uppercase;
    line-height: 4rem;
    color:white;
}

h2 {
    font-weight:500;
    font-size: 2rem;
    text-transform: uppercase;
    line-height: 2rem;
    margin-bottom:2.7rem;
}

h3 {
    font-weight:400;
    font-size: 1rem;
    line-height: 1.7rem;
    text-transform: uppercase;
    margin-bottom: 1.2rem;
    color:#222;
}

h4 {
    font-size: 1rem;
    line-height: 1.6rem;
    text-transform: uppercase;
    margin-bottom:0.7rem;
}

h5 {font-weight:400;
    font-size: 0.9rem;
    line-height: 1rem;
    color:#de4463;
}

p {
    font-size: 0.9rem;
     line-height: 1.4rem;
    padding-top:10px;
    margin-bottom: 20px;
    color:#555;
}

small {
    font-size: 0.7rem;
    line-height: 1rem;
}


a:link {
  color: #666;
  text-decoration: none;
}

a:visited {
  color: #666;
}

a:hover {
  color: red;
}

a:active {
  color: red;
}

button{
  font-size: 0.7rem;
  text-transform: uppercase;
  padding: 10px 30px;
  border: 1px solid #ccc;
  background: #fff;
  cursor: pointer;
}

button:hover{
  color: #fff;
  background: #000;
}

/*start*/
main {
    min-width: 1000px;
    height: 700px;
    background: url('https://images.unsplash.com/photo-1490810194309-344b3661ba39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1590&q=80');
    background-size: cover;
}

header > :last-child {
    display: flex;
    justify-content: space-between;
    padding: 40px 7rem;
}

#menu {
    text-align: center;
    height: 100px;
    overflow: hidden;
    transition: 0.4s;
    z-index: 2;
}

#menu:hover {
    height: 400px;
    background: rgba(255, 255, 255, 0.9);
}

#menu:hover a {
    color: black;
}

#menu > ul > li {
    list-style: none;
    display: inline-block;
    position: relative;
    transition:0.4s;
}

#menu > ul > li:hover{
    border-bottom: 1px solid black;
}


#menu > ul > li > a {
    display: block;
    padding: 10px 30px;
    font-weight: bold;
    color: white;
}

#menu ul ul {
    position: absolute;
    list-style: none;
    top: 60px;
    padding: 10px 0;
    width: 100%;
    font-size: 0.9rem;
}

#menu ul ul a {
    display: block;
    padding: 10px;
}

#menu ul ul a:hover {
    color: red;
}


#menu > :nth-child(1){
    color:#fff;
    font-size:1.2rem;
}
#menu > :nth-child(3) a {
    color: white;
}

.news {
    text-align: center;
}

.news h2 {
    padding-top: 7rem;
}

.news div {
    width: 1000px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    padding-bottom: 2rem;
}

.news section {
    width: 100%;
    padding: 1.2rem;
    text-align: left;
    border-left: 1px solid #eee;
}

.news div :first-child {
    border-left: 0px solid #555;

}

.what {
    width: 1000px;
    margin: 0 auto;
    text-align: center;
    padding: 7rem 0;
}

.what > div {
    display: flex;
    justify-content: space-between;
}

.what section {
    position: relative;
}

.what h3 {
    position: absolute;
    bottom: 20px;
    padding: 0 120px;
    color: #fff;
}

.what section div {
    width: 250px;
    height: 400px;
    cursor: pointer;
    overflow: hidden;
    position: relative;
}

.what section img {
    height: 100%;
    width: 100%;
    object-fit: cover;
    transform: scale(1.0);
    transition: transform .5s;
}

.what section img:hover {
    transform: scale(1.6);
    transition: transform .5s;
}


.live {
    text-align: center;
    width: 1000px;
    margin: 0 auto;
    padding: 7rem 0;
}

.live > :last-child {
    display: flex;
    justify-content: space-between;
}

.live section div {
    width: 250px;
    height: 200px;
    overflow: hidden;
}

.live section img {
    height: 100%;
    width: 100%;
    object-fit: cover;
    transform: scale(1.0);
    transition: transform .5s;
}

.live section img:hover {
    transform: scale(1.5);
    transition: transform .5s;
}

footer {
    min-width: 1000px;
    padding: 4rem 0;
    background:#eee;
}

footer > div {
    width: 1000px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    border-top: 1px solid #eee;
    padding: 1.5rem 0
}

footer section {
    width: 100%;
    padding: 0 1rem;
    color: #555;
}

footer li {
    font-size: 0.9rem;
    list-style: none;
    padding: 5px 0;
    color: #666;
}

footer > :last-child > :nth-child(1) > div {
    width: 1000px;
    display: flex;
    justify-content: space-between;
    padding-bottom: 1.3rem;
}
body {
	background: white;
}
    </style>
</head>

<body>
    <main>
        <header>
            <nav id="menu"> 
            <div style="padding-left: 150px"><h1>안녕하세요 분실물 신고 절차 페이지입니다.</h1></div>        
            </nav>
        </header>
    </main>

    <aiticle class="news">
       <h2>분실물 센터 신고절차</h2>
        <div>
            <section>
                <h4>물건을 잃어버렸나요?</h4>
                <small>2021.11.29</small>
                <p>온라인 또는LOST112에서 또는<br>분실물 센터에 직접 방문하여 분실물 신고를 하실수 있습니다. 누군가 잃어버린 물건을 습득하셨나요?
                분실물센터에 방문해 습득신고 해주시면 분실자에게 큰 도움이 될 수 있습니다.
                </p>
            </section>

            <section>
                <h4>유실물 기본 안내</h4>
                <small>2021.11.29</small>
                <p> 유실물 신고 및 처리 절차확인을 위해, 먼저 아래의 기본안내를 참고하시면 이해에 도움이 됩니다.
                </p>
            </section>

            <section>
                <h4>분실물/습득물 처리 절차</h4>
                <small>2021.11.29</small>
                <p> 분실물, 습득물의 각 신고절차는 다음과 같습니다. 분실물의 경우 온라인 또는 직접방문을 통해 신고접수 하실 수 있으나,
                습득물은 직접 방문을 통해서만 신고 접수가 가능하니 절차확인 시 참고 바랍니다.
                </p>
            </section>
        </div>
    </aiticle>


    <article class="what1">
        <div ng-app="myApp" ng-controller="customerList">
  <div>
    <h2>유실물</h2>
    <ul>
      <li ng-repeat="customer in customerList">
		점유자의 뜻에 의하지 아니하고 어떤 우연한 사정으로 점유를 이탈한 물건 중 도품이 아닌물건
      </li>
    </ul>
  </div>
  <div>
    <h2>유실물 중 분실물</h2>
    <ul>
      <li ng-repeat="(attr, value) in myFriend">
     	자기도 모르는 사이에 잃어비린 물건
      </li>
    </ul>
    <h2>분실물이란?</h2>
    <ul>
      	<li>누군가 자기도 모르는 사이에 잃어버린 물건을 잃어 버린 사람 본인이</li>
      	<li>1.온라인 LOST112 경찰청 유실물 통합포털 홈페이지를 통해 또는,</li>
      	<li>2.가까운 경찰서나 경찰청 유실물 연계 운영기관에 직접 방문해 분실물 신고를 한 유실물</li>
    </ul>
    <h2>유실물 중 습득물</h2>
    <ul>
      <li ng-repeat="(attr, value) in myFriend">
     	타인이 잃어버리거나 방치한 것을 주워서 얻은 물건
      </li>
    </ul>
     <h2>습득물이란?</h2>
    <ul>
      <li>주인을 알 수 없는 물건을 누군가 주워서,</li>
      	<li>1.가까운 경찰서로 가져가 절차에 따라 습득물 신고를 한 유실물 또는,</li>
      	<li>2.지하철 등 경찰청 유실물 연계 운영기관에 가져가 습득물 신고를 한 유실물</li>
    </ul>
  </div>
</div>  
        
        
    </article>

    <article class="live">
       <h2>PEARL ABYSS</h2>
        <div>
            <section>
                <div>
                    <img src="https://images.unsplash.com/photo-1593642633279-1796119d5482?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80" alt="">
                </div>
                <h3>유실물 기본 안내</h3>
                <p>분실물센터 통합포털 서비스의 업무진행 단계와 전체 흐름, 유실물 처리 관련 법령 및 전국 관할관서 등의 기초정보 제공</p>
            </section>

            <section>
                <div>
                    <img src="https://images.unsplash.com/photo-1483389127117-b6a2102724ae?ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80" alt="">
                </div>
                <h3>신고/처리절차 안내</h3>
                <p>분실물 · 습득물 신고 시 소요되는 절차, 신고 이후 분실물 · 습득물에 대한 각각의 업무처리 절차 및 유의사항 안내</p>
            </section>

            <section>
                <div>
                    <img src="https://images.unsplash.com/photo-1508780709619-79562169bc64?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80" alt="">
                </div>
                <h3>온라인 분실물 신고</h3>
                <p>분실물센터에 직접 방문하지 않고 홈페이지를 (또는 모바일 앱) 통해 회원가입 후 양식에 맞게 상세정보를 입력하여 분실물 신고 접수 처리</p>
            </section>
            <section>
                <div>
                    <img src="https://images.unsplash.com/photo-1552345386-6690de5b2c09?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80" alt="">
                </div>
                <h3>정보조회/확인</h3>
               <ul>
               	<li>분실물센터에 신고접수 되어 보관중인 습득물 상세검색 제공 (습득시각/장소, 보관장소 위치/연락처 등)</li>
               	<li>분실물 센터에 접수된 분실물 신고건 상세검색 제공</li>
               </ul>
            </section>
        </div>

    </article>
</body>
</html>