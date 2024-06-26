all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "This is a simple guessing game." >> README.md
	echo "\n## Date and Time\n" >> README.md
	date >> README.md
	echo "\n## Number of lines in guessinggame.sh\n" >> README.md
	wc -l guessinggame.sh | awk '{print $$1 " lines"}' >> README.md

clean:
	rm -f README.md
