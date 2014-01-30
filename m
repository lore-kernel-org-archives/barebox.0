Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8o7H-0007oR-LZ
 for barebox@lists.infradead.org; Thu, 30 Jan 2014 09:41:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 Jan 2014 10:40:28 +0100
Message-Id: <1391074829-25877-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX: edmqmx6: Copy fdt to SDRAM
To: barebox@lists.infradead.org

barebox only recognizes boarddata as dtb if it is inside SDRAM, so
copy the dtb there if necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/dmo-mx6-realq7/lowlevel.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/dmo-mx6-realq7/lowlevel.c b/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
index f47575e..7f6168c 100644
--- a/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
+++ b/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
@@ -15,6 +15,7 @@
 #include <common.h>
 #include <sizes.h>
 #include <io.h>
+#include <debug_ll.h>
 #include <asm/sections.h>
 #include <asm/mmu.h>
 #include <asm/barebox-arm-head.h>
@@ -136,26 +137,37 @@ static void sdram_init(void)
 	writel(0x0000047f, 0x021e80a4);
 	writel(0x0000c34f, 0x021e80a8);
 	writel(0x00000001, 0x021e8080);
+	putc_ll('>');
 }
 
 extern char __dtb_imx6q_dmo_realq7_start[];
+extern char __dtb_imx6q_dmo_realq7_end[];
 
 ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
 {
-	uint32_t fdt;
+	unsigned long fdt, sdram = 0x10000000;
 
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00940000 - 8);
 
+	fdt = (unsigned long)__dtb_imx6q_dmo_realq7_start - get_runtime_offset();
+
 	if (get_pc() < 0x10000000) {
 		sdram_init();
 
 		mmdc_do_write_level_calibration();
 		mmdc_do_dqs_calibration();
-	}
 
-	fdt = (uint32_t)__dtb_imx6q_dmo_realq7_start - get_runtime_offset();
+		/*
+		 * Copy the devicetree blob to sdram so that the barebox code finds it
+		 * inside valid SDRAM instead of SRAM.
+		 */
+		memcpy((void *)sdram, (void *)fdt,
+				__dtb_imx6q_dmo_realq7_end -
+				__dtb_imx6q_dmo_realq7_start);
+		fdt = sdram;
+	}
 
-	barebox_arm_entry(0x10000000, SZ_2G, fdt);
+	barebox_arm_entry(sdram, SZ_2G, fdt);
 }
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
