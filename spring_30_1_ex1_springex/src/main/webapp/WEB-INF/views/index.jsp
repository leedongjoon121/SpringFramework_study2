<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>뇌언어 인지 연구 프로젝트</title>
	
    <!-- css -->
    <link href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/plugins/cubeportfolio/css/cubeportfolio.min.css">
	<link href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/css/nivo-lightbox.css" rel="stylesheet" />
	<link href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
	<link href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/css/owl.carousel.css" rel="stylesheet" media="screen" />
    <link href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/css/owl.theme.css" rel="stylesheet" media="screen" />
	<link href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/css/animate.css" rel="stylesheet" />
    <link href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/css/style.css" rel="stylesheet">

	<!-- boxed bg -->
	<link id="bodybg" href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/bodybg/bg1.css" rel="stylesheet" type="text/css" />
	<!-- template skin -->
	<link id="t-colors" href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/color/default.css" rel="stylesheet">
    
    <!-- =======================================================
        Theme Name: Medicio
        Theme URL: https://bootstrapmade.com/medicio-free-bootstrap-theme/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->
    
    <!-- google-chart -->
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        
        <script type='text/javascript'>
      google.charts.load('current', {'packages':['annotationchart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('date', 'Date');
        data.addColumn('number', 'Kepler-22b mission');
        data.addColumn('string', 'Kepler title');
        data.addColumn('string', 'Kepler text');
        data.addColumn('number', 'Gliese 163 mission');
        data.addColumn('string', 'Gliese title');
        data.addColumn('string', 'Gliese text');
        data.addRows([
          [new Date(2314, 2, 15), 12400, undefined, undefined,
                                  10645, undefined, undefined],
          [new Date(2314, 2, 16), 24045, '이동준', '25세',
                                  12374, undefined, undefined],
          [new Date(2314, 2, 17), 35022, '이승주', '25세',
                                  15766, '박승주', '30세'],
          [new Date(2314, 2, 18), 12284, '박주연', '23세',
                                  34334, '조재호', '40세'],
          [new Date(2314, 2, 19), 8476, '권순현', '20세',
                                  66467, '최한동', '25세'],
          [new Date(2314, 2, 20), 0, '문병학', '30세',
                                  79463, '이홍주', '20세']
        ]);

        var chart = new google.visualization.AnnotationChart(document.getElementById('chart_div'));

        var options = {
          displayAnnotations: true
        };

        chart.draw(data, options);
      }
    </script>
    
 
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">


<div id="wrapper">
	
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="top-area">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-6">
					<p class="bold text-left">Bif 아동을 위한 뇌언어 인지 향상 프로그램 </p>
					</div>
					<div class="col-sm-6 col-md-6">
					<p class="bold text-right">가천대학교 Localhost 팀</p>
					</div>
				</div>
			</div>
		</div>
        <div class="container navigation">
		
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html">
                    <img src="https://raw.githubusercontent.com/leedongjoon121/Javascript_Study/testbranch/img/gachon.png" alt="" width="150" height="40" />
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
			  <ul class="nav navbar-nav">
				<li class="active"><a href="#intro">Home</a></li>
				<li><a href="#google-chart">회원별 학습능력 확인</a></li>
				<li><a href="#boxes">사용기술</a></li>
				<li><a href="#doctor">개발자</a></li>
				<li><a href="#testimonial">개발 내용</a></li>
				
			  </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
	
	<!-- Section: intro -->
    <section id="intro" class="intro">
		<div class="intro-content">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
					<div class="wow fadeInDown" data-wow-offset="0" data-wow-delay="0.1s">
					<h2 class="h-ultra">뇌언어 인지 연구소</h2>
					</div>
					<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.1s">
					<h4 class="h-light">당신의 뇌 언어 인지 능력을 향상 시킵니다.</h4>
					</div>
						<div class="well well-trans">
						<div class="wow fadeInRight" data-wow-delay="0.1s">

						<ul class="lead-list">
							<li><span class="fa fa-check fa-2x icon-success"></span> <span class="list"><strong>게임을 통한 뇌 기능 발달</strong><br />치매 노인 또는 발달 장애인을 대상으로 게임을 통해 인지 능력 향상</span></li>
							<li><span class="fa fa-check fa-2x icon-success"></span> <span class="list"><strong>뇌 언어 영역별 트레이닝 시스템 </strong><br />감각/지각, 주의집중, 작업기억, 추론/지식 능력을 향상 시킬 수 있습니다.</span></li>
							<li><span class="fa fa-check fa-2x icon-success"></span> <span class="list"><strong>그래프를 통한 데이터 학습현황 관리</strong><br />그래프를 이용한 데이터 시각화 및 학습 현황 데이터 누적 관리를 체계적으로 할 수 있다.</span></li>
						</ul>
						<p class="text-right wow bounceIn" data-wow-delay="0.4s">
						<a href="#boxes" class="btn btn-skin btn-lg">Learn more <i class="fa fa-angle-right"></i></a>
						</p>
						</div>
						</div>


					</div>
					<div class="col-lg-6">
						<div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
						<img src="https://raw.githubusercontent.com/leedongjoon121/Javascript_Study/testbranch/img/dummy/brain.png" class="img-responsive" alt="" />
						</div>
					</div>					
				</div>		
			</div>
		</div>		
    </section>
	
	<!-- /Section: intro -->

<section id="google-chart" class="home-section paddingtop-80">
	  <h2 align="center" class="h-bold">회원별 언어 인지 능력 향상률(샘플 데이터)</h2>
<div id='chart_div' style='width: 1200px; height: 700px;'></div>

</section>


	<!-- Section: boxes -->
    <section id="boxes" class="home-section paddingtop-80">
	  <h2 align="center" class="h-bold">사용기술</h4>
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-md-3">
					<div class="wow fadeInUp" data-wow-delay="0.2s">
						<div class="box text-center">
							
							<i class="fa fa-check fa-3x circled bg-skin"></i>
							<h4 class="h-bold">Google Firebase</h4>
							<p>
							구글 파이어베이스를 이용하여 사용자 별 실시간 데이터 처리
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3">
					<div class="wow fadeInUp" data-wow-delay="0.2s">
						<div class="box text-center">
							
							<i class="fa fa-check fa-3x circled bg-skin"></i>
							<h4 class="h-bold">Android Mobile</h4>
							<p>
							안드로이드 앱을 제작하여 게임을 구성
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3">
					<div class="wow fadeInUp" data-wow-delay="0.2s">
						<div class="box text-center">
							<i class="fa fa-check fa-3x circled bg-skin"></i>
							<h4 class="h-bold">Naver 음성 합성</h4>
							<p>
							음성 합성 API를 통하여 소리를 듣고 게임을 진행
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3">
					<div class="wow fadeInUp" data-wow-delay="0.2s">
						<div class="box text-center">
							
							<i class="fa fa-check fa-3x circled bg-skin"></i>
							<h4 class="h-bold">MPAndroid</h4>
							<p>
							MPAndroid를 도입하여 실시간으로 학습 현황 데이터를 그래프화 하여 관리 
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>
	<!-- /Section: boxes -->
	


	<!-- Section: team -->
    <section id="doctor" class="home-section bg-gray paddingbot-60">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow fadeInDown" data-wow-delay="0.1s">
					<div class="section-heading text-center">
					<h2 class="h-bold">Developers</h2>
					<p>인문 융합 프로젝트 개발자 소개</p>
					</div>
					</div>
					<div class="divider-short"></div>
				</div>
			</div>
		</div>
		
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
				
            <div id="filters-container" class="cbp-l-filters-alignLeft">
                <div data-filter="*" class="cbp-filter-item-active cbp-filter-item">All (<div class="cbp-filter-counter"></div>)</div>
                <div data-filter=".cardiologist" class="cbp-filter-item">Lee Dong joon (<div class="cbp-filter-counter"></div>)</div>
                <div data-filter=".psychiatrist" class="cbp-filter-item">Lee Seung ju (<div class="cbp-filter-counter"></div>)</div>
                <div data-filter=".neurologist" class="cbp-filter-item">Park Joo yeon (<div class="cbp-filter-counter"></div>)</div>
            </div>
		
            <div id="grid-container" class="cbp-l-grid-team">
                <ul>
                    <li class="cbp-item cardiologist">
                        <a href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/doctors/member1.jsp" class="cbp-caption cbp-singlePage">
                            <div class="cbp-caption-defaultWrap">
                                <img src="https://raw.githubusercontent.com/leedongjoon121/Javascript_Study/testbranch/img/member/LDJ.PNG" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/doctors/member1.jsp" class="cbp-singlePage cbp-l-grid-team-name">Lee Dong Joon</a>
                        <div class="cbp-l-grid-team-position">Front End & Back End</div>
                    </li>
                    <li class="cbp-item psychiatrist">
                        <a href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/doctors/member2.jsp" class="cbp-caption cbp-singlePage">
                            <div class="cbp-caption-defaultWrap">
                                <img src="https://raw.githubusercontent.com/leedongjoon121/Javascript_Study/testbranch/img/member/LSJ.PNG" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/doctors/member2.jsp" class="cbp-singlePage cbp-l-grid-team-name">Lee Seung ju</a>
                        <div class="cbp-l-grid-team-position">Algorithm</div>
                    </li>
         
                    <li class="cbp-item neurologist">
                        <a href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/doctors/member4.jsp" class="cbp-caption cbp-singlePage">
                            <div class="cbp-caption-defaultWrap">
                                <img src="https://raw.githubusercontent.com/leedongjoon121/Javascript_Study/testbranch/img/member/PJY.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/doctors/member4.jsp" class="cbp-singlePage cbp-l-grid-team-name">Park Joo yeon</a>
                        <div class="cbp-l-grid-team-position">DataBase & Sap</div>
                    </li>

                </ul>
            </div>
			</div>
			</div>
		</div>

	</section>
	<!-- /Section: team -->

	

	
	<!-- Section: testimonial -->
    <section id="testimonial" class="home-section paddingbot-60 parallax" data-stellar-background-ratio="0.5">

<div class="carousel-reviews broun-block">
    <div class="container">
        <div class="row">
            <div id="carousel-reviews" class="carousel slide" data-ride="carousel">
            
                <div class="carousel-inner">
                    <div class="item active">
                	    <div class="col-md-4 col-sm-6">
        				    <div class="block-text rel zmin">
						        <a title="" href="#">언어 자극의 주의집중을 통한 처리속도 훈련</a>
						        <p>정확한 문자(열) 지각을 통한 시각처리 및 주의집중력 훈련과 음소단위의 언어자극을 통한 소리정보 활성화</p>
							    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
					        </div>
							<div class="person-text rel text-light">					
								<img src="https://raw.githubusercontent.com/leedongjoon121/Javascript_Study/testbranch/img/mobile/concentrate1.PNG" alt="" class="person img-circle" />
								<a title="" href="#">주의집중력</a>
								
							</div>
						</div>
            			<div class="col-md-4 col-sm-6 hidden-xs">
						    <div class="block-text rel zmin">
						        <a title="" href="#">제시 그림의 사물들과 배치된 공간을 지각하고, 지시표현에 대응하는 사물을 빠르게 찾음으로써 감각/ 지각능력향</a>
							    
						        <p>사물간 위치관계의 표현에 대응하는 제시그림의 공간과 사물을 지각하는 훈련</p>
							    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
				            </div>
							<div class="person-text rel text-light">
				                <img src="https://raw.githubusercontent.com/leedongjoon121/Javascript_Study/testbranch/img/mobile/ggj1.PNG" alt="" class="person img-circle" />
								<a title="" href="#">감각지각</a>
								
							</div>
						</div>
						<div class="col-md-4 col-sm-6 hidden-sm hidden-xs">
							<div class="block-text rel zmin">
								<a title="" href="#">음소정보의 재구성을 통해 다양한 어휘구성을  하면서 장기기억속 언어지식의어 휘정보들을  활용함</a>
							
						        <p>뒤섞인 글자들을 재구성 하여 단어를 만듦으로써 언어지식을 활용하여 음소정보가 촉발하는 어휘후보들을 빠르게선택/억제하는훈련</p>
							    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
							</div>
							<div class="person-text rel text-light">
								<img src="https://raw.githubusercontent.com/leedongjoon121/Javascript_Study/testbranch/img/mobile/guess1.PNG" alt="" class="person img-circle" />
								<a title="" href="#">추론</a>
								
							</div>
						</div>
                    </div>
                    <div class="item">
                        <div class="col-md-4 col-sm-6">
        				    <div class="block-text rel zmin">
						        <a title="" href="#">학습현황</a>
							   
						        <p> 사용자별로 진행한 게임에 대한 결과값이 FireBase클라우드 서버에 저장된다. 서버로부터 가져온데이터를 차트와 리스트를 통해 나타냄으로써, 회원별 뇌언어인지능력의 향상율을 확일할 수있다.
						        </p>
							    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
					        </div>
							<div class="person-text rel text-light">
								<img src="https://raw.githubusercontent.com/leedongjoon121/Javascript_Study/testbranch/img/mobile/result1.PNG" alt="" class="person img-circle" />
								<a title="" href="#">학습현황</a>
								
							</div>
						</div>
            			<div class="col-md-4 col-sm-6 hidden-xs">
						    <div class="block-text rel zmin">
						        <a title="" href="#">제시 그림을 지각하고 작업기억을 통해 장기기억속 언어지식에서 어휘의의미소리/형태정보를재인</a>
								
						        <p>이게임은 제시되는 그림을 장기기억속 어휘지식에서 재인하고, 작업기억력을 통해 대응음소를 찾아 단어로 구성하면서 발화중추도 활성화됨</p>
							    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
				            </div>
							<div class="person-text rel text-light">
								<img src="https://raw.githubusercontent.com/leedongjoon121/Javascript_Study/testbranch/img/mobile/remember2.PNG" alt="" class="person img-circle" />
						        <a title="" href="#">작업기억력</a>
								
							</div>
						</div>
						<div class="col-md-4 col-sm-6 hidden-sm hidden-xs">
							<div class="block-text rel zmin">
								<a title="" href="#">Json 데이터 트리</a>

						        <p>파이어베이스를 활용하여 데이터를 관리함 (각 회원별 정보 및 게임 정보)</p>
							    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
							</div>
							<div class="person-text rel text-light">
								<img src="https://raw.githubusercontent.com/leedongjoon121/Javascript_Study/testbranch/img/mobile/firebase2.PNG" alt="" class="person img-circle" />
								<a title="" href="#">firebase 데이터구조</a>
								
							</div>
						</div>
                    </div>
                    
                   
                </div>
				
                <a class="left carousel-control" href="#carousel-reviews" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-reviews" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
    </div>
</div>
	</section>
	<!-- /Section: testimonial -->
	


	


	<footer>
	
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4">
					<div class="wow fadeInDown" data-wow-delay="0.1s">
					<div class="widget">
						<h5>인문 융합 프로젝트</h5>
						<p>
						치매 노인과 bif 아동을 위해 제작
						</p>
					</div>
					</div>
					<div class="wow fadeInDown" data-wow-delay="0.1s">
					<div class="widget">
						<h5>Information</h5>
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Laboratory</a></li>
							<li><a href="#">Medical treatment</a></li>
							<li><a href="#">Terms & conditions</a></li>
						</ul>
					</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4">
					<div class="wow fadeInDown" data-wow-delay="0.1s">
					<div class="widget">
						<h5>Medicio center</h5>
						<p>
						Nam leo lorem, tincidunt id risus ut, ornare tincidunt naqunc sit amet.
						</p>
						<ul>
							<li>
								<span class="fa-stack fa-lg">
									<i class="fa fa-circle fa-stack-2x"></i>
									<i class="fa fa-calendar-o fa-stack-1x fa-inverse"></i>
								</span> Monday - Saturday, 8am to 10pm
							</li>
							<li>
								<span class="fa-stack fa-lg">
									<i class="fa fa-circle fa-stack-2x"></i>
									<i class="fa fa-phone fa-stack-1x fa-inverse"></i>
								</span> +62 0888 904 711
							</li>
							<li>
								<span class="fa-stack fa-lg">
									<i class="fa fa-circle fa-stack-2x"></i>
									<i class="fa fa-envelope-o fa-stack-1x fa-inverse"></i>
								</span> hello@medicio.com
							</li>

						</ul>
					</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4">
					<div class="wow fadeInDown" data-wow-delay="0.1s">
					<div class="widget">
						<h5>Our location</h5>
						<p>The Suithouse V303, Kuningan City, Jakarta Indonesia 12940</p>		
						
					</div>
					</div>
					<div class="wow fadeInDown" data-wow-delay="0.1s">
					<div class="widget">
						<h5>Follow us</h5>
						<ul class="company-social">
								<li class="social-facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li class="social-google"><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li class="social-vimeo"><a href="#"><i class="fa fa-vimeo-square"></i></a></li>
								<li class="social-dribble"><a href="#"><i class="fa fa-dribbble"></i></a></li>
						</ul>
					</div>
					</div>
				</div>
			</div>	
		</div>
		<div class="sub-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-6 col-lg-6">
					<div class="wow fadeInLeft" data-wow-delay="0.1s">
					<div class="text-left">
					<p>&copy;Local host</p>
					</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-6 col-lg-6">
					<div class="wow fadeInRight" data-wow-delay="0.1s">
					<div class="text-right">
						<div class="credits">
                            <!-- 
                                All the links in the footer should remain intact. 
                                You can delete the links only if you purchased the pro version.
                                Licensing information: https://bootstrapmade.com/license/
                                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Medicio
                            -->
                            <a href="https://bootstrapmade.com/free-business-bootstrap-themes-website-templates/">Business Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                        </div>
					</div>
					</div>
				</div>
			</div>	
		</div>
		</div>
	</footer>

</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>

	<!-- Core JavaScript Files -->
    <script src="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/js/jquery.min.js"></script>	 
    <script src="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/js/bootstrap.min.js"></script>
    <script src="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/js/jquery.easing.min.js"></script>
	<script src="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/js/wow.min.js"></script>
	<script src="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/js/jquery.scrollTo.js"></script>
	<script src="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/js/jquery.appear.js"></script>
	<script src="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/js/stellar.js"></script>
	<script src="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/plugins/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
	<script src="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/js/owl.carousel.min.js"></script>
	<script src="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/js/nivo-lightbox.min.js"></script>
    <script src="https://rawgit.com/leedongjoon121/Javascript_Study/testbranch/js/custom.js"></script>
    
</body>

</html>
