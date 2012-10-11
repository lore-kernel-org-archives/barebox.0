Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxm-0008Q8-Uq
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:13:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:36 +0200
Message-Id: <1349939621-17793-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
References: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/13] ARM i.MX1: Cleanup remaining unprefixed registers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/scb9328/lowlevel_init.S    |   29 +++++++++++++----------
 arch/arm/boards/scb9328/scb9328.c          |    4 ++--
 arch/arm/mach-imx/include/mach/imx1-regs.h |   35 ++++++++++++++--------------
 3 files changed, 36 insertions(+), 32 deletions(-)

diff --git a/arch/arm/boards/scb9328/lowlevel_init.S b/arch/arm/boards/scb9328/lowlevel_init.S
index fabc89e..c303d2d 100644
--- a/arch/arm/boards/scb9328/lowlevel_init.S
+++ b/arch/arm/boards/scb9328/lowlevel_init.S
@@ -82,13 +82,13 @@ reset:
 	common_reset r0
 
 	/* Change PERCLK1DIV to 14 ie 14+1 */
-	writel(CFG_PCDR_VAL, PCDR)
+	writel(CFG_PCDR_VAL, MX1_CCM_BASE_ADDR + MX1_PCDR)
 
 	/* set MCU PLL Control Register 0 */
-	writel(CFG_MPCTL0_VAL, MPCTL0)
+	writel(CFG_MPCTL0_VAL, MX1_CCM_BASE_ADDR + MX1_MPCTL0)
 
 	/* set mpll restart bit */
-	ldr		r0, =CSCR
+	ldr		r0, =MX1_CCM_BASE_ADDR + MX1_CSCR
 	ldr		r1, [r0]
 	orr		r1,r1,#(1<<21)
 	str		r1, [r0]
@@ -104,10 +104,10 @@ reset:
 	bne		1b
 
 	/* set System PLL Control Register 0 */
-	writel(CFG_SPCTL0_VAL, SPCTL0)
+	writel(CFG_SPCTL0_VAL, MX1_CCM_BASE_ADDR + MX1_SPCTL0)
 
 	/* set spll restart bit */
-	ldr		r0, =CSCR
+	ldr		r0, =MX1_CCM_BASE_ADDR + MX1_CSCR
 	ldr		r1, [r0]
 	orr		r1,r1,#(1<<22)
 	str		r1, [r0]
@@ -122,7 +122,7 @@ reset:
 	subs	r2,r2,#1
 	bne		1b
 
-	writel(CFG_CSCR_VAL, CSCR)
+	writel(CFG_CSCR_VAL, MX1_CCM_BASE_ADDR + MX1_CSCR)
 
 /* I have now read the ARM920 DataSheet back-to-Back, and have stumbled upon
  *this.....
@@ -157,9 +157,12 @@ reset:
 
 /* SDRAM Setup */
 
-	writel(0x910a8200, SDCTL0) /* Precharge cmd, CAS = 2 */
-	writel(0x0, 0x08200000) /* Issue Precharge all Command */
-	writel(0xa10a8200, SDCTL0) /* Autorefresh cmd, CAS = 2 */
+	/* Precharge cmd, CAS = 2 */
+	writel(0x910a8200, MX1_SDRAMC_BASE_ADDR + MX1_SDCTL0)
+	/* Issue Precharge all Command */
+	writel(0x0, 0x08200000)
+	/* Autorefresh cmd, CAS = 2 */
+	writel(0xa10a8200, MX1_SDRAMC_BASE_ADDR + MX1_SDCTL0)
 
 	ldr		r0, =0x08000000
 	ldr		r1, =0x0 /* Issue AutoRefresh Command */
@@ -172,8 +175,10 @@ reset:
 	str		r1,   [r0]
 	str		r1,   [r0]
 
-	writel(0xb10a8300, SDCTL0)
-	writel(0x0, 0x08223000) /* CAS Latency 2, issue Mode Register Command, Burst Length = 8 */
-	writel(0x810a8200, SDCTL0) /* Set to Normal Mode CAS 2 */
+	writel(0xb10a8300, MX1_SDRAMC_BASE_ADDR + MX1_SDCTL0)
+	/* CAS Latency 2, issue Mode Register Command, Burst Length = 8 */
+	writel(0x0, 0x08223000)
+	/* Set to Normal Mode CAS 2 */
+	writel(0x810a8200, MX1_SDRAMC_BASE_ADDR + MX1_SDCTL0)
 
 	b board_init_lowlevel_return
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 1a85554..fd2758c 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -69,8 +69,8 @@ static int scb9328_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(leds); i++)
 		led_gpio_register(&leds[i]);
 
-/* CS3 becomes CS3 by clearing reset default bit 1 in FMCR */
-	FMCR = 0x1;
+	/* CS3 becomes CS3 by clearing reset default bit 1 in FMCR */
+	writel(0x1, MX1_SCM_BASE_ADDR + MX1_FMCR);
 
 	imx1_setup_eimcs(0, 0x000F2000, 0x11110d01);
 	imx1_setup_eimcs(1, 0x000F0a00, 0x11110601);
diff --git a/arch/arm/mach-imx/include/mach/imx1-regs.h b/arch/arm/mach-imx/include/mach/imx1-regs.h
index 5d9de1a..df6ede5 100644
--- a/arch/arm/mach-imx/include/mach/imx1-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx1-regs.h
@@ -59,26 +59,25 @@
 #define MX1_AVIC_BASE_ADDR		(0x23000 + MX1_IO_BASE_ADDR)
 #define MX1_CSI_BASE_ADDR		(0x24000 + MX1_IO_BASE_ADDR)
 
-/* SYSCTRL Registers */
-#define SIDR   __REG(MX1_SCM_BASE_ADDR + 0x4) /* Silicon ID Register		    */
-#define FMCR   __REG(MX1_SCM_BASE_ADDR + 0x8) /* Function Multiplex Control Register */
-#define GPCR   __REG(MX1_SCM_BASE_ADDR + 0xC) /* Function Multiplex Control Register */
+/* SYSCTRL Registers (base MX1_SCM_BASE_ADDR) */
+#define MX1_SIDR   0x4 /* Silicon ID Register		    */
+#define MX1_FMCR   0x8 /* Function Multiplex Control Register */
+#define MX1_GPCR   0xC /* Function Multiplex Control Register */
 
-/* SDRAM controller registers */
+/* SDRAM controller registers (base MX1_SDRAMC_BASE_ADDR) */
+#define MX1_SDCTL0 0x0	/* SDRAM 0 Control Register */
+#define MX1_SDCTL1 0x4	/* SDRAM 1 Control Register */
+#define MX1_SDMISC 0x14	/* Miscellaneous Register */
+#define MX1_SDRST  0x18	/* SDRAM Reset Register */
 
-#define SDCTL0 __REG(MX1_SDRAMC_BASE_ADDR)        /* SDRAM 0 Control Register */
-#define SDCTL1 __REG(MX1_SDRAMC_BASE_ADDR + 0x4)  /* SDRAM 1 Control Register */
-#define SDMISC __REG(MX1_SDRAMC_BASE_ADDR + 0x14) /* Miscellaneous Register */
-#define SDRST  __REG(MX1_SDRAMC_BASE_ADDR + 0x18) /* SDRAM Reset Register */
+/* PLL registers (base MX1_CCM_BASE_ADDR) */
+#define MX1_CSCR   0x0	/* Clock Source Control Register */
+#define MX1_MPCTL0 0x4	/* MCU PLL Control Register 0 */
+#define MX1_MPCTL1 0x8	/* MCU PLL and System Clock Register 1 */
+#define MX1_SPCTL0 0xc	/* System PLL Control Register 0 */
+#define MX1_SPCTL1 0x10	/* System PLL Control Register 1 */
+#define MX1_PCDR   0x20	/* Peripheral Clock Divider Register */
 
-/* PLL registers */
-#define CSCR   __REG(MX1_CCM_BASE_ADDR)        /* Clock Source Control Register */
-#define MPCTL0 __REG(MX1_CCM_BASE_ADDR + 0x4)  /* MCU PLL Control Register 0 */
-#define MPCTL1 __REG(MX1_CCM_BASE_ADDR + 0x8)  /* MCU PLL and System Clock Register 1 */
-#define SPCTL0 __REG(MX1_CCM_BASE_ADDR + 0xc)  /* System PLL Control Register 0 */
-#define SPCTL1 __REG(MX1_CCM_BASE_ADDR + 0x10) /* System PLL Control Register 1 */
-#define PCDR   __REG(MX1_CCM_BASE_ADDR + 0x20) /* Peripheral Clock Divider Register */
-
-#define CSCR_MPLL_RESTART (1<<21)
+#define MX1_CSCR_MPLL_RESTART (1<<21)
 
 #endif /* _IMX1_REGS_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
