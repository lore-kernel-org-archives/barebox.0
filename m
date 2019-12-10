Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienbw-0000FS-He
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 22:04:10 +0000
Received: from astat.fritz.box (a89-183-112-47.net-htp.de [89.183.112.47])
 by lynxeye.de (Postfix) with ESMTPA id 2C24DE74217
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2019 23:03:26 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 10 Dec 2019 23:03:19 +0100
Message-Id: <20191210220322.47425-1-dev@lynxeye.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] ARM: zynq: zedboard: split out PS7 init
To: barebox@lists.infradead.org

Move the PS7 inititalization into its own function. This helps
readability and logically splits the FPGA toolchain generated
setup from the reset of the board init.

Also execute the PS7 setup after the lowlevel CPU init, as this
is the regular order used in the Barebox codebase.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index 93e4da96ecd4..b50c36b28869 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -29,11 +29,8 @@
 
 extern char __dtb_zynq_zed_start[];
 
-ENTRY_FUNCTION(start_avnet_zedboard, r0, r1, r2)
+static void avnet_zedboard_ps7_init(void)
 {
-
-	void *fdt = __dtb_zynq_zed_start + get_runtime_offset();
-
 	/* open sesame */
 	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
 
@@ -260,8 +257,16 @@ ENTRY_FUNCTION(start_avnet_zedboard, r0, r1, r2)
 
 	/* lock up. secure, secure */
 	writel(0x0000767B, ZYNQ_SLCR_LOCK);
+}
+
+ENTRY_FUNCTION(start_avnet_zedboard, r0, r1, r2)
+{
+
+	void *fdt = __dtb_zynq_zed_start + get_runtime_offset();
 
 	arm_cpu_lowlevel_init();
 
+	avnet_zedboard_ps7_init();
+
 	barebox_arm_entry(0, SZ_512M, fdt);
 }
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
