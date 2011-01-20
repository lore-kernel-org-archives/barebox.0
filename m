Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pfr6t-00041m-Ci
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 09:47:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jan 2011 10:47:00 +0100
Message-Id: <1295516821-8988-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295516821-8988-1-git-send-email-s.hauer@pengutronix.de>
References: <1295516821-8988-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/10] ARM: rename STM arch to mxs
To: barebox@lists.infradead.org

We never supported the sigmatel stm chips and probably
never will. So do the first step and rename the architecture
to mxs just like in the kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                                   |    6 +++---
 arch/arm/Makefile                                  |    2 +-
 arch/arm/configs/chumbyone_defconfig               |    2 +-
 arch/arm/configs/imx23evk_defconfig                |    2 +-
 arch/arm/configs/tx28stk5_defconfig                |    2 +-
 arch/arm/{mach-stm => mach-mxs}/Kconfig            |    4 ++--
 arch/arm/{mach-stm => mach-mxs}/Makefile           |    0
 .../arm/{mach-stm => mach-mxs}/clocksource-imx23.c |    0
 .../arm/{mach-stm => mach-mxs}/clocksource-imx28.c |    0
 arch/arm/{mach-stm => mach-mxs}/imx.c              |    0
 arch/arm/{mach-stm => mach-mxs}/imx_lcd_clk.c      |    0
 .../include/mach/clock-imx23.h                     |    0
 .../include/mach/clock-imx28.h                     |    0
 .../{mach-stm => mach-mxs}/include/mach/clock.h    |    0
 arch/arm/{mach-stm => mach-mxs}/include/mach/fb.h  |    0
 .../{mach-stm => mach-mxs}/include/mach/generic.h  |    0
 .../arm/{mach-stm => mach-mxs}/include/mach/gpio.h |    0
 .../{mach-stm => mach-mxs}/include/mach/imx-regs.h |    0
 .../include/mach/imx23-regs.h                      |    0
 .../include/mach/imx28-regs.h                      |    0
 .../include/mach/iomux-imx23.h                     |    0
 .../include/mach/iomux-imx28.h                     |    0
 arch/arm/{mach-stm => mach-mxs}/include/mach/mci.h |    0
 arch/arm/{mach-stm => mach-mxs}/include/mach/usb.h |    0
 arch/arm/{mach-stm => mach-mxs}/iomux-imx.c        |    0
 arch/arm/{mach-stm => mach-mxs}/reset-imx.c        |    0
 arch/arm/{mach-stm => mach-mxs}/speed-imx23.c      |    0
 arch/arm/{mach-stm => mach-mxs}/speed-imx28.c      |    0
 arch/arm/{mach-stm => mach-mxs}/usb.c              |    0
 drivers/mci/Kconfig                                |    2 +-
 drivers/net/fec_imx.c                              |    4 ++--
 drivers/serial/Kconfig                             |    2 +-
 drivers/video/Kconfig                              |    2 +-
 33 files changed, 14 insertions(+), 14 deletions(-)
 rename arch/arm/{mach-stm => mach-mxs}/Kconfig (95%)
 rename arch/arm/{mach-stm => mach-mxs}/Makefile (100%)
 rename arch/arm/{mach-stm => mach-mxs}/clocksource-imx23.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/clocksource-imx28.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/imx.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/imx_lcd_clk.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/clock-imx23.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/clock-imx28.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/clock.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/fb.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/generic.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/gpio.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/imx-regs.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/imx23-regs.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/imx28-regs.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/iomux-imx23.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/iomux-imx28.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/mci.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/usb.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/iomux-imx.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/reset-imx.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/speed-imx23.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/speed-imx28.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/usb.c (100%)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index cb46edc..bc54e58 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -39,8 +39,8 @@ config ARCH_IMX
 	bool "Freescale iMX-based"
 	select GENERIC_GPIO
 
-config ARCH_STM
-	bool "SigmaTel/FSL iMX-based"
+config ARCH_MXS
+	bool "Freescale i.MX23/28 (mxs) based"
 	select GENERIC_GPIO
 
 config ARCH_NETX
@@ -71,7 +71,7 @@ source arch/arm/cpu/Kconfig
 source arch/arm/mach-at91/Kconfig
 source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-imx/Kconfig
-source arch/arm/mach-stm/Kconfig
+source arch/arm/mach-mxs/Kconfig
 source arch/arm/mach-netx/Kconfig
 source arch/arm/mach-nomadik/Kconfig
 source arch/arm/mach-omap/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 04a8292..57a045f 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -42,7 +42,7 @@ AFLAGS   += -include asm/unified.h
 machine-$(CONFIG_ARCH_AT91)		:= at91
 machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
 machine-$(CONFIG_ARCH_IMX)		:= imx
-machine-$(CONFIG_ARCH_STM)		:= stm
+machine-$(CONFIG_ARCH_MXS)		:= mxs
 machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
 machine-$(CONFIG_ARCH_NETX)		:= netx
 machine-$(CONFIG_ARCH_OMAP)		:= omap
diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
index 45804a8..e06ae51 100644
--- a/arch/arm/configs/chumbyone_defconfig
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -1,4 +1,4 @@
-CONFIG_ARCH_STM=y
+CONFIG_ARCH_MXS=y
 CONFIG_MACH_CHUMBY=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/configs/imx23evk_defconfig b/arch/arm/configs/imx23evk_defconfig
index 047a7e1..2fc6ebe 100644
--- a/arch/arm/configs/imx23evk_defconfig
+++ b/arch/arm/configs/imx23evk_defconfig
@@ -1,4 +1,4 @@
-CONFIG_ARCH_STM=y
+CONFIG_ARCH_MXS=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_BROKEN=y
diff --git a/arch/arm/configs/tx28stk5_defconfig b/arch/arm/configs/tx28stk5_defconfig
index 88ace35..384c1c9 100644
--- a/arch/arm/configs/tx28stk5_defconfig
+++ b/arch/arm/configs/tx28stk5_defconfig
@@ -1,4 +1,4 @@
-CONFIG_ARCH_STM=y
+CONFIG_ARCH_MXS=y
 CONFIG_ARCH_IMX28=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/mach-stm/Kconfig b/arch/arm/mach-mxs/Kconfig
similarity index 95%
rename from arch/arm/mach-stm/Kconfig
rename to arch/arm/mach-mxs/Kconfig
index 402a9b7..f9cefaf 100644
--- a/arch/arm/mach-stm/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -1,4 +1,4 @@
-if ARCH_STM
+if ARCH_MXS
 
 config ARCH_TEXT_BASE
 	hex
@@ -11,7 +11,7 @@ config BOARDINFO
 	default "Chumby Falconwing" if MACH_CHUMBY
 	default "Karo TX28" if MACH_TX28
 
-comment "SigmaTel/Freescale i.MX System-on-Chip"
+comment "Freescale i.MX System-on-Chip"
 
 choice
 	prompt "Freescale i.MX Processor"
diff --git a/arch/arm/mach-stm/Makefile b/arch/arm/mach-mxs/Makefile
similarity index 100%
rename from arch/arm/mach-stm/Makefile
rename to arch/arm/mach-mxs/Makefile
diff --git a/arch/arm/mach-stm/clocksource-imx23.c b/arch/arm/mach-mxs/clocksource-imx23.c
similarity index 100%
rename from arch/arm/mach-stm/clocksource-imx23.c
rename to arch/arm/mach-mxs/clocksource-imx23.c
diff --git a/arch/arm/mach-stm/clocksource-imx28.c b/arch/arm/mach-mxs/clocksource-imx28.c
similarity index 100%
rename from arch/arm/mach-stm/clocksource-imx28.c
rename to arch/arm/mach-mxs/clocksource-imx28.c
diff --git a/arch/arm/mach-stm/imx.c b/arch/arm/mach-mxs/imx.c
similarity index 100%
rename from arch/arm/mach-stm/imx.c
rename to arch/arm/mach-mxs/imx.c
diff --git a/arch/arm/mach-stm/imx_lcd_clk.c b/arch/arm/mach-mxs/imx_lcd_clk.c
similarity index 100%
rename from arch/arm/mach-stm/imx_lcd_clk.c
rename to arch/arm/mach-mxs/imx_lcd_clk.c
diff --git a/arch/arm/mach-stm/include/mach/clock-imx23.h b/arch/arm/mach-mxs/include/mach/clock-imx23.h
similarity index 100%
rename from arch/arm/mach-stm/include/mach/clock-imx23.h
rename to arch/arm/mach-mxs/include/mach/clock-imx23.h
diff --git a/arch/arm/mach-stm/include/mach/clock-imx28.h b/arch/arm/mach-mxs/include/mach/clock-imx28.h
similarity index 100%
rename from arch/arm/mach-stm/include/mach/clock-imx28.h
rename to arch/arm/mach-mxs/include/mach/clock-imx28.h
diff --git a/arch/arm/mach-stm/include/mach/clock.h b/arch/arm/mach-mxs/include/mach/clock.h
similarity index 100%
rename from arch/arm/mach-stm/include/mach/clock.h
rename to arch/arm/mach-mxs/include/mach/clock.h
diff --git a/arch/arm/mach-stm/include/mach/fb.h b/arch/arm/mach-mxs/include/mach/fb.h
similarity index 100%
rename from arch/arm/mach-stm/include/mach/fb.h
rename to arch/arm/mach-mxs/include/mach/fb.h
diff --git a/arch/arm/mach-stm/include/mach/generic.h b/arch/arm/mach-mxs/include/mach/generic.h
similarity index 100%
rename from arch/arm/mach-stm/include/mach/generic.h
rename to arch/arm/mach-mxs/include/mach/generic.h
diff --git a/arch/arm/mach-stm/include/mach/gpio.h b/arch/arm/mach-mxs/include/mach/gpio.h
similarity index 100%
rename from arch/arm/mach-stm/include/mach/gpio.h
rename to arch/arm/mach-mxs/include/mach/gpio.h
diff --git a/arch/arm/mach-stm/include/mach/imx-regs.h b/arch/arm/mach-mxs/include/mach/imx-regs.h
similarity index 100%
rename from arch/arm/mach-stm/include/mach/imx-regs.h
rename to arch/arm/mach-mxs/include/mach/imx-regs.h
diff --git a/arch/arm/mach-stm/include/mach/imx23-regs.h b/arch/arm/mach-mxs/include/mach/imx23-regs.h
similarity index 100%
rename from arch/arm/mach-stm/include/mach/imx23-regs.h
rename to arch/arm/mach-mxs/include/mach/imx23-regs.h
diff --git a/arch/arm/mach-stm/include/mach/imx28-regs.h b/arch/arm/mach-mxs/include/mach/imx28-regs.h
similarity index 100%
rename from arch/arm/mach-stm/include/mach/imx28-regs.h
rename to arch/arm/mach-mxs/include/mach/imx28-regs.h
diff --git a/arch/arm/mach-stm/include/mach/iomux-imx23.h b/arch/arm/mach-mxs/include/mach/iomux-imx23.h
similarity index 100%
rename from arch/arm/mach-stm/include/mach/iomux-imx23.h
rename to arch/arm/mach-mxs/include/mach/iomux-imx23.h
diff --git a/arch/arm/mach-stm/include/mach/iomux-imx28.h b/arch/arm/mach-mxs/include/mach/iomux-imx28.h
similarity index 100%
rename from arch/arm/mach-stm/include/mach/iomux-imx28.h
rename to arch/arm/mach-mxs/include/mach/iomux-imx28.h
diff --git a/arch/arm/mach-stm/include/mach/mci.h b/arch/arm/mach-mxs/include/mach/mci.h
similarity index 100%
rename from arch/arm/mach-stm/include/mach/mci.h
rename to arch/arm/mach-mxs/include/mach/mci.h
diff --git a/arch/arm/mach-stm/include/mach/usb.h b/arch/arm/mach-mxs/include/mach/usb.h
similarity index 100%
rename from arch/arm/mach-stm/include/mach/usb.h
rename to arch/arm/mach-mxs/include/mach/usb.h
diff --git a/arch/arm/mach-stm/iomux-imx.c b/arch/arm/mach-mxs/iomux-imx.c
similarity index 100%
rename from arch/arm/mach-stm/iomux-imx.c
rename to arch/arm/mach-mxs/iomux-imx.c
diff --git a/arch/arm/mach-stm/reset-imx.c b/arch/arm/mach-mxs/reset-imx.c
similarity index 100%
rename from arch/arm/mach-stm/reset-imx.c
rename to arch/arm/mach-mxs/reset-imx.c
diff --git a/arch/arm/mach-stm/speed-imx23.c b/arch/arm/mach-mxs/speed-imx23.c
similarity index 100%
rename from arch/arm/mach-stm/speed-imx23.c
rename to arch/arm/mach-mxs/speed-imx23.c
diff --git a/arch/arm/mach-stm/speed-imx28.c b/arch/arm/mach-mxs/speed-imx28.c
similarity index 100%
rename from arch/arm/mach-stm/speed-imx28.c
rename to arch/arm/mach-mxs/speed-imx28.c
diff --git a/arch/arm/mach-stm/usb.c b/arch/arm/mach-mxs/usb.c
similarity index 100%
rename from arch/arm/mach-stm/usb.c
rename to arch/arm/mach-mxs/usb.c
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index ee04079..7d214ac 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -29,7 +29,7 @@ comment "--- MCI host drivers ---"
 
 config MCI_STM378X
 	bool "i.MX23/i.MX28"
-	depends on ARCH_STM
+	depends on ARCH_MXS
 	help
 	  Enable this entry to add support to read and write SD cards on a
 	  i.MX23/i.MX28 based system.
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 440ef1f..ca72e93 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -33,7 +33,7 @@
 #include <mach/imx-regs.h>
 #include <clock.h>
 #include <mach/clock.h>
-#ifndef CONFIG_ARCH_STM
+#ifndef CONFIG_ARCH_MXS
 # include <mach/iim.h>
 #endif
 #include <xfuncs.h>
@@ -269,7 +269,7 @@ static void fec_rbd_clean(int last, struct buffer_descriptor __iomem *pRbd)
 
 static int fec_get_hwaddr(struct eth_device *dev, unsigned char *mac)
 {
-#ifdef CONFIG_ARCH_STM
+#ifdef CONFIG_ARCH_MXS
 	return -1;
 #else
 	return imx_iim_get_mac(mac);
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 04d9b98..ffd877a 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -19,7 +19,7 @@ config DRIVER_SERIAL_IMX
 	bool "i.MX serial driver"
 
 config DRIVER_SERIAL_STM378X
-	depends on ARCH_STM
+	depends on ARCH_MXS
 	default y
 	bool "i.MX23/i.MX28 serial driver"
 
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index c69308e..c652622 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -22,7 +22,7 @@ config DRIVER_VIDEO_IMX_IPU
 
 config DRIVER_VIDEO_STM
 	bool "i.MX23/28 framebuffer driver"
-	depends on ARCH_STM
+	depends on ARCH_MXS
 	help
 	  Say 'Y' here to enable framebuffer and splash screen support for
 	  i.MX23 and i.MX28 based systems.
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
