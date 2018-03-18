f (typeof webkitSpeechRecognition != 'function') {
    alert('ũ�ҿ����� ���� �մϴ�.');
    return false;
  }

  var recognition = new webkitSpeechRecognition();
  var isRecognizing = false;
  var ignoreOnend = false;
  var finalTranscript = '';
 	var audio = document.getElementById('audio');
  var $btnMic = $('#btn-mic');
 	var $result = $('#result');
 	var $iconMusic = $('#icon-music');
  recognition.continuous = true;
  recognition.interimResults = true;

  recognition.onstart = function() {
    console.log('onstart', arguments);
    isRecognizing = true;

    $btnMic.attr('class', 'on');
  };

  recognition.onend = function() {
    console.log('onend', arguments);
    isRecognizing = false;

    if (ignoreOnend) {
      return false;
    }

    // DO end process
    $btnMic.attr('class', 'off');
    if (!finalTranscript) {
      console.log('empty finalTranscript');
      return false;
    }

    if (window.getSelection) {
      window.getSelection().removeAllRanges();
      var range = document.createRange();
      range.selectNode(document.getElementById('final-span'));
      window.getSelection().addRange(range);
    }

  };

  recognition.onresult = function(event) {
    console.log('onresult', event);

    var interimTranscript = '';
    if (typeof(event.results) == 'undefined') {
      recognition.onend = null;
      recognition.stop();
      return;
    }

    for (var i = event.resultIndex; i < event.results.length; ++i) {
      if (event.results[i].isFinal) {
        finalTranscript += event.results[i][0].transcript;
      } else {
        interimTranscript += event.results[i][0].transcript;
      }
    }

    finalTranscript = capitalize(finalTranscript);
    final_span.innerHTML = linebreak(finalTranscript);
    interim_span.innerHTML = linebreak(interimTranscript);

    console.log('finalTranscript', finalTranscript);
    console.log('interimTranscript', interimTranscript);
    fireCommand(interimTranscript);
  };

  /**
   * changeColor
   *
   */
  /*
	  .red 		{ background: red; }
		.blue 	{ background: blue; }
		.green 	{ background: green; }
		.yellow { background: yellow; }
		.orange { background: orange; }
		.grey 	{ background: grey; }
		.gold   { background: gold; }
		.white 	{ background: white; }
		.black  { background: black; }
 	*/
  function fireCommand(string) {
  	if (string.endsWith('����')) {
  		$result.attr('class', 'red');
  	} else if (string.endsWith('���')) {
  		$result.attr('class', 'blue');
  	} else if (string.endsWith('�׸�')) {
  		$result.attr('class', 'green');
  	} else if (string.endsWith('���ο�')) {
  		$result.attr('class', 'yellow');
  	} else if (string.endsWith('������')) {
  		$result.attr('class', 'orange');
  	} else if (string.endsWith('�׷���')) {
  		$result.attr('class', 'grey');
  	} else if (string.endsWith('���')) {
  		$result.attr('class', 'gold');
  	} else if (string.endsWith('ȭ��Ʈ')) {
  		$result.attr('class', 'white');
  	} else if (string.endsWith('��')) {
  		$result.attr('class', 'black');
  	} else if (string.endsWith('�˶�') || string.endsWith('�� ��')) {
  		alert('�˶�');
  	} else if (string.endsWith('�뷡 ��') || string.endsWith('���� ��')) {
  		audio.play();
  		$iconMusic.addClass('visible');
  	} else if (string.endsWith('�뷡 ��') || string.endsWith('���� ��')) {
  		audio.pause();
  		$iconMusic.removeClass('visible');
  	} else if (string.endsWith('���� ��') || string.endsWith('������')) {
  		audio.volume += 0.2;
  	} else if (string.endsWith('���� �ٿ�') || string.endsWith('�����ٿ�')) {
  		audio.volume -= 0.2;
  	} else if (string.endsWith('����ġ') || string.endsWith('������') || string.endsWith('�� �� ��')) {
  	  textToSpeech($('#final_span').text() || '�� ���� �νĵ� ���ڸ� �н��ϴ�.');
  	}
  }

  recognition.onerror = function(event) {
    console.log('onerror', event);

    if (event.error == 'no-speech') {
      ignoreOnend = true;
    } else if (event.error == 'audio-capture') {
      ignoreOnend = true;
    } else if (event.error == 'not-allowed') {
      ignoreOnend = true;
    }

    $btnMic.attr('class', 'off');
  };

  var two_line = /\n\n/g;
  var one_line = /\n/g;
  var first_char = /\S/;

  function linebreak(s) {
    return s.replace(two_line, '<p></p>').replace(one_line, '<br>');
  }

  function capitalize(s) {
    return s.replace(first_char, function(m) {
      return m.toUpperCase();
    });
  }

  function start(event) {
    if (isRecognizing) {
      recognition.stop();
      return;
    }
    recognition.lang = 'ko-KR';
    recognition.start();
    ignoreOnend = false;

    finalTranscript = '';
    final_span.innerHTML = '';
    interim_span.innerHTML = '';

  }

  /**
   * textToSpeech
   * ����: ũ��, ���ĸ�, �����, ����
   */
  function textToSpeech(text) {
    console.log('textToSpeech', arguments);

    /*
    var u = new SpeechSynthesisUtterance();
    u.text = 'Hello world';
    u.lang = 'en-US';
    u.rate = 1.2;
    u.onend = function(event) {
      log('Finished in ' + event.elapsedTime + ' seconds.');
    };
    speechSynthesis.speak(u);
    */

    // simple version
    speechSynthesis.speak(new SpeechSynthesisUtterance(text));
  }

  /**
   * requestServer
   * key - AIzaSyDiMqfg8frtoZflA_2LPqfGdpjmgTMgWhg
   */
  function requestServer() {
    $.ajax({
      method: 'post',
      url: 'https://www.google.com/speech-api/v2/recognize?output=json&lang=en-us&key=AIzaSyDiMqfg8frtoZflA_2LPqfGdpjmgTMgWhg',
      data: '/examples/speech-recognition/hello.wav',
      contentType: 'audio/l16; rate=16000;', // 'audio/x-flac; rate=44100;',
      success: function(data) {

      },
      error: function(xhr) {

      }
    });
  }

  /**
   * init
   */
  $btnMic.click(start);
  $('#btn-tts').click(function() {
    textToSpeech($('#final_span').text() || '�� ���� �νĵ� ���ڸ� �н��ϴ�.');
  });
});