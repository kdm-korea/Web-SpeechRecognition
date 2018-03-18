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
        <script src="JsFile/jquery-2.1.4.min.js"></script>
    </head>
    <body>
        <link rel="stylesheet" href="style.css">
	    <link rel="stylesheet" href="CSS/font.css">
        
		<input type="hidden" name="val">
    <script type='text/javascript'>
        window.scrollTo(0,0);
    </script>
    <%
        set MyDB=server.createObject("ADODB.Connection")
        MyDB.Open("DSN=InStep;UID=admin;pw=")

        SQL="Select * from Post where ID=" & request.form("vale")
        set tempDB=MyDB.Execute(SQL)
        
        do until tempDB.EOF
            id 			=tempDB("ID")
            title 		=tempDB("Title")
            publisher 	=tempDB("Publisher")
            contents 	=tempDB("Contents")
            timers 		=tempDB("Time")
    
    %>
       <div id="mArticle" class="article_skin">
            <strong class="tit_category">분류없음</strong>
                <h3 class="tit_post"><%=title%></h3>
                <span class="info_post"><%=pupublisher%>
                    <span class="txt_bar"></span><%=timers%>
            </br>
            <div class="area_view">
                <%=contents%>
            </div>
            <div class="area_etc">
                <strong class="screen_out">공유하기 링크</strong>
                <ul class="list_share">
                    <li><a href="#none" class="ico_skin link_fb" data-service="facebook">페이스북</a></li>
                    <li><a href="#none" class="ico_skin link_ks" data-service="kakaostory">카카오스토리</a></li>
                    <li><a href="#none" class="ico_skin link_tw" data-service="twitter">트위터</a></li>
                </ul>
            </div>

            

            <div class="area_reply">
                <strong class="tit_reply"><span id="commentCount1">0</span>  Comments</strong>
                <div id="entry1Comment" style="display:block">
                    

                    <form method="post" action="/comment/add/1" onsubmit="return false" style="margin: 0">
                        <fieldset class="fld_reply">
                            <legend class="screen_out">댓글쓰기 폼</legend>
                            

                            <div class="reply_write ">
                                <label for="comment" class="lab_write screen_out">내용</label>
                                <textarea name="comment" id="comment" class="tf_reply" placeholder="여러분의 소중한 댓글을 입력해주세요" tabindex="3"></textarea>
                            </div>

                            <div class="writer_btn">
                                <button type="submit" class="btn_enter" onclick="addComment(this, 1); return false;" tabindex="5">Send</button>
                            </div>
                        </fieldset>
                    </form>
                </div><script type="text/javascript">loadedComments[1]=true;highlight()</script>
            </div>
            <%
					tempDB.MoveNext
				loop
				MyDB.close
				set MyDB=nothing
			%>

				<div class="index_title">
					<h2 class="tit_skin"><span class="txt_title">GeniusJW</span></h2>
				</div>
            </div>
    </body>
</html>