CC = gcc

time_diff: time_diff.c
	gcc time_diff.c -o time_diff -lm

clean:
	rm time_diff

test: time_diff
	bash test.sh
