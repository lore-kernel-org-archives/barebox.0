Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5oMc-0003Vh-LT
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 09:15:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Mar 2019 10:14:46 +0100
Message-Id: <20190318091454.11386-4-s.hauer@pengutronix.de>
In-Reply-To: <20190318091454.11386-1-s.hauer@pengutronix.de>
References: <20190318091454.11386-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] treewide: Add missing includes
To: Barebox List <barebox@lists.infradead.org>

Many files in the tree implement functions, but do not include the
header files which provide the prototypes for these functions. This
means conflicting prototypes remain undetected. Add the missing
includes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c | 2 ++
 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c  | 2 ++
 arch/arm/lib32/semihosting.c                     | 1 +
 arch/arm/mach-clps711x/devices.c                 | 1 +
 arch/arm/mach-ep93xx/gpio.c                      | 1 +
 arch/arm/mach-ep93xx/led.c                       | 2 ++
 arch/arm/mach-mvebu/common.c                     | 1 +
 arch/arm/mach-mxs/power.c                        | 1 +
 arch/arm/mach-mxs/usb-imx23.c                    | 1 +
 arch/arm/mach-mxs/usb-imx28.c                    | 1 +
 arch/arm/mach-netx/generic.c                     | 1 +
 arch/arm/mach-nomadik/8815.c                     | 1 +
 arch/arm/mach-omap/omap4_twl6030_mmc.c           | 1 +
 arch/arm/mach-pxa/gpio.c                         | 1 +
 crypto/keystore.c                                | 1 +
 drivers/mfd/lp3972.c                             | 1 +
 16 files changed, 19 insertions(+)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
index c94cb355e2..e4ccbdb2a3 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
@@ -26,6 +26,8 @@
 
 #include <asm/armlinux.h>
 
+#include "hwdetect.h"
+
 enum board_type {
 	BOARD_ID_CFA10036 = 0,
 	BOARD_ID_CFA10037 = 1,
diff --git a/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c b/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
index e066a43dbe..39179c83d8 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
+++ b/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
@@ -21,6 +21,8 @@
 #include <mach/s3c-generic.h>
 #include <mach/iomux.h>
 
+#include "tiny6410.h"
+
 static const unsigned tiny6410_pin_usage[] = {
 	/* UART0 */
 	GPA2_GPIO | GPIO_IN | ENABLE_PU, /* CTS not connected */
diff --git a/arch/arm/lib32/semihosting.c b/arch/arm/lib32/semihosting.c
index 10ee7d3640..9fc3b6b62c 100644
--- a/arch/arm/lib32/semihosting.c
+++ b/arch/arm/lib32/semihosting.c
@@ -21,6 +21,7 @@
 #include <common.h>
 #include <command.h>
 #include <fcntl.h>
+#include <asm/semihosting.h>
 
 #ifndef O_BINARY
 #define O_BINARY	0
diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index 69574317bd..8eacc70018 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -15,6 +15,7 @@
 #include <asm/memory.h>
 
 #include <mach/clps711x.h>
+#include <mach/devices.h>
 
 static int clps711x_mem_init(void)
 {
diff --git a/arch/arm/mach-ep93xx/gpio.c b/arch/arm/mach-ep93xx/gpio.c
index 0c87152032..20477f83e6 100644
--- a/arch/arm/mach-ep93xx/gpio.c
+++ b/arch/arm/mach-ep93xx/gpio.c
@@ -18,6 +18,7 @@
 #include <errno.h>
 #include <init.h>
 #include <io.h>
+#include <gpio.h>
 #include <mach/ep93xx-regs.h>
 
 #define EP93XX_GPIO_NUM_PORTS	8
diff --git a/arch/arm/mach-ep93xx/led.c b/arch/arm/mach-ep93xx/led.c
index a415bce0d7..47e24cd6ed 100644
--- a/arch/arm/mach-ep93xx/led.c
+++ b/arch/arm/mach-ep93xx/led.c
@@ -20,6 +20,8 @@
 #include <io.h>
 #include <mach/ep93xx-regs.h>
 
+#include "led.h"
+
 #define GREEN_LED_POS		0x01
 #define RED_LED_POS		0x02
 
diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
index 83aeb41ae2..6b4fa8b889 100644
--- a/arch/arm/mach-mvebu/common.c
+++ b/arch/arm/mach-mvebu/common.c
@@ -25,6 +25,7 @@
 #include <mach/socid.h>
 #include <asm/barebox-arm.h>
 #include <asm/memory.h>
+#include <mach/lowlevel.h>
 
 /*
  * The different SoC headers containing register definitions (mach/dove-regs.h,
diff --git a/arch/arm/mach-mxs/power.c b/arch/arm/mach-mxs/power.c
index 74c5479f3e..6febf5dbaa 100644
--- a/arch/arm/mach-mxs/power.c
+++ b/arch/arm/mach-mxs/power.c
@@ -14,6 +14,7 @@
 #include <stmp-device.h>
 #include <errno.h>
 #include <mach/imx-regs.h>
+#include <mach/power.h>
 
 #define POWER_CTRL			(IMX_POWER_BASE + 0x0)
 #define POWER_CTRL_CLKGATE		0x40000000
diff --git a/arch/arm/mach-mxs/usb-imx23.c b/arch/arm/mach-mxs/usb-imx23.c
index e626396f9d..d9a54b66f8 100644
--- a/arch/arm/mach-mxs/usb-imx23.c
+++ b/arch/arm/mach-mxs/usb-imx23.c
@@ -17,6 +17,7 @@
 #include <io.h>
 #include <mach/imx23-regs.h>
 #include <mach/power.h>
+#include <mach/usb.h>
 
 #define USBPHY_PWD			(IMX_USBPHY_BASE + 0x0)
 
diff --git a/arch/arm/mach-mxs/usb-imx28.c b/arch/arm/mach-mxs/usb-imx28.c
index a87d4f6cbc..a4e1bdb280 100644
--- a/arch/arm/mach-mxs/usb-imx28.c
+++ b/arch/arm/mach-mxs/usb-imx28.c
@@ -18,6 +18,7 @@
 #include <io.h>
 #include <errno.h>
 #include <mach/imx28-regs.h>
+#include <mach/usb.h>
 
 #define POWER_CTRL			(IMX_POWER_BASE + 0x0)
 #define POWER_CTRL_CLKGATE		0x40000000
diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
index e818f97013..450226d2cc 100644
--- a/arch/arm/mach-netx/generic.c
+++ b/arch/arm/mach-netx/generic.c
@@ -20,6 +20,7 @@
 #include <io.h>
 #include <restart.h>
 #include <mach/netx-regs.h>
+#include <mach/netx-xc.h>
 #include "eth_firmware.h"
 
 struct fw_header {
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index dc1bcd2bcd..9f9c0342b4 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -18,6 +18,7 @@
 #include <init.h>
 #include <linux/clkdev.h>
 #include <mach/hardware.h>
+#include <mach/board.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <linux/amba/bus.h>
diff --git a/arch/arm/mach-omap/omap4_twl6030_mmc.c b/arch/arm/mach-omap/omap4_twl6030_mmc.c
index 155add6ea1..67a9a5d6b5 100644
--- a/arch/arm/mach-omap/omap4_twl6030_mmc.c
+++ b/arch/arm/mach-omap/omap4_twl6030_mmc.c
@@ -17,6 +17,7 @@
 #include <io.h>
 
 #include <mfd/twl6030.h>
+#include <mach/omap4_twl6030_mmc.h>
 
 /* MMC voltage */
 #define OMAP4_CONTROL_PBIASLITE			0x4A100600
diff --git a/arch/arm/mach-pxa/gpio.c b/arch/arm/mach-pxa/gpio.c
index 7dd6ac0648..ebda6bbe2a 100644
--- a/arch/arm/mach-pxa/gpio.c
+++ b/arch/arm/mach-pxa/gpio.c
@@ -12,6 +12,7 @@
 
 #include <common.h>
 #include <errno.h>
+#include <gpio.h>
 
 #include <mach/gpio.h>
 #include <asm/io.h>
diff --git a/crypto/keystore.c b/crypto/keystore.c
index f2b25ca6c9..1ce6332979 100644
--- a/crypto/keystore.c
+++ b/crypto/keystore.c
@@ -9,6 +9,7 @@
 #include <common.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
+#include <crypto/keystore.h>
 
 static LIST_HEAD(keystore_list);
 
diff --git a/drivers/mfd/lp3972.c b/drivers/mfd/lp3972.c
index 3ae9d1ac64..ca736710b2 100644
--- a/drivers/mfd/lp3972.c
+++ b/drivers/mfd/lp3972.c
@@ -20,6 +20,7 @@
 #include <driver.h>
 #include <xfuncs.h>
 #include <errno.h>
+#include <mfd/lp3972.h>
 
 #include <i2c/i2c.h>
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
