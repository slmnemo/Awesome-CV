.PHONY: embedded

CC = xelatex
# CC = pdftex
RESUME_DIR=src
OUTPUT_DIR=resumes
RESUME_SRCS=$(find ${RESUME_DIR} -name '*.tex')

embedded: ${RESUME_DIR}/resume_embedded.tex ${RESUME_SRCS}
	${CC} -output-directory=${OUTPUT_DIR} $<

coverletter: ${RESUME_DIR}/coverletter.tex
	${CC} -output-directory=${OUTPUT_DIR} $<

clean:
	rm -rf ${OUTPUT_DIR}/*.pdf
