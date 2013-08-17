Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VAclo-0003FK-Df
 for barebox@lists.infradead.org; Sat, 17 Aug 2013 09:26:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Aug 2013 11:25:33 +0200
Message-Id: <1376731537-12102-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376731537-12102-1-git-send-email-s.hauer@pengutronix.de>
References: <1376731537-12102-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] ARM: AT91: move iomux definitions to iomux.h
To: barebox@lists.infradead.org

mach/gpio.h is for the gpio API, so move unrelated stuff
away.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/animeo_ip/init.c         |   1 +
 arch/arm/boards/at91rm9200ek/init.c      |   1 +
 arch/arm/boards/at91sam9260ek/init.c     |   1 +
 arch/arm/boards/at91sam9261ek/init.c     |   1 +
 arch/arm/boards/at91sam9263ek/init.c     |   1 +
 arch/arm/boards/at91sam9m10g45ek/init.c  |   1 +
 arch/arm/boards/at91sam9m10ihd/init.c    |   1 +
 arch/arm/boards/at91sam9n12ek/init.c     |   1 +
 arch/arm/boards/at91sam9x5ek/init.c      |   1 +
 arch/arm/boards/dss11/init.c             |   1 +
 arch/arm/boards/mmccpu/init.c            |   1 +
 arch/arm/boards/pm9261/init.c            |   1 +
 arch/arm/boards/pm9263/init.c            |   1 +
 arch/arm/boards/pm9g45/init.c            |   1 +
 arch/arm/boards/qil-a926x/init.c         |   1 +
 arch/arm/boards/sama5d3xek/init.c        |   1 +
 arch/arm/boards/telit-evk-pro3/init.c    |   1 +
 arch/arm/boards/tny-a926x/init.c         |   1 +
 arch/arm/boards/usb-a926x/init.c         |   1 +
 arch/arm/mach-at91/at91rm9200_devices.c  |   1 +
 arch/arm/mach-at91/at91sam9260_devices.c |   1 +
 arch/arm/mach-at91/at91sam9261_devices.c |   1 +
 arch/arm/mach-at91/at91sam9263_devices.c |   1 +
 arch/arm/mach-at91/at91sam9g45_devices.c |   1 +
 arch/arm/mach-at91/at91sam9n12_devices.c |   1 +
 arch/arm/mach-at91/at91sam9x5_devices.c  |   1 +
 arch/arm/mach-at91/gpio.c                |   1 +
 arch/arm/mach-at91/include/mach/gpio.h   | 268 -------------------------------
 arch/arm/mach-at91/include/mach/iomux.h  | 266 ++++++++++++++++++++++++++++++
 arch/arm/mach-at91/sama5d3_devices.c     |   1 +
 drivers/spi/atmel_spi.c                  |   1 +
 31 files changed, 295 insertions(+), 268 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/iomux.h

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index d8f9796..c240767 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -22,6 +22,7 @@
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
+#include <mach/iomux.h>
 #include <mach/io.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index c04f295..16f33e0 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -29,6 +29,7 @@
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
+#include <mach/iomux.h>
 #include <mach/io.h>
 #include <spi/spi.h>
 
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index d2ace1d..d7a28cc 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -23,6 +23,7 @@
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/at91_rstc.h>
 #include <linux/clk.h>
 
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 91640f9..01a0215 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -32,6 +32,7 @@
 #include <mach/board.h>
 #include <gpio.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/at91sam9_smc.h>
 #include <dm9000.h>
 #include <gpio_keys.h>
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index ebc1697..c4269a3 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -32,6 +32,7 @@
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
+#include <mach/iomux.h>
 #include <gpio.h>
 #include <mach/io.h>
 #include <mach/at91sam9_smc.h>
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index cd831cf..539cbee 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -34,6 +34,7 @@
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
+#include <mach/iomux.h>
 #include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <gpio_keys.h>
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index 9135b0c..7fa6afb 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -22,6 +22,7 @@
 #include <mach/board.h>
 #include <gpio.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/at91sam9_smc.h>
 #include <input/qt1070.h>
 #include <readkey.h>
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index 0267a7d..440d39d 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -33,6 +33,7 @@
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 #include <mach/at91sam9x5_matrix.h>
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 3d4d95b..c794876 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -33,6 +33,7 @@
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 #include <mach/at91sam9x5_matrix.h>
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index e53ae88..f769f4f 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -31,6 +31,7 @@
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/at91_rstc.h>
 #include <linux/clk.h>
 
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 11c4bf5..b695741 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -31,6 +31,7 @@
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
+#include <mach/iomux.h>
 #include <mach/io.h>
 
 static struct macb_platform_data macb_pdata = {
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index e42f6e4..d23e834 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -32,6 +32,7 @@
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
+#include <mach/iomux.h>
 #include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <dm9000.h>
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 24476f1..76fef7d 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -34,6 +34,7 @@
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/at91sam9_smc.h>
 #include <linux/w1-gpio.h>
 #include <w1_mac_address.h>
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 982b427..1a902ac 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -32,6 +32,7 @@
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
+#include <mach/iomux.h>
 #include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <linux/w1-gpio.h>
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index 58ab386..30aa64a 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -25,6 +25,7 @@
 #include <gpio.h>
 #include <led.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 6aae167..fa57f18 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -33,6 +33,7 @@
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 #include <mach/at91sam9x5_matrix.h>
diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
index b933f9f..38e3900 100644
--- a/arch/arm/boards/telit-evk-pro3/init.c
+++ b/arch/arm/boards/telit-evk-pro3/init.c
@@ -22,6 +22,7 @@
 #include <mach/at91sam9_smc.h>
 #include <mach/board.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <nand.h>
 
 #define BOOTSTRAP_SIZE	0xC0000
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index cdfe046..6ad049d 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -34,6 +34,7 @@
 #include <mach/at91sam9_sdramc.h>
 #include <gpio.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 #include <spi/eeprom.h>
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 74d4867..edeee4e 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -35,6 +35,7 @@
 #include <gpio.h>
 #include <led.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 #include <gpio_keys.h>
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 2eba82b..ce0e416 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -16,6 +16,7 @@
 #include <mach/hardware.h>
 #include <mach/at91rm9200.h>
 #include <mach/board.h>
+#include <mach/iomux.h>
 #include <mach/io.h>
 #include <mach/at91rm9200_mc.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index e5cb8c0..84a0329 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -18,6 +18,7 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9260_matrix.h>
 #include <mach/at91sam9_sdramc.h>
+#include <mach/iomux.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 089c56a..b522afb 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -18,6 +18,7 @@
 #include <mach/at91sam9261_matrix.h>
 #include <mach/at91sam9_sdramc.h>
 #include <mach/board.h>
+#include <mach/iomux.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 6cd1b89..9d8bc32 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -18,6 +18,7 @@
 #include <mach/at91sam9263_matrix.h>
 #include <mach/at91sam9_sdramc.h>
 #include <mach/board.h>
+#include <mach/iomux.h>
 #include <mach/io.h>
 #include <i2c/i2c-gpio.h>
 
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index c51f0b3..3e0bc10 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -18,6 +18,7 @@
 #include <mach/at91sam9g45_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/board.h>
+#include <mach/iomux.h>
 #include <mach/io.h>
 #include <i2c/i2c-gpio.h>
 
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index 3a6a9a7..3616801 100644
--- a/arch/arm/mach-at91/at91sam9n12_devices.c
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -20,6 +20,7 @@
 #include <mach/at91sam9n12_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
 
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 9a2f584..f80c1af 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -19,6 +19,7 @@
 #include <mach/at91sam9x5_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
 
diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index b6cedff..b111373 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -24,6 +24,7 @@
 #include <linux/err.h>
 #include <errno.h>
 #include <io.h>
+#include <mach/iomux.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <gpio.h>
diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index eb64bd4..306ab4c 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -1,269 +1 @@
-/*
- * [origin: Linux kernel include/asm-arm/arch-at91/gpio.h]
- *
- *  Copyright (C) 2005 HP Labs
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- */
-
-#ifndef __ASM_ARCH_AT91_GPIO_H
-#define __ASM_ARCH_AT91_GPIO_H
-
-#include <io.h>
-#include <asm-generic/errno.h>
-#include <mach/at91_pio.h>
-#include <mach/hardware.h>
 #include <asm-generic/gpio.h>
-
-#define ARCH_NR_GPIOS 256
-
-#define	AT91_PIN_PA0	(0x00 + 0)
-#define	AT91_PIN_PA1	(0x00 + 1)
-#define	AT91_PIN_PA2	(0x00 + 2)
-#define	AT91_PIN_PA3	(0x00 + 3)
-#define	AT91_PIN_PA4	(0x00 + 4)
-#define	AT91_PIN_PA5	(0x00 + 5)
-#define	AT91_PIN_PA6	(0x00 + 6)
-#define	AT91_PIN_PA7	(0x00 + 7)
-#define	AT91_PIN_PA8	(0x00 + 8)
-#define	AT91_PIN_PA9	(0x00 + 9)
-#define	AT91_PIN_PA10	(0x00 + 10)
-#define	AT91_PIN_PA11	(0x00 + 11)
-#define	AT91_PIN_PA12	(0x00 + 12)
-#define	AT91_PIN_PA13	(0x00 + 13)
-#define	AT91_PIN_PA14	(0x00 + 14)
-#define	AT91_PIN_PA15	(0x00 + 15)
-#define	AT91_PIN_PA16	(0x00 + 16)
-#define	AT91_PIN_PA17	(0x00 + 17)
-#define	AT91_PIN_PA18	(0x00 + 18)
-#define	AT91_PIN_PA19	(0x00 + 19)
-#define	AT91_PIN_PA20	(0x00 + 20)
-#define	AT91_PIN_PA21	(0x00 + 21)
-#define	AT91_PIN_PA22	(0x00 + 22)
-#define	AT91_PIN_PA23	(0x00 + 23)
-#define	AT91_PIN_PA24	(0x00 + 24)
-#define	AT91_PIN_PA25	(0x00 + 25)
-#define	AT91_PIN_PA26	(0x00 + 26)
-#define	AT91_PIN_PA27	(0x00 + 27)
-#define	AT91_PIN_PA28	(0x00 + 28)
-#define	AT91_PIN_PA29	(0x00 + 29)
-#define	AT91_PIN_PA30	(0x00 + 30)
-#define	AT91_PIN_PA31	(0x00 + 31)
-
-#define	AT91_PIN_PB0	(0x20 + 0)
-#define	AT91_PIN_PB1	(0x20 + 1)
-#define	AT91_PIN_PB2	(0x20 + 2)
-#define	AT91_PIN_PB3	(0x20 + 3)
-#define	AT91_PIN_PB4	(0x20 + 4)
-#define	AT91_PIN_PB5	(0x20 + 5)
-#define	AT91_PIN_PB6	(0x20 + 6)
-#define	AT91_PIN_PB7	(0x20 + 7)
-#define	AT91_PIN_PB8	(0x20 + 8)
-#define	AT91_PIN_PB9	(0x20 + 9)
-#define	AT91_PIN_PB10	(0x20 + 10)
-#define	AT91_PIN_PB11	(0x20 + 11)
-#define	AT91_PIN_PB12	(0x20 + 12)
-#define	AT91_PIN_PB13	(0x20 + 13)
-#define	AT91_PIN_PB14	(0x20 + 14)
-#define	AT91_PIN_PB15	(0x20 + 15)
-#define	AT91_PIN_PB16	(0x20 + 16)
-#define	AT91_PIN_PB17	(0x20 + 17)
-#define	AT91_PIN_PB18	(0x20 + 18)
-#define	AT91_PIN_PB19	(0x20 + 19)
-#define	AT91_PIN_PB20	(0x20 + 20)
-#define	AT91_PIN_PB21	(0x20 + 21)
-#define	AT91_PIN_PB22	(0x20 + 22)
-#define	AT91_PIN_PB23	(0x20 + 23)
-#define	AT91_PIN_PB24	(0x20 + 24)
-#define	AT91_PIN_PB25	(0x20 + 25)
-#define	AT91_PIN_PB26	(0x20 + 26)
-#define	AT91_PIN_PB27	(0x20 + 27)
-#define	AT91_PIN_PB28	(0x20 + 28)
-#define	AT91_PIN_PB29	(0x20 + 29)
-#define	AT91_PIN_PB30	(0x20 + 30)
-#define	AT91_PIN_PB31	(0x20 + 31)
-
-#define	AT91_PIN_PC0	(0x40 + 0)
-#define	AT91_PIN_PC1	(0x40 + 1)
-#define	AT91_PIN_PC2	(0x40 + 2)
-#define	AT91_PIN_PC3	(0x40 + 3)
-#define	AT91_PIN_PC4	(0x40 + 4)
-#define	AT91_PIN_PC5	(0x40 + 5)
-#define	AT91_PIN_PC6	(0x40 + 6)
-#define	AT91_PIN_PC7	(0x40 + 7)
-#define	AT91_PIN_PC8	(0x40 + 8)
-#define	AT91_PIN_PC9	(0x40 + 9)
-#define	AT91_PIN_PC10	(0x40 + 10)
-#define	AT91_PIN_PC11	(0x40 + 11)
-#define	AT91_PIN_PC12	(0x40 + 12)
-#define	AT91_PIN_PC13	(0x40 + 13)
-#define	AT91_PIN_PC14	(0x40 + 14)
-#define	AT91_PIN_PC15	(0x40 + 15)
-#define	AT91_PIN_PC16	(0x40 + 16)
-#define	AT91_PIN_PC17	(0x40 + 17)
-#define	AT91_PIN_PC18	(0x40 + 18)
-#define	AT91_PIN_PC19	(0x40 + 19)
-#define	AT91_PIN_PC20	(0x40 + 20)
-#define	AT91_PIN_PC21	(0x40 + 21)
-#define	AT91_PIN_PC22	(0x40 + 22)
-#define	AT91_PIN_PC23	(0x40 + 23)
-#define	AT91_PIN_PC24	(0x40 + 24)
-#define	AT91_PIN_PC25	(0x40 + 25)
-#define	AT91_PIN_PC26	(0x40 + 26)
-#define	AT91_PIN_PC27	(0x40 + 27)
-#define	AT91_PIN_PC28	(0x40 + 28)
-#define	AT91_PIN_PC29	(0x40 + 29)
-#define	AT91_PIN_PC30	(0x40 + 30)
-#define	AT91_PIN_PC31	(0x40 + 31)
-
-#define	AT91_PIN_PD0	(0x60 + 0)
-#define	AT91_PIN_PD1	(0x60 + 1)
-#define	AT91_PIN_PD2	(0x60 + 2)
-#define	AT91_PIN_PD3	(0x60 + 3)
-#define	AT91_PIN_PD4	(0x60 + 4)
-#define	AT91_PIN_PD5	(0x60 + 5)
-#define	AT91_PIN_PD6	(0x60 + 6)
-#define	AT91_PIN_PD7	(0x60 + 7)
-#define	AT91_PIN_PD8	(0x60 + 8)
-#define	AT91_PIN_PD9	(0x60 + 9)
-#define	AT91_PIN_PD10	(0x60 + 10)
-#define	AT91_PIN_PD11	(0x60 + 11)
-#define	AT91_PIN_PD12	(0x60 + 12)
-#define	AT91_PIN_PD13	(0x60 + 13)
-#define	AT91_PIN_PD14	(0x60 + 14)
-#define	AT91_PIN_PD15	(0x60 + 15)
-#define	AT91_PIN_PD16	(0x60 + 16)
-#define	AT91_PIN_PD17	(0x60 + 17)
-#define	AT91_PIN_PD18	(0x60 + 18)
-#define	AT91_PIN_PD19	(0x60 + 19)
-#define	AT91_PIN_PD20	(0x60 + 20)
-#define	AT91_PIN_PD21	(0x60 + 21)
-#define	AT91_PIN_PD22	(0x60 + 22)
-#define	AT91_PIN_PD23	(0x60 + 23)
-#define	AT91_PIN_PD24	(0x60 + 24)
-#define	AT91_PIN_PD25	(0x60 + 25)
-#define	AT91_PIN_PD26	(0x60 + 26)
-#define	AT91_PIN_PD27	(0x60 + 27)
-#define	AT91_PIN_PD28	(0x60 + 28)
-#define	AT91_PIN_PD29	(0x60 + 29)
-#define	AT91_PIN_PD30	(0x60 + 30)
-#define	AT91_PIN_PD31	(0x60 + 31)
-
-#define	AT91_PIN_PE0	(0x80 + 0)
-#define	AT91_PIN_PE1	(0x80 + 1)
-#define	AT91_PIN_PE2	(0x80 + 2)
-#define	AT91_PIN_PE3	(0x80 + 3)
-#define	AT91_PIN_PE4	(0x80 + 4)
-#define	AT91_PIN_PE5	(0x80 + 5)
-#define	AT91_PIN_PE6	(0x80 + 6)
-#define	AT91_PIN_PE7	(0x80 + 7)
-#define	AT91_PIN_PE8	(0x80 + 8)
-#define	AT91_PIN_PE9	(0x80 + 9)
-#define	AT91_PIN_PE10	(0x80 + 10)
-#define	AT91_PIN_PE11	(0x80 + 11)
-#define	AT91_PIN_PE12	(0x80 + 12)
-#define	AT91_PIN_PE13	(0x80 + 13)
-#define	AT91_PIN_PE14	(0x80 + 14)
-#define	AT91_PIN_PE15	(0x80 + 15)
-#define	AT91_PIN_PE16	(0x80 + 16)
-#define	AT91_PIN_PE17	(0x80 + 17)
-#define	AT91_PIN_PE18	(0x80 + 18)
-#define	AT91_PIN_PE19	(0x80 + 19)
-#define	AT91_PIN_PE20	(0x80 + 20)
-#define	AT91_PIN_PE21	(0x80 + 21)
-#define	AT91_PIN_PE22	(0x80 + 22)
-#define	AT91_PIN_PE23	(0x80 + 23)
-#define	AT91_PIN_PE24	(0x80 + 24)
-#define	AT91_PIN_PE25	(0x80 + 25)
-#define	AT91_PIN_PE26	(0x80 + 26)
-#define	AT91_PIN_PE27	(0x80 + 27)
-#define	AT91_PIN_PE28	(0x80 + 28)
-#define	AT91_PIN_PE29	(0x80 + 29)
-#define	AT91_PIN_PE30	(0x80 + 30)
-#define	AT91_PIN_PE31	(0x80 + 31)
-
-enum at91_mux {
-	AT91_MUX_GPIO = 0,
-	AT91_MUX_PERIPH_A = 1,
-	AT91_MUX_PERIPH_B = 2,
-	AT91_MUX_PERIPH_C = 3,
-	AT91_MUX_PERIPH_D = 4,
-};
-
-/*
- * mux the pin
- */
-int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup);
-
-/*
- * mux the pin to the "GPIO" peripheral role.
- */
-static inline int at91_set_GPIO_periph(unsigned pin, int use_pullup)
-{
-	return at91_mux_pin(pin, AT91_MUX_GPIO, use_pullup);
-}
-
-/*
- * mux the pin to the "A" internal peripheral role.
- */
-static inline int at91_set_A_periph(unsigned pin, int use_pullup)
-{
-	return at91_mux_pin(pin, AT91_MUX_PERIPH_A, use_pullup);
-}
-
-/*
- * mux the pin to the "B" internal peripheral role.
- */
-static inline int at91_set_B_periph(unsigned pin, int use_pullup)
-{
-	return at91_mux_pin(pin, AT91_MUX_PERIPH_B, use_pullup);
-}
-
-/*
- * mux the pin to the "C" internal peripheral role.
- */
-static inline int at91_set_C_periph(unsigned pin, int use_pullup)
-{
-	return at91_mux_pin(pin, AT91_MUX_PERIPH_C, use_pullup);
-}
-
-/*
- * mux the pin to the "C" internal peripheral role.
- */
-static inline int at91_set_D_periph(unsigned pin, int use_pullup)
-{
-	return at91_mux_pin(pin, AT91_MUX_PERIPH_D, use_pullup);
-}
-
-/*
- * mux the pin to the gpio controller (instead of "A" or "B" peripheral), and
- * configure it for an input.
- */
-int at91_set_gpio_input(unsigned pin, int use_pullup);
-
-/*
- * mux the pin to the gpio controller (instead of "A" or "B" peripheral),
- * and configure it for an output.
- */
-int at91_set_gpio_output(unsigned pin, int value);
-
-/*
- * enable/disable the glitch filter; mostly used with IRQ handling.
- */
-int at91_set_deglitch(unsigned pin, int is_on);
-
-/*
- * enable/disable the multi-driver; This is only valid for output and
- * allows the output pin to run as an open collector output.
- */
-int at91_set_multi_drive(unsigned pin, int is_on);
-
-extern int at91_set_debounce(unsigned pin, int is_on, int div);
-extern int at91_set_pulldown(unsigned pin, int is_on);
-extern int at91_disable_schmitt_trig(unsigned pin);
-
-#endif /* __ASM_ARCH_AT91SAM9_GPIO_H */
diff --git a/arch/arm/mach-at91/include/mach/iomux.h b/arch/arm/mach-at91/include/mach/iomux.h
new file mode 100644
index 0000000..bac7ef6
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/iomux.h
@@ -0,0 +1,266 @@
+/*
+ * [origin: Linux kernel include/asm-arm/arch-at91/gpio.h]
+ *
+ *  Copyright (C) 2005 HP Labs
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+
+#ifndef __ASM_ARCH_AT91_GPIO_H
+#define __ASM_ARCH_AT91_GPIO_H
+
+#include <io.h>
+#include <asm-generic/errno.h>
+#include <mach/at91_pio.h>
+#include <mach/hardware.h>
+
+#define	AT91_PIN_PA0	(0x00 + 0)
+#define	AT91_PIN_PA1	(0x00 + 1)
+#define	AT91_PIN_PA2	(0x00 + 2)
+#define	AT91_PIN_PA3	(0x00 + 3)
+#define	AT91_PIN_PA4	(0x00 + 4)
+#define	AT91_PIN_PA5	(0x00 + 5)
+#define	AT91_PIN_PA6	(0x00 + 6)
+#define	AT91_PIN_PA7	(0x00 + 7)
+#define	AT91_PIN_PA8	(0x00 + 8)
+#define	AT91_PIN_PA9	(0x00 + 9)
+#define	AT91_PIN_PA10	(0x00 + 10)
+#define	AT91_PIN_PA11	(0x00 + 11)
+#define	AT91_PIN_PA12	(0x00 + 12)
+#define	AT91_PIN_PA13	(0x00 + 13)
+#define	AT91_PIN_PA14	(0x00 + 14)
+#define	AT91_PIN_PA15	(0x00 + 15)
+#define	AT91_PIN_PA16	(0x00 + 16)
+#define	AT91_PIN_PA17	(0x00 + 17)
+#define	AT91_PIN_PA18	(0x00 + 18)
+#define	AT91_PIN_PA19	(0x00 + 19)
+#define	AT91_PIN_PA20	(0x00 + 20)
+#define	AT91_PIN_PA21	(0x00 + 21)
+#define	AT91_PIN_PA22	(0x00 + 22)
+#define	AT91_PIN_PA23	(0x00 + 23)
+#define	AT91_PIN_PA24	(0x00 + 24)
+#define	AT91_PIN_PA25	(0x00 + 25)
+#define	AT91_PIN_PA26	(0x00 + 26)
+#define	AT91_PIN_PA27	(0x00 + 27)
+#define	AT91_PIN_PA28	(0x00 + 28)
+#define	AT91_PIN_PA29	(0x00 + 29)
+#define	AT91_PIN_PA30	(0x00 + 30)
+#define	AT91_PIN_PA31	(0x00 + 31)
+
+#define	AT91_PIN_PB0	(0x20 + 0)
+#define	AT91_PIN_PB1	(0x20 + 1)
+#define	AT91_PIN_PB2	(0x20 + 2)
+#define	AT91_PIN_PB3	(0x20 + 3)
+#define	AT91_PIN_PB4	(0x20 + 4)
+#define	AT91_PIN_PB5	(0x20 + 5)
+#define	AT91_PIN_PB6	(0x20 + 6)
+#define	AT91_PIN_PB7	(0x20 + 7)
+#define	AT91_PIN_PB8	(0x20 + 8)
+#define	AT91_PIN_PB9	(0x20 + 9)
+#define	AT91_PIN_PB10	(0x20 + 10)
+#define	AT91_PIN_PB11	(0x20 + 11)
+#define	AT91_PIN_PB12	(0x20 + 12)
+#define	AT91_PIN_PB13	(0x20 + 13)
+#define	AT91_PIN_PB14	(0x20 + 14)
+#define	AT91_PIN_PB15	(0x20 + 15)
+#define	AT91_PIN_PB16	(0x20 + 16)
+#define	AT91_PIN_PB17	(0x20 + 17)
+#define	AT91_PIN_PB18	(0x20 + 18)
+#define	AT91_PIN_PB19	(0x20 + 19)
+#define	AT91_PIN_PB20	(0x20 + 20)
+#define	AT91_PIN_PB21	(0x20 + 21)
+#define	AT91_PIN_PB22	(0x20 + 22)
+#define	AT91_PIN_PB23	(0x20 + 23)
+#define	AT91_PIN_PB24	(0x20 + 24)
+#define	AT91_PIN_PB25	(0x20 + 25)
+#define	AT91_PIN_PB26	(0x20 + 26)
+#define	AT91_PIN_PB27	(0x20 + 27)
+#define	AT91_PIN_PB28	(0x20 + 28)
+#define	AT91_PIN_PB29	(0x20 + 29)
+#define	AT91_PIN_PB30	(0x20 + 30)
+#define	AT91_PIN_PB31	(0x20 + 31)
+
+#define	AT91_PIN_PC0	(0x40 + 0)
+#define	AT91_PIN_PC1	(0x40 + 1)
+#define	AT91_PIN_PC2	(0x40 + 2)
+#define	AT91_PIN_PC3	(0x40 + 3)
+#define	AT91_PIN_PC4	(0x40 + 4)
+#define	AT91_PIN_PC5	(0x40 + 5)
+#define	AT91_PIN_PC6	(0x40 + 6)
+#define	AT91_PIN_PC7	(0x40 + 7)
+#define	AT91_PIN_PC8	(0x40 + 8)
+#define	AT91_PIN_PC9	(0x40 + 9)
+#define	AT91_PIN_PC10	(0x40 + 10)
+#define	AT91_PIN_PC11	(0x40 + 11)
+#define	AT91_PIN_PC12	(0x40 + 12)
+#define	AT91_PIN_PC13	(0x40 + 13)
+#define	AT91_PIN_PC14	(0x40 + 14)
+#define	AT91_PIN_PC15	(0x40 + 15)
+#define	AT91_PIN_PC16	(0x40 + 16)
+#define	AT91_PIN_PC17	(0x40 + 17)
+#define	AT91_PIN_PC18	(0x40 + 18)
+#define	AT91_PIN_PC19	(0x40 + 19)
+#define	AT91_PIN_PC20	(0x40 + 20)
+#define	AT91_PIN_PC21	(0x40 + 21)
+#define	AT91_PIN_PC22	(0x40 + 22)
+#define	AT91_PIN_PC23	(0x40 + 23)
+#define	AT91_PIN_PC24	(0x40 + 24)
+#define	AT91_PIN_PC25	(0x40 + 25)
+#define	AT91_PIN_PC26	(0x40 + 26)
+#define	AT91_PIN_PC27	(0x40 + 27)
+#define	AT91_PIN_PC28	(0x40 + 28)
+#define	AT91_PIN_PC29	(0x40 + 29)
+#define	AT91_PIN_PC30	(0x40 + 30)
+#define	AT91_PIN_PC31	(0x40 + 31)
+
+#define	AT91_PIN_PD0	(0x60 + 0)
+#define	AT91_PIN_PD1	(0x60 + 1)
+#define	AT91_PIN_PD2	(0x60 + 2)
+#define	AT91_PIN_PD3	(0x60 + 3)
+#define	AT91_PIN_PD4	(0x60 + 4)
+#define	AT91_PIN_PD5	(0x60 + 5)
+#define	AT91_PIN_PD6	(0x60 + 6)
+#define	AT91_PIN_PD7	(0x60 + 7)
+#define	AT91_PIN_PD8	(0x60 + 8)
+#define	AT91_PIN_PD9	(0x60 + 9)
+#define	AT91_PIN_PD10	(0x60 + 10)
+#define	AT91_PIN_PD11	(0x60 + 11)
+#define	AT91_PIN_PD12	(0x60 + 12)
+#define	AT91_PIN_PD13	(0x60 + 13)
+#define	AT91_PIN_PD14	(0x60 + 14)
+#define	AT91_PIN_PD15	(0x60 + 15)
+#define	AT91_PIN_PD16	(0x60 + 16)
+#define	AT91_PIN_PD17	(0x60 + 17)
+#define	AT91_PIN_PD18	(0x60 + 18)
+#define	AT91_PIN_PD19	(0x60 + 19)
+#define	AT91_PIN_PD20	(0x60 + 20)
+#define	AT91_PIN_PD21	(0x60 + 21)
+#define	AT91_PIN_PD22	(0x60 + 22)
+#define	AT91_PIN_PD23	(0x60 + 23)
+#define	AT91_PIN_PD24	(0x60 + 24)
+#define	AT91_PIN_PD25	(0x60 + 25)
+#define	AT91_PIN_PD26	(0x60 + 26)
+#define	AT91_PIN_PD27	(0x60 + 27)
+#define	AT91_PIN_PD28	(0x60 + 28)
+#define	AT91_PIN_PD29	(0x60 + 29)
+#define	AT91_PIN_PD30	(0x60 + 30)
+#define	AT91_PIN_PD31	(0x60 + 31)
+
+#define	AT91_PIN_PE0	(0x80 + 0)
+#define	AT91_PIN_PE1	(0x80 + 1)
+#define	AT91_PIN_PE2	(0x80 + 2)
+#define	AT91_PIN_PE3	(0x80 + 3)
+#define	AT91_PIN_PE4	(0x80 + 4)
+#define	AT91_PIN_PE5	(0x80 + 5)
+#define	AT91_PIN_PE6	(0x80 + 6)
+#define	AT91_PIN_PE7	(0x80 + 7)
+#define	AT91_PIN_PE8	(0x80 + 8)
+#define	AT91_PIN_PE9	(0x80 + 9)
+#define	AT91_PIN_PE10	(0x80 + 10)
+#define	AT91_PIN_PE11	(0x80 + 11)
+#define	AT91_PIN_PE12	(0x80 + 12)
+#define	AT91_PIN_PE13	(0x80 + 13)
+#define	AT91_PIN_PE14	(0x80 + 14)
+#define	AT91_PIN_PE15	(0x80 + 15)
+#define	AT91_PIN_PE16	(0x80 + 16)
+#define	AT91_PIN_PE17	(0x80 + 17)
+#define	AT91_PIN_PE18	(0x80 + 18)
+#define	AT91_PIN_PE19	(0x80 + 19)
+#define	AT91_PIN_PE20	(0x80 + 20)
+#define	AT91_PIN_PE21	(0x80 + 21)
+#define	AT91_PIN_PE22	(0x80 + 22)
+#define	AT91_PIN_PE23	(0x80 + 23)
+#define	AT91_PIN_PE24	(0x80 + 24)
+#define	AT91_PIN_PE25	(0x80 + 25)
+#define	AT91_PIN_PE26	(0x80 + 26)
+#define	AT91_PIN_PE27	(0x80 + 27)
+#define	AT91_PIN_PE28	(0x80 + 28)
+#define	AT91_PIN_PE29	(0x80 + 29)
+#define	AT91_PIN_PE30	(0x80 + 30)
+#define	AT91_PIN_PE31	(0x80 + 31)
+
+enum at91_mux {
+	AT91_MUX_GPIO = 0,
+	AT91_MUX_PERIPH_A = 1,
+	AT91_MUX_PERIPH_B = 2,
+	AT91_MUX_PERIPH_C = 3,
+	AT91_MUX_PERIPH_D = 4,
+};
+
+/*
+ * mux the pin
+ */
+int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup);
+
+/*
+ * mux the pin to the "GPIO" peripheral role.
+ */
+static inline int at91_set_GPIO_periph(unsigned pin, int use_pullup)
+{
+	return at91_mux_pin(pin, AT91_MUX_GPIO, use_pullup);
+}
+
+/*
+ * mux the pin to the "A" internal peripheral role.
+ */
+static inline int at91_set_A_periph(unsigned pin, int use_pullup)
+{
+	return at91_mux_pin(pin, AT91_MUX_PERIPH_A, use_pullup);
+}
+
+/*
+ * mux the pin to the "B" internal peripheral role.
+ */
+static inline int at91_set_B_periph(unsigned pin, int use_pullup)
+{
+	return at91_mux_pin(pin, AT91_MUX_PERIPH_B, use_pullup);
+}
+
+/*
+ * mux the pin to the "C" internal peripheral role.
+ */
+static inline int at91_set_C_periph(unsigned pin, int use_pullup)
+{
+	return at91_mux_pin(pin, AT91_MUX_PERIPH_C, use_pullup);
+}
+
+/*
+ * mux the pin to the "C" internal peripheral role.
+ */
+static inline int at91_set_D_periph(unsigned pin, int use_pullup)
+{
+	return at91_mux_pin(pin, AT91_MUX_PERIPH_D, use_pullup);
+}
+
+/*
+ * mux the pin to the gpio controller (instead of "A" or "B" peripheral), and
+ * configure it for an input.
+ */
+int at91_set_gpio_input(unsigned pin, int use_pullup);
+
+/*
+ * mux the pin to the gpio controller (instead of "A" or "B" peripheral),
+ * and configure it for an output.
+ */
+int at91_set_gpio_output(unsigned pin, int value);
+
+/*
+ * enable/disable the glitch filter; mostly used with IRQ handling.
+ */
+int at91_set_deglitch(unsigned pin, int is_on);
+
+/*
+ * enable/disable the multi-driver; This is only valid for output and
+ * allows the output pin to run as an open collector output.
+ */
+int at91_set_multi_drive(unsigned pin, int is_on);
+
+extern int at91_set_debounce(unsigned pin, int is_on, int div);
+extern int at91_set_pulldown(unsigned pin, int is_on);
+extern int at91_disable_schmitt_trig(unsigned pin);
+
+#endif /* __ASM_ARCH_AT91SAM9_GPIO_H */
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index 28b1ba1..9cbc8c1 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -19,6 +19,7 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9x5_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
+#include <mach/iomux.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index a0f63d8..0bf9d08 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -32,6 +32,7 @@
 #include <io.h>
 #include <spi/spi.h>
 #include <mach/io.h>
+#include <mach/iomux.h>
 #include <mach/board.h>
 #include <mach/cpu.h>
 #include <linux/clk.h>
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
