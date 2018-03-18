

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
		<link rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="CSS/font.css">

		<!--[if lt IE 9]>
		<script src="//t1.daumcdn.net/tistory_admin/lib/jquery-1.11.3.min.js"></script>
		<![endif]-->
		<!--[if gte IE 9]><!-->
		<script src="JsFile/jquery-2.1.4.min.js"></script>
		<!--<![endif]-->
		<style>
			#tt-body-index .article_skin {
    			padding-top: 0px;
			}
			.list_content:hover p{
				text-decoration:underline;
			}.list_content:hover img{
				transform: scale(1.2);
			}
		</style>
	</head>

	<body id="tt-body-index">
		
		<%
			member_id=request("loginId")
			member_pass=request("password")
			if member_id="instep@ssc.co.kr" and member_pass="hardmod" then
				Session("id")=member_id
			end if
			title=request.form("title")
			publisher=request.form("publisher")
			contents=request.form("editor1")
			timers=FormatDateTime(Now(), 0)

			if (title="") and (publisher="") and (contents="") then

			else
				set MyDB=server.createObject("ADODB.Connection")
            	MyDB.Open("DSN=InStep;UID=admin;pw=")

				SQL="insert into Post(Title,Contents,Publisher,[Time]) values ('"
				SQL=SQL & title 	& "','"
				SQL=SQL & contents 	& "','"
				SQL=SQL & publisher & "','"
				SQL=SQL & timers 	& "')"
	
				MyDB.Execute(SQL)
							
				MyDB.close
				set MyDB=nothing
			end if
		%>
		<div id="mArticle" class="article_skin">

			<div class="index_title">
				<h2 class="tit_skin"><span class="txt_title">StupidDevelopers</span></h2>
			</div>
			<div class="list_content">
							
					<a href="/1349" class="thumbnail_post"><img class="post1" src="//i1.daumcdn.net/thumb/C150x150/?fname=http://cfile21.uf.tistory.com/image/2478114559112E5E1BFB98"></a>
				
				<a href="/1349" class="link_post">
					<strong class="tit_post ">'얼굴나이 측정 사이트' 사용하기</strong>
					<p class="txt_post" class="posttext">오늘은 재미있는 사이트를 하나 소개해드릴까 합니다. 제목에서도 언급되었듯이 '얼굴나이 측정 사이트' 입니다. 마이크로소프트(MS)사에서 자사의 얼굴인식 소프트웨어를 이용하여 간편하게 얼굴나이를 측정해주죠.
얼굴 나이 측정 사이트https://www.how-old.net/해당 주소로 들어가면 검색을 통해 얼굴인식을 할 수도 있고, 저장된 사진을 불러와서 테스트 해볼 수 있습니다. 물론 샘플로 제시된 이미지를 사용할 수도 있구요.먼저, 샘플이미..</p>
				</a>
				<div class="detail_info">
					<a href="/category/%EA%B8%80%E3%83%BB%EC%A0%95%EB%B3%B4/%EC%9C%A0%EC%9A%A9%ED%95%9C%20%EC%82%AC%EC%9D%B4%ED%8A%B8" class="link_cate">글・정보/유용한 사이트</a>
					<span class="txt_bar"></span>
					<span class="txt_date">2017.05.09 12:13</span>
				</div>
			</div>
			<div class="list_content">
							
					<a href="/1348" class="thumbnail_post"><img class="post2"src="//i1.daumcdn.net/thumb/C150x150/?fname=http://cfile9.uf.tistory.com/image/2148D0425910501517EDE6"></a>
				
				<a href="/1348" class="link_post">
					<strong class="tit_post ">코스트코 피자 신메뉴 '고구마피자' 후기</strong>
					<p class="txt_post" >코스트코 피자를 종종 사오는데, 지난번 먹었던 치킨토마토피자를 주문하려 했더니, 메뉴에서 사라지고 고구마피자가 생겼더라구요. 저는 당연히 고기가 들어있을 줄 알고 주문했는데...





코스트코 고구마피자는 신메뉴라 처음 먹어봤는데요. 저는 개인적으로 아쉬움이 많은 피자입니다. 물론 맛은 있는데, 고기와 햄이 듬뿍 올라간 피자를 좋아하는 제게 시련(?)과도 같은 피자였죠.고구마피자는 정말 정직하게 고구마와 채소만 듬뿍 들어간 피자였습니다. 정말 건..</p>
				</a>
				<div class="detail_info">
					<a href="/category/%EC%82%AC%EC%A7%84%E3%83%BB%EB%A7%9B%EC%A7%91%E3%83%BB%EC%9D%BC%EC%83%81/%EC%9D%8C%EC%8B%9D%E3%83%BB%EB%A7%9B%EC%A7%91%E3%83%BB%EB%94%94%EC%A0%80%ED%8A%B8" class="link_cate">사진・맛집・일상/음식・맛집・디저트</a>
					<span class="txt_bar"></span>
					<span class="txt_date">2017.05.08 20:13</span>
				</div>
			</div>
			<div class="list_content">
							
								<a id="post3"href="post2.asp" class="thumbnail_post"><img class="post3"src="//i1.daumcdn.net/thumb/C150x150/?fname=http://cfile9.uf.tistory.com/image/242C0B4D590EE21B0CB7BA"></a>
							
							<a href="post2.asp" class="link_post">
								<strong class="tit_post ">KFC 치킨, 구성이 알찬 '더베스트팩'</strong>
								<p class="txt_post">오랜만에 KFC 치킨을 배달주문해서 먹었습니다. 핫크리스피 3조각, 오리지널 3조각, 텐더스트립스 4조각, 너겟 4조각, 징거버거, 스위트칠리소스 로 구성된 '더 베스트팩' 이었습니다.





가격은 18,000원 이었지만, KFC&nbsp;딜리버리 메뉴중에 꽤 괜찮은 구성이어서 주문하게 되었습니다. 치킨너겟, 텐더스트립스, 핫크리스피치킨, 오리지널치킨 의 구성도 좋은데, 아쉽지 않게 징거버거까지 들어있으니 주문을 안할 이유가 없었죠.KFC 더베스..</p>
							</a>
							<div class="detail_info">
								<a href="post2.asp" class="link_cate">사진・맛집・일상/음식・맛집・디저트</a>
								<span class="txt_bar"></span>
								<span class="txt_date">2017.05.07 18:26</span>
							</div>
						</div>
						<div class="list_content">
							
								<a href="/1346" class="thumbnail_post"><img class="post4" src="//i1.daumcdn.net/thumb/C150x150/?fname=http://cfile26.uf.tistory.com/image/251A1839590D86FD03C94F"></a>
							
							<a href="/1346" class="link_post">
								<strong class="tit_post ">러플(Ruffles)감자칩, 사워크림&amp;어니언 감자칩</strong>
								<p class="txt_post">오늘 소개해드릴 과자는 러플(Ruffles) 감자칩 입니다. 러플 감자칩 중에서도 사워크림&amp;어니언 맛의 감자칩이죠. 미국 감자칩들은 용량도 큰 게 봉지 하나의 크기가 425.2g. 제가 지난번 죠리퐁 리뷰에서 대용량 죠리퐁 무게가 186g 임을 감안해도 2.3배 정도 용량이 더 많은 감자칩이라는 걸 알 수 있죠.





러플 감자칩은 크키도 크지만, 꽤 먹음직 스럽게 생겨서 골라왔습니다. 일반 감자칩과 사워크림앤어니언&nbsp;감자칩을 고를..</p>
							</a>
							<div class="detail_info">
								<a href="post1.asp" class="link_cate">사진・맛집・일상/음식・맛집・디저트</a>
								<span class="txt_bar"></span>
								<span class="txt_date">2017.05.06 17:48</span>
							</div>
						</div>
						<div class="list_content">
							
								<a href="post1.asp" id="post4"class="thumbnail_post"><img class="post4" src="//i1.daumcdn.net/thumb/C150x150/?fname=http://cfile26.uf.tistory.com/image/266FB233590B15450B0B12"></a>
							
							<a href="post1.asp" class="link_post">
								<strong class="tit_post ">버거킹 크리미 통새우와퍼 맛은?!</strong>
								<p class="txt_post">버거킹 '크리미 통새우와퍼' 세트를 먹어봤습니다. 크리미 통새우와퍼는 신메뉴로 통새우와 크림소스가 들어간 햄버거죠. 버거킹에 가면 당연히 콰트로 치즈와퍼를 먹었어야 했는데, 좀 아쉬운 하루였죠.





요즘은 버거킹에 가보니깐 키오스크(KIOSK)를 통해 주문을 할 수 있었습니다. 심지어 버거킹 키오스크 에는&nbsp;커스텀 기능도 있었습니다. 콰트로치즈와퍼에 프렌치프라이를 어니언링으로, 콜라 대신 생수과 베이컨 2장 추가. 크리미 통새우와퍼는 치..</p>
							</a>
							<div class="detail_info">
								<a href="/category/%EC%82%AC%EC%A7%84%E3%83%BB%EB%A7%9B%EC%A7%91%E3%83%BB%EC%9D%BC%EC%83%81/%EC%9D%8C%EC%8B%9D%E3%83%BB%EB%A7%9B%EC%A7%91%E3%83%BB%EB%94%94%EC%A0%80%ED%8A%B8" class="link_cate">사진・맛집・일상/음식・맛집・디저트</a>
								<span class="txt_bar"></span>
								<span class="txt_date">2017.05.04 22:11</span>
							</div>
						</div>
			<%
				set MyDB=server.createObject("ADODB.Connection")
            	MyDB.Open("DSN=InStep;UID=admin;pw=")

				SQL="Select * from Post;" 
				set tempDB=MyDB.Execute(SQL)
				
				do until tempDB.EOF
					id 			=tempDB("ID")
					title 		=tempDB("Title")
					publisher 	=tempDB("Publisher")
					contents 	=tempDB("Contents")
					timers 		=tempDB("Time")
			%>
			
			<div class="list_content">
				<form method="post" action="post.asp" name="speed" id="speed">
					<input type="hidden" name="vale" id= "vale" value=<%= id %>>
					<a href="#"class="link_post" onclick="document.getElementById('speed').submit();">
						<strong class="tit_post "><%=title%></strong>
						<p class="txt_post"><%=contents%></p>
					</a>
				</form>
					
				<script type="text/javascript">
					window.scrollTo(0,0);
				</script>
					
				<div class="detail_info">
					<a href="#" class="link_cate">분류없음</a>
					<span class="txt_bar"></span>
					<span class="txt_date"><%=timers%></span>
				</div>
			</div>
			<%
				tempDB.MoveNext
				loop
				MyDB.close
				set MyDB=nothing
			%>				
	</body>

</html>
