on run {input, parameters}
	tell application "Safari"
		activate
		do JavaScript "document.getElementById('portal.login.logIn').click()" in document 1
		delay 6
		do JavaScript "document.getElementById('revit_form_ComboButton_1').focus()" in document 1
	end tell

	return input
end run
