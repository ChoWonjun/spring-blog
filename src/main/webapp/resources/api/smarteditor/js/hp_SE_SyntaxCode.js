nhn.husky.SE_SyntaxCode = jindo.$Class({
    name : "SE_SyntaxCode",
    $init : function(elAppContainer){
        this._assignHTMLObjects(elAppContainer);
    },
 
    _assignHTMLObjects : function(elAppContainer){

	//버튼은 li 요소 안에 있어야 하며, li > button > span의 구조를 이루어야 한다.
	//버튼을 추가하는 li 태그의 클래스 이름에는 husky_seditor_ui_가 앞에 붙어야 한다.
	
        this.oDropdownLayer =
                cssquery.getSingle("DIV.husky_seditor_SyntaxCode_layer", elAppContainer);
        
        this.elBtn_apply = cssquery.getSingle(".husky_se2m_apply", this.oDropdownLayer);
		this.oBtnCancel = cssquery.getSingle(".husky_se2m_cancel", this.oDropdownLayer);
		
		this.shtb_adv_codebox_language = cssquery.getSingle(".shtb_adv_codebox_language", this.oDropdownLayer);
		this.shtb_adv_codebox_code = cssquery.getSingle(".shtb_adv_codebox_code", this.oDropdownLayer);
		this.shtb_adv_codebox_linenumbers = cssquery.getSingle(".shtb_adv_codebox_linenumbers", this.oDropdownLayer);
		this.shtb_adv_codebox_starting_linenumber = cssquery.getSingle(".shtb_adv_codebox_starting_linenumber", this.oDropdownLayer);
		this.shtb_adv_codebox_highlighted_lines = cssquery.getSingle(".shtb_adv_codebox_highlighted_lines", this.oDropdownLayer);
		this.shtb_adv_codebox_html_script = cssquery.getSingle(".shtb_adv_codebox_html_script", this.oDropdownLayer);

		
    },
 
    $ON_MSG_APP_READY : function(){
        this.oApp.exec("REGISTER_UI_EVENT",
                ["SyntaxCode", "click", "SE_TOGGLE_SYNTAXCODE_LAYER"]);
        //input button에 click 이벤트를 할당.
        this.oApp.registerBrowserEvent(this.elBtn_apply, 'click','PASTE_CODE');
		this.oApp.registerBrowserEvent(this.oBtnCancel, "click", "HIDE_ACTIVE_LAYER");
    },
 
    $ON_SE_TOGGLE_SYNTAXCODE_LAYER : function(){
        this.oApp.exec("TOGGLE_TOOLBAR_ACTIVE_LAYER", [this.oDropdownLayer]);
    },
	
 
    $ON_PASTE_CODE : function(){

		var langname = this.shtb_adv_codebox_language.value;
		var linenumbers = this.shtb_adv_codebox_linenumbers.checked;
		var starting_linenumber = this.shtb_adv_codebox_starting_linenumber.value;
		var highlight_lines = this.shtb_adv_codebox_highlighted_lines.value;
		var html_script = this.shtb_adv_codebox_html_script.checked;
		var code = "";
		var code = this.shtb_adv_codebox_code.value.replace(/&amp;/g,'&amp;amp;').replace(/&lt;/g,'&amp;lt;').replace(/</g,'&lt;');
		//code = code.replace(/\n|\r/g,'<br />');
		code = code.replace(/&gt;/g,'&amp;gt;').replace(/&quot;/g,'&amp;quot;').replace(/&#039;/g,'&amp;#039;');

		var tagtext = '<pre class="brush: ';
		classAttribs = langname;

		if (linenumbers)
			classAttribs = classAttribs + '; gutter: true';
		else
			classAttribs = classAttribs + '; gutter: false';

		if (starting_linenumber)
			classAttribs = classAttribs + '; first-line: ' + starting_linenumber;
		else
			classAttribs = classAttribs;

		if (highlight_lines)
			classAttribs = classAttribs + '; highlight: [' + highlight_lines + ']';
		else
			classAttribs = classAttribs;

		if (html_script)
			classAttribs = classAttribs + '; html-script: true';
		else
			classAttribs = classAttribs;

		if(starting_linenumber.match(/[^0-9]+/)){
				alert("Please input number to the 'Starting Line Number' column");
				return;
		} else if(highlight_lines != "" && highlight_lines.match(/[^,0-9]/)){
				alert("Please input a linenumber or comma-separated linenumbers to the 'Highlighted Lines' column");
				return;
		} else if (code == '') {
			alert("Your code is empty");
		} else {
			this.oApp.exec("PASTE_HTML", [tagtext+classAttribs+'">'+code+'</pre>' ]);
		}
		this.oApp.exec("HIDE_ACTIVE_LAYER");

			
		}
});