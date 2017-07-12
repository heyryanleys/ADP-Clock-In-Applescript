on run {input, parameters}
	tell application "Safari"
		activate
		do JavaScript "document.getElementById('portal.login.logIn').click()" in document 1
		delay 6
		do JavaScript "function FindByAttributeValue(attribute, value)    {
		  var All = document.getElementsByTagName('*');
		  for (var i = 0; i < All.length; i++)       {
		    if (All[i].getAttribute(attribute) == value) { return All[i]; }
		  }
		}
		FindByAttributeValue('title','Clock Out').click()" in document 1
	end tell

	return input
end run
