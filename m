Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsWDd-0003NM-PJ
 for barebox@lists.infradead.org; Wed, 13 May 2015 12:57:02 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 13 May 2015 14:56:23 +0200
Message-Id: <1431521784-27413-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1431521784-27413-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1431521784-27413-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/2] scripts: update socfpga_sequencer importer to Quartus 15.0
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 scripts/coccinelle/misc/altera_sequencer.cocci | 3 ++-
 scripts/socfpga_get_sequencer                  | 8 ++++++++
 scripts/socfpga_sequencer_defines_defaults     | 4 ++++
 3 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/scripts/coccinelle/misc/altera_sequencer.cocci b/scripts/coccinelle/misc/altera_sequencer.cocci
index 9fea239c0c7d..2350e841c0e8 100644
--- a/scripts/coccinelle/misc/altera_sequencer.cocci
+++ b/scripts/coccinelle/misc/altera_sequencer.cocci
@@ -1,7 +1,8 @@
 @r_shadow@
+type T;
 @@
 
-- ...curr_shadow_reg = 0;
+- static T curr_shadow_reg = 0;
 
 @r_out2_delay@
 type T;
diff --git a/scripts/socfpga_get_sequencer b/scripts/socfpga_get_sequencer
index 5e4eb2d0c46c..fb0ea6628b2a 100755
--- a/scripts/socfpga_get_sequencer
+++ b/scripts/socfpga_get_sequencer
@@ -49,6 +49,14 @@ copy_source() {
 
 	echo "  Running coccinelle cleanups..."
 	spatch -sp_file scripts/coccinelle/misc/altera_sequencer.cocci -in_place arch/arm/mach-socfpga/include/mach
+
+	echo "  Cleanup header..."
+	sed -i 's/^static void rw_mgr_mem_calibrate_eye_diag_aid(void);$//g' $tgt
+	sed -i 's/^static void rw_mgr_load_mrs_calib(void);$//g' $tgt
+	sed -i 's/^static void rw_mgr_load_mrs_exec(void);$//g' $tgt
+	sed -i 's/^static void scc_mgr_set_group_dqs_io_and_oct_out2_gradual(uint32_t write_group, uint32_t delay);$//g' $tgt
+	sed -i 's/^static void rw_mgr_incr_vfifo_auto(uint32_t grp);$//g' $tgt
+	sed -i 's/^static void rw_mgr_decr_vfifo_auto(uint32_t grp);$//g' $tgt
 }
 
 copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.c arch/arm/mach-socfpga/include/mach/sequencer.c
diff --git a/scripts/socfpga_sequencer_defines_defaults b/scripts/socfpga_sequencer_defines_defaults
index 19b12b1142bc..3ad1f588f649 100755
--- a/scripts/socfpga_sequencer_defines_defaults
+++ b/scripts/socfpga_sequencer_defines_defaults
@@ -33,6 +33,8 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 #define DYNAMIC_CALIBRATION_MODE 0
 #define DISABLE_GUARANTEED_READ 0
 
+#define AP_MODE 0
+#define ADVANCED_ODT_CONTROL 0
 #define ARRIAVGZ 0
 #define ARRIAV 0
 #define AVL_CLK_FREQ 67
@@ -56,6 +58,8 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 #define ENABLE_INST_ROM_WRITE 1
 #define ENABLE_MARGIN_REPORT_GEN 0
 #define ENABLE_NON_DESTRUCTIVE_CALIB 0
+#define ENABLE_NON_DES_CAL 0
+#define ENABLE_NON_DES_CAL_TEST 0
 #define ENABLE_SUPER_QUICK_CALIBRATION 0
 #define ENABLE_TCL_DEBUG 0
 #define FAKE_CAL_FAIL 0
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
