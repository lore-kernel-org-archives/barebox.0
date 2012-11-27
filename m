Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdS5Y-00073x-4a
 for barebox@lists.infradead.org; Tue, 27 Nov 2012 20:49:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Nov 2012 21:48:48 +0100
Message-Id: <1354049328-3534-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354049328-3534-1-git-send-email-s.hauer@pengutronix.de>
References: <1354049328-3534-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM i.MX boards: use esdctl code to detect sdram size
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ccxmx51/ccxmx51.c                 |    9 ---------
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    8 --------
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   14 --------------
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    8 --------
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |    8 --------
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |   18 ++----------------
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    9 ---------
 arch/arm/boards/freescale-mx51-pdk/board.c        |    8 --------
 arch/arm/boards/freescale-mx53-loco/board.c       |    9 ---------
 arch/arm/boards/freescale-mx53-smd/board.c        |    9 ---------
 arch/arm/boards/guf-cupid/board.c                 |    8 --------
 arch/arm/boards/guf-neso/board.c                  |    8 --------
 arch/arm/boards/imx27ads/imx27ads.c               |    8 --------
 arch/arm/boards/karo-tx25/board.c                 |   14 +++-----------
 arch/arm/boards/karo-tx51/tx51.c                  |    8 --------
 arch/arm/boards/karo-tx53/board.c                 |   11 -----------
 arch/arm/boards/pcm037/pcm037.c                   |   11 -----------
 arch/arm/boards/pcm038/pcm038.c                   |   14 ++++----------
 arch/arm/boards/pcm043/pcm043.c                   |    8 --------
 arch/arm/boards/phycard-i.MX27/pca100.c           |    8 --------
 arch/arm/boards/scb9328/scb9328.c                 |    8 --------
 arch/arm/boards/tqma53/board.c                    |   11 -----------
 22 files changed, 9 insertions(+), 208 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index a8d172c..b3173a4 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -197,15 +197,6 @@ static const struct spi_board_info ccxmx51_spi_board_info[] = {
 	},
 };
 
-static int ccxmx51_mem_init(void)
-{
-	/* Add minimal SDRAM first */
-	arm_add_mem_device("ram0", MX51_CSD0_BASE_ADDR, SZ_128M);
-
-	return 0;
-}
-mem_initcall(ccxmx51_mem_init);
-
 static void ccxmx51_otghost_init(void)
 {
 #define MX51_USBOTHER_REGS_OFFSET		0x800
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 92e8df2..ae2363a 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -117,14 +117,6 @@ static struct fsl_usb2_platform_data usb_pdata = {
 	.phy_mode	= FSL_USB2_PHY_UTMI,
 };
 
-static int eukrea_cpuimx25_mem_init(void)
-{
-	arm_add_mem_device("ram0", MX25_CSD0_BASE_ADDR, 64 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(eukrea_cpuimx25_mem_init);
-
 static iomux_v3_cfg_t eukrea_cpuimx25_pads[] = {
 	MX25_PAD_FEC_MDC__FEC_MDC,
 	MX25_PAD_FEC_MDIO__FEC_MDIO,
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index c89ce8a..498e9b4 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -46,12 +46,6 @@
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
 
-#if defined CONFIG_EUKREA_CPUIMX27_SDRAM_256MB
-#define SDRAM0	256
-#elif defined CONFIG_EUKREA_CPUIMX27_SDRAM_128MB
-#define SDRAM0	128
-#endif
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 	.phy_addr = 1,
@@ -86,14 +80,6 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
-static int eukrea_cpuimx27_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0xa0000000, SDRAM0 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(eukrea_cpuimx27_mem_init);
-
 #ifdef CONFIG_DRIVER_VIDEO_IMX
 static struct imx_fb_videomode imxfb_mode = {
 	.mode = {
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index fdbc26a..2c96007 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -122,14 +122,6 @@ static struct fsl_usb2_platform_data usb_pdata = {
 };
 #endif
 
-static int eukrea_cpuimx35_mem_init(void)
-{
-	arm_add_mem_device("ram0", MX35_CSD0_BASE_ADDR, 128 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(eukrea_cpuimx35_mem_init);
-
 static int eukrea_cpuimx35_mmu_init(void)
 {
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index ab0ff81..fdbd051 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -103,14 +103,6 @@ static iomux_v3_cfg_t eukrea_cpuimx51_pads[] = {
 #define GPIO_LAN8700_RESET	(1 * 32 + 31)
 #define GPIO_LCD_BL		(2 * 32 + 4)
 
-static int eukrea_cpuimx51_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0x90000000, 256 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(eukrea_cpuimx51_mem_init);
-
 static int eukrea_cpuimx51_devices_init(void)
 {
 	imx51_add_fec(&fec_info);
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 5ce2f8e..1271ad9 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -186,22 +186,6 @@ static int imx25_3ds_fec_init(void)
 }
 late_initcall(imx25_3ds_fec_init);
 
-static int imx25_mem_init(void)
-{
-#if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
-#define SDRAM_SIZE	64 * 1024 * 1024
-#elif defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
-#define SDRAM_SIZE	128 * 1024 * 1024
-#else
-#error "Unsupported SDRAM type"
-#endif
-	arm_add_mem_device("ram0", MX25_CSD0_BASE_ADDR, SDRAM_SIZE);
-	add_mem_device("sram0", 0x78000000, 128 * 1024, IORESOURCE_MEM_WRITEABLE);
-
-	return 0;
-}
-mem_initcall(imx25_mem_init);
-
 static int imx25_devices_init(void)
 {
 #ifdef CONFIG_USB
@@ -215,6 +199,8 @@ static int imx25_devices_init(void)
 	imx25_iim_register_fec_ethaddr();
 	imx25_add_fec(&fec_info);
 
+	add_mem_device("sram0", 0x78000000, 128 * 1024, IORESOURCE_MEM_WRITEABLE);
+
 	if (readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR) & (1 << 14))
 		nand_info.width = 2;
 
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 7da031a..3128d4f 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -128,15 +128,6 @@ static void set_board_rev(int rev)
 	imx35_3ds_system_rev =  (imx35_3ds_system_rev & ~(0xF << 8)) | (rev & 0xF) << 8;
 }
 
-static int f3s_mem_init(void)
-{
-	arm_add_mem_device("ram0", MX35_CSD0_BASE_ADDR, 128 * 1024 * 1024);
-	arm_add_mem_device("ram1", MX35_CSD1_BASE_ADDR, 128 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(f3s_mem_init);
-
 static int f3s_devices_init(void)
 {
 	uint32_t reg;
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 9db0ed9..cb190ef 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -97,14 +97,6 @@ static iomux_v3_cfg_t f3s_pads[] = {
 	MX51_PAD_GPIO1_5__GPIO1_5,
 };
 
-static int babbage_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0x90000000, 512 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(babbage_mem_init);
-
 #define BABBAGE_ECSPI1_CS0	(3 * 32 + 24)
 static int spi_0_cs[] = {BABBAGE_ECSPI1_CS0};
 
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 216d26a..38ece23 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -133,15 +133,6 @@ static void set_board_rev(int rev)
 	loco_system_rev =  (loco_system_rev & ~(0xF << 8)) | (rev & 0xF) << 8;
 }
 
-static int loco_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0x70000000, SZ_512M);
-	arm_add_mem_device("ram1", 0xb0000000, SZ_512M);
-
-	return 0;
-}
-mem_initcall(loco_mem_init);
-
 #define LOCO_FEC_PHY_RST		IMX_GPIO_NR(7, 6)
 
 static void loco_fec_reset(void)
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index a5ad009..64ba7f2 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -98,15 +98,6 @@ static iomux_v3_cfg_t smd_pads[] = {
 	MX53_PAD_PATA_RESET_B__ESDHC3_CMD,
 };
 
-static int smd_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0x70000000, SZ_512M);
-	arm_add_mem_device("ram1", 0xb0000000, SZ_512M);
-
-	return 0;
-}
-mem_initcall(smd_mem_init);
-
 #define SMD_FEC_PHY_RST		IMX_GPIO_NR(7, 6)
 
 static void smd_fec_reset(void)
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 5b17326..839b415 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -94,14 +94,6 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 	.enable		= cupid_fb_enable,
 };
 
-static int cupid_mem_init(void)
-{
-	arm_add_mem_device("ram0", MX35_CSD0_BASE_ADDR, 128 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(cupid_mem_init);
-
 static int cupid_mmu_init(void)
 {
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 200a2ef..086d96b 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -133,14 +133,6 @@ static void neso_usbh_init(void)
 }
 #endif
 
-static int neso_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(neso_mem_init);
-
 static int neso_devices_init(void)
 {
 	int i;
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index f41b155..d07d553 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -65,14 +65,6 @@ static int imx27ads_timing_init(void)
 
 core_initcall(imx27ads_timing_init);
 
-static int mx27ads_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(mx27ads_mem_init);
-
 static int mx27ads_devices_init(void)
 {
 	int i;
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 1ffd890..98140b3 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -50,17 +50,6 @@ struct imx_nand_platform_data nand_info = {
 	.flash_bbt = 1,
 };
 
-static int tx25_mem_init(void)
-{
-	arm_add_mem_device("ram0", MX25_CSD0_BASE_ADDR, 32 * 1024 * 1024);
-	arm_add_mem_device("ram0", MX25_CSD1_BASE_ADDR, 32 * 1024 * 1024);
-	add_mem_device("ram0", 0x78000000, 128 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-
-	return 0;
-}
-mem_initcall(tx25_mem_init);
-
 static iomux_v3_cfg_t karo_tx25_padsd_fec[] = {
 	MX25_PAD_D11__GPIO_4_9,		/* FEC PHY power on pin */
 	MX25_PAD_D13__GPIO_4_7,		/* FEC reset */
@@ -119,6 +108,9 @@ static int tx25_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x80000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
+	add_mem_device("sram0", 0x78000000, 128 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_TX25);
 	armlinux_set_serial(imx_uid());
diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
index dd377c1..6c2b14b 100644
--- a/arch/arm/boards/karo-tx51/tx51.c
+++ b/arch/arm/boards/karo-tx51/tx51.c
@@ -112,14 +112,6 @@ static iomux_v3_cfg_t tx51_pads[] = {
 	MX51_PAD_GPIO1_0__GPIO1_0,
 };
 
-static int tx51_mem_init(void)
-{
-	arm_add_mem_device("ram0", MX51_CSD0_BASE_ADDR, 128 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(tx51_mem_init);
-
 static int spi_0_cs[] = {
 	IMX_GPIO_NR(4, 24),
 	IMX_GPIO_NR(4, 25),
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 8f87c9c..581b6fa 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -99,17 +99,6 @@ static iomux_v3_cfg_t tx53_pads[] = {
 	MX53_PAD_CSI0_PIXCLK__IPU_CSI0_PIXCLK,
 };
 
-static int tx53_mem_init(void)
-{
-	if (IS_ENABLED(CONFIG_TX53_REV_1011))
-		arm_add_mem_device("ram0", 0x70000000, SZ_1G);
-	else
-		arm_add_mem_device("ram0", 0x70000000, SZ_512M);
-
-	return 0;
-}
-mem_initcall(tx53_mem_init);
-
 #define TX53_SD1_CD			IMX_GPIO_NR(3, 24)
 
 static struct esdhc_platform_data tx53_sd1_data = {
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index ff4089a..ff32e35 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -145,17 +145,6 @@ static void pcm037_usb_init(void)
 }
 #endif
 
-static int pcm037_mem_init(void)
-{
-	arm_add_mem_device("ram0", MX31_CSD0_BASE_ADDR, SDRAM0 * 1024 * 1024);
-#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-	arm_add_mem_device("ram1", MX31_CSD1_BASE_ADDR, SDRAM1 * 1024 * 1024);
-#endif
-
-	return 0;
-}
-mem_initcall(pcm037_mem_init);
-
 static int pcm037_mmu_init(void)
 {
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 715d604..ea50a78 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -180,16 +180,6 @@ static int pcm038_power_init(void)
 	return 0;
 }
 
-static int pcm038_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
-
-	add_mem_device("ram1", 0xc8000000, 512 * 1024, /* Can be up to 2MiB */
-				   IORESOURCE_MEM_WRITEABLE);
-	return 0;
-}
-mem_initcall(pcm038_mem_init);
-
 static int pcm038_devices_init(void)
 {
 	int i;
@@ -279,6 +269,10 @@ static int pcm038_devices_init(void)
 	/* configure SRAM on cs1 */
 	imx27_setup_weimcs(1, 0x0000d843, 0x22252521, 0x22220a00);
 
+	/* Can be up to 2MiB */
+	add_mem_device("ram1", 0xc8000000, 512 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index abfeaf1..95da8f0 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -98,14 +98,6 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 	.bpp			= 16,
 };
 
-static int pcm043_mem_init(void)
-{
-	arm_add_mem_device("ram0", MX35_CSD0_BASE_ADDR, SZ_128M);
-
-	return 0;
-}
-mem_initcall(pcm043_mem_init);
-
 static int pcm043_mmu_init(void)
 {
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 0b66b04..1a21c8a 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -143,14 +143,6 @@ static void pca100_usb_register(void)
 }
 #endif
 
-static int pca100_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(pca100_mem_init);
-
 static void pca100_usb_init(void)
 {
 	u32 reg;
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index c70852c..d91b21d 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -48,14 +48,6 @@ struct gpio_led leds[] = {
 	},
 };
 
-static int scb9328_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0x08000000, 16 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(scb9328_mem_init);
-
 static int scb9328_devices_init(void)
 {
 	int i;
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 77535b5..03cb8ea 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -207,17 +207,6 @@ static iomux_v3_cfg_t tqma53_pads[] = {
 
 #define GPIO_FEC_NRESET	IMX_GPIO_NR(7, 6)
 
-static int tqma53_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0x70000000, SZ_512M);
-#ifdef CONFIG_MACH_TQMA53_1GB_RAM
-	arm_add_mem_device("ram1", 0xb0000000, SZ_512M);
-#endif
-
-	return 0;
-}
-mem_initcall(tqma53_mem_init);
-
 #define GPIO_SD2_CD			IMX_GPIO_NR(1, 4)
 #define GPIO_SD2_WP			IMX_GPIO_NR(1, 2)
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
