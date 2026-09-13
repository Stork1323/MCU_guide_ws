`timescale 1ns/1ps

module CPU #(
)
(
//---------------------------------------------------------------
// CLK/RST 
//---------------------------------------------------------------
/*AUTOINPUT("^CLK\|^RST")*/

//---------------------------------------------------------------
// Shadow core instruction interface 
//---------------------------------------------------------------
/*AUTOOUTPUT("^INSTR_.*_SHADOW")*/

//---------------------------------------------------------------
// Instruction memory interface 
//---------------------------------------------------------------
/*AUTOINPUT("^INSTR_")*/
/*AUTOOUTPUT("^INSTR_")*/

//---------------------------------------------------------------
// Shadow core data interface 
//---------------------------------------------------------------
/*AUTOOUTPUT("^DATA_.*_SHADOW")*/

//---------------------------------------------------------------
// Data memory interface 
//---------------------------------------------------------------
/*AUTOINPUT("^DATA_")*/
/*AUTOOUTPUT("^DATA_")*/

//---------------------------------------------------------------
// TRVK revocation bitmap read interface 
//---------------------------------------------------------------
/*AUTOINPUT("^TRVK_")*/
/*AUTOOUTPUT("^TRVK_")*/

//---------------------------------------------------------------
// Interrupt 
//---------------------------------------------------------------
/*AUTOINPUT("^INT_")*/
/*AUTOOUTPUT("^INT_")*/

//---------------------------------------------------------------
// Scrambling Interface 
//---------------------------------------------------------------
/*AUTOINPUT("^SCRAMBLE_")*/
/*AUTOOUTPUT("^SCRAMBLE_")*/

//---------------------------------------------------------------
// Others 
//---------------------------------------------------------------
/*AUTOINOUT*/
/*AUTOINPUT*/
/*AUTOOUTPUT*/
);

/*AUTOWIRE*/

/*AUTO_LISP(setq verilog-auto-inout-ignore-regexp
  (concat
  "unuse_inout"
  "\\|unuse_inout"
  ))
*/

/*AUTO_LISP(setq verilog-auto-input-ignore-regexp
  (concat
  "unuse_input"
  "\\|unuse_input"
  ))
*/

/*AUTO_LISP(setq verilog-auto-output-ignore-regexp
  (concat
  "unuse_output"
  "\\|rvfi_ext"
  ))
*/

/* ibex_top AUTO_TEMPLATE(
      .clk_i (@"(upcase vl-name)"),
      .rst_ni (RST_N_I),
      .rvfi_\(.*\) (rvfi_\1[]),
      .irq_\(.*\) (INT_@"(upcase (symbol-name '\1))"[]),
      .\(.*\) (@"(upcase (symbol-name '\1))"[]),
);
*/
ibex_top u_ibex_top(/*AUTOINST*/);

/* ibex_tracer AUTO_TEMPLATE(
      .clk_i (@"(upcase vl-name)"),
      .rst_ni (RST_N_I),
      .rvfi_\(.*\) (rvfi_\1[]),
      .\(.*\) (@"(upcase (symbol-name '\1))"[]),
);
*/
ibex_tracer u_ibex_tracer(/*AUTOINST*/);

endmodule
// Local Variables:
// verilog-library-flags:("-f filelist_emacs.f")
// verilog-library-extensions:(".v" ".sv")
// verilog-auto-star-expand: nil
// verilog-auto-inst-param-value: t
// eval: (setq large-file-warning-threshold nil)
// End:
