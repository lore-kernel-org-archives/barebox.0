Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YOXyt-0000YM-6M
 for barebox@lists.infradead.org; Thu, 19 Feb 2015 20:45:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1YOXyX-0002dB-Fw
 for barebox@lists.infradead.org; Thu, 19 Feb 2015 21:45:33 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <mgr@pengutronix.de>) id 1YOXyX-00006M-Er
 for barebox@lists.infradead.org; Thu, 19 Feb 2015 21:45:33 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 19 Feb 2015 21:45:28 +0100
Message-Id: <1424378728-340-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] ARM: Vincell: add usb device
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boards/guf-vincell/board.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
index 0b4065a..ec78b3d 100644
--- a/arch/arm/boards/guf-vincell/board.c
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -30,6 +30,7 @@
 #include <io.h>
 #include <i2c/i2c.h>
 #include <linux/clk.h>
+#include <usb/fsl_usb2.h>
 
 #include <generated/mach-types.h>
 
@@ -43,6 +44,7 @@
 #include <mach/bbu.h>
 #include <mach/imx-flash-header.h>
 #include <mach/imx5.h>
+#include <mach/usb.h>
 
 #include <asm/setup.h>
 #include <asm/barebox-arm.h>
@@ -329,6 +331,11 @@ static int detectomat_test_bootstrap(void)
 
 static int detectomat_bootstrap;
 
+static struct fsl_usb2_platform_data usb_pdata = {
+	.operating_mode	= FSL_USB2_DR_DEVICE,
+	.phy_mode	= FSL_USB2_PHY_UTMI,
+};
+
 static int vincell_devices_init(void)
 {
 	writel(0, MX53_M4IF_BASE_ADDR + 0xc);
@@ -349,6 +356,9 @@ static int vincell_devices_init(void)
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	imx53_add_i2c0(NULL);
 
+	add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL, MX53_OTG_BASE_ADDR, 0x200,
+			   IORESOURCE_MEM, &usb_pdata);
+
 	vincell_fec_reset();
 
 	armlinux_set_architecture(3297);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
