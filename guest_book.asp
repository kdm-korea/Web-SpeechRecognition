

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
		.btn_enter{
			float:right;
			width: 71px;
			height: 71px;
			font-size: 13px;
			line-height: 38px;
			color:  #fff;
			background-color: #808080;
			padding-right:10px;
			padding-left:10px;
			border:0;
			outline:0;
			margin-top: 5px;
		}
		.btn_enter:hover{
			background:#4e4e4e;
		}
	</style>
</head>

<body id="tt-body-guestbook">

            <div id="mArticle" class="article_skin" style="width: auto;">

		
				<div id="entry0Comment">
					<h2 id="dkBody" class="tit_skin"><span class="txt_title" style="font-size:40px"><Strong>Guestbook</strong></span></h2>
					<div class="area_reply">
						<form method="post" action="guest_book.asp" target="_self" style="margin: 0">
							<fieldset class="fld_reply"style="border-radius:10px">
								<legend class="screen_out">방명록쓰기 폼</legend>
								<div style="margin-bottom:8px;">
									<label for="name"style="margin-right:12px;">ID :  <input type="text" name="name" id="name" style="border-radius:10px; padding:3px;border: 1px solid #e8e8e8;"value=""></label>
									<label for="pwd">PW :  <input type="password" name="pwd" id="pwd" style="border-radius:10px; padding:3px;border: 1px solid #e8e8e8;"value=""></label>
								</div>
								<div class="reply_write" style="border-radius:10px;height: 80px;width: 97%;">
									<label for="comment" class="lab_write screen_out">내용</label>
									<textarea cols="30"name="comment" id="comment" class="tf_reply" placeholder="여러분의 소중한 댓글을 입력해주세요" tabindex="3"style="width:80%"></textarea>
									<input type="submit" class="btn_enter" id="btn_enter" tabindex="4" style="border-radius: 9px;">
								</div>
								
							</fieldset>
						</form>
                        <%
							comment=request.form("comment")
                            timemer=FormatDateTime(Now(), 0)
                            name=request.form("name")
                            password=request.form("pwd")
							
							if (comment="")and(password="")and(name="") then
							else
								set MyDB=server.createObject("ADODB.Connection")
								MyDB.Open("DSN=InStep;UID=admin;pw=")
								
								SQL="insert into Comments(Postnum, Nicname, [Password],Contents,[Time]) values (0" 
								SQL=SQL & ",'"& name     & "'"
								SQL=SQL & ",'"& password & "'"
								SQL=SQL & ",'"& comment  & "'"
								SQL=SQL & ",'"& timemer  & "')"

								MyDB.Execute(SQL)
								
								MyDB.close
								set MyDB=nothing
							end if
                        %>

						
						<ul class="list_reply">
							<%
								set MyDB=server.createObject("ADODB.Connection")
								MyDB.Open("DSN=InStep;UID=admin;pw=")
								
								SQL="Select * from Comments where Postnum=0 order by ID" 
								set tempDB=MyDB.Execute(SQL)
								
							do until tempDB.EOF
								comment=tempDB("Contents")
								timemer=tempDB("Time")
								name=tempDB("Nicname")
								password=tempDB("Password")
							%>
								<li id='comment9673143' class="guest_admin">
									<span class="ico_skin thumb_profile"></span>
									<span class="reply_content">
										<span class="tit_nickname"> <%=name%></span>
										<span class="txt_date"><%=timemer%></span>
										<span class="txt_reply"><%=comment%></span>
									</span>
									<div class="area_more">
										<!-- on_more 클래스 추가시 레이어 오픈 -->
										<a href="#none" class="more_reply">
											<span class="ico_skin ico_more">댓글 메뉴 보기</span>
										</a>
										<div class="reply_layer">
											<div class="inner_reply_layer">
												<div class="layer_head">
													<strong class="screen_out">댓글메뉴</strong>
												</div>
												<div class="layer_body">
													<a href="#none" onclick="deleteComment(9673143);return false" class="link_reply">수정/삭제</a>
												</div>
											</div>
										</div>
									</div>
								</li>

								<%
									tempDB.MoveNext
									loop
									MyDB.close
									set MyDB=nothing
								%>
							
						</ul>
						
					</div>
				</div>
               
            </div>
        </div>
    </div>
    
</div>
<script type="text/javascript" src="SpeechRecognitionTest.js"></script>
		<script type="text/javascript">
			num=0;
			temper=0;
			//var SpeechRecognitionList=new speechGrammarList();
			//SpeechRecognitionList.addFromString('제목',2);
			recognition.onresult = function (event) {
				console.log('onresult',arguments);
				var editor1=document.getElementById ('name');
				var title=document.getElementById('pwd');
				var results="";
				finalTranscript='';
				for (var i = event.resultIndex; i <results.length; i++) {
					if(event.results[i].isFinal){
						finalTranscript +=event.results[i][0].transcript;
					}
				}
				results+=finalTranscript;
				num=findCommand(results);
				
				if(num==1){
					title.value=strslice(results,2);
					exam.value="";
				}if(num==2){
					publisher.value=strslice(results,3);
					exam.value="";
				}
				console.log('finalTranscript', finalTranscript);
			};
			function findCommand(string){
				if(string.indexOf('제목')!=-1){
					return 1;
				}else if(string.indexOf('작성자')!=-1){
					return 2;
				}
				else if(string.indexOf('내용')!=-1){
					return 3;
				}
			}
			function strslice(str,num){
				return str.substring(0,str.length-num);
			}
		</script>

	</body>
</html>

