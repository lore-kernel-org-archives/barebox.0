Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLB8d-0008Jf-9F
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 11:04:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 13:04:40 +0200
Message-Id: <1349694280-31594-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349694280-31594-1-git-send-email-s.hauer@pengutronix.de>
References: <1349694280-31594-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM i.MX: move reset source detection code
To: barebox@lists.infradead.org

- for i.MX1 the register is in the System Control unit, so move
  the code to arch/arm/mach-imx/imx1.c
- for the other i.MX the register is in the watchdog unit, so move
  the code to drivers/watchdog/imxwd.c

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile       |    1 -
 arch/arm/mach-imx/imx1.c         |   27 ++++++++++++++
 arch/arm/mach-imx/reset_source.c |   72 --------------------------------------
 drivers/watchdog/imxwd.c         |   34 ++++++++++++++++++
 4 files changed, 61 insertions(+), 73 deletions(-)
 delete mode 100644 arch/arm/mach-imx/reset_source.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index e43f92e..517a5a7 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -1,5 +1,4 @@
 obj-y += clocksource.o gpio.o
-obj-$(CONFIG_RESET_SOURCE) += reset_source.o
 obj-$(CONFIG_ARCH_IMX1)  += imx1.o  iomux-v1.o clk-imx1.o
 obj-$(CONFIG_ARCH_IMX25) += imx25.o iomux-v3.o clk-imx25.o
 obj-$(CONFIG_ARCH_IMX21) += imx21.o iomux-v1.o clk-imx21.o
diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index 2b2b924..7ac16fd 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -16,6 +16,31 @@
 #include <io.h>
 #include <mach/imx-regs.h>
 #include <mach/weim.h>
+#include <reset_source.h>
+
+#define MX1_RSR MX1_SCM_BASE_ADDR
+#define RSR_EXR	(1 << 0)
+#define RSR_WDR	(1 << 1)
+
+static void imx1_detect_reset_source(void)
+{
+	u32 val = readl((void *)MX1_RSR) & 0x3;
+
+	switch (val) {
+	case RSR_EXR:
+		set_reset_source(RESET_RST);
+		return;
+	case RSR_WDR:
+		set_reset_source(RESET_WDG);
+		return;
+	case 0:
+		set_reset_source(RESET_POR);
+		return;
+	default:
+		/* else keep the default 'unknown' state */
+		return;
+	}
+}
 
 void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 {
@@ -25,6 +50,8 @@ void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 
 static int imx1_init(void)
 {
+	imx1_detect_reset_source();
+
 	add_generic_device("imx1-ccm", 0, NULL, MX1_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpt", 0, NULL, MX1_TIM1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 0, NULL, MX1_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/reset_source.c b/arch/arm/mach-imx/reset_source.c
deleted file mode 100644
index e7b2a90..0000000
--- a/arch/arm/mach-imx/reset_source.c
+++ /dev/null
@@ -1,72 +0,0 @@
-/*
- * (C) Copyright 2012 Juergen Beisert - <kernel@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <reset_source.h>
-#include <mach/imx-regs.h>
-
-#ifdef CONFIG_ARCH_IMX1
-#  define IMX_RESET_SRC_WDOG (1 << 1)
-#  define IMX_RESET_SRC_HRDRESET (1 << 0)
-/* let the compiler sort out useless code on this arch */
-#  define IMX_RESET_SRC_WARMSTART 0
-#  define IMX_RESET_SRC_COLDSTART 0
-#else
-  /* WRSR checked for i.MX25, i.MX27, i.MX31, i.MX35 and i.MX51 */
-# define WDOG_WRSR 0x04
-  /* valid for i.MX25, i.MX27, i.MX31, i.MX35, i.MX51 */
-#  define IMX_RESET_SRC_WARMSTART (1 << 0)
-  /* valid for i.MX25, i.MX27, i.MX31, i.MX35, i.MX51 */
-#  define IMX_RESET_SRC_WDOG (1 << 1)
-  /* valid for i.MX27, i.MX31, always '0' on i.MX25, i.MX35, i.MX51 */
-#  define IMX_RESET_SRC_HRDRESET (1 << 3)
-  /* valid for i.MX27, i.MX31, always '0' on i.MX25, i.MX35, i.MX51 */
-#  define IMX_RESET_SRC_COLDSTART (1 << 4)
-#endif
-
-static unsigned read_detection_register(void)
-{
-#ifdef CONFIG_ARCH_IMX1
-	return readl(IMX_SYSCTRL_BASE);
-#else
-	return readw(IMX_WDT_BASE + WDOG_WRSR);
-#endif
-}
-
-static int imx_detect_reset_source(void)
-{
-	unsigned reg = read_detection_register();
-
-	if (reg & IMX_RESET_SRC_COLDSTART) {
-		set_reset_source(RESET_POR);
-		return 0;
-	}
-
-	if (reg & (IMX_RESET_SRC_HRDRESET | IMX_RESET_SRC_WARMSTART)) {
-		set_reset_source(RESET_RST);
-		return 0;
-	}
-
-	if (reg & IMX_RESET_SRC_WDOG) {
-		set_reset_source(RESET_WDG);
-		return 0;
-	}
-
-	/* else keep the default 'unknown' state */
-	return 0;
-}
-
-device_initcall(imx_detect_reset_source);
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 7bbb86c..c422f98 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -42,6 +42,15 @@ struct imx_wd {
 #define IMX21_WDOG_WCR_SRS	(1 << 4)
 #define IMX21_WDOG_WCR_WDA	(1 << 5)
 
+/* valid for i.MX25, i.MX27, i.MX31, i.MX35, i.MX51 */
+#define WSTR_WARMSTART	(1 << 0)
+/* valid for i.MX25, i.MX27, i.MX31, i.MX35, i.MX51 */
+#define WSTR_WDOG	(1 << 1)
+/* valid for i.MX27, i.MX31, always '0' on i.MX25, i.MX35, i.MX51 */
+#define WSTR_HARDRESET	(1 << 3)
+/* valid for i.MX27, i.MX31, always '0' on i.MX25, i.MX35, i.MX51 */
+#define WSTR_COLDSTART	(1 << 4)
+
 static int imx1_watchdog_set_timeout(struct imx_wd *priv, int timeout)
 {
 	u16 val;
@@ -115,6 +124,28 @@ void __noreturn reset_cpu(unsigned long addr)
 	hang();
 }
 
+static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
+{
+	u16 val = readw(priv->base + IMX21_WDOG_WSTR);
+
+	if (val & WSTR_COLDSTART) {
+		set_reset_source(RESET_POR);
+		return;
+	}
+
+	if (val & (WSTR_HARDRESET | WSTR_WARMSTART)) {
+		set_reset_source(RESET_RST);
+		return;
+	}
+
+	if (val & WSTR_WDOG) {
+		set_reset_source(RESET_WDG);
+		return;
+	}
+
+	/* else keep the default 'unknown' state */
+}
+
 static int imx_wd_probe(struct device_d *dev)
 {
 	struct imx_wd *priv;
@@ -140,6 +171,9 @@ static int imx_wd_probe(struct device_d *dev)
 			goto on_error;
 	}
 
+	if (fn != imx1_watchdog_set_timeout)
+		imx_watchdog_detect_reset_source(priv);
+
 	dev->priv = priv;
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
