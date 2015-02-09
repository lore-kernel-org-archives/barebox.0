Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKltV-0001Ty-BA
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 10:48:48 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  9 Feb 2015 11:47:47 +0100
Message-Id: <1423478871-15276-7-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 06/10] scripts: socfpga sequencer extraction tool
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Markus Pargmann <mpa@pengutronix.de>

This script extracts the socfpga sequencer from a generated u-boot
automagically. The resulting changes of the barebox tree should be
enough to compile with the new sequencer.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/boards/socfpga.rst               |  26 +++--
 scripts/coccinelle/misc/altera_sequencer.cocci |  93 ++++++++++++++++
 scripts/coccinelle/unused/unused.cocci         |  24 +++++
 scripts/socfpga_get_sequencer                  |  82 ++++++++++++++
 scripts/socfpga_sequencer_defines_defaults     | 144 +++++++++++++++++++++++++
 5 files changed, 360 insertions(+), 9 deletions(-)
 create mode 100644 scripts/coccinelle/misc/altera_sequencer.cocci
 create mode 100644 scripts/coccinelle/unused/unused.cocci
 create mode 100755 scripts/socfpga_get_sequencer
 create mode 100755 scripts/socfpga_sequencer_defines_defaults

diff --git a/Documentation/boards/socfpga.rst b/Documentation/boards/socfpga.rst
index 93831c5f290f..70f959b32570 100644
--- a/Documentation/boards/socfpga.rst
+++ b/Documentation/boards/socfpga.rst
@@ -45,15 +45,6 @@ handoff files. As these files are split up in the code base and generated
 explicitely for some specific U-boot code base, some manual work might be
 necessary.
 
-The following files are generic and belong into the
-`arch/arm/mach-socfpga` directory tree:
-
-* sequencer.c (Not for the faint of heart.)
-* sequencer.h
-* system.h
-
-It should normally not be necessary to touch these if barebox is up-to-date.
-
 The boardspecific files for `arch/arm/boards/<yourboard>` are:
 
 * iocsr_config_cyclone5.c
@@ -78,3 +69,20 @@ To update the handoff files, the following procedure is necessary::
  7. Click ``Ok`` than ``Generate``
  8. Copy the files generated in `software/spl_bsp/generated/` to your
     board folder
+
+The following files are generic and belong into the
+`arch/arm/mach-socfpga` directory tree:
+
+* sdram_io.h
+* sequencer.c
+* sequencer.h
+* sequencer_defines.h
+* system.h
+* tclrpt.h
+
+To add these files, run::
+
+  scripts/socfpga_get_sequencer <UBOOT-SRC> scripts/socfpga_sequencer_defines_defaults
+
+where `<UBOOT-SRC>` is the directory where the Altera bsp-editor generated the u-boot
+directory. Refer to the Altera documentation for how to use the bsp-editor.
diff --git a/scripts/coccinelle/misc/altera_sequencer.cocci b/scripts/coccinelle/misc/altera_sequencer.cocci
new file mode 100644
index 000000000000..9fea239c0c7d
--- /dev/null
+++ b/scripts/coccinelle/misc/altera_sequencer.cocci
@@ -0,0 +1,93 @@
+@r_shadow@
+@@
+
+- ...curr_shadow_reg = 0;
+
+@r_out2_delay@
+type T;
+@@
+
+- T scc_mgr_apply_group_dq_out2_delay(...)
+- {
+- ...
+- }
+
+@r_oct_out2@
+type T;
+@@
+- T scc_mgr_apply_group_dqs_io_and_oct_out2(...)
+- {
+- ...
+- }
+
+@r_oct_out2_gradual@
+type T;
+@@
+
+- T scc_mgr_set_group_dqs_io_and_oct_out2_gradual(...)
+- {
+- ...
+- }
+
+@r_eye_diag@
+type T;
+@@
+
+- T rw_mgr_mem_calibrate_eye_diag_aid(...)
+- {
+- ...
+- }
+
+@r_full_test@
+type T;
+@@
+
+- T rw_mgr_mem_calibrate_full_test(...)
+- {
+- ...
+- }
+
+@r_user_init_cal_req@
+@@
+
+- static void user_init_cal_req (...)
+- {
+- ...
+- }
+
+@r_tcl@
+@@
+
+- TCLRPT_SET(...);
+
+@r_bfm@
+@@
+
+- BFM_STAGE(...);
+
+@r_trace@
+@@
+
+- TRACE_FUNC(...);
+
+@r_assert@
+@@
+
+- ALTERA_ASSERT(...);
+
+@r_if@
+@@
+
+- if (...) {}
+
+@r_if_else@
+@@
+
+- if (...) {
+- } else {
+- }
+
+@r_for@
+@@
+
+- for (...;...;...) {}
diff --git a/scripts/coccinelle/unused/unused.cocci b/scripts/coccinelle/unused/unused.cocci
new file mode 100644
index 000000000000..73257b42df5b
--- /dev/null
+++ b/scripts/coccinelle/unused/unused.cocci
@@ -0,0 +1,24 @@
+//
+//  Remove unused variable
+//
+// Target: Linux
+// Copyright:  2012 - LIP6/INRIA
+// License:  Licensed under ISC. See LICENSE or http://www.isc.org/software/license
+// Author: Julia Lawall <Julia.Lawall@lip6.fr>
+// URL: http://coccinelle.lip6.fr/ 
+// URL: http://coccinellery.org/ 
+
+@@
+type T;
+identifier i;
+constant C;
+@@
+
+(
+extern T i;
+|
+- T i;
+  <+... when != i
+- i = C;
+  ...+>
+)
diff --git a/scripts/socfpga_get_sequencer b/scripts/socfpga_get_sequencer
new file mode 100755
index 000000000000..a727b36ba020
--- /dev/null
+++ b/scripts/socfpga_get_sequencer
@@ -0,0 +1,82 @@
+#!/bin/bash
+
+if [ "$#" -lt "2" ]
+then
+	echo "USAGE: $0 <UBOOT-SRC> <SEQUENCER_DEFINES>"
+	exit 1
+fi
+
+ubootsrc=$1
+sequencer_defines=$2
+bareboxsrc=.
+
+cd ${bareboxsrc}
+
+copy_source() {
+	local src
+	local tgt
+	src=$1
+	tgt=$2
+
+	echo "Merging source code $src to $tgt"
+
+	cp $src $tgt
+
+	unifdef -f ${sequencer_defines} $tgt -o $tgt
+
+	echo "	Fixing extern/static keywords..."
+	# Statify all global variables with missing static keyword
+	sed -i 's/^\(extern \|static \|\)\([^*#\/ 	][^(]* [^( ]*\((.*).*$\|=.*;.*$\)\)/static \2/g' $tgt
+	sed -i 's/^extern /static /g' $tgt
+
+	echo "	Translating altera int types..."
+	# Replace altera types
+	sed -i 's/alt_u32/uint32_t/g' $tgt
+	sed -i 's/alt_u16/uint16_t/g' $tgt
+	sed -i 's/alt_16/int16_t/g' $tgt
+	sed -i 's/alt_32/int32_t/g' $tgt
+	sed -i 's/alt_u8/uint8_t/g' $tgt
+	sed -i 's/alt_8/int8_t/g' $tgt
+	sed -i 's/#include "alt_types.h"//g' $tgt
+
+	echo "	Fixing include pathes..."
+	# Fix include pathes
+	sed -i 's/#include <sdram.h>/#include <mach\/sdram.h>/g' $tgt
+	sed -i 's/#include "sequencer_auto.h"//g' $tgt
+
+	echo "	Automated readability fixup..."
+	indent -npro -kr -i8 -ts8 -sob -l100 -ss -ncs -cp1 -il0 $tgt
+
+	echo "  Running coccinelle cleanups..."
+	spatch -sp_file scripts/coccinelle/misc/altera_sequencer.cocci -in_place arch/arm/mach-socfpga/include/mach
+	spatch -sp_file scripts/coccinelle/unused/unused.cocci -in_place arch/arm/mach-socfpga/include/mach
+}
+
+copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.c arch/arm/mach-socfpga/include/mach/sequencer.c
+sed -i 's/static int sdram_calibration(void)/static int socfpga_mem_calibration(void)/g' arch/arm/mach-socfpga/include/mach/sequencer.c
+
+cat <<'EOF' > arch/arm/mach-socfpga/include/mach/sequencer_defines.h
+#define TINIT_CNTR1_VAL 32
+#define TINIT_CNTR2_VAL 32
+#define TINIT_CNTR0_VAL 99
+#define TRESET_CNTR1_VAL 99
+#define TRESET_CNTR2_VAL 10
+#define TRESET_CNTR0_VAL 99
+EOF
+
+copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.h arch/arm/mach-socfpga/include/mach/sequencer.h
+copy_source ${ubootsrc}/board/altera/socfpga/sdram/tclrpt.h arch/arm/mach-socfpga/include/mach/tclrpt.h
+copy_source ${ubootsrc}/board/altera/socfpga/sdram/sdram_io.h arch/arm/mach-socfpga/include/mach/sdram_io.h
+cat <<'EOF' >> arch/arm/mach-socfpga/include/mach/sdram_io.h
+	#define write_register(BASE, OFFSET, DATA) \
+		writel(DATA, ((BASE) + (OFFSET)))
+	#define read_register(BASE, OFFSET) \
+		readl((BASE) + (OFFSET))
+	#define HPS_SDR_BASE 0xffc20000
+EOF
+copy_source ${ubootsrc}/board/altera/socfpga/sdram/system.h arch/arm/mach-socfpga/include/mach/system.h
+
+#unifdef -f ${sequencer_defines} ${ubootsrc}/board/altera/socfpga/sdram/tclrpt.c -o arch/arm/mach-socfpga/include/mach/tclrpt.c
+
+echo "DONE"
+
diff --git a/scripts/socfpga_sequencer_defines_defaults b/scripts/socfpga_sequencer_defines_defaults
new file mode 100755
index 000000000000..19b12b1142bc
--- /dev/null
+++ b/scripts/socfpga_sequencer_defines_defaults
@@ -0,0 +1,144 @@
+/*
+Copyright (c) 2012, Altera Corporation
+All rights reserved.
+
+SPDX-License-Identifier:    BSD-3-Clause
+
+Redistribution and use in source and binary forms, with or without
+modification, are permitted provided that the following conditions are met:
+    * Redistributions of source code must retain the above copyright
+      notice, this list of conditions and the following disclaimer.
+    * Redistributions in binary form must reproduce the above copyright
+      notice, this list of conditions and the following disclaimer in the
+      documentation and/or other materials provided with the distribution.
+    * Neither the name of Altera Corporation nor the
+      names of its contributors may be used to endorse or promote products
+      derived from this software without specific prior written permission.
+
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+*/
+
+#define ENABLE_SWEEP_ALL_GROUPS 0
+#define ENABLE_DQSEN_SWEEP 0
+#define STATIC_QUICK_CALIBRATION 0
+#define DYNAMIC_CALIBRATION_MODE 0
+#define DISABLE_GUARANTEED_READ 0
+
+#define ARRIAVGZ 0
+#define ARRIAV 0
+#define AVL_CLK_FREQ 67
+#define BFM_MODE 0
+#define BURST2 0
+#define CALIBRATE_BIT_SLIPS 0
+#define CALIB_LFIFO_OFFSET 8
+#define CALIB_VFIFO_OFFSET 6
+#define CYCLONEV 1
+#define DDR2 0
+#define DDR3 1
+#define DDRX 1
+#define DM_PINS_ENABLED 1
+#define ENABLE_ASSERT 0
+#define ENABLE_PRINTF_LOG 0
+#define ENABLE_BRINGUP_DEBUGGING 0
+#define ENABLE_DELAY_CHAIN_WRITE 0
+#define ENABLE_DQS_IN_CENTERING 1
+#define ENABLE_DQS_OUT_CENTERING 0
+#define ENABLE_EXPORT_SEQ_DEBUG_BRIDGE 0
+#define ENABLE_INST_ROM_WRITE 1
+#define ENABLE_MARGIN_REPORT_GEN 0
+#define ENABLE_NON_DESTRUCTIVE_CALIB 0
+#define ENABLE_SUPER_QUICK_CALIBRATION 0
+#define ENABLE_TCL_DEBUG 0
+#define FAKE_CAL_FAIL 0
+#define FULL_RATE 1
+#define GUARANTEED_READ_BRINGUP_TEST 0
+#define HALF_RATE 0
+#define HARD_PHY 1
+#define HARD_VFIFO 1
+#define HCX_COMPAT_MODE 0
+#define HHP_HPS_SIMULATION 0
+#define HHP_HPS_VERIFICATION 0
+#define HHP_HPS 1
+#define HPS_HW 1
+#define HR_DDIO_OUT_HAS_THREE_REGS 0
+#define IO_DELAY_PER_DCHAIN_TAP 25
+#define IO_DELAY_PER_DQS_EN_DCHAIN_TAP 25
+#define IO_DELAY_PER_OPA_TAP 312
+#define IO_DLL_CHAIN_LENGTH 8
+#define IO_DM_OUT_RESERVE 0
+#define IO_DQDQS_OUT_PHASE_MAX 0
+#define IO_DQS_EN_DELAY_MAX 31
+#define IO_DQS_EN_DELAY_OFFSET 0
+#define IO_DQS_EN_PHASE_MAX 7
+#define IO_DQS_IN_DELAY_MAX 31
+#define IO_DQS_IN_RESERVE 4
+#define IO_DQS_OUT_RESERVE 4
+#define IO_DQ_OUT_RESERVE 0
+#define IO_IO_IN_DELAY_MAX 31
+#define IO_IO_OUT1_DELAY_MAX 31
+#define IO_IO_OUT2_DELAY_MAX 0
+#define IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS 0
+#define LPDDR1 0
+#define LPDDR2 0
+#define LRDIMM 0
+#define M10_DQ_WIDTH_8 0
+#define M10_DQ_WIDTH_16 0
+#define M10_DQ_WIDTH_24 0
+#define MARGIN_VARIATION_TEST 0
+#define MAX_LATENCY_COUNT_WIDTH 5
+#define MEM_ADDR_WIDTH 13
+#define MRS_MIRROR_PING_PONG_ATSO 0
+#define MULTIPLE_AFI_WLAT 0
+#define NUM_SHADOW_REGS 1
+#define QDRII 0
+#define QUARTER_RATE 0
+#define RDIMM 0
+#define READ_AFTER_WRITE_CALIBRATION 1
+#define READ_VALID_FIFO_SIZE 16
+#define REG_FILE_INIT_SEQ_SIGNATURE 0x5555048c
+#define RLDRAM3 0
+#define RLDRAMII 0
+#define RLDRAMX 0
+#define RUNTIME_CAL_REPORT 0
+#define RW_MGR_MEM_ADDRESS_MIRRORING 0
+#define RW_MGR_MEM_ADDRESS_WIDTH 15
+#define RW_MGR_MEM_BANK_WIDTH 3
+#define RW_MGR_MEM_CHIP_SELECT_WIDTH 1
+#define RW_MGR_MEM_CLK_EN_WIDTH 1
+#define RW_MGR_MEM_CONTROL_WIDTH 1
+#define RW_MGR_MEM_DATA_MASK_WIDTH 4
+#define RW_MGR_MEM_DATA_WIDTH 32
+#define RW_MGR_MEM_DQ_PER_READ_DQS 8
+#define RW_MGR_MEM_DQ_PER_WRITE_DQS 8
+#define RW_MGR_MEM_IF_READ_DQS_WIDTH 4
+#define RW_MGR_MEM_IF_WRITE_DQS_WIDTH 4
+#define RW_MGR_MEM_NUMBER_OF_CS_PER_DIMM 1
+#define RW_MGR_MEM_NUMBER_OF_RANKS 1
+#define RW_MGR_MEM_ODT_WIDTH 1
+#define RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS 1
+#define RW_MGR_MEM_VIRTUAL_GROUPS_PER_WRITE_DQS 1
+#define RW_MGR_MR0_BL 1
+#define RW_MGR_MR0_CAS_LATENCY 3
+#define RW_MGR_TRUE_MEM_DATA_MASK_WIDTH 4
+#define RW_MGR_WRITE_TO_DEBUG_READ 1.0
+#define SKEW_CALIBRATION 0
+#define STATIC_FULL_CALIBRATION 1
+#define STATIC_SIM_FILESET 0
+#define STATIC_SKIP_MEM_INIT 0
+#define STRATIXV 0
+#define TRACKING_ERROR_TEST 0
+#define TRACKING_WATCH_TEST 0
+#define TW0_CAPTURE_CLOCKS 0
+#define USE_DQS_TRACKING 1
+#define USE_SHADOW_REGS 0
+#define USE_USER_RDIMM_VALUE 0
+
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
