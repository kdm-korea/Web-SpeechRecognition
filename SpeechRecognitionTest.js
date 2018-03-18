
var recognition=new webkitSpeechRecognition();
var finalTranscript = '';
var $btnMic=$('#btn-mic');

recognition.lang="ko-KR";
recognition.m=true;
recognition.interimResults =false;
$(function(){
    $("*").keyup(function(e){
        if((e.keyCode==17)){
            $('#VoiceHidden').hide();
            recognition.stop();
        }
    })
    $("*").keydown(function(e){
        if((e.keyCode==17)){
            $('#VoiceHidden').show();
            recognition.start(10000);
        }
    })
});

recognition.onsoundstart = function () { 
    console.log('onsoundstart',arguments);
    
    isRecognizing = true;
 } ;
 // 일치하는 인식이없는 
recognition.onnomatch = function () { 
    console.log('onnomatch',arguments);
 } ;
 // 오류 
recognition.onerror = function () { 
    console.log('onerror',arguments);
 } ;
 // 이야기 소리의 인식 종료 
recognition.onsoundend = function () { 
    console.log('onsoundend', arguments);
    isRecognizing = false;


    // DO end process
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
    document.getElementById('exam').value="";
 } ;

