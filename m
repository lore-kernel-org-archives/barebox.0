Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BI-0005Tg-UX
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:15 +0200
Message-Id: <1348483583-12586-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/14] ARM i.MX25: give register base addresses a proper MX25_
 prefix
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   32 ++---
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |   32 ++---
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   20 ++--
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |   26 ++---
 arch/arm/boards/karo-tx25/board.c                  |    6 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |   14 +--
 arch/arm/mach-imx/imx25.c                          |   20 +++-
 arch/arm/mach-imx/include/mach/devices-imx25.h     |   55 +++++++--
 arch/arm/mach-imx/include/mach/imx25-regs.h        |  123 +++++++++++++-------
 arch/arm/mach-imx/speed-imx25.c                    |   22 ++--
 10 files changed, 217 insertions(+), 133 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 4dc5501..bf3cbc3 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -93,21 +93,21 @@ static void imx25_usb_init(void)
 	unsigned int tmp;
 
 	/* Host 1 */
-	tmp = readl(IMX_OTG_BASE + 0x600);
+	tmp = readl(MX25_USB_OTG_BASE_ADDR + 0x600);
 	tmp &= ~(MX35_H1_SIC_MASK | MX35_H1_PM_BIT | MX35_H1_TLL_BIT |
 		MX35_H1_USBTE_BIT | MX35_H1_IPPUE_DOWN_BIT | MX35_H1_IPPUE_UP_BIT);
 	tmp |= (MXC_EHCI_INTERFACE_SINGLE_UNI) << MX35_H1_SIC_SHIFT;
 	tmp |= MX35_H1_USBTE_BIT;
 	tmp |= MX35_H1_IPPUE_DOWN_BIT;
-	writel(tmp, IMX_OTG_BASE + 0x600);
+	writel(tmp, MX25_USB_OTG_BASE_ADDR + 0x600);
 
-	tmp = readl(IMX_OTG_BASE + 0x584);
+	tmp = readl(MX25_USB_OTG_BASE_ADDR + 0x584);
 	tmp |= 3 << 30;
-	writel(tmp, IMX_OTG_BASE + 0x584);
+	writel(tmp, MX25_USB_OTG_BASE_ADDR + 0x584);
 
 	/* Set to Host mode */
-	tmp = readl(IMX_OTG_BASE + 0x5a8);
-	writel(tmp | 0x3, IMX_OTG_BASE + 0x5a8);
+	tmp = readl(MX25_USB_OTG_BASE_ADDR + 0x5a8);
+	writel(tmp | 0x3, MX25_USB_OTG_BASE_ADDR + 0x5a8);
 }
 
 #endif
@@ -119,7 +119,7 @@ static struct fsl_usb2_platform_data usb_pdata = {
 
 static int eukrea_cpuimx25_mem_init(void)
 {
-	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 64 * 1024 * 1024);
+	arm_add_mem_device("ram0", MX25_CSD0_BASE_ADDR, 64 * 1024 * 1024);
 
 	return 0;
 }
@@ -219,12 +219,12 @@ static int eukrea_cpuimx25_devices_init(void)
 
 #ifdef CONFIG_USB
 	imx25_usb_init();
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX25_USB_OTG_BASE_ADDR + 0x400, NULL);
 #endif
 #ifdef CONFIG_USB_GADGET
 	/* Workaround ENGcm09152 */
-	writel(readl(IMX_OTG_BASE + 0x608) | (1 << 23), IMX_OTG_BASE + 0x608);
-	add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL, IMX_OTG_BASE, 0x200,
+	writel(readl(MX25_USB_OTG_BASE_ADDR + 0x608) | (1 << 23), MX25_USB_OTG_BASE_ADDR + 0x608);
+	add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL, MX25_USB_OTG_BASE_ADDR, 0x200,
 			   IORESOURCE_MEM, &usb_pdata);
 #endif
 
@@ -253,13 +253,13 @@ void __bare_init nand_boot(void)
 
 static int eukrea_cpuimx25_core_init(void) {
 	/* enable UART1, FEC, SDHC, USB & I2C clock */
-	writel(readl(IMX_CCM_BASE + CCM_CGCR0) | (1 << 6) | (1 << 23)
+	writel(readl(MX25_CCM_BASE_ADDR + CCM_CGCR0) | (1 << 6) | (1 << 23)
 		| (1 << 15) | (1 << 21) | (1 << 3) | (1 << 28),
-		IMX_CCM_BASE + CCM_CGCR0);
-	writel(readl(IMX_CCM_BASE + CCM_CGCR1) | (1 << 23) | (1 << 15)
-		| (1 << 13), IMX_CCM_BASE + CCM_CGCR1);
-	writel(readl(IMX_CCM_BASE + CCM_CGCR2) | (1 << 14),
-		IMX_CCM_BASE + CCM_CGCR2);
+		MX25_CCM_BASE_ADDR + CCM_CGCR0);
+	writel(readl(MX25_CCM_BASE_ADDR + CCM_CGCR1) | (1 << 23) | (1 << 15)
+		| (1 << 13), MX25_CCM_BASE_ADDR + CCM_CGCR1);
+	writel(readl(MX25_CCM_BASE_ADDR + CCM_CGCR2) | (1 << 14),
+		MX25_CCM_BASE_ADDR + CCM_CGCR2);
 
 	return 0;
 }
diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index 9c1b4f8..feddacc 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -54,20 +54,20 @@ void __bare_init __naked board_init_lowlevel(void)
 	register uint32_t loops = 0x20000;
 
 	/* restart the MPLL and wait until it's stable */
-	writel(readl(IMX_CCM_BASE + CCM_CCTL) | (1 << 27),
-						IMX_CCM_BASE + CCM_CCTL);
-	while (readl(IMX_CCM_BASE + CCM_CCTL) & (1 << 27)) {};
+	writel(readl(MX25_CCM_BASE_ADDR + CCM_CCTL) | (1 << 27),
+						MX25_CCM_BASE_ADDR + CCM_CCTL);
+	while (readl(MX25_CCM_BASE_ADDR + CCM_CCTL) & (1 << 27)) {};
 
 	/* Configure dividers and ARM clock source
 	 * 	ARM @ 400 MHz
 	 * 	AHB @ 133 MHz
 	 */
-	writel(0x20034000, IMX_CCM_BASE + CCM_CCTL);
+	writel(0x20034000, MX25_CCM_BASE_ADDR + CCM_CCTL);
 
 	/* Enable UART1 / FEC / */
-/*	writel(0x1FFFFFFF, IMX_CCM_BASE + CCM_CGCR0);
-	writel(0xFFFFFFFF, IMX_CCM_BASE + CCM_CGCR1);
-	writel(0x000FDFFF, IMX_CCM_BASE + CCM_CGCR2);*/
+/*	writel(0x1FFFFFFF, MX25_CCM_BASE_ADDR + CCM_CGCR0);
+	writel(0xFFFFFFFF, MX25_CCM_BASE_ADDR + CCM_CGCR1);
+	writel(0x000FDFFF, MX25_CCM_BASE_ADDR + CCM_CGCR2);*/
 
 	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.
 	 * Set all MPROTx to be non-bufferable, trusted for R/W,
@@ -115,10 +115,10 @@ void __bare_init __naked board_init_lowlevel(void)
 	writel(0x1, 0xb8003000);
 
 	/* Speed up NAND controller by adjusting the NFC divider */
-	r = readl(IMX_CCM_BASE + CCM_PCDR2);
+	r = readl(MX25_CCM_BASE_ADDR + CCM_PCDR2);
 	r &= ~0xf;
 	r |= 0x1;
-	writel(r, IMX_CCM_BASE + CCM_PCDR2);
+	writel(r, MX25_CCM_BASE_ADDR + CCM_PCDR2);
 
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
@@ -134,22 +134,22 @@ void __bare_init __naked board_init_lowlevel(void)
 
 	writel(0x0029572B, ESDCFG0);
 	writel(0x92210000, ESDCTL0);
-	writeb(0xda, IMX_SDRAM_CS0 + 0x400);
+	writeb(0xda, MX25_CSD0_BASE_ADDR + 0x400);
 	writel(0xA2210000, ESDCTL0);
-	writeb(0xda, IMX_SDRAM_CS0);
-	writeb(0xda, IMX_SDRAM_CS0);
+	writeb(0xda, MX25_CSD0_BASE_ADDR);
+	writeb(0xda, MX25_CSD0_BASE_ADDR);
 	writel(0xB2210000, ESDCTL0);
-	writeb(0xda, IMX_SDRAM_CS0 + 0x33);
-	writeb(0xda, IMX_SDRAM_CS0 + 0x1000000);
+	writeb(0xda, MX25_CSD0_BASE_ADDR + 0x33);
+	writeb(0xda, MX25_CSD0_BASE_ADDR + 0x1000000);
 	writel(0x82216080, ESDCTL0);
 
 #ifdef CONFIG_NAND_IMX_BOOT
 	/* skip NAND boot if not running from NFC space */
 	r = get_pc();
-	if (r < IMX_NFC_BASE || r > IMX_NFC_BASE + 0x800)
+	if (r < MX25_NFC_BASE_ADDR || r > MX25_NFC_BASE_ADDR + 0x800)
 		board_init_lowlevel_return();
 
-	src = (unsigned int *)IMX_NFC_BASE;
+	src = (unsigned int *)MX25_NFC_BASE_ADDR;
 	trg = (unsigned int *)_text;
 
 	/* Move ourselves out of NFC SRAM */
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 331c2e8..a0ae938 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -119,18 +119,18 @@ static void imx25_usb_init(void)
 	unsigned int tmp;
 
 	/* Host 2 */
-	tmp = readl(IMX_OTG_BASE + 0x600);
+	tmp = readl(MX25_USB_OTG_BASE_ADDR + 0x600);
 	tmp &= ~(3 << 21);
 	tmp |= (2 << 21) | (1 << 4) | (1 << 5);
-	writel(tmp, IMX_OTG_BASE + 0x600);
+	writel(tmp, MX25_USB_OTG_BASE_ADDR + 0x600);
 
-	tmp = readl(IMX_OTG_BASE + 0x584);
+	tmp = readl(MX25_USB_OTG_BASE_ADDR + 0x584);
 	tmp |= 3 << 30;
-	writel(tmp, IMX_OTG_BASE + 0x584);
+	writel(tmp, MX25_USB_OTG_BASE_ADDR + 0x584);
 
 	/* Set to Host mode */
-	tmp = readl(IMX_OTG_BASE + 0x5a8);
-	writel(tmp | 0x3, IMX_OTG_BASE + 0x5a8);
+	tmp = readl(MX25_USB_OTG_BASE_ADDR + 0x5a8);
+	writel(tmp | 0x3, MX25_USB_OTG_BASE_ADDR + 0x5a8);
 }
 #endif
 
@@ -195,7 +195,7 @@ static int imx25_mem_init(void)
 #else
 #error "Unsupported SDRAM type"
 #endif
-	arm_add_mem_device("ram0", IMX_SDRAM_CS0, SDRAM_SIZE);
+	arm_add_mem_device("ram0", MX25_CSD0_BASE_ADDR, SDRAM_SIZE);
 	add_mem_device("sram0", 0x78000000, 128 * 1024, IORESOURCE_MEM_WRITEABLE);
 
 	return 0;
@@ -209,13 +209,13 @@ static int imx25_devices_init(void)
 	 * the CPLD has to be initialized.
 	 */
 	imx25_usb_init();
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX25_USB_OTG_BASE_ADDR + 0x400, NULL);
 #endif
 
 	imx25_iim_register_fec_ethaddr();
 	imx25_add_fec(&fec_info);
 
-	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 14))
+	if (readl(MX25_CCM_BASE_ADDR + CCM_RCSR) & (1 << 14))
 		nand_info.width = 2;
 
 	imx25_add_nand(&nand_info);
@@ -298,7 +298,7 @@ void __bare_init nand_boot(void)
 
 static int imx25_core_setup(void)
 {
-	writel(0x01010103, IMX_CCM_BASE + CCM_PCDR2);
+	writel(0x01010103, MX25_CCM_BASE_ADDR + CCM_PCDR2);
 	return 0;
 
 }
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
index 30b79d9..124ef25 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
@@ -46,7 +46,7 @@ CCM_PDR0_W:             .word   0x00801000
 MPCTL_PARAM_399_W:      .word   MPCTL_PARAM_399
 MPCTL_PARAM_532_W:      .word   MPCTL_PARAM_532
 PPCTL_PARAM_W:    	.word   PPCTL_PARAM_300
-CCM_BASE_ADDR_W:        .word   IMX_CCM_BASE
+CCM_BASE_ADDR_W:        .word   MX25_CCM_BASE_ADDR
 
 .globl board_init_lowlevel
 board_init_lowlevel:
@@ -65,10 +65,10 @@ board_init_lowlevel:
 	str r1, [r0, #MX25_CCM_MCR]
 
 	/* enable all the clocks */
-	writel(0x1FFFFFFF, IMX_CCM_BASE + CCM_CGCR0)
-	writel(0xFFFFFFFF, IMX_CCM_BASE + CCM_CGCR1)
-	writel(0x000FDFFF, IMX_CCM_BASE + CCM_CGCR2)
-	writel(0x0000FEFF, IMX_CCM_BASE + MX25_CCM_MCR)
+	writel(0x1FFFFFFF, MX25_CCM_BASE_ADDR + CCM_CGCR0)
+	writel(0xFFFFFFFF, MX25_CCM_BASE_ADDR + CCM_CGCR1)
+	writel(0x000FDFFF, MX25_CCM_BASE_ADDR + CCM_CGCR2)
+	writel(0x0000FEFF, MX25_CCM_BASE_ADDR + MX25_CCM_MCR)
 
 	/* Skip SDRAM initialization if we run from RAM */
 	cmp	pc, #0x80000000
@@ -86,7 +86,7 @@ board_init_lowlevel:
 
 	mov r12, #0x00
 	mov r2, #0x1	/* mDDR */
-	mov r1, #IMX_SDRAM_CS0
+	mov r1, #MX25_CSD0_BASE_ADDR
 	bl setup_sdram_bank
 //	cmp r3, #0x0
 //	orreq r12, r12, #1
@@ -99,8 +99,8 @@ board_init_lowlevel:
 #ifdef CONFIG_NAND_IMX_BOOT
 	ldr	sp, =STACK_BASE + STACK_SIZE - 12 /* Setup a temporary stack in SDRAM */
 
-	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM                */
-	ldr	r2, =IMX_NFC_BASE + 0x1000	/* end of NFC SRAM                  */
+	ldr	r0, =MX25_NFC_BASE_ADDR		/* start of NFC SRAM                */
+	ldr	r2, =MX25_NFC_BASE_ADDR + 0x1000	/* end of NFC SRAM                  */
 
 	/* skip NAND boot if not running from NFC space */
 	cmp	pc, r0
@@ -147,7 +147,7 @@ setup_sdram_bank:
 	tst r2, #0x1
 	ldreq r3, [r4, #0x0]
 	ldrne r3, [r4, #0x4]
-	cmp r1, #IMX_SDRAM_CS1
+	cmp r1, #MX25_CSD1_BASE_ADDR
 	strlo r3, [r0, #0x4]
 	strhs r3, [r0, #0xC]
 
@@ -161,7 +161,7 @@ setup_sdram_bank:
 	tst r2, #0x1
 	bne skip_set_mode
 
-	cmp r1, #IMX_SDRAM_CS1
+	cmp r1, #MX25_CSD1_BASE_ADDR
 	ldr r3, ESDCTL_0xB2220000
 	strlo r3, [r0, #0x0]
 	strhs r3, [r0, #0x8]
@@ -183,7 +183,7 @@ setup_sdram_bank:
 	strb r3, [r1, r4]
 
 skip_set_mode:
-	cmp r1, #IMX_SDRAM_CS1
+	cmp r1, #MX25_CSD1_BASE_ADDR
 	ldr r3, ESDCTL_0xA2220000
 	strlo r3, [r0, #0x0]
 	strhs r3, [r0, #0x8]
@@ -207,7 +207,7 @@ skip_set_mode:
 	ldrne r4, [r4, #0x4]
 	strb r3, [r1, r4]
 
-	cmp r1, #IMX_SDRAM_CS1
+	cmp r1, #MX25_CSD1_BASE_ADDR
 	ldr r3, ESDCTL_0x82226080
 	strlo r3, [r0, #0x0]
 	strhs r3, [r0, #0x8]
@@ -242,5 +242,5 @@ ESDCTL_0x82226080:	.word	0x82216080
 ESDCTL_CONFIG:		.word	0x007FFC3F
 			.word	0x007FFC3F
 ESDCTL_DELAY5:		.word	0x00F49F00
-ESDCTL_BASE_W:		.word	IMX_ESD_BASE
+ESDCTL_BASE_W:		.word	MX25_ESDCTL_BASE_ADDR
 
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 79d942d..5413ea8 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -52,8 +52,8 @@ struct imx_nand_platform_data nand_info = {
 
 static int tx25_mem_init(void)
 {
-	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 32 * 1024 * 1024);
-	arm_add_mem_device("ram0", IMX_SDRAM_CS1, 32 * 1024 * 1024);
+	arm_add_mem_device("ram0", MX25_CSD0_BASE_ADDR, 32 * 1024 * 1024);
+	arm_add_mem_device("ram0", MX25_CSD1_BASE_ADDR, 32 * 1024 * 1024);
 	add_mem_device("ram0", 0x78000000, 128 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 
@@ -108,7 +108,7 @@ static int tx25_devices_init(void)
 	imx25_iim_register_fec_ethaddr();
 	imx25_add_fec(&fec_info);
 
-	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 14))
+	if (readl(MX25_CCM_BASE_ADDR + CCM_RCSR) & (1 << 14))
 		nand_info.width = 2;
 
 	imx25_add_nand(&nand_info);
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 3d26257..21bedcb 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -119,12 +119,12 @@ void __bare_init __naked board_init_lowlevel(void)
 	writel(0x1, 0xb8003000);
 
 	/* configure ARM clk */
-	writel(0x20034000, IMX_CCM_BASE + CCM_CCTL);
+	writel(0x20034000, MX25_CCM_BASE_ADDR + CCM_CCTL);
 
 	/* enable all the clocks */
-	writel(0x1fffffff, IMX_CCM_BASE + CCM_CGCR0);
-	writel(0xffffffff, IMX_CCM_BASE + CCM_CGCR1);
-	writel(0x000fdfff, IMX_CCM_BASE + CCM_CGCR2);
+	writel(0x1fffffff, MX25_CCM_BASE_ADDR + CCM_CGCR0);
+	writel(0xffffffff, MX25_CCM_BASE_ADDR + CCM_CGCR1);
+	writel(0x000fdfff, MX25_CCM_BASE_ADDR + CCM_CGCR2);
 
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
@@ -132,7 +132,7 @@ void __bare_init __naked board_init_lowlevel(void)
 		board_init_lowlevel_return();
 
 	/* set to 3.3v SDRAM */
-	writel(0x800, IMX_IOMUXC_BASE + 0x454);
+	writel(0x800, MX25_IOMUXC_BASE_ADDR + 0x454);
 
 	writel(ESDMISC_RST, ESDMISC);
 
@@ -150,10 +150,10 @@ void __bare_init __naked board_init_lowlevel(void)
 #ifdef CONFIG_NAND_IMX_BOOT
 	/* skip NAND boot if not running from NFC space */
 	r = get_pc();
-	if (r < IMX_NFC_BASE || r > IMX_NFC_BASE + 0x800)
+	if (r < MX25_NFC_BASE_ADDR || r > MX25_NFC_BASE_ADDR + 0x800)
 		board_init_lowlevel_return();
 
-	src = (unsigned int *)IMX_NFC_BASE;
+	src = (unsigned int *)MX25_NFC_BASE_ADDR;
 	trg = (unsigned int *)_text;
 
 	/* Move ourselves out of NFC SRAM */
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index dd10d58..3f44649 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -18,6 +18,14 @@
 #include <io.h>
 #include <sizes.h>
 
+/* IIM fuse definitions */
+#define IIM_BANK0_BASE	(MX25_IIM_BASE_ADDR + 0x800)
+#define IIM_BANK1_BASE	(MX25_IIM_BASE_ADDR + 0xc00)
+#define IIM_BANK2_BASE	(MX25_IIM_BASE_ADDR + 0x1000)
+
+#define IIM_UID		(IIM_BANK0_BASE + 0x20)
+#define IIM_MAC_ADDR	(IIM_BANK0_BASE + 0x68)
+
 u64 imx_uid(void)
 {
 	u64 uid = 0;
@@ -41,14 +49,14 @@ static struct imx_iim_platform_data imx25_iim_pdata = {
 
 static int imx25_init(void)
 {
-	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
+	add_generic_device("imx_iim", 0, NULL, MX25_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, &imx25_iim_pdata);
 
-	add_generic_device("imx31-gpt", 0, NULL, 0x53f90000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-gpio", 3, NULL, 0x53f9c000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpt", 0, NULL, MX25_GPT1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 0, NULL, MX25_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 1, NULL, MX25_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 2, NULL, MX25_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 3, NULL, MX25_GPIO4_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/arch/arm/mach-imx/include/mach/devices-imx25.h
index bd9dd0a..86cda35 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx25.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx25.h
@@ -3,41 +3,80 @@
 
 static inline struct device_d *imx25_add_i2c0(struct i2c_platform_data *pdata)
 {
-	return imx_add_i2c((void *)IMX_I2C1_BASE, 0, pdata);
+	return imx_add_i2c((void *)MX25_I2C1_BASE_ADDR, 0, pdata);
+}
+
+static inline struct device_d *imx25_add_i2c1(struct i2c_platform_data *pdata)
+{
+	return imx_add_i2c((void *)MX25_I2C2_BASE_ADDR, 1, pdata);
+}
+
+static inline struct device_d *imx25_add_i2c2(struct i2c_platform_data *pdata)
+{
+	return imx_add_i2c((void *)MX25_I2C3_BASE_ADDR, 2, pdata);
 }
 
 static inline struct device_d *imx25_add_spi0(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)IMX_CSPI1_BASE, 0, pdata);
+	return imx_add_spi((void *)MX25_CSPI1_BASE_ADDR, 0, pdata);
+}
+
+static inline struct device_d *imx25_add_spi1(struct spi_imx_master *pdata)
+{
+	return imx_add_spi((void *)MX25_CSPI2_BASE_ADDR, 1, pdata);
+}
+
+static inline struct device_d *imx25_add_spi2(struct spi_imx_master *pdata)
+{
+	return imx_add_spi((void *)MX25_CSPI3_BASE_ADDR, 2, pdata);
 }
 
 static inline struct device_d *imx25_add_uart0(void)
 {
-	return imx_add_uart((void *)IMX_UART1_BASE, 0);
+	return imx_add_uart((void *)MX25_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx25_add_uart1(void)
 {
-	return imx_add_uart((void *)IMX_UART2_BASE, 1);
+	return imx_add_uart((void *)MX25_UART2_BASE_ADDR, 1);
+}
+
+static inline struct device_d *imx25_add_uart2(void)
+{
+	return imx_add_uart((void *)MX25_UART3_BASE_ADDR, 2);
+}
+
+static inline struct device_d *imx25_add_uart3(void)
+{
+	return imx_add_uart((void *)MX25_UART4_BASE_ADDR, 3);
+}
+
+static inline struct device_d *imx25_add_uart4(void)
+{
+	return imx_add_uart((void *)MX25_UART5_BASE_ADDR, 4);
 }
 
 static inline struct device_d *imx25_add_nand(struct imx_nand_platform_data *pdata)
 {
-	return imx_add_nand((void *)IMX_NFC_BASE, pdata);
+	return imx_add_nand((void *)MX25_NFC_BASE_ADDR, pdata);
 }
 
 static inline struct device_d *imx25_add_fb(struct imx_fb_platform_data *pdata)
 {
-	return imx_add_fb((void *)0x53fbc000, pdata);
+	return imx_add_fb((void *)MX25_LCDC_BASE_ADDR, pdata);
 }
 
 static inline struct device_d *imx25_add_fec(struct fec_platform_data *pdata)
 {
-	return imx_add_fec((void *)IMX_FEC_BASE, pdata);
+	return imx_add_fec((void *)MX25_FEC_BASE_ADDR, pdata);
 }
 
 static inline struct device_d *imx25_add_mmc0(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)0x53fb4000, 0, pdata);
+	return imx_add_esdhc((void *)MX25_ESDHC1_BASE_ADDR, 0, pdata);
 }
 
+static inline struct device_d *imx25_add_mmc1(struct esdhc_platform_data *pdata)
+{
+	return imx_add_esdhc((void *)MX25_ESDHC2_BASE_ADDR, 1, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 5176b5e..aca9849 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -26,24 +26,69 @@
 # error "Please do not include directly. Use imx-regs.h instead."
 #endif
 
-#define IMX_L2CC_BASE		0x30000000
-#define IMX_UART1_BASE		0x43F90000
-#define IMX_UART2_BASE		0x43F94000
-#define IMX_TIM1_BASE		0x53F90000
-#define IMX_IOMUXC_BASE		0x43FAC000
-#define IMX_WDT_BASE		0x53FDC000
-#define IMX_MAX_BASE		0x43F04000
-#define IMX_ESD_BASE		0xb8001000
-#define IMX_AIPS1_BASE		0x43F00000
-#define IMX_AIPS2_BASE		0x53F00000
-#define IMX_CCM_BASE		0x53F80000
-#define IMX_IIM_BASE		0x53FF0000
-#define IMX_OTG_BASE		0x53FF4000
-#define IMX_M3IF_BASE		0xB8003000
-#define IMX_NFC_BASE		0xBB000000
-#define IMX_FEC_BASE		0x50038000
-#define IMX_I2C1_BASE		0x43F80000
-#define IMX_CSPI1_BASE		0x43FA4000
+#define MX25_AIPS1_BASE_ADDR		0x43f00000
+#define MX25_AIPS1_SIZE			SZ_1M
+#define MX25_AIPS2_BASE_ADDR		0x53f00000
+#define MX25_AIPS2_SIZE			SZ_1M
+#define MX25_AVIC_BASE_ADDR		0x68000000
+#define MX25_AVIC_SIZE			SZ_1M
+
+#define MX25_I2C1_BASE_ADDR		(MX25_AIPS1_BASE_ADDR + 0x80000)
+#define MX25_I2C3_BASE_ADDR		(MX25_AIPS1_BASE_ADDR + 0x84000)
+#define MX25_CAN1_BASE_ADDR		(MX25_AIPS1_BASE_ADDR + 0x88000)
+#define MX25_CAN2_BASE_ADDR		(MX25_AIPS1_BASE_ADDR + 0x8c000)
+#define MX25_I2C2_BASE_ADDR		(MX25_AIPS1_BASE_ADDR + 0x98000)
+#define MX25_CSPI1_BASE_ADDR		(MX25_AIPS1_BASE_ADDR + 0xa4000)
+#define MX25_IOMUXC_BASE_ADDR		(MX25_AIPS1_BASE_ADDR + 0xac000)
+
+#define MX25_CCM_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0x80000)
+#define MX25_GPT1_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0x90000)
+#define MX25_GPIO4_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0x9c000)
+#define MX25_PWM2_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0xa0000)
+#define MX25_GPIO3_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0xa4000)
+#define MX25_PWM3_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0xa8000)
+#define MX25_PWM4_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0xc8000)
+#define MX25_GPIO1_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0xcc000)
+#define MX25_GPIO2_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0xd0000)
+#define MX25_WDOG_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0xdc000)
+#define MX25_PWM1_BASE_ADDR		(MX25_AIPS2_BASE_ADDR + 0xe0000)
+
+#define MX25_UART1_BASE_ADDR		0x43f90000
+#define MX25_UART2_BASE_ADDR		0x43f94000
+#define MX25_AUDMUX_BASE_ADDR		0x43fb0000
+#define MX25_UART3_BASE_ADDR		0x5000c000
+#define MX25_UART4_BASE_ADDR		0x50008000
+#define MX25_UART5_BASE_ADDR		0x5002c000
+
+#define MX25_CSPI3_BASE_ADDR		0x50004000
+#define MX25_CSPI2_BASE_ADDR		0x50010000
+#define MX25_FEC_BASE_ADDR		0x50038000
+#define MX25_SSI2_BASE_ADDR		0x50014000
+#define MX25_SSI1_BASE_ADDR		0x50034000
+#define MX25_NFC_BASE_ADDR		0xbb000000
+#define MX25_IIM_BASE_ADDR		0x53ff0000
+#define MX25_DRYICE_BASE_ADDR		0x53ffc000
+#define MX25_ESDHC1_BASE_ADDR		0x53fb4000
+#define MX25_ESDHC2_BASE_ADDR		0x53fb8000
+#define MX25_LCDC_BASE_ADDR		0x53fbc000
+#define MX25_KPP_BASE_ADDR		0x43fa8000
+#define MX25_SDMA_BASE_ADDR		0x53fd4000
+#define MX25_USB_BASE_ADDR		0x53ff4000
+#define MX25_USB_OTG_BASE_ADDR			(MX25_USB_BASE_ADDR + 0x0000)
+/*
+ * The reference manual (IMX25RM, Rev. 1, 06/2009) specifies an offset of 0x200
+ * for the host controller.  Early documentation drafts specified 0x400 and
+ * Freescale internal sources confirm only the latter value to work.
+ */
+#define MX25_USB_HS_BASE_ADDR			(MX25_USB_BASE_ADDR + 0x0400)
+#define MX25_CSI_BASE_ADDR		0x53ff8000
+
+/* FIXME: Get rid of these */
+#define IMX_TIM1_BASE		MX25_GPT1_BASE_ADDR
+#define IMX_IOMUXC_BASE		MX25_IOMUXC_BASE_ADDR
+#define IMX_WDT_BASE		MX25_WDOG_BASE_ADDR
+#define IMX_CCM_BASE		MX25_CCM_BASE_ADDR
+#define IMX_ESD_BASE		MX25_ESDCTL_BASE_ADDR
 
 /*
  * Clock Controller Module (CCM)
@@ -82,21 +127,23 @@
 /*
  * Adresses and ranges of the external chip select lines
  */
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
-#define IMX_SDRAM_CS0  0x80000000
-#define IMX_SDRAM_CS1  0x90000000
+#define MX25_CS0_BASE_ADDR	0xA0000000
+#define MX25_CS0_SIZE		SZ_128M
+#define MX25_CS1_BASE_ADDR	0xA8000000
+#define MX25_CS1_SIZE		SZ_128M
+#define MX25_CS2_BASE_ADDR	0xB0000000
+#define MX25_CS2_SIZE		SZ_32M
+#define MX25_CS3_BASE_ADDR	0xB2000000
+#define MX25_CS3_SIZE		SZ_32M
+#define MX25_CS4_BASE_ADDR	0xB4000000
+#define MX25_CS4_SIZE		SZ_32M
+#define MX25_CS5_BASE_ADDR	0xB6000000
+#define MX25_CS5_SIZE		SZ_32M
+
+#define MX25_CSD0_BASE_ADDR  0x80000000
+#define MX25_CSD1_BASE_ADDR  0x90000000
+
+#define MX25_ESDCTL_BASE_ADDR	0xb8001000
 
 #define WEIM_BASE 0xb8002000
 #define CSCR_U(x)     (WEIM_BASE + (x) * 0x10)
@@ -113,14 +160,4 @@
 /* important definition of some bits of WCR */
 #define WCR_WDE 0x04
 
-/* IIM fuse definitions */
-#define IIM_BANK_SIZE	32	/* excluding alignment padding for each row */
-#define IIM_BANK0_BASE	(IMX_IIM_BASE + 0x800)
-#define IIM_BANK1_BASE	(IMX_IIM_BASE + 0xc00)
-#define IIM_BANK2_BASE	(IMX_IIM_BASE + 0x1000)
-
-#define IIM_UID		(IIM_BANK0_BASE + 0x20)
-#define IIM_MAC_ADDR	(IIM_BANK0_BASE + 0x68)
-
 #endif /* __ASM_ARCH_MX25_REGS_H */
-
diff --git a/arch/arm/mach-imx/speed-imx25.c b/arch/arm/mach-imx/speed-imx25.c
index 39e68c8..3c85713 100644
--- a/arch/arm/mach-imx/speed-imx25.c
+++ b/arch/arm/mach-imx/speed-imx25.c
@@ -7,13 +7,13 @@
 
 unsigned long imx_get_mpllclk(void)
 {
-	ulong mpctl = readl(IMX_CCM_BASE + CCM_MPCTL);
+	ulong mpctl = readl(MX25_CCM_BASE_ADDR + CCM_MPCTL);
 	return imx_decode_pll(mpctl, CONFIG_MX25_HCLK_FREQ);
 }
 
 unsigned long imx_get_upllclk(void)
 {
-	ulong ppctl = readl(IMX_CCM_BASE + CCM_UPCTL);
+	ulong ppctl = readl(MX25_CCM_BASE_ADDR + CCM_UPCTL);
 	return imx_decode_pll(ppctl, CONFIG_MX25_HCLK_FREQ);
 }
 
@@ -21,7 +21,7 @@ unsigned long imx_get_armclk(void)
 {
 	unsigned long rate, cctl;
 
-	cctl = readl(IMX_CCM_BASE + CCM_CCTL);
+	cctl = readl(MX25_CCM_BASE_ADDR + CCM_CCTL);
 	rate = imx_get_mpllclk();
 
 	if (cctl & (1 << 14)) {
@@ -34,7 +34,7 @@ unsigned long imx_get_armclk(void)
 
 unsigned long imx_get_ahbclk(void)
 {
-	ulong cctl = readl(IMX_CCM_BASE + CCM_CCTL);
+	ulong cctl = readl(MX25_CCM_BASE_ADDR + CCM_CCTL);
 	return imx_get_armclk() / (((cctl >> 28) & 0x3) + 1);
 }
 
@@ -52,10 +52,10 @@ unsigned long imx_get_perclk(int per)
 {
 	ulong ofs = (per & 0x3) * 8;
 	ulong reg = per & ~0x3;
-	ulong val = (readl(IMX_CCM_BASE + CCM_PCDR0 + reg) >> ofs) & 0x3f;
+	ulong val = (readl(MX25_CCM_BASE_ADDR + CCM_PCDR0 + reg) >> ofs) & 0x3f;
 	ulong fref;
 
-	if (readl(IMX_CCM_BASE + 0x64) & (1 << per))
+	if (readl(MX25_CCM_BASE_ADDR + 0x64) & (1 << per))
 		fref = imx_get_upllclk();
 	else
 		fref = imx_get_ahbclk();
@@ -114,7 +114,7 @@ void imx_dump_clocks(void)
  */
 int imx_clko_set_div(int num, int div)
 {
-	unsigned long mcr = readl(IMX_CCM_BASE + 0x64);
+	unsigned long mcr = readl(MX25_CCM_BASE_ADDR + 0x64);
 
 	if (num != 1)
 		return -ENODEV;
@@ -125,7 +125,7 @@ int imx_clko_set_div(int num, int div)
 	mcr &= ~(0x3f << 24);
 	mcr |= div << 24;
 
-	writel(mcr, IMX_CCM_BASE + 0x64);
+	writel(mcr, MX25_CCM_BASE_ADDR + 0x64);
 
 	return div + 1;
 }
@@ -135,14 +135,14 @@ int imx_clko_set_div(int num, int div)
  */
 void imx_clko_set_src(int num, int src)
 {
-	unsigned long mcr = readl(IMX_CCM_BASE + 0x64);
+	unsigned long mcr = readl(MX25_CCM_BASE_ADDR + 0x64);
 
 	if (num != 1)
 		return;
 
 	if (src < 0) {
 		mcr &= ~(1 << 30);
-		writel(mcr, IMX_CCM_BASE + 0x64);
+		writel(mcr, MX25_CCM_BASE_ADDR + 0x64);
 		return;
 	}
 
@@ -150,6 +150,6 @@ void imx_clko_set_src(int num, int src)
 	mcr &= ~(0xf << 20);
 	mcr |= (src & 0xf) << 20;
 
-	writel(mcr, IMX_CCM_BASE + 0x64);
+	writel(mcr, MX25_CCM_BASE_ADDR + 0x64);
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
