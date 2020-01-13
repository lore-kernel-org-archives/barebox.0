Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir5X8-0007oJ-4s
 for barebox@lists.infradead.org; Mon, 13 Jan 2020 19:37:55 +0000
Received: from astat.fritz.box (a89-183-121-189.net-htp.de [89.183.121.189])
 by lynxeye.de (Postfix) with ESMTPA id 60E10E74240
 for <barebox@lists.infradead.org>; Mon, 13 Jan 2020 20:37:19 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 13 Jan 2020 20:37:16 +0100
Message-Id: <20200113193716.133305-3-dev@lynxeye.de>
In-Reply-To: <20200113193716.133305-1-dev@lynxeye.de>
References: <20200113193716.133305-1-dev@lynxeye.de>
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
Subject: [PATCH 3/3] ARM: zynq: zedboard: add PBL console support
To: barebox@lists.infradead.org

Allows for significantly easier debugging of PBL functions.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index 8edc6293f210..912eb11fdac0 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -22,6 +22,7 @@
 #include <asm/barebox-arm-head.h>
 #include <mach/init.h>
 #include <mach/zynq7000-regs.h>
+#include <serial/cadence.h>
 
 #define DCI_DONE	(1 << 13)
 #define PLL_ARM_LOCK	(1 << 0)
@@ -279,6 +280,18 @@ static void avnet_zedboard_ps7_init(void)
 	writel(0x0000767B, ZYNQ_SLCR_LOCK);
 }
 
+static void avnet_zedboard_pbl_console_init(void)
+{
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	cadence_uart_init((void *)ZYNQ_UART1_BASE_ADDR);
+	pbl_set_putc(cadence_uart_putc, (void *)ZYNQ_UART1_BASE_ADDR);
+
+	pr_debug("\nAvnet ZedBoard PBL\n");
+}
+
 ENTRY_FUNCTION(start_avnet_zedboard, r0, r1, r2)
 {
 
@@ -289,5 +302,8 @@ ENTRY_FUNCTION(start_avnet_zedboard, r0, r1, r2)
 
 	avnet_zedboard_ps7_init();
 
+	if (IS_ENABLED(CONFIG_PBL_CONSOLE))
+		avnet_zedboard_pbl_console_init();
+
 	barebox_arm_entry(0, SZ_512M, fdt);
 }
-- 
2.24.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
