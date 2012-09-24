Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BI-0005Tf-UN
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:14 +0200
Message-Id: <1348483583-12586-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/14] ARM i.MX27: give register base addresses a proper MX27_
 prefix
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    4 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S   |    4 +-
 arch/arm/boards/guf-neso/board.c                  |   12 +-
 arch/arm/boards/guf-neso/lowlevel.c               |    4 +-
 arch/arm/boards/imx27ads/imx27ads.c               |    4 +-
 arch/arm/boards/pcm038/lowlevel.c                 |    4 +-
 arch/arm/boards/pcm038/pcm970.c                   |   16 +-
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S    |    4 +-
 arch/arm/boards/phycard-i.MX27/pca100.c           |   20 +-
 arch/arm/mach-imx/external-nand-boot.c            |    2 +-
 arch/arm/mach-imx/imx27.c                         |   18 +-
 arch/arm/mach-imx/include/mach/devices-imx27.h    |   28 +--
 arch/arm/mach-imx/include/mach/imx27-regs.h       |  225 +++++++++++++--------
 13 files changed, 199 insertions(+), 146 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 068cc11..0ffe43f 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -223,13 +223,13 @@ device_initcall(eukrea_cpuimx27_devices_init);
 static int eukrea_cpuimx27_console_init(void)
 {
 #ifdef CONFIG_DRIVER_SERIAL_IMX
-	imx_add_uart((void *)IMX_UART1_BASE, DEVICE_ID_DYNAMIC);
+	imx27_add_uart0();
 #endif
 	/* configure 8 bit UART on cs3 */
 	FMCR &= ~0x2;
 	imx27_setup_weimcs(3, 0x0000D603, 0x0D1D0D01, 0x00D20000);
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
-	add_ns16550_device(DEVICE_ID_DYNAMIC, IMX_CS3_BASE + QUART_OFFSET, 0xf,
+	add_ns16550_device(DEVICE_ID_DYNAMIC, MX27_CS3_BASE_ADDR + QUART_OFFSET, 0xf,
 			 IORESOURCE_MEM_16BIT, &quad_uart_serial_plat);
 #endif
 	return 0;
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index 0dae3ec..4db5765 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -110,8 +110,8 @@ board_init_lowlevel:
 #ifdef CONFIG_NAND_IMX_BOOT
 	ldr	sp, =STACK_BASE + STACK_SIZE - 12	/* Setup a temporary stack in SDRAM */
 
-	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM                */
-	ldr	r2, =IMX_NFC_BASE + 0x1000	/* end of NFC SRAM                  */
+	ldr	r0, =MX27_NFC_BASE_ADDR		/* start of NFC SRAM                */
+	ldr	r2, =MX27_NFC_BASE_ADDR + 0x1000	/* end of NFC SRAM                  */
 
 	/* skip NAND boot if not running from NFC space */
 	cmp	pc, r0
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 7f25a11..7adee92 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -115,21 +115,21 @@ static void neso_usbh_init(void)
 {
 	uint32_t temp;
 
-	temp = readl(IMX_OTG_BASE + 0x600);
+	temp = readl(MX27_USB_OTG_BASE_ADDR + 0x600);
 	temp &= ~((3 << 21) | 1);
 	temp |= (1 << 5) | (1 << 16) | (1 << 19) | (1 << 20) | (1<<11);
-	writel(temp, IMX_OTG_BASE + 0x600);
+	writel(temp, MX27_USB_OTG_BASE_ADDR + 0x600);
 
-	temp = readl(IMX_OTG_BASE + 0x584);
+	temp = readl(MX27_USB_OTG_BASE_ADDR + 0x584);
 	temp &= ~(3 << 30);
 	temp |= 2 << 30;
-	writel(temp, IMX_OTG_BASE + 0x584);
+	writel(temp, MX27_USB_OTG_BASE_ADDR + 0x584);
 
 	mdelay(10);
 
 	gpio_set_value(USBH2_PHY_CS_GPIO, 0);
 	mdelay(10);
-	ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1);
+	ulpi_setup((void *)(MX27_USB_OTG_BASE_ADDR + 0x570), 1);
 }
 #endif
 
@@ -276,7 +276,7 @@ static int neso_devices_init(void)
 
 #ifdef CONFIG_USB
 	neso_usbh_init();
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX27_USB_OTG_BASE_ADDR + 0x400, NULL);
 #endif
 
 	imx27_add_fec(&fec_info);
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index e6059fe..3a78054 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -97,10 +97,10 @@ void __bare_init __naked board_init_lowlevel(void)
 #ifdef CONFIG_NAND_IMX_BOOT
 	/* skip NAND boot if not running from NFC space */
 	r = get_pc();
-	if (r < IMX_NFC_BASE || r > IMX_NFC_BASE + 0x800)
+	if (r < MX27_NFC_BASE_ADDR || r > MX27_NFC_BASE_ADDR + 0x800)
 		board_init_lowlevel_return();
 
-	src = (unsigned int *)IMX_NFC_BASE;
+	src = (unsigned int *)MX27_NFC_BASE_ADDR;
 	trg = (unsigned int *)_text;
 
 	/* Move ourselves out of NFC SRAM */
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index 0a9074d..f9416e1 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -54,10 +54,10 @@ static int imx27ads_timing_init(void)
 	imx27_setup_weimcs(0, 0x23524E80, 0x10000D03, 0x00720900);
 
 	/* Select FEC data through data path */
-	writew(0x0020, IMX_CS4_BASE + 0x10);
+	writew(0x0020, MX27_CS4_BASE_ADDR + 0x10);
 
 	/* Enable CPLD FEC data path */
-	writew(0x0010, IMX_CS4_BASE + 0x14);
+	writew(0x0010, MX27_CS4_BASE_ADDR + 0x14);
 
 	return 0;
 }
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 04438f6..f975d0e 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -103,10 +103,10 @@ void __bare_init __naked board_init_lowlevel(void)
 #ifdef CONFIG_NAND_IMX_BOOT
 	/* skip NAND boot if not running from NFC space */
 	r = get_pc();
-	if (r < IMX_NFC_BASE || r > IMX_NFC_BASE + 0x800)
+	if (r < MX27_NFC_BASE_ADDR || r > MX27_NFC_BASE_ADDR + 0x800)
 		board_init_lowlevel_return();
 
-	src = (unsigned int *)IMX_NFC_BASE;
+	src = (unsigned int *)MX27_NFC_BASE_ADDR;
 	trg = (unsigned int *)_text;
 
 	/* Move ourselves out of NFC SRAM */
diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index b2ed85f..d392ea4 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -31,28 +31,28 @@ static void pcm970_usbh2_init(void)
 {
 	uint32_t temp;
 
-	temp = readl(IMX_OTG_BASE + 0x600);
+	temp = readl(MX27_USB_OTG_BASE_ADDR + 0x600);
 	temp &= ~((3 << 21) | 1);
 	temp |= (1 << 5) | (1 << 16) | (1 << 19) | (1 << 20);
-	writel(temp, IMX_OTG_BASE + 0x600);
+	writel(temp, MX27_USB_OTG_BASE_ADDR + 0x600);
 
-	temp = readl(IMX_OTG_BASE + 0x584);
+	temp = readl(MX27_USB_OTG_BASE_ADDR + 0x584);
 	temp &= ~(3 << 30);
 	temp |= 2 << 30;
-	writel(temp, IMX_OTG_BASE + 0x584);
+	writel(temp, MX27_USB_OTG_BASE_ADDR + 0x584);
 
 	mdelay(10);
 
-	if (!ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1))
-		add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
+	if (!ulpi_setup((void *)(MX27_USB_OTG_BASE_ADDR + 0x570), 1))
+		add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX27_USB_OTG_BASE_ADDR + 0x400, NULL);
 }
 #endif
 
 #ifdef CONFIG_DISK_INTF_PLATFORM_IDE
 static struct resource pcm970_ide_resources[] = {
 	{
-		.start	= IMX_PCMCIA_MEM_BASE,
-		.end	= IMX_PCMCIA_MEM_BASE + SZ_1K - 1,
+		.start	= MX27_PCMCIA_MEM_BASE_ADDR,
+		.end	= MX27_PCMCIA_MEM_BASE_ADDR + SZ_1K - 1,
 		.flags	= IORESOURCE_MEM,
 	},
 };
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
index c24edd4..b3c2e0c 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
@@ -96,8 +96,8 @@ board_init_lowlevel:
 #ifdef CONFIG_NAND_IMX_BOOT
 	ldr	sp, =0xa0f00000		/* Setup a temporary stack in SDRAM */
 
-	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM                */
-	ldr	r2, =IMX_NFC_BASE + 0x1000	/* end of NFC SRAM                  */
+	ldr	r0, =MX27_NFC_BASE_ADDR		/* start of NFC SRAM                */
+	ldr	r2, =MX27_NFC_BASE_ADDR + 0x1000	/* end of NFC SRAM                  */
 
 	/* skip NAND boot if not running from NFC space */
 	cmp	pc, r0
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 16f3e4f..9b8f8c2 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -136,10 +136,10 @@ static void pca100_usb_register(void)
 
 	mdelay(10);
 
-	ulpi_setup((void *)(IMX_OTG_BASE + 0x170), 1);
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE, NULL);
-	ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1);
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
+	ulpi_setup((void *)(MX27_USB_OTG_BASE_ADDR + 0x170), 1);
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX27_USB_OTG_BASE_ADDR, NULL);
+	ulpi_setup((void *)(MX27_USB_OTG_BASE_ADDR + 0x570), 1);
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX27_USB_OTG_BASE_ADDR + 0x400, NULL);
 }
 #endif
 
@@ -155,10 +155,10 @@ static void pca100_usb_init(void)
 {
 	u32 reg;
 
-	reg = readl(IMX_OTG_BASE + 0x600);
+	reg = readl(MX27_USB_OTG_BASE_ADDR + 0x600);
 	reg &= ~((3 << 21) | 1);
 	reg |= (1 << 5) | (1 << 16) | (1 << 19) | (1 << 11) | (1 << 20);
-	writel(reg, IMX_OTG_BASE + 0x600);
+	writel(reg, MX27_USB_OTG_BASE_ADDR + 0x600);
 
 	/*
 	 * switch usbotg and usbh2 to ulpi mode. Do this *before*
@@ -166,15 +166,15 @@ static void pca100_usb_init(void)
 	 * triggering. Also, do this even when USB support is
 	 * disabled to give Linux USB support a good start.
 	 */
-	reg = readl(IMX_OTG_BASE + 0x584);
+	reg = readl(MX27_USB_OTG_BASE_ADDR + 0x584);
 	reg &= ~(3 << 30);
 	reg |= 2 << 30;
-	writel(reg, IMX_OTG_BASE + 0x584);
+	writel(reg, MX27_USB_OTG_BASE_ADDR + 0x584);
 
-	reg = readl(IMX_OTG_BASE + 0x184);
+	reg = readl(MX27_USB_OTG_BASE_ADDR + 0x184);
 	reg &= ~(3 << 30);
 	reg |= 2 << 30;
-	writel(reg, IMX_OTG_BASE + 0x184);
+	writel(reg, MX27_USB_OTG_BASE_ADDR + 0x184);
 
 	/* disable the usb phys */
 	imx_gpio_mode((GPIO_PORTB | 23) | GPIO_GPIO | GPIO_IN);
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 5cab32f..a590992 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -122,7 +122,7 @@ static int __maybe_unused is_pagesize_2k(void)
 		return 0;
 #endif
 #ifdef CONFIG_ARCH_IMX27
-	if (readl(IMX_SYSTEM_CTL_BASE + 0x14) & (1 << 5))
+	if (readl(MX27_SYSCTRL_BASE_ADDR + 0x14) & (1 << 5))
 		return 1;
 	else
 		return 0;
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 32a32a3..76bb910 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -43,7 +43,7 @@ int imx_silicon_revision(void)
 
 static void imx27_init_max(void)
 {
-	void __iomem *max_base = (void *)IMX_MAX_BASE;
+	void __iomem *max_base = (void *)MX27_MAX_BASE_ADDR;
 	u32 val;
 
 	/* 0 is the highest priority */
@@ -64,18 +64,18 @@ static void imx27_init_max(void)
 
 static int imx27_init(void)
 {
-	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
+	add_generic_device("imx_iim", 0, NULL, MX27_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
 	imx27_init_max();
 
-	add_generic_device("imx1-gpt", 0, NULL, 0x10003000, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 0, NULL, 0x10015000, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 1, NULL, 0x10015100, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 2, NULL, 0x10015200, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 3, NULL, 0x10015300, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 4, NULL, 0x10015400, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-gpio", 5, NULL, 0x10015500, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpt", 0, NULL, MX27_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 0, NULL, MX27_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 1, NULL, MX27_GPIO2_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 2, NULL, MX27_GPIO3_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 3, NULL, MX27_GPIO4_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 4, NULL, MX27_GPIO5_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 5, NULL, MX27_GPIO6_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	return 0;
 }
 console_initcall(imx27_init);
diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/arch/arm/mach-imx/include/mach/devices-imx27.h
index 6a3a234..2799343 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx27.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
@@ -3,70 +3,70 @@
 
 static inline struct device_d *imx27_add_spi0(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)IMX_SPI1_BASE, 0, pdata);
+	return imx_add_spi((void *)MX27_CSPI1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx27_add_spi1(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)IMX_SPI2_BASE, 1, pdata);
+	return imx_add_spi((void *)MX27_CSPI2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx27_add_i2c0(struct i2c_platform_data *pdata)
 {
-	return imx_add_i2c((void *)IMX_I2C1_BASE, 0, pdata);
+	return imx_add_i2c((void *)MX27_I2C1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx27_add_i2c1(struct i2c_platform_data *pdata)
 {
-	return imx_add_i2c((void *)IMX_I2C2_BASE, 1, pdata);
+	return imx_add_i2c((void *)MX27_I2C2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx27_add_uart0(void)
 {
-	return imx_add_uart((void *)IMX_UART1_BASE, 0);
+	return imx_add_uart((void *)MX27_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx27_add_uart1(void)
 {
-	return imx_add_uart((void *)IMX_UART2_BASE, 1);
+	return imx_add_uart((void *)MX27_UART2_BASE_ADDR, 1);
 }
 
 static inline struct device_d *imx27_add_uart2(void)
 {
-	return imx_add_uart((void *)IMX_UART3_BASE, 2);
+	return imx_add_uart((void *)MX27_UART3_BASE_ADDR, 2);
 }
 
 static inline struct device_d *imx27_add_uart3(void)
 {
-	return imx_add_uart((void *)IMX_UART4_BASE, 3);
+	return imx_add_uart((void *)MX27_UART4_BASE_ADDR, 3);
 }
 
 static inline struct device_d *imx27_add_nand(struct imx_nand_platform_data *pdata)
 {
-	return imx_add_nand((void *)IMX_NFC_BASE, pdata);
+	return imx_add_nand((void *)MX27_NFC_BASE_ADDR, pdata);
 }
 
 static inline struct device_d *imx27_add_fb(struct imx_fb_platform_data *pdata)
 {
-	return imx_add_fb((void *)IMX_FB_BASE, pdata);
+	return imx_add_fb((void *)MX27_LCDC_BASE_ADDR, pdata);
 }
 
 static inline struct device_d *imx27_add_fec(struct fec_platform_data *pdata)
 {
-	return imx_add_fec((void *)IMX_FEC_BASE, pdata);
+	return imx_add_fec((void *)MX27_FEC_BASE_ADDR, pdata);
 }
 
 static inline struct device_d *imx27_add_mmc0(void *pdata)
 {
-	return imx_add_mmc((void *)IMX_SDHC1_BASE, 0, pdata);
+	return imx_add_mmc((void *)MX27_SDHC1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx27_add_mmc1(void *pdata)
 {
-	return imx_add_mmc((void *)IMX_SDHC2_BASE, 1, pdata);
+	return imx_add_mmc((void *)MX27_SDHC2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx27_add_mmc2(void *pdata)
 {
-	return imx_add_mmc((void *)IMX_SDHC3_BASE, 2, pdata);
+	return imx_add_mmc((void *)MX27_SDHC3_BASE_ADDR, 2, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 8686a9d..907afa4 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -5,66 +5,133 @@
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
-#define IMX_SPI1_BASE              (0x0e000 + IMX_IO_BASE)
-#define IMX_SPI2_BASE              (0x0f000 + IMX_IO_BASE)
-#define IMX_I2C1_BASE              (0x12000 + IMX_IO_BASE)
-#define IMX_SDHC1_BASE             (0x13000 + IMX_IO_BASE)
-#define IMX_SDHC2_BASE             (0x14000 + IMX_IO_BASE)
-#define IMX_GPIO_BASE              (0x15000 + IMX_IO_BASE)
-#define IMX_TIM4_BASE              (0x19000 + IMX_IO_BASE)
-#define IMX_TIM5_BASE              (0x1a000 + IMX_IO_BASE)
-#define IMX_UART5_BASE             (0x1b000 + IMX_IO_BASE)
-#define IMX_UART6_BASE             (0x1c000 + IMX_IO_BASE)
-#define IMX_I2C2_BASE              (0x1d000 + IMX_IO_BASE)
-#define IMX_SDHC3_BASE             (0x1e000 + IMX_IO_BASE)
-#define IMX_TIM6_BASE              (0x1f000 + IMX_IO_BASE)
-#define IMX_AIPI2_BASE             (0x20000 + IMX_IO_BASE)
-#define IMX_FB_BASE                (0x21000 + IMX_IO_BASE)
-#define IMX_PLL_BASE               (0x27000 + IMX_IO_BASE)
-#define IMX_SYSTEM_CTL_BASE        (0x27800 + IMX_IO_BASE)
-#define IMX_IIM_BASE               (0x28000 + IMX_IO_BASE)
-#define IMX_OTG_BASE               (0x24000 + IMX_IO_BASE)
-#define IMX_FEC_BASE               (0x2b000 + IMX_IO_BASE)
-#define IMX_MAX_BASE               (0x3f000 + IMX_IO_BASE)
-
-#define IMX_NFC_BASE               (0xd8000000)
-#define IMX_ESD_BASE               (0xd8001000)
-#define IMX_WEIM_BASE              (0xd8002000)
-#define IMX_M3IF_BASE		(0xd8003000)
-#define IMX_PCMCIA_CTL_BASE	(0xd8004000)
-
-#define PCMCIA_PIPR		(IMX_PCMCIA_CTL_BASE + 0x00)
-#define PCMCIA_PSCR		(IMX_PCMCIA_CTL_BASE + 0x04)
-#define PCMCIA_PER		(IMX_PCMCIA_CTL_BASE + 0x08)
-#define PCMCIA_PBR(x)		(IMX_PCMCIA_CTL_BASE + 0x0c + ((x) << 2))
-#define PCMCIA_POR(x)		(IMX_PCMCIA_CTL_BASE + 0x28 + ((x) << 2))
-#define PCMCIA_POFR(x)		(IMX_PCMCIA_CTL_BASE + 0x44 + ((x) << 2))
-#define PCMCIA_PGCR		(IMX_PCMCIA_CTL_BASE + 0x60)
-#define PCMCIA_PGSR		(IMX_PCMCIA_CTL_BASE + 0x64)
+#define MX27_AIPI_BASE_ADDR		0x10000000
+#define MX27_AIPI_SIZE			SZ_1M
+#define MX27_DMA_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x01000)
+#define MX27_WDOG_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x02000)
+#define MX27_GPT1_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x03000)
+#define MX27_GPT2_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x04000)
+#define MX27_GPT3_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x05000)
+#define MX27_PWM_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x06000)
+#define MX27_RTC_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x07000)
+#define MX27_KPP_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x08000)
+#define MX27_OWIRE_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x09000)
+#define MX27_UART1_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x0a000)
+#define MX27_UART2_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x0b000)
+#define MX27_UART3_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x0c000)
+#define MX27_UART4_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x0d000)
+#define MX27_CSPI1_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x0e000)
+#define MX27_CSPI2_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x0f000)
+#define MX27_SSI1_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x10000)
+#define MX27_SSI2_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x11000)
+#define MX27_I2C1_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x12000)
+#define MX27_SDHC1_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x13000)
+#define MX27_SDHC2_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x14000)
+#define MX27_GPIO_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x15000)
+#define MX27_GPIO1_BASE_ADDR			(MX27_GPIO_BASE_ADDR + 0x000)
+#define MX27_GPIO2_BASE_ADDR			(MX27_GPIO_BASE_ADDR + 0x100)
+#define MX27_GPIO3_BASE_ADDR			(MX27_GPIO_BASE_ADDR + 0x200)
+#define MX27_GPIO4_BASE_ADDR			(MX27_GPIO_BASE_ADDR + 0x300)
+#define MX27_GPIO5_BASE_ADDR			(MX27_GPIO_BASE_ADDR + 0x400)
+#define MX27_GPIO6_BASE_ADDR			(MX27_GPIO_BASE_ADDR + 0x500)
+#define MX27_AUDMUX_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x16000)
+#define MX27_CSPI3_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x17000)
+#define MX27_MSHC_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x18000)
+#define MX27_GPT4_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x19000)
+#define MX27_GPT5_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x1a000)
+#define MX27_UART5_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x1b000)
+#define MX27_UART6_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x1c000)
+#define MX27_I2C2_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x1d000)
+#define MX27_SDHC3_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x1e000)
+#define MX27_GPT6_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x1f000)
+#define MX27_LCDC_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x21000)
+#define MX27_SLCDC_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x22000)
+#define MX27_VPU_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x23000)
+#define MX27_USB_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x24000)
+#define MX27_USB_OTG_BASE_ADDR			(MX27_USB_BASE_ADDR + 0x0000)
+#define MX27_USB_HS1_BASE_ADDR			(MX27_USB_BASE_ADDR + 0x0200)
+#define MX27_USB_HS2_BASE_ADDR			(MX27_USB_BASE_ADDR + 0x0400)
+#define MX27_SAHARA_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x25000)
+#define MX27_EMMAPP_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x26000)
+#define MX27_EMMAPRP_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x26400)
+#define MX27_CCM_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x27000)
+#define MX27_SYSCTRL_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x27800)
+#define MX27_IIM_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x28000)
+#define MX27_RTIC_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x2a000)
+#define MX27_FEC_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x2b000)
+#define MX27_SCC_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x2c000)
+#define MX27_ETB_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x3b000)
+#define MX27_ETB_RAM_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x3c000)
+#define MX27_JAM_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x3e000)
+#define MX27_MAX_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x3f000)
+
+#define MX27_AVIC_BASE_ADDR		0x10040000
+
+/* ROM patch */
+#define MX27_ROMP_BASE_ADDR		0x10041000
+
+#define MX27_SAHB1_BASE_ADDR		0x80000000
+#define MX27_SAHB1_SIZE			SZ_1M
+#define MX27_CSI_BASE_ADDR			(MX27_SAHB1_BASE_ADDR + 0x0000)
+#define MX27_ATA_BASE_ADDR			(MX27_SAHB1_BASE_ADDR + 0x1000)
+
+/* Memory regions and CS */
+#define MX27_CSD0_BASE_ADDR		0xa0000000
+#define MX27_CSD1_BASE_ADDR		0xb0000000
+
+#define MX27_CS0_BASE_ADDR		0xc0000000
+#define MX27_CS1_BASE_ADDR		0xc8000000
+#define MX27_CS2_BASE_ADDR		0xd0000000
+#define MX27_CS3_BASE_ADDR		0xd2000000
+#define MX27_CS4_BASE_ADDR		0xd4000000
+#define MX27_CS5_BASE_ADDR		0xd6000000
+
+/* NAND, SDRAM, WEIM, M3IF, EMI controllers */
+#define MX27_X_MEMC_BASE_ADDR		0xd8000000
+#define MX27_X_MEMC_SIZE		SZ_1M
+#define MX27_NFC_BASE_ADDR		(MX27_X_MEMC_BASE_ADDR)
+#define MX27_SDRAMC_BASE_ADDR		(MX27_X_MEMC_BASE_ADDR + 0x1000)
+#define MX27_WEIM_BASE_ADDR		(MX27_X_MEMC_BASE_ADDR + 0x2000)
+#define MX27_M3IF_BASE_ADDR		(MX27_X_MEMC_BASE_ADDR + 0x3000)
+#define MX27_PCMCIA_CTL_BASE_ADDR	(MX27_X_MEMC_BASE_ADDR + 0x4000)
+
+#define MX27_WEIM_CSCRx_BASE_ADDR(cs)	(MX27_WEIM_BASE_ADDR + (cs) * 0x10)
+#define MX27_WEIM_CSCRxU(cs)		(MX27_WEIM_CSCRx_BASE_ADDR(cs))
+#define MX27_WEIM_CSCRxL(cs)		(MX27_WEIM_CSCRx_BASE_ADDR(cs) + 0x4)
+#define MX27_WEIM_CSCRxA(cs)		(MX27_WEIM_CSCRx_BASE_ADDR(cs) + 0x8)
+
+#define MX27_PCMCIA_MEM_BASE_ADDR	0xdc000000
+
+/* IRAM */
+#define MX27_IRAM_BASE_ADDR		0xffff4c00	/* internal ram */
+
+/* FIXME: get rid of these */
+#define IMX_GPIO_BASE		MX27_GPIO_BASE_ADDR
+#define IMX_NFC_BASE		MX27_NFC_BASE_ADDR
+#define IMX_WDT_BASE		MX27_WDOG_BASE_ADDR
+#define IMX_ESD_BASE		MX27_SDRAMC_BASE_ADDR
+
+#define PCMCIA_PIPR		(MX27_PCMCIA_CTL_BASE_ADDR + 0x00)
+#define PCMCIA_PSCR		(MX27_PCMCIA_CTL_BASE_ADDR + 0x04)
+#define PCMCIA_PER		(MX27_PCMCIA_CTL_BASE_ADDR + 0x08)
+#define PCMCIA_PBR(x)		(MX27_PCMCIA_CTL_BASE_ADDR + 0x0c + ((x) << 2))
+#define PCMCIA_POR(x)		(MX27_PCMCIA_CTL_BASE_ADDR + 0x28 + ((x) << 2))
+#define PCMCIA_POFR(x)		(MX27_PCMCIA_CTL_BASE_ADDR + 0x44 + ((x) << 2))
+#define PCMCIA_PGCR		(MX27_PCMCIA_CTL_BASE_ADDR + 0x60)
+#define PCMCIA_PGSR		(MX27_PCMCIA_CTL_BASE_ADDR + 0x64)
 
 /* AIPI */
-#define AIPI1_PSR0	__REG(IMX_AIPI1_BASE + 0x00)
-#define AIPI1_PSR1	__REG(IMX_AIPI1_BASE + 0x04)
-#define AIPI2_PSR0	__REG(IMX_AIPI2_BASE + 0x00)
-#define AIPI2_PSR1	__REG(IMX_AIPI2_BASE + 0x04)
+#define AIPI1_PSR0	__REG(MX27_AIPI_BASE_ADDR + 0x00)
+#define AIPI1_PSR1	__REG(MX27_AIPI_BASE_ADDR + 0x04)
+#define AIPI2_PSR0	__REG(MX27_AIPI_BASE_ADDR + 0x20000 + 0x00)
+#define AIPI2_PSR1	__REG(MX27_AIPI_BASE_ADDR + 0x20000 + 0x04)
 
 /* System Control */
-#define CID     __REG(IMX_SYSTEM_CTL_BASE + 0x0)		/* Chip ID Register */
-#define FMCR    __REG(IMX_SYSTEM_CTL_BASE + 0x14)		/* Function Multeplexing Control Register */
-#define GPCR	__REG(IMX_SYSTEM_CTL_BASE + 0x18)		/* Global Peripheral Control Register */
-#define WBCR	__REG(IMX_SYSTEM_CTL_BASE + 0x1C)		/* Well Bias Control Register */
-#define DSCR(x)	__REG(IMX_SYSTEM_CTL_BASE + 0x1C + ((x) << 2))	/* Driving Strength Control Register 1 - 13 */
+#define CID     __REG(MX27_SYSCTRL_BASE_ADDR + 0x0)		/* Chip ID Register */
+#define FMCR    __REG(MX27_SYSCTRL_BASE_ADDR + 0x14)		/* Function Multeplexing Control Register */
+#define GPCR	__REG(MX27_SYSCTRL_BASE_ADDR + 0x18)		/* Global Peripheral Control Register */
+#define WBCR	__REG(MX27_SYSCTRL_BASE_ADDR + 0x1C)		/* Well Bias Control Register */
+#define DSCR(x)	__REG(MX27_SYSCTRL_BASE_ADDR + 0x1C + ((x) << 2))	/* Driving Strength Control Register 1 - 13 */
 
 #define GPCR_BOOT_SHIFT			16
 #define GPCR_BOOT_MASK			(0xf << GPCR_BOOT_SHIFT)
@@ -76,26 +143,20 @@
 #define GPCR_BOOT_32BIT_CS0		6
 #define GPCR_BOOT_8BIT_NAND_512		7
 
-/* Chip Select Registers */
-#define CSxU(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x00) /* Chip Select x Upper Register    */
-#define CSxL(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x04) /* Chip Select x Lower Register    */
-#define CSxA(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x08) /* Chip Select x Addition Register */
-#define EIM  __REG(IMX_WEIM_BASE + 0x60) /* WEIM Configuration Register     */
-
 #include "esdctl.h"
 
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
+#define CSCR		__REG(MX27_CCM_BASE_ADDR + 0x00) /* Clock Source Control Register       */
+#define MPCTL0		__REG(MX27_CCM_BASE_ADDR + 0x04) /* MCU PLL Control Register 0          */
+#define MPCTL1		__REG(MX27_CCM_BASE_ADDR + 0x08) /* MCU PLL Control Register 1          */
+#define SPCTL0		__REG(MX27_CCM_BASE_ADDR + 0x0c) /* System PLL Control Register 0       */
+#define SPCTL1		__REG(MX27_CCM_BASE_ADDR + 0x10) /* System PLL Control Register 1       */
+#define OSC26MCTL	__REG(MX27_CCM_BASE_ADDR + 0x14) /* Oscillator 26M Register             */
+#define PCDR0		__REG(MX27_CCM_BASE_ADDR + 0x18) /* Peripheral Clock Divider Register 0 */
+#define PCDR1		__REG(MX27_CCM_BASE_ADDR + 0x1c) /* Peripheral Clock Divider Register 1 */
+#define PCCR0		__REG(MX27_CCM_BASE_ADDR + 0x20) /* Peripheral Clock Control Register 0 */
+#define PCCR1		__REG(MX27_CCM_BASE_ADDR + 0x24) /* Peripheral Clock Control Register 1 */
+#define CCSR		__REG(MX27_CCM_BASE_ADDR + 0x28) /* Clock Control Status Register       */
 
 #define CSCR_MPEN		(1 << 0)
 #define CSCR_SPEN		(1 << 1)
@@ -221,21 +282,13 @@
 #define ESDCFG_TWTR		(1 << 20)
 #define ESDCFG_TXP(x)		(((x) & 0x3) << 21)
 
-#define IMX_CS0_BASE	0xC0000000
-#define IMX_CS1_BASE	0xC8000000
-#define IMX_CS2_BASE	0xD0000000
-#define IMX_CS3_BASE	0xD2000000
-#define IMX_CS4_BASE	0xD4000000
-#define IMX_CS5_BASE	0xD6000000
-
-#define IMX_PCMCIA_MEM_BASE	(0xdc000000)
-
 #ifndef __ASSEMBLY__
-static inline void imx27_setup_weimcs(size_t cs, unsigned upper, unsigned lower, unsigned addional)
+#include <io.h>
+static inline void imx27_setup_weimcs(size_t cs, unsigned upper, unsigned lower, unsigned additional)
 {
-	CSxU(cs) = upper;
-	CSxL(cs) = lower;
-	CSxA(cs) = addional;
+	writel(upper, MX27_WEIM_BASE_ADDR + (cs * 0x10) + 0x0);
+	writel(lower, MX27_WEIM_BASE_ADDR + (cs * 0x10) + 0x4);
+	writel(additional, MX27_WEIM_BASE_ADDR + (cs * 0x10) + 0x4);
 }
 #endif /* __ASSEMBLY__ */
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
