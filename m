Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BI-0005Tb-S2
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:13 +0200
Message-Id: <1348483583-12586-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348483583-12586-1-git-send-email-s.hauer@pengutronix.de>
References: <1348483583-12586-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/14] ARM i.MX1: give register base addresses a proper MX1_
 prefix
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx1.c                      |   11 +-
 arch/arm/mach-imx/include/mach/devices-imx1.h |    4 +-
 arch/arm/mach-imx/include/mach/imx1-regs.h    |  140 +++++++++++++++----------
 3 files changed, 92 insertions(+), 63 deletions(-)

diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index b32e371..e6fba16 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -13,14 +13,15 @@
 
 #include <common.h>
 #include <init.h>
+#include <mach/imx-regs.h>
 
 static int imx1_init(void)
 {
-	add_generic_device("imx1-gpt", 0, NULL, 0x00202000, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 0, NULL, 0x0021c000, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 1, NULL, 0x0021c100, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 2, NULL, 0x0021c200, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 3, NULL, 0x0021c300, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpt", 0, NULL, MX1_TIM1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 0, NULL, MX1_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 1, NULL, MX1_GPIO2_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 2, NULL, MX1_GPIO3_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 3, NULL, MX1_GPIO4_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx1.h b/arch/arm/mach-imx/include/mach/devices-imx1.h
index a45363f..c73113c 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx1.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx1.h
@@ -2,10 +2,10 @@
 
 static inline struct device_d *imx1_add_uart0(void)
 {
-	return imx_add_uart((void *)IMX_UART1_BASE, 0);
+	return imx_add_uart((void *)MX1_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx1_add_uart1(void)
 {
-	return imx_add_uart((void *)IMX_UART2_BASE, 1);
+	return imx_add_uart((void *)MX1_UART2_BASE_ADDR, 1);
 }
diff --git a/arch/arm/mach-imx/include/mach/imx1-regs.h b/arch/arm/mach-imx/include/mach/imx1-regs.h
index d5ee3f5..52d2dfe 100644
--- a/arch/arm/mach-imx/include/mach/imx1-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx1-regs.h
@@ -5,77 +5,105 @@
 #error "Please do not include directly"
 #endif
 
-#define IMX_IO_BASE		0x00200000
+#define MX1_IO_BASE_ADDR	0x00200000
+#define MX1_IO_SIZE		SZ_1M
+
+#define MX1_CS0_PHYS		0x10000000
+#define MX1_CS0_SIZE		0x02000000
+
+#define MX1_CS1_PHYS		0x12000000
+#define MX1_CS1_SIZE		0x01000000
+
+#define MX1_CS2_PHYS		0x13000000
+#define MX1_CS2_SIZE		0x01000000
+
+#define MX1_CS3_PHYS		0x14000000
+#define MX1_CS3_SIZE		0x01000000
+
+#define MX1_CS4_PHYS		0x15000000
+#define MX1_CS4_SIZE		0x01000000
+
+#define MX1_CS5_PHYS		0x16000000
+#define MX1_CS5_SIZE		0x01000000
 
 /*
  *  Register BASEs, based on OFFSETs
  */
-#define IMX_AIPI1_BASE             (0x00000 + IMX_IO_BASE)
-#define IMX_WDT_BASE               (0x01000 + IMX_IO_BASE)
-#define IMX_TIM1_BASE              (0x02000 + IMX_IO_BASE)
-#define IMX_TIM2_BASE              (0x03000 + IMX_IO_BASE)
-#define IMX_RTC_BASE               (0x04000 + IMX_IO_BASE)
-#define IMX_LCDC_BASE              (0x05000 + IMX_IO_BASE)
-#define IMX_UART1_BASE             (0x06000 + IMX_IO_BASE)
-#define IMX_UART2_BASE             (0x07000 + IMX_IO_BASE)
-#define IMX_PWM_BASE               (0x08000 + IMX_IO_BASE)
-#define IMX_DMAC_BASE              (0x09000 + IMX_IO_BASE)
-#define IMX_AIPI2_BASE             (0x10000 + IMX_IO_BASE)
-#define IMX_SIM_BASE               (0x11000 + IMX_IO_BASE)
-#define IMX_USBD_BASE              (0x12000 + IMX_IO_BASE)
-#define IMX_SPI1_BASE              (0x13000 + IMX_IO_BASE)
-#define IMX_MMC_BASE               (0x14000 + IMX_IO_BASE)
-#define IMX_ASP_BASE               (0x15000 + IMX_IO_BASE)
-#define IMX_BTA_BASE               (0x16000 + IMX_IO_BASE)
-#define IMX_I2C_BASE               (0x17000 + IMX_IO_BASE)
-#define IMX_SSI_BASE               (0x18000 + IMX_IO_BASE)
-#define IMX_SPI2_BASE              (0x19000 + IMX_IO_BASE)
-#define IMX_MSHC_BASE              (0x1A000 + IMX_IO_BASE)
-#define IMX_PLL_BASE               (0x1B000 + IMX_IO_BASE)
-#define IMX_SYSCTRL_BASE           (0x1B800 + IMX_IO_BASE)
-#define IMX_GPIO_BASE              (0x1C000 + IMX_IO_BASE)
-#define IMX_EIM_BASE               (0x20000 + IMX_IO_BASE)
-#define IMX_SDRAMC_BASE            (0x21000 + IMX_IO_BASE)
-#define IMX_MMA_BASE               (0x22000 + IMX_IO_BASE)
-#define IMX_AITC_BASE              (0x23000 + IMX_IO_BASE)
-#define IMX_CSI_BASE               (0x24000 + IMX_IO_BASE)
+#define MX1_AIPI1_BASE_ADDR		(0x00000 + MX1_IO_BASE_ADDR)
+#define MX1_WDT_BASE_ADDR		(0x01000 + MX1_IO_BASE_ADDR)
+#define MX1_TIM1_BASE_ADDR		(0x02000 + MX1_IO_BASE_ADDR)
+#define MX1_TIM2_BASE_ADDR		(0x03000 + MX1_IO_BASE_ADDR)
+#define MX1_RTC_BASE_ADDR		(0x04000 + MX1_IO_BASE_ADDR)
+#define MX1_LCDC_BASE_ADDR		(0x05000 + MX1_IO_BASE_ADDR)
+#define MX1_UART1_BASE_ADDR		(0x06000 + MX1_IO_BASE_ADDR)
+#define MX1_UART2_BASE_ADDR		(0x07000 + MX1_IO_BASE_ADDR)
+#define MX1_PWM_BASE_ADDR		(0x08000 + MX1_IO_BASE_ADDR)
+#define MX1_DMA_BASE_ADDR		(0x09000 + MX1_IO_BASE_ADDR)
+#define MX1_AIPI2_BASE_ADDR		(0x10000 + MX1_IO_BASE_ADDR)
+#define MX1_SIM_BASE_ADDR		(0x11000 + MX1_IO_BASE_ADDR)
+#define MX1_USBD_BASE_ADDR		(0x12000 + MX1_IO_BASE_ADDR)
+#define MX1_CSPI1_BASE_ADDR		(0x13000 + MX1_IO_BASE_ADDR)
+#define MX1_MMC_BASE_ADDR		(0x14000 + MX1_IO_BASE_ADDR)
+#define MX1_ASP_BASE_ADDR		(0x15000 + MX1_IO_BASE_ADDR)
+#define MX1_BTA_BASE_ADDR		(0x16000 + MX1_IO_BASE_ADDR)
+#define MX1_I2C_BASE_ADDR		(0x17000 + MX1_IO_BASE_ADDR)
+#define MX1_SSI_BASE_ADDR		(0x18000 + MX1_IO_BASE_ADDR)
+#define MX1_CSPI2_BASE_ADDR		(0x19000 + MX1_IO_BASE_ADDR)
+#define MX1_MSHC_BASE_ADDR		(0x1A000 + MX1_IO_BASE_ADDR)
+#define MX1_CCM_BASE_ADDR		(0x1B000 + MX1_IO_BASE_ADDR)
+#define MX1_SCM_BASE_ADDR		(0x1B800 + MX1_IO_BASE_ADDR)
+#define MX1_GPIO_BASE_ADDR		(0x1C000 + MX1_IO_BASE_ADDR)
+#define MX1_GPIO1_BASE_ADDR		(0x1C000 + MX1_IO_BASE_ADDR)
+#define MX1_GPIO2_BASE_ADDR		(0x1C100 + MX1_IO_BASE_ADDR)
+#define MX1_GPIO3_BASE_ADDR		(0x1C200 + MX1_IO_BASE_ADDR)
+#define MX1_GPIO4_BASE_ADDR		(0x1C300 + MX1_IO_BASE_ADDR)
+#define MX1_EIM_BASE_ADDR		(0x20000 + MX1_IO_BASE_ADDR)
+#define MX1_SDRAMC_BASE_ADDR		(0x21000 + MX1_IO_BASE_ADDR)
+#define MX1_MMA_BASE_ADDR		(0x22000 + MX1_IO_BASE_ADDR)
+#define MX1_AVIC_BASE_ADDR		(0x23000 + MX1_IO_BASE_ADDR)
+#define MX1_CSI_BASE_ADDR		(0x24000 + MX1_IO_BASE_ADDR)
+
+/* FIXME: get rid of these */
+#define IMX_TIM1_BASE	MX1_CCM_BASE_ADDR
+#define IMX_WDT_BASE	MX1_WDT_BASE_ADDR
+#define IMX_GPIO_BASE	MX1_GPIO_BASE_ADDR
 
 /* SYSCTRL Registers */
-#define SIDR   __REG(IMX_SYSCTRL_BASE + 0x4) /* Silicon ID Register		    */
-#define FMCR   __REG(IMX_SYSCTRL_BASE + 0x8) /* Function Multiplex Control Register */
-#define GPCR   __REG(IMX_SYSCTRL_BASE + 0xC) /* Function Multiplex Control Register */
+#define SIDR   __REG(MX1_SCM_BASE_ADDR + 0x4) /* Silicon ID Register		    */
+#define FMCR   __REG(MX1_SCM_BASE_ADDR + 0x8) /* Function Multiplex Control Register */
+#define GPCR   __REG(MX1_SCM_BASE_ADDR + 0xC) /* Function Multiplex Control Register */
 
 /* SDRAM controller registers */
 
-#define SDCTL0 __REG(IMX_SDRAMC_BASE)        /* SDRAM 0 Control Register */
-#define SDCTL1 __REG(IMX_SDRAMC_BASE + 0x4)  /* SDRAM 1 Control Register */
-#define SDMISC __REG(IMX_SDRAMC_BASE + 0x14) /* Miscellaneous Register */
-#define SDRST  __REG(IMX_SDRAMC_BASE + 0x18) /* SDRAM Reset Register */
+#define SDCTL0 __REG(MX1_SDRAMC_BASE_ADDR)        /* SDRAM 0 Control Register */
+#define SDCTL1 __REG(MX1_SDRAMC_BASE_ADDR + 0x4)  /* SDRAM 1 Control Register */
+#define SDMISC __REG(MX1_SDRAMC_BASE_ADDR + 0x14) /* Miscellaneous Register */
+#define SDRST  __REG(MX1_SDRAMC_BASE_ADDR + 0x18) /* SDRAM Reset Register */
 
 /* PLL registers */
-#define CSCR   __REG(IMX_PLL_BASE)        /* Clock Source Control Register */
-#define MPCTL0 __REG(IMX_PLL_BASE + 0x4)  /* MCU PLL Control Register 0 */
-#define MPCTL1 __REG(IMX_PLL_BASE + 0x8)  /* MCU PLL and System Clock Register 1 */
-#define SPCTL0 __REG(IMX_PLL_BASE + 0xc)  /* System PLL Control Register 0 */
-#define SPCTL1 __REG(IMX_PLL_BASE + 0x10) /* System PLL Control Register 1 */
-#define PCDR   __REG(IMX_PLL_BASE + 0x20) /* Peripheral Clock Divider Register */
+#define CSCR   __REG(MX1_CCM_BASE_ADDR)        /* Clock Source Control Register */
+#define MPCTL0 __REG(MX1_CCM_BASE_ADDR + 0x4)  /* MCU PLL Control Register 0 */
+#define MPCTL1 __REG(MX1_CCM_BASE_ADDR + 0x8)  /* MCU PLL and System Clock Register 1 */
+#define SPCTL0 __REG(MX1_CCM_BASE_ADDR + 0xc)  /* System PLL Control Register 0 */
+#define SPCTL1 __REG(MX1_CCM_BASE_ADDR + 0x10) /* System PLL Control Register 1 */
+#define PCDR   __REG(MX1_CCM_BASE_ADDR + 0x20) /* Peripheral Clock Divider Register */
 
 #define CSCR_MPLL_RESTART (1<<21)
 
 /* Chip Select Registers */
-#define CS0U __REG(IMX_EIM_BASE)        /* Chip Select 0 Upper Register */
-#define CS0L __REG(IMX_EIM_BASE + 0x4)  /* Chip Select 0 Lower Register */
-#define CS1U __REG(IMX_EIM_BASE + 0x8)  /* Chip Select 1 Upper Register */
-#define CS1L __REG(IMX_EIM_BASE + 0xc)  /* Chip Select 1 Lower Register */
-#define CS2U __REG(IMX_EIM_BASE + 0x10) /* Chip Select 2 Upper Register */
-#define CS2L __REG(IMX_EIM_BASE + 0x14) /* Chip Select 2 Lower Register */
-#define CS3U __REG(IMX_EIM_BASE + 0x18) /* Chip Select 3 Upper Register */
-#define CS3L __REG(IMX_EIM_BASE + 0x1c) /* Chip Select 3 Lower Register */
-#define CS4U __REG(IMX_EIM_BASE + 0x20) /* Chip Select 4 Upper Register */
-#define CS4L __REG(IMX_EIM_BASE + 0x24) /* Chip Select 4 Lower Register */
-#define CS5U __REG(IMX_EIM_BASE + 0x28) /* Chip Select 5 Upper Register */
-#define CS5L __REG(IMX_EIM_BASE + 0x2c) /* Chip Select 5 Lower Register */
-#define EIM  __REG(IMX_EIM_BASE + 0x30) /* EIM Configuration Register */
+#define CS0U __REG(MX1_EIM_BASE_ADDR)        /* Chip Select 0 Upper Register */
+#define CS0L __REG(MX1_EIM_BASE_ADDR + 0x4)  /* Chip Select 0 Lower Register */
+#define CS1U __REG(MX1_EIM_BASE_ADDR + 0x8)  /* Chip Select 1 Upper Register */
+#define CS1L __REG(MX1_EIM_BASE_ADDR + 0xc)  /* Chip Select 1 Lower Register */
+#define CS2U __REG(MX1_EIM_BASE_ADDR + 0x10) /* Chip Select 2 Upper Register */
+#define CS2L __REG(MX1_EIM_BASE_ADDR + 0x14) /* Chip Select 2 Lower Register */
+#define CS3U __REG(MX1_EIM_BASE_ADDR + 0x18) /* Chip Select 3 Upper Register */
+#define CS3L __REG(MX1_EIM_BASE_ADDR + 0x1c) /* Chip Select 3 Lower Register */
+#define CS4U __REG(MX1_EIM_BASE_ADDR + 0x20) /* Chip Select 4 Upper Register */
+#define CS4L __REG(MX1_EIM_BASE_ADDR + 0x24) /* Chip Select 4 Lower Register */
+#define CS5U __REG(MX1_EIM_BASE_ADDR + 0x28) /* Chip Select 5 Upper Register */
+#define CS5L __REG(MX1_EIM_BASE_ADDR + 0x2c) /* Chip Select 5 Lower Register */
+#define EIM  __REG(MX1_EIM_BASE_ADDR + 0x30) /* EIM Configuration Register */
 
 /* assignements for GPIO alternate/primary functions */
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
