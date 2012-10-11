Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxm-0008Q5-SJ
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:14:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:35 +0200
Message-Id: <1349939621-17793-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/13] ARM i.MX: remove unused improperly prefixed register
 defines
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx25-3-stack/3stack.c |    4 ++--
 arch/arm/boards/guf-cupid/lowlevel.c            |    2 +-
 arch/arm/mach-imx/external-nand-boot.c          |    2 +-
 arch/arm/mach-imx/include/mach/imx1-regs.h      |    5 -----
 arch/arm/mach-imx/include/mach/imx21-regs.h     |    6 ------
 arch/arm/mach-imx/include/mach/imx25-regs.h     |   17 -----------------
 arch/arm/mach-imx/include/mach/imx27-regs.h     |    6 ------
 arch/arm/mach-imx/include/mach/imx31-regs.h     |    7 -------
 arch/arm/mach-imx/include/mach/imx35-regs.h     |    8 --------
 arch/arm/mach-imx/include/mach/imx51-regs.h     |    4 ----
 arch/arm/mach-imx/include/mach/imx53-regs.h     |    4 ----
 arch/arm/mach-imx/include/mach/imx6-regs.h      |    6 ------
 12 files changed, 4 insertions(+), 67 deletions(-)

diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index f5af7c5..8b3c43d 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -167,8 +167,8 @@ static int imx25_3ds_fec_init(void)
 	 * FEC_RESET_B: gpio2[3] is ALT 5 mode of pin A17
 	 * FEC_ENABLE_B: gpio4[8] is ALT 5 mode of pin D12
 	 */
-	writel(0x8, IMX_IOMUXC_BASE + 0x0238); /* open drain */
-	writel(0x0, IMX_IOMUXC_BASE + 0x028C); /* cmos, no pu/pd */
+	writel(0x8, MX25_IOMUXC_BASE_ADDR + 0x0238); /* open drain */
+	writel(0x0, MX25_IOMUXC_BASE_ADDR + 0x028C); /* cmos, no pu/pd */
 
 #define FEC_ENABLE_GPIO		35
 #define FEC_RESET_B_GPIO	104
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index 900bdf9..22ebaa0 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -187,7 +187,7 @@ static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_ad
 void __bare_init __naked reset(void)
 {
 	u32 r0, r1;
-	void *iomuxc_base = (void *)IMX_IOMUXC_BASE;
+	void *iomuxc_base = (void *)MX35_IOMUXC_BASE_ADDR;
 	int i;
 #ifdef CONFIG_NAND_IMX_BOOT
 	unsigned int *trg, *src;
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 7fed26f..d3f2637 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -116,7 +116,7 @@ static void __bare_init __memcpy32(void *trg, const void *src, int size)
 static int __maybe_unused is_pagesize_2k(void)
 {
 #ifdef CONFIG_ARCH_IMX21
-	if (readl(IMX_SYSTEM_CTL_BASE + 0x14) & (1 << 5))
+	if (readl(MX21_SYSCTRL_BASE_ADDR + 0x14) & (1 << 5))
 		return 1;
 	else
 		return 0;
diff --git a/arch/arm/mach-imx/include/mach/imx1-regs.h b/arch/arm/mach-imx/include/mach/imx1-regs.h
index a4d1690..5d9de1a 100644
--- a/arch/arm/mach-imx/include/mach/imx1-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx1-regs.h
@@ -59,11 +59,6 @@
 #define MX1_AVIC_BASE_ADDR		(0x23000 + MX1_IO_BASE_ADDR)
 #define MX1_CSI_BASE_ADDR		(0x24000 + MX1_IO_BASE_ADDR)
 
-/* FIXME: get rid of these */
-#define IMX_TIM1_BASE	MX1_CCM_BASE_ADDR
-#define IMX_WDT_BASE	MX1_WDT_BASE_ADDR
-#define IMX_GPIO_BASE	MX1_GPIO_BASE_ADDR
-
 /* SYSCTRL Registers */
 #define SIDR   __REG(MX1_SCM_BASE_ADDR + 0x4) /* Silicon ID Register		    */
 #define FMCR   __REG(MX1_SCM_BASE_ADDR + 0x8) /* Function Multiplex Control Register */
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h b/arch/arm/mach-imx/include/mach/imx21-regs.h
index 9952b8b..0b8ff22 100644
--- a/arch/arm/mach-imx/include/mach/imx21-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
@@ -71,12 +71,6 @@
 
 #define MX21_IRAM_BASE_ADDR		0xffffe800	/* internal ram */
 
-/* FIXME: Get rid of these */
-#define IMX_GPIO_BASE MX21_GPIO_BASE_ADDR
-#define IMX_TIM1_BASE MX21_GPT1_BASE_ADDR
-#define IMX_WDT_BASE MX21_WDOG_BASE_ADDR
-#define IMX_SYSTEM_CTL_BASE MX21_SYSCTRL_BASE_ADDR
-
 /* AIPI */
 #define AIPI1_PSR0	__REG(MX21_AIPI_BASE_ADDR + 0x00)
 #define AIPI1_PSR1	__REG(MX21_AIPI_BASE_ADDR + 0x04)
diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 46fdf48..b8ae45a 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -76,13 +76,6 @@
 #define MX25_USB_HS_BASE_ADDR			(MX25_USB_BASE_ADDR + 0x0400)
 #define MX25_CSI_BASE_ADDR		0x53ff8000
 
-/* FIXME: Get rid of these */
-#define IMX_TIM1_BASE		MX25_GPT1_BASE_ADDR
-#define IMX_IOMUXC_BASE		MX25_IOMUXC_BASE_ADDR
-#define IMX_WDT_BASE		MX25_WDOG_BASE_ADDR
-#define IMX_CCM_BASE		MX25_CCM_BASE_ADDR
-#define IMX_ESD_BASE		MX25_ESDCTL_BASE_ADDR
-
 /*
  * Clock Controller Module (CCM)
  */
@@ -139,14 +132,4 @@
 #define MX25_ESDCTL_BASE_ADDR	0xb8001000
 #define MX25_WEIM_BASE_ADDR	0xb8002000
 
-/*
- * Watchdog Registers
- */
-#define WCR  __REG16(IMX_WDT_BASE + 0x00) /* Watchdog Control Register */
-#define WSR  __REG16(IMX_WDT_BASE + 0x02) /* Watchdog Service Register */
-#define WSTR __REG16(IMX_WDT_BASE + 0x04) /* Watchdog Status Register  */
-
-/* important definition of some bits of WCR */
-#define WCR_WDE 0x04
-
 #endif /* __ASM_ARCH_MX25_REGS_H */
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index afc7a39..a9658fa 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -101,12 +101,6 @@
 /* IRAM */
 #define MX27_IRAM_BASE_ADDR		0xffff4c00	/* internal ram */
 
-/* FIXME: get rid of these */
-#define IMX_GPIO_BASE		MX27_GPIO_BASE_ADDR
-#define IMX_NFC_BASE		MX27_NFC_BASE_ADDR
-#define IMX_WDT_BASE		MX27_WDOG_BASE_ADDR
-#define IMX_ESD_BASE		MX27_SDRAMC_BASE_ADDR
-
 #define PCMCIA_PIPR		(MX27_PCMCIA_CTL_BASE_ADDR + 0x00)
 #define PCMCIA_PSCR		(MX27_PCMCIA_CTL_BASE_ADDR + 0x04)
 #define PCMCIA_PER		(MX27_PCMCIA_CTL_BASE_ADDR + 0x08)
diff --git a/arch/arm/mach-imx/include/mach/imx31-regs.h b/arch/arm/mach-imx/include/mach/imx31-regs.h
index c11187e..f641fe6 100644
--- a/arch/arm/mach-imx/include/mach/imx31-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx31-regs.h
@@ -130,13 +130,6 @@
 
 #define MX31_PCMCIA_MEM_BASE_ADDR	0xbc000000
 
-/* FIXME: Get rid of these */
-#define IMX_TIM1_BASE	MX31_GPT1_BASE_ADDR
-#define IMX_WDT_BASE	MX31_WDOG_BASE_ADDR
-#define IMX_ESD_BASE	MX31_ESDCTL_BASE_ADDR
-#define IMX_NFC_BASE	MX31_NFC_BASE_ADDR
-#define IOMUXC_BASE	MX31_IOMUXC_BASE_ADDR
-
 /*
  * Clock Controller Module (CCM)
  */
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index 37a4dad..bbfde23 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -130,14 +130,6 @@
 #define MX35_NFC_BASE_ADDR		0xbb000000
 #define MX35_PCMCIA_MEM_BASE_ADDR	0xbc000000
 
-/* FIXME: Get rid of these */
-#define IMX_WDT_BASE	MX35_WDOG_BASE_ADDR
-#define IMX_TIM1_BASE	MX35_GPT1_BASE_ADDR
-#define IMX_ESD_BASE	MX35_ESDCTL_BASE_ADDR
-#define IMX_IOMUXC_BASE	MX35_IOMUXC_BASE_ADDR
-#define IMX_CCM_BASE	MX35_CCM_BASE_ADDR
-#define IMX_NFC_BASE	MX35_NFC_BASE_ADDR
-
 /*
  * Clock Controller Module (CCM)
  */
diff --git a/arch/arm/mach-imx/include/mach/imx51-regs.h b/arch/arm/mach-imx/include/mach/imx51-regs.h
index c451004..8eb74cd 100644
--- a/arch/arm/mach-imx/include/mach/imx51-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx51-regs.h
@@ -1,10 +1,6 @@
 #ifndef __MACH_IMX51_REGS_H
 #define __MACH_IMX51_REGS_H
 
-#define IMX_TIM1_BASE			0x73fa0000
-#define IMX_WDT_BASE			0x73f98000
-#define IMX_IOMUXC_BASE			0x73fa8000
-
 /* WEIM registers */
 #define WEIM_CSxGCR1(n)	(((n) * 0x18) + 0x00)
 #define WEIM_CSxGCR2(n)	(((n) * 0x18) + 0x04)
diff --git a/arch/arm/mach-imx/include/mach/imx53-regs.h b/arch/arm/mach-imx/include/mach/imx53-regs.h
index e57d1ab..8025e97 100644
--- a/arch/arm/mach-imx/include/mach/imx53-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx53-regs.h
@@ -1,10 +1,6 @@
 #ifndef __MACH_IMX53_REGS_H
 #define __MACH_IMX53_REGS_H
 
-#define IMX_TIM1_BASE			0X53FA0000
-#define IMX_WDT_BASE			0X53F98000
-#define IMX_IOMUXC_BASE			0X53FA8000
-
 #define MX53_IROM_BASE_ADDR	0x0
 
 /*
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index eca4fa6..716e6b4 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -1,10 +1,6 @@
 #ifndef __MACH_IMX6_REGS_H
 #define __MACH_IMX6_REGS_H
 
-#define IMX_TIM1_BASE	0x02098000
-#define IMX_WDT_BASE	0x020bc000
-#define IMX_IOMUXC_BASE 0x020e0000
-
 #define MX6_AIPS1_ARB_BASE_ADDR		0x02000000
 #define MX6_AIPS2_ARB_BASE_ADDR		0x02100000
 
@@ -12,8 +8,6 @@
 #define MX6_ATZ1_BASE_ADDR              MX6_AIPS1_ARB_BASE_ADDR
 #define MX6_ATZ2_BASE_ADDR              MX6_AIPS2_ARB_BASE_ADDR
 
-#define IPU_CTRL_BASE_ADDR	0x02400000
-
 /* slots 0,7 of SDMA reserved, therefore left unused in IPMUX3 */
 #define MX6_SPDIF_BASE_ADDR             (MX6_ATZ1_BASE_ADDR + 0x04000)
 #define MX6_ECSPI1_BASE_ADDR            (MX6_ATZ1_BASE_ADDR + 0x08000)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
