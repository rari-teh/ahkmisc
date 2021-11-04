^+u::
	InputBox, codepoint, Unicode IME, What codepoint do you want to print?
	If (codepoint = "lenny")
		Send {U+0028} {U+0361}{U+00B0} {U+035C}{U+0296} {U+0361}{U+00B0}{U+0029}
	If (codepoint = "e.e")
		Send {U+0CA0}_{U+0CA0}
	If (codepoint = "rollsafe")
		Send f{U+0028}{U+0CA0}{U+203F}{U+21BC}{U+0029}z
	If (codepoint = "shrug")
		Send ¯\_{U+0028}{U+30C4}{U+0029}_/{U+00AF}
	If (codepoint = "tomato")
		Send t{U+0259}{U+02C8}me{U+026A}to{U+028A}{U+002C} t{U+0259}{U+02C8}m{U+0251}{U+02D0}to{U+028A}
	Send {U+%codepoint%}
	Return
