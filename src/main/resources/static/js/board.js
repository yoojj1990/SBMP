/**
 * 
 */
 
 
 function boardConfirm() {
	
	if(document.question_frm.qname.value.length == 0){
		alert("이름은 필수사항입니다.");
		document.question_frm.qname.focus();
		return;
	}
	
	if(document.question_frm.qname.value.length < 2){
		alert("이름은 2글자 이상이어야 입니다.");
		document.question_frm.qname.focus();
		return;
	}
	
	if(document.question_frm.qcontent.value.length < 10){
		alert("질문은 10글자 이상이어야 입니다.");
		document.question_frm.qcontent.focus();
		return;
	}
	
	if(document.question_frm.qemail.value.length == 0){
		alert("이메일은 필수 입력사항 입니다.");
		document.question_frm.qemail.focus();
		return;
	}
	
	
	
	document.question_frm.submit();
}