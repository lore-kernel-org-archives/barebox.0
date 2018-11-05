Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJhA7-0000PP-Es
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:50:59 +0100
Message-Id: <20181105155113.3434-9-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/22] ARM: at91: consolidate phy reset functions
To: Barebox List <barebox@lists.infradead.org>

Many boards have the same ethernet phy reset function, so share the code
in a common function.
While at it remove the AT91_RSTC offset from the rstc register defines.
AT91_RSTC was the offset between the AT91_SYSTEM_BASE and the reset
controller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/animeo_ip/init.c              | 20 +--------------
 arch/arm/boards/at91sam9260ek/init.c          | 21 +---------------
 arch/arm/boards/dss11/init.c                  | 22 +---------------
 arch/arm/boards/haba-knx/init.c               | 23 +----------------
 arch/arm/boards/qil-a926x/init.c              | 22 +---------------
 arch/arm/boards/telit-evk-pro3/init.c         | 21 +---------------
 arch/arm/boards/usb-a926x/init.c              | 24 +++---------------
 arch/arm/mach-at91/at91sam9_reset.S           |  2 +-
 arch/arm/mach-at91/at91sam9g45_reset.S        |  2 +-
 arch/arm/mach-at91/include/mach/at91_rstc.h   |  6 ++---
 .../include/mach/at91sam926x_board_init.h     |  2 +-
 arch/arm/mach-at91/include/mach/board.h       |  3 +++
 arch/arm/mach-at91/setup.c                    | 25 +++++++++++++++++++
 13 files changed, 43 insertions(+), 150 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 847417398a..775c818df6 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -231,30 +231,12 @@ static void animeo_ip_power_control(void)
 
 static void animeo_ip_phy_reset(void)
 {
-	unsigned long rstc;
 	int i;
-	struct clk *clk = clk_get(NULL, "macb_clk");
-
-	clk_enable(clk);
 
 	for (i = AT91_PIN_PA12; i <= AT91_PIN_PA29; i++)
 		at91_set_gpio_input(i, 0);
 
-	rstc = at91_sys_read(AT91_RSTC_MR) & AT91_RSTC_ERSTL;
-
-	/* Need to reset PHY -> 500ms reset */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (AT91_RSTC_ERSTL & (0x0d << 8)) |
-				     AT91_RSTC_URSTEN);
-
-	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
-
-	/* Wait for end hardware reset */
-	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL))
-		;
-
-	/* Restore NRST value */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY | (rstc) | AT91_RSTC_URSTEN);
+	at91sam_phy_reset(IOMEM(AT91SAM9260_BASE_RSTC));
 }
 
 #define MACB_SA1B	0x0098
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 5a21ac12fe..de74835d78 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -125,11 +125,6 @@ static struct macb_platform_data macb_pdata = {
 
 static void at91sam9260ek_phy_reset(void)
 {
-	unsigned long rstc;
-	struct clk *clk = clk_get(NULL, "macb_clk");
-
-	clk_enable(clk);
-
 	at91_set_gpio_input(AT91_PIN_PA14, 0);
 	at91_set_gpio_input(AT91_PIN_PA15, 0);
 	at91_set_gpio_input(AT91_PIN_PA17, 0);
@@ -137,21 +132,7 @@ static void at91sam9260ek_phy_reset(void)
 	at91_set_gpio_input(AT91_PIN_PA26, 0);
 	at91_set_gpio_input(AT91_PIN_PA28, 0);
 
-	rstc = at91_sys_read(AT91_RSTC_MR) & AT91_RSTC_ERSTL;
-
-	/* Need to reset PHY -> 500ms reset */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (AT91_RSTC_ERSTL & (0x0d << 8)) |
-				     AT91_RSTC_URSTEN);
-
-	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
-
-	/* Wait for end hardware reset */
-	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL))
-		;
-
-	/* Restore NRST value */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY | (rstc) | AT91_RSTC_URSTEN);
+	at91sam_phy_reset(IOMEM(AT91SAM9260_BASE_RSTC));
 }
 
 /*
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 321c383ffc..432613ff4a 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -80,11 +80,6 @@ static struct macb_platform_data macb_pdata = {
 
 static void dss11_phy_reset(void)
 {
-	unsigned long rstc;
-	struct clk *clk = clk_get(NULL, "macb_clk");
-
-	clk_enable(clk);
-
 	at91_set_gpio_input(AT91_PIN_PA14, 0);
 	at91_set_gpio_input(AT91_PIN_PA15, 0);
 	at91_set_gpio_input(AT91_PIN_PA17, 0);
@@ -92,22 +87,7 @@ static void dss11_phy_reset(void)
 	at91_set_gpio_input(AT91_PIN_PA26, 0);
 	at91_set_gpio_input(AT91_PIN_PA28, 0);
 
-	rstc = at91_sys_read(AT91_RSTC_MR) & AT91_RSTC_ERSTL;
-
-	/* Need to reset PHY -> 500ms reset */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (AT91_RSTC_ERSTL & (0x0d << 8)) |
-				     AT91_RSTC_URSTEN);
-
-	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
-
-	/* Wait for end hardware reset */
-	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL));
-
-	/* Restore NRST value */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (rstc) |
-				     AT91_RSTC_URSTEN);
+	at91sam_phy_reset(IOMEM(AT91SAM9260_BASE_RSTC));
 }
 
 static struct atmel_mci_platform_data dss11_mci_data = {
diff --git a/arch/arm/boards/haba-knx/init.c b/arch/arm/boards/haba-knx/init.c
index 36f1e8b741..4a000d9aed 100644
--- a/arch/arm/boards/haba-knx/init.c
+++ b/arch/arm/boards/haba-knx/init.c
@@ -91,33 +91,12 @@ static struct macb_platform_data macb_pdata = {
 
 static void haba_knx_phy_reset(void)
 {
-	unsigned long rstc;
-	struct clk *clk = clk_get(NULL, "macb_clk");
-
-	clk_enable(clk);
-
 	at91_set_gpio_input(AT91_PIN_PA14, 0);
 	at91_set_gpio_input(AT91_PIN_PA15, 0);
 	at91_set_gpio_input(AT91_PIN_PA17, 0);
 	at91_set_gpio_input(AT91_PIN_PA18, 0);
 
-	rstc = at91_sys_read(AT91_RSTC_MR) & AT91_RSTC_ERSTL;
-
-	/* Need to reset PHY -> 500ms reset */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (AT91_RSTC_ERSTL & (0x0d << 8)) |
-				     AT91_RSTC_URSTEN);
-
-	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
-
-	/* Wait for end hardware reset */
-	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL))
-		;
-
-	/* Restore NRST value */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (rstc) |
-				     AT91_RSTC_URSTEN);
+	at91sam_phy_reset(IOMEM(AT91SAM9260_BASE_RSTC));
 }
 
 #define MACB_SA1B	0x0098
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index 3ef9872797..6fa0df033e 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -118,11 +118,6 @@ static struct macb_platform_data macb_pdata = {
 
 static void qil_a9260_phy_reset(void)
 {
-	unsigned long rstc;
-	struct clk *clk = clk_get(NULL, "macb_clk");
-
-	clk_enable(clk);
-
 	at91_set_gpio_input(AT91_PIN_PA14, 0);
 	at91_set_gpio_input(AT91_PIN_PA15, 0);
 	at91_set_gpio_input(AT91_PIN_PA17, 0);
@@ -130,22 +125,7 @@ static void qil_a9260_phy_reset(void)
 	at91_set_gpio_input(AT91_PIN_PA26, 0);
 	at91_set_gpio_input(AT91_PIN_PA28, 0);
 
-	rstc = at91_sys_read(AT91_RSTC_MR) & AT91_RSTC_ERSTL;
-
-	/* Need to reset PHY -> 500ms reset */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (AT91_RSTC_ERSTL & (0x0d << 8)) |
-				     AT91_RSTC_URSTEN);
-
-	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
-
-	/* Wait for end hardware reset */
-	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL));
-
-	/* Restore NRST value */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (rstc) |
-				     AT91_RSTC_URSTEN);
+	at91sam_phy_reset(IOMEM(AT91SAM9260_BASE_RSTC));
 }
 
 /*
diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
index ea63b1a094..4f536079cc 100644
--- a/arch/arm/boards/telit-evk-pro3/init.c
+++ b/arch/arm/boards/telit-evk-pro3/init.c
@@ -72,11 +72,6 @@ static struct macb_platform_data macb_pdata = {
 
 static void evk_phy_reset(void)
 {
-	unsigned long rstc;
-	struct clk *clk = clk_get(NULL, "macb_clk");
-
-	clk_enable(clk);
-
 	at91_set_gpio_input(AT91_PIN_PA14, 0);
 	at91_set_gpio_input(AT91_PIN_PA15, 0);
 	at91_set_gpio_input(AT91_PIN_PA17, 0);
@@ -84,21 +79,7 @@ static void evk_phy_reset(void)
 	at91_set_gpio_input(AT91_PIN_PA26, 0);
 	at91_set_gpio_input(AT91_PIN_PA28, 0);
 
-	rstc = at91_sys_read(AT91_RSTC_MR) & AT91_RSTC_ERSTL;
-
-	/* Need to reset PHY -> 500ms reset */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (AT91_RSTC_ERSTL & (0x0d << 8)) |
-				     AT91_RSTC_URSTEN);
-
-	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
-
-	/* Wait for end hardware reset */
-	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL))
-		;
-
-	/* Restore NRST value */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY | (rstc) | AT91_RSTC_URSTEN);
+	at91sam_phy_reset(IOMEM(AT91SAM9260_BASE_RSTC));
 }
 
 /*
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 12e8f4e0d6..e431cd4603 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -26,6 +26,7 @@
 #include <io.h>
 #include <envfs.h>
 #include <mach/hardware.h>
+#include <mach/at91sam926x.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
@@ -128,11 +129,6 @@ static struct macb_platform_data macb_pdata = {
 
 static void usb_a9260_phy_reset(void)
 {
-	unsigned long rstc;
-	struct clk *clk = clk_get(NULL, "macb_clk");
-
-	clk_enable(clk);
-
 	at91_set_gpio_input(AT91_PIN_PA14, 0);
 	at91_set_gpio_input(AT91_PIN_PA15, 0);
 	at91_set_gpio_input(AT91_PIN_PA17, 0);
@@ -140,22 +136,8 @@ static void usb_a9260_phy_reset(void)
 	at91_set_gpio_input(AT91_PIN_PA26, 0);
 	at91_set_gpio_input(AT91_PIN_PA28, 0);
 
-	rstc = at91_sys_read(AT91_RSTC_MR) & AT91_RSTC_ERSTL;
-
-	/* Need to reset PHY -> 500ms reset */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (AT91_RSTC_ERSTL & (0x0d << 8)) |
-				     AT91_RSTC_URSTEN);
-
-	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
-
-	/* Wait for end hardware reset */
-	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL));
-
-	/* Restore NRST value */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (rstc) |
-				     AT91_RSTC_URSTEN);
+	/* same address for the different supported SoCs */
+	at91sam_phy_reset(IOMEM(AT91SAM926X_BASE_RSTC));
 }
 
 static void usb_a9260_add_device_eth(void)
diff --git a/arch/arm/mach-at91/at91sam9_reset.S b/arch/arm/mach-at91/at91sam9_reset.S
index 890545edbf..c10674aa40 100644
--- a/arch/arm/mach-at91/at91sam9_reset.S
+++ b/arch/arm/mach-at91/at91sam9_reset.S
@@ -40,4 +40,4 @@ restart_sam9:		ldr	r0, .at91_va_base_sdramc			@ preload constants
 .at91_va_base_sdramc:
 	.word AT91_BASE_SYS + AT91_SDRAMC
 .at91_va_base_rstc_cr:
-	.word AT91_BASE_SYS + AT91_RSTC_CR
+	.word AT91_BASE_SYS + AT91_RSTC + AT91_RSTC_CR
diff --git a/arch/arm/mach-at91/at91sam9g45_reset.S b/arch/arm/mach-at91/at91sam9g45_reset.S
index 2cb113cdb4..be2ad9d396 100644
--- a/arch/arm/mach-at91/at91sam9g45_reset.S
+++ b/arch/arm/mach-at91/at91sam9g45_reset.S
@@ -37,4 +37,4 @@ restart_sam9g45:	ldr	r0, .at91_va_base_sdramc	@ preload constants
 .at91_va_base_sdramc:
 	.word AT91_BASE_SYS + AT91_DDRSDRC0
 .at91_va_base_rstc_cr:
-	.word AT91_BASE_SYS + AT91_RSTC_CR
+	.word AT91_BASE_SYS + AT91_RSTC + AT91_RSTC_CR
diff --git a/arch/arm/mach-at91/include/mach/at91_rstc.h b/arch/arm/mach-at91/include/mach/at91_rstc.h
index e49caef921..d67bed5213 100644
--- a/arch/arm/mach-at91/include/mach/at91_rstc.h
+++ b/arch/arm/mach-at91/include/mach/at91_rstc.h
@@ -16,13 +16,13 @@
 #ifndef AT91_RSTC_H
 #define AT91_RSTC_H
 
-#define AT91_RSTC_CR		(AT91_RSTC + 0x00)	/* Reset Controller Control Register */
+#define AT91_RSTC_CR		(0x00)	/* Reset Controller Control Register */
 #define		AT91_RSTC_PROCRST	(1 << 0)		/* Processor Reset */
 #define		AT91_RSTC_PERRST	(1 << 2)		/* Peripheral Reset */
 #define		AT91_RSTC_EXTRST	(1 << 3)		/* External Reset */
 #define		AT91_RSTC_KEY		(0xa5 << 24)		/* KEY Password */
 
-#define AT91_RSTC_SR		(AT91_RSTC + 0x04)	/* Reset Controller Status Register */
+#define AT91_RSTC_SR		(0x04)	/* Reset Controller Status Register */
 #define		AT91_RSTC_URSTS		(1 << 0)		/* User Reset Status */
 #define		AT91_RSTC_RSTTYP	(7 << 8)		/* Reset Type */
 #define			AT91_RSTC_RSTTYP_GENERAL	(0 << 8)
@@ -33,7 +33,7 @@
 #define		AT91_RSTC_NRSTL		(1 << 16)		/* NRST Pin Level */
 #define		AT91_RSTC_SRCMP		(1 << 17)		/* Software Reset Command in Progress */
 
-#define AT91_RSTC_MR		(AT91_RSTC + 0x08)	/* Reset Controller Mode Register */
+#define AT91_RSTC_MR		(0x08)	/* Reset Controller Mode Register */
 #define		AT91_RSTC_URSTEN	(1 << 0)		/* User Reset Enable */
 #define		AT91_RSTC_URSTIEN	(1 << 4)		/* User Reset Interrupt Enable */
 #define		AT91_RSTC_ERSTL		(0xf << 8)		/* External Reset Length */
diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
index b93b37d8c7..42bb6a04c1 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -170,7 +170,7 @@ static void __always_inline at91sam926x_board_init(struct at91sam926x_board_cfg
 	at91sam926x_sdramc_init(cfg);
 
 	/* User reset enable*/
-	at91_sys_write(AT91_RSTC_MR, cfg->rstc_rmr);
+	writel(cfg->rstc_rmr, AT91SAM926X_BASE_RSTC + AT91_RSTC_MR);
 
 	/*
 	 * When boot from external boot
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 7735a6f38b..56c86f0bfb 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -164,4 +164,7 @@ struct at91_spi_platform_data {
 void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata);
 
 void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data);
+
+void at91sam_phy_reset(void __iomem *rstc_base);
+
 #endif
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 7a19c45ea4..0cc3cc3dec 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -9,10 +9,12 @@
 #include <io.h>
 #include <init.h>
 #include <restart.h>
+#include <linux/clk.h>
 
 #include <mach/hardware.h>
 #include <mach/cpu.h>
 #include <mach/at91_dbgu.h>
+#include <mach/at91_rstc.h>
 
 #include "generic.h"
 
@@ -300,3 +302,26 @@ static int at91_soc_device(void)
 	return 0;
 }
 coredevice_initcall(at91_soc_device);
+
+void at91sam_phy_reset(void __iomem *rstc_base)
+{
+	unsigned long rstc;
+	struct clk *clk = clk_get(NULL, "macb_clk");
+
+	clk_enable(clk);
+
+	rstc = readl(rstc_base + AT91_RSTC_MR) & AT91_RSTC_ERSTL;
+
+	/* Need to reset PHY -> 500ms reset */
+	writel(AT91_RSTC_KEY | (AT91_RSTC_ERSTL & (0x0d << 8)) | AT91_RSTC_URSTEN,
+		rstc_base + AT91_RSTC_MR);
+
+	writel(AT91_RSTC_KEY | AT91_RSTC_EXTRST, rstc_base + AT91_RSTC_CR);
+
+	/* Wait for end hardware reset */
+	while (!(readl(rstc_base + AT91_RSTC_SR) & AT91_RSTC_NRSTL))
+		;
+
+	/* Restore NRST value */
+	writel(AT91_RSTC_KEY | (rstc) | AT91_RSTC_URSTEN, rstc_base + AT91_RSTC_MR);
+}
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
