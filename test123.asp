

<!doctype html>
<html xmlns ="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
	<head>
		<meta charset="utf-8" http-equiv="Content-Type" Content="text/html; charset=utf-8">
		<script src="JsFile/jquery-2.1.4.min.js"></script>
		<script src="SpeechRecognitionTest.js"></script>
		<script type="text/javascript">
			 // 인식이 완료되면 이벤트 
			var temp;
			recognition.onresult = function ( event ) { 
				var results = event.results;
				for (var i = event.resultIndex; i <results.length; i++) {
					temp=results[i][0].transcript; 
					$ ("#recognizedText").text(temp);
					document.getElementById("search").value=temp;
				}
			};
		</script>
	</head>
	
	<body class="aaa">
		<input type="button" value="start" onclick="recognition.start();">
 		<input type="text" class="name" id="search"value="">
		<input type="button" value="stop" onclick="recognition.stop();"/> 
		<div ID="state">정지</div>
		<div ID="recognizedText"></div>
	</body>
</html>