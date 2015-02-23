Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YPp74-0007c9-0m
 for barebox@lists.infradead.org; Mon, 23 Feb 2015 09:15:39 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 23 Feb 2015 10:15:04 +0100
Message-Id: <1424682905-12451-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1424682905-12451-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1424682905-12451-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 2/3] scripts: socfpga: add coccinelle magic
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Use coccinelle to cleanup the imported u-boot code some more.
This will remove:
	- debugging macros (TCL_RPT, BFM_STAGE, ALTERA_ASSERT)
	- empty if/else/for blocks resulting from macro deletion
	- some unused functions (scc_mgr_xxx)

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 scripts/coccinelle/misc/altera_sequencer.cocci | 93 ++++++++++++++++++++++++++
 scripts/socfpga_get_sequencer                  |  3 +
 2 files changed, 96 insertions(+)
 create mode 100644 scripts/coccinelle/misc/altera_sequencer.cocci

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
diff --git a/scripts/socfpga_get_sequencer b/scripts/socfpga_get_sequencer
index de12b35b5d11..5e4eb2d0c46c 100755
--- a/scripts/socfpga_get_sequencer
+++ b/scripts/socfpga_get_sequencer
@@ -46,6 +46,9 @@ copy_source() {
 
 	echo "	Automated readability fixup..."
 	indent -npro -kr -i8 -ts8 -sob -l100 -ss -ncs -cp1 -il0 $tgt
+
+	echo "  Running coccinelle cleanups..."
+	spatch -sp_file scripts/coccinelle/misc/altera_sequencer.cocci -in_place arch/arm/mach-socfpga/include/mach
 }
 
 copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.c arch/arm/mach-socfpga/include/mach/sequencer.c
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
