Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BI-0005TO-KY
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:10 +0200
Message-Id: <1348483583-12586-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/14] ARM i.MX31: give register base addresses a proper MX31_
 prefix
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm037/lowlevel_init.S         |   42 ++---
 arch/arm/boards/pcm037/pcm037.c                |   42 ++---
 arch/arm/mach-imx/imx31.c                      |   10 +-
 arch/arm/mach-imx/include/mach/devices-imx31.h |   34 +++-
 arch/arm/mach-imx/include/mach/imx31-regs.h    |  202 ++++++++++++++----------
 arch/arm/mach-imx/speed-imx31.c                |    8 +-
 6 files changed, 194 insertions(+), 144 deletions(-)

diff --git a/arch/arm/boards/pcm037/lowlevel_init.S b/arch/arm/boards/pcm037/lowlevel_init.S
index 31ed6df..b727ad8 100644
--- a/arch/arm/boards/pcm037/lowlevel_init.S
+++ b/arch/arm/boards/pcm037/lowlevel_init.S
@@ -44,13 +44,13 @@
 board_init_lowlevel:
 
 	mov r10, lr
-	writel(IPU_CONF_DI_EN, IPU_CONF)
-	writel(0x074B0BF5, IMX_CCM_BASE + CCM_CCMR)
+
+	writel(0x074B0BF5, MX31_CCM_BASE_ADDR + CCM_CCMR)
 
 	DELAY 0x40000
 
-	writel(0x074B0BF5 | CCMR_MPE, IMX_CCM_BASE + CCM_CCMR)
-	writel((0x074B0BF5 | CCMR_MPE) & ~CCMR_MDS, IMX_CCM_BASE + CCM_CCMR)
+	writel(0x074B0BF5 | CCMR_MPE, MX31_CCM_BASE_ADDR + CCM_CCMR)
+	writel((0x074B0BF5 | CCMR_MPE) & ~CCMR_MDS, MX31_CCM_BASE_ADDR + CCM_CCMR)
 
 	writel(PDR0_CSI_PODF(0xff1) | \
 		PDR0_PER_PODF(7) | \
@@ -59,10 +59,10 @@ board_init_lowlevel:
 		PDR0_IPG_PODF(1) | \
 		PDR0_MAX_PODF(3) | \
 		PDR0_MCU_PODF(0), \
-		IMX_CCM_BASE + CCM_PDR0)
+		MX31_CCM_BASE_ADDR + CCM_PDR0)
 
-	writel(IMX_PLL_PD(0) | IMX_PLL_MFD(0xe) | IMX_PLL_MFI(9) | IMX_PLL_MFN(0xd), IMX_CCM_BASE + CCM_MPCTL)
-	writel(IMX_PLL_PD(1) | IMX_PLL_MFD(0x43) | IMX_PLL_MFI(12) | IMX_PLL_MFN(1), IMX_CCM_BASE + CCM_SPCTL)
+	writel(IMX_PLL_PD(0) | IMX_PLL_MFD(0xe) | IMX_PLL_MFI(9) | IMX_PLL_MFN(0xd), MX31_CCM_BASE_ADDR + CCM_MPCTL)
+	writel(IMX_PLL_PD(1) | IMX_PLL_MFD(0x43) | IMX_PLL_MFI(12) | IMX_PLL_MFN(1), MX31_CCM_BASE_ADDR + CCM_SPCTL)
 
 	/* Configure IOMUXC
 	 * Clears 0x43fa_c26c - 0x43fa_c2dc with 0, except 0x43fa_c278 (untouched), 0x43fa_c27c (set to 0x1000) and 0x43fa_c280 (untouched)
@@ -98,15 +98,15 @@ clear_iomux:
 	writel(0x00000004, ESDMISC)
 	writel(0x006ac73a, ESDCFG0)
 	writel(0x90100000 | ROWS0, ESDCTL0)
-	writel(0x12344321, IMX_SDRAM_CS0 + 0xf00)
+	writel(0x12344321, MX31_CSD0_BASE_ADDR + 0xf00)
 	writel(0xa0100000 | ROWS0, ESDCTL0)
-	writel(0x12344321, IMX_SDRAM_CS0)
-	writel(0x12344321, IMX_SDRAM_CS0)
+	writel(0x12344321, MX31_CSD0_BASE_ADDR)
+	writel(0x12344321, MX31_CSD0_BASE_ADDR)
 	writel(0xb0100000 | ROWS0, ESDCTL0)
-	writeb(0xda, IMX_SDRAM_CS0 + 0x33) 
-	writeb(0xff, IMX_SDRAM_CS0 + 0x01000000)
+	writeb(0xda, MX31_CSD0_BASE_ADDR + 0x33)
+	writeb(0xff, MX31_CSD0_BASE_ADDR + 0x01000000)
 	writel(0x80226080 | ROWS0, ESDCTL0)
-	writel(0xDEADBEEF, IMX_SDRAM_CS0)
+	writel(0xDEADBEEF, MX31_CSD0_BASE_ADDR)
 	writel(0x0000000c, ESDMISC)
 
 #ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
@@ -117,23 +117,23 @@ clear_iomux:
 #endif
 	writel(0x006ac73a, ESDCFG1)
 	writel(0x90100000 | ROWS1, ESDCTL1)
-	writel(0x12344321, IMX_SDRAM_CS1 + 0xf00)
+	writel(0x12344321, MX31_CSD1_BASE_ADDR + 0xf00)
 	writel(0xa0100000 | ROWS1, ESDCTL1)
-	writel(0x12344321, IMX_SDRAM_CS1)
-	writel(0x12344321, IMX_SDRAM_CS1)
+	writel(0x12344321, MX31_CSD1_BASE_ADDR)
+	writel(0x12344321, MX31_CSD1_BASE_ADDR)
 	writel(0xb0100000 | ROWS1, ESDCTL1)
-	writeb(0xda, IMX_SDRAM_CS1 + 0x33) 
-	writeb(0xff, IMX_SDRAM_CS1 + 0x01000000)
+	writeb(0xda, MX31_CSD1_BASE_ADDR + 0x33)
+	writeb(0xff, MX31_CSD1_BASE_ADDR + 0x01000000)
 	writel(0x80226080 | ROWS1, ESDCTL1)
-	writel(0xDEADBEEF, IMX_SDRAM_CS1)
+	writel(0xDEADBEEF, MX31_CSD1_BASE_ADDR)
 	writel(0x0000000c, ESDMISC)
 #endif
 
 #ifdef CONFIG_NAND_IMX_BOOT
 	ldr	sp, =0x80f00000		/* Setup a temporary stack in SDRAM */
 
-	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM                */
-	ldr	r2, =IMX_NFC_BASE + 0x1000	/* end of NFC SRAM                  */
+	ldr	r0, =MX31_NFC_BASE_ADDR		/* start of NFC SRAM                */
+	ldr	r2, =MX31_NFC_BASE_ADDR + 0x1000	/* end of NFC SRAM                  */
 
 	/* skip NAND boot if not running from NFC space */
 	cmp	pc, r0
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 28d3b13..a63bd23 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -66,15 +66,15 @@ static void pcm037_usb_init(void)
 	writel(tmp, 0x53f80000);
 
 	/* Host 1 */
-	tmp = readl(IMX_OTG_BASE + 0x600);
+	tmp = readl(MX31_USB_OTG_BASE_ADDR + 0x600);
 	tmp &= ~((3 << 21) | 1);
 	tmp |= (1 << 5) | (1 << 16) | (1 << 19) | (1 << 11) | (1 << 20);
-	writel(tmp, IMX_OTG_BASE + 0x600);
+	writel(tmp, MX31_USB_OTG_BASE_ADDR + 0x600);
 
-	tmp = readl(IMX_OTG_BASE + 0x184);
+	tmp = readl(MX31_USB_OTG_BASE_ADDR + 0x184);
 	tmp &= ~(3 << 30);
 	tmp |= 2 << 30;
-	writel(tmp, IMX_OTG_BASE + 0x184);
+	writel(tmp, MX31_USB_OTG_BASE_ADDR + 0x184);
 
 	imx_iomux_mode(MX31_PIN_USBOTG_DATA0__USBOTG_DATA0);
 	imx_iomux_mode(MX31_PIN_USBOTG_DATA1__USBOTG_DATA1);
@@ -90,10 +90,10 @@ static void pcm037_usb_init(void)
 	imx_iomux_mode(MX31_PIN_USBOTG_STP__USBOTG_STP);
 
 	mdelay(50);
-	ulpi_setup((void *)(IMX_OTG_BASE + 0x170), 1);
+	ulpi_setup((void *)(MX31_USB_OTG_BASE_ADDR + 0x170), 1);
 
 	/* Host 2 */
-	tmp = readl(IOMUXC_BASE + 0x8);
+	tmp = readl(MX31_USB_OTG_BASE_ADDR + 0x8);
 	tmp |= 1 << 11;
 	writel(tmp, IOMUXC_BASE + 0x8);
 
@@ -124,31 +124,31 @@ static void pcm037_usb_init(void)
 	imx_iomux_set_pad(MX31_PIN_SRXD3, H2_PAD_CFG);	/* USBH2_DATA6 */
 	imx_iomux_set_pad(MX31_PIN_STXD3, H2_PAD_CFG);	/* USBH2_DATA7 */
 
-	tmp = readl(IMX_OTG_BASE + 0x600);
+	tmp = readl(MX31_USB_OTG_BASE_ADDR + 0x600);
 	tmp &= ~((3 << 21) | 1);
 	tmp |= (1 << 5) | (1 << 16) | (1 << 19) | (1 << 20);
-	writel(tmp, IMX_OTG_BASE + 0x600);
+	writel(tmp, MX31_USB_OTG_BASE_ADDR + 0x600);
 
-	tmp = readl(IMX_OTG_BASE + 0x584);
+	tmp = readl(MX31_USB_OTG_BASE_ADDR + 0x584);
 	tmp &= ~(3 << 30);
 	tmp |= 2 << 30;
-	writel(tmp, IMX_OTG_BASE + 0x584);
+	writel(tmp, MX31_USB_OTG_BASE_ADDR + 0x584);
 
 	mdelay(50);
-	ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1);
+	ulpi_setup((void *)(MX31_USB_OTG_BASE_ADDR + 0x570), 1);
 
 	/* Set to Host mode */
-	tmp = readl(IMX_OTG_BASE + 0x1a8);
-	writel(tmp | 0x3, IMX_OTG_BASE + 0x1a8);
+	tmp = readl(MX31_USB_OTG_BASE_ADDR + 0x1a8);
+	writel(tmp | 0x3, MX31_USB_OTG_BASE_ADDR + 0x1a8);
 
 }
 #endif
 
 static int pcm037_mem_init(void)
 {
-	arm_add_mem_device("ram0", IMX_SDRAM_CS0, SDRAM0 * 1024 * 1024);
+	arm_add_mem_device("ram0", MX31_CSD0_BASE_ADDR, SDRAM0 * 1024 * 1024);
 #ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-	arm_add_mem_device("ram1", IMX_SDRAM_CS1, SDRAM1 * 1024 * 1024);
+	arm_add_mem_device("ram1", MX31_CSD1_BASE_ADDR, SDRAM1 * 1024 * 1024);
 #endif
 
 	return 0;
@@ -185,7 +185,7 @@ static int imx31_devices_init(void)
 	 * Up to 32MiB NOR type flash, connected to
 	 * CS line 0, data width is 16 bit
 	 */
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, IMX_CS0_BASE, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(DEVICE_ID_DYNAMIC, MX31_CS0_BASE_ADDR, 32 * 1024 * 1024, 0);
 
 	/*
 	 * Create partitions that should be
@@ -200,7 +200,7 @@ static int imx31_devices_init(void)
 	 * up to 2MiB static RAM type memory, connected
 	 * to CS4, data width is 16 bit
 	 */
-	add_mem_device("sram0", IMX_CS4_BASE, IMX_CS4_RANGE, /* area size */
+	add_mem_device("sram0", MX31_CS4_BASE_ADDR, MX31_CS4_SIZE, /* area size */
 				   IORESOURCE_MEM_WRITEABLE);
 	imx31_add_nand(&nand_info);
 
@@ -209,13 +209,13 @@ static int imx31_devices_init(void)
 	 * connected to CS line 1 and interrupt line
 	 * GPIO3, data width is 16 bit
 	 */
-	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL,	IMX_CS1_BASE,
-			IMX_CS1_RANGE, IORESOURCE_MEM, NULL);
+	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL,	MX31_CS1_BASE_ADDR,
+			MX31_CS1_SIZE, IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_USB
 	pcm037_usb_init();
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE, NULL);
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX31_USB_OTG_BASE_ADDR, NULL);
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX31_USB_HS2_BASE_ADDR, NULL);
 #endif
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index 881c3e5..60745a7 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -18,13 +18,13 @@
 
 static int imx31_init(void)
 {
-	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
+	add_generic_device("imx_iim", 0, NULL, MX31_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
-	add_generic_device("imx31-gpt", 0, NULL, 0x53f90000, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpt", 0, NULL, MX31_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 0, NULL, MX31_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 1, NULL, MX31_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 2, NULL, MX31_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx31.h b/arch/arm/mach-imx/include/mach/devices-imx31.h
index 5dcea82..d45e4e1 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx31.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx31.h
@@ -2,34 +2,52 @@
 #include <mach/imx-regs.h>
 #include <mach/devices.h>
 
-#if 0
 static inline struct device_d *imx31_add_spi0(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)IMX_SPI1_BASE, 0, pdata);
+	return imx_add_spi((void *)MX31_CSPI1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx31_add_spi1(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)IMX_SPI2_BASE, 1, pdata);
+	return imx_add_spi((void *)MX31_CSPI2_BASE_ADDR, 1, pdata);
+}
+
+static inline struct device_d *imx31_add_spi2(struct spi_imx_master *pdata)
+{
+	return imx_add_spi((void *)MX31_CSPI3_BASE_ADDR, 2, pdata);
 }
-#endif
 
 static inline struct device_d *imx31_add_uart0(void)
 {
-	return imx_add_uart((void *)IMX_UART1_BASE, 0);
+	return imx_add_uart((void *)MX31_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx31_add_uart1(void)
 {
-	return imx_add_uart((void *)IMX_UART2_BASE, 1);
+	return imx_add_uart((void *)MX31_UART2_BASE_ADDR, 1);
+}
+
+static inline struct device_d *imx31_add_uart2(void)
+{
+	return imx_add_uart((void *)MX31_UART3_BASE_ADDR, 2);
+}
+
+static inline struct device_d *imx31_add_uart3(void)
+{
+	return imx_add_uart((void *)MX31_UART4_BASE_ADDR, 3);
+}
+
+static inline struct device_d *imx31_add_uart4(void)
+{
+	return imx_add_uart((void *)MX31_UART5_BASE_ADDR, 4);
 }
 
 static inline struct device_d *imx31_add_nand(struct imx_nand_platform_data *pdata)
 {
-	return imx_add_nand((void *)0xb8000000, pdata);
+	return imx_add_nand((void *)MX31_NFC_BASE_ADDR, pdata);
 }
 
 static inline struct device_d *imx31_add_fb(struct imx_ipu_fb_platform_data *pdata)
 {
-	return imx_add_ipufb((void *)IPU_BASE, pdata);
+	return imx_add_ipufb((void *)MX31_IPU_CTRL_BASE_ADDR, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/imx31-regs.h b/arch/arm/mach-imx/include/mach/imx31-regs.h
index e3473d4..4d0efd5 100644
--- a/arch/arm/mach-imx/include/mach/imx31-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx31-regs.h
@@ -19,6 +19,8 @@
 #ifndef __ASM_ARCH_MX31_REGS_H
 #define __ASM_ARCH_MX31_REGS_H
 
+#include <sizes.h>
+
 /*
  * sanity check
  */
@@ -26,72 +28,125 @@
 # error "Please do not include directly. Use imx-regs.h instead."
 #endif
 
-#define IMX_OTG_BASE	0x43F88000
-#define IMX_UART1_BASE	0x43F90000
-#define IMX_UART2_BASE	0x43F94000
-#define IMX_WDT_BASE	0x53FDC000
-#define IMX_RTC_BASE	0x53FD8000
-#define IMX_TIM1_BASE	0x53F90000
-#define IMX_IIM_BASE	0x5001C000
-
-#define IMX_SDRAM_CS0	0x80000000
-#define IMX_SDRAM_CS1	0x90000000
-
-/*
- * Adresses and ranges of the external chip select lines
- */
-#define IMX_CS0_BASE	0xA0000000
-#define IMX_CS0_RANGE	(128 * 1024 * 1024)
-#define IMX_CS1_BASE	0xA8000000
-#define IMX_CS1_RANGE	(128 * 1024 * 1024)
-#define IMX_CS2_BASE	0xB0000000
-#define IMX_CS2_RANGE	(32 * 1024 * 1024)
-#define IMX_CS3_BASE	0xB2000000
-#define IMX_CS3_RANGE	(32 * 1024 * 1024)
-#define IMX_CS4_BASE	0xB4000000
-#define IMX_CS4_RANGE	(32 * 1024 * 1024)
-#define IMX_CS5_BASE	0xB6000000
-#define IMX_CS5_RANGE	(32 * 1024 * 1024)
-
-#if 0
-#define IMX_IO_BASE		0x00200000
-
-/*
- *  Register BASEs, based on OFFSETs
- */
-#define IMX_AIPI1_BASE             (0x00000 + IMX_IO_BASE)
-#define                (0x01000 + IMX_IO_BASE)
-              (0x02000 + IMX_IO_BASE)
-#define IMX_TIM2_BASE              (0x03000 + IMX_IO_BASE)
-               (0x04000 + IMX_IO_BASE)
-#define IMX_LCDC_BASE              (0x05000 + IMX_IO_BASE)
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
-#endif
+#define MX31_AIPS1_BASE_ADDR		0x43f00000
+#define MX31_AIPS1_SIZE			SZ_1M
+#define MX31_MAX_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x04000)
+#define MX31_EVTMON_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x08000)
+#define MX31_CLKCTL_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x0c000)
+#define MX31_ETB_SLOT4_BASE_ADDR		(MX31_AIPS1_BASE_ADDR + 0x10000)
+#define MX31_ETB_SLOT5_BASE_ADDR		(MX31_AIPS1_BASE_ADDR + 0x14000)
+#define MX31_ECT_CTIO_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x18000)
+#define MX31_I2C1_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x80000)
+#define MX31_I2C3_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x84000)
+#define MX31_USB_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x88000)
+#define MX31_USB_OTG_BASE_ADDR			(MX31_USB_BASE_ADDR + 0x0000)
+#define MX31_USB_HS1_BASE_ADDR			(MX31_USB_BASE_ADDR + 0x0200)
+#define MX31_USB_HS2_BASE_ADDR			(MX31_USB_BASE_ADDR + 0x0400)
+#define MX31_ATA_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x8c000)
+#define MX31_UART1_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x90000)
+#define MX31_UART2_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x94000)
+#define MX31_I2C2_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x98000)
+#define MX31_OWIRE_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x9c000)
+#define MX31_SSI1_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0xa0000)
+#define MX31_CSPI1_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0xa4000)
+#define MX31_KPP_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0xa8000)
+#define MX31_IOMUXC_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0xac000)
+#define MX31_UART4_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0xb0000)
+#define MX31_UART5_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0xb4000)
+#define MX31_ECT_IP1_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0xb8000)
+#define MX31_ECT_IP2_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0xbc000)
+
+#define MX31_SPBA0_BASE_ADDR		0x50000000
+#define MX31_SPBA0_SIZE			SZ_1M
+#define MX31_SDHC1_BASE_ADDR			(MX31_SPBA0_BASE_ADDR + 0x04000)
+#define MX31_SDHC2_BASE_ADDR			(MX31_SPBA0_BASE_ADDR + 0x08000)
+#define MX31_UART3_BASE_ADDR			(MX31_SPBA0_BASE_ADDR + 0x0c000)
+#define MX31_CSPI2_BASE_ADDR			(MX31_SPBA0_BASE_ADDR + 0x10000)
+#define MX31_SSI2_BASE_ADDR			(MX31_SPBA0_BASE_ADDR + 0x14000)
+#define MX31_SIM1_BASE_ADDR			(MX31_SPBA0_BASE_ADDR + 0x18000)
+#define MX31_IIM_BASE_ADDR			(MX31_SPBA0_BASE_ADDR + 0x1c000)
+#define MX31_ATA_DMA_BASE_ADDR			(MX31_SPBA0_BASE_ADDR + 0x20000)
+#define MX31_MSHC1_BASE_ADDR			(MX31_SPBA0_BASE_ADDR + 0x24000)
+#define MX31_SPBA_CTRL_BASE_ADDR		(MX31_SPBA0_BASE_ADDR + 0x3c000)
+
+#define MX31_AIPS2_BASE_ADDR		0x53f00000
+#define MX31_AIPS2_SIZE			SZ_1M
+#define MX31_CCM_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0x80000)
+#define MX31_CSPI3_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0x84000)
+#define MX31_FIRI_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0x8c000)
+#define MX31_GPT1_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0x90000)
+#define MX31_EPIT1_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0x94000)
+#define MX31_EPIT2_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0x98000)
+#define MX31_GPIO3_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xa4000)
+#define MX31_SCC_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xac000)
+#define MX31_SCM_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xae000)
+#define MX31_SMN_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xaf000)
+#define MX31_RNGA_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xb0000)
+#define MX31_IPU_CTRL_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xc0000)
+#define MX31_AUDMUX_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xc4000)
+#define MX31_MPEG4_ENC_BASE_ADDR		(MX31_AIPS2_BASE_ADDR + 0xc8000)
+#define MX31_GPIO1_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xcc000)
+#define MX31_GPIO2_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xd0000)
+#define MX31_SDMA_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xd4000)
+#define MX31_RTC_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xd8000)
+#define MX31_WDOG_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xdc000)
+#define MX31_PWM_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xe0000)
+#define MX31_RTIC_BASE_ADDR			(MX31_AIPS2_BASE_ADDR + 0xec000)
+
+#define MX31_ROMP_BASE_ADDR		0x60000000
+#define MX31_ROMP_SIZE			SZ_1M
+
+#define MX31_AVIC_BASE_ADDR		0x68000000
+#define MX31_AVIC_SIZE			SZ_1M
+
+#define MX31_IPU_MEM_BASE_ADDR		0x70000000
+#define MX31_CSD0_BASE_ADDR		0x80000000
+#define MX31_CSD1_BASE_ADDR		0x90000000
+
+#define MX31_CS0_BASE_ADDR		0xa0000000
+#define MX31_CS0_SIZE			SZ_128M
+
+#define MX31_CS1_BASE_ADDR		0xa8000000
+#define MX31_CS1_SIZE			SZ_128M
+
+#define MX31_CS2_BASE_ADDR		0xb0000000
+#define MX31_CS2_SIZE			SZ_32M
+
+#define MX31_CS3_BASE_ADDR		0xb2000000
+#define MX31_CS3_SIZE			SZ_32M
+
+#define MX31_CS4_BASE_ADDR		0xb4000000
+#define MX31_CS4_SIZE			SZ_32M
+
+#define MX31_CS5_BASE_ADDR		0xb6000000
+#define MX31_CS5_SIZE			SZ_32M
+
+#define MX31_X_MEMC_BASE_ADDR		0xb8000000
+#define MX31_X_MEMC_SIZE		SZ_64K
+#define MX31_NFC_BASE_ADDR			(MX31_X_MEMC_BASE_ADDR + 0x0000)
+#define MX31_ESDCTL_BASE_ADDR			(MX31_X_MEMC_BASE_ADDR + 0x1000)
+#define MX31_WEIM_BASE_ADDR			(MX31_X_MEMC_BASE_ADDR + 0x2000)
+#define MX31_M3IF_BASE_ADDR			(MX31_X_MEMC_BASE_ADDR + 0x3000)
+#define MX31_EMI_CTL_BASE_ADDR			(MX31_X_MEMC_BASE_ADDR + 0x4000)
+#define MX31_PCMCIA_CTL_BASE_ADDR		MX31_EMI_CTL_BASE_ADDR
+
+#define MX31_WEIM_CSCRx_BASE_ADDR(cs)	(MX31_WEIM_BASE_ADDR + (cs) * 0x10)
+#define MX31_WEIM_CSCRxU(cs)			(MX31_WEIM_CSCRx_BASE_ADDR(cs))
+#define MX31_WEIM_CSCRxL(cs)			(MX31_WEIM_CSCRx_BASE_ADDR(cs) + 0x4)
+#define MX31_WEIM_CSCRxA(cs)			(MX31_WEIM_CSCRx_BASE_ADDR(cs) + 0x8)
+
+#define MX31_PCMCIA_MEM_BASE_ADDR	0xbc000000
+
+/* FIXME: Get rid of these */
+#define IMX_TIM1_BASE	MX31_GPT1_BASE_ADDR
+#define IMX_WDT_BASE	MX31_WDOG_BASE_ADDR
+#define IMX_ESD_BASE	MX31_ESDCTL_BASE_ADDR
+#define IMX_NFC_BASE	MX31_NFC_BASE_ADDR
+#define IOMUXC_BASE	MX31_IOMUXC_BASE_ADDR
 
 /*
  * Clock Controller Module (CCM)
  */
-#define IMX_CCM_BASE	0x53f80000
 #define CCM_CCMR	0x00
 #define CCM_PDR0	0x04
 #define CCM_PDR1	0x08
@@ -124,15 +179,9 @@
 #define PDR0_MAX_PODF(x)	(((x) & 0x7) << 3)
 #define PDR0_MCU_PODF(x)	((x) & 0x7)
 
-#define IMX_ESD_BASE	0xb8001000
 #include "esdctl.h"
 
 /*
- * NFC Registers
- */
-#define IMX_NFC_BASE               (0xb8000000)
-
-/*
  * Chip Select Registers
  */
 #define WEIM_BASE	0xb8002000
@@ -143,26 +192,10 @@
 /*
  * ???????????
  */
-#define IOMUXC_BASE	0x43FAC000
 #define IOMUXC_GPR	(IOMUXC_BASE + 0x8)
 #define IOMUXC_SW_MUX_CTL(x)	(IOMUXC_BASE + 0xc + (x) * 4)
 #define IOMUXC_SW_PAD_CTL(x)	(IOMUXC_BASE + 0x154 + (x) * 4)
 
-#define IPU_BASE		0x53fc0000
-#define IPU_CONF		IPU_BASE
-
-#define IPU_CONF_PXL_ENDIAN	(1<<8)
-#define IPU_CONF_DU_EN		(1<<7)
-#define IPU_CONF_DI_EN		(1<<6)
-#define IPU_CONF_ADC_EN		(1<<5)
-#define IPU_CONF_SDC_EN		(1<<4)
-#define IPU_CONF_PF_EN		(1<<3)
-#define IPU_CONF_ROT_EN		(1<<2)
-#define IPU_CONF_IC_EN		(1<<1)
-#define IPU_CONF_SCI_EN		(1<<0)
-
-#define WDOG_BASE		0x53FDC000
-
 /*
  * Signal Multiplexing (IOMUX)
  */
@@ -214,4 +247,3 @@
 #define MUX_CSPI2_MISO_I2C2_SCL ((MUX_CTL_ALT1 << 8) | MUX_CTL_CSPI2_MISO)
 
 #endif /* __ASM_ARCH_MX31_REGS_H */
-
diff --git a/arch/arm/mach-imx/speed-imx31.c b/arch/arm/mach-imx/speed-imx31.c
index 64476b7..f8f73c1 100644
--- a/arch/arm/mach-imx/speed-imx31.c
+++ b/arch/arm/mach-imx/speed-imx31.c
@@ -21,12 +21,12 @@ ulong imx_get_mpl_dpdgck_clk(void)
 {
 	ulong infreq;
 
-	if ((readl(IMX_CCM_BASE + CCM_CCMR) & CCMR_PRCS_MASK) == CCMR_FPM)
+	if ((readl(MX31_CCM_BASE_ADDR + CCM_CCMR) & CCMR_PRCS_MASK) == CCMR_FPM)
 		infreq = CONFIG_MX31_CLK32 * 1024;
 	else
 		infreq = CONFIG_MX31_HCLK_FREQ;
 
-	return imx_decode_pll(readl(IMX_CCM_BASE + CCM_MPCTL), infreq);
+	return imx_decode_pll(readl(MX31_CCM_BASE_ADDR + CCM_MPCTL), infreq);
 }
 
 ulong imx_get_mcu_main_clk(void)
@@ -43,7 +43,7 @@ ulong imx_get_mcu_main_clk(void)
  */
 ulong imx_get_lcdclk(void)
 {
-	ulong hsp_podf = (readl(IMX_CCM_BASE + CCM_PDR0) >> 11) & 0x03;
+	ulong hsp_podf = (readl(MX31_CCM_BASE_ADDR + CCM_PDR0) >> 11) & 0x03;
 	ulong base_clk = imx_get_mcu_main_clk();
 
 	return base_clk / (hsp_podf + 1);
@@ -52,7 +52,7 @@ ulong imx_get_lcdclk(void)
 ulong imx_get_perclk1(void)
 {
 	u32 freq = imx_get_mcu_main_clk();
-	u32 pdr0 = readl(IMX_CCM_BASE + CCM_PDR0);
+	u32 pdr0 = readl(MX31_CCM_BASE_ADDR + CCM_PDR0);
 
 	freq /= ((pdr0 >> 3) & 0x7) + 1;
 	freq /= ((pdr0 >> 6) & 0x3) + 1;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
