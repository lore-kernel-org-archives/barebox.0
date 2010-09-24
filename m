Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oz2eY-0002N5-71
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 07:25:14 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Sep 2010 09:23:23 +0200
Message-Id: <1285313004-25445-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] device: introduce resource structure to simplify resource
	delaration
To: barebox@lists.infradead.org

introdude also some helper to manager them

and prepare for multi ressource per device support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Documentation/porting.txt                          |    6 +-
 arch/arm/boards/a9m2410/a9m2410.c                  |   37 ++++---
 arch/arm/boards/a9m2440/a9m2440.c                  |   24 +++--
 arch/arm/boards/at91sam9263ek/init.c               |    6 +-
 arch/arm/boards/edb93xx/edb93xx.c                  |   36 ++++--
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   26 +++--
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |   48 ++++++---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |   26 +++--
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   38 +++++--
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   42 +++++---
 arch/arm/boards/guf-neso/board.c                   |   32 ++++--
 arch/arm/boards/imx21ads/imx21ads.c                |   32 ++++--
 arch/arm/boards/imx27ads/imx27ads.c                |   22 +++--
 arch/arm/boards/mmccpu/init.c                      |    6 +-
 arch/arm/boards/netx/netx.c                        |   18 ++-
 arch/arm/boards/nhk8815/setup.c                    |    6 +-
 arch/arm/boards/omap/board-beagle.c                |   22 +++--
 arch/arm/boards/omap/board-omap3evm.c              |   14 ++-
 arch/arm/boards/omap/board-sdp343x.c               |   12 ++-
 arch/arm/boards/omap/devices-gpmc-nand.c           |    6 +-
 arch/arm/boards/pcm037/pcm037.c                    |   52 ++++++---
 arch/arm/boards/pcm038/pcm038.c                    |   48 ++++++---
 arch/arm/boards/pcm043/pcm043.c                    |   32 ++++--
 arch/arm/boards/phycard-i.MX27/pca100.c            |   26 +++--
 arch/arm/boards/pm9263/init.c                      |    6 +-
 arch/arm/boards/scb9328/scb9328.c                  |   25 +++--
 arch/arm/lib/armlinux.c                            |    4 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |   60 +++++++----
 arch/arm/mach-at91/at91sam9263_devices.c           |   42 +++++---
 arch/arm/mach-imx/iim.c                            |   17 ++-
 arch/arm/mach-imx/imx25.c                          |   22 +++--
 arch/arm/mach-nomadik/8815.c                       |   18 ++-
 arch/blackfin/boards/ipe337/ipe337.c               |   24 +++--
 arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c     |   64 +++++++----
 arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c |   30 ++++--
 arch/ppc/boards/pcm030/pcm030.c                    |   32 ++++--
 arch/sandbox/board/hostfile.c                      |    4 +-
 arch/x86/boards/x86_generic/generic_pc.c           |   18 ++--
 commands/mem.c                                     |    8 +-
 common/startup.c                                   |    4 +-
 drivers/ata/bios.c                                 |    4 +-
 drivers/i2c/busses/i2c-imx.c                       |   22 ++--
 drivers/i2c/busses/i2c-omap.c                      |    4 +-
 drivers/mtd/nand/atmel_nand.c                      |    2 +-
 drivers/mtd/nand/nand_imx.c                        |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |    8 +-
 drivers/mtd/nand/nand_s3c2410.c                    |    4 +-
 drivers/net/cs8900.c                               |    2 +-
 drivers/net/fec_imx.c                              |    2 +-
 drivers/net/fec_mpc5200.c                          |    2 +-
 drivers/net/macb.c                                 |    2 +-
 drivers/net/smc91111.c                             |    2 +-
 drivers/net/smc911x.c                              |    9 +-
 drivers/nor/cfi_flash.c                            |   31 +++---
 drivers/serial/amba-pl011.c                        |   32 +++---
 drivers/serial/atmel.c                             |   29 +++---
 drivers/serial/serial_imx.c                        |   31 +++---
 drivers/serial/serial_mpc5xxx.c                    |   20 ++--
 drivers/serial/serial_netx.c                       |   34 +++---
 drivers/serial/serial_ns16550.c                    |   12 +-
 drivers/serial/serial_pl010.c                      |   15 ++-
 drivers/serial/serial_s3c24x0.c                    |   36 +++---
 drivers/spi/imx_spi.c                              |   17 ++--
 drivers/usb/gadget/fsl_udc.c                       |    2 +-
 drivers/usb/host/ehci-hcd.c                        |    9 +-
 drivers/video/fb.c                                 |    4 +-
 drivers/video/imx-ipu-fb.c                         |    2 +-
 drivers/video/imx.c                                |    2 +-
 fs/devfs.c                                         |    2 +-
 fs/fs.c                                            |   14 ++-
 include/driver.h                                   |   30 +++++-
 include/linux/ioport.h                             |  115 ++++++++++++++++++++
 lib/driver.c                                       |    7 +-
 73 files changed, 996 insertions(+), 508 deletions(-)
 create mode 100644 include/linux/ioport.h

diff --git a/Documentation/porting.txt b/Documentation/porting.txt
index ccfe598..cd5e381 100644
--- a/Documentation/porting.txt
+++ b/Documentation/porting.txt
@@ -34,8 +34,10 @@ extra-y += barebox.lds
 
 	static struct device_d scb9328_serial_device = {
 		.name     = "imx_serial",
-		.map_base = IMX_UART1_BASE,
-		.size     = 4096,
+		.resource_base = {
+			.start	= IMX_UART1_BASE,
+			.size	= 4096,
+		},
 	};
 
 	static int scb9328_console_init(void)
diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 57d8fa3..ac8bf65 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -43,7 +43,9 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name     	= "ram",
-	.map_base	= CS6_BASE,
+	.resource_base = {
+		.start	= CS6_BASE,
+	},
 	.platform_data  = &ram_pdata,
 };
 
@@ -55,7 +57,9 @@ static struct s3c24x0_nand_platform_data nand_info = {
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "s3c24x0_nand",
-	.map_base = S3C24X0_NAND_BASE,
+	.resource_base = {
+		.start = S3C24X0_NAND_BASE,
+	},
 	.platform_data	= &nand_info,
 };
 
@@ -67,8 +71,10 @@ static struct device_d nand_dev = {
 static struct device_d network_dev = {
 	.id       = -1,
         .name     = "smc91c111",
-        .map_base = CS1_BASE + 0x300,
-        .size     = 16,
+	.resource_base = {
+		.start	= CS1_BASE + 0x300,
+		.size	= 16,
+	},
 };
 
 static int a9m2410_devices_init(void)
@@ -83,25 +89,25 @@ static int a9m2410_devices_init(void)
 
 	switch (reg &= 0x7) {
 	case 0:
-		sdram_dev.size = 32 * 1024 * 1024;
+		dev_resource_set_size(&sdram_dev, 32 * 1024 * 1024);
 		break;
 	case 1:
-		sdram_dev.size = 64 * 1024 * 1024;
+		dev_resource_set_size(&sdram_dev, 64 * 1024 * 1024);
 		break;
 	case 2:
-		sdram_dev.size = 128 * 1024 * 1024;
+		dev_resource_set_size(&sdram_dev, 128 * 1024 * 1024);
 		break;
 	case 4:
-		sdram_dev.size = 2 * 1024 * 1024;
+		dev_resource_set_size(&sdram_dev, 2 * 1024 * 1024);
 		break;
 	case 5:
-		sdram_dev.size = 4 * 1024 * 1024;
+		dev_resource_set_size(&sdram_dev, 4 * 1024 * 1024);
 		break;
 	case 6:
-		sdram_dev.size = 8 * 1024 * 1024;
+		dev_resource_set_size(&sdram_dev, 8 * 1024 * 1024);
 		break;
 	case 7:
-		sdram_dev.size = 16 * 1024 * 1024;
+		dev_resource_set_size(&sdram_dev, 16 * 1024 * 1024);
 		break;
 	}
 
@@ -165,7 +171,8 @@ static int a9m2410_devices_init(void)
 #endif
 
 	armlinux_add_dram(&sdram_dev);
-	armlinux_set_bootparams((void *)sdram_dev.map_base + 0x100);
+
+	armlinux_set_bootparams((void *)dev_resource_get_start(&sdram_dev) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2410);
 
 	return 0;
@@ -183,8 +190,10 @@ void __bare_init nand_boot(void)
 static struct device_d a9m2410_serial_device = {
 	.id       = -1,
 	.name     = "s3c24x0_serial",
-	.map_base = UART1_BASE,
-	.size     = UART1_SIZE,
+	.resource_base = {
+		.start	= UART1_BASE,
+		.size	= UART1_SIZE,
+	},
 };
 
 static int a9m2410_console_init(void)
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 764cd65..8d4c7fd 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -46,7 +46,9 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.map_base	= CS6_BASE,
+	.resource_base = {
+		.start	= CS6_BASE,
+	},
 	.platform_data	= &ram_pdata,
 };
 
@@ -57,7 +59,9 @@ static struct s3c24x0_nand_platform_data nand_info = {
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "s3c24x0_nand",
-	.map_base = S3C24X0_NAND_BASE,
+	.resource_base = {
+		.start	= S3C24X0_NAND_BASE,
+	},
 	.platform_data	= &nand_info,
 };
 
@@ -69,8 +73,10 @@ static struct device_d nand_dev = {
 static struct device_d network_dev = {
 	.id	  = -1,
 	.name     = "cs8900",
-	.map_base = CS5_BASE + (1 << 24) + 0x300,
-	.size     = 16,
+	.resource_base = {
+		.start	= CS5_BASE + (1 << 24) + 0x300,
+		.size	= 16,
+	},
 };
 
 static int a9m2440_check_for_ram(uint32_t addr)
@@ -136,7 +142,7 @@ static int a9m2440_devices_init(void)
 		break;
 	}
 
-	sdram_dev.size = s3c24x0_get_memory_size();
+	dev_resource_set_size(&sdram_dev, s3c24x0_get_memory_size());
 
 	/* ----------- configure the access to the outer space ---------- */
 	reg = readl(BWSCON);
@@ -171,7 +177,7 @@ static int a9m2440_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 	armlinux_add_dram(&sdram_dev);
-	armlinux_set_bootparams((void *)sdram_dev.map_base + 0x100);
+	armlinux_set_bootparams((void *)dev_resource_get_start(&sdram_dev) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2440);
 
 	return 0;
@@ -189,8 +195,10 @@ void __bare_init nand_boot(void)
 static struct device_d a9m2440_serial_device = {
 	.id	  = -1,
 	.name     = "s3c24x0_serial",
-	.map_base = UART1_BASE,
-	.size     = UART1_SIZE,
+	.resource_base = {
+		.start	= UART1_BASE,
+		.size	= UART1_SIZE,
+	},
 };
 
 static int a9m2440_console_init(void)
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 8448866..ac72c54 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -90,8 +90,10 @@ static void ek_add_device_nand(void)
 static struct device_d cfi_dev = {
 	.id		= -1,
 	.name		= "cfi_flash",
-	.map_base	= AT91_CHIPSELECT_0,
-	.size		= 8 * 1024 * 1024,
+	.resource_base = {
+		.start	= AT91_CHIPSELECT_0,
+		.size	= 8 * 1024 * 1024,
+	},
 };
 
 static struct at91_ether_platform_data macb_pdata = {
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 0f127b5..eb37fcc 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -41,8 +41,10 @@
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0x60000000,
-	.size     = EDB93XX_CFI_FLASH_SIZE,
+	.resource_base = {
+		.start	= 0x60000000,
+		.size	= EDB93XX_CFI_FLASH_SIZE,
+	},
 };
 
 static struct memory_platform_data ram_dev_pdata0 = {
@@ -53,8 +55,10 @@ static struct memory_platform_data ram_dev_pdata0 = {
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = CONFIG_EP93XX_SDRAM_BANK0_BASE,
-	.size     = CONFIG_EP93XX_SDRAM_BANK0_SIZE,
+	.resource_base = {
+		.start	= CONFIG_EP93XX_SDRAM_BANK0_BASE,
+		.size	= CONFIG_EP93XX_SDRAM_BANK0_SIZE,
+	},
 	.platform_data = &ram_dev_pdata0,
 };
 
@@ -67,8 +71,10 @@ static struct memory_platform_data ram_dev_pdata1 = {
 static struct device_d sdram1_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = CONFIG_EP93XX_SDRAM_BANK1_BASE,
-	.size     = CONFIG_EP93XX_SDRAM_BANK1_SIZE,
+	.resource_base = {
+		.start	= CONFIG_EP93XX_SDRAM_BANK1_BASE,
+		.size	= CONFIG_EP93XX_SDRAM_BANK1_SIZE,
+	},
 	.platform_data = &ram_dev_pdata1,
 };
 #endif
@@ -82,8 +88,10 @@ static struct memory_platform_data ram_dev_pdata2 = {
 static struct device_d sdram2_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = CONFIG_EP93XX_SDRAM_BANK2_BASE,
-	.size     = CONFIG_EP93XX_SDRAM_BANK2_SIZE,
+	.resource_base = {
+		.start	= CONFIG_EP93XX_SDRAM_BANK2_BASE,
+		.size	= CONFIG_EP93XX_SDRAM_BANK2_SIZE,
+	},
 	.platform_data = &ram_dev_pdata2,
 };
 #endif
@@ -97,8 +105,10 @@ static struct memory_platform_data ram_dev_pdata3 = {
 static struct device_d sdram3_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = CONFIG_EP93XX_SDRAM_BANK3_BASE,
-	.size     = CONFIG_EP93XX_SDRAM_BANK3_SIZE,
+	.resource_base = {
+		.start	= CONFIG_EP93XX_SDRAM_BANK3_BASE,
+		.size	= CONFIG_EP93XX_SDRAM_BANK3_SIZE,
+	},
 	.platform_data = &ram_dev_pdata3,
 };
 #endif
@@ -157,8 +167,10 @@ device_initcall(ep93xx_devices_init);
 static struct device_d edb93xx_serial_device = {
 	.id	  = -1,
 	.name     = "pl010_serial",
-	.map_base = UART1_BASE,
-	.size     = 4096,
+	.resource_base = {
+		.start	= UART1_BASE,
+		.size	= 4096,
+	},
 };
 
 static int edb93xx_console_init(void)
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 807fea3..e8cdc03 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -87,7 +87,9 @@ static struct fec_platform_data fec_info = {
 static struct device_d fec_dev = {
 	.id	  = -1,
 	.name     = "fec_imx",
-	.map_base = IMX_FEC_BASE,
+	.resource_base = {
+		.start	= IMX_FEC_BASE,
+	},
 	.platform_data	= &fec_info,
 };
 
@@ -99,8 +101,10 @@ static struct memory_platform_data sdram_pdata = {
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
-	.size     = 64 * 1024 * 1024,
+	.resource_base = {
+		.start	= IMX_SDRAM_CS0,
+		.size	= 64 * 1024 * 1024,
+	},
 	.platform_data = &sdram_pdata,
 };
 
@@ -112,7 +116,9 @@ struct imx_nand_platform_data nand_info = {
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "imx_nand",
-	.map_base = IMX_NFC_BASE,
+	.resource_base = {
+		.start	= IMX_NFC_BASE,
+	},
 	.platform_data	= &nand_info,
 };
 
@@ -145,8 +151,10 @@ static struct imx_fb_platform_data eukrea_cpuimx25_fb_data = {
 static struct device_d imxfb_dev = {
 	.id		= -1,
 	.name		= "imxfb",
-	.map_base	= 0x53fbc000,
-	.size		= 0x1000,
+	.resource_base = {
+		.start	= 0x53fbc000,
+		.size	= 0x00001000,
+	},
 	.platform_data	= &eukrea_cpuimx25_fb_data,
 };
 
@@ -249,8 +257,10 @@ device_initcall(eukrea_cpuimx25_devices_init);
 static struct device_d eukrea_cpuimx25_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 16 * 1024,
+	.resource_base = {
+		.start	= IMX_UART1_BASE,
+		.size	= 16 * 1024,
+	},
 };
 
 static int eukrea_cpuimx25_console_init(void)
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 4d1797b..9fa8f54 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -50,15 +50,19 @@
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xC0000000,
-	.size     = 32 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0xC0000000,
+		.size	= 32 * 1024 * 1024,
+	},
 };
 #ifdef CONFIG_EUKREA_CPUIMX27_NOR_64MB
 static struct device_d cfi_dev1 = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xC2000000,
-	.size     = 32 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0xC2000000,
+		.size	= 32 * 1024 * 1024,
+	},
 };
 #endif
 
@@ -76,8 +80,10 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = SDRAM0 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0xa0000000,
+		.size	= SDRAM0 * 1024 * 1024,
+	},
 	.platform_data = &ram_pdata,
 };
 
@@ -89,7 +95,9 @@ static struct fec_platform_data fec_info = {
 static struct device_d fec_dev = {
 	.id	  = -1,
 	.name     = "fec_imx",
-	.map_base = 0x1002b000,
+	.resource_base = {
+		.start	= 0x1002b000,
+	},
 	.platform_data	= &fec_info,
 };
 
@@ -102,7 +110,9 @@ struct imx_nand_platform_data nand_info = {
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "imx_nand",
-	.map_base = 0xd8000000,
+	.resource_base = {
+		.start	= 0xd8000000,
+	},
 	.platform_data	= &nand_info,
 };
 
@@ -144,8 +154,10 @@ static struct NS16550_plat quad_uart_serial_plat = {
 static struct device_d quad_uart_serial_device = {
 	.id = -1,
 	.name = "serial_ns16550",
-	.map_base = IMX_CS3_BASE + QUART_OFFSET,
-	.size = 0xF,
+	.resource_base = {
+		.start	= IMX_CS3_BASE + QUART_OFFSET,
+		.size	= 0xF,
+	},
 	.platform_data = (void *)&quad_uart_serial_plat,
 };
 #endif
@@ -159,7 +171,9 @@ static struct i2c_board_info i2c_devices[] = {
 static struct device_d i2c_dev = {
 	.id		= -1,
 	.name		= "i2c-imx",
-	.map_base	= IMX_I2C1_BASE,
+	.resource_base = {
+		.start	= IMX_I2C1_BASE,
+	}
 };
 
 #ifdef CONFIG_MMU
@@ -213,8 +227,10 @@ static struct imx_fb_platform_data eukrea_cpuimx27_fb_data = {
 static struct device_d imxfb_dev = {
 	.id		= -1,
 	.name		= "imxfb",
-	.map_base	= 0x10021000,
-	.size		= 0x1000,
+	.resource_base = {
+		.start	= 0x10021000,
+		.size	= 0x00001000,
+	},
 	.platform_data	= &eukrea_cpuimx27_fb_data,
 };
 #endif
@@ -326,8 +342,10 @@ device_initcall(eukrea_cpuimx27_devices_init);
 static struct device_d eukrea_cpuimx27_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
+	.resource_base = {
+		.start	= IMX_UART1_BASE,
+		.size	= 4096,
+	},
 };
 #endif
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 63d019a..87e992c 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -60,7 +60,9 @@ static struct fec_platform_data fec_info = {
 static struct device_d fec_dev = {
 	.id		= -1,
 	.name		= "fec_imx",
-	.map_base	= IMX_FEC_BASE,
+	.resource_base = {
+		.start	= IMX_FEC_BASE,
+	},
 	.platform_data	= &fec_info,
 };
 
@@ -72,8 +74,10 @@ static struct memory_platform_data sdram_pdata = {
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.map_base	= IMX_SDRAM_CS0,
-	.size		= 128 * 1024 * 1024,
+	.resource_base = {
+		.start	= IMX_SDRAM_CS0,
+		.size	= 128 * 1024 * 1024,
+	},
 	.platform_data	= &sdram_pdata,
 };
 
@@ -86,7 +90,9 @@ struct imx_nand_platform_data nand_info = {
 static struct device_d nand_dev = {
 	.id		= -1,
 	.name		= "imx_nand",
-	.map_base	= IMX_NFC_BASE,
+	.resource_base = {
+		.start	= IMX_NFC_BASE,
+	},
 	.platform_data	= &nand_info,
 };
 
@@ -121,8 +127,10 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 static struct device_d imxfb_dev = {
 	.id		= -1,
 	.name		= "imx-ipu-fb",
-	.map_base	= 0x53fc0000,
-	.size		= 0x1000,
+	.resource_base = {
+		.start	= 0x53fc0000,
+		.size	= 0x00001000,
+	},
 	.platform_data	= &ipu_fb_data,
 };
 
@@ -177,8 +185,10 @@ device_initcall(eukrea_cpuimx35_devices_init);
 static struct device_d eukrea_cpuimx35_serial_device = {
 	.id		= -1,
 	.name		= "imx_serial",
-	.map_base	= IMX_UART1_BASE,
-	.size		= 4096,
+	.resource_base = {
+		.start	= IMX_UART1_BASE,
+		.size	= 4096,
+	},
 };
 
 static struct pad_desc eukrea_cpuimx35_pads[] = {
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 8b477e3..1d1fcb6 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -116,7 +116,9 @@ static struct fec_platform_data fec_info = {
 static struct device_d fec_dev = {
 	.id	  = -1,
 	.name     = "fec_imx",
-	.map_base = IMX_FEC_BASE,
+	.resource_base = {
+		.start	= IMX_FEC_BASE,
+	},
 	.platform_data	= &fec_info,
 };
 
@@ -128,14 +130,16 @@ static struct memory_platform_data sdram_pdata = {
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
+	.resource_base = {
+		.start	= IMX_SDRAM_CS0,
 #if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
-	.size     = 64 * 1024 * 1024,
+		.size	= 64 * 1024 * 1024,
 #elif defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
-	.size     = 128 * 1024 * 1024,
+		.size	= 128 * 1024 * 1024,
 #else
 #error "Unsupported SDRAM type"
 #endif
+	},
 	.platform_data = &sdram_pdata,
 };
 
@@ -147,8 +151,10 @@ static struct memory_platform_data sram_pdata = {
 static struct device_d sram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0x78000000,
-	.size     = 128 * 1024,
+	.resource_base = {
+		.start	= 0x78000000,
+		.size	= 128 * 1024,
+	},
 	.platform_data = &sram_pdata,
 };
 
@@ -160,7 +166,9 @@ struct imx_nand_platform_data nand_info = {
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "imx_nand",
-	.map_base = IMX_NFC_BASE,
+	.resource_base = {
+		.start	= IMX_NFC_BASE,
+	},
 	.platform_data	= &nand_info,
 };
 
@@ -187,8 +195,10 @@ static void imx25_usb_init(void)
 static struct device_d usbh2_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
+	.resource_base = {
+		.start	= IMX_OTG_BASE + 0x400,
+		.size	= 0x00000200,
+	},
 };
 #endif
 
@@ -201,7 +211,9 @@ static struct i2c_board_info i2c_devices[] = {
 static struct device_d i2c_dev = {
 	.id	  = -1,
 	.name     = "i2c-imx",
-	.map_base = IMX_I2C1_BASE,
+	.resource_base = {
+		.start	= IMX_I2C1_BASE,
+	},
 };
 
 static int imx25_3ds_pmic_init(void)
@@ -292,8 +304,10 @@ device_initcall(imx25_devices_init);
 static struct device_d imx25_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 16 * 1024,
+	.resource_base = {
+		.start	= IMX_UART1_BASE,
+		.size	= 16 * 1024,
+	},
 };
 
 static struct pad_desc imx25_pads[] = {
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 71aaa92..fdce04f 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -61,8 +61,10 @@
 static struct device_d cfi_dev = {
 	.id		= -1,
 	.name		= "cfi_flash",
-	.map_base	= IMX_CS0_BASE,
-	.size		= 64 * 1024 * 1024,
+	.resource_base = {
+		.start	= IMX_CS0_BASE,
+		.size	= 64 * 1024 * 1024,
+	},
 };
 
 static struct fec_platform_data fec_info = {
@@ -73,7 +75,9 @@ static struct fec_platform_data fec_info = {
 static struct device_d fec_dev = {
 	.id		= -1,
 	.name		= "fec_imx",
-	.map_base	= IMX_FEC_BASE,
+	.resource_base = {
+		.start	= IMX_FEC_BASE,
+	},
 	.platform_data	= &fec_info,
 };
 
@@ -85,8 +89,10 @@ static struct memory_platform_data sdram_pdata = {
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.map_base	= IMX_SDRAM_CS0,
-	.size		= 128 * 1024 * 1024,
+	.resource_base = {
+		.start	= IMX_SDRAM_CS0,
+		.size	= 128 * 1024 * 1024,
+	},
 	.platform_data	= &sdram_pdata,
 };
 
@@ -98,15 +104,19 @@ struct imx_nand_platform_data nand_info = {
 static struct device_d nand_dev = {
 	.id		= -1,
 	.name		= "imx_nand",
-	.map_base	= IMX_NFC_BASE,
+	.resource_base = {
+		.start	= IMX_NFC_BASE,
+	},
 	.platform_data	= &nand_info,
 };
 
 static struct device_d smc911x_dev = {
 	.id		= -1,
 	.name		= "smc911x",
-	.map_base	= IMX_CS5_BASE,
-	.size		= IMX_CS5_RANGE,
+	.resource_base = {
+		.start	= IMX_CS5_BASE,
+		.size	= IMX_CS5_RANGE,
+	},
 };
 
 static struct i2c_board_info i2c_devices[] = {
@@ -120,7 +130,9 @@ static struct i2c_board_info i2c_devices[] = {
 static struct device_d i2c_dev = {
 	.id		= -1,
 	.name		= "i2c-imx",
-	.map_base	= IMX_I2C1_BASE,
+	.resource_base = {
+		.start	= IMX_I2C1_BASE,
+	},
 };
 
 /*
@@ -152,8 +164,10 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 static struct device_d imxfb_dev = {
 	.id		= -1,
 	.name		= "imx-ipu-fb",
-	.map_base	= 0x53fc0000,
-	.size		= 0x1000,
+	.resource_base = {
+		.start	= 0x53fc0000,
+		.size	= 0x00001000,
+	},
 	.platform_data	= &ipu_fb_data,
 };
 
@@ -253,8 +267,10 @@ late_initcall(f3s_enable_display);
 static struct device_d f3s_serial_device = {
 	.id		= -1,
 	.name		= "imx_serial",
-	.map_base	= IMX_UART1_BASE,
-	.size		= 4096,
+	.resource_base = {
+		.start	= IMX_UART1_BASE,
+		.size	= 4096,
+	},
 };
 
 static struct pad_desc f3s_pads[] = {
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 9c85c08..4923f46 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -61,8 +61,10 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = 128 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0xa0000000,
+		.size	= 128 * 1024 * 1024,
+	},
 	.platform_data = &ram_pdata,
 };
 
@@ -74,7 +76,9 @@ static struct fec_platform_data fec_info = {
 static struct device_d fec_dev = {
 	.id	  = -1,
 	.name     = "fec_imx",
-	.map_base = 0x1002b000,
+	.resource_base = {
+		.start	= 0x1002b000,
+	},
 	.platform_data	= &fec_info,
 };
 
@@ -87,7 +91,9 @@ static struct imx_nand_platform_data nand_info = {
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "imx_nand",
-	.map_base = 0xd8000000,
+	.resource_base = {
+		.start	= 0xd8000000,
+	},
 	.platform_data	= &nand_info,
 };
 
@@ -142,8 +148,10 @@ static struct imx_fb_platform_data neso_fb_data = {
 static struct device_d imxfb_dev = {
 	.id		= -1,
 	.name		= "imxfb",
-	.map_base	= 0x10021000,
-	.size		= 0x1000,
+	.resource_base = {
+		.start	= 0x10021000,
+		.size	= 0x00001000,
+	},
 	.platform_data	= &neso_fb_data,
 };
 
@@ -152,8 +160,10 @@ static struct device_d imxfb_dev = {
 static struct device_d usbh2_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
+	.resource_base = {
+		.start	= IMX_OTG_BASE + 0x400,
+		.size	= 0x200,
+	},
 };
 
 static void neso_usbh_init(void)
@@ -363,8 +373,10 @@ device_initcall(neso_devices_init);
 static struct device_d neso_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
+	.resource_base = {
+		.start	= IMX_UART1_BASE,
+		.size	= 4096,
+	},
 };
 
 static int neso_console_init(void)
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 44d37aa..f72da9a 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -43,8 +43,10 @@
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xC8000000,
-	.size     = 32 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0xC8000000,
+		.size	= 32 * 1024 * 1024,
+	},
 };
 
 static struct memory_platform_data ram_pdata = {
@@ -55,8 +57,10 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xc0000000,
-	.size     = 64 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0xc0000000,
+		.size	= 64 * 1024 * 1024,
+	},
 	.platform_data = &ram_pdata,
 };
 
@@ -68,14 +72,18 @@ struct imx_nand_platform_data nand_info = {
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "imx_nand",
-	.map_base = 0xDF003000,
+	.resource_base = {
+		.start	= 0xDF003000,
+	},
 	.platform_data  = &nand_info,
 };
 
 static struct device_d cs8900_dev = {
 	.id	  = -1,
 	.name     = "cs8900",
-	.map_base = IMX_CS1_BASE,
+	.resource_base = {
+		.start	= IMX_CS1_BASE,
+	},
 	// IRQ is connected to UART3_RTS
 };
 
@@ -114,8 +122,10 @@ static struct imx_fb_platform_data imx_fb_data = {
 static struct device_d imxfb_dev = {
 	.id		= -1,
 	.name           = "imxfb",
-	.map_base       = 0x10021000,
-	.size           = 0x1000,
+	.resource_base = {
+		.start	= 0x10021000,
+		.size	= 0x00001000,
+	},
 	.platform_data  = &imx_fb_data,
 };
 
@@ -227,8 +237,10 @@ late_initcall(mx21ads_enable_display);
 static struct device_d mx21ads_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
+	.resource_base = {
+		.start	= IMX_UART1_BASE,
+		.size	= 4096,
+	},
 };
 
 static int mx21ads_console_init(void)
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index ae5da7f..0b64dba 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -36,8 +36,10 @@
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xC0000000,
-	.size     = 32 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0xC0000000,
+		.size	= 32 * 1024 * 1024,
+	},
 };
 
 static struct memory_platform_data ram_pdata = {
@@ -48,8 +50,10 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = 128 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0xa0000000,
+		.size	= 128 * 1024 * 1024,
+	},
 	.platform_data = &ram_pdata,
 };
 
@@ -61,7 +65,9 @@ static struct fec_platform_data fec_info = {
 static struct device_d fec_dev = {
 	.id	  = -1,
 	.name     = "fec_imx",
-	.map_base = 0x1002b000,
+	.resource_base = {
+		.start	= 0x1002b000,
+	},
 	.platform_data	= &fec_info,
 };
 
@@ -152,8 +158,10 @@ device_initcall(mx27ads_devices_init);
 static struct device_d mx27ads_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
+	.resource_base = {
+		.start	= IMX_UART1_BASE,
+		.size	= 4096,
+	},
 };
 
 static int mx27ads_console_init(void)
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 7cba01c..e694011 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -40,8 +40,10 @@
 static struct device_d cfi_dev = {
 	.id		= -1,
 	.name		= "cfi_flash",
-	.map_base	= AT91_CHIPSELECT_0,
-	.size		= 0,	/* zero means autodetect size */
+	.resource_base = {
+		.start	= AT91_CHIPSELECT_0,
+		.size	= 0,	/* zero means autodetect size */
+	},
 };
 
 static struct at91_ether_platform_data macb_pdata = {
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index c735d26..44c116f 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -33,8 +33,10 @@
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xC0000000,
-	.size     = 32 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0xC0000000,
+		.size	= 32 * 1024 * 1024,
+	},
 };
 
 static struct memory_platform_data ram_pdata = {
@@ -45,8 +47,10 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0x80000000,
-	.size     = 64 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0x80000000,
+		.size	= 64 * 1024 * 1024,
+	},
 	.platform_data = &ram_pdata,
 };
 
@@ -95,8 +99,10 @@ device_initcall(netx_devices_init);
 static struct device_d netx_serial_device = {
 	.id	  = -1,
 	.name     = "netx_serial",
-	.map_base = NETX_PA_UART0,
-	.size     = 0x40,
+	.resource_base = {
+		.start	= NETX_PA_UART0,
+		.size	= 0x40,
+	},
 };
 
 static int netx_console_init(void)
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index 9cb0fd0..f172189 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -36,8 +36,10 @@
 static struct device_d nhk8815_network_dev = {
 	.id = -1,
 	.name = "smc91c111",
-	.map_base = 0x34000300,
-	.size = 16,
+	.resource_base = {
+		.start	= 0x34000300,
+		.size	= 16,
+	},
 };
 
 static int nhk8815_nand_init(void)
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 6de2cce..7b2deca 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -243,8 +243,10 @@ static struct NS16550_plat serial_plat = {
 static struct device_d beagle_serial_device = {
 	.id = -1,
 	.name = "serial_ns16550",
-	.map_base = OMAP_UART3_BASE,
-	.size = 1024,
+	.resource_base = {
+		.start	= OMAP_UART3_BASE,
+		.size	= 1024,
+	},
 	.platform_data = (void *)&serial_plat,
 };
 
@@ -270,8 +272,10 @@ static struct memory_platform_data sram_pdata = {
 static struct device_d sdram_dev = {
 	.id = -1,
 	.name = "mem",
-	.map_base = 0x80000000,
-	.size = 128 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0x80000000,
+		.size	= 128 * 1024 * 1024,
+	},
 	.platform_data = &sram_pdata,
 };
 
@@ -295,8 +299,10 @@ static struct ehci_platform_data ehci_pdata = {
 static struct device_d usbh_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = 0x48064700,
-	.size     = 4 * 1024,
+	.resource_base = {
+		.start	= 0x48064700,
+		.size	= 4 * 1024,
+	},
 	.platform_data = &ehci_pdata,
 };
 #endif /* CONFIG_USB_EHCI_OMAP */
@@ -304,7 +310,9 @@ static struct device_d usbh_dev = {
 static struct device_d i2c_dev = {
 	.id		= -1,
 	.name		= "i2c-omap",
-	.map_base	= OMAP_I2C1_BASE,
+	.resource_base = {
+		.start	= OMAP_I2C1_BASE,
+	},
 };
 
 static struct i2c_board_info i2c_devices[] = {
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index c37f151..1720c2b 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -221,11 +221,13 @@ static struct device_d omap3evm_serial_device = {
 	.id		= -1,
 	.name		= "serial_ns16550",
 #if defined(CONFIG_OMAP3EVM_UART1)
-	.map_base	= OMAP_UART1_BASE,
+	.resource_base = {
+		.start	= OMAP_UART1_BASE,
 #elif defined(CONFIG_OMAP3EVM_UART3)
-	.map_base	= OMAP_UART3_BASE,
+		.start	= OMAP_UART3_BASE,
 #endif
-	.size		= 1024,
+		.size	= 1024,
+	},
 	.platform_data	= (void *)&serial_plat,
 };
 
@@ -249,8 +251,10 @@ static struct memory_platform_data sram_pdata = {
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.map_base	= 0x80000000,
-	.size		= 128 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0x80000000,
+		.size	= 128 * 1024 * 1024,
+	},
 	.platform_data	= &sram_pdata,
 };
 
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index f7615b4..3b8db5c 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -612,8 +612,10 @@ static struct NS16550_plat serial_plat = {
 static struct device_d sdp3430_serial_device = {
 	.id = -1,
 	.name = "serial_ns16550",
-	.map_base = OMAP_UART3_BASE,
-	.size = 1024,
+	.resource_base = {
+		.start	= OMAP_UART3_BASE,
+		.size	= 1024,
+	},
 	.platform_data = (void *)&serial_plat,
 };
 
@@ -649,8 +651,10 @@ static struct memory_platform_data ram_pdata = {
 struct device_d sdram_dev = {
 	.id = -1,
 	.name = "mem",
-	.map_base = 0x80000000,
-	.size = 128 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0x80000000,
+		.size	= 128 * 1024 * 1024,
+	},
 	.platform_data = &ram_pdata,
 };
 
diff --git a/arch/arm/boards/omap/devices-gpmc-nand.c b/arch/arm/boards/omap/devices-gpmc-nand.c
index 4369aa0..b5dba3b 100644
--- a/arch/arm/boards/omap/devices-gpmc-nand.c
+++ b/arch/arm/boards/omap/devices-gpmc-nand.c
@@ -74,8 +74,10 @@ static struct gpmc_nand_platform_data nand_plat = {
 static struct device_d gpmc_generic_nand_nand_device = {
 	.id = -1,
 	.name = "gpmc_nand",
-	.map_base = OMAP_GPMC_BASE,
-	.size = 1024 * 4,	/* GPMC size */
+	.resource_base = {
+		.start	= OMAP_GPMC_BASE,
+		.size	= 1024 * 4,	/* GPMC size */
+	},
 	.platform_data = (void *)&nand_plat,
 };
 
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 89e2481..8973a44 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -46,8 +46,10 @@
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = IMX_CS0_BASE,
-	.size     = 32 * 1024 * 1024,	/* area size */
+	.resource_base = {
+		.start	= IMX_CS0_BASE,
+		.size	= 32 * 1024 * 1024,	/* area size */
+	},
 };
 
 /*
@@ -62,8 +64,10 @@ static struct memory_platform_data sram_dev_pdata0 = {
 static struct device_d sram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = IMX_CS4_BASE,
-	.size     = IMX_CS4_RANGE,	/* area size */
+	.resource_base = {
+		.start	= IMX_CS4_BASE,
+		.size	= IMX_CS4_RANGE,	/* area size */
+	},
 	.platform_data = &sram_dev_pdata0,
 };
 
@@ -75,8 +79,10 @@ static struct device_d sram_dev = {
 static struct device_d network_dev = {
 	.id	  = -1,
 	.name     = "smc911x",
-	.map_base = IMX_CS1_BASE,
-	.size     = IMX_CS1_RANGE,	/* area size */
+	.resource_base = {
+		.start	= IMX_CS1_BASE,
+		.size	= IMX_CS1_RANGE,	/* area size */
+	},
 };
 
 #if defined CONFIG_PCM037_SDRAM_BANK0_128MB
@@ -93,8 +99,10 @@ static struct memory_platform_data ram_dev_pdata0 = {
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
-	.size     = SDRAM0 * 1024 * 1024,	/* fix size */
+	.resource_base = {
+		.start	= IMX_SDRAM_CS0,
+		.size	= SDRAM0 * 1024 * 1024,	/* fix size */
+	},
 	.platform_data = &ram_dev_pdata0,
 };
 
@@ -114,8 +122,10 @@ static struct memory_platform_data ram_dev_pdata1 = {
 static struct device_d sdram1_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = IMX_SDRAM_CS1,
-	.size     = SDRAM1 * 1024 * 1024,	/* fix size */
+	.resource_base = {
+		.start	= IMX_SDRAM_CS1,
+		.size	= SDRAM1 * 1024 * 1024,	/* fix size */
+	},
 	.platform_data = &ram_dev_pdata1,
 };
 #endif
@@ -129,7 +139,9 @@ struct imx_nand_platform_data nand_info = {
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "imx_nand",
-	.map_base = 0xB8000000,
+	.resource_base = {
+		.start	= 0xB8000000,
+	},
 	.platform_data	= &nand_info,
 };
 
@@ -137,15 +149,19 @@ static struct device_d nand_dev = {
 static struct device_d usbotg_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE,
-	.size     = 0x200,
+	.resource_base = {
+		.start	= IMX_OTG_BASE,
+		.size	= 0x00000200,
+	},
 };
 
 static struct device_d usbh2_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
+	.resource_base = {
+		.start	= IMX_OTG_BASE + 0x400,
+		.size	= 0x00000200,
+	},
 };
 
 static void pcm037_usb_init(void)
@@ -323,8 +339,10 @@ device_initcall(imx31_devices_init);
 static struct device_d imx31_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 16 * 1024,
+	.resource_base = {
+		.start	= IMX_UART1_BASE,
+		.size	= 16 * 1024,
+	},
 };
 
 static int imx31_console_init(void)
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 755ebcc..27bb9d1 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -47,8 +47,10 @@
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xC0000000,
-	.size     = 32 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0xC0000000,
+		.size	= 32 * 1024 * 1024,
+	},
 };
 
 static struct memory_platform_data ram_pdata = {
@@ -59,8 +61,10 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = 128 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0xa0000000,
+		.size	= 128 * 1024 * 1024,
+	},
 	.platform_data = &ram_pdata,
 };
 
@@ -72,8 +76,10 @@ static struct memory_platform_data sram_pdata = {
 static struct device_d sram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xc8000000,
-	.size     = 512 * 1024, /* Can be up to 2MiB */
+	.resource_base = {
+		.start	= 0xc8000000,
+		.size	= 512 * 1024, /* Can be up to 2MiB */
+	},
 	.platform_data = &sram_pdata,
 };
 
@@ -85,7 +91,9 @@ static struct fec_platform_data fec_info = {
 static struct device_d fec_dev = {
 	.id	  = -1,
 	.name     = "fec_imx",
-	.map_base = 0x1002b000,
+	.resource_base = {
+		.start	= 0x1002b000,
+	},
 	.platform_data	= &fec_info,
 };
 
@@ -99,7 +107,9 @@ static struct spi_imx_master pcm038_spi_0_data = {
 static struct device_d spi_dev = {
 	.id	  = -1,
 	.name     = "imx_spi",
-	.map_base = 0x1000e000,
+	.resource_base = {
+		.start	= 0x1000e000,
+	},
 	.platform_data = &pcm038_spi_0_data,
 };
 
@@ -121,7 +131,9 @@ static struct imx_nand_platform_data nand_info = {
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "imx_nand",
-	.map_base = 0xd8000000,
+	.resource_base = {
+		.start	= 0xd8000000,
+	},
 	.platform_data	= &nand_info,
 };
 
@@ -162,8 +174,10 @@ static struct imx_fb_platform_data pcm038_fb_data = {
 static struct device_d imxfb_dev = {
 	.id		= -1,
 	.name		= "imxfb",
-	.map_base	= 0x10021000,
-	.size		= 0x1000,
+	.resource_base = {
+		.start	= 0x10021000,
+		.size	= 0x00001000,
+	},
 	.platform_data	= &pcm038_fb_data,
 };
 
@@ -171,8 +185,10 @@ static struct device_d imxfb_dev = {
 static struct device_d usbh2_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
+	.resource_base = {
+		.start	= IMX_OTG_BASE + 0x400,
+		.size	= 0x00000200,
+	},
 };
 
 static void pcm038_usbh_init(void)
@@ -373,8 +389,10 @@ device_initcall(pcm038_devices_init);
 static struct device_d pcm038_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
+	.resource_base = {
+		.start	= IMX_UART1_BASE,
+		.size	= 4096,
+	},
 };
 
 static int pcm038_console_init(void)
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 9f98795..262814f 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -51,8 +51,10 @@
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = IMX_CS0_BASE,
-	.size     = 32 * 1024 * 1024,	/* area size */
+	.resource_base = {
+		.start	= IMX_CS0_BASE,
+		.size	= 32 * 1024 * 1024,	/* area size */
+	},
 };
 
 static struct fec_platform_data fec_info = {
@@ -62,7 +64,9 @@ static struct fec_platform_data fec_info = {
 static struct device_d fec_dev = {
 	.id	  = -1,
 	.name     = "fec_imx",
-	.map_base = IMX_FEC_BASE,
+	.resource_base = {
+		.start	= IMX_FEC_BASE,
+	},
 	.platform_data	= &fec_info,
 };
 
@@ -74,8 +78,10 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
-	.size     = 128 * 1024 * 1024,
+	.resource_base = {
+		.start	= IMX_SDRAM_CS0,
+		.size	= 128 * 1024 * 1024,
+	},
 	.platform_data = &ram_pdata,
 };
 
@@ -88,7 +94,9 @@ struct imx_nand_platform_data nand_info = {
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "imx_nand",
-	.map_base = IMX_NFC_BASE,
+	.resource_base = {
+		.start	= IMX_NFC_BASE,
+	},
 	.platform_data	= &nand_info,
 };
 
@@ -138,8 +146,10 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 static struct device_d imx_ipu_fb_dev = {
 	.id		= -1,
 	.name		= "imx-ipu-fb",
-	.map_base	= 0x53fc0000,
-	.size		= 0x1000,
+	.resource_base = {
+		.start	= 0x53fc0000,
+		.size	= 0x00001000,
+	},
 	.platform_data	= &ipu_fb_data,
 };
 
@@ -224,8 +234,10 @@ device_initcall(imx35_devices_init);
 static struct device_d imx35_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 16 * 1024,
+	.resource_base = {
+		.start	= IMX_UART1_BASE,
+		.size	= 16 * 1024,
+	},
 };
 
 static struct pad_desc pcm043_pads[] = {
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 7328a6c..410e13b 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -48,8 +48,10 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = 128 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0xa0000000,
+		.size	= 128 * 1024 * 1024,
+	},
 	.platform_data = &ram_pdata,
 };
 
@@ -61,7 +63,9 @@ static struct fec_platform_data fec_info = {
 static struct device_d fec_dev = {
 	.id	  = -1,
 	.name     = "fec_imx",
-	.map_base = 0x1002b000,
+	.resource_base = {
+		.start	= 0x1002b000,
+	},
 	.platform_data	= &fec_info,
 };
 
@@ -73,7 +77,9 @@ struct imx_nand_platform_data nand_info = {
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "imx_nand",
-	.map_base = 0xd8000000,
+	.resource_base = {
+		.start	= 0xd8000000,
+	},
 	.platform_data	= &nand_info,
 };
 
@@ -81,8 +87,10 @@ static struct device_d nand_dev = {
 static struct device_d usbh2_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
+	.resource_base = {
+		.start	= IMX_OTG_BASE + 0x400,
+		.size	= 0x00000200,
+	},
 };
 
 static void pca100_usbh_init(void)
@@ -222,8 +230,10 @@ device_initcall(pca100_devices_init);
 static struct device_d pca100_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
+	.resource_base = {
+		.start	= IMX_UART1_BASE,
+		.size	= 4096,
+	},
 };
 
 static int pca100_console_init(void)
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index abe8def..54328c3 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -89,8 +89,10 @@ static void pm_add_device_nand(void)
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = AT91_CHIPSELECT_0,
-	.size     = 4 * 1024 * 1024,
+	.resource_base = {
+		.start	= AT91_CHIPSELECT_0,
+		.size	= 4 * 1024 * 1024,
+	},
 };
 
 static struct at91_ether_platform_data macb_pdata = {
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 4c08c50..94e41c1 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -35,9 +35,10 @@
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-
-	.map_base = 0x10000000,
-	.size     = 16 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0x10000000,
+		.size	= 16 * 1024 * 1024,
+	},
 };
 
 static struct memory_platform_data sdram_pdata = {
@@ -48,8 +49,10 @@ static struct memory_platform_data sdram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0x08000000,
-	.size     = 16 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0x08000000,
+		.size	= 16 * 1024 * 1024,
+	},
 	.platform_data = &sdram_pdata,
 };
 
@@ -63,8 +66,10 @@ static struct dm9000_platform_data dm9000_data = {
 static struct device_d dm9000_dev = {
 	.id	  = -1,
 	.name     = "dm9000",
-	.map_base = 0x16000000,
-	.size     = 8,
+	.resource_base = {
+		.start	= 0x16000000,
+		.size	= 8,
+	},
 	.platform_data = &dm9000_data,
 };
 
@@ -109,8 +114,10 @@ device_initcall(scb9328_devices_init);
 static struct device_d scb9328_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
+	.resource_base = {
+		.start	= IMX_UART1_BASE,
+		.size	= 4096,
+	},
 };
 
 static int scb9328_console_init(void)
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 7c2cbf9..9bd0852 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -77,8 +77,8 @@ static void setup_memory_tags(void)
 		params->hdr.tag = ATAG_MEM;
 		params->hdr.size = tag_size(tag_mem32);
 
-		params->u.mem.start = mem->dev->map_base;
-		params->u.mem.size = mem->dev->size;
+		params->u.mem.start = dev_resource_get_start(mem->dev);
+		params->u.mem.size = dev_resource_get_size(mem->dev);
 
 		params = tag_next(params);
 	}
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index c6ddb13..077459a 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -28,13 +28,15 @@ static struct memory_platform_data sram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = AT91_CHIPSELECT_1,
+	.resource_base = {
+		.start	= AT91_CHIPSELECT_1,
+	},
 	.platform_data = &sram_pdata,
 };
 
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	dev_resource_set_size(&sdram_dev, size);
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
@@ -43,8 +45,10 @@ void at91_add_device_sdram(u32 size)
 static struct device_d macb_dev = {
 	.id	  = -1,
 	.name     = "macb",
-	.map_base = AT91SAM9260_BASE_EMAC,
-	.size     = 0x1000,
+	.resource_base = {
+		.start	= AT91SAM9260_BASE_EMAC,
+		.size	= 0x1000,
+	},
 };
 
 void at91_add_device_eth(struct at91_ether_platform_data *data)
@@ -86,8 +90,10 @@ void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "atmel_nand",
-	.map_base = AT91_CHIPSELECT_3,
-	.size     = 0x10,
+	.resource_base = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= 0x10,
+	},
 };
 
 void at91_add_device_nand(struct atmel_nand_data *data)
@@ -122,8 +128,10 @@ void at91_add_device_nand(struct atmel_nand_data *data) {}
 static struct device_d dbgu_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91_BASE_SYS + AT91_DBGU,
-	.size     = 4096,
+	.resource_base = {
+		.start	= AT91_BASE_SYS + AT91_DBGU,
+		.size	= 4096,
+	},
 };
 
 static inline void configure_dbgu_pins(void)
@@ -135,8 +143,10 @@ static inline void configure_dbgu_pins(void)
 static struct device_d uart0_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US0,
-	.size     = 4096,
+	.resource_base = {
+		.start	= AT91SAM9260_BASE_US0,
+		.size	= 4096,
+	},
 };
 
 static inline void configure_usart0_pins(unsigned pins)
@@ -161,8 +171,10 @@ static inline void configure_usart0_pins(unsigned pins)
 static struct device_d uart1_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US1,
-	.size     = 4096,
+	.resource_base = {
+		.start	= AT91SAM9260_BASE_US1,
+		.size	= 4096,
+	},
 };
 
 static inline void configure_usart1_pins(unsigned pins)
@@ -179,8 +191,10 @@ static inline void configure_usart1_pins(unsigned pins)
 static struct device_d uart2_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US2,
-	.size     = 4096,
+	.resource_base = {
+		.start	= AT91SAM9260_BASE_US2,
+		.size	= 4096,
+	},
 };
 
 static inline void configure_usart2_pins(unsigned pins)
@@ -197,8 +211,10 @@ static inline void configure_usart2_pins(unsigned pins)
 static struct device_d uart3_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US3,
-	.size     = 4096,
+	.resource_base = {
+		.start	= AT91SAM9260_BASE_US3,
+		.size	= 4096,
+	},
 };
 
 static inline void configure_usart3_pins(unsigned pins)
@@ -215,8 +231,10 @@ static inline void configure_usart3_pins(unsigned pins)
 static struct device_d uart4_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US4,
-	.size     = 4096,
+	.resource_base = {
+		.start	= AT91SAM9260_BASE_US4,
+		.size	= 4096,
+	},
 };
 
 static inline void configure_usart4_pins(void)
@@ -228,8 +246,10 @@ static inline void configure_usart4_pins(void)
 static struct device_d uart5_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US5,
-	.size     = 4096,
+	.resource_base = {
+		.start	= AT91SAM9260_BASE_US5,
+		.size	= 4096,
+	},
 };
 
 static inline void configure_usart5_pins(void)
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 807a6a7..3358a80 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -28,13 +28,15 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = AT91_CHIPSELECT_1,
+	.resource_base = {
+		.start	= AT91_CHIPSELECT_1,
+	},
 	.platform_data = &ram_pdata,
 };
 
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	dev_resource_set_size(&sdram_dev, size);
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
@@ -43,8 +45,10 @@ void at91_add_device_sdram(u32 size)
 static struct device_d macb_dev = {
 	.id	  = -1,
 	.name     = "macb",
-	.map_base = AT91SAM9263_BASE_EMAC,
-	.size     = 0x1000,
+	.resource_base = {
+		.start	= AT91SAM9263_BASE_EMAC,
+		.size	= 0x1000,
+	},
 };
 
 void at91_add_device_eth(struct at91_ether_platform_data *data)
@@ -85,8 +89,10 @@ void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "atmel_nand",
-	.map_base = AT91_CHIPSELECT_3,
-	.size     = 0x10,
+	.resource_base = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= 0x10,
+	},
 };
 
 void at91_add_device_nand(struct atmel_nand_data *data)
@@ -121,8 +127,10 @@ void at91_add_device_nand(struct atmel_nand_data *data) {}
 static struct device_d dbgu_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = (AT91_BASE_SYS + AT91_DBGU),
-	.size     = 4096,
+	.resource_base = {
+		.start	= (AT91_BASE_SYS + AT91_DBGU),
+		.size	= 4096,
+	},
 };
 
 static inline void configure_dbgu_pins(void)
@@ -134,8 +142,10 @@ static inline void configure_dbgu_pins(void)
 static struct device_d uart0_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9263_BASE_US0,
-	.size     = 4096,
+	.resource_base = {
+		.start	= AT91SAM9263_BASE_US0,
+		.size	= 4096,
+	},
 };
 
 static inline void configure_usart0_pins(unsigned pins)
@@ -152,8 +162,10 @@ static inline void configure_usart0_pins(unsigned pins)
 static struct device_d uart1_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9263_BASE_US1,
-	.size     = 4096,
+	.resource_base = {
+		.start	= AT91SAM9263_BASE_US1,
+		.size	= 4096,
+	},
 };
 
 static inline void configure_usart1_pins(unsigned pins)
@@ -170,8 +182,10 @@ static inline void configure_usart1_pins(unsigned pins)
 static struct device_d uart2_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9263_BASE_US2,
-	.size     = 4096,
+	.resource_base = {
+		.start	= AT91SAM9263_BASE_US2,
+		.size	= 4096,
+	},
 };
 
 static inline void configure_usart2_pins(unsigned pins)
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 0774ebb..ce3dc7a 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -89,18 +89,22 @@ static ssize_t imx_iim_read(struct cdev *cdev, void *buf, size_t count,
 
 	size = min((ulong)count, dev->size - offset);
 	if (explicit_sense) {
+		resource_size_t map_base = dev_resource_get_start(dev->parent);
+
 		for (i = 0; i < size; i++) {
 			int row_val;
 
-			row_val = do_fuse_sense(dev->parent->map_base,
-				dev->id, (offset+i)*4);
+			row_val = do_fuse_sense(map_base, dev->id,
+						(offset+i)*4);
 			if (row_val < 0)
 				return row_val;
 			((u8 *)buf)[i] = (u8)row_val;
 		}
 	} else {
+		resource_size_t map_base = dev_resource_get_start(dev);
+
 		for (i = 0; i < size; i++)
-			((u8 *)buf)[i] = ((u8 *)dev->map_base)[(offset+i)*4];
+			((u8 *)buf)[i] = ((u8 *)map_base)[(offset+i)*4];
 	}
 
 	return size;
@@ -186,9 +190,10 @@ static ssize_t imx_iim_write(struct cdev *cdev, const void *buf, size_t count,
 #ifdef CONFIG_IMX_IIM_FUSE_BLOW
 	if (blow_enable) {
 		for (i = 0; i < size; i++) {
+			resource_size_t map_base = dev_resource_get_start(dev-parent);
 			int ret;
 
-			ret = do_fuse_blow(dev->parent->map_base, dev->id,
+			ret = do_fuse_blow(map_base, dev->id,
 					(offset+i)*4, ((u8 *)buf)[i]);
 			if (ret < 0)
 				return ret;
@@ -196,8 +201,10 @@ static ssize_t imx_iim_write(struct cdev *cdev, const void *buf, size_t count,
 	} else
 #endif /* CONFIG_IMX_IIM_FUSE_BLOW */
 	{
+		resource_size_t map_base = dev_resource_get_start(dev);
+	
 		for (i = 0; i < size; i++)
-			((u8 *)dev->map_base)[(offset+i)*4] = ((u8 *)buf)[i];
+			((u8 *)map_base)[(offset+i)*4] = ((u8 *)buf)[i];
 	}
 
 	return size;
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 37eafaf..b846da6 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -56,29 +56,37 @@ static struct imx_iim_platform_data imx25_iim_pdata = {
 static struct device_d imx25_iim_dev = {
 	.id		= -1,
 	.name		= "imx_iim",
-	.map_base	= IMX_IIM_BASE,
+	.resource_base = {
+		.start	= IMX_IIM_BASE,
+	},
 	.platform_data	= &imx25_iim_pdata,
 };
 
 static struct device_d imx25_iim_bank0_dev = {
 	.name		= "imx_iim_bank",
 	.id		= 0,
-	.map_base	= IIM_BANK0_BASE,
-	.size		= IIM_BANK_SIZE,
+	.resource_base = {
+		.start	= IIM_BANK0_BASE,
+		.size	= IIM_BANK_SIZE,
+	},
 };
 
 static struct device_d imx25_iim_bank1_dev = {
 	.name		= "imx_iim_bank",
 	.id		= 1,
-	.map_base	= IIM_BANK1_BASE,
-	.size		= IIM_BANK_SIZE,
+	.resource_base = {
+		.start	= IIM_BANK1_BASE,
+		.size	= IIM_BANK_SIZE,
+	},
 };
 
 static struct device_d imx25_iim_bank2_dev = {
 	.name		= "imx_iim_bank",
 	.id		= 2,
-	.map_base	= IIM_BANK2_BASE,
-	.size		= IIM_BANK_SIZE,
+	.resource_base = {
+		.start	= IIM_BANK2_BASE,
+		.size	= IIM_BANK_SIZE,
+	},
 };
 
 static int imx25_iim_init(void)
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index 5844c68..49f4369 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -39,13 +39,15 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id = -1,
 	.name = "mem",
-	.map_base = 0x00000000,
+	.resource_base = {
+		.start	= 0x00000000,
+	},
 	.platform_data = &ram_pdata,
 };
 
 void st8815_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	dev_resource_set_size(&sdram_dev, size);
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
@@ -53,15 +55,19 @@ void st8815_add_device_sdram(u32 size)
 static struct device_d uart0_serial_device = {
 	.id = 0,
 	.name = "uart-pl011",
-	.map_base = NOMADIK_UART0_BASE,
-	.size = 4096,
+	.resource_base = {
+		.start	= NOMADIK_UART0_BASE,
+		.size	= 4096,
+	},
 };
 
 static struct device_d uart1_serial_device = {
 	.id = 1,
 	.name = "uart-pl011",
-	.map_base = NOMADIK_UART1_BASE,
-	.size = 4096,
+	.resource_base = {
+		.start	= NOMADIK_UART1_BASE,
+		.size	= 4096,
+	},
 };
 
 void st8815_register_uart(unsigned id)
diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index 61bcd43..168933a 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -8,8 +8,10 @@
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0x20000000,
-	.size     = 32 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0x20000000,
+		.size	= 32 * 1024 * 1024,
+	},
 };
 
 static struct memory_platform_data ram_pdata = {
@@ -20,16 +22,20 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0x0,
-	.size     = 128 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0x00000000,
+		.size	= 128 * 1024 * 1024,
+	},
 	.platform_data = &ram_pdata,
 };
 
 static struct device_d smc911x_dev = {
 	.id	  = -1,
 	.name     = "smc911x",
-	.map_base = 0x24000000,
-	.size     = 4096,
+	.resource_base = {
+		.start	= 0x24000000,
+		.size	= 4096,
+	}
 };
 
 static int ipe337_devices_init(void) {
@@ -57,8 +63,10 @@ device_initcall(ipe337_devices_init);
 static struct device_d blackfin_serial_device = {
 	.id	  = -1,
 	.name     = "blackfin_serial",
-	.map_base = 0,
-	.size     = 4096,
+	.resource_base = {
+		.start	= 0x00000000,
+		.size	= 4096,
+	},
 };
 
 static int blackfin_console_init(void)
diff --git a/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c b/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c
index 7475ab3..e85b335 100644
--- a/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c
+++ b/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c
@@ -44,31 +44,41 @@ ulong mcfv4e_get_bus_clk(void)
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = CFG_FLASH_ADDRESS,
-	.size     = CFG_FLASH_SIZE,
+	.resource_base = {
+		.start	= CFG_FLASH_ADDRESS,
+		.size  	= CFG_FLASH_SIZE,
+	},
 };
 
 /*
  * up to 2MiB static RAM type memory, connected
  * to CS4, data width is 16 bit
  */
-//static struct device_d sram_dev = {
-//	.id	  = -1,
-//	.name     = "sram",
-//FIXME	.map_base = IMX_CS4_BASE,
-//FIXME	.size     = IMX_CS4_RANGE,	/* area size */
-//};
+#if 0
+static struct device_d sram_dev = {
+	.id	  = -1,
+	.name     = "sram",
+	/* FIXME */
+	.resource_base = {
+		.start	= IMX_CS4_BASE,
+		.size	= IMX_CS4_RANGE,	/* area size */
+	},
+};
+#endif
 
 /*
  * ?MiB NAND type flash, data width 8 bit
  */
-//static struct device_d nand_dev = {
-//	.id	  = -1,
-//	.name     = "cfi_flash_nand",
-//	.map_base = 0xfc000000,	/* FIXME */
-//	.size     = 32 * 1024 * 1024,	/* FIXME */
-//};
-
+#if 0
+static struct device_d nand_dev = {
+	.id	  = -1,
+	.name     = "cfi_flash_nand",
+	.resource_base = {
+		.start	= 0xfc000000,		/* FIXME */
+		.size	= 32 * 1024 * 1024,	/* FIXME */
+	},
+};
+#endif
 
 /*
  * Build in FastEthernetControllers (FECs)
@@ -80,15 +90,19 @@ static struct fec_platform_data fec_info = {
 static struct device_d network_dev0 = {
 	.id	  = -1,
 	.name     = "fec_mcf54xx",
-	.map_base = MCF_FEC_ADDR(0),
-	.size     = MCF_FEC_SIZE(0),	   /* area size */
+	.resource_base = {
+		.start	= MCF_FEC_ADDR(0),
+		.size	= MCF_FEC_SIZE(0),	/* area size */
+	},
 	.platform_data	= &fec_info,
 };
 static struct device_d network_dev1 = {
 	.id	  = -1,
 	.name     = "fec_mcf54xx",
-	.map_base = MCF_FEC_ADDR(1),
-	.size     = MCF_FEC_SIZE(1),	   /* area size */
+	.resource_base = {
+		.start	= MCF_FEC_ADDR(1),
+		.size	= MCF_FEC_SIZE(1),	/* area size */
+	},
 	.platform_data	= &fec_info,
 };
 
@@ -103,8 +117,10 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = CFG_SDRAM_ADDRESS,
-	.size     = CFG_SDRAM_SIZE,
+	.resource_base = {
+		.start	= CFG_SDRAM_ADDRESS,
+		.size	= CFG_SDRAM_SIZE,
+	},
 	.platform_data = &ram_pdata,
 };
 
@@ -142,8 +158,10 @@ device_initcall(mcfv4e_devices_init);
 static struct device_d mcfv4e_serial_device = {
 	.id	  = -1,
 	.name     = "mcfv4e_serial",
-	.map_base = 1+CFG_EARLY_UART_PORT,
-	.size     = 16 * 1024,
+	.resource_base = {
+		.start	= 1 + CFG_EARLY_UART_PORT,
+		.size	= 16 * 1024,
+	},
 };
 
 static int mcfv4e_console_init(void)
diff --git a/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c b/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
index 3744950..286b4e6 100644
--- a/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
+++ b/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
@@ -48,8 +48,10 @@ static struct device_d cfi_dev =
 {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = CFG_FLASH_ADDRESS,
-	.size     = CFG_FLASH_SIZE,
+	.resource_base = {
+		.start	= CFG_FLASH_ADDRESS,
+		.size	= CFG_FLASH_SIZE,
+	},
 };
 
 /*
@@ -64,16 +66,20 @@ static struct device_d network_dev0 =
 {
 	.id	  = -1,
 	.name     = "fec_mcf54xx",
-	.map_base = MCF_FEC_ADDR(0),
-	.size     = MCF_FEC_SIZE(0),	   /* area size */
+	.resource_base = {
+		.start	= MCF_FEC_ADDR(0),
+		.size	= MCF_FEC_SIZE(0),	   /* area size */
+	},
 	.platform_data	= &fec_info,
 };
 static struct device_d network_dev1 =
 {
 	.id	  = -1,
 	.name     = "fec_mcf54xx",
-	.map_base = MCF_FEC_ADDR(1),
-	.size     = MCF_FEC_SIZE(1),	   /* area size */
+	.resource_base = {
+		.start	= MCF_FEC_ADDR(1),
+		.size	= MCF_FEC_SIZE(1),	   /* area size */
+	},
 	.platform_data	= &fec_info,
 };
 
@@ -89,8 +95,10 @@ static struct device_d sdram_dev =
 {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = CFG_SDRAM_ADDRESS,
-	.size     = CFG_SDRAM_SIZE,
+	.resource_base = {
+		.start	= CFG_SDRAM_ADDRESS,
+		.size	= CFG_SDRAM_SIZE,
+	},
 	.platform_data = &ram_pdata,
 };
 
@@ -122,8 +130,10 @@ static struct device_d mcfv4e_serial_device =
 {
 	.id	  = -1,
 	.name     = "mcfv4e_serial",
-	.map_base = 1 + CFG_EARLY_UART_PORT,
-	.size     = 16 * 1024,
+	.resource_base = {
+		.start	= 1 + CFG_EARLY_UART_PORT,
+		.size	= 16 * 1024,
+	},
 };
 
 static int mcfv4e_console_init(void)
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index 8b43550..ea9aac8 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -40,8 +40,10 @@
 struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xff000000,
-	.size     = 16 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0xff000000,
+		.size	= 16 * 1024 * 1024,
+	},
 };
 
 static struct memory_platform_data ram_pdata = {
@@ -52,8 +54,10 @@ static struct memory_platform_data ram_pdata = {
 struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0x0,
-	.size     = 64 * 1024 * 1024,
+	.resource_base = {
+		.start	= 0x00000000,
+		.size	= 64 * 1024 * 1024,
+	},
 	.platform_data = &ram_pdata,
 };
 
@@ -64,7 +68,9 @@ static struct mpc5xxx_fec_platform_data fec_info = {
 struct device_d eth_dev = {
 	.id		= -1,
 	.name		= "fec_mpc5xxx",
-	.map_base	= MPC5XXX_FEC,
+	.resource_base = {
+		.start	= MPC5XXX_FEC,
+	},
 	.platform_data	= &fec_info,
 };
 
@@ -85,15 +91,19 @@ device_initcall(devices_init);
 static struct device_d psc3 = {
 	.id	  = -1,
 	.name     = "mpc5xxx_serial",
-	.map_base = MPC5XXX_PSC3,
-	.size     = 4096,
+	.resource_base = {
+		.start	= MPC5XXX_PSC3,
+		.size	= 4096,
+	},
 };
 
 static struct device_d psc6 = {
 	.id	  = -1,
 	.name     = "mpc5xxx_serial",
-	.map_base = MPC5XXX_PSC6,
-	.size     = 4096,
+	.resource_base = {
+		.start	= MPC5XXX_PSC6,
+		.size	= 4096,
+	},
 };
 
 static int console_init(void)
@@ -133,7 +143,7 @@ static void sdram_start (int hi_addr)
 	*(vu_long *)MPC5XXX_SDRAM_MODE = SDRAM_EMODE;
 	__asm__ volatile ("sync");
 
-	/* set mode register: reset DLL */
+	/* set mode register:.resource_baseet DLL */
 	*(vu_long *)MPC5XXX_SDRAM_MODE = SDRAM_MODE | 0x04000000;
 	__asm__ volatile ("sync");
 #endif
@@ -142,7 +152,7 @@ static void sdram_start (int hi_addr)
 	*(vu_long *)MPC5XXX_SDRAM_CTRL = SDRAM_CONTROL | 0x80000002 | hi_addr_bit;
 	__asm__ volatile ("sync");
 
-	/* auto refresh */
+	/* auto re.resource_baseh */
 	*(vu_long *)MPC5XXX_SDRAM_CTRL = SDRAM_CONTROL | 0x80000004 | hi_addr_bit;
 	__asm__ volatile ("sync");
 
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index ad625d7..ad06e5c 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -106,8 +106,8 @@ int barebox_register_filedev(struct hf_platform_data *hf)
 	dev->platform_data = hf;
 
 	strcpy(dev->name, "hostfile");
-	dev->size = hf->size;
-	dev->map_base = hf->map_base;
+	dev->resource_base.size = hf->size;
+	dev->resource_base.start = hf->map_base;
 
 	return register_device(dev);
 }
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index a6cd7e0..b310ebb 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -38,8 +38,10 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.size		= 16 * 1024 * 1024,
-	.map_base	= 0,
+	.resource_base = {
+		.start	= 0x00000000,
+		.size	= 16 * 1024 * 1024,
+	},
 	.platform_data	= &ram_pdata,
 };
 
@@ -97,11 +99,13 @@ static struct NS16550_plat serial_plat = {
 
 /* we are expecting always one serial interface */
 static struct device_d generic_pc_serial_device = {
-       .id = -1,
-       .name = "serial_ns16550",
-       .map_base = 0x3f8,
-       .size = 8,
-       .platform_data = (void *)&serial_plat,
+	.id = -1,
+	.name = "serial_ns16550",
+	.resource_base = {
+		.start = 0x000003f8,
+		.size = 8,
+	},
+	.platform_data = (void *)&serial_plat,
 };
 
 static int pc_console_init(void)
diff --git a/commands/mem.c b/commands/mem.c
index bc84f6d..8d715c5 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -596,7 +596,7 @@ static int mem_probe(struct device_d *dev)
 	dev->priv = cdev;
 
 	cdev->name = pdata->name;
-	cdev->size = dev->size;
+	cdev->size = dev_resource_get_size(dev);
 	cdev->ops = &memops;
 	cdev->dev = dev;
 
@@ -618,8 +618,10 @@ static struct memory_platform_data mem_dev_pdata = {
 static struct device_d mem_dev = {
 	.id = -1,
 	.name  = "mem",
-	.map_base = 0,
-	.size   = ~0, /* FIXME: should be 0x100000000, ahem... */
+	.resource_base = {
+		.start	= 0x00000000,
+		.size   = ~0, /* FIXME: should be 0x100000000, ahem... */
+	},
 	.platform_data = &mem_dev_pdata,
 };
 
diff --git a/common/startup.c b/common/startup.c
index 84a59c5..a68d101 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -93,8 +93,8 @@ static struct device_d default_env_dev = {
 
 static int register_default_env(void)
 {
-	default_env_dev.map_base = (unsigned long)default_environment;
-	default_env_dev.size = sizeof(default_environment);
+	default_env_dev.resource_base.start = (unsigned long)default_environment;
+	default_env_dev.resource_base.size = sizeof(default_environment);
 	register_device(&default_env_dev);
 	return 0;
 }
diff --git a/drivers/ata/bios.c b/drivers/ata/bios.c
index 51e2425..7601de2 100644
--- a/drivers/ata/bios.c
+++ b/drivers/ata/bios.c
@@ -257,8 +257,8 @@ static int biosdisk_probe(struct device_d *dev)
 
 		strcpy(drive_dev->name, "biosdisk");
 		drive_dev->id = drive - 0x80;
-		drive_dev->size = 1;
-		drive_dev->map_base = 0;
+		dev_resource_set_size(drive_dev, 1);
+		dev_resource_set_start(drive_dev, 0);
 		drive_dev->platform_data = p;
 
 		register_device(drive_dev);
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index cc64d94..5f0fdee 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -112,7 +112,7 @@ struct imx_i2c_struct {
 #ifdef CONFIG_I2C_DEBUG
 static void i2c_imx_dump_reg(struct i2c_adapter *adapter)
 {
-	unsigned long base = adapter->dev->map_base;
+	unsigned long base = dev_resource_get_start(adapter->dev);
 	u32 reg_cr, reg_sr;
 
 	reg_cr = readb(base + IMX_I2C_I2CR);
@@ -140,7 +140,7 @@ static inline void i2c_imx_dump_reg(struct i2c_adapter *adapter)
 
 static int i2c_imx_bus_busy(struct i2c_adapter *adapter, int for_busy)
 {
-	unsigned long base = adapter->dev->map_base;
+	unsigned long base = dev_resource_get_start(adapter->dev);
 	uint64_t start;
 	unsigned int temp;
 
@@ -164,7 +164,7 @@ static int i2c_imx_bus_busy(struct i2c_adapter *adapter, int for_busy)
 
 static int i2c_imx_trx_complete(struct i2c_adapter *adapter)
 {
-	unsigned long base = adapter->dev->map_base;
+	unsigned long base = dev_resource_get_start(adapter->dev);
 	uint64_t start;
 
 	start = get_time_ns();
@@ -184,7 +184,7 @@ static int i2c_imx_trx_complete(struct i2c_adapter *adapter)
 
 static int i2c_imx_wait_iif(struct i2c_adapter *adapter)
 {
-	unsigned long base = adapter->dev->map_base;
+	unsigned long base = dev_resource_get_start(adapter->dev);
 	uint64_t start;
 
 	start = get_time_ns();
@@ -204,7 +204,7 @@ static int i2c_imx_wait_iif(struct i2c_adapter *adapter)
 
 static int i2c_imx_acked(struct i2c_adapter *adapter)
 {
-	unsigned long base = adapter->dev->map_base;
+	unsigned long base = dev_resource_get_start(adapter->dev);
 	uint64_t start;
 
 	start = get_time_ns();
@@ -225,7 +225,7 @@ static int i2c_imx_acked(struct i2c_adapter *adapter)
 static int i2c_imx_start(struct i2c_adapter *adapter)
 {
 	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	unsigned long base = adapter->dev->map_base;
+	unsigned long base = dev_resource_get_start(adapter->dev);
 	unsigned int temp = 0;
 	int result;
 
@@ -257,7 +257,7 @@ static int i2c_imx_start(struct i2c_adapter *adapter)
 static void i2c_imx_stop(struct i2c_adapter *adapter)
 {
 	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	unsigned long base = adapter->dev->map_base;
+	unsigned long base = dev_resource_get_start(adapter->dev);
 	unsigned int temp = 0;
 
 	if (!i2c_imx->stopped) {
@@ -321,7 +321,7 @@ static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
 
 static int i2c_imx_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 {
-	unsigned long base = adapter->dev->map_base;
+	unsigned long base = dev_resource_get_start(adapter->dev);
 	int i, result;
 
 	dev_dbg(adapter->dev,
@@ -358,7 +358,7 @@ static int i2c_imx_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 static int i2c_imx_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 {
 	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	unsigned long base = adapter->dev->map_base;
+	unsigned long base = dev_resource_get_start(adapter->dev);
 	int i, result;
 	unsigned int temp;
 
@@ -430,7 +430,7 @@ static int i2c_imx_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 static int i2c_imx_xfer(struct i2c_adapter *adapter,
 			struct i2c_msg *msgs, int num)
 {
-	unsigned long base = adapter->dev->map_base;
+	unsigned long base = dev_resource_get_start(adapter->dev);
 	unsigned int i, temp;
 	int result;
 
@@ -472,7 +472,7 @@ static int __init i2c_imx_probe(struct device_d *pdev)
 {
 	struct imx_i2c_struct *i2c_imx;
 	struct i2c_platform_data *pdata;
-	unsigned long base = pdev->map_base;
+	unsigned long base = dev_resource_get_start(pdev);
 	int ret;
 
 	pdata = pdev->platform_data;
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 8e7a8b5..2c48bba 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -716,7 +716,7 @@ i2c_omap_probe(struct device_d *pdev)
 {
 	struct omap_i2c_struct	*i2c_omap;
 	/* struct i2c_platform_data *pdata; */
-	/* unsigned long base = pdev->map_base; */
+	/* unsigned long base = dev_resource_get_start(pdev); */
 	int r;
 	u32 speed = 0;
 
@@ -732,7 +732,7 @@ i2c_omap_probe(struct device_d *pdev)
 		speed = 100;	/* Defualt speed */
 
 	i2c_omap->speed = speed;
-	i2c_omap->base = (void*)pdev->map_base;
+	i2c_omap->base = (void*)dev_resource_get_start(pdev);
 	printf ("I2C probe\n");
 	omap_i2c_unidle(i2c_omap);
 
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index e8f85fc..b6b72ad 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -381,7 +381,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 	if (!host)
 		return -ENOMEM;
 
-	host->io_base = (void __iomem *)dev->map_base;
+	host->io_base = (void __iomem *)dev_resource_get_start(dev);
 
 	mtd = &host->mtd;
 	nand_chip = &host->nand_chip;
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 5454e32..f225024 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -855,7 +855,7 @@ static int __init imxnd_probe(struct device_d *dev)
 		return -ENOMEM;
 
 	host->data_buf = (uint8_t *)(host + 1);
-	host->base = (void __iomem *)dev->map_base;
+	host->base = (void __iomem *)dev_resource_get_start(dev);
 
 	host->main_area0 = host->base;
 	host->main_area1 = host->base + 0x200;
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 7c9bc32..84d1a3a 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -14,8 +14,10 @@
  * static struct device_d my_nand_device = {
  *	.name = "gpmc_nand",
  *	.id = some identifier you need to show.. e.g. "gpmc_nand0"
- *	.map_base = GPMC base address
- *	.size = GPMC address map size.
+ *	.resource_base = {
+ *		.start	= GPMC base address
+ *		.size	= GPMC address map size.
+ *	},
  *	.platform_data = platform data - required - explained below
  * };
  * platform data required:
@@ -439,7 +441,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	}
 	/* Setup register specific data */
 	oinfo->gpmc_cs = pdata->cs;
-	oinfo->gpmc_base = pdev->map_base;
+	oinfo->gpmc_base = dev_resource_get_start(pdev);
 	cs_base = oinfo->gpmc_base + GPMC_CONFIG1_0 +
 		(pdata->cs * GPMC_CONFIG_CS_SIZE);
 	oinfo->gpmc_command = (void *)(cs_base + GPMC_CS_NAND_COMMAND);
diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index b989583..c487f9c 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -359,7 +359,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 		return -ENOMEM;
 
 	host->dev = dev;
-	host->base = dev->map_base;
+	host->base = dev_resource_get_start(dev);
 
 	/* structures must be linked */
 	chip = &host->nand;
@@ -375,7 +375,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 	chip->chip_delay = 50;
 	chip->priv = host;
 
-	chip->IO_ADDR_R = chip->IO_ADDR_W = (void*)(dev->map_base + NFDATA);
+	chip->IO_ADDR_R = chip->IO_ADDR_W = (void*)(host->base + NFDATA);
 
 	chip->cmd_ctrl = s3c24x0_nand_hwcontrol;
 	chip->dev_ready = s3c24x0_nand_devready;
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index 8120877..6701eb0 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -441,7 +441,7 @@ static int cs8900_probe(struct device_d *dev)
 	debug("cs8900_init()\n");
 
 	priv = (struct cs8900_priv *)malloc(sizeof(*priv));
-	priv->regs = (u16 *)dev->map_base;
+	priv->regs = (u16 *)dev_resource_get_start(dev);
 	if (cs8900_check_id(priv)) {
 		free(priv);
 		return -1;
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 73b7a54..2ef3157 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -552,7 +552,7 @@ static int fec_probe(struct device_d *dev)
 	edev->get_ethaddr = fec_get_hwaddr,
 	edev->set_ethaddr = fec_set_hwaddr,
 
-	fec->regs = (void *)dev->map_base;
+	fec->regs = (void *)dev_resource_get_start(dev);
 
 	/* Reset chip. */
 	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index 8b2cb4d..bebc05e 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -673,7 +673,7 @@ int mpc5xxx_fec_probe(struct device_d *dev)
 	edev->get_ethaddr = mpc5xxx_fec_get_ethaddr,
 	edev->set_ethaddr = mpc5xxx_fec_set_ethaddr,
 
-	fec->eth = (ethernet_regs *)dev->map_base;
+	fec->eth = (ethernet_regs *)dev_resource_get_start(dev);
 	fec->tbdBase = (FEC_TBD *)FEC_BD_BASE;
 	fec->rbdBase = (FEC_RBD *)(FEC_BD_BASE + FEC_TBD_NUM * sizeof(FEC_TBD));
 
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index df3b6af..34e77d2 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -446,7 +446,7 @@ static int macb_probe(struct device_d *dev)
 	macb->rx_ring = xmalloc(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
 	macb->tx_ring = xmalloc(sizeof(struct macb_dma_desc));
 
-	macb->regs = (void *)dev->map_base;
+	macb->regs = (void *)dev_resource_get_start(dev);
 
 	/*
 	 * Do some basic initialization so that we at least can talk
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 605a7d8..3f28211 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1317,7 +1317,7 @@ static int smc91c111_probe(struct device_d *dev)
 	priv->miidev.address = 0;
 	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
-	priv->base = dev->map_base;
+	priv->base = dev_resource_get_start(dev);
 
 	smc91c111_reset(edev);
 
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index b559590..1339469 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -689,18 +689,19 @@ static int smc911x_probe(struct device_d *dev)
 	struct smc911x_priv *priv;
 	ulong val;
 	int i;
+	resource_size_t map_base = dev_resource_get_start(dev);
 
 	debug("smc911x_eth_init()\n");
 
-	val = readl(dev->map_base + BYTE_TEST);
+	val = readl(map_base + BYTE_TEST);
 	if(val != 0x87654321) {
 		printf(DRIVERNAME
 			": no smc911x found on 0x%08x (byte_test=0x%08x)\n",
-			dev->map_base, val);
+			map_base, val);
 		return -ENODEV;
 	}
 
-	val = readl(dev->map_base + ID_REV) >> 16;
+	val = readl(map_base + ID_REV) >> 16;
 	for(i = 0; chip_ids[i].id != 0; i++) {
 		if (chip_ids[i].id == val) break;
 	}
@@ -731,7 +732,7 @@ static int smc911x_probe(struct device_d *dev)
 	priv->miidev.address = 1;
 	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
-	priv->base = dev->map_base;
+	priv->base = map_base;
 
 	smc911x_reset(edev);
 	smc911x_phy_reset(edev);
diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index fa5e5ee..49a8d04 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -505,11 +505,12 @@ static int __cfi_erase(struct cdev *cdev, size_t count, unsigned long offset,
         struct flash_info *finfo = (struct flash_info *)cdev->priv;
         unsigned long start, end;
         int i, ret = 0;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
 	debug("%s: erase 0x%08x (size %d)\n", __func__, offset, count);
 
-        start = find_sector(finfo, cdev->dev->map_base + offset);
-        end   = find_sector(finfo, cdev->dev->map_base + offset + count - 1);
+        start = find_sector(finfo, map_base + offset);
+        end   = find_sector(finfo, map_base + offset + count - 1);
 
 	if (verbose)
 		init_progression_bar(end - start);
@@ -673,12 +674,13 @@ static int cfi_protect(struct cdev *cdev, size_t count, unsigned long offset, in
 	unsigned long start, end;
 	int i, ret = 0;
 	const char *action = (prot? "protect" : "unprotect");
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
 	printf("%s: %s 0x%08x (size %d)\n", __FUNCTION__,
-		action, cdev->dev->map_base + offset, count);
+		action, map_base + offset, count);
 
-	start = find_sector(finfo, cdev->dev->map_base + offset);
-	end   = find_sector(finfo, cdev->dev->map_base + offset + count - 1);
+	start = find_sector(finfo, map_base + offset);
+	end   = find_sector(finfo, map_base + offset + count - 1);
 
 	for (i = start; i <= end; i++) {
 		ret = flash_real_protect (finfo, i, prot);
@@ -694,10 +696,11 @@ static ssize_t cfi_write(struct cdev *cdev, const void *buf, size_t count, unsig
 {
         struct flash_info *finfo = (struct flash_info *)cdev->priv;
         int ret;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
-	debug("cfi_write: buf=0x%08x addr=0x%08x count=0x%08x\n",buf, cdev->dev->map_base + offset, count);
+	debug("cfi_write: buf=0x%08x addr=0x%08x count=0x%08x\n",buf, map_base + offset, count);
 
-        ret = write_buff (finfo, buf, cdev->dev->map_base + offset, count);
+        ret = write_buff (finfo, buf, map_base + offset, count);
         return ret == 0 ? count : -1;
 }
 
@@ -1020,24 +1023,26 @@ static int cfi_probe (struct device_d *dev)
 {
 	unsigned long size = 0;
 	struct flash_info *info = xzalloc(sizeof(*info));
+	resource_size_t map_base = dev_resource_get_start(dev);
+	resource_size_t map_size = dev_resource_get_size(dev);
 
 	dev->priv = (void *)info;
 
-	printf("cfi_probe: %s base: 0x%08x size: 0x%08x\n", dev->name, dev->map_base, dev->size);
+	printf("cfi_probe: %s base: 0x%08x size: 0x%08x\n", dev->name, map_base, map_size);
 
 	/* Init: no FLASHes known */
 	info->flash_id = FLASH_UNKNOWN;
-	size += info->size = flash_get_size(info, dev->map_base);
-	info->base = (void __iomem *)dev->map_base;
+	size += info->size = flash_get_size(info, map_base);
+	info->base = (void __iomem *)map_base;
 
-	if (dev->size == 0) {
+	if (map_size == 0) {
 		printf("cfi_probe: size : 0x%08x\n", info->size);
-		dev->size = info->size;
+		dev_resource_set_size(dev, info->size);
 	}
 
 	if (info->flash_id == FLASH_UNKNOWN) {
 		printf ("## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %ld MB\n",
-			dev->map_base, info->size, info->size << 20);
+			map_base, info->size, info->size << 20);
 		return -ENODEV;
 	}
 
diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index bc9b0de..d44f903 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -53,7 +53,7 @@ to_amba_uart_port(struct console_device *uart)
 
 static int pl011_setbaudrate(struct console_device *cdev, int baudrate)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 	struct amba_uart_port *uart = to_amba_uart_port(cdev);
 	unsigned int temp;
 	unsigned int divider;
@@ -72,37 +72,37 @@ static int pl011_setbaudrate(struct console_device *cdev, int baudrate)
 	temp = (8 * remainder) / baudrate;
 	fraction = (temp >> 1) + (temp & 1);
 
-	writel(divider, dev->map_base + UART011_IBRD);
-	writel(fraction, dev->map_base + UART011_FBRD);
+	writel(divider, map_base + UART011_IBRD);
+	writel(fraction, map_base + UART011_FBRD);
 
 	return 0;
 }
 
 static void pl011_putc(struct console_device *cdev, char c)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
 	/* Wait until there is space in the FIFO */
-	while (readl(dev->map_base + UART01x_FR) & UART01x_FR_TXFF);
+	while (readl(map_base + UART01x_FR) & UART01x_FR_TXFF);
 
 	/* Send the character */
-	writel(c, dev->map_base + UART01x_DR);
+	writel(c, map_base + UART01x_DR);
 }
 
 static int pl011_getc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 	unsigned int data;
 
 	/* Wait until there is data in the FIFO */
-	while (readl(dev->map_base + UART01x_FR) & UART01x_FR_RXFE);
+	while (readl(map_base + UART01x_FR) & UART01x_FR_RXFE);
 
-	data = readl(dev->map_base + UART01x_DR);
+	data = readl(map_base + UART01x_DR);
 
 	/* Check for an error flag */
 	if (data & 0xffffff00) {
 		/* Clear the error */
-		writel(0xffffffff, dev->map_base + UART01x_ECR);
+		writel(0xffffffff, map_base + UART01x_ECR);
 		return -1;
 	}
 
@@ -111,20 +111,20 @@ static int pl011_getc(struct console_device *cdev)
 
 static int pl011_tstc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
-	return !(readl(dev->map_base + UART01x_FR) & UART01x_FR_RXFE);
+	return !(readl(map_base + UART01x_FR) & UART01x_FR_RXFE);
 }
 
 int pl011_init_port (struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 	struct amba_uart_port *uart = to_amba_uart_port(cdev);
 
 	/*
 	 ** First, disable everything.
 	 */
-	writel(0x0, dev->map_base + UART011_CR);
+	writel(0x0, map_base + UART011_CR);
 
 	/*
 	 * Try to enable the clock producer.
@@ -141,13 +141,13 @@ int pl011_init_port (struct console_device *cdev)
 	 ** Set the UART to be 8 bits, 1 stop bit, no parity, fifo enabled.
 	 */
 	writel((UART01x_LCRH_WLEN_8 | UART01x_LCRH_FEN),
-	       dev->map_base + UART011_LCRH);
+	       map_base + UART011_LCRH);
 
 	/*
 	 ** Finally, enable the UART
 	 */
 	writel((UART01x_CR_UARTEN | UART011_CR_TXE | UART011_CR_RXE),
-	       dev->map_base + UART011_CR);
+	       map_base + UART011_CR);
 
 	return 0;
 }
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index b99ec4d..7a35c73 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -326,31 +326,31 @@ to_atmel_uart_port(struct console_device *uart)
 
 static void atmel_serial_putc(struct console_device *cdev, char c)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
-	while (!(readl(dev->map_base + USART3_CSR) & USART3_BIT(TXRDY)));
+	while (!(readl(map_base + USART3_CSR) & USART3_BIT(TXRDY)));
 
-	writel(c, dev->map_base + USART3_THR);
+	writel(c, map_base + USART3_THR);
 }
 
 static int atmel_serial_tstc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
-	return (readl(dev->map_base + USART3_CSR) & USART3_BIT(RXRDY)) != 0;
+	return (readl(map_base + USART3_CSR) & USART3_BIT(RXRDY)) != 0;
 }
 
 static int atmel_serial_getc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
-	while (!(readl(dev->map_base + USART3_CSR) & USART3_BIT(RXRDY))) ;
-	return readl(dev->map_base + USART3_RHR);
+	while (!(readl(map_base + USART3_CSR) & USART3_BIT(RXRDY))) ;
+	return readl(map_base + USART3_RHR);
 }
 
 static int atmel_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 	unsigned long divisor;
 
@@ -360,7 +360,7 @@ static int atmel_serial_setbaudrate(struct console_device *cdev, int baudrate)
 	 *                16 * CD
 	 */
 	divisor = (uart->uartclk / 16 + baudrate / 2) / baudrate;
-	writel(USART3_BF(CD, divisor), dev->map_base + USART3_BRGR);
+	writel(USART3_BF(CD, divisor), map_base + USART3_BRGR);
 
 	return 0;
 }
@@ -373,22 +373,23 @@ static int atmel_serial_setbaudrate(struct console_device *cdev, int baudrate)
 static int atmel_serial_init_port(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(dev);
 	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 
-	uart->clk = clk_get(dev, "usart");
+	uart->clk = clk_get(cdev->dev, "usart");
 	clk_enable(uart->clk);
 	uart->uartclk = clk_get_rate(uart->clk);
 
-	writel(USART3_BIT(RSTRX) | USART3_BIT(RSTTX), dev->map_base + USART3_CR);
+	writel(USART3_BIT(RSTRX) | USART3_BIT(RSTTX), map_base + USART3_CR);
 
 	atmel_serial_setbaudrate(cdev, 115200);
 
-	writel(USART3_BIT(RXEN) | USART3_BIT(TXEN), dev->map_base + USART3_CR);
+	writel(USART3_BIT(RXEN) | USART3_BIT(TXEN), map_base + USART3_CR);
 	writel((USART3_BF(USART_MODE, USART3_USART_MODE_NORMAL)
 			   | USART3_BF(USCLKS, USART3_USCLKS_MCK)
 			   | USART3_BF(CHRL, USART3_CHRL_8)
 			   | USART3_BF(PAR, USART3_PAR_NONE)
-			   | USART3_BF(NBSTOP, USART3_NBSTOP_1)), dev->map_base + USART3_MR);
+			   | USART3_BF(NBSTOP, USART3_NBSTOP_1)), map_base + USART3_MR);
 
 	return 0;
 }
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 801004e..16f7802 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -189,8 +189,7 @@ static int imx_serial_reffreq(ulong base)
  */
 static int imx_serial_init_port(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
-	ulong base = dev->map_base;
+	resource_size_t base = dev_resource_get_start(cdev->dev);
 	uint32_t val;
 
 	writel(UCR1_VAL, base + UCR1);
@@ -233,51 +232,50 @@ static int imx_serial_init_port(struct console_device *cdev)
 
 static void imx_serial_putc(struct console_device *cdev, char c)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t base = dev_resource_get_start(cdev->dev);
 
 	/* Wait for Tx FIFO not full */
-	while (readl(dev->map_base + UTS) & UTS_TXFULL);
+	while (readl(base + UTS) & UTS_TXFULL);
 
-        writel(c, dev->map_base + URTX0);
+        writel(c, base + URTX0);
 }
 
 static int imx_serial_tstc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t base = dev_resource_get_start(cdev->dev);
 
 	/* If receive fifo is empty, return false */
-	if (readl(dev->map_base + UTS) & UTS_RXEMPTY)
+	if (readl(base + UTS) & UTS_RXEMPTY)
 		return 0;
 	return 1;
 }
 
 static int imx_serial_getc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t base = dev_resource_get_start(cdev->dev);
 	unsigned char ch;
 
-	while (readl(dev->map_base + UTS) & UTS_RXEMPTY);
+	while (readl(base + UTS) & UTS_RXEMPTY);
 
-	ch = readl(dev->map_base + URXD0);
+	ch = readl(base + URXD0);
 
 	return ch;
 }
 
 static void imx_serial_flush(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t base = dev_resource_get_start(cdev->dev);
 
-	while (!(readl(dev->map_base + USR2) & USR2_TXDC));
+	while (!(readl(base + USR2) & USR2_TXDC));
 }
 
 static int imx_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t base = dev_resource_get_start(cdev->dev);
 	struct imx_serial_priv *priv = container_of(cdev,
 					struct imx_serial_priv, cdev);
 	uint32_t val;
 
-	ulong base = dev->map_base;
 	ulong ucr1 = readl(base + UCR1);
 
 	/* disable UART */
@@ -313,6 +311,7 @@ static int imx_serial_probe(struct device_d *dev)
 	struct console_device *cdev;
 	struct imx_serial_priv *priv;
 	uint32_t val;
+	resource_size_t base = dev_resource_get_start(dev);
 
 	priv = malloc(sizeof(*priv));
 	cdev = &priv->cdev;
@@ -330,9 +329,9 @@ static int imx_serial_probe(struct device_d *dev)
 	imx_serial_setbaudrate(cdev, 115200);
 
 	/* Enable UART */
-	val = readl(cdev->dev->map_base + UCR1);
+	val = readl(base + UCR1);
 	val |= UCR1_UARTEN;
-	writel(val, cdev->dev->map_base + UCR1);
+	writel(val, base + UCR1);
 
 	console_register(cdev);
 	priv->notify.notifier_call = imx_clocksource_clock_change;
diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index 2509708..e3652ca 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -63,8 +63,8 @@ static int __mpc5xxx_serial_setbaudrate(struct mpc5xxx_psc *psc, int baudrate)
 
 static int mpc5xxx_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
-	struct device_d *dev = cdev->dev;
-	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)dev->map_base;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
+	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)map_base;
 
 	__mpc5xxx_serial_setbaudrate(psc, baudrate);
 
@@ -107,8 +107,8 @@ static int __mpc5xxx_serial_init(struct mpc5xxx_psc *psc)
 
 static int mpc5xxx_serial_init(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
-	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)dev->map_base;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
+	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)map_base;
 
 	__mpc5xxx_serial_init(psc);
 
@@ -117,8 +117,8 @@ static int mpc5xxx_serial_init(struct console_device *cdev)
 
 static void mpc5xxx_serial_putc (struct console_device *cdev, const char c)
 {
-	struct device_d *dev = cdev->dev;
-	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)dev->map_base;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
+	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)map_base;
 
 	/* Wait for last character to go. */
 	while (!(psc->psc_status & PSC_SR_TXEMP))
@@ -129,8 +129,8 @@ static void mpc5xxx_serial_putc (struct console_device *cdev, const char c)
 
 static int mpc5xxx_serial_getc (struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
-	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)dev->map_base;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
+	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)map_base;
 
 	/* Wait for a character to arrive. */
 	while (!(psc->psc_status & PSC_SR_RXRDY))
@@ -141,8 +141,8 @@ static int mpc5xxx_serial_getc (struct console_device *cdev)
 
 static int mpc5xxx_serial_tstc (struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
-	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)dev->map_base;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
+	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)map_base;
 
 	return (psc->psc_status & PSC_SR_RXRDY);
 }
diff --git a/drivers/serial/serial_netx.c b/drivers/serial/serial_netx.c
index 7c09519..9358e3b 100644
--- a/drivers/serial/serial_netx.c
+++ b/drivers/serial/serial_netx.c
@@ -75,15 +75,15 @@ enum uart_regs {
 
 static int netx_serial_init_port(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 	unsigned int divisor;
 
 	/* disable uart */
-	IO_WRITE( dev->map_base + UART_CR, 0);
+	IO_WRITE( map_base + UART_CR, 0);
 
-	IO_WRITE( dev->map_base + UART_LINE_CR, LINE_CR_8BIT | LINE_CR_FEN);
+	IO_WRITE( map_base + UART_LINE_CR, LINE_CR_8BIT | LINE_CR_FEN);
 
-	IO_WRITE( dev->map_base + UART_DRV_ENABLE, DRV_ENABLE_TX | DRV_ENABLE_RTS );
+	IO_WRITE( map_base + UART_DRV_ENABLE, DRV_ENABLE_TX | DRV_ENABLE_RTS );
 
 	/* set baud rate */
 	divisor = 115200 * 4096;
@@ -91,12 +91,12 @@ static int netx_serial_init_port(struct console_device *cdev)
 	divisor *= 256;
 	divisor /= 100000;
 
-	IO_WRITE( dev->map_base + UART_BAUDDIV_MSB, (divisor >> 8) & 0xff );
-	IO_WRITE( dev->map_base + UART_BAUDDIV_LSB, divisor & 0xff );
-	IO_WRITE( dev->map_base + UART_BRM_CR, BRM_CR_BAUD_RATE_MODE);
+	IO_WRITE( map_base + UART_BAUDDIV_MSB, (divisor >> 8) & 0xff );
+	IO_WRITE( map_base + UART_BAUDDIV_LSB, divisor & 0xff );
+	IO_WRITE( map_base + UART_BRM_CR, BRM_CR_BAUD_RATE_MODE);
 
 	/* Finally, enable the UART */
-	IO_WRITE( dev->map_base + UART_CR, CR_UARTEN);
+	IO_WRITE( map_base + UART_CR, CR_UARTEN);
 
 	return 0;
 }
@@ -108,32 +108,32 @@ static int netx_serial_setbaudrate(struct console_device *cdev, int baudrate)
 
 static void netx_serial_putc(struct console_device *cdev, char c)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
-	while( IO_READ(dev->map_base + UART_FR) & FR_TXFF );
+	while( IO_READ(map_base + UART_FR) & FR_TXFF );
 
-	IO_WRITE(dev->map_base + UART_DR, c);
+	IO_WRITE(map_base + UART_DR, c);
 }
 
 static int netx_serial_getc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 	int c;
 
-	while( IO_READ(dev->map_base + UART_FR) & FR_RXFE );
+	while( IO_READ(map_base + UART_FR) & FR_RXFE );
 
-	c = IO_READ(dev->map_base + UART_DR);
+	c = IO_READ(map_base + UART_DR);
 
-	IO_READ(dev->map_base + UART_SR);
+	IO_READ(map_base + UART_SR);
 
 	return c;
 }
 
 static int netx_serial_tstc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
-	return (IO_READ(dev->map_base + UART_FR) & FR_RXFE) ? 0 : 1;
+	return (IO_READ(map_base + UART_FR) & FR_RXFE) ? 0 : 1;
 }
 
 static int netx_serial_probe(struct device_d *dev)
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 290619f..21f862e 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -66,7 +66,7 @@ static unsigned int ns16550_calc_divisor(struct console_device *cdev,
 	/* FIXME: Legacy Code copied from U-Boot V1 implementation
 	 */
 #ifdef CONFIG_ARCH_OMAP1510
-	unsigned long base = cdev->dev->map_base;
+	resource_size_t base = dev_resource_get_start(cdev->dev);
 	/* If can't cleanly clock 115200 set div to 1 */
 	if ((clk == 12000000) && (baudrate == 115200)) {
 		/* enable 6.5 * divisor */
@@ -95,7 +95,7 @@ static void ns16550_serial_init_port(struct console_device *cdev)
 {
 	struct NS16550_plat *plat = (struct NS16550_plat *)
 	    cdev->dev->platform_data;
-	unsigned long base = cdev->dev->map_base;
+	resource_size_t base = dev_resource_get_start(cdev->dev);
 	unsigned int baud_divisor;
 
 	/* Setup the serial port with the defaults first */
@@ -129,7 +129,7 @@ static void ns16550_putc(struct console_device *cdev, char c)
 {
 	struct NS16550_plat *plat = (struct NS16550_plat *)
 	    cdev->dev->platform_data;
-	unsigned long base = cdev->dev->map_base;
+	resource_size_t base = dev_resource_get_start(cdev->dev);
 	/* Loop Doing Nothing */
 	while ((plat->reg_read(base, lsr) & LSR_THRE) == 0) ;
 	plat->reg_write(c, base, thr);
@@ -146,7 +146,7 @@ static int ns16550_getc(struct console_device *cdev)
 {
 	struct NS16550_plat *plat = (struct NS16550_plat *)
 	    cdev->dev->platform_data;
-	unsigned long base = cdev->dev->map_base;
+	resource_size_t base = dev_resource_get_start(cdev->dev);
 	/* Loop Doing Nothing */
 	while ((plat->reg_read(base, lsr) & LSR_DR) == 0) ;
 	return plat->reg_read(base, rbr);
@@ -163,7 +163,7 @@ static int ns16550_tstc(struct console_device *cdev)
 {
 	struct NS16550_plat *plat = (struct NS16550_plat *)
 	    cdev->dev->platform_data;
-	unsigned long base = cdev->dev->map_base;
+	resource_size_t base = dev_resource_get_start(cdev->dev);
 	return ((plat->reg_read(base, lsr) & LSR_DR) != 0);
 }
 
@@ -179,7 +179,7 @@ static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
 {
 	struct NS16550_plat *plat = (struct NS16550_plat *)
 	    cdev->dev->platform_data;
-	unsigned long base = cdev->dev->map_base;
+	resource_size_t base = dev_resource_get_start(cdev->dev);
 	unsigned int baud_divisor = ns16550_calc_divisor(cdev, baud_rate);
 	plat->reg_write(0x00, base, ier);
 	plat->reg_write(LCR_BKSE, base, lcr);
diff --git a/drivers/serial/serial_pl010.c b/drivers/serial/serial_pl010.c
index 1a6366f..746eaf3 100644
--- a/drivers/serial/serial_pl010.c
+++ b/drivers/serial/serial_pl010.c
@@ -37,7 +37,8 @@
 
 static int pl010_setbaudrate(struct console_device *cdev, int baudrate)
 {
-	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
+	struct pl010_struct *pl010 = (struct pl010_struct *)map_base;
 	unsigned int divisor;
 
 	switch (baudrate) {
@@ -76,7 +77,8 @@ static int pl010_setbaudrate(struct console_device *cdev, int baudrate)
 
 static int pl010_init_port(struct console_device *cdev)
 {
-	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
+	struct pl010_struct *pl010 = (struct pl010_struct *)map_base;
 
 	/*
 	 * First, disable everything.
@@ -99,7 +101,8 @@ static int pl010_init_port(struct console_device *cdev)
 
 static void pl010_putc(struct console_device *cdev, char c)
 {
-	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
+	struct pl010_struct *pl010 = (struct pl010_struct *)map_base;
 
 	/* Wait until there is space in the FIFO */
 	while (readl(&pl010->flag) & UART_PL010_FR_TXFF)
@@ -111,7 +114,8 @@ static void pl010_putc(struct console_device *cdev, char c)
 
 static int pl010_getc(struct console_device *cdev)
 {
-	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
+	struct pl010_struct *pl010 = (struct pl010_struct *)map_base;
 	unsigned int data;
 
 	/* Wait until there is data in the FIFO */
@@ -132,7 +136,8 @@ static int pl010_getc(struct console_device *cdev)
 
 static int pl010_tstc(struct console_device *cdev)
 {
-	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
+	struct pl010_struct *pl010 = (struct pl010_struct *)map_base;
 
 	return !(readl(&pl010->flag) & UART_PL010_FR_RXFE);
 }
diff --git a/drivers/serial/serial_s3c24x0.c b/drivers/serial/serial_s3c24x0.c
index fedddd3..f0e96ba 100644
--- a/drivers/serial/serial_s3c24x0.c
+++ b/drivers/serial/serial_s3c24x0.c
@@ -43,34 +43,34 @@
 
 static int s3c24x0_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 	unsigned val;
 
 	/* value is calculated so : PCLK / (16 * baudrate) -1 */
 	val = s3c24xx_get_pclk() / (16 * baudrate) - 1;
-	writew(val, dev->map_base + UBRDIV);
+	writew(val, map_base + UBRDIV);
 
 	return 0;
 }
 
 static int s3c24x0_serial_init_port(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
 	/* FIFO enable, Tx/Rx FIFO clear */
-	writeb(0x07, dev->map_base + UFCON);
-	writeb(0x00, dev->map_base + UMCON);
+	writeb(0x07, map_base + UFCON);
+	writeb(0x00, map_base + UMCON);
 
 	/* Normal,No parity,1 stop,8 bit */
-	writeb(0x03, dev->map_base + ULCON);
+	writeb(0x03, map_base + ULCON);
 	/*
 	 * tx=level,rx=edge,disable timeout int.,enable rx error int.,
 	 * normal,interrupt or polling
 	 */
-	writew(0x0245, dev->map_base + UCON);
+	writew(0x0245, map_base + UCON);
 
 #ifdef CONFIG_DRIVER_SERIAL_S3C24X0_AUTOSYNC
-	writeb(0x01, dev->map_base + UMCON); /* RTS up */
+	writeb(0x01, map_base + UMCON); /* RTS up */
 #endif
 
 	return 0;
@@ -78,21 +78,21 @@ static int s3c24x0_serial_init_port(struct console_device *cdev)
 
 static void s3c24x0_serial_putc(struct console_device *cdev, char c)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
 	/* Wait for Tx FIFO not full */
-	while (!(readb(dev->map_base + UTRSTAT) & 0x2))
+	while (!(readb(map_base + UTRSTAT) & 0x2))
 		;
 
-	writeb(c, dev->map_base + UTXH);
+	writeb(c, map_base + UTXH);
 }
 
 static int s3c24x0_serial_tstc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
 	/* If receive fifo is empty, return false */
-	if (readb(dev->map_base + UTRSTAT) & 0x1)
+	if (readb(map_base + UTRSTAT) & 0x1)
 		return 1;
 
 	return 0;
@@ -100,20 +100,20 @@ static int s3c24x0_serial_tstc(struct console_device *cdev)
 
 static int s3c24x0_serial_getc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
 	/* wait for a character */
-	while (!(readb(dev->map_base + UTRSTAT) & 0x1))
+	while (!(readb(map_base + UTRSTAT) & 0x1))
 		;
 
-	return readb(dev->map_base + URXH);
+	return readb(map_base + URXH);
 }
 
 static void s3c24x0_serial_flush(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
-	while (!readb(dev->map_base + UTRSTAT) & 0x4)
+	while (!readb(map_base + UTRSTAT) & 0x4)
 		;
 }
 
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 5c97919..4632a94 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -97,7 +97,7 @@ static void mxc_spi_chipselect(struct spi_device *spi, int is_active)
 {
 	struct spi_master *master = spi->master;
 	struct imx_spi *imx = container_of(master, struct imx_spi, master);
-	ulong base = master->dev->map_base;
+	resource_size_t base = dev_resource_get_start(master->dev);
 	unsigned int cs = 0;
 	int gpio = imx->chipselect[spi->chip_select];
 	u32 ctrl_reg;
@@ -136,7 +136,7 @@ static void mxc_spi_chipselect(struct spi_device *spi, int is_active)
 static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 {
 	struct spi_master *master = spi->master;
-	ulong base = master->dev->map_base;
+	resource_size_t base = dev_resource_get_start(master->dev);
 	struct spi_transfer	*t = NULL;
 
 	mxc_spi_chipselect(spi, 1);
@@ -162,6 +162,7 @@ static int imx_spi_probe(struct device_d *dev)
 	struct spi_master *master;
 	struct imx_spi *imx;
 	struct spi_imx_master *pdata = dev->platform_data;
+	resource_size_t base = dev_resource_get_start(dev);
 
 	imx = xzalloc(sizeof(*imx));
 
@@ -173,13 +174,11 @@ static int imx_spi_probe(struct device_d *dev)
 	master->num_chipselect = pdata->num_chipselect;
 	imx->chipselect = pdata->chipselect;
 
-	writel(MXC_CSPICTRL_ENABLE | MXC_CSPICTRL_MASTER,
-		     dev->map_base + MXC_CSPICTRL);
-	writel(MXC_CSPIPERIOD_32KHZ,
-		     dev->map_base + MXC_CSPIPERIOD);
-	while (readl(dev->map_base + MXC_CSPIINT) & MXC_CSPISTAT_RR)
-		readl(dev->map_base + MXC_CSPIRXDATA);
-	writel(0, dev->map_base + MXC_CSPIINT);
+	writel(MXC_CSPICTRL_ENABLE | MXC_CSPICTRL_MASTER, base + MXC_CSPICTRL);
+	writel(MXC_CSPIPERIOD_32KHZ, base + MXC_CSPIPERIOD);
+	while (readl(base + MXC_CSPIINT) & MXC_CSPISTAT_RR)
+		readl(base + MXC_CSPIRXDATA);
+	writel(0, base + MXC_CSPIINT);
 
 	spi_register_master(master);
 
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 119afcb..e82772c 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -2240,7 +2240,7 @@ static int fsl_udc_probe(struct device_d *dev)
 	udc_controller = xzalloc(sizeof(*udc_controller));
 	udc_controller->stopped = 1;
 
-	dr_regs = (void *)dev->map_base;
+	dr_regs = (void *)dev_resource_get_start(dev);
 
 	/* Read Device Controller Capability Parameters register */
 	dccparams = readl(&dr_regs->dccparams);
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 802c548..630d2c7 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -895,6 +895,7 @@ static int ehci_probe(struct device_d *dev)
 	struct ehci_priv *ehci;
 	uint32_t reg;
 	struct ehci_platform_data *pdata = dev->platform_data;
+	resource_size_t map_base = dev_resource_get_start(dev);
 
 	ehci = xmalloc(sizeof(struct ehci_priv));
 	host = &ehci->host;
@@ -902,16 +903,16 @@ static int ehci_probe(struct device_d *dev)
 
 	if (pdata) {
 		ehci->flags = pdata->flags;
-		ehci->hccr = (void *)(dev->map_base + pdata->hccr_offset);
-		ehci->hcor = (void *)(dev->map_base + pdata->hcor_offset);
+		ehci->hccr = (void *)(map_base + pdata->hccr_offset);
+		ehci->hcor = (void *)(map_base + pdata->hcor_offset);
 	}
 	else {
 		/* default to EHCI_HAS_TT to not change behaviour of boards
 		 * with platform_data
 		 */
 		ehci->flags = EHCI_HAS_TT;
-		ehci->hccr = (void *)(dev->map_base + 0x100);
-		ehci->hcor = (void *)(dev->map_base + 0x140);
+		ehci->hccr = (void *)(map_base + 0x100);
+		ehci->hcor = (void *)(map_base + 0x140);
 	}
 
 	host->init = ehci_init;
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index f9a425e..ce01ca6 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -75,8 +75,8 @@ int register_framebuffer(struct fb_info *info)
 	info->cdev.size = info->xres * info->yres * (info->bits_per_pixel >> 3);
 	info->cdev.dev = &info->dev;
 	info->cdev.priv = info;
-	info->cdev.dev->map_base = (unsigned long)info->screen_base;
-	info->cdev.dev->size = info->cdev.size;
+	dev_resource_set_start(info->cdev.dev, (resource_size_t)info->screen_base);
+	dev_resource_set_size(info->cdev.dev, info->cdev.size);
 
 	dev = &info->dev;
 	dev->priv = info;
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 7e2c74b..f6ac26f 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -867,7 +867,7 @@ static int imxfb_probe(struct device_d *dev)
 	fbi = xzalloc(sizeof(*fbi));
 	info = &fbi->info;
 
-	fbi->regs = (void *)dev->map_base;
+	fbi->regs = (void *)dev_resource_get_start(dev);
 	fbi->dev = dev;
 	info->priv = fbi;
 	info->mode = pdata->mode;
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index ac51858..5b1fd9d 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -547,7 +547,7 @@ static int imxfb_probe(struct device_d *dev)
 	info = &fbi->info;
 
 	fbi->mode = pdata->mode;
-	fbi->regs = (void *)dev->map_base;
+	fbi->regs = (void *)dev_resource_get_start(dev);
 	fbi->pcr = pdata->mode->pcr;
 	fbi->pwmr = pdata->pwmr;
 	fbi->lscr1 = pdata->lscr1;
diff --git a/fs/devfs.c b/fs/devfs.c
index 7019c8d..8b8e96e 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -216,7 +216,7 @@ static int devfs_ioctl(struct device_d *_dev, FILE *f, int request, void *buf)
 
 static int devfs_truncate(struct device_d *dev, FILE *f, ulong size)
 {
-	if (size > f->dev->size)
+	if (size > dev_resource_get_size(f->dev))
 		return -ENOSPC;
 	return 0;
 }
diff --git a/fs/fs.c b/fs/fs.c
index 3b5f284..74d654b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1012,14 +1012,16 @@ ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong
 {
 	ulong size;
 	struct device_d *dev;
+	resource_size_t map_base;
 
 	if (!cdev->dev)
 		return -1;
 	dev = cdev->dev;
+	map_base = dev_resource_get_start(cdev->dev);
 
-	size = min((ulong)count, dev->size - offset);
-	debug("mem_read: dev->map_base: %p size: %d offset: %d\n",dev->map_base, size, offset);
-	memcpy_sz(buf, (void *)(dev->map_base + offset), size, flags & O_RWSIZE_MASK);
+	size = min((ulong)count, dev_resource_get_size(dev) - offset);
+	debug("mem_read: map_base: %p size: %d offset: %d\n", map_base, size, offset);
+	memcpy_sz(buf, (void *)(map_base + offset), size, flags & O_RWSIZE_MASK);
 	return size;
 }
 EXPORT_SYMBOL(mem_read);
@@ -1028,13 +1030,15 @@ ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, ulong offset
 {
 	ulong size;
 	struct device_d *dev;
+	resource_size_t map_base;
 
 	if (!cdev->dev)
 		return -1;
 	dev = cdev->dev;
+	map_base = dev_resource_get_start(cdev->dev);
 
-	size = min((ulong)count, dev->size - offset);
-	memcpy_sz((void *)(dev->map_base + offset), buf, size, flags & O_RWSIZE_MASK);
+	size = min((ulong)count, map_base - offset);
+	memcpy_sz((void *)(map_base + offset), buf, size, flags & O_RWSIZE_MASK);
 	return size;
 }
 EXPORT_SYMBOL(mem_write);
diff --git a/include/driver.h b/include/driver.h
index b9edca0..59e1bd8 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -24,6 +24,7 @@
 #define DRIVER_H
 
 #include <linux/list.h>
+#include <linux/ioport.h>
 
 #define MAX_DRIVER_NAME		32
 #define FORMAT_DRIVER_MANE_ID	"%s%d"
@@ -70,11 +71,7 @@ struct device_d {
 	 * something like eth0 or nor0. */
 	int id;
 
-	resource_size_t size;
-
-	/*! For devices which are directly mapped into memory, i.e. NOR
-	 * Flash or SDRAM. */
-	resource_size_t map_base;
+	struct resource resource_base;
 
 	void *platform_data; /*! board specific information about this device */
 
@@ -184,6 +181,29 @@ static inline const char *dev_name(const struct device_d *dev)
 	return dev_id(dev);
 }
 
+/* ressource helper */
+static inline resource_size_t dev_resource_get_start(struct device_d *dev)
+{
+	return dev->resource_base.start;
+}
+
+static inline void dev_resource_set_start(struct device_d *dev,
+					  resource_size_t start)
+{
+	dev->resource_base.start = start;
+}
+
+static inline resource_size_t dev_resource_get_size(struct device_d *dev)
+{
+	return dev->resource_base.size;
+}
+
+static inline void dev_resource_set_size(struct device_d *dev,
+					 resource_size_t size)
+{
+	dev->resource_base.size = size;
+}
+
 /* linear list over all available devices
  */
 extern struct list_head device_list;
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
new file mode 100644
index 0000000..5143115
--- /dev/null
+++ b/include/linux/ioport.h
@@ -0,0 +1,115 @@
+/*
+ * ioport.h	Definitions of routines for detecting, reserving and
+ *		allocating system resources.
+ *
+ * Authors:	Linus Torvalds
+ */
+
+#ifndef _LINUX_IOPORT_H
+#define _LINUX_IOPORT_H
+
+#ifndef __ASSEMBLY__
+#include <linux/compiler.h>
+#include <linux/types.h>
+/*
+ * Resources are tree-like, allowing
+ * nesting etc..
+ */
+struct resource {
+	resource_size_t start;
+	resource_size_t size;
+	const char *name;
+	unsigned long flags;
+};
+
+/*
+ * IO resources have these defined flags.
+ */
+#define IORESOURCE_BITS		0x000000ff	/* Bus-specific bits */
+
+#define IORESOURCE_TYPE_BITS	0x00001f00	/* Resource type */
+#define IORESOURCE_IO		0x00000100
+#define IORESOURCE_MEM		0x00000200
+#define IORESOURCE_IRQ		0x00000400
+#define IORESOURCE_DMA		0x00000800
+#define IORESOURCE_BUS		0x00001000
+
+#define IORESOURCE_PREFETCH	0x00002000	/* No side effects */
+#define IORESOURCE_READONLY	0x00004000
+#define IORESOURCE_CACHEABLE	0x00008000
+#define IORESOURCE_RANGELENGTH	0x00010000
+#define IORESOURCE_SHADOWABLE	0x00020000
+
+#define IORESOURCE_SIZEALIGN	0x00040000	/* size indicates alignment */
+#define IORESOURCE_STARTALIGN	0x00080000	/* start field is alignment */
+
+#define IORESOURCE_MEM_64	0x00100000
+#define IORESOURCE_WINDOW	0x00200000	/* forwarded by bridge */
+#define IORESOURCE_MUXED	0x00400000	/* Resource is software muxed */
+
+#define IORESOURCE_EXCLUSIVE	0x08000000	/* Userland may not map this resource */
+#define IORESOURCE_DISABLED	0x10000000
+#define IORESOURCE_UNSET	0x20000000
+#define IORESOURCE_AUTO		0x40000000
+#define IORESOURCE_BUSY		0x80000000	/* Driver has marked this resource busy */
+
+/* PnP IRQ specific bits (IORESOURCE_BITS) */
+#define IORESOURCE_IRQ_HIGHEDGE		(1<<0)
+#define IORESOURCE_IRQ_LOWEDGE		(1<<1)
+#define IORESOURCE_IRQ_HIGHLEVEL	(1<<2)
+#define IORESOURCE_IRQ_LOWLEVEL		(1<<3)
+#define IORESOURCE_IRQ_SHAREABLE	(1<<4)
+#define IORESOURCE_IRQ_OPTIONAL		(1<<5)
+
+/* PnP DMA specific bits (IORESOURCE_BITS) */
+#define IORESOURCE_DMA_TYPE_MASK	(3<<0)
+#define IORESOURCE_DMA_8BIT		(0<<0)
+#define IORESOURCE_DMA_8AND16BIT	(1<<0)
+#define IORESOURCE_DMA_16BIT		(2<<0)
+
+#define IORESOURCE_DMA_MASTER		(1<<2)
+#define IORESOURCE_DMA_BYTE		(1<<3)
+#define IORESOURCE_DMA_WORD		(1<<4)
+
+#define IORESOURCE_DMA_SPEED_MASK	(3<<6)
+#define IORESOURCE_DMA_COMPATIBLE	(0<<6)
+#define IORESOURCE_DMA_TYPEA		(1<<6)
+#define IORESOURCE_DMA_TYPEB		(2<<6)
+#define IORESOURCE_DMA_TYPEF		(3<<6)
+
+/* PnP memory I/O specific bits (IORESOURCE_BITS) */
+#define IORESOURCE_MEM_WRITEABLE	(1<<0)	/* dup: IORESOURCE_READONLY */
+#define IORESOURCE_MEM_CACHEABLE	(1<<1)	/* dup: IORESOURCE_CACHEABLE */
+#define IORESOURCE_MEM_RANGELENGTH	(1<<2)	/* dup: IORESOURCE_RANGELENGTH */
+#define IORESOURCE_MEM_TYPE_MASK	(3<<3)
+#define IORESOURCE_MEM_8BIT		(0<<3)
+#define IORESOURCE_MEM_16BIT		(1<<3)
+#define IORESOURCE_MEM_8AND16BIT	(2<<3)
+#define IORESOURCE_MEM_32BIT		(3<<3)
+#define IORESOURCE_MEM_SHADOWABLE	(1<<5)	/* dup: IORESOURCE_SHADOWABLE */
+#define IORESOURCE_MEM_EXPANSIONROM	(1<<6)
+
+/* PnP I/O specific bits (IORESOURCE_BITS) */
+#define IORESOURCE_IO_16BIT_ADDR	(1<<0)
+#define IORESOURCE_IO_FIXED		(1<<1)
+
+/* PCI ROM control bits (IORESOURCE_BITS) */
+#define IORESOURCE_ROM_ENABLE		(1<<0)	/* ROM is enabled, same as PCI_ROM_ADDRESS_ENABLE */
+#define IORESOURCE_ROM_SHADOW		(1<<1)	/* ROM is copy at C000:0 */
+#define IORESOURCE_ROM_COPY		(1<<2)	/* ROM is alloc'd copy, resource field overlaid */
+#define IORESOURCE_ROM_BIOS_COPY	(1<<3)	/* ROM is BIOS copy, resource field overlaid */
+
+/* PCI control bits.  Shares IORESOURCE_BITS with above PCI ROM.  */
+#define IORESOURCE_PCI_FIXED		(1<<4)	/* Do not move resource */
+
+static inline resource_size_t resource_size(const struct resource *res)
+{
+	return res->size;
+}
+static inline unsigned long resource_type(const struct resource *res)
+{
+	return res->flags & IORESOURCE_TYPE_BITS;
+}
+
+#endif /* __ASSEMBLY__ */
+#endif	/* _LINUX_IOPORT_H */
diff --git a/lib/driver.c b/lib/driver.c
index 66d8fee..6ebacbb 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -225,7 +225,7 @@ int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
 
 	if (flags & PROT_WRITE)
 		return -EACCES;
-	*map = (void *)cdev->dev->map_base;
+	*map = (void *)dev_resource_get_start(cdev->dev);
 	return 0;
 }
 
@@ -234,7 +234,7 @@ int generic_memmap_rw(struct cdev *cdev, void **map, int flags)
 	if (!cdev->dev)
 		return -EINVAL;
 
-	*map = (void *)cdev->dev->map_base;
+	*map = (void *)dev_resource_get_start(cdev->dev);
 	return 0;
 }
 
@@ -323,7 +323,8 @@ static int do_devinfo(struct command *cmdtp, int argc, char *argv[])
 		}
 
 		printf("base  : 0x%08x\nsize  : 0x%08x\ndriver: %s\n\n",
-			dev->map_base, dev->size,
+			dev_resource_get_start(dev),
+			dev_resource_get_size(dev),
 			dev->driver ? 
 				dev->driver->name : "none");
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
