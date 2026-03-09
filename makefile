all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "**Make execution time:** $$(date)" >> README.md
	echo "" >> README.md
	echo "**Number of lines in guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm README.md
