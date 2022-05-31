/**
 * 
 */
 
 
 function joinCheck() {
   
   if(document.reg_frm.mid.value.length == 0) {
      alert("아이디는 필수 입력사항입니다.");
      reg_frm.mid.focus();
      return;      
   }
   
   if(document.reg_frm.mid.value.length < 4) {
      alert("아이디는 4글자 이상이어야 합니다.");
      reg_frm.mid.focus();
      return;      
   }
   
   if(document.reg_frm.mpw.value.length == 0) {
      alert("비밀번호는 필수 입력사항입니다.");
      reg_frm.mpw.focus();
      return;      
   }
   
   if(document.reg_frm.mpw_check.value.length == 0) {
      alert("비밀번호 체크는 필수 입력사항입니다.");
      reg_frm.mpw_check.focus();
      return;      
   }
   
   if(document.reg_frm.mpw.value != document.reg_frm.mpw_check.value) {
      alert("비밀번호가 일치하지 않습니다. 비밀번호 체크 입력 사항을 확인해주세요.");
      reg_frm.mpw.focus();
      return;      
   }
   
   if(document.reg_frm.mname.value.length == 0) {
      alert("이름은 필수 입력사항입니다.");
      reg_frm.mname.focus();
      return;      
   }
   
   if(document.reg_frm.memail.value.length == 0) {
      alert("이메일은 필수 입력사항입니다.");
      reg_frm.memail.focus();
      return;      
   }
   
   document.reg_frm.submit();
   
}