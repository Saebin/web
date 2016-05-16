$(function(){
    //전역변수선언
    var editor_object_01 = [];
    var editor_object = []; 
    var UserAgentKind_oEditor_Mode = "HTMLSrc"; 
    
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object_01,
        elPlaceHolder: "smarteditor_01",
        sSkinURI: "SE2/SmartEditor2Skin.html", 
        htParams : {
        	   bUseToolbar : true,    // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
        	   bUseVerticalResizer : true,  // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
        	   bUseModeChanger : true,   // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
        	   fOnBeforeUnload : function(){ 
                   
               },SE_EditingAreaManager : {	sDefaultEditingMode : UserAgentKind_oEditor_Mode } 
                           // - Editor 모드 : WYSIWYG - HTML 모드 : HTMLSrc - TEXT 모드 : TEXT 
      }, 
      fOnAppLoad : function(){ 
              //oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]); 
      }, 
      fCreator: "createSEditor2" 
    }); 
    
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        elPlaceHolder: "smarteditor",
        sSkinURI: "SE2/SmartEditor2Skin.html", 
        htParams : {
        	   bUseToolbar : true,    // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
        	   bUseVerticalResizer : true,  // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
        	   bUseModeChanger : true,   // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)      
        },
        	  fCreator: "createSEditor2"
     });
     
    //전송버튼 클릭이벤트
    $("#aa11").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
    	editor_object_01.getById["smarteditor_01"].exec("UPDATE_CONTENTS_FIELD", []);
        editor_object.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
        
        var tt01 = document.getElementById("smarteditor_01").value;
        var tt = document.getElementById("smarteditor").value;
        
        $("#11").val(tt01);
        $("#smarteditor").val(tt01);
        
        alert(tt01);
        //alert(tt);
        
        //$("#frm").submit();
    });
    
    $(".check").click(function(){
    	var text = $(this).next("label").text();
    	alert(text);
    });
})