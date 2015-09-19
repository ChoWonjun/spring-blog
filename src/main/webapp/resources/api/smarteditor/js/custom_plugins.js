nhn.husky.SE_code = jindo.$Class({
	name : "SE_code",
	oEditingArea : null,
	
	$init : function(oEditingArea) {
		this.oEditingArea = oEditingArea;
	},
	
	$BEFORE_MSG_APP_READY : function() {
		if(this.oEditingArea && this.oEditingArea.tagName == "IFRAME"){
			this.oEditingArea = this.oEditingArea.contentWindow.document;
		}
	},
	
	$ON_MSG_APP_READY : function() {
		this.oApp.exec('REGISTER_UI_EVENT', ['se2_code', 'click',
		                                     'SE_code']);
	},
	
	$ON_SE_code : function() {
		var oSelection = this.oApp.getSelection();
		oSelection = "<code>"+oSelection+"</code>";
		parent.oEditors.getById["SE"].exec("PASTE_HTML", [oSelection]);
		this.oEditingArea.execCommand("RemoveFormat", false, false);
	}
	
});