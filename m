Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDO5h-00051r-Ky
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 23:49:46 +0000
Received: from mail609.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 26CBD100FC03
 for <barebox@lists.infradead.org>; Thu,  7 Mar 2013 01:00:55 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  7 Mar 2013 00:45:18 +0100
Message-Id: <1362613518-15456-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362425866-1356-3-git-send-email-s.hauer@pengutronix.de>
References: <1362425866-1356-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/1] beagle: add missing mmc twl and control init
To: barebox@lists.infradead.org

take from xloader

with this the mmc work even when booting from nand

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/beagle/board.c |   29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index bed4651..6e69e87 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -63,6 +63,7 @@
 #include <linux/err.h>
 #include <usb/ehci.h>
 #include <mach/xload.h>
+#include <mfd/twl4030.h>
 
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
 
@@ -109,6 +110,32 @@ static struct gpmc_nand_platform_data nand_plat = {
 	.nand_cfg = &omap3_nand_cfg,
 };
 
+/* T2 Register definitions */
+#define CONTROL_DEV_CONF0	0x48002274
+#define CONTROL_PBIAS_LITE	0x48002520
+
+static void beagle_add_mmc(void)
+{
+	unsigned int value = 0;
+	struct twl4030 *t = twl4030_get();
+
+	if (!t) {
+		pr_warn("twl4030 not ready to setup mmc\n");
+	} else {
+		twl4030_reg_write(t, TWL4030_USB_OTHER_FUNC_CTRL_CLR, 0x20);
+		twl4030_reg_write(t, TWL4030_USB_OTHER_IFC_CTRL_CLR, 0x2);
+	}
+
+	value = readl(CONTROL_PBIAS_LITE);
+	value |= (1 << 2) | (1 << 1) | (1 << 9);
+	writel(value, CONTROL_PBIAS_LITE);
+
+	value = readl(CONTROL_DEV_CONF0);
+	writel(value | (1 << 24), CONTROL_PBIAS_LITE);
+
+	omap3_add_mmc1(NULL);
+}
+
 static int beagle_mem_init(void)
 {
 	omap_add_ram0(SZ_128M);
@@ -132,7 +159,7 @@ static int beagle_devices_init(void)
 #endif
 	omap_add_gpmc_nand_device(&nand_plat);
 
-	omap3_add_mmc1(NULL);
+	beagle_add_mmc();
 
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
