.PHONY: all

CC = xelatex
# CC = pdftex
RESUME_DIR=src
OUTPUT_DIR=resumes
RESUME_SRCS=$(find ${RESUME_DIR} -name '*.tex')

all: embedded coverletter

allclean: clean embedded coverletter

embedded: 
	${CC} -output-directory=${OUTPUT_DIR} ${RESUME_DIR}/resume_embedded.tex

coverletter: 
	${CC} -output-directory=${OUTPUT_DIR} ${RESUME_DIR}/coverletter.tex

clean:
	rm -rf ${OUTPUT_DIR}/*.pdf
