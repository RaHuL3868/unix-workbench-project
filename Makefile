# Makefile for Unix Workbench Project
# Generates README.md with project information

README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "**Date and time when make was run:**" >> README.md
	@echo "$$(date)" >> README.md
	@echo "" >> README.md
	@echo "**Number of lines in guessinggame.sh:**" >> README.md
	@wc -l < guessinggame.sh >> README.md

clean:
	rm -f README.md
