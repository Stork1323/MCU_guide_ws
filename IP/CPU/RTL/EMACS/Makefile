DESIGN = CPU

SRC_FILE = ${DESIGN}.src.sv
DST_FILE = ${DESIGN}.sv

.PHONY: all

all: emacs_wrapper

emacs_wrapper:
	cp -rf ${SRC_FILE} ${DST_FILE}
	emacs --batch ${DST_FILE} -f verilog-batch-auto
	sed -i 's,\[SCRAMBLE_KEY_W-1,\[127,g' ${DST_FILE}
	sed -i 's,\[SCRAMBLE_NONCE_W-1,\[63,g' ${DST_FILE}
