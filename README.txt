- Required:
	+ Install nodejs.
 	+ Install harp: run in cmd: npm install -g harp.
  	+ Install less: run in cmd: npm install -g less.
	+ Editor: SublimeText or Atom (optional).

- Structure:
  	+ 'AssetsColections' stores all libraries and font (almost is font-icon).
  	+ 'Template' is a default project.


==========================================================
=   THINGS MUST BE NOTICES WHEN CREATING A NEW PROJECT   =
==========================================================

- Change Runnning Server: open file "_START_SERVER.bat" and edit the port number, then save it.
------------------------------------------------
- Change OutputPath:
	+ Default: folder "output" will be generated in project folder.
	+ If you want to change it, open file "_COMPILE.bat" and replace all text "output" into your <OutputPath>.
------------------------------------------------
- Add a new page:
	+ There 3 default pages:
		* Two of these are available with harp.
		* The other is I create for short-code (optional, if you don't need it, delete it and delete it data in "_data.json").
	+ Create a file "<page-name>.jade".
	+ Open file "_data.json", add new object to it with following struct:
		"<page-name>": {
			"title": "<page-name>",
			"nav": "<page-name>",
			"url_style": [
				// Store local css just for this page.
				// When you add a new lib, copy its path here.
	        ],
	        "url_script": [
	        	// Store local js just for this page.
        		// When you add a new lib, copy its path here.
	        ]
		},
------------------------------------------------
- Add a new style:
	+ Add a new file "<new-component>.less" in "assets/css".
	+ Add this line at the first of new file: "@import "../less/library.less";"
	+ Open file "_layout.jade".
	+ Find "STYLE CSS" and add a new link below it.
------------------------------------------------
- Add a new header/footer:
	+ Default: "header-default.jade"/"footer-default" in "_include/header"/"_include/footer".
	+ Add a new file "<new-header>.jade""<new-footer>.jade" in "_include/header"/"_include/footer".
	+ Open file "_layout.jade".
	+ Find "HEADER"/"FOOTER" and add a new condition for your header/footer.
------------------------------------------------
- Add a font:
	+ Go to Google font, choose a font and copy html code.
	+ Open file "_layout.jade".
	+ Find "FONT CSS" and paste it below.
	+ Default: I included font Roboto.
------------------------------------------------
- In file "_layout.jade", if you include a .js or .css file, it will be used for all project (for all pages).
------------------------------------------------
- "BackToTop" button:
	+ I commented it, if you want to use it, find "BUTTON BACK TO TOP", uncomment it and add function to use.
------------------------------------------------
- Responsive:
	+ Common: 1024, 768, 767, 600, 480, 320.
	+ Rarely: 667.
	+ 768: Vertcal Ipad.
	+ 767: Horizontal Smartphone.
