run: line.js
	@node line.js
	@convert image.ppm lines.png
	@echo ""
	@echo "Make finished"

install: line.js
	@echo "Checking if npm is installed"
	npm -v
	@echo "npm is installed"
	@echo "Installing/updating needed dependencies"
	npm install colors
	@echo ""
	@echo "Make finished"

clean: lines.png image.ppm
	@rm lines.png image.ppm
	@echo "All clean, make finished"