
<html xmlns ="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
	<head>
		<meta charset="utf-8" http-equiv="Content-Type" Content="text/html; charset=utf-8">
		<script src="JsFile/jquery-2.1.4.min.js"></script>
		<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
		<script src="//cdn.ckeditor.com/4.6.2/standard/adapters/jquery.js"></script>
		<script type="text/javascript">
		$('#editor1').val('테스트');
			function editorval(str){
				CKEDITOR.instances.editor1.setData(strslice(str,2),{
						callback: function(){this.checkDirty();}
					})
			}
			function strslice(str,num){
				return str.substring(0,str.length-num);
			}
		</script>
		<style>
		.subinput{
			background-color:#808080;
		}
		.subinput:hover{
			background:#4e4e4e;
		}
	</style>
	</head>
	<body class="aaa">
		<form name="nse" action="index.asp" method="post">
			<div class="hard" height="auto" width="100%"style="margin-top:30px;width: 98%;">
				<label for="title"><strong><font size="5">제 목 : </font></strong><input type="text"name="title" class="title" id="title"style="font-size:25px; border-radius:10px;padding:3px;border: 1px solid #e8e8e8;width:90%;margin-bottom: 20px;height: 38px;"></label>
				<textarea name="editor1" id="editor1" class="editor1" rows="300" col="30"></textarea>
				<script>
					CKEDITOR.replace('editor1', {
						filebrowserUploadUrl: '/images'
					});
				</script>
				<input type="submit"class="subinput" id="subinput" value="글쓰기" style="margin-top:10px; float:right; width:100%; height: 36px;border-radius: 9px;font-size: 13px;line-height: 38px;color: #fff;padding-right:10px;padding-left:10px;border:0;outline:0;margin-top: 5px;">
			</div>
		</form>
		
	</body>
</html>