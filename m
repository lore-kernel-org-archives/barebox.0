Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BI-0005TZ-MA
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:12 +0200
Message-Id: <1348483583-12586-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/14] ARM i.MX21: give register base addresses a proper MX21_
 prefix
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/imx21ads/imx21ads.c            |    6 +-
 arch/arm/boards/imx21ads/lowlevel_init.S       |    4 +-
 arch/arm/mach-imx/imx21.c                      |   16 +--
 arch/arm/mach-imx/include/mach/devices-imx21.h |    8 +-
 arch/arm/mach-imx/include/mach/imx21-regs.h    |  179 +++++++++++++++---------
 5 files changed, 132 insertions(+), 81 deletions(-)

diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 1aecf18..42b0162 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -163,9 +163,11 @@ static int mx21ads_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC8000000, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(DEVICE_ID_DYNAMIC, MX21_CS0_BASE_ADDR,
+			32 * 1024 * 1024, 0);
 	imx21_add_nand(&nand_info);
-	add_generic_device("cs8900", DEVICE_ID_DYNAMIC, NULL, IMX_CS1_BASE, 0x1000,
+	add_generic_device("cs8900", DEVICE_ID_DYNAMIC, NULL,
+			MX21_CS1_BASE_ADDR, 0x1000,
 			IORESOURCE_MEM, NULL);
 	imx21_add_fb(&imx_fb_data);
 
diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
index 961029b..03b62df 100644
--- a/arch/arm/boards/imx21ads/lowlevel_init.S
+++ b/arch/arm/boards/imx21ads/lowlevel_init.S
@@ -120,8 +120,8 @@ board_init_lowlevel:
 #ifdef CONFIG_NAND_IMX_BOOT
 	ldr	sp, =STACK_BASE + STACK_SIZE - 12	/* Setup a temporary stack in SDRAM */
 
-	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM        */
-	ldr	r2, =IMX_NFC_BASE + 0x800	/* end of NFC SRAM          */
+	ldr	r0, =MX21_NFC_BASE_ADDR		/* start of NFC SRAM        */
+	ldr	r2, =MX21_NFC_BASE_ADDR + 0x800	/* end of NFC SRAM          */
 
 	/* skip NAND boot if not running from NFC space */
 	cmp	pc, r0
diff --git a/arch/arm/mach-imx/imx21.c b/arch/arm/mach-imx/imx21.c
index df3eaf2..8d909ce 100644
--- a/arch/arm/mach-imx/imx21.c
+++ b/arch/arm/mach-imx/imx21.c
@@ -25,14 +25,14 @@ int imx_silicon_revision(void)
 
 static int imx21_init(void)
 {
-	add_generic_device("imx1-gpt", 0, NULL, 0x10003000, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 0, NULL, 0x10015000, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 1, NULL, 0x10015100, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 2, NULL, 0x10015200, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 3, NULL, 0x10015300, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 4, NULL, 0x10015400, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 5, NULL, 0x10015500, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpt", 0, NULL, MX21_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 0, NULL, MX21_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 1, NULL, MX21_GPIO2_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 2, NULL, MX21_GPIO3_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 3, NULL, MX21_GPIO4_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 4, NULL, MX21_GPIO5_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 5, NULL, MX21_GPIO6_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
-coredevice_initcall(imx21_init);
+postcore_initcall(imx21_init);
diff --git a/arch/arm/mach-imx/include/mach/devices-imx21.h b/arch/arm/mach-imx/include/mach/devices-imx21.h
index 1e1fbbd..31c5f8c 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx21.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx21.h
@@ -3,22 +3,22 @@
 
 static inline struct device_d *imx21_add_uart0(void)
 {
-	return imx_add_uart((void *)IMX_UART1_BASE, 0);
+	return imx_add_uart((void *)MX21_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx21_add_uart1(void)
 {
-	return imx_add_uart((void *)IMX_UART2_BASE, 1);
+	return imx_add_uart((void *)MX21_UART2_BASE_ADDR, 1);
 }
 
 static inline struct device_d *imx21_add_uart2(void)
 {
-	return imx_add_uart((void *)IMX_UART3_BASE, 2);
+	return imx_add_uart((void *)MX21_UART2_BASE_ADDR, 2);
 }
 
 static inline struct device_d *imx21_add_uart3(void)
 {
-	return imx_add_uart((void *)IMX_UART4_BASE, 3);
+	return imx_add_uart((void *)MX21_UART2_BASE_ADDR, 3);
 }
 
 static inline struct device_d *imx21_add_nand(struct imx_nand_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h b/arch/arm/mach-imx/include/mach/imx21-regs.h
index 98e73ef..e58af72 100644
--- a/arch/arm/mach-imx/include/mach/imx21-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
@@ -5,40 +5,96 @@
 #error "Please do not include directly"
 #endif
 
-#define IMX_IO_BASE		0x10000000
-
-#define IMX_AIPI1_BASE             (0x00000 + IMX_IO_BASE)
-#define IMX_WDT_BASE               (0x02000 + IMX_IO_BASE)
-#define IMX_TIM1_BASE              (0x03000 + IMX_IO_BASE)
-#define IMX_TIM2_BASE              (0x04000 + IMX_IO_BASE)
-#define IMX_TIM3_BASE              (0x05000 + IMX_IO_BASE)
-#define IMX_UART1_BASE             (0x0a000 + IMX_IO_BASE)
-#define IMX_UART2_BASE             (0x0b000 + IMX_IO_BASE)
-#define IMX_UART3_BASE             (0x0c000 + IMX_IO_BASE)
-#define IMX_UART4_BASE             (0x0d000 + IMX_IO_BASE)
-#define IMX_GPIO_BASE              (0x15000 + IMX_IO_BASE)
-#define IMX_AIPI2_BASE             (0x20000 + IMX_IO_BASE)
-#define IMX_PLL_BASE               (0x27000 + IMX_IO_BASE)
-#define IMX_SYSTEM_CTL_BASE        (0x27800 + IMX_IO_BASE)
-
-#define IMX_SDRAM_BASE             (0xdf000000)
-#define IMX_EIM_BASE               (0xdf001000)
-#define IMX_NFC_BASE               (0xdf003000)
+#define MX21_AIPI_BASE_ADDR		0x10000000
+#define MX21_AIPI_SIZE			SZ_1M
+#define MX21_DMA_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x01000)
+#define MX21_WDOG_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x02000)
+#define MX21_GPT1_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x03000)
+#define MX21_GPT2_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x04000)
+#define MX21_GPT3_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x05000)
+#define MX21_PWM_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x06000)
+#define MX21_RTC_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x07000)
+#define MX21_KPP_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x08000)
+#define MX21_OWIRE_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x09000)
+#define MX21_UART1_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x0a000)
+#define MX21_UART2_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x0b000)
+#define MX21_UART3_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x0c000)
+#define MX21_UART4_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x0d000)
+#define MX21_CSPI1_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x0e000)
+#define MX21_CSPI2_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x0f000)
+#define MX21_SSI1_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x10000)
+#define MX21_SSI2_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x11000)
+#define MX21_I2C_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x12000)
+#define MX21_SDHC1_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x13000)
+#define MX21_SDHC2_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x14000)
+#define MX21_GPIO_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x15000)
+#define MX21_GPIO1_BASE_ADDR			(MX21_GPIO_BASE_ADDR + 0x000)
+#define MX21_GPIO2_BASE_ADDR			(MX21_GPIO_BASE_ADDR + 0x100)
+#define MX21_GPIO3_BASE_ADDR			(MX21_GPIO_BASE_ADDR + 0x200)
+#define MX21_GPIO4_BASE_ADDR			(MX21_GPIO_BASE_ADDR + 0x300)
+#define MX21_GPIO5_BASE_ADDR			(MX21_GPIO_BASE_ADDR + 0x400)
+#define MX21_GPIO6_BASE_ADDR			(MX21_GPIO_BASE_ADDR + 0x500)
+#define MX21_AUDMUX_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x16000)
+#define MX21_CSPI3_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x17000)
+#define MX21_LCDC_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x21000)
+#define MX21_SLCDC_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x22000)
+#define MX21_USBOTG_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x24000)
+#define MX21_EMMA_PP_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x26000)
+#define MX21_EMMA_PRP_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x26400)
+#define MX21_CCM_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x27000)
+#define MX21_SYSCTRL_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x27800)
+#define MX21_JAM_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x3e000)
+#define MX21_MAX_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x3f000)
+
+#define MX21_AVIC_BASE_ADDR		0x10040000
+
+#define MX21_SAHB1_BASE_ADDR		0x80000000
+#define MX21_SAHB1_SIZE			SZ_1M
+#define MX21_CSI_BASE_ADDR			(MX2x_SAHB1_BASE_ADDR + 0x0000)
+
+/* Memory regions and CS */
+#define MX21_SDRAM_BASE_ADDR		0xc0000000
+#define MX21_CSD1_BASE_ADDR		0xc4000000
+
+#define MX21_CS0_BASE_ADDR		0xc8000000
+#define MX21_CS1_BASE_ADDR		0xcc000000
+#define MX21_CS2_BASE_ADDR		0xd0000000
+#define MX21_CS3_BASE_ADDR		0xd1000000
+#define MX21_CS4_BASE_ADDR		0xd2000000
+#define MX21_PCMCIA_MEM_BASE_ADDR	0xd4000000
+#define MX21_CS5_BASE_ADDR		0xdd000000
+
+/* NAND, SDRAM, WEIM etc controllers */
+#define MX21_X_MEMC_BASE_ADDR		0xdf000000
+#define MX21_X_MEMC_SIZE		SZ_256K
+
+#define MX21_SDRAMC_BASE_ADDR		(MX21_X_MEMC_BASE_ADDR + 0x0000)
+#define MX21_EIM_BASE_ADDR		(MX21_X_MEMC_BASE_ADDR + 0x1000)
+#define MX21_PCMCIA_CTL_BASE_ADDR	(MX21_X_MEMC_BASE_ADDR + 0x2000)
+#define MX21_NFC_BASE_ADDR		(MX21_X_MEMC_BASE_ADDR + 0x3000)
+
+#define MX21_IRAM_BASE_ADDR		0xffffe800	/* internal ram */
+
+/* FIXME: Get rid of these */
+#define IMX_GPIO_BASE MX21_GPIO_BASE_ADDR
+#define IMX_TIM1_BASE MX21_GPT1_BASE_ADDR
+#define IMX_WDT_BASE MX21_WDOG_BASE_ADDR
+#define IMX_SYSTEM_CTL_BASE MX21_SYSCTRL_BASE_ADDR
 
 /* AIPI */
-#define AIPI1_PSR0	__REG(IMX_AIPI1_BASE + 0x00)
-#define AIPI1_PSR1	__REG(IMX_AIPI1_BASE + 0x04)
-#define AIPI2_PSR0	__REG(IMX_AIPI2_BASE + 0x00)
-#define AIPI2_PSR1	__REG(IMX_AIPI2_BASE + 0x04)
+#define AIPI1_PSR0	__REG(MX21_AIPI_BASE_ADDR + 0x00)
+#define AIPI1_PSR1	__REG(MX21_AIPI_BASE_ADDR + 0x04)
+#define AIPI2_PSR0	__REG(MX21_AIPI_BASE_ADDR + 0x20000 + 0x00)
+#define AIPI2_PSR1	__REG(MX21_AIPI_BASE_ADDR + 0x20000 + 0x04)
 
 /* System Control */
-#define SUID0    __REG(IMX_SYSTEM_CTL_BASE + 0x4)		/* Silicon ID Register (12 bytes) */
-#define SUID1    __REG(IMX_SYSTEM_CTL_BASE + 0x8)		/* Silicon ID Register (12 bytes) */
-#define CID      __REG(IMX_SYSTEM_CTL_BASE + 0xC)		/* Silicon ID Register (12 bytes) */
-#define FMCR    __REG(IMX_SYSTEM_CTL_BASE + 0x14)		/* Function Multeplexing Control Register */
-#define GPCR	__REG(IMX_SYSTEM_CTL_BASE + 0x18)		/* Global Peripheral Control Register */
-#define WBCR	__REG(IMX_SYSTEM_CTL_BASE + 0x1C)		/* Well Bias Control Register */
-#define DSCR(x)	__REG(IMX_SYSTEM_CTL_BASE + 0x1C + ((x) << 2))	/* Driving Strength Control Register 1 - 13 */
+#define SUID0    __REG(MX21_SYSCTRL_BASE_ADDR + 0x4)		/* Silicon ID Register (12 bytes) */
+#define SUID1    __REG(MX21_SYSCTRL_BASE_ADDR + 0x8)		/* Silicon ID Register (12 bytes) */
+#define CID      __REG(MX21_SYSCTRL_BASE_ADDR + 0xC)		/* Silicon ID Register (12 bytes) */
+#define FMCR    __REG(MX21_SYSCTRL_BASE_ADDR + 0x14)		/* Function Multeplexing Control Register */
+#define GPCR	__REG(MX21_SYSCTRL_BASE_ADDR + 0x18)		/* Global Peripheral Control Register */
+#define WBCR	__REG(MX21_SYSCTRL_BASE_ADDR + 0x1C)		/* Well Bias Control Register */
+#define DSCR(x)	__REG(MX21_SYSCTRL_BASE_ADDR + 0x1C + ((x) << 2))	/* Driving Strength Control Register 1 - 13 */
 
 #define GPCR_BOOT_SHIFT			16
 #define GPCR_BOOT_MASK			(0xf << GPCR_BOOT_SHIFT)
@@ -51,39 +107,39 @@
 #define GPCR_BOOT_8BIT_NAND_512		7
 
 /* SDRAM Controller registers bitfields */
-#define SDCTL0 __REG(IMX_SDRAM_BASE + 0x00) /* SDRAM 0 Control Register */
-#define SDCTL1 __REG(IMX_SDRAM_BASE + 0x04) /* SDRAM 0 Control Register */
-#define SDRST  __REG(IMX_SDRAM_BASE + 0x18) /* SDRAM Reset Register */
-#define SDMISC __REG(IMX_SDRAM_BASE + 0x14) /* SDRAM Miscellaneous Register */
+#define SDCTL0 __REG(MX21_X_MEMC_BASE_ADDR + 0x00) /* SDRAM 0 Control Register */
+#define SDCTL1 __REG(MX21_X_MEMC_BASE_ADDR + 0x04) /* SDRAM 0 Control Register */
+#define SDRST  __REG(MX21_X_MEMC_BASE_ADDR + 0x18) /* SDRAM Reset Register */
+#define SDMISC __REG(MX21_X_MEMC_BASE_ADDR + 0x14) /* SDRAM Miscellaneous Register */
 
 
 /* Chip Select Registers */
-#define CS0U __REG(IMX_EIM_BASE + 0x00) /* Chip Select 0 Upper Register    */
-#define CS0L __REG(IMX_EIM_BASE + 0x04) /* Chip Select 0 Lower Register    */
-#define CS1U __REG(IMX_EIM_BASE + 0x08) /* Chip Select 1 Upper Register    */
-#define CS1L __REG(IMX_EIM_BASE + 0x0C) /* Chip Select 1 Lower Register    */
-#define CS2U __REG(IMX_EIM_BASE + 0x10) /* Chip Select 2 Upper Register    */
-#define CS2L __REG(IMX_EIM_BASE + 0x14) /* Chip Select 2 Lower Register    */
-#define CS3U __REG(IMX_EIM_BASE + 0x18) /* Chip Select 3 Upper Register    */
-#define CS3L __REG(IMX_EIM_BASE + 0x1C) /* Chip Select 3 Lower Register    */
-#define CS4U __REG(IMX_EIM_BASE + 0x20) /* Chip Select 4 Upper Register    */
-#define CS4L __REG(IMX_EIM_BASE + 0x24) /* Chip Select 4 Lower Register    */
-#define CS5U __REG(IMX_EIM_BASE + 0x28) /* Chip Select 5 Upper Register    */
-#define CS5L __REG(IMX_EIM_BASE + 0x2C) /* Chip Select 5 Lower Register    */
-#define EIM  __REG(IMX_EIM_BASE + 0x30) /* EIM Configuration Register      */
+#define CS0U __REG(MX21_EIM_BASE_ADDR + 0x00) /* Chip Select 0 Upper Register    */
+#define CS0L __REG(MX21_EIM_BASE_ADDR + 0x04) /* Chip Select 0 Lower Register    */
+#define CS1U __REG(MX21_EIM_BASE_ADDR + 0x08) /* Chip Select 1 Upper Register    */
+#define CS1L __REG(MX21_EIM_BASE_ADDR + 0x0C) /* Chip Select 1 Lower Register    */
+#define CS2U __REG(MX21_EIM_BASE_ADDR + 0x10) /* Chip Select 2 Upper Register    */
+#define CS2L __REG(MX21_EIM_BASE_ADDR + 0x14) /* Chip Select 2 Lower Register    */
+#define CS3U __REG(MX21_EIM_BASE_ADDR + 0x18) /* Chip Select 3 Upper Register    */
+#define CS3L __REG(MX21_EIM_BASE_ADDR + 0x1C) /* Chip Select 3 Lower Register    */
+#define CS4U __REG(MX21_EIM_BASE_ADDR + 0x20) /* Chip Select 4 Upper Register    */
+#define CS4L __REG(MX21_EIM_BASE_ADDR + 0x24) /* Chip Select 4 Lower Register    */
+#define CS5U __REG(MX21_EIM_BASE_ADDR + 0x28) /* Chip Select 5 Upper Register    */
+#define CS5L __REG(MX21_EIM_BASE_ADDR + 0x2C) /* Chip Select 5 Lower Register    */
+#define EIM  __REG(MX21_EIM_BASE_ADDR + 0x30) /* EIM Configuration Register      */
 
 /* PLL registers */
-#define CSCR		__REG(IMX_PLL_BASE + 0x00) /* Clock Source Control Register       */
-#define MPCTL0		__REG(IMX_PLL_BASE + 0x04) /* MCU PLL Control Register 0          */
-#define MPCTL1		__REG(IMX_PLL_BASE + 0x08) /* MCU PLL Control Register 1          */
-#define SPCTL0		__REG(IMX_PLL_BASE + 0x0c) /* System PLL Control Register 0       */
-#define SPCTL1		__REG(IMX_PLL_BASE + 0x10) /* System PLL Control Register 1       */
-#define OSC26MCTL	__REG(IMX_PLL_BASE + 0x14) /* Oscillator 26M Register             */
-#define PCDR0		__REG(IMX_PLL_BASE + 0x18) /* Peripheral Clock Divider Register 0 */
-#define PCDR1		__REG(IMX_PLL_BASE + 0x1c) /* Peripheral Clock Divider Register 1 */
-#define PCCR0		__REG(IMX_PLL_BASE + 0x20) /* Peripheral Clock Control Register 0 */
-#define PCCR1		__REG(IMX_PLL_BASE + 0x24) /* Peripheral Clock Control Register 1 */
-#define CCSR		__REG(IMX_PLL_BASE + 0x28) /* Clock Control Status Register       */
+#define CSCR		__REG(MX21_CCM_BASE_ADDR + 0x00) /* Clock Source Control Register       */
+#define MPCTL0		__REG(MX21_CCM_BASE_ADDR + 0x04) /* MCU PLL Control Register 0          */
+#define MPCTL1		__REG(MX21_CCM_BASE_ADDR + 0x08) /* MCU PLL Control Register 1          */
+#define SPCTL0		__REG(MX21_CCM_BASE_ADDR + 0x0c) /* System PLL Control Register 0       */
+#define SPCTL1		__REG(MX21_CCM_BASE_ADDR + 0x10) /* System PLL Control Register 1       */
+#define OSC26MCTL	__REG(MX21_CCM_BASE_ADDR + 0x14) /* Oscillator 26M Register             */
+#define PCDR0		__REG(MX21_CCM_BASE_ADDR + 0x18) /* Peripheral Clock Divider Register 0 */
+#define PCDR1		__REG(MX21_CCM_BASE_ADDR + 0x1c) /* Peripheral Clock Divider Register 1 */
+#define PCCR0		__REG(MX21_CCM_BASE_ADDR + 0x20) /* Peripheral Clock Control Register 0 */
+#define PCCR1		__REG(MX21_CCM_BASE_ADDR + 0x24) /* Peripheral Clock Control Register 1 */
+#define CCSR		__REG(MX21_CCM_BASE_ADDR + 0x28) /* Clock Control Status Register       */
 
 #define CSCR_MPEN		(1 << 0)
 #define CSCR_SPEN		(1 << 1)
@@ -107,11 +163,4 @@
 
 #define CCSR_32K_SR		(1 << 15)
 
-#define IMX_CS0_BASE	0xC8000000
-#define IMX_CS1_BASE	0xCC000000
-#define IMX_CS2_BASE	0xD0000000
-#define IMX_CS3_BASE	0xD1000000
-#define IMX_CS4_BASE	0xD2000000
-#define IMX_CS5_BASE	0xD3000000
-
 #endif /* _IMX21_REGS_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
