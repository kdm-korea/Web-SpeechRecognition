<%@Language="VBScript" CODEPAGE=65001 %>
<%
	Response.CharSet="utf-8"
	Session.codepage="65001"
	Response.codepage="65001"
	Response.ContentType="text/html;charset=utf-8"
%>
<!doctype html>
<html xmlns ="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
	<head>
		<meta charset="utf-8" http-equiv="Content-Type" Content="text/html; charset=utf-8">
		<link rel="stylesheet" type="text/css" href="//t1.daumcdn.net/tistory_admin/blogs/style/menubar.css?_version_=716f5c6fc78510051163c081a366e0dcb578b197" /><script src="//t1.daumcdn.net/tistory_admin/lib/jquery-1.12.4.min.js"></script><script>var tjQuery = jQuery.noConflict(true);</script><style type="text/css">.tt_article_useless_p_margin p {padding-top:0 !important;padding-bottom:0 !important;margin-top:0 !important;margin-bottom:0 !important;}</style><meta name="referrer" content="always"><link rel="shortcut icon" href="//t1.daumcdn.net/tistory_admin/static/top/favicon_0630.ico" /><meta name="description" content="">

		<!-- BEGIN OPENGRAPH -->
		<link rel="canonical" href="http://stupiddevelopers.tistory.com" /><meta property="og:type" content="website" /><meta property="og:site_name" content="StupidDevelopers" ><meta property="og:title" content="StupidDevelopers" ><meta property="og:description" content="" ><meta property="og:image" content="https://t1.daumcdn.net/cssjs/icon/557567EA016E200001" >
		<!-- END OPENGRAPH -->



		<!-- BEGIN TWITTERCARD -->
		<meta name="twitter:card" content="summary_large_image"><meta name="twitter:site" content="@TISTORY"><meta name="twitter:title" content="StupidDevelopers" ><meta name="twitter:description" content="" ><meta property="twitter:image" content="https://t1.daumcdn.net/cssjs/icon/557567EA016E200001" >
		<!-- END TWITTERCARD -->

		<meta charset="ansi">
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<title>StupidDevelopers</title>
		<link rel="alternate" type="application/rss+xml" title="StupidDevelopers"  href="http://stupiddevelopers.tistory.com/rss" />

		
		<link rel="stylesheet" href="http://tistory1.daumcdn.net/tistory/2750877/skin/style.css?_T_=1494048109">
		<link rel="stylesheet" href="CSS/font.css">

		<!--[if lt IE 9]>
		<script src="//t1.daumcdn.net/tistory_admin/lib/jquery-1.11.3.min.js"></script>
		<![endif]-->
		<!--[if gte IE 9]><!-->
		<script src="JsFile/jquery-2.1.4.min.js"></script>
		<!--<![endif]-->
		
		<script type="text/javascript" src="SpeechRecognitionTest.js"></script>
		<style type="text/css">
			.event_button{
				float:right; 
				width 71px; 
				height: 36px;
				font-size: 13px;
				line-height: 38px;
				background-color:  #808080;
				color: #fff;
				padding-right:10px;
				padding-left:10px;
				border:0;
				outline:0;
				margin-top: 5px;
			}
			.event_button:hover{
				background:#4e4e4e;
			}
			.wrap_sub{background-image:/*@background-images*/url(images/header_default.jpg)/*@*/;}
			.ico_login{
				display: block;
				font-size: 0;
				line-height: 0;
				background: url(images/login.png) 0 0 no-repeat;
				background-size: 30px 30px;
				text-indent: -9999px;
				
			}
			
			.list_control .ico_login {
				display: block;
				width: 48px;
				height: 40px;
				margin: 0 17px 0 16px;
			}	
			#tt-body-index .article_skin {
				padding-top: 26px;
			}
			.toolbar{
				box-sizing:content-box;
				width:100%;
				margin:0px;
				border:1px solid #808080; 
			}
			@media only screen and (max-width:1262px){
				div.toolbar{
					display:none;
				}
			}
			@media
			only screen and (min-width:738px) and (max-width:1262px){
				.wrap_sub {
					background-image: url(images/header_default2.jpg);
					background-repeat: no-repeat;
					background-size: cover;
					position:relative;
					width:100%;
					max-height:500px;
				}
			}
			@media 
			only screen and (max-width: 1262px) and (min-width: 738px){
				.article_skin {
					width: auto;
					padding: 57px 34px 100px;
				}
				#tt-body-index .article_skin {
					padding-top: 27px;
				}
				.ico_login{
					width: 48px;
					height: 40px;
					margin-right: 10px;
					margin-left: 10px;
					margin-top: 6px; 
				}
			}
			
			#daumSearchBox {
				height: 21px;
				background-image : url(//i1.daumcdn.net/imgsrc.search/search_all/show/tistory/plugin/bg_search2_2.gif);
				margin: 5px auto ;
				padding: 0;
			}
			#daumSearchBox input {
				background: none;
				margin : 0;
				padding : 0;
				border : 0;
			}
			#daumSearchBox #daumLogo {
				width: 34px;
				height: 21px;
				float: left;
				margin-right: 5px;
				background-image : url(//i1.daumcdn.net/img-media/tistory/img/bg_search1_2_2010ci.gif);
			}
			#daumSearchBox #show_q {
				background-color: transparent;
				border: none;
				font: 12px Gulim, Sans-serif;
				color: #555;
				margin-top: 4px;
				margin-right: 15px;
				float: left;
			}

			#daumSearchBox #show_btn {
				background-image : url(//i1.daumcdn.net/imgsrc.search/search_all/show/tistory/plugin/bt_search_2.gif);
				width: 37px;
				height: 21px;
				float: left;
				margin:0;
				cursor:pointer;
				text-indent:-1000em;
			}
		</style>
		<link rel="stylesheet" href="//t1.daumcdn.net/tistory_admin/blogs/plugins/lightbox/assets/css/lightbox.min.css?_version_=716f5c6fc78510051163c081a366e0dcb578b197" />
		<link rel="stylesheet" type="text/css" href="//t1.daumcdn.net/tistory_admin/blogs/plugins/TistoryProfileLayer/style.css?_version_=716f5c6fc78510051163c081a366e0dcb578b197" />
		<script type="text/javascript" src="//t1.daumcdn.net/tistory_admin/blogs/plugins/TistoryProfileLayer/profile.js?_version_=716f5c6fc78510051163c081a366e0dcb578b197"></script>
		<style type="text/css">
			.another_category { border: 1px solid #E5E5E5; padding: 10px 10px 5px; margin:10px 0; clear: both; }
			.another_category h4 { font-size: 12px !important; margin: 0 !important; border-bottom: 1px solid #E5E5E5 !important; padding: 2px 0 6px !important; }
			.another_category h4 a { font-weight: bold !important; }
			.another_category table { table-layout: fixed; border-collapse: collapse; width: 100% !important; margin-top: 10px !important; }
			* html .another_category table { width: auto !important; }
			*:first-child+html .another_category table { width: auto !important; }
			.another_category th, .another_category td { padding: 0 0 4px !important; }
			.another_category th { text-align: left; font-size: 12px !important; font-weight: normal;  word-break: break-all; overflow: hidden; line-height: 1.5; }
			.another_category td { text-align: right; width: 80px; font-size: 11px; }
			.another_category th a { font-weight: normal; text-decoration: none; border: none !important; }
			.another_category th a.current{ font-weight: bold; text-decoration: none !important; border-bottom: 1px solid !important; }
			.another_category th span { font-weight: normal; text-decoration: none; font: 10px Tahoma, Sans-serif; border: none !important; }

			.another_category_color_gray, .another_category_color_gray h4 { border-color: #E5E5E5 !important; }
			.another_category_color_gray * { color: #909090 !important; }
			.another_category_color_gray th a.current{border-color:#909090 !important;}
			.another_category_color_gray h4, .another_category_color_gray h4 a { color: #737373 !important; }


			.another_category_color_red, .another_category_color_red h4 { border-color: #F6D4D3 !important;  }
			.another_category_color_red * { color: #E86869 !important; }
			.another_category_color_red th a.current{border-color:#E86869 !important;}
			.another_category_color_red h4, .another_category_color_red h4 a { color: #ED0908 !important; }


			.another_category_color_green, .another_category_color_green h4 { border-color: #CCE7C8 !important; }
			.another_category_color_green * { color: #64C05B !important; }
			.another_category_color_green th a.current{border-color:#64C05B !important;}
			.another_category_color_green h4, .another_category_color_green h4 a { color: #3EA731 !important; }


			.another_category_color_blue, .another_category_color_blue h4 { border-color: #C8DAF2 !important; }
			.another_category_color_blue * { color: #477FD6 !important; }
			.another_category_color_blue th a.current{border-color:#477FD6 !important;}
			.another_category_color_blue h4, .another_category_color_blue h4 a { color: #1960CA !important; }


			.another_category_color_violet, .another_category_color_violet h4 { border-color: #E1CEEC !important;  }
			.another_category_color_violet * { color:#9D64C5 !important; }
			.another_category_color_violet th a.current{border-color:#9D64C5 !important;}
			.another_category_color_violet h4, .another_category_color_violet h4 a { color: #7E2CB5 !important; }
		</style>
		<script type="text/javascript">
			window.TistoryBlog = {
				url: "http://stupiddevelopers.tistory.com",
				tistoryUrl: "http://stupiddevelopers.tistory.com"
			};
			var servicePath = "";
			var blogURL = "";
		</script>
		<script type="text/javascript" src="//t1.daumcdn.net/tistory_admin/blogs/script/_/base.js?_version_=716f5c6fc78510051163c081a366e0dcb578b197"></script>
		<link rel="stylesheet" type="text/css" href="//t1.daumcdn.net/tistory_admin/blogs/style/dialog.css?_version_=716f5c6fc78510051163c081a366e0dcb578b197" />
		<style>
		.navi_on{
		background-color:rgba(255,255,255,0.7);
		}
		</style>
	</head>

	<body id="tt-body-index">

		<script type="text/javascript">
			T.config = {"TOP_SSL_URL":"https:\/\/www.tistory.com","PREVIEW":false,"ROLE":"owner","PREV_PAGE":"","NEXT_PAGE":"","BLOG":{"isDormancy":false,"title":"StupidDevelopers"},"NEED_COMMENT_LOGIN":false,"COMMENT_LOGIN_CONFIRM_MESSAGE":"","LOGIN_URL":"https:\/\/www.tistory.com\/auth\/login\/?redirectUrl=http%3A%2F%2Fstupiddevelopers.tistory.com%2F","DEFAULT_URL":"http:\/\/stupiddevelopers.tistory.com","USER":{"name":"\uac15\uc1fc","homepage":"http:\/\/kangwarehouse.tistory.com"}};
		</script>

		<script type="text/javascript" src="//t1.daumcdn.net/tistory_admin/blogs/script/owner.js?_version_=716f5c6fc78510051163c081a366e0dcb578b197"></script>
	<script type="text/javascript" src="//t1.daumcdn.net/tistory_admin/blogs/script/blog/common.js?_version_=716f5c6fc78510051163c081a366e0dcb578b197"></script>
	<div style="margin:0; padding:0; border:none; background:none; float:none; clear:none; z-index:0"></div>

	<div id="dkIndex">
    <!--웹접근성용 바로가기 링크 모음-->
		<a href="#dkBody">본문 바로가기</a>
	</div>
	<div id="dkWrap" class="wrap_skin">
    <!-- 카테고리버튼 클릭시 'navi_on' 클래스 부여 -->
		
		<div id="dkHead" role="banner" class="area_head">
			<h1 class="screen_out">In - Step</h1>
			<button type="button" class="btn_cate" id="btn_cate">
				
				<span class="ico_skin ico_cate">카테고리</span>
				
			<style>.wrap_skin.navi_on {padding-left:960px; background-color: rgba(102,102,102,.4)}</style>
			</button>
			<div class="area_search ">
				<button type="button" class="btn_search" id="btn_search">
					<span class="ico_skin ico_search">검색하기</span>
				</button>
				
					<form action="#" method="get" class="frm_search box_search" onsubmit="try{window.location.href='/search/'+looseURIEncode(document.getElementsByName('search')[0].value);document.getElementsByName('search')[0].value='';return false;}catch(e){}">
						<fieldset>
							<legend class="screen_out">검색하기</legend>
							<label for="search" class="lab_search screen_out">Search</label>
							<input type="text" name="search" id="search" class="tf_search" placeholder="Search" value="" data-value="">
							<span class="ico_skin ico_search"></span>
						</fieldset>
					</form>
				
			</div>
			<div class="area_profile">
				<div class="tit_post">
					<a href="index.asp" class="link_post" target="main">In - Step</a>
				</div>
				<span class="txt_profile"> Speach Recognition Web Site</span>
			</div>
		</div>
		<hr class="hide">
		<div id="dkContent" class="cont_skin" role="main" style="height: 100%">
			<div id="cMain">
				<div id="mFeature" class="wrap_sub">
					<div class="cont_sub">
						<div class="inner_sub">
							<div class="area_sub">
								<div role="navigation" class="area_navi">
									<ul class="tt_category">
										<li class="tit_aside">전체보기<span class="c_cnt"></span>
										<li class=""><a class="link_sub_item" href="#"target="main" style="color:#737373">'얼굴나이 측정 사이트' 사용하기</a></li>
										<li class=""><a class="link_sub_item" href="#"target="main"style="color:#737373">코스트코 피자 신메뉴 '고구마피자' 후기<</a></li>
										<li class=""><a class="link_sub_item" href="post2.asp"target="main"style="color:#737373">KFC 치킨, 구성이 알찬 '더베스트팩'</a></li>
										<li class=""><a class="link_sub_item" href="#"target="main"style="color:#737373">러플(Ruffles)감자칩, 사워크림&amp;어니언 감자칩</a></li>
										<li class=""><a class="link_sub_item" href="post1.asp"target="main"style="color:#737373">버거킹 크리미 통새우와퍼 맛은?!</a></li>
										
									</ul>
									<a href="guest_book.asp'" class="link_guestbook" target="main">Guestbook</a>
								</div>
								<%
									set MyDB=server.createObject("ADODB.Connection")
									MyDB.Open("DSN=InStep;UID=admin;pw=")
								%>
								<div class="wrap_etc">
									<div class="col_aside left_side">
											<!-- 공지사항 -->
										<div class="box_aside">
											<strong class="tit_aside">Notice</strong>
											<ul class="list_board"></ul>
										</div>
											<!-- 최근에 올라온 글 -->
										<div class="box_aside">
											<%
												set tempDB=MyDB.Execute("Select * from Post where Day(Time)=Day(Now())")
											%>
											<strong class="tit_aside">Recent Posts</strong>
											<ul class="list_board">
												<li><script type='text/javascript'></script><a href='post.html' class='link_board' target='main'></a></li>
												
											</ul>
										</div>
											 <!-- 최근에 달린 댓글 -->
										<div class="box_aside">
											<%
												set tempDB=MyDB.Execute("Select * from Comments where Day(Time)=Day(Now())")
											%>
											<strong class="tit_aside">Recent Comments</strong>
												
													
													<li><script type='text/javascript'></script></li>"
													
											<ul class="list_board">
											</ul>
										</div>
											  <!-- 링크 -->
										<div class="box_aside">
											<strong class="tit_aside">Link</strong>
											<ul class="list_board"></ul>
										</div>
									</div>
									<%
										MyDB.close
										set MyDB=nothing
									%>
									<div class="col_aside right_side">
                                
                                        <!-- 달력 -->
                                    <div class="box_aside box_calendar">
                                        <table class="tt-calendar" cellpadding="0" cellspacing="1" style="width: 100%; table-layout: fixed">
											<caption class="cal_month">
												<a href="/archive/201704" title="1개월 앞의 달력을 보여줍니다.">&laquo;</a>
												&nbsp;
												<a href="/archive/201705"
												title="현재 달의 달력을 보여줍니다.">2017/05</a>
												&nbsp;
												<a href="/archive/201706" title="1개월 뒤의 달력을 보여줍니다.">&raquo;</a>
											</caption>
										<thead>
											<tr>
												<th class="cal_week2">일</th>
												<th class="cal_week1">월</th>
												<th class="cal_week1">화</th>
												<th class="cal_week1">수</th>
												<th class="cal_week1">목</th>
												<th class="cal_week1">금</th>
												<th class="cal_week1">토</th>
											</tr>
										</thead>
										<tbody>
											<tr class="cal_week">
												<td class="cal_day1">&nbsp;</td>
												<td class=" cal_day cal_day3">1</td>
												<td class=" cal_day cal_day3">2</td>
												<td class=" cal_day cal_day3">3</td>
												<td class=" cal_day cal_day3">4</td>
												<td class=" cal_day cal_day3">5</td>
												<td class=" cal_day cal_day4">6</td>
											</tr>
											<tr class="cal_week cal_current_week">
												<td class=" cal_day cal_day_sunday cal_day3">7</td>
												<td class=" cal_day cal_day3">8</td>
												<td class=" cal_day cal_day3">9</td>
												<td class=" cal_day cal_day3">10</td>
												<td class=" cal_day cal_day3">11</td>
												<td class=" cal_day cal_day3">12</td>
												<td class=" cal_day cal_day3">13</td>
											</tr>
											<tr class="cal_week">
												<td class=" cal_day cal_day_sunday cal_day3">14</td>
												<td class=" cal_day cal_day3">15</td>
												<td class=" cal_day cal_day3">16</td>
												<td class=" cal_day cal_day3">17</td>
												<td class=" cal_day cal_day3">18</td>
												<td class=" cal_day cal_day3">19</td>
												<td class=" cal_day cal_day3">20</td>
											</tr>
											<tr class="cal_week">
												<td class=" cal_day cal_day_sunday cal_day3">21</td>
												<td class=" cal_day cal_day3">22</td>
												<td class=" cal_day cal_day3">23</td>
												<td class=" cal_day cal_day3">24</td>
												<td class=" cal_day cal_day3">25</td>
												<td class=" cal_day cal_day3">26</td>
												<td class=" cal_day cal_day3">27</td>
											</tr>
											<tr class="cal_week">
												<td class=" cal_day cal_day_sunday cal_day3">28</td>
												<td class=" cal_day cal_day3">29</td>
												<td class=" cal_day cal_day3">30</td>
												<td class=" cal_day cal_day3">31</td>
												<td class="cal_day2">&nbsp;</td>
												<td class="cal_day2">&nbsp;</td>
												<td class="cal_day2">&nbsp;</td>
											</tr>
										</tbody>
									</table>
		
                                    </div>
                                    
                                        <!-- 태그 클라우드 -->
                                    <div class="box_aside box_tag">
                                        <strong class="tit_aside">Tags</strong>
                                        <ul class="list_tag">
                                            
                                        </ul>
                                        <a href="/tag" class="link_more">more</a>
                                    </div>
                                    
                                        <!-- 글 보관함 -->
                                    <div class="box_aside box_archive">
                                        <strong class="tit_aside">Archives</strong>
                                        <ul class="list_keep">
                                            
                                            <li><a href="/archive/201705" class="link_keep">2017/05</a> (1)</li>
                                            
                                        </ul>
                                    </div>
                                    
                                        <!-- 방문자수 -->
                                    <div class="box_aside box_visitor">
                                        <dl class="list_visitor">
                                            <dt>Today</dt>
                                            <dd>6</dd>
                                        </dl>
                                        <dl class="list_total">
                                            <dt>Total</dt>
                                            <dd>8</dd>
											</dl>
										</div>
									</div>
								</div>
							</div>
						</div>
						<button type="button" class="ico_skin btn_close"id="btn_close">닫기</button>

						<strong class="screen_out">관리 메뉴</strong>
						<ul class="list_control">
							<li><a href="writing.asp" class="ico_skin link_write" id="link_write"title="글쓰기" target="main"onclick="changeIframeUrl(writing.asp)">글쓰기</a></li>
							<li><a href="guest_book.asp" class="ico_skin link_memo" id="link_memo"  title="방명록" target="main">방명록</a></li>
							<li><a href="Login.asp" class="ico_login" title="로그인" id="ico_login" style="margin-top: 5px;">로그인</a></li>
						</ul>
					</div>
				</div>
				<script type="text/javascript">					
					function ResizeFrame(i)
					{
						var iframeHeight=(i).contentWindow.document.body.scrollHeight;
						(i).height=iframeHeight;
					}
				</script>
				<div class="toolbar"style="position:fixed;background:white;border-top-width: 0px;width:85%;"id="toolbar">
					<img src="images/login_main1.png"height="40"width="250"style="padding-top: 5px; padding-left: 40px; display:inline; float:left;"></img>
		
					<audio src="[MV] Kim Na Young(김나영) _ Being an Adult(어른이 된다는게).mp3" id='music' controls loop style="padding-left: 20px;width: 400px;display:inline;float:right;padding-right: 350px;border-right-width: 50px;margin-top: 7px;"></audio>
					<input type="button" class="event_button"onclick="location.href='Login.asp'" value="Login"style="border-radius: 9px;">
					
				</div>
				<iframe src="index.asp" name="main" id="mArticle" class="article_skin" style="min-height:1px;width: 95%;padding-left:10px;padding-right:0px;border-right: 0px;padding-bottom: 0px;" height="95%" Onload="ResizeFrame(this);" scrolling="no">
				</iframe>
				<div id ="VoiceHidden"style="margin-top: 2em;height: 1.9em;position: fixed; bottom:1.8%;width:80%;"> 
					<label for="exam"><img src="images/mic.png" width="12px" height="18px"style="margin-right: 10px;">
					<input type="text" name="exam" class="exam" id="exam"value=""style="margin-top:10px;margin-bottom:10px; border-radius:10px; padding:3px;border: 1px solid black;width:90%">
				
				</div>
			</div>
		</div>
		<script type="text/javascript" src="SpeechRecognitionTest.js?v=2017051321021"></script>
		<script type="text/javascript">
		$('#VoiceHidden').hide();
		var exam=document.getElementById('exam');
		{
			var temp;	
			function findCommand(string){
				
				if(string.indexOf('검색')!=-1){
					$('#btn_search').trigger('click');
					exam.value="";
				}else if(string.indexOf('메뉴닫기')!=-1){
					$('#btn_close').trigger('click');
					exam.value="";
				}else if(string.indexOf('메뉴오픈')!=-1){
					$('#btn_cate').trigger('click');
					exam.value="";
				}else if(string.indexOf('글쓰기 창')!=-1){
					$('#link_write').get(0).click();
					exam.value="";
				}else if(string.indexOf('방명록')!=-1){
					$('#link_memo').get(0).click();
					exam.value="";
				}else if(string.indexOf('로그인창')!=-1){
					$('#ico_login').get(0).click();
					exam.value="";
				}else if(string.indexOf('제목')!=-1){
					document.getElementById('mArticle').contentDocument.getElementById('title').value=strslice(string,2);
					exam.value="";
				}else if(string.indexOf('글쓰기')!=-1){
					$("#mArticle").contents().find('#subinput').trigger('click');
					exam.value="";
				}else if(string.indexOf('내용')!=-1){
					//var fd=document.getElementById('mArticle').contentDocument.CKEDITOR.instances.getElementById('editor1').getData();
					//var fd=$("#mArticle").contents().CKEDITOR.instances.editor1.getData();
					$("#mArticle").get(0).contentWindow.editorval(string);
					
					/*CKEDITOR.instances.editor1.setData(strslice(exam.value,2),{
						callback: function(){this.checkDirty();}
					})*/
					exam.value="";
				}else if(string.indexOf('아이디')!=-1){
					document.getElementById('mArticle').contentDocument.getElementById('name').value=strslice(string,3);
					exam.value="";
				}else if(string.indexOf('패스워드')!=-1){
					document.getElementById('mArticle').contentDocument.getElementById('pwd').value=strslice(string,4);
					exam.value="";
				}else if(string.indexOf('제출')!=-1){
					$("#mArticle").contents().find('#btn_enter').trigger('click');
					exam.value="";
				}else if(string.indexOf('음악 켜')!=-1){
					document.getElementById('music').play();
					exam.value="";
				}else if(string.indexOf('음악 꺼')!=-1){
					document.getElementById('music').pause();
					exam.value="";
				}else if(string.indexOf('포스트')!=-1){
					if(string.indexOf('3번')!=-1){
						$("#mArticle").contents().find('#post3').get(0).click();
						exam.value="";
					}else if(string.indexOf('5번')!=-1){
						$("#mArticle").contents().find('#post5').get(0).click();
						exam.value="";
					}
				}

			
			}
			function strslice(str,num){
				return str.substring(0,str.length-num);
			}
			
			recognition.onresult = function (event) {
				console.log('onresult',arguments);
				var results = event.results;
				finalTranscript='';
				
				for (var i = event.resultIndex; i <results.length; i++) {
					if(event.results[i].isFinal){
						finalTranscript +=event.results[i][0].transcript;
					}
				}
				exam.value+=finalTranscript;
				findCommand(exam.value);
				
				console.log('finalTranscript', finalTranscript);
			};
		}
		</script>
		<script src="JsFile/script.js"></script>
		<script src="JsFile/lightbox.min.js"></script>
	</body>
</html>
