tell application "Safari"
	open location "https://workforcenow.adp.com/public/login/wfnlogin.fcc"
	activate
	tell application "Finder" to set visible of process "Safari" to false
	delay 2
	do JavaScript "document.getElementById('portal.login.logIn').click()" in document 1
	delay 6
	do JavaScript "function FindByAttributeValue(attribute, value)    {
		  var All = document.getElementsByTagName('*');
		  for (var i = 0; i < All.length; i++)       {
		    if (All[i].getAttribute(attribute) == value) { return All[i]; }
		  }
		}
		FindByAttributeValue('title','Clock Out').click()" in document 1
	delay 10
	quit
end tell