Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Owccg-0000qO-Ju
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 15:13:14 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 17 Sep 2010 17:11:57 +0200
Message-Id: <1284736317-1040-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] driver: use id as -1 for auto assigned id
To: barebox@lists.infradead.org

before if you specify id = 0 the next available id will be taken
otherwise fail if already registered now as in linux we use -1

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/a9m2410/a9m2410.c                  |    4 ++++
 arch/arm/boards/a9m2440/a9m2440.c                  |    4 ++++
 arch/arm/boards/at91sam9263ek/init.c               |    1 +
 arch/arm/boards/edb93xx/edb93xx.c                  |    7 +++++++
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    5 +++++
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    9 +++++++++
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    5 +++++
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    7 +++++++
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    8 ++++++++
 arch/arm/boards/guf-neso/board.c                   |    6 ++++++
 arch/arm/boards/imx21ads/imx21ads.c                |    6 ++++++
 arch/arm/boards/imx27ads/imx27ads.c                |    4 ++++
 arch/arm/boards/mmccpu/init.c                      |    1 +
 arch/arm/boards/netx/netx.c                        |    5 +++++
 arch/arm/boards/nhk8815/setup.c                    |    2 ++
 arch/arm/boards/omap/board-beagle.c                |    4 ++++
 arch/arm/boards/omap/board-omap3evm.c              |    2 ++
 arch/arm/boards/omap/board-sdp343x.c               |    2 ++
 arch/arm/boards/omap/devices-gpmc-nand.c           |    1 +
 arch/arm/boards/pcm037/pcm037.c                    |    9 +++++++++
 arch/arm/boards/pcm038/pcm038.c                    |    9 +++++++++
 arch/arm/boards/pcm043/pcm043.c                    |    6 ++++++
 arch/arm/boards/phycard-i.MX27/pca100.c            |    5 +++++
 arch/arm/boards/pm9263/init.c                      |    1 +
 arch/arm/boards/scb9328/scb9328.c                  |    4 ++++
 arch/arm/mach-at91/at91sam9260_devices.c           |   10 ++++++++++
 arch/arm/mach-at91/at91sam9263_devices.c           |    7 +++++++
 arch/arm/mach-imx/imx25.c                          |    1 +
 arch/arm/mach-nomadik/8815.c                       |    1 +
 arch/blackfin/boards/ipe337/ipe337.c               |    4 ++++
 arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c     |    7 +++++++
 arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c |    5 +++++
 arch/ppc/boards/pcm030/pcm030.c                    |    5 +++++
 arch/sandbox/board/board.c                         |    1 +
 arch/x86/boards/x86_generic/generic_pc.c           |    3 +++
 commands/mem.c                                     |    1 +
 common/startup.c                                   |    1 +
 drivers/serial/arm_dcc.c                           |    1 +
 lib/driver.c                                       |    2 +-
 39 files changed, 165 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 2c08125..57d8fa3 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -41,6 +41,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id		= -1,
 	.name     	= "ram",
 	.map_base	= CS6_BASE,
 	.platform_data  = &ram_pdata,
@@ -52,6 +53,7 @@ static struct s3c24x0_nand_platform_data nand_info = {
 };
 
 static struct device_d nand_dev = {
+	.id	  = -1,
 	.name     = "s3c24x0_nand",
 	.map_base = S3C24X0_NAND_BASE,
 	.platform_data	= &nand_info,
@@ -63,6 +65,7 @@ static struct device_d nand_dev = {
  * GPIO3, data width is 32 bit
  */
 static struct device_d network_dev = {
+	.id       = -1,
         .name     = "smc91c111",
         .map_base = CS1_BASE + 0x300,
         .size     = 16,
@@ -178,6 +181,7 @@ void __bare_init nand_boot(void)
 #endif
 
 static struct device_d a9m2410_serial_device = {
+	.id       = -1,
 	.name     = "s3c24x0_serial",
 	.map_base = UART1_BASE,
 	.size     = UART1_SIZE,
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 59918e9..764cd65 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -44,6 +44,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id		= -1,
 	.name		= "mem",
 	.map_base	= CS6_BASE,
 	.platform_data	= &ram_pdata,
@@ -54,6 +55,7 @@ static struct s3c24x0_nand_platform_data nand_info = {
 };
 
 static struct device_d nand_dev = {
+	.id	  = -1,
 	.name     = "s3c24x0_nand",
 	.map_base = S3C24X0_NAND_BASE,
 	.platform_data	= &nand_info,
@@ -65,6 +67,7 @@ static struct device_d nand_dev = {
  * data width is 16 bit
  */
 static struct device_d network_dev = {
+	.id	  = -1,
 	.name     = "cs8900",
 	.map_base = CS5_BASE + (1 << 24) + 0x300,
 	.size     = 16,
@@ -184,6 +187,7 @@ void __bare_init nand_boot(void)
 #endif
 
 static struct device_d a9m2440_serial_device = {
+	.id	  = -1,
 	.name     = "s3c24x0_serial",
 	.map_base = UART1_BASE,
 	.size     = UART1_SIZE,
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 0705af4..8448866 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -88,6 +88,7 @@ static void ek_add_device_nand(void)
 }
 
 static struct device_d cfi_dev = {
+	.id		= -1,
 	.name		= "cfi_flash",
 	.map_base	= AT91_CHIPSELECT_0,
 	.size		= 8 * 1024 * 1024,
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index e106798..0f127b5 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -39,6 +39,7 @@
  * CS line 6, data width is 16 bit
  */
 static struct device_d cfi_dev = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = 0x60000000,
 	.size     = EDB93XX_CFI_FLASH_SIZE,
@@ -50,6 +51,7 @@ static struct memory_platform_data ram_dev_pdata0 = {
 };
 
 static struct device_d sdram0_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = CONFIG_EP93XX_SDRAM_BANK0_BASE,
 	.size     = CONFIG_EP93XX_SDRAM_BANK0_SIZE,
@@ -63,6 +65,7 @@ static struct memory_platform_data ram_dev_pdata1 = {
 };
 
 static struct device_d sdram1_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = CONFIG_EP93XX_SDRAM_BANK1_BASE,
 	.size     = CONFIG_EP93XX_SDRAM_BANK1_SIZE,
@@ -77,6 +80,7 @@ static struct memory_platform_data ram_dev_pdata2 = {
 };
 
 static struct device_d sdram2_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = CONFIG_EP93XX_SDRAM_BANK2_BASE,
 	.size     = CONFIG_EP93XX_SDRAM_BANK2_SIZE,
@@ -91,6 +95,7 @@ static struct memory_platform_data ram_dev_pdata3 = {
 };
 
 static struct device_d sdram3_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = CONFIG_EP93XX_SDRAM_BANK3_BASE,
 	.size     = CONFIG_EP93XX_SDRAM_BANK3_SIZE,
@@ -99,6 +104,7 @@ static struct device_d sdram3_dev = {
 #endif
 
 static struct device_d eth_dev = {
+	.id	  = -1,
 	.name     = "ep93xx_eth",
 };
 
@@ -149,6 +155,7 @@ static int ep93xx_devices_init(void)
 device_initcall(ep93xx_devices_init);
 
 static struct device_d edb93xx_serial_device = {
+	.id	  = -1,
 	.name     = "pl010_serial",
 	.map_base = UART1_BASE,
 	.size     = 4096,
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 1fd0afd..807fea3 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -85,6 +85,7 @@ static struct fec_platform_data fec_info = {
 };
 
 static struct device_d fec_dev = {
+	.id	  = -1,
 	.name     = "fec_imx",
 	.map_base = IMX_FEC_BASE,
 	.platform_data	= &fec_info,
@@ -96,6 +97,7 @@ static struct memory_platform_data sdram_pdata = {
 };
 
 static struct device_d sdram0_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = IMX_SDRAM_CS0,
 	.size     = 64 * 1024 * 1024,
@@ -108,6 +110,7 @@ struct imx_nand_platform_data nand_info = {
 };
 
 static struct device_d nand_dev = {
+	.id	  = -1,
 	.name     = "imx_nand",
 	.map_base = IMX_NFC_BASE,
 	.platform_data	= &nand_info,
@@ -140,6 +143,7 @@ static struct imx_fb_platform_data eukrea_cpuimx25_fb_data = {
 
 
 static struct device_d imxfb_dev = {
+	.id		= -1,
 	.name		= "imxfb",
 	.map_base	= 0x53fbc000,
 	.size		= 0x1000,
@@ -243,6 +247,7 @@ static int eukrea_cpuimx25_devices_init(void)
 device_initcall(eukrea_cpuimx25_devices_init);
 
 static struct device_d eukrea_cpuimx25_serial_device = {
+	.id	  = -1,
 	.name     = "imx_serial",
 	.map_base = IMX_UART1_BASE,
 	.size     = 16 * 1024,
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 72e2040..4d1797b 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -48,12 +48,14 @@
 #include <mach/iomux-mx27.h>
 
 static struct device_d cfi_dev = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = 0xC0000000,
 	.size     = 32 * 1024 * 1024,
 };
 #ifdef CONFIG_EUKREA_CPUIMX27_NOR_64MB
 static struct device_d cfi_dev1 = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = 0xC2000000,
 	.size     = 32 * 1024 * 1024,
@@ -72,6 +74,7 @@ static struct memory_platform_data ram_pdata = {
 #endif
 
 static struct device_d sdram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = 0xa0000000,
 	.size     = SDRAM0 * 1024 * 1024,
@@ -84,6 +87,7 @@ static struct fec_platform_data fec_info = {
 };
 
 static struct device_d fec_dev = {
+	.id	  = -1,
 	.name     = "fec_imx",
 	.map_base = 0x1002b000,
 	.platform_data	= &fec_info,
@@ -96,6 +100,7 @@ struct imx_nand_platform_data nand_info = {
 };
 
 static struct device_d nand_dev = {
+	.id	  = -1,
 	.name     = "imx_nand",
 	.map_base = 0xd8000000,
 	.platform_data	= &nand_info,
@@ -137,6 +142,7 @@ static struct NS16550_plat quad_uart_serial_plat = {
 #endif
 
 static struct device_d quad_uart_serial_device = {
+	.id = -1,
 	.name = "serial_ns16550",
 	.map_base = IMX_CS3_BASE + QUART_OFFSET,
 	.size = 0xF,
@@ -151,6 +157,7 @@ static struct i2c_board_info i2c_devices[] = {
 };
 
 static struct device_d i2c_dev = {
+	.id		= -1,
 	.name		= "i2c-imx",
 	.map_base	= IMX_I2C1_BASE,
 };
@@ -204,6 +211,7 @@ static struct imx_fb_platform_data eukrea_cpuimx27_fb_data = {
 };
 
 static struct device_d imxfb_dev = {
+	.id		= -1,
 	.name		= "imxfb",
 	.map_base	= 0x10021000,
 	.size		= 0x1000,
@@ -316,6 +324,7 @@ device_initcall(eukrea_cpuimx27_devices_init);
 
 #ifdef CONFIG_DRIVER_SERIAL_IMX
 static struct device_d eukrea_cpuimx27_serial_device = {
+	.id	  = -1,
 	.name     = "imx_serial",
 	.map_base = IMX_UART1_BASE,
 	.size     = 4096,
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 4509e72..63d019a 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -58,6 +58,7 @@ static struct fec_platform_data fec_info = {
 };
 
 static struct device_d fec_dev = {
+	.id		= -1,
 	.name		= "fec_imx",
 	.map_base	= IMX_FEC_BASE,
 	.platform_data	= &fec_info,
@@ -69,6 +70,7 @@ static struct memory_platform_data sdram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id		= -1,
 	.name		= "mem",
 	.map_base	= IMX_SDRAM_CS0,
 	.size		= 128 * 1024 * 1024,
@@ -82,6 +84,7 @@ struct imx_nand_platform_data nand_info = {
 };
 
 static struct device_d nand_dev = {
+	.id		= -1,
 	.name		= "imx_nand",
 	.map_base	= IMX_NFC_BASE,
 	.platform_data	= &nand_info,
@@ -116,6 +119,7 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 };
 
 static struct device_d imxfb_dev = {
+	.id		= -1,
 	.name		= "imx-ipu-fb",
 	.map_base	= 0x53fc0000,
 	.size		= 0x1000,
@@ -171,6 +175,7 @@ static int eukrea_cpuimx35_devices_init(void)
 device_initcall(eukrea_cpuimx35_devices_init);
 
 static struct device_d eukrea_cpuimx35_serial_device = {
+	.id		= -1,
 	.name		= "imx_serial",
 	.map_base	= IMX_UART1_BASE,
 	.size		= 4096,
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index cb95107..8b477e3 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -114,6 +114,7 @@ static struct fec_platform_data fec_info = {
 };
 
 static struct device_d fec_dev = {
+	.id	  = -1,
 	.name     = "fec_imx",
 	.map_base = IMX_FEC_BASE,
 	.platform_data	= &fec_info,
@@ -125,6 +126,7 @@ static struct memory_platform_data sdram_pdata = {
 };
 
 static struct device_d sdram0_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = IMX_SDRAM_CS0,
 #if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
@@ -143,6 +145,7 @@ static struct memory_platform_data sram_pdata = {
 };
 
 static struct device_d sram0_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = 0x78000000,
 	.size     = 128 * 1024,
@@ -155,6 +158,7 @@ struct imx_nand_platform_data nand_info = {
 };
 
 static struct device_d nand_dev = {
+	.id	  = -1,
 	.name     = "imx_nand",
 	.map_base = IMX_NFC_BASE,
 	.platform_data	= &nand_info,
@@ -181,6 +185,7 @@ static void imx25_usb_init(void)
 }
 
 static struct device_d usbh2_dev = {
+	.id	  = -1,
 	.name     = "ehci",
 	.map_base = IMX_OTG_BASE + 0x400,
 	.size     = 0x200,
@@ -194,6 +199,7 @@ static struct i2c_board_info i2c_devices[] = {
 };
 
 static struct device_d i2c_dev = {
+	.id	  = -1,
 	.name     = "i2c-imx",
 	.map_base = IMX_I2C1_BASE,
 };
@@ -284,6 +290,7 @@ static int imx25_devices_init(void)
 device_initcall(imx25_devices_init);
 
 static struct device_d imx25_serial_device = {
+	.id	  = -1,
 	.name     = "imx_serial",
 	.map_base = IMX_UART1_BASE,
 	.size     = 16 * 1024,
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 544262f..71aaa92 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -59,6 +59,7 @@
 #define MX35PDK_BOARD_REV_2		1
 
 static struct device_d cfi_dev = {
+	.id		= -1,
 	.name		= "cfi_flash",
 	.map_base	= IMX_CS0_BASE,
 	.size		= 64 * 1024 * 1024,
@@ -70,6 +71,7 @@ static struct fec_platform_data fec_info = {
 };
 
 static struct device_d fec_dev = {
+	.id		= -1,
 	.name		= "fec_imx",
 	.map_base	= IMX_FEC_BASE,
 	.platform_data	= &fec_info,
@@ -81,6 +83,7 @@ static struct memory_platform_data sdram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id		= -1,
 	.name		= "mem",
 	.map_base	= IMX_SDRAM_CS0,
 	.size		= 128 * 1024 * 1024,
@@ -93,12 +96,14 @@ struct imx_nand_platform_data nand_info = {
 };
 
 static struct device_d nand_dev = {
+	.id		= -1,
 	.name		= "imx_nand",
 	.map_base	= IMX_NFC_BASE,
 	.platform_data	= &nand_info,
 };
 
 static struct device_d smc911x_dev = {
+	.id		= -1,
 	.name		= "smc911x",
 	.map_base	= IMX_CS5_BASE,
 	.size		= IMX_CS5_RANGE,
@@ -113,6 +118,7 @@ static struct i2c_board_info i2c_devices[] = {
 };
 
 static struct device_d i2c_dev = {
+	.id		= -1,
 	.name		= "i2c-imx",
 	.map_base	= IMX_I2C1_BASE,
 };
@@ -144,6 +150,7 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 };
 
 static struct device_d imxfb_dev = {
+	.id		= -1,
 	.name		= "imx-ipu-fb",
 	.map_base	= 0x53fc0000,
 	.size		= 0x1000,
@@ -244,6 +251,7 @@ static int f3s_enable_display(void)
 late_initcall(f3s_enable_display);
 
 static struct device_d f3s_serial_device = {
+	.id		= -1,
 	.name		= "imx_serial",
 	.map_base	= IMX_UART1_BASE,
 	.size		= 4096,
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index d2fb345..9c85c08 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -59,6 +59,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = 0xa0000000,
 	.size     = 128 * 1024 * 1024,
@@ -71,6 +72,7 @@ static struct fec_platform_data fec_info = {
 };
 
 static struct device_d fec_dev = {
+	.id	  = -1,
 	.name     = "fec_imx",
 	.map_base = 0x1002b000,
 	.platform_data	= &fec_info,
@@ -83,6 +85,7 @@ static struct imx_nand_platform_data nand_info = {
 };
 
 static struct device_d nand_dev = {
+	.id	  = -1,
 	.name     = "imx_nand",
 	.map_base = 0xd8000000,
 	.platform_data	= &nand_info,
@@ -137,6 +140,7 @@ static struct imx_fb_platform_data neso_fb_data = {
 };
 
 static struct device_d imxfb_dev = {
+	.id		= -1,
 	.name		= "imxfb",
 	.map_base	= 0x10021000,
 	.size		= 0x1000,
@@ -146,6 +150,7 @@ static struct device_d imxfb_dev = {
 #ifdef CONFIG_USB
 
 static struct device_d usbh2_dev = {
+	.id	  = -1,
 	.name     = "ehci",
 	.map_base = IMX_OTG_BASE + 0x400,
 	.size     = 0x200,
@@ -356,6 +361,7 @@ static int neso_devices_init(void)
 device_initcall(neso_devices_init);
 
 static struct device_d neso_serial_device = {
+	.id	  = -1,
 	.name     = "imx_serial",
 	.map_base = IMX_UART1_BASE,
 	.size     = 4096,
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index ff8e6c2..44d37aa 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -41,6 +41,7 @@
 #define MX21ADS_IO_LCDON  (1 << 9)
 
 static struct device_d cfi_dev = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = 0xC8000000,
 	.size     = 32 * 1024 * 1024,
@@ -52,6 +53,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = 0xc0000000,
 	.size     = 64 * 1024 * 1024,
@@ -64,12 +66,14 @@ struct imx_nand_platform_data nand_info = {
 };
 
 static struct device_d nand_dev = {
+	.id	  = -1,
 	.name     = "imx_nand",
 	.map_base = 0xDF003000,
 	.platform_data  = &nand_info,
 };
 
 static struct device_d cs8900_dev = {
+	.id	  = -1,
 	.name     = "cs8900",
 	.map_base = IMX_CS1_BASE,
 	// IRQ is connected to UART3_RTS
@@ -108,6 +112,7 @@ static struct imx_fb_platform_data imx_fb_data = {
 };
 
 static struct device_d imxfb_dev = {
+	.id		= -1,
 	.name           = "imxfb",
 	.map_base       = 0x10021000,
 	.size           = 0x1000,
@@ -220,6 +225,7 @@ static int mx21ads_enable_display(void)
 late_initcall(mx21ads_enable_display);
 
 static struct device_d mx21ads_serial_device = {
+	.id	  = -1,
 	.name     = "imx_serial",
 	.map_base = IMX_UART1_BASE,
 	.size     = 4096,
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index 5dbb1e0..ae5da7f 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -34,6 +34,7 @@
 #include <mach/iomux-mx27.h>
 
 static struct device_d cfi_dev = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = 0xC0000000,
 	.size     = 32 * 1024 * 1024,
@@ -45,6 +46,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = 0xa0000000,
 	.size     = 128 * 1024 * 1024,
@@ -57,6 +59,7 @@ static struct fec_platform_data fec_info = {
 };
 
 static struct device_d fec_dev = {
+	.id	  = -1,
 	.name     = "fec_imx",
 	.map_base = 0x1002b000,
 	.platform_data	= &fec_info,
@@ -147,6 +150,7 @@ static int mx27ads_devices_init(void)
 device_initcall(mx27ads_devices_init);
 
 static struct device_d mx27ads_serial_device = {
+	.id	  = -1,
 	.name     = "imx_serial",
 	.map_base = IMX_UART1_BASE,
 	.size     = 4096,
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 4e61387..7cba01c 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -38,6 +38,7 @@
 #include <mach/io.h>
 
 static struct device_d cfi_dev = {
+	.id		= -1,
 	.name		= "cfi_flash",
 	.map_base	= AT91_CHIPSELECT_0,
 	.size		= 0,	/* zero means autodetect size */
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index a689005..c735d26 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -31,6 +31,7 @@
 #include <mach/netx-eth.h>
 
 static struct device_d cfi_dev = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = 0xC0000000,
 	.size     = 32 * 1024 * 1024,
@@ -42,6 +43,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = 0x80000000,
 	.size     = 64 * 1024 * 1024,
@@ -53,6 +55,7 @@ struct netx_eth_platform_data eth0_data = {
 };
 
 static struct device_d netx_eth_dev0 = {
+	.id		= -1,
 	.name		= "netx-eth",
 	.platform_data	= &eth0_data,
 };
@@ -62,6 +65,7 @@ struct netx_eth_platform_data eth1_data = {
 };
 
 static struct device_d netx_eth_dev1 = {
+	.id		= -1,
 	.name		= "netx-eth",
 	.platform_data	= &eth1_data,
 };
@@ -89,6 +93,7 @@ static int netx_devices_init(void) {
 device_initcall(netx_devices_init);
 
 static struct device_d netx_serial_device = {
+	.id	  = -1,
 	.name     = "netx_serial",
 	.map_base = NETX_PA_UART0,
 	.size     = 0x40,
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index 1cb1ff1..9cb0fd0 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -34,6 +34,7 @@
 #include <mach/fsmc.h>
 
 static struct device_d nhk8815_network_dev = {
+	.id = -1,
 	.name = "smc91c111",
 	.map_base = 0x34000300,
 	.size = 16,
@@ -62,6 +63,7 @@ static struct nomadik_nand_platform_data nhk8815_nand_data = {
 };
 
 static struct device_d nhk8815_nand_device = {
+	.id		= -1,
 	.name		= "nomadik_nand",
 	.platform_data	= &nhk8815_nand_data,
 };
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 0908b8a..6de2cce 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -241,6 +241,7 @@ static struct NS16550_plat serial_plat = {
 };
 
 static struct device_d beagle_serial_device = {
+	.id = -1,
 	.name = "serial_ns16550",
 	.map_base = OMAP_UART3_BASE,
 	.size = 1024,
@@ -267,6 +268,7 @@ static struct memory_platform_data sram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id = -1,
 	.name = "mem",
 	.map_base = 0x80000000,
 	.size = 128 * 1024 * 1024,
@@ -291,6 +293,7 @@ static struct ehci_platform_data ehci_pdata = {
 };
 
 static struct device_d usbh_dev = {
+	.id	  = -1,
 	.name     = "ehci",
 	.map_base = 0x48064700,
 	.size     = 4 * 1024,
@@ -299,6 +302,7 @@ static struct device_d usbh_dev = {
 #endif /* CONFIG_USB_EHCI_OMAP */
 
 static struct device_d i2c_dev = {
+	.id		= -1,
 	.name		= "i2c-omap",
 	.map_base	= OMAP_I2C1_BASE,
 };
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index 619ea94..c37f151 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -218,6 +218,7 @@ static struct NS16550_plat serial_plat = {
 };
 
 static struct device_d omap3evm_serial_device = {
+	.id		= -1,
 	.name		= "serial_ns16550",
 #if defined(CONFIG_OMAP3EVM_UART1)
 	.map_base	= OMAP_UART1_BASE,
@@ -246,6 +247,7 @@ static struct memory_platform_data sram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id		= -1,
 	.name		= "mem",
 	.map_base	= 0x80000000,
 	.size		= 128 * 1024 * 1024,
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 32d1a42..f7615b4 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -610,6 +610,7 @@ static struct NS16550_plat serial_plat = {
 };
 
 static struct device_d sdp3430_serial_device = {
+	.id = -1,
 	.name = "serial_ns16550",
 	.map_base = OMAP_UART3_BASE,
 	.size = 1024,
@@ -646,6 +647,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 struct device_d sdram_dev = {
+	.id = -1,
 	.name = "mem",
 	.map_base = 0x80000000,
 	.size = 128 * 1024 * 1024,
diff --git a/arch/arm/boards/omap/devices-gpmc-nand.c b/arch/arm/boards/omap/devices-gpmc-nand.c
index ac23e9d..4369aa0 100644
--- a/arch/arm/boards/omap/devices-gpmc-nand.c
+++ b/arch/arm/boards/omap/devices-gpmc-nand.c
@@ -72,6 +72,7 @@ static struct gpmc_nand_platform_data nand_plat = {
 
 /** NAND device definition */
 static struct device_d gpmc_generic_nand_nand_device = {
+	.id = -1,
 	.name = "gpmc_nand",
 	.map_base = OMAP_GPMC_BASE,
 	.size = 1024 * 4,	/* GPMC size */
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 4022cf4..89e2481 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -44,6 +44,7 @@
  * CS line 0, data width is 16 bit
  */
 static struct device_d cfi_dev = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = IMX_CS0_BASE,
 	.size     = 32 * 1024 * 1024,	/* area size */
@@ -59,6 +60,7 @@ static struct memory_platform_data sram_dev_pdata0 = {
 };
 
 static struct device_d sram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = IMX_CS4_BASE,
 	.size     = IMX_CS4_RANGE,	/* area size */
@@ -71,6 +73,7 @@ static struct device_d sram_dev = {
  * GPIO3, data width is 16 bit
  */
 static struct device_d network_dev = {
+	.id	  = -1,
 	.name     = "smc911x",
 	.map_base = IMX_CS1_BASE,
 	.size     = IMX_CS1_RANGE,	/* area size */
@@ -88,6 +91,7 @@ static struct memory_platform_data ram_dev_pdata0 = {
 };
 
 static struct device_d sdram0_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = IMX_SDRAM_CS0,
 	.size     = SDRAM0 * 1024 * 1024,	/* fix size */
@@ -108,6 +112,7 @@ static struct memory_platform_data ram_dev_pdata1 = {
 };
 
 static struct device_d sdram1_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = IMX_SDRAM_CS1,
 	.size     = SDRAM1 * 1024 * 1024,	/* fix size */
@@ -122,6 +127,7 @@ struct imx_nand_platform_data nand_info = {
 };
 
 static struct device_d nand_dev = {
+	.id	  = -1,
 	.name     = "imx_nand",
 	.map_base = 0xB8000000,
 	.platform_data	= &nand_info,
@@ -129,12 +135,14 @@ static struct device_d nand_dev = {
 
 #ifdef CONFIG_USB
 static struct device_d usbotg_dev = {
+	.id	  = -1,
 	.name     = "ehci",
 	.map_base = IMX_OTG_BASE,
 	.size     = 0x200,
 };
 
 static struct device_d usbh2_dev = {
+	.id	  = -1,
 	.name     = "ehci",
 	.map_base = IMX_OTG_BASE + 0x400,
 	.size     = 0x200,
@@ -313,6 +321,7 @@ static int imx31_devices_init(void)
 device_initcall(imx31_devices_init);
 
 static struct device_d imx31_serial_device = {
+	.id	  = -1,
 	.name     = "imx_serial",
 	.map_base = IMX_UART1_BASE,
 	.size     = 16 * 1024,
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 7621320..755ebcc 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -45,6 +45,7 @@
 #include <mach/iomux-mx27.h>
 
 static struct device_d cfi_dev = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = 0xC0000000,
 	.size     = 32 * 1024 * 1024,
@@ -56,6 +57,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = 0xa0000000,
 	.size     = 128 * 1024 * 1024,
@@ -68,6 +70,7 @@ static struct memory_platform_data sram_pdata = {
 };
 
 static struct device_d sram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = 0xc8000000,
 	.size     = 512 * 1024, /* Can be up to 2MiB */
@@ -80,6 +83,7 @@ static struct fec_platform_data fec_info = {
 };
 
 static struct device_d fec_dev = {
+	.id	  = -1,
 	.name     = "fec_imx",
 	.map_base = 0x1002b000,
 	.platform_data	= &fec_info,
@@ -93,6 +97,7 @@ static struct spi_imx_master pcm038_spi_0_data = {
 };
 
 static struct device_d spi_dev = {
+	.id	  = -1,
 	.name     = "imx_spi",
 	.map_base = 0x1000e000,
 	.platform_data = &pcm038_spi_0_data,
@@ -114,6 +119,7 @@ static struct imx_nand_platform_data nand_info = {
 };
 
 static struct device_d nand_dev = {
+	.id	  = -1,
 	.name     = "imx_nand",
 	.map_base = 0xd8000000,
 	.platform_data	= &nand_info,
@@ -154,6 +160,7 @@ static struct imx_fb_platform_data pcm038_fb_data = {
 };
 
 static struct device_d imxfb_dev = {
+	.id		= -1,
 	.name		= "imxfb",
 	.map_base	= 0x10021000,
 	.size		= 0x1000,
@@ -162,6 +169,7 @@ static struct device_d imxfb_dev = {
 
 #ifdef CONFIG_USB
 static struct device_d usbh2_dev = {
+	.id	  = -1,
 	.name     = "ehci",
 	.map_base = IMX_OTG_BASE + 0x400,
 	.size     = 0x200,
@@ -363,6 +371,7 @@ static int pcm038_devices_init(void)
 device_initcall(pcm038_devices_init);
 
 static struct device_d pcm038_serial_device = {
+	.id	  = -1,
 	.name     = "imx_serial",
 	.map_base = IMX_UART1_BASE,
 	.size     = 4096,
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 7db3b54..9f98795 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -49,6 +49,7 @@
  * CS line 0, data width is 16 bit
  */
 static struct device_d cfi_dev = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = IMX_CS0_BASE,
 	.size     = 32 * 1024 * 1024,	/* area size */
@@ -59,6 +60,7 @@ static struct fec_platform_data fec_info = {
 };
 
 static struct device_d fec_dev = {
+	.id	  = -1,
 	.name     = "fec_imx",
 	.map_base = IMX_FEC_BASE,
 	.platform_data	= &fec_info,
@@ -70,6 +72,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram0_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = IMX_SDRAM_CS0,
 	.size     = 128 * 1024 * 1024,
@@ -83,6 +86,7 @@ struct imx_nand_platform_data nand_info = {
 };
 
 static struct device_d nand_dev = {
+	.id	  = -1,
 	.name     = "imx_nand",
 	.map_base = IMX_NFC_BASE,
 	.platform_data	= &nand_info,
@@ -132,6 +136,7 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 };
 
 static struct device_d imx_ipu_fb_dev = {
+	.id		= -1,
 	.name		= "imx-ipu-fb",
 	.map_base	= 0x53fc0000,
 	.size		= 0x1000,
@@ -217,6 +222,7 @@ static int imx35_devices_init(void)
 device_initcall(imx35_devices_init);
 
 static struct device_d imx35_serial_device = {
+	.id	  = -1,
 	.name     = "imx_serial",
 	.map_base = IMX_UART1_BASE,
 	.size     = 16 * 1024,
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 1707a06..7328a6c 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -46,6 +46,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = 0xa0000000,
 	.size     = 128 * 1024 * 1024,
@@ -58,6 +59,7 @@ static struct fec_platform_data fec_info = {
 };
 
 static struct device_d fec_dev = {
+	.id	  = -1,
 	.name     = "fec_imx",
 	.map_base = 0x1002b000,
 	.platform_data	= &fec_info,
@@ -69,6 +71,7 @@ struct imx_nand_platform_data nand_info = {
 };
 
 static struct device_d nand_dev = {
+	.id	  = -1,
 	.name     = "imx_nand",
 	.map_base = 0xd8000000,
 	.platform_data	= &nand_info,
@@ -76,6 +79,7 @@ static struct device_d nand_dev = {
 
 #ifdef CONFIG_USB
 static struct device_d usbh2_dev = {
+	.id	  = -1,
 	.name     = "ehci",
 	.map_base = IMX_OTG_BASE + 0x400,
 	.size     = 0x200,
@@ -216,6 +220,7 @@ static int pca100_devices_init(void)
 device_initcall(pca100_devices_init);
 
 static struct device_d pca100_serial_device = {
+	.id	  = -1,
 	.name     = "imx_serial",
 	.map_base = IMX_UART1_BASE,
 	.size     = 4096,
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 9fde288..abe8def 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -87,6 +87,7 @@ static void pm_add_device_nand(void)
 }
 
 static struct device_d cfi_dev = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = AT91_CHIPSELECT_0,
 	.size     = 4 * 1024 * 1024,
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index c0d4199..4960922 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -33,6 +33,7 @@
 #include <dm9000.h>
 
 static struct device_d cfi_dev = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 
 	.map_base = 0x10000000,
@@ -45,6 +46,7 @@ static struct memory_platform_data sdram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = 0x08000000,
 	.size     = 16 * 1024 * 1024,
@@ -59,6 +61,7 @@ static struct dm9000_platform_data dm9000_data = {
 };
 
 static struct device_d dm9000_dev = {
+	.id	  = -1,
 	.name     = "dm9000",
 	.map_base = 0x16000000,
 	.size     = 8,
@@ -104,6 +107,7 @@ static int scb9328_devices_init(void) {
 device_initcall(scb9328_devices_init);
 
 static struct device_d scb9328_serial_device = {
+	.id	  = -1,
 	.name     = "imx_serial",
 	.map_base = IMX_UART1_BASE,
 	.size     = 4096,
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 398a721..c6ddb13 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -26,6 +26,7 @@ static struct memory_platform_data sram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = AT91_CHIPSELECT_1,
 	.platform_data = &sram_pdata,
@@ -40,6 +41,7 @@ void at91_add_device_sdram(u32 size)
 
 #if defined(CONFIG_DRIVER_NET_MACB)
 static struct device_d macb_dev = {
+	.id	  = -1,
 	.name     = "macb",
 	.map_base = AT91SAM9260_BASE_EMAC,
 	.size     = 0x1000,
@@ -82,6 +84,7 @@ void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 
 #if defined(CONFIG_NAND_ATMEL)
 static struct device_d nand_dev = {
+	.id	  = -1,
 	.name     = "atmel_nand",
 	.map_base = AT91_CHIPSELECT_3,
 	.size     = 0x10,
@@ -117,6 +120,7 @@ void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
 static struct device_d dbgu_serial_device = {
+	.id	  = -1,
 	.name     = "atmel_serial",
 	.map_base = AT91_BASE_SYS + AT91_DBGU,
 	.size     = 4096,
@@ -129,6 +133,7 @@ static inline void configure_dbgu_pins(void)
 }
 
 static struct device_d uart0_serial_device = {
+	.id	  = -1,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9260_BASE_US0,
 	.size     = 4096,
@@ -154,6 +159,7 @@ static inline void configure_usart0_pins(unsigned pins)
 }
 
 static struct device_d uart1_serial_device = {
+	.id	  = -1,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9260_BASE_US1,
 	.size     = 4096,
@@ -171,6 +177,7 @@ static inline void configure_usart1_pins(unsigned pins)
 }
 
 static struct device_d uart2_serial_device = {
+	.id	  = -1,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9260_BASE_US2,
 	.size     = 4096,
@@ -188,6 +195,7 @@ static inline void configure_usart2_pins(unsigned pins)
 }
 
 static struct device_d uart3_serial_device = {
+	.id	  = -1,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9260_BASE_US3,
 	.size     = 4096,
@@ -205,6 +213,7 @@ static inline void configure_usart3_pins(unsigned pins)
 }
 
 static struct device_d uart4_serial_device = {
+	.id	  = -1,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9260_BASE_US4,
 	.size     = 4096,
@@ -217,6 +226,7 @@ static inline void configure_usart4_pins(void)
 }
 
 static struct device_d uart5_serial_device = {
+	.id	  = -1,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9260_BASE_US5,
 	.size     = 4096,
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 7ebc32c..807a6a7 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -26,6 +26,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = AT91_CHIPSELECT_1,
 	.platform_data = &ram_pdata,
@@ -40,6 +41,7 @@ void at91_add_device_sdram(u32 size)
 
 #if defined(CONFIG_DRIVER_NET_MACB)
 static struct device_d macb_dev = {
+	.id	  = -1,
 	.name     = "macb",
 	.map_base = AT91SAM9263_BASE_EMAC,
 	.size     = 0x1000,
@@ -81,6 +83,7 @@ void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 
 #if defined(CONFIG_NAND_ATMEL)
 static struct device_d nand_dev = {
+	.id	  = -1,
 	.name     = "atmel_nand",
 	.map_base = AT91_CHIPSELECT_3,
 	.size     = 0x10,
@@ -116,6 +119,7 @@ void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
 static struct device_d dbgu_serial_device = {
+	.id	  = -1,
 	.name     = "atmel_serial",
 	.map_base = (AT91_BASE_SYS + AT91_DBGU),
 	.size     = 4096,
@@ -128,6 +132,7 @@ static inline void configure_dbgu_pins(void)
 }
 
 static struct device_d uart0_serial_device = {
+	.id	  = -1,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9263_BASE_US0,
 	.size     = 4096,
@@ -145,6 +150,7 @@ static inline void configure_usart0_pins(unsigned pins)
 }
 
 static struct device_d uart1_serial_device = {
+	.id	  = -1,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9263_BASE_US1,
 	.size     = 4096,
@@ -162,6 +168,7 @@ static inline void configure_usart1_pins(unsigned pins)
 }
 
 static struct device_d uart2_serial_device = {
+	.id	  = -1,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9263_BASE_US2,
 	.size     = 4096,
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index b48f748..37eafaf 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -54,6 +54,7 @@ static struct imx_iim_platform_data imx25_iim_pdata = {
 };
 
 static struct device_d imx25_iim_dev = {
+	.id		= -1,
 	.name		= "imx_iim",
 	.map_base	= IMX_IIM_BASE,
 	.platform_data	= &imx25_iim_pdata,
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index c984cb0..5844c68 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -37,6 +37,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id = -1,
 	.name = "mem",
 	.map_base = 0x00000000,
 	.platform_data = &ram_pdata,
diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index 269e774..61bcd43 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -6,6 +6,7 @@
 #include <fs.h>
 
 static struct device_d cfi_dev = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = 0x20000000,
 	.size     = 32 * 1024 * 1024,
@@ -17,6 +18,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = 0x0,
 	.size     = 128 * 1024 * 1024,
@@ -24,6 +26,7 @@ static struct device_d sdram_dev = {
 };
 
 static struct device_d smc911x_dev = {
+	.id	  = -1,
 	.name     = "smc911x",
 	.map_base = 0x24000000,
 	.size     = 4096,
@@ -52,6 +55,7 @@ static int ipe337_devices_init(void) {
 device_initcall(ipe337_devices_init);
 
 static struct device_d blackfin_serial_device = {
+	.id	  = -1,
 	.name     = "blackfin_serial",
 	.map_base = 0,
 	.size     = 4096,
diff --git a/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c b/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c
index 9bf1713..7475ab3 100644
--- a/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c
+++ b/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c
@@ -42,6 +42,7 @@ ulong mcfv4e_get_bus_clk(void)
  * CS line 0, data width is 32 bit
  */
 static struct device_d cfi_dev = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = CFG_FLASH_ADDRESS,
 	.size     = CFG_FLASH_SIZE,
@@ -52,6 +53,7 @@ static struct device_d cfi_dev = {
  * to CS4, data width is 16 bit
  */
 //static struct device_d sram_dev = {
+//	.id	  = -1,
 //	.name     = "sram",
 //FIXME	.map_base = IMX_CS4_BASE,
 //FIXME	.size     = IMX_CS4_RANGE,	/* area size */
@@ -61,6 +63,7 @@ static struct device_d cfi_dev = {
  * ?MiB NAND type flash, data width 8 bit
  */
 //static struct device_d nand_dev = {
+//	.id	  = -1,
 //	.name     = "cfi_flash_nand",
 //	.map_base = 0xfc000000,	/* FIXME */
 //	.size     = 32 * 1024 * 1024,	/* FIXME */
@@ -75,12 +78,14 @@ static struct fec_platform_data fec_info = {
 };
 
 static struct device_d network_dev0 = {
+	.id	  = -1,
 	.name     = "fec_mcf54xx",
 	.map_base = MCF_FEC_ADDR(0),
 	.size     = MCF_FEC_SIZE(0),	   /* area size */
 	.platform_data	= &fec_info,
 };
 static struct device_d network_dev1 = {
+	.id	  = -1,
 	.name     = "fec_mcf54xx",
 	.map_base = MCF_FEC_ADDR(1),
 	.size     = MCF_FEC_SIZE(1),	   /* area size */
@@ -96,6 +101,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = CFG_SDRAM_ADDRESS,
 	.size     = CFG_SDRAM_SIZE,
@@ -134,6 +140,7 @@ static int mcfv4e_devices_init(void)
 device_initcall(mcfv4e_devices_init);
 
 static struct device_d mcfv4e_serial_device = {
+	.id	  = -1,
 	.name     = "mcfv4e_serial",
 	.map_base = 1+CFG_EARLY_UART_PORT,
 	.size     = 16 * 1024,
diff --git a/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c b/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
index 3bc2d12..3744950 100644
--- a/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
+++ b/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
@@ -46,6 +46,7 @@ ulong mcfv4e_get_bus_clk(void)
  */
 static struct device_d cfi_dev =
 {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = CFG_FLASH_ADDRESS,
 	.size     = CFG_FLASH_SIZE,
@@ -61,6 +62,7 @@ static struct fec_platform_data fec_info =
 
 static struct device_d network_dev0 =
 {
+	.id	  = -1,
 	.name     = "fec_mcf54xx",
 	.map_base = MCF_FEC_ADDR(0),
 	.size     = MCF_FEC_SIZE(0),	   /* area size */
@@ -68,6 +70,7 @@ static struct device_d network_dev0 =
 };
 static struct device_d network_dev1 =
 {
+	.id	  = -1,
 	.name     = "fec_mcf54xx",
 	.map_base = MCF_FEC_ADDR(1),
 	.size     = MCF_FEC_SIZE(1),	   /* area size */
@@ -84,6 +87,7 @@ static struct memory_platform_data ram_pdata = {
 
 static struct device_d sdram_dev =
 {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = CFG_SDRAM_ADDRESS,
 	.size     = CFG_SDRAM_SIZE,
@@ -116,6 +120,7 @@ device_initcall(mcfv4e_devices_init);
 
 static struct device_d mcfv4e_serial_device =
 {
+	.id	  = -1,
 	.name     = "mcfv4e_serial",
 	.map_base = 1 + CFG_EARLY_UART_PORT,
 	.size     = 16 * 1024,
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index f3845ad..8b43550 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -38,6 +38,7 @@
 #include <reloc.h>
 
 struct device_d cfi_dev = {
+	.id	  = -1,
 	.name     = "cfi_flash",
 	.map_base = 0xff000000,
 	.size     = 16 * 1024 * 1024,
@@ -49,6 +50,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 struct device_d sdram_dev = {
+	.id	  = -1,
 	.name     = "mem",
 	.map_base = 0x0,
 	.size     = 64 * 1024 * 1024,
@@ -60,6 +62,7 @@ static struct mpc5xxx_fec_platform_data fec_info = {
 };
 
 struct device_d eth_dev = {
+	.id		= -1,
 	.name		= "fec_mpc5xxx",
 	.map_base	= MPC5XXX_FEC,
 	.platform_data	= &fec_info,
@@ -80,12 +83,14 @@ static int devices_init (void)
 device_initcall(devices_init);
 
 static struct device_d psc3 = {
+	.id	  = -1,
 	.name     = "mpc5xxx_serial",
 	.map_base = MPC5XXX_PSC3,
 	.size     = 4096,
 };
 
 static struct device_d psc6 = {
+	.id	  = -1,
 	.name     = "mpc5xxx_serial",
 	.map_base = MPC5XXX_PSC6,
 	.size     = 4096,
diff --git a/arch/sandbox/board/board.c b/arch/sandbox/board/board.c
index 84017eb..7d489fd 100644
--- a/arch/sandbox/board/board.c
+++ b/arch/sandbox/board/board.c
@@ -28,6 +28,7 @@
 #include <errno.h>
 
 static struct device_d tap_device = {
+	.id	  = -1,
         .name     = "tap",
 };
 
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index bd93bc1..a6cd7e0 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -36,6 +36,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id		= -1,
 	.name		= "mem",
 	.size		= 16 * 1024 * 1024,
 	.map_base	= 0,
@@ -43,6 +44,7 @@ static struct device_d sdram_dev = {
 };
 
 static struct device_d bios_disk_dev = {
+	.id		= -1,
 	.name		= "biosdrive",
 	.size		= 1,
 };
@@ -95,6 +97,7 @@ static struct NS16550_plat serial_plat = {
 
 /* we are expecting always one serial interface */
 static struct device_d generic_pc_serial_device = {
+       .id = -1,
        .name = "serial_ns16550",
        .map_base = 0x3f8,
        .size = 8,
diff --git a/commands/mem.c b/commands/mem.c
index 8a4267c..bc84f6d 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -616,6 +616,7 @@ static struct memory_platform_data mem_dev_pdata = {
 };
 
 static struct device_d mem_dev = {
+	.id = -1,
 	.name  = "mem",
 	.map_base = 0,
 	.size   = ~0, /* FIXME: should be 0x100000000, ahem... */
diff --git a/common/startup.c b/common/startup.c
index 7fa9099..84a59c5 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -86,6 +86,7 @@ static struct memory_platform_data default_env_platform_data = {
 };
 
 static struct device_d default_env_dev = {
+	.id		= -1,
 	.name		= "mem",
 	.platform_data	= &default_env_platform_data,
 };
diff --git a/drivers/serial/arm_dcc.c b/drivers/serial/arm_dcc.c
index 151730b..0199da3 100644
--- a/drivers/serial/arm_dcc.c
+++ b/drivers/serial/arm_dcc.c
@@ -155,6 +155,7 @@ static struct driver_d arm_dcc_driver = {
 };
 
 static struct device_d arm_dcc_device = {
+	.id	= -1,
 	.name	= "arm_dcc",
 	.size	= 4096,
 };
diff --git a/lib/driver.c b/lib/driver.c
index 39881c2..66d8fee 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -103,7 +103,7 @@ int register_device(struct device_d *new_device)
 {
 	struct driver_d *drv;
 
-	if (new_device->id == 0) {
+	if (new_device->id < 0) {
 		new_device->id = get_free_deviceid(new_device->name);
 	} else {
 		if (get_device_by_name_id(new_device->name, new_device->id)) {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
