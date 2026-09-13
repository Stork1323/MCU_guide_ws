`timescale 1ns/1ps

module CPU #(
)
(
//---------------------------------------------------------------
// CLK/RST 
//---------------------------------------------------------------
/*AUTOINPUT("^CLK\|^RST")*/
// Beginning of automatic inputs (from unused autoinst inputs)
input logic		CLK_I,			// To u_ibex_top of ibex_top.v, ...
input logic		RST_N_I,		// To u_ibex_top of ibex_top.v, ...
// End of automatics

//---------------------------------------------------------------
// Shadow core instruction interface 
//---------------------------------------------------------------
/*AUTOOUTPUT("^INSTR_.*_SHADOW")*/
// Beginning of automatic outputs (from unused autoinst outputs)
output logic [31:0]	INSTR_ADDR_SHADOW_O,	// From u_ibex_top of ibex_top.v
output logic		INSTR_REQ_SHADOW_O,	// From u_ibex_top of ibex_top.v
// End of automatics

//---------------------------------------------------------------
// Instruction memory interface 
//---------------------------------------------------------------
/*AUTOINPUT("^INSTR_")*/
// Beginning of automatic inputs (from unused autoinst inputs)
input logic		INSTR_ERR_I,		// To u_ibex_top of ibex_top.v
input logic		INSTR_GNT_I,		// To u_ibex_top of ibex_top.v
input logic [31:0]	INSTR_RDATA_I,		// To u_ibex_top of ibex_top.v
input logic [6:0]	INSTR_RDATA_INTG_I,	// To u_ibex_top of ibex_top.v
input logic		INSTR_RVALID_I,		// To u_ibex_top of ibex_top.v
// End of automatics
/*AUTOOUTPUT("^INSTR_")*/
// Beginning of automatic outputs (from unused autoinst outputs)
output logic [31:0]	INSTR_ADDR_O,		// From u_ibex_top of ibex_top.v
output logic		INSTR_REQ_O,		// From u_ibex_top of ibex_top.v
// End of automatics

//---------------------------------------------------------------
// Shadow core data interface 
//---------------------------------------------------------------
/*AUTOOUTPUT("^DATA_.*_SHADOW")*/
// Beginning of automatic outputs (from unused autoinst outputs)
output logic [31:0]	DATA_ADDR_SHADOW_O,	// From u_ibex_top of ibex_top.v
output logic [3:0]	DATA_BE_SHADOW_O,	// From u_ibex_top of ibex_top.v
output logic		DATA_REQ_SHADOW_O,	// From u_ibex_top of ibex_top.v
output logic [6:0]	DATA_WDATA_INTG_SHADOW_O,// From u_ibex_top of ibex_top.v
output logic [31:0]	DATA_WDATA_SHADOW_O,	// From u_ibex_top of ibex_top.v
output logic		DATA_WE_SHADOW_O,	// From u_ibex_top of ibex_top.v
// End of automatics

//---------------------------------------------------------------
// Data memory interface 
//---------------------------------------------------------------
/*AUTOINPUT("^DATA_")*/
// Beginning of automatic inputs (from unused autoinst inputs)
input logic		DATA_ERR_I,		// To u_ibex_top of ibex_top.v
input logic		DATA_GNT_I,		// To u_ibex_top of ibex_top.v
input logic [31:0]	DATA_RDATA_I,		// To u_ibex_top of ibex_top.v
input logic [6:0]	DATA_RDATA_INTG_I,	// To u_ibex_top of ibex_top.v
input logic		DATA_RVALID_I,		// To u_ibex_top of ibex_top.v
input logic		DATA_TAG_I,		// To u_ibex_top of ibex_top.v
// End of automatics
/*AUTOOUTPUT("^DATA_")*/
// Beginning of automatic outputs (from unused autoinst outputs)
output logic [31:0]	DATA_ADDR_O,		// From u_ibex_top of ibex_top.v
output logic [3:0]	DATA_BE_O,		// From u_ibex_top of ibex_top.v
output logic		DATA_REQ_O,		// From u_ibex_top of ibex_top.v
output logic		DATA_TAG_O,		// From u_ibex_top of ibex_top.v
output logic [6:0]	DATA_WDATA_INTG_O,	// From u_ibex_top of ibex_top.v
output logic [31:0]	DATA_WDATA_O,		// From u_ibex_top of ibex_top.v
output logic		DATA_WE_O,		// From u_ibex_top of ibex_top.v
// End of automatics

//---------------------------------------------------------------
// TRVK revocation bitmap read interface 
//---------------------------------------------------------------
/*AUTOINPUT("^TRVK_")*/
// Beginning of automatic inputs (from unused autoinst inputs)
input logic [31:0]	TRVK_HEAP_BASE_ADDR_I,	// To u_ibex_top of ibex_top.v
input logic		TRVK_REVBM_ERR_I,	// To u_ibex_top of ibex_top.v
input logic		TRVK_REVBM_GNT_I,	// To u_ibex_top of ibex_top.v
input logic [31:0]	TRVK_REVBM_RDATA_I,	// To u_ibex_top of ibex_top.v
input logic [6:0]	TRVK_REVBM_RDATA_INTG_I,// To u_ibex_top of ibex_top.v
input logic		TRVK_REVBM_RVALID_I,	// To u_ibex_top of ibex_top.v
// End of automatics
/*AUTOOUTPUT("^TRVK_")*/
// Beginning of automatic outputs (from unused autoinst outputs)
output logic [31:0]	TRVK_REVBM_ADDR_O,	// From u_ibex_top of ibex_top.v
output logic		TRVK_REVBM_REQ_O,	// From u_ibex_top of ibex_top.v
// End of automatics

//---------------------------------------------------------------
// Interrupt 
//---------------------------------------------------------------
/*AUTOINPUT("^INT_")*/
// Beginning of automatic inputs (from unused autoinst inputs)
input logic		INT_EXTERNAL_I,		// To u_ibex_top of ibex_top.v
input logic [14:0]	INT_FAST_I,		// To u_ibex_top of ibex_top.v
input logic		INT_NM_I,		// To u_ibex_top of ibex_top.v
input logic		INT_SOFTWARE_I,		// To u_ibex_top of ibex_top.v
input logic		INT_TIMER_I,		// To u_ibex_top of ibex_top.v
// End of automatics
/*AUTOOUTPUT("^INT_")*/

//---------------------------------------------------------------
// Scrambling Interface 
//---------------------------------------------------------------
/*AUTOINPUT("^SCRAMBLE_")*/
// Beginning of automatic inputs (from unused autoinst inputs)
input logic [127:0] SCRAMBLE_KEY_I,// To u_ibex_top of ibex_top.v
input logic		SCRAMBLE_KEY_VALID_I,	// To u_ibex_top of ibex_top.v
input logic [63:0] SCRAMBLE_NONCE_I,// To u_ibex_top of ibex_top.v
// End of automatics
/*AUTOOUTPUT("^SCRAMBLE_")*/
// Beginning of automatic outputs (from unused autoinst outputs)
output logic		SCRAMBLE_REQ_O,		// From u_ibex_top of ibex_top.v
// End of automatics

//---------------------------------------------------------------
// Others 
//---------------------------------------------------------------
/*AUTOINOUT*/
/*AUTOINPUT*/
// Beginning of automatic inputs (from unused autoinst inputs)
input logic [31:0]	BOOT_ADDR_I,		// To u_ibex_top of ibex_top.v
input logic		DEBUG_REQ_I,		// To u_ibex_top of ibex_top.v
input logic [31:0]	HART_ID_I,		// To u_ibex_top of ibex_top.v, ...
input			RAM_CFG_ICACHE_DATA_I,	// To u_ibex_top of ibex_top.v
input			RAM_CFG_ICACHE_TAG_I,	// To u_ibex_top of ibex_top.v
input logic		SCAN_RST_NI,		// To u_ibex_top of ibex_top.v
input logic		TEST_EN_I,		// To u_ibex_top of ibex_top.v
// End of automatics
/*AUTOOUTPUT*/
// Beginning of automatic outputs (from unused autoinst outputs)
output logic		ALERT_MAJOR_BUS_O,	// From u_ibex_top of ibex_top.v
output logic		ALERT_MAJOR_INTERNAL_O,	// From u_ibex_top of ibex_top.v
output logic		ALERT_MINOR_O,		// From u_ibex_top of ibex_top.v
output logic		CORE_SLEEP_O,		// From u_ibex_top of ibex_top.v
output logic		DOUBLE_FAULT_SEEN_O,	// From u_ibex_top of ibex_top.v
output			RAM_CFG_ICACHE_DATA_O,	// From u_ibex_top of ibex_top.v
output			RAM_CFG_ICACHE_TAG_O	// From u_ibex_top of ibex_top.v
// End of automatics
);

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
logic			rvfi_ext_debug_mode;	// From u_ibex_top of ibex_top.v
logic			rvfi_ext_debug_req;	// From u_ibex_top of ibex_top.v
logic [15:0]		rvfi_ext_expanded_insn;	// From u_ibex_top of ibex_top.v
logic			rvfi_ext_expanded_insn_last;// From u_ibex_top of ibex_top.v
logic			rvfi_ext_expanded_insn_valid;// From u_ibex_top of ibex_top.v
logic			rvfi_ext_ic_scr_key_valid;// From u_ibex_top of ibex_top.v
logic			rvfi_ext_irq_valid;	// From u_ibex_top of ibex_top.v
logic [63:0]		rvfi_ext_mcycle;	// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_ext_mhpmcounters;	// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_ext_mhpmcountersh;	// From u_ibex_top of ibex_top.v
logic			rvfi_ext_nmi;		// From u_ibex_top of ibex_top.v
logic			rvfi_ext_nmi_int;	// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_ext_post_mip;	// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_ext_pre_mip;	// From u_ibex_top of ibex_top.v
logic			rvfi_ext_rf_wr_suppress;// From u_ibex_top of ibex_top.v
logic			rvfi_halt;		// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_insn;		// From u_ibex_top of ibex_top.v
logic			rvfi_intr;		// From u_ibex_top of ibex_top.v
logic [1:0]		rvfi_ixl;		// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_mem_addr;		// From u_ibex_top of ibex_top.v
logic			rvfi_mem_is_cap;	// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_mem_rdata;		// From u_ibex_top of ibex_top.v
logic [3:0]		rvfi_mem_rmask;		// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_mem_wdata;		// From u_ibex_top of ibex_top.v
logic [3:0]		rvfi_mem_wmask;		// From u_ibex_top of ibex_top.v
logic [1:0]		rvfi_mode;		// From u_ibex_top of ibex_top.v
logic [63:0]		rvfi_order;		// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_pc_rdata;		// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_pc_wdata;		// From u_ibex_top of ibex_top.v
logic [4:0]		rvfi_rd_addr;		// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_rd_wdata;		// From u_ibex_top of ibex_top.v
logic [4:0]		rvfi_rs1_addr;		// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_rs1_rdata;		// From u_ibex_top of ibex_top.v
logic [4:0]		rvfi_rs2_addr;		// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_rs2_rdata;		// From u_ibex_top of ibex_top.v
logic [4:0]		rvfi_rs3_addr;		// From u_ibex_top of ibex_top.v
logic [31:0]		rvfi_rs3_rdata;		// From u_ibex_top of ibex_top.v
logic			rvfi_trap;		// From u_ibex_top of ibex_top.v
logic			rvfi_valid;		// From u_ibex_top of ibex_top.v
// End of automatics

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
ibex_top u_ibex_top(/*AUTOINST*/
		    // Interfaces
		    .BaseIsa		(BASEISA),		 // Templated
		    .PMPRstCfg		(PMPRSTCFG),		 // Templated
		    .PMPRstMsecCfg	(PMPRSTMSECCFG),	 // Templated
		    .RV32M		(RV32M),		 // Templated
		    .RV32B		(RV32B),		 // Templated
		    .RV32ZC		(RV32ZC),		 // Templated
		    .RegFile		(REGFILE),		 // Templated
		    .RndCnstLfsrSeed	(RNDCNSTLFSRSEED),	 // Templated
		    .RndCnstLfsrPerm	(RNDCNSTLFSRPERM),	 // Templated
		    .cheriot_enable_i	(CHERIOT_ENABLE_I),	 // Templated
		    .crash_dump_o	(CRASH_DUMP_O),		 // Templated
		    .rvfi_rs1_rcap	(rvfi_rs1_rcap),	 // Templated
		    .rvfi_rs2_rcap	(rvfi_rs2_rcap),	 // Templated
		    .rvfi_rd_wcap	(rvfi_rd_wcap),		 // Templated
		    .rvfi_mem_rcap	(rvfi_mem_rcap),	 // Templated
		    .rvfi_mem_wcap	(rvfi_mem_wcap),	 // Templated
		    .fetch_enable_i	(FETCH_ENABLE_I),	 // Templated
		    .mcounteren_writable_i(MCOUNTEREN_WRITABLE_I), // Templated
		    .lockstep_cmp_en_o	(LOCKSTEP_CMP_EN_O),	 // Templated
		    // Outputs
		    .prim_ram_1p_pkg::ram_1p_cfg_rsp_t(PRIM_RAM_1P_PKG::RAM_1P_CFG_RSP_T), // Templated
		    .ram_cfg_icache_tag_o(RAM_CFG_ICACHE_TAG_O), // Templated
		    .ram_cfg_icache_data_o(RAM_CFG_ICACHE_DATA_O), // Templated
		    .instr_req_o	(INSTR_REQ_O),		 // Templated
		    .instr_addr_o	(INSTR_ADDR_O[31:0]),	 // Templated
		    .data_req_o		(DATA_REQ_O),		 // Templated
		    .data_we_o		(DATA_WE_O),		 // Templated
		    .data_be_o		(DATA_BE_O[3:0]),	 // Templated
		    .data_addr_o	(DATA_ADDR_O[31:0]),	 // Templated
		    .data_wdata_o	(DATA_WDATA_O[31:0]),	 // Templated
		    .data_wdata_intg_o	(DATA_WDATA_INTG_O[6:0]), // Templated
		    .data_tag_o		(DATA_TAG_O),		 // Templated
		    .trvk_revbm_req_o	(TRVK_REVBM_REQ_O),	 // Templated
		    .trvk_revbm_addr_o	(TRVK_REVBM_ADDR_O[31:0]), // Templated
		    .scramble_req_o	(SCRAMBLE_REQ_O),	 // Templated
		    .double_fault_seen_o(DOUBLE_FAULT_SEEN_O),	 // Templated
		    .rvfi_valid		(rvfi_valid),		 // Templated
		    .rvfi_order		(rvfi_order[63:0]),	 // Templated
		    .rvfi_insn		(rvfi_insn[31:0]),	 // Templated
		    .rvfi_trap		(rvfi_trap),		 // Templated
		    .rvfi_halt		(rvfi_halt),		 // Templated
		    .rvfi_intr		(rvfi_intr),		 // Templated
		    .rvfi_mode		(rvfi_mode[1:0]),	 // Templated
		    .rvfi_ixl		(rvfi_ixl[1:0]),	 // Templated
		    .rvfi_rs1_addr	(rvfi_rs1_addr[4:0]),	 // Templated
		    .rvfi_rs2_addr	(rvfi_rs2_addr[4:0]),	 // Templated
		    .rvfi_rs3_addr	(rvfi_rs3_addr[4:0]),	 // Templated
		    .rvfi_rs1_rdata	(rvfi_rs1_rdata[31:0]),	 // Templated
		    .rvfi_rs2_rdata	(rvfi_rs2_rdata[31:0]),	 // Templated
		    .rvfi_rs3_rdata	(rvfi_rs3_rdata[31:0]),	 // Templated
		    .rvfi_rd_addr	(rvfi_rd_addr[4:0]),	 // Templated
		    .rvfi_rd_wdata	(rvfi_rd_wdata[31:0]),	 // Templated
		    .rvfi_pc_rdata	(rvfi_pc_rdata[31:0]),	 // Templated
		    .rvfi_pc_wdata	(rvfi_pc_wdata[31:0]),	 // Templated
		    .rvfi_mem_addr	(rvfi_mem_addr[31:0]),	 // Templated
		    .rvfi_mem_rmask	(rvfi_mem_rmask[3:0]),	 // Templated
		    .rvfi_mem_wmask	(rvfi_mem_wmask[3:0]),	 // Templated
		    .rvfi_mem_rdata	(rvfi_mem_rdata[31:0]),	 // Templated
		    .rvfi_mem_wdata	(rvfi_mem_wdata[31:0]),	 // Templated
		    .rvfi_mem_is_cap	(rvfi_mem_is_cap),	 // Templated
		    .rvfi_ext_pre_mip	(rvfi_ext_pre_mip[31:0]), // Templated
		    .rvfi_ext_post_mip	(rvfi_ext_post_mip[31:0]), // Templated
		    .rvfi_ext_nmi	(rvfi_ext_nmi),		 // Templated
		    .rvfi_ext_nmi_int	(rvfi_ext_nmi_int),	 // Templated
		    .rvfi_ext_debug_req	(rvfi_ext_debug_req),	 // Templated
		    .rvfi_ext_debug_mode(rvfi_ext_debug_mode),	 // Templated
		    .rvfi_ext_rf_wr_suppress(rvfi_ext_rf_wr_suppress), // Templated
		    .rvfi_ext_mcycle	(rvfi_ext_mcycle[63:0]), // Templated
		    .rvfi_ext_mhpmcounters(rvfi_ext_mhpmcounters[31:0]), // Templated
		    .rvfi_ext_mhpmcountersh(rvfi_ext_mhpmcountersh[31:0]), // Templated
		    .rvfi_ext_ic_scr_key_valid(rvfi_ext_ic_scr_key_valid), // Templated
		    .rvfi_ext_irq_valid	(rvfi_ext_irq_valid),	 // Templated
		    .rvfi_ext_expanded_insn_valid(rvfi_ext_expanded_insn_valid), // Templated
		    .rvfi_ext_expanded_insn(rvfi_ext_expanded_insn[15:0]), // Templated
		    .rvfi_ext_expanded_insn_last(rvfi_ext_expanded_insn_last), // Templated
		    .alert_minor_o	(ALERT_MINOR_O),	 // Templated
		    .alert_major_internal_o(ALERT_MAJOR_INTERNAL_O), // Templated
		    .alert_major_bus_o	(ALERT_MAJOR_BUS_O),	 // Templated
		    .core_sleep_o	(CORE_SLEEP_O),		 // Templated
		    .data_req_shadow_o	(DATA_REQ_SHADOW_O),	 // Templated
		    .data_we_shadow_o	(DATA_WE_SHADOW_O),	 // Templated
		    .data_be_shadow_o	(DATA_BE_SHADOW_O[3:0]), // Templated
		    .data_addr_shadow_o	(DATA_ADDR_SHADOW_O[31:0]), // Templated
		    .data_wdata_shadow_o(DATA_WDATA_SHADOW_O[31:0]), // Templated
		    .data_wdata_intg_shadow_o(DATA_WDATA_INTG_SHADOW_O[6:0]), // Templated
		    .instr_req_shadow_o	(INSTR_REQ_SHADOW_O),	 // Templated
		    .instr_addr_shadow_o(INSTR_ADDR_SHADOW_O[31:0]), // Templated
		    // Inputs
		    .clk_i		(CLK_I),		 // Templated
		    .rst_ni		(RST_N_I),		 // Templated
		    .test_en_i		(TEST_EN_I),		 // Templated
		    .prim_ram_1p_pkg::ram_1p_cfg_req_t(PRIM_RAM_1P_PKG::RAM_1P_CFG_REQ_T), // Templated
		    .ram_cfg_icache_tag_i(RAM_CFG_ICACHE_TAG_I), // Templated
		    .ram_cfg_icache_data_i(RAM_CFG_ICACHE_DATA_I), // Templated
		    .hart_id_i		(HART_ID_I[31:0]),	 // Templated
		    .boot_addr_i	(BOOT_ADDR_I[31:0]),	 // Templated
		    .trvk_heap_base_addr_i(TRVK_HEAP_BASE_ADDR_I[31:0]), // Templated
		    .instr_gnt_i	(INSTR_GNT_I),		 // Templated
		    .instr_rvalid_i	(INSTR_RVALID_I),	 // Templated
		    .instr_rdata_i	(INSTR_RDATA_I[31:0]),	 // Templated
		    .instr_rdata_intg_i	(INSTR_RDATA_INTG_I[6:0]), // Templated
		    .instr_err_i	(INSTR_ERR_I),		 // Templated
		    .data_gnt_i		(DATA_GNT_I),		 // Templated
		    .data_rvalid_i	(DATA_RVALID_I),	 // Templated
		    .data_rdata_i	(DATA_RDATA_I[31:0]),	 // Templated
		    .data_rdata_intg_i	(DATA_RDATA_INTG_I[6:0]), // Templated
		    .data_tag_i		(DATA_TAG_I),		 // Templated
		    .data_err_i		(DATA_ERR_I),		 // Templated
		    .trvk_revbm_gnt_i	(TRVK_REVBM_GNT_I),	 // Templated
		    .trvk_revbm_rvalid_i(TRVK_REVBM_RVALID_I),	 // Templated
		    .trvk_revbm_rdata_i	(TRVK_REVBM_RDATA_I[31:0]), // Templated
		    .trvk_revbm_rdata_intg_i(TRVK_REVBM_RDATA_INTG_I[6:0]), // Templated
		    .trvk_revbm_err_i	(TRVK_REVBM_ERR_I),	 // Templated
		    .irq_software_i	(INT_SOFTWARE_I),	 // Templated
		    .irq_timer_i	(INT_TIMER_I),		 // Templated
		    .irq_external_i	(INT_EXTERNAL_I),	 // Templated
		    .irq_fast_i		(INT_FAST_I[14:0]),	 // Templated
		    .irq_nm_i		(INT_NM_I),		 // Templated
		    .scramble_key_valid_i(SCRAMBLE_KEY_VALID_I), // Templated
		    .scramble_key_i	(SCRAMBLE_KEY_I[127:0]), // Templated
		    .scramble_nonce_i	(SCRAMBLE_NONCE_I[63:0]), // Templated
		    .debug_req_i	(DEBUG_REQ_I),		 // Templated
		    .scan_rst_ni	(SCAN_RST_NI));		 // Templated

/* ibex_tracer AUTO_TEMPLATE(
      .clk_i (@"(upcase vl-name)"),
      .rst_ni (RST_N_I),
      .rvfi_\(.*\) (rvfi_\1[]),
      .\(.*\) (@"(upcase (symbol-name '\1))"[]),
);
*/
ibex_tracer u_ibex_tracer(/*AUTOINST*/
			  // Interfaces
			  .cheriot_enable_i	(CHERIOT_ENABLE_I), // Templated
			  .rvfi_rs1_rcap	(rvfi_rs1_rcap), // Templated
			  .rvfi_rs2_rcap	(rvfi_rs2_rcap), // Templated
			  .rvfi_rd_wcap		(rvfi_rd_wcap),	 // Templated
			  .rvfi_mem_rcap	(rvfi_mem_rcap), // Templated
			  .rvfi_mem_wcap	(rvfi_mem_wcap), // Templated
			  // Inputs
			  .clk_i		(CLK_I),	 // Templated
			  .rst_ni		(RST_N_I),	 // Templated
			  .hart_id_i		(HART_ID_I[31:0]), // Templated
			  .rvfi_valid		(rvfi_valid),	 // Templated
			  .rvfi_order		(rvfi_order[63:0]), // Templated
			  .rvfi_insn		(rvfi_insn[31:0]), // Templated
			  .rvfi_trap		(rvfi_trap),	 // Templated
			  .rvfi_halt		(rvfi_halt),	 // Templated
			  .rvfi_intr		(rvfi_intr),	 // Templated
			  .rvfi_mode		(rvfi_mode[1:0]), // Templated
			  .rvfi_ixl		(rvfi_ixl[1:0]), // Templated
			  .rvfi_rs1_addr	(rvfi_rs1_addr[4:0]), // Templated
			  .rvfi_rs2_addr	(rvfi_rs2_addr[4:0]), // Templated
			  .rvfi_rs3_addr	(rvfi_rs3_addr[4:0]), // Templated
			  .rvfi_rs1_rdata	(rvfi_rs1_rdata[31:0]), // Templated
			  .rvfi_rs2_rdata	(rvfi_rs2_rdata[31:0]), // Templated
			  .rvfi_rs3_rdata	(rvfi_rs3_rdata[31:0]), // Templated
			  .rvfi_rd_addr		(rvfi_rd_addr[4:0]), // Templated
			  .rvfi_rd_wdata	(rvfi_rd_wdata[31:0]), // Templated
			  .rvfi_pc_rdata	(rvfi_pc_rdata[31:0]), // Templated
			  .rvfi_pc_wdata	(rvfi_pc_wdata[31:0]), // Templated
			  .rvfi_mem_addr	(rvfi_mem_addr[31:0]), // Templated
			  .rvfi_mem_rmask	(rvfi_mem_rmask[3:0]), // Templated
			  .rvfi_mem_wmask	(rvfi_mem_wmask[3:0]), // Templated
			  .rvfi_mem_rdata	(rvfi_mem_rdata[31:0]), // Templated
			  .rvfi_mem_wdata	(rvfi_mem_wdata[31:0]), // Templated
			  .rvfi_mem_is_cap	(rvfi_mem_is_cap), // Templated
			  .rvfi_ext_expanded_insn_valid(rvfi_ext_expanded_insn_valid), // Templated
			  .rvfi_ext_expanded_insn(rvfi_ext_expanded_insn[15:0])); // Templated

endmodule
// Local Variables:
// verilog-library-flags:("-f filelist_emacs.f")
// verilog-library-extensions:(".v" ".sv")
// verilog-auto-star-expand: nil
// verilog-auto-inst-param-value: t
// eval: (setq large-file-warning-threshold nil)
// End:
