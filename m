Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PGyGd-0007mA-Gk
	for barebox@lists.infradead.org; Fri, 12 Nov 2010 18:22:53 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 12 Nov 2010 19:18:54 +0100
Message-Id: <1289585938-22813-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101112180228.GC13661@game.jcrosoft.org>
References: <20101112180228.GC13661@game.jcrosoft.org>
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
Subject: [PATCH 1/5] device: introduce resource structure to simplify resource
	delaration
To: barebox@lists.infradead.org

introdude also some helper to manager them

and add multi resource per device support

ram device: use resource structure instead of memory_platform_data

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Documentation/porting.txt                          |   11 ++-
 arch/arm/boards/a9m2410/a9m2410.c                  |   61 ++++++++---
 arch/arm/boards/a9m2440/a9m2440.c                  |   48 ++++++--
 arch/arm/boards/at91sam9261ek/init.c               |   11 ++-
 arch/arm/boards/at91sam9263ek/init.c               |   11 ++-
 arch/arm/boards/chumby_falconwing/falconwing.c     |   37 +++++--
 arch/arm/boards/edb93xx/edb93xx.c                  |   82 +++++++++-----
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   37 +++++--
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |   74 ++++++++++---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |   37 +++++--
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |   28 ++++--
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   53 ++++++----
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   46 ++++++--
 arch/arm/boards/freescale-mx51-pdk/board.c         |   15 ++-
 arch/arm/boards/guf-cupid/board.c                  |   64 +++++++++---
 arch/arm/boards/guf-neso/board.c                   |   26 +++--
 arch/arm/boards/imx21ads/imx21ads.c                |   36 +++++--
 arch/arm/boards/imx27ads/imx27ads.c                |   26 +++--
 arch/arm/boards/mmccpu/init.c                      |   11 ++-
 arch/arm/boards/netx/netx.c                        |   37 +++++--
 arch/arm/boards/nhk8815/setup.c                    |   11 ++-
 arch/arm/boards/omap/board-beagle.c                |   46 ++++++--
 arch/arm/boards/omap/board-omap3evm.c              |   34 ++++--
 arch/arm/boards/omap/board-sdp343x.c               |   26 +++--
 arch/arm/boards/omap/devices-gpmc-nand.c           |   11 ++-
 arch/arm/boards/pcm037/pcm037.c                    |   89 +++++++++++-----
 arch/arm/boards/pcm038/pcm038.c                    |   52 ++++++---
 arch/arm/boards/pcm043/pcm043.c                    |   26 +++--
 arch/arm/boards/phycard-i.MX27/pca100.c            |   37 +++++--
 arch/arm/boards/pm9261/init.c                      |   22 +++-
 arch/arm/boards/pm9263/init.c                      |   11 ++-
 arch/arm/boards/scb9328/scb9328.c                  |   49 ++++++---
 arch/arm/lib/armlinux.c                            |    4 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |  114 +++++++++++++++----
 arch/arm/mach-at91/at91sam9261_devices.c           |   70 +++++++++---
 arch/arm/mach-at91/at91sam9263_devices.c           |   81 +++++++++++---
 arch/arm/mach-at91/at91sam9g45_devices.c           |   92 ++++++++++++----
 arch/arm/mach-imx/devices.c                        |    4 +-
 arch/arm/mach-imx/iim.c                            |   17 ++-
 arch/arm/mach-imx/imx25.c                          |   42 ++++++--
 arch/arm/mach-nomadik/8815.c                       |   37 +++++--
 arch/blackfin/boards/ipe337/ipe337.c               |   48 ++++++--
 arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c     |  102 +++++++++++++-----
 arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c |   72 +++++++++----
 arch/ppc/boards/pcm030/pcm030.c                    |   61 ++++++++---
 arch/sandbox/board/hostfile.c                      |    4 +-
 arch/sandbox/mach-sandbox/include/mach/hostfile.h  |   10 ++-
 arch/sandbox/os/common.c                           |    4 +-
 arch/x86/boards/x86_generic/generic_pc.c           |   32 ++++--
 commands/mem.c                                     |   21 ++--
 common/startup.c                                   |   13 ++-
 drivers/ata/bios.c                                 |    4 +-
 drivers/ata/disk_drive.c                           |   13 ++-
 drivers/i2c/busses/i2c-imx.c                       |   22 ++--
 drivers/i2c/busses/i2c-omap.c                      |    4 +-
 drivers/mci/imx-esdhc.c                            |    2 +-
 drivers/mci/imx.c                                  |    3 +-
 drivers/mci/mci-core.c                             |    4 +-
 drivers/mci/s3c.c                                  |  106 ++++++++++--------
 drivers/mci/stm378x.c                              |   79 ++++++++------
 drivers/mtd/nand/atmel_nand.c                      |    2 +-
 drivers/mtd/nand/nand_imx.c                        |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |   13 ++-
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
 drivers/serial/serial_imx.c                        |    2 +-
 drivers/serial/serial_mpc5xxx.c                    |   20 ++--
 drivers/serial/serial_netx.c                       |   34 +++---
 drivers/serial/serial_ns16550.c                    |   12 +-
 drivers/serial/serial_pl010.c                      |   15 ++-
 drivers/serial/serial_s3c24x0.c                    |   36 +++---
 drivers/serial/stm-serial.c                        |   44 ++++----
 drivers/spi/imx_spi.c                              |    2 +-
 drivers/usb/gadget/fsl_udc.c                       |    2 +-
 drivers/usb/host/ehci-hcd.c                        |    9 +-
 drivers/video/fb.c                                 |    4 +-
 drivers/video/imx-ipu-fb.c                         |    2 +-
 drivers/video/imx.c                                |    2 +-
 fs/devfs.c                                         |    2 +-
 fs/fs.c                                            |   14 ++-
 include/driver.h                                   |   48 +++++++--
 include/linux/ioport.h                             |  115 ++++++++++++++++++++
 lib/driver.c                                       |    7 +-
 91 files changed, 1931 insertions(+), 801 deletions(-)
 create mode 100644 include/linux/ioport.h

diff --git a/Documentation/porting.txt b/Documentation/porting.txt
index ccfe598..abf9089 100644
--- a/Documentation/porting.txt
+++ b/Documentation/porting.txt
@@ -32,10 +32,17 @@ extra-y += barebox.lds
   To see anything you have to at least register a console. In scb9328.c this
   looks like this:
 
+	static struct resource scb9328_serial_resources[] = {
+		[0] = {
+			.start	= IMX_UART1_BASE,
+			.size	= 4096,
+		},
+}	;
+
 	static struct device_d scb9328_serial_device = {
 		.name     = "imx_serial",
-		.map_base = IMX_UART1_BASE,
-		.size     = 4096,
+		.num_resources	= ARRAY_SIZE(scb9328_serial_resources),
+		.resource	= scb9328_serial_resources,
 	};
 
 	static int scb9328_console_init(void)
diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 57d8fa3..c1bd307 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -35,16 +35,19 @@
 #include <mach/s3c24x0-iomap.h>
 #include <mach/s3c24x0-nand.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name		= "ram0",
-	.flags		= DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= CS6_BASE,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name     	= "ram",
-	.map_base	= CS6_BASE,
-	.platform_data  = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 // {"NAND 1MiB 3,3V 8-bit", 0xec, 256, 1, 0x1000, 0},
@@ -52,10 +55,17 @@ static struct s3c24x0_nand_platform_data nand_info = {
 	.nand_timing = CALC_NFCONF_TIMING(A9M2410_TACLS, A9M2410_TWRPH0, A9M2410_TWRPH1)
 };
 
+static struct resource nand_dev_resources[] = {
+	[0] = {
+		.start = S3C24X0_NAND_BASE,
+	},
+};
+
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "s3c24x0_nand",
-	.map_base = S3C24X0_NAND_BASE,
+	.num_resources	= ARRAY_SIZE(nand_dev_resources),
+	.resource	= nand_dev_resources,
 	.platform_data	= &nand_info,
 };
 
@@ -64,11 +74,18 @@ static struct device_d nand_dev = {
  * connected to CS line 1 and interrupt line
  * GPIO3, data width is 32 bit
  */
+static struct resource network_dev_resources[] = {
+	[0] = {
+		.start	= CS1_BASE + 0x300,
+		.size	= 16,
+	},
+};
+
 static struct device_d network_dev = {
 	.id       = -1,
         .name     = "smc91c111",
-        .map_base = CS1_BASE + 0x300,
-        .size     = 16,
+	.num_resources	= ARRAY_SIZE(network_dev_resources),
+	.resource	= network_dev_resources,
 };
 
 static int a9m2410_devices_init(void)
@@ -83,25 +100,25 @@ static int a9m2410_devices_init(void)
 
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
 
@@ -165,7 +182,8 @@ static int a9m2410_devices_init(void)
 #endif
 
 	armlinux_add_dram(&sdram_dev);
-	armlinux_set_bootparams((void *)sdram_dev.map_base + 0x100);
+
+	armlinux_set_bootparams((void *)dev_resource_get_start(&sdram_dev) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2410);
 
 	return 0;
@@ -180,11 +198,18 @@ void __bare_init nand_boot(void)
 }
 #endif
 
+static struct resource a9m2410_serial_resources[] = {
+	[0] = {
+		.start	= UART1_BASE,
+		.size	= UART1_SIZE,
+	},
+};
+
 static struct device_d a9m2410_serial_device = {
 	.id       = -1,
 	.name     = "s3c24x0_serial",
-	.map_base = UART1_BASE,
-	.size     = UART1_SIZE,
+	.num_resources	= ARRAY_SIZE(a9m2410_serial_resources),
+	.resource	= a9m2410_serial_resources,
 };
 
 static int a9m2410_console_init(void)
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 764cd65..47a120d 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -38,26 +38,36 @@
 
 #include "baseboards.h"
 
-static struct memory_platform_data ram_pdata = {
-	.name		= "ram0",
-	.flags		= DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= CS6_BASE,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.map_base	= CS6_BASE,
-	.platform_data	= &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static struct s3c24x0_nand_platform_data nand_info = {
 	.nand_timing = CALC_NFCONF_TIMING(A9M2440_TACLS, A9M2440_TWRPH0, A9M2440_TWRPH1)
 };
 
+static struct resource nand_dev_resources[] = {
+	[0] = {
+		.start	= S3C24X0_NAND_BASE,
+	},
+};
+
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "s3c24x0_nand",
-	.map_base = S3C24X0_NAND_BASE,
+	.num_resources	= ARRAY_SIZE(nand_dev_resources),
+	.resource	= nand_dev_resources,
 	.platform_data	= &nand_info,
 };
 
@@ -66,11 +76,18 @@ static struct device_d nand_dev = {
  * Connected to CS line 5 + A24 and interrupt line EINT9,
  * data width is 16 bit
  */
+static struct resource network_dev_resources[] = {
+	[0] = {
+		.start	= CS5_BASE + (1 << 24) + 0x300,
+		.size	= 16,
+	},
+};
+
 static struct device_d network_dev = {
 	.id	  = -1,
 	.name     = "cs8900",
-	.map_base = CS5_BASE + (1 << 24) + 0x300,
-	.size     = 16,
+	.num_resources	= ARRAY_SIZE(network_dev_resources),
+	.resource	= network_dev_resources,
 };
 
 static int a9m2440_check_for_ram(uint32_t addr)
@@ -136,7 +153,7 @@ static int a9m2440_devices_init(void)
 		break;
 	}
 
-	sdram_dev.size = s3c24x0_get_memory_size();
+	dev_resource_set_size(&sdram_dev, s3c24x0_get_memory_size());
 
 	/* ----------- configure the access to the outer space ---------- */
 	reg = readl(BWSCON);
@@ -171,7 +188,7 @@ static int a9m2440_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 	armlinux_add_dram(&sdram_dev);
-	armlinux_set_bootparams((void *)sdram_dev.map_base + 0x100);
+	armlinux_set_bootparams((void *)dev_resource_get_start(&sdram_dev) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2440);
 
 	return 0;
@@ -186,11 +203,18 @@ void __bare_init nand_boot(void)
 }
 #endif
 
+static struct resource a9m2440_serial_resources[] = {
+	[0] = {
+		.start	= UART1_BASE,
+		.size	= UART1_SIZE,
+	},
+};
+
 static struct device_d a9m2440_serial_device = {
 	.id	  = -1,
 	.name     = "s3c24x0_serial",
-	.map_base = UART1_BASE,
-	.size     = UART1_SIZE,
+	.num_resources	= ARRAY_SIZE(a9m2440_serial_resources),
+	.resource	= a9m2440_serial_resources,
 };
 
 static int a9m2440_console_init(void)
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 576a022..31f18ec 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -88,6 +88,13 @@ static void ek_add_device_nand(void)
  * DM9000 ethernet device
  */
 #if defined(CONFIG_DRIVER_NET_DM9000)
+static struct resource dm9000_dev_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_2,
+		.size	= 8,
+	},
+};
+
 static struct dm9000_platform_data dm9000_data = {
 	.iobase		= AT91_CHIPSELECT_2,
 	.iodata		= AT91_CHIPSELECT_2 + 4,
@@ -98,8 +105,8 @@ static struct dm9000_platform_data dm9000_data = {
 static struct device_d dm9000_dev = {
 	.id		= 0,
 	.name		= "dm9000",
-	.map_base	= AT91_CHIPSELECT_2,
-	.size		= 8,
+	.num_resources	= ARRAY_SIZE(dm9000_dev_resources),
+	.resource	= dm9000_dev_resources,
 	.platform_data	= &dm9000_data,
 };
 
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 8448866..66172c4 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -87,11 +87,18 @@ static void ek_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_0,
+		.size	= 8 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id		= -1,
 	.name		= "cfi_flash",
-	.map_base	= AT91_CHIPSELECT_0,
-	.size		= 8 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
 static struct at91_ether_platform_data macb_pdata = {
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 952a384..8daec47 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -29,16 +29,19 @@
 #include <mach/clock.h>
 #include <mach/mci.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= IMX_MEMORY_BASE,
+		.size	= 64 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.name     = "mem",
-	.map_base = IMX_MEMORY_BASE,
-	.size     = 64 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static struct stm_mci_platform_data mci_pdata = {
@@ -46,9 +49,16 @@ static struct stm_mci_platform_data mci_pdata = {
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
 };
 
+static struct resource mci_dev_resources[] = {
+	[0] = {
+		.start	= IMX_SSP1_BASE,
+	},
+};
+
 static struct device_d mci_dev = {
 	.name     = "stm_mci",
-	.map_base = IMX_SSP1_BASE,
+	.num_resources	= ARRAY_SIZE(mci_dev_resources),
+	.resource	= mci_dev_resources,
 	.platform_data = &mci_pdata,
 };
 
@@ -271,7 +281,7 @@ static int falconwing_devices_init(void)
 	register_device(&mci_dev);
 
 	armlinux_add_dram(&sdram_dev);
-	armlinux_set_bootparams((void*)(sdram_dev.map_base + 0x100));
+	armlinux_set_bootparams((void*)(dev_resource_get_start(&sdram_dev) + 0x100));
 	armlinux_set_architecture(MACH_TYPE_CHUMBY);
 
 	rc = register_persistant_environment();
@@ -283,10 +293,17 @@ static int falconwing_devices_init(void)
 
 device_initcall(falconwing_devices_init);
 
+static struct resource falconwing_serial_resources[] = {
+	[0] = {
+		.start	= IMX_DBGUART_BASE,
+		.size	= 8192,
+	},
+};
+
 static struct device_d falconwing_serial_device = {
 	.name     = "stm_serial",
-	.map_base = IMX_DBGUART_BASE,
-	.size     = 8192,
+	.num_resources	= ARRAY_SIZE(falconwing_serial_resources),
+	.resource	= falconwing_serial_resources,
 };
 
 static int falconwing_console_init(void)
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 0f127b5..36cbb51 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -38,68 +38,87 @@
  * Up to 32MiB NOR type flash, connected to
  * CS line 6, data width is 16 bit
  */
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= 0x60000000,
+		.size	= EDB93XX_CFI_FLASH_SIZE,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0x60000000,
-	.size     = EDB93XX_CFI_FLASH_SIZE,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
-static struct memory_platform_data ram_dev_pdata0 = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram0_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= CONFIG_EP93XX_SDRAM_BANK0_BASE,
+		.size	= CONFIG_EP93XX_SDRAM_BANK0_SIZE,
+		.flags = DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = CONFIG_EP93XX_SDRAM_BANK0_BASE,
-	.size     = CONFIG_EP93XX_SDRAM_BANK0_SIZE,
-	.platform_data = &ram_dev_pdata0,
+	.num_resources	= ARRAY_SIZE(sdram0_dev_resources),
+	.resource	= sdram0_dev_resources,
 };
 
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
-static struct memory_platform_data ram_dev_pdata1 = {
-	.name = "ram1",
-	.flags = DEVFS_RDWR,
+static struct resource sdram1_dev_resources[] = {
+	[0] = {
+		.name	= "ram1",
+		.start	= CONFIG_EP93XX_SDRAM_BANK1_BASE,
+		.size	= CONFIG_EP93XX_SDRAM_BANK1_SIZE,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram1_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = CONFIG_EP93XX_SDRAM_BANK1_BASE,
-	.size     = CONFIG_EP93XX_SDRAM_BANK1_SIZE,
-	.platform_data = &ram_dev_pdata1,
+	.num_resources	= ARRAY_SIZE(sdram1_dev_resources),
+	.resource	= sdram1_dev_resources,
 };
 #endif
 
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
-static struct memory_platform_data ram_dev_pdata2 = {
-	.name = "ram2",
-	.flags = DEVFS_RDWR,
+static struct resource sdram2_dev_resources[] = {
+	[0] = {
+		.name	= "ram2",
+		.start	= CONFIG_EP93XX_SDRAM_BANK2_BASE,
+		.size	= CONFIG_EP93XX_SDRAM_BANK2_SIZE,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram2_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = CONFIG_EP93XX_SDRAM_BANK2_BASE,
-	.size     = CONFIG_EP93XX_SDRAM_BANK2_SIZE,
-	.platform_data = &ram_dev_pdata2,
+	.num_resources	= ARRAY_SIZE(sdram2_dev_resources),
+	.resource	= sdram2_dev_resources,
 };
 #endif
 
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
-static struct memory_platform_data ram_dev_pdata3 = {
-	.name = "ram3",
-	.flags = DEVFS_RDWR,
+static struct resource sdram3_dev_resources[] = {
+	[0] = {
+		.name	= "ram3",
+		.start	= CONFIG_EP93XX_SDRAM_BANK3_BASE,
+		.size	= CONFIG_EP93XX_SDRAM_BANK3_SIZE,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram3_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = CONFIG_EP93XX_SDRAM_BANK3_BASE,
-	.size     = CONFIG_EP93XX_SDRAM_BANK3_SIZE,
-	.platform_data = &ram_dev_pdata3,
+	.num_resources	= ARRAY_SIZE(sdram3_dev_resources),
+	.resource	= sdram3_dev_resources,
 };
 #endif
 
@@ -154,11 +173,18 @@ static int ep93xx_devices_init(void)
 
 device_initcall(ep93xx_devices_init);
 
+static struct resource edb93xx_serial_resources[] = {
+	[0] = {
+		.start	= UART1_BASE,
+		.size	= 4096,
+	},
+};
+
 static struct device_d edb93xx_serial_device = {
 	.id	  = -1,
 	.name     = "pl010_serial",
-	.map_base = UART1_BASE,
-	.size     = 4096,
+	.num_resources	= ARRAY_SIZE(edb93xx_serial_resources),
+	.resource	= edb93xx_serial_resources,
 };
 
 static int edb93xx_console_init(void)
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 3048c3f..1c5c31d 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -89,17 +89,20 @@ static struct fec_platform_data fec_info = {
 	.phy_addr	= 1,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
+static struct resource sdram0_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= IMX_SDRAM_CS0,
+		.size	= 64 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
-	.size     = 64 * 1024 * 1024,
-	.platform_data = &sdram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram0_dev_resources),
+	.resource	= sdram0_dev_resources,
 };
 
 struct imx_nand_platform_data nand_info = {
@@ -155,14 +158,28 @@ static void imx25_usb_init(void)
 	writel(tmp | 0x3, IMX_OTG_BASE + 0x5a8);
 }
 
+static struct resource usbh2_dev_resources[] = {
+	[0] = {
+		.start	= IMX_OTG_BASE + 0x400,
+		.size	= 0x200,
+	},
+};
+
 static struct device_d usbh2_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
+	.num_resources	= ARRAY_SIZE(usbh2_dev_resources),
+	.resource	= usbh2_dev_resources,
 };
 #endif
 
+static struct resource usbotg_dev_resources[] = {
+	[0] = {
+		.start	= IMX_OTG_BASE,
+		.size	= 0x200,
+	},
+};
+
 static struct fsl_usb2_platform_data usb_pdata = {
 	.operating_mode	= FSL_USB2_DR_DEVICE,
 	.phy_mode	= FSL_USB2_PHY_UTMI,
@@ -170,8 +187,8 @@ static struct fsl_usb2_platform_data usb_pdata = {
 
 static struct device_d usbotg_dev = {
 	.name     = "fsl-udc",
-	.map_base = IMX_OTG_BASE,
-	.size     = 0x200,
+	.num_resources	= ARRAY_SIZE(usbotg_dev_resources),
+	.resource	= usbotg_dev_resources,
 	.platform_data = &usb_pdata,
 };
 
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 4567cba..598fc37 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -48,38 +48,55 @@
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
 
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= 0xC0000000,
+		.size	= 32 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xC0000000,
-	.size     = 32 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 #ifdef CONFIG_EUKREA_CPUIMX27_NOR_64MB
+static struct resource cfi_dev1_resources[] = {
+	[0] = {
+		.start	= 0xC2000000,
+		.size	= 32 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev1 = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xC2000000,
-	.size     = 32 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_dev1_resources),
+	.resource	= cfi_dev1_resources,
 };
 #endif
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 #if defined CONFIG_EUKREA_CPUIMX27_SDRAM_256MB
 #define SDRAM0	256
 #elif defined CONFIG_EUKREA_CPUIMX27_SDRAM_128MB
 #define SDRAM0	128
 #endif
 
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0xa0000000,
+		.size	= SDRAM0 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
+};
+
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = SDRAM0 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static struct fec_platform_data fec_info = {
@@ -128,11 +145,18 @@ static struct NS16550_plat quad_uart_serial_plat = {
 #define QUART_OFFSET 0x1000000
 #endif
 
+static struct resource quad_uart_serial_resources[] = {
+	[0] = {
+		.start	= IMX_CS3_BASE + QUART_OFFSET,
+		.size	= 0xF,
+	},
+};
+
 static struct device_d quad_uart_serial_device = {
 	.id = -1,
 	.name = "serial_ns16550",
-	.map_base = IMX_CS3_BASE + QUART_OFFSET,
-	.size = 0xF,
+	.num_resources	= ARRAY_SIZE(quad_uart_serial_resources),
+	.resource	= quad_uart_serial_resources,
 	.platform_data = (void *)&quad_uart_serial_plat,
 };
 #endif
@@ -191,11 +215,18 @@ static struct imx_fb_platform_data eukrea_cpuimx27_fb_data = {
 	.dmacr	= 0x00020010,
 };
 
+static struct resource imxfb_dev_resources[] = {
+	[0] = {
+		.start	= 0x10021000,
+		.size	= 0x00001000,
+	},
+};
+
 static struct device_d imxfb_dev = {
 	.id		= -1,
 	.name		= "imxfb",
-	.map_base	= 0x10021000,
-	.size		= 0x1000,
+	.num_resources	= ARRAY_SIZE(imxfb_dev_resources),
+	.resource	= imxfb_dev_resources,
 	.platform_data	= &eukrea_cpuimx27_fb_data,
 };
 #endif
@@ -307,11 +338,18 @@ static int eukrea_cpuimx27_devices_init(void)
 device_initcall(eukrea_cpuimx27_devices_init);
 
 #ifdef CONFIG_DRIVER_SERIAL_IMX
+static struct resource eukrea_cpuimx27_serial_resources[] = {
+	[0] = {
+		.start	= IMX_UART1_BASE,
+		.size	= 4096,
+	},
+};
+
 static struct device_d eukrea_cpuimx27_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
+	.num_resources	= ARRAY_SIZE(eukrea_cpuimx27_serial_resources),
+	.resource	= eukrea_cpuimx27_serial_resources,
 };
 #endif
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 07f320b..2e1ddd3 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -61,17 +61,20 @@ static struct fec_platform_data fec_info = {
 	.phy_addr	= 0x1F,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= IMX_SDRAM_CS0,
+		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.map_base	= IMX_SDRAM_CS0,
-	.size		= 128 * 1024 * 1024,
-	.platform_data	= &sdram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 struct imx_nand_platform_data nand_info = {
@@ -131,14 +134,28 @@ static void imx35_usb_init(void)
 	writel(tmp | 0x3, IMX_OTG_BASE + 0x5a8);
 }
 
+static struct resource usbh2_dev_resources[] = {
+	[0] = {
+		.start	= IMX_OTG_BASE + 0x400,
+		.size	= 0x200,
+	},
+};
+
 static struct device_d usbh2_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
+	.num_resources	= ARRAY_SIZE(usbh2_dev_resources),
+	.resource	= usbh2_dev_resources,
 };
 #endif
 
+static struct resource usbotg_dev_resources[] = {
+	[0] = {
+		.start	= IMX_OTG_BASE,
+		.size	= 0x200,
+	},
+};
+
 static struct fsl_usb2_platform_data usb_pdata = {
 	.operating_mode	= FSL_USB2_DR_DEVICE,
 	.phy_mode	= FSL_USB2_PHY_UTMI,
@@ -146,9 +163,9 @@ static struct fsl_usb2_platform_data usb_pdata = {
 
 static struct device_d usbotg_dev = {
 	.name     = "fsl-udc",
-	.map_base = IMX_OTG_BASE,
-	.size     = 0x200,
 	.platform_data = &usb_pdata,
+	.num_resources	= ARRAY_SIZE(usbotg_dev_resources),
+	.resource	= usbotg_dev_resources,
 };
 
 #ifdef CONFIG_MMU
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index 1ce72be..64b39b2 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -25,16 +25,19 @@
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= IMX_MEMORY_BASE,
+		.size	= 32 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.name     = "mem",
-	.map_base = IMX_MEMORY_BASE,
-	.size     = 32 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static int mx23_evk_devices_init(void)
@@ -42,7 +45,7 @@ static int mx23_evk_devices_init(void)
 	register_device(&sdram_dev);
 
 	armlinux_add_dram(&sdram_dev);
-	armlinux_set_bootparams((void*)(sdram_dev.map_base + 0x100));
+	armlinux_set_bootparams((void*)(dev_resource_get_start(&sdram_dev) + 0x100));
 	armlinux_set_architecture(MACH_TYPE_MX23EVK);
 
 	return 0;
@@ -50,10 +53,17 @@ static int mx23_evk_devices_init(void)
 
 device_initcall(mx23_evk_devices_init);
 
+static struct resource mx23_evk_serial_dev_resources[] = {
+	[0] = {
+		.start	= IMX_DBGUART_BASE,
+		.size	= 8192,
+	},
+};
+
 static struct device_d mx23_evk_serial_device = {
 	.name     = "stm_serial",
-	.map_base = IMX_DBGUART_BASE,
-	.size     = 8192,
+	.num_resources	= ARRAY_SIZE(mx23_evk_serial_dev_resources),
+	.resource	= mx23_evk_serial_dev_resources,
 };
 
 static int mx23_evk_console_init(void)
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 49b7f5c..cb9ce79 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -113,36 +113,42 @@ static struct fec_platform_data fec_info = {
 	.phy_addr	= 1,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
-};
-
-static struct device_d sdram0_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
+static struct resource sdram0_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
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
-	.platform_data = &sdram_pdata,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
-static struct memory_platform_data sram_pdata = {
-	.name	= "sram0",
-	.flags	= DEVFS_RDWR,
+static struct device_d sdram0_dev = {
+	.id	  = -1,
+	.name     = "mem",
+	.num_resources	= ARRAY_SIZE(sdram0_dev_resources),
+	.resource	= sdram0_dev_resources,
+};
+
+static struct resource sram0_dev_resources[] = {
+	[0] = {
+		.name	= "sram0",
+		.start	= 0x78000000,
+		.size	= 128 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0x78000000,
-	.size     = 128 * 1024,
-	.platform_data = &sram_pdata,
+	.num_resources	= ARRAY_SIZE(sram0_dev_resources),
+	.resource	= sram0_dev_resources,
 };
 
 struct imx_nand_platform_data nand_info = {
@@ -170,11 +176,18 @@ static void imx25_usb_init(void)
 	writel(tmp | 0x3, IMX_OTG_BASE + 0x5a8);
 }
 
+static struct resource usbh2_dev_resources[] = {
+	[0] = {
+		.start	= IMX_OTG_BASE + 0x400,
+		.size	= 0x00000200,
+	},
+};
+
 static struct device_d usbh2_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
+	.num_resources	= ARRAY_SIZE(usbh2_dev_resources),
+	.resource	= usbh2_dev_resources,
 };
 #endif
 
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 127bfb4..5dedbe3 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -59,11 +59,18 @@
 #define MX35PDK_BOARD_REV_1		0
 #define MX35PDK_BOARD_REV_2		1
 
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= IMX_CS0_BASE,
+		.size	= 64 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id		= -1,
 	.name		= "cfi_flash",
-	.map_base	= IMX_CS0_BASE,
-	.size		= 64 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
 static struct fec_platform_data fec_info = {
@@ -71,17 +78,20 @@ static struct fec_platform_data fec_info = {
 	.phy_addr	= 0x1F,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= IMX_SDRAM_CS0,
+		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.map_base	= IMX_SDRAM_CS0,
-	.size		= 128 * 1024 * 1024,
-	.platform_data	= &sdram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 struct imx_nand_platform_data nand_info = {
@@ -89,11 +99,18 @@ struct imx_nand_platform_data nand_info = {
 	.flash_bbt	= 1,
 };
 
+static struct resource smc911x_dev_resources[] = {
+	[0] = {
+		.start	= IMX_CS5_BASE,
+		.size	= IMX_CS5_RANGE,
+	},
+};
+
 static struct device_d smc911x_dev = {
 	.id		= -1,
 	.name		= "smc911x",
-	.map_base	= IMX_CS5_BASE,
-	.size		= IMX_CS5_RANGE,
+	.num_resources	= ARRAY_SIZE(smc911x_dev_resources),
+	.resource	= smc911x_dev_resources,
 };
 
 static struct i2c_board_info i2c_devices[] = {
@@ -104,10 +121,17 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
+static struct resource i2c_dev_resources[] = {
+	[0] = {
+		.start	= IMX_I2C1_BASE,
+	},
+};
+
 static struct device_d i2c_dev = {
 	.id		= -1,
 	.name		= "i2c-imx",
-	.map_base	= IMX_I2C1_BASE,
+	.num_resources	= ARRAY_SIZE(i2c_dev_resources),
+	.resource	= i2c_dev_resources,
 };
 
 /*
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index ff779ca..158b657 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -41,17 +41,20 @@
 #include <mach/iomux-mx51.h>
 #include <mach/devices-imx51.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0x90000000,
+		.size	= 512 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id       = -1,
 	.name     = "mem",
-	.map_base = 0x90000000,
-	.size     = 512 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static struct fec_platform_data fec_info = {
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 6d7a99b..c62b604 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -48,24 +48,34 @@ static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
 
+static struct resource fec_dev_resources[] = {
+	[0] = {
+		.start	= IMX_FEC_BASE,
+	},
+};
+
 static struct device_d fec_dev = {
 	.id	  = -1,
 	.name     = "fec_imx",
-	.map_base = IMX_FEC_BASE,
+	.num_resources	= ARRAY_SIZE(fec_dev_resources),
+	.resource	= fec_dev_resources,
 	.platform_data	= &fec_info,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram0_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= IMX_SDRAM_CS0,
+		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram0_dev_resources),
+	.resource	= sdram0_dev_resources,
 };
 
 struct imx_nand_platform_data nand_info = {
@@ -74,10 +84,17 @@ struct imx_nand_platform_data nand_info = {
 	.flash_bbt = 1,
 };
 
+static struct resource nand_dev_resources[] = {
+	[0] = {
+		.start	= IMX_NFC_BASE,
+	},
+};
+
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "imx_nand",
-	.map_base = IMX_NFC_BASE,
+	.num_resources	= ARRAY_SIZE(nand_dev_resources),
+	.resource	= nand_dev_resources,
 	.platform_data	= &nand_info,
 };
 
@@ -122,17 +139,31 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 	.enable		= cupid_fb_enable,
 };
 
+static struct resource imx_ipu_fb_dev_resources[] = {
+	[0] = {
+		.start	= 0x53fc0000,
+		.size	= 0x1000,
+	},
+};
+
 static struct device_d imx_ipu_fb_dev = {
 	.id		= -1,
 	.name		= "imx-ipu-fb",
-	.map_base	= 0x53fc0000,
-	.size		= 0x1000,
+	.num_resources	= ARRAY_SIZE(imx_ipu_fb_dev_resources),
+	.resource	= imx_ipu_fb_dev_resources,
 	.platform_data	= &ipu_fb_data,
 };
 
+static struct resource esdhc_dev_resources[] = {
+	[0] = {
+		.start	= IMX_SDHC1_BASE,
+	},
+};
+
 static struct device_d esdhc_dev = {
 	.name		= "imx-esdhc",
-	.map_base	= IMX_SDHC1_BASE,
+	.num_resources	= ARRAY_SIZE(esdhc_dev_resources),
+	.resource	= esdhc_dev_resources,
 };
 
 #ifdef CONFIG_MMU
@@ -196,11 +227,18 @@ static int cupid_devices_init(void)
 
 device_initcall(cupid_devices_init);
 
+static struct resource cupid_serial_resources[] = {
+	[0] = {
+		.start	= IMX_UART1_BASE,
+		.size	= 16 * 1024,
+	},
+};
+
 static struct device_d cupid_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 16 * 1024,
+	.num_resources	= ARRAY_SIZE(cupid_serial_resources),
+	.resource	= cupid_serial_resources,
 };
 
 static struct pad_desc cupid_pads[] = {
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index d371dd6..5fdc1de 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -54,17 +54,20 @@
 #define LCD_POWER_GPIO (GPIO_PORTF + 18)
 #define BACKLIGHT_POWER_GPIO (GPIO_PORTE + 5)
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name 	= "ram0",
+		.start	= 0xa0000000,
+		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static struct fec_platform_data fec_info = {
@@ -128,11 +131,18 @@ static struct imx_fb_platform_data neso_fb_data = {
 
 #ifdef CONFIG_USB
 
+static struct resource usbh2_dev_resources[] = {
+	[0] = {
+		.start	= IMX_OTG_BASE + 0x400,
+		.size	= 0x200,
+	},
+};
+
 static struct device_d usbh2_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
+	.num_resources	= ARRAY_SIZE(usbh2_dev_resources),
+	.resource	= usbh2_dev_resources,
 };
 
 static void neso_usbh_init(void)
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 3942581..37768b5 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -41,24 +41,35 @@
 #define MX21ADS_IO_REG    0xCC800000
 #define MX21ADS_IO_LCDON  (1 << 9)
 
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= 0xC8000000,
+		.size	= 32 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xC8000000,
-	.size     = 32 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0xc0000000,
+		.size	= 64 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xc0000000,
-	.size     = 64 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 struct imx_nand_platform_data nand_info = {
@@ -66,10 +77,17 @@ struct imx_nand_platform_data nand_info = {
 	.hw_ecc = 1,
 };
 
+static struct resource cs8900_dev_resources[] = {
+	[0] = {
+		.start	= IMX_CS1_BASE,
+	},
+};
+
 static struct device_d cs8900_dev = {
 	.id	  = -1,
 	.name     = "cs8900",
-	.map_base = IMX_CS1_BASE,
+	.num_resources	= ARRAY_SIZE(cs8900_dev_resources),
+	.resource	= cs8900_dev_resources,
 	// IRQ is connected to UART3_RTS
 };
 
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index 0d433c1..2b3572a 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -34,24 +34,34 @@
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
 
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= 0xC0000000,
+		.size	= 32 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xC0000000,
-	.size     = 32 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0xa0000000,
+		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static struct fec_platform_data fec_info = {
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 7cba01c..8d18f7c 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -37,11 +37,18 @@
 #include <mach/gpio.h>
 #include <mach/io.h>
 
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_0,
+		.size	= 0,	/* zero means autodetect size */
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id		= -1,
 	.name		= "cfi_flash",
-	.map_base	= AT91_CHIPSELECT_0,
-	.size		= 0,	/* zero means autodetect size */
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
 static struct at91_ether_platform_data macb_pdata = {
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index c735d26..5f7e58a 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -30,24 +30,34 @@
 #include <generated/mach-types.h>
 #include <mach/netx-eth.h>
 
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= 0xC0000000,
+		.size	= 32 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xC0000000,
-	.size     = 32 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0x80000000,
+		.size	= 64 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0x80000000,
-	.size     = 64 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 struct netx_eth_platform_data eth0_data = {
@@ -92,11 +102,18 @@ static int netx_devices_init(void) {
 
 device_initcall(netx_devices_init);
 
+static struct resource netx_serial_resources[] = {
+	[0] = {
+		.start	= NETX_PA_UART0,
+		.size	= 0x40,
+	},
+};
+
 static struct device_d netx_serial_device = {
 	.id	  = -1,
 	.name     = "netx_serial",
-	.map_base = NETX_PA_UART0,
-	.size     = 0x40,
+	.num_resources	= ARRAY_SIZE(netx_serial_resources),
+	.resource	= netx_serial_resources,
 };
 
 static int netx_console_init(void)
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index 9cb0fd0..9d5e45d 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -33,11 +33,18 @@
 #include <mach/nand.h>
 #include <mach/fsmc.h>
 
+static struct resource network_dev_resources[] = {
+	[0] = {
+		.start	= 0x34000300,
+		.size	= 16,
+	},
+};
+
 static struct device_d nhk8815_network_dev = {
 	.id = -1,
 	.name = "smc91c111",
-	.map_base = 0x34000300,
-	.size = 16,
+	.num_resources	= ARRAY_SIZE(network_dev_resources),
+	.resource	= network_dev_resources,
 };
 
 static int nhk8815_nand_init(void)
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 6de2cce..ff2944a 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -240,11 +240,18 @@ static struct NS16550_plat serial_plat = {
 	.reg_write = omap_uart_write,
 };
 
+static struct resource beagle_serial_resources[] = {
+	[0] = {
+		.start	= OMAP_UART3_BASE,
+		.size	= 1024,
+	},
+};
+
 static struct device_d beagle_serial_device = {
 	.id = -1,
 	.name = "serial_ns16550",
-	.map_base = OMAP_UART3_BASE,
-	.size = 1024,
+	.num_resources	= ARRAY_SIZE(beagle_serial_resources),
+	.resource	= beagle_serial_resources,
 	.platform_data = (void *)&serial_plat,
 };
 
@@ -262,17 +269,20 @@ static int beagle_console_init(void)
 console_initcall(beagle_console_init);
 #endif /* CONFIG_DRIVER_SERIAL_NS16550 */
 
-static struct memory_platform_data sram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0x80000000,
+		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id = -1,
 	.name = "mem",
-	.map_base = 0x80000000,
-	.size = 128 * 1024 * 1024,
-	.platform_data = &sram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 #ifdef CONFIG_USB_EHCI_OMAP
@@ -292,19 +302,33 @@ static struct ehci_platform_data ehci_pdata = {
 	.hcor_offset = 0x110,
 };
 
+static struct resource usbh_dev_resources[] = {
+	[0] = {
+		.start	= 0x48064700,
+		.size	= 4 * 1024,
+	},
+};
+
 static struct device_d usbh_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = 0x48064700,
-	.size     = 4 * 1024,
+	.num_resources	= ARRAY_SIZE(usbh_dev_resources),
+	.resource	= usbh_dev_resources,
 	.platform_data = &ehci_pdata,
 };
 #endif /* CONFIG_USB_EHCI_OMAP */
 
+static struct resource i2c_dev_resources[] = {
+	[0] = {
+		.start	= OMAP_I2C1_BASE,
+	},
+};
+
 static struct device_d i2c_dev = {
 	.id		= -1,
 	.name		= "i2c-omap",
-	.map_base	= OMAP_I2C1_BASE,
+	.num_resources	= ARRAY_SIZE(i2c_dev_resources),
+	.resource	= i2c_dev_resources,
 };
 
 static struct i2c_board_info i2c_devices[] = {
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index c37f151..b8b71de 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -217,15 +217,22 @@ static struct NS16550_plat serial_plat = {
 	.reg_write	= omap_uart_write,
 };
 
-static struct device_d omap3evm_serial_device = {
-	.id		= -1,
-	.name		= "serial_ns16550",
+static struct resource omap3evm_serial_resources[] = {
+	[0] = {
 #if defined(CONFIG_OMAP3EVM_UART1)
-	.map_base	= OMAP_UART1_BASE,
+		.start	= OMAP_UART1_BASE,
 #elif defined(CONFIG_OMAP3EVM_UART3)
-	.map_base	= OMAP_UART3_BASE,
+		.start	= OMAP_UART3_BASE,
 #endif
-	.size		= 1024,
+		.size	= 1024,
+	},
+};
+
+static struct device_d omap3evm_serial_device = {
+	.id		= -1,
+	.name		= "serial_ns16550",
+	.num_resources	= ARRAY_SIZE(omap3evm_serial_resources),
+	.resource	= omap3evm_serial_resources,
 	.platform_data	= (void *)&serial_plat,
 };
 
@@ -241,17 +248,20 @@ static int omap3evm_init_console(void)
 console_initcall(omap3evm_init_console);
 #endif /* CONFIG_DRIVER_SERIAL_NS16550 */
 
-static struct memory_platform_data sram_pdata = {
-	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0x80000000,
+		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.map_base	= 0x80000000,
-	.size		= 128 * 1024 * 1024,
-	.platform_data	= &sram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static int omap3evm_init_devices(void)
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index f7615b4..984b3e5 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -609,11 +609,18 @@ static struct NS16550_plat serial_plat = {
 	.reg_write = omap_uart_write,
 };
 
+static struct resource sdp3430_serial_resources[] = {
+	[0] = {
+		.start	= OMAP_UART3_BASE,
+		.size	= 1024,
+	},
+};
+
 static struct device_d sdp3430_serial_device = {
 	.id = -1,
 	.name = "serial_ns16550",
-	.map_base = OMAP_UART3_BASE,
-	.size = 1024,
+	.num_resources	= ARRAY_SIZE(sdp3430_serial_resources),
+	.resource	= sdp3430_serial_resources,
 	.platform_data = (void *)&serial_plat,
 };
 
@@ -641,17 +648,20 @@ static int sdp3430_flash_init(void)
 	return 0;
 }
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0x80000000,
+		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 struct device_d sdram_dev = {
 	.id = -1,
 	.name = "mem",
-	.map_base = 0x80000000,
-	.size = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 /*-----------------------Generic Devices Initialization ---------------------*/
diff --git a/arch/arm/boards/omap/devices-gpmc-nand.c b/arch/arm/boards/omap/devices-gpmc-nand.c
index 4369aa0..0292944 100644
--- a/arch/arm/boards/omap/devices-gpmc-nand.c
+++ b/arch/arm/boards/omap/devices-gpmc-nand.c
@@ -71,11 +71,18 @@ static struct gpmc_nand_platform_data nand_plat = {
 };
 
 /** NAND device definition */
+static struct resource gpmc_generic_nand_resources[] = {
+	[0] = {
+		.start	= OMAP_GPMC_BASE,
+		.size	= 1024 * 4,	/* GPMC size */
+	},
+};
+
 static struct device_d gpmc_generic_nand_nand_device = {
 	.id = -1,
 	.name = "gpmc_nand",
-	.map_base = OMAP_GPMC_BASE,
-	.size = 1024 * 4,	/* GPMC size */
+	.num_resources	= ARRAY_SIZE(gpmc_generic_nand_resources),
+	.resource	= gpmc_generic_nand_resources,
 	.platform_data = (void *)&nand_plat,
 };
 
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index ffecec2..38725a2 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -43,28 +43,38 @@
  * Up to 32MiB NOR type flash, connected to
  * CS line 0, data width is 16 bit
  */
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= IMX_CS0_BASE,
+		.size	= 32 * 1024 * 1024,	/* area size */
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = IMX_CS0_BASE,
-	.size     = 32 * 1024 * 1024,	/* area size */
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
 /*
  * up to 2MiB static RAM type memory, connected
  * to CS4, data width is 16 bit
  */
-static struct memory_platform_data sram_dev_pdata0 = {
-	.name = "sram0",
-	.flags = DEVFS_RDWR,
+static struct resource sram_dev_resources[] = {
+	[0] = {
+		.name	= "sram0",
+		.start	= IMX_CS4_BASE,
+		.size	= IMX_CS4_RANGE,	/* area size */
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = IMX_CS4_BASE,
-	.size     = IMX_CS4_RANGE,	/* area size */
-	.platform_data = &sram_dev_pdata0,
+	.num_resources	= ARRAY_SIZE(sram_dev_resources),
+	.resource	= sram_dev_resources,
 };
 
 /*
@@ -72,11 +82,18 @@ static struct device_d sram_dev = {
  * connected to CS line 1 and interrupt line
  * GPIO3, data width is 16 bit
  */
+static struct resource network_dev_resources[] = {
+	[0] = {
+		.start	= IMX_CS1_BASE,
+		.size	= IMX_CS1_RANGE,	/* area size */
+	},
+};
+
 static struct device_d network_dev = {
 	.id	  = -1,
 	.name     = "smc911x",
-	.map_base = IMX_CS1_BASE,
-	.size     = IMX_CS1_RANGE,	/* area size */
+	.num_resources	= ARRAY_SIZE(network_dev_resources),
+	.resource	= network_dev_resources,
 };
 
 #if defined CONFIG_PCM037_SDRAM_BANK0_128MB
@@ -85,17 +102,20 @@ static struct device_d network_dev = {
 #define SDRAM0	256
 #endif
 
-static struct memory_platform_data ram_dev_pdata0 = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram0_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= IMX_SDRAM_CS0,
+		.size	= SDRAM0 * 1024 * 1024,	/* fix size */
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
-	.size     = SDRAM0 * 1024 * 1024,	/* fix size */
-	.platform_data = &ram_dev_pdata0,
+	.num_resources	= ARRAY_SIZE(sdram0_dev_resources),
+	.resource	= sdram0_dev_resources,
 };
 
 #ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
@@ -106,17 +126,20 @@ static struct device_d sdram0_dev = {
 #define SDRAM1	256
 #endif
 
-static struct memory_platform_data ram_dev_pdata1 = {
-	.name = "ram1",
-	.flags = DEVFS_RDWR,
+static struct resource sdram1_dev_resources[] = {
+	[0] = {
+		.name	= "ram1",
+		.start	= IMX_SDRAM_CS1,
+		.size	= SDRAM1 * 1024 * 1024,	/* fix size */
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram1_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = IMX_SDRAM_CS1,
-	.size     = SDRAM1 * 1024 * 1024,	/* fix size */
-	.platform_data = &ram_dev_pdata1,
+	.num_resources	= ARRAY_SIZE(sdram1_dev_resources),
+	.resource	= sdram1_dev_resources,
 };
 #endif
 
@@ -127,18 +150,32 @@ struct imx_nand_platform_data nand_info = {
 };
 
 #ifdef CONFIG_USB
+static struct resource usbotg_dev_resources[] = {
+	[0] = {
+		.start	= IMX_OTG_BASE,
+		.size	= 0x00000200,
+	},
+};
+
 static struct device_d usbotg_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE,
-	.size     = 0x200,
+	.num_resources	= ARRAY_SIZE(usbotg_dev_resources),
+	.resource	= usbotg_dev_resources,
+};
+
+static struct resource usbh2_dev_resources[] = {
+	[0] = {
+		.start	= IMX_OTG_BASE + 0x400,
+		.size	= 0x00000200,
+	},
 };
 
 static struct device_d usbh2_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
+	.num_resources	= ARRAY_SIZE(usbh2_dev_resources),
+	.resource	= usbh2_dev_resources,
 };
 
 static void pcm037_usb_init(void)
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 1dbc6b6..1306f27 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -47,37 +47,50 @@
 
 #include "pll.h"
 
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= 0xC0000000,
+		.size	= 32 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xC0000000,
-	.size     = 32 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name 	= "ram0",
+		.start	= 0xa0000000,
+		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
-static struct memory_platform_data sram_pdata = {
-	.name = "sram0",
-	.flags = DEVFS_RDWR,
+static struct resource sram_dev_resources[] = {
+	[0] = {
+		.name	= "sram0",
+		.start	= 0xc8000000,
+		.size	= 512 * 1024, /* Can be up to 2MiB */
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xc8000000,
-	.size     = 512 * 1024, /* Can be up to 2MiB */
-	.platform_data = &sram_pdata,
+	.num_resources	= ARRAY_SIZE(sram_dev_resources),
+	.resource	= sram_dev_resources,
 };
 
 static struct fec_platform_data fec_info = {
@@ -142,11 +155,18 @@ static struct imx_fb_platform_data pcm038_fb_data = {
 };
 
 #ifdef CONFIG_USB
+static struct resource usbh2_dev_resources[] = {
+	[0] = {
+		.start	= IMX_OTG_BASE + 0x400,
+		.size	= 0x00000200,
+	},
+};
+
 static struct device_d usbh2_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
+	.num_resources	= ARRAY_SIZE(usbh2_dev_resources),
+	.resource	= usbh2_dev_resources,
 };
 
 static void pcm038_usbh_init(void)
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 2191bc8..cf92ad0 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -49,28 +49,38 @@
  * Up to 32MiB NOR type flash, connected to
  * CS line 0, data width is 16 bit
  */
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= IMX_CS0_BASE,
+		.size	= 32 * 1024 * 1024,	/* area size */
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = IMX_CS0_BASE,
-	.size     = 32 * 1024 * 1024,	/* area size */
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram0_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= IMX_SDRAM_CS0,
+		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram0_dev_resources),
+	.resource	= sdram0_dev_resources,
 };
 
 struct imx_nand_platform_data nand_info = {
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 32f7e74..b6432ff 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -41,17 +41,20 @@
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0xa0000000,
+		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static struct fec_platform_data fec_info = {
@@ -66,11 +69,18 @@ struct imx_nand_platform_data nand_info = {
 };
 
 #ifdef CONFIG_USB
+static struct resource usbh2_dev_resources[] = {
+	[0] = {
+		.start	= IMX_OTG_BASE + 0x400,
+		.size	= 0x00000200,
+	},
+};
+
 static struct device_d usbh2_dev = {
 	.id	  = -1,
 	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
+	.num_resources	= ARRAY_SIZE(usbh2_dev_resources),
+	.resource	= usbh2_dev_resources,
 };
 
 static void pca100_usbh_init(void)
@@ -217,11 +227,18 @@ static int pca100_devices_init(void)
 
 device_initcall(pca100_devices_init);
 
+static struct resource pca100_serial_resources[] = {
+	[0] = {
+		.start	= IMX_UART1_BASE,
+		.size	= 4096,
+	},
+};
+
 static struct device_d pca100_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
+	.num_resources	= ARRAY_SIZE(pca100_serial_resources),
+	.resource	= pca100_serial_resources,
 };
 
 static int pca100_console_init(void)
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 6fb14f7..0c8b0ae 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -88,6 +88,13 @@ static void pm_add_device_nand(void)
  * DM9000 ethernet device
  */
 #if defined(CONFIG_DRIVER_NET_DM9000)
+static struct resource dm9000_dev_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_2,
+		.size	= 8,
+	},
+};
+
 static struct dm9000_platform_data dm9000_data = {
 	.iobase		= AT91_CHIPSELECT_2,
 	.iodata		= AT91_CHIPSELECT_2 + 4,
@@ -98,8 +105,8 @@ static struct dm9000_platform_data dm9000_data = {
 static struct device_d dm9000_dev = {
 	.id		= 0,
 	.name		= "dm9000",
-	.map_base	= AT91_CHIPSELECT_2,
-	.size		= 8,
+	.num_resources	= ARRAY_SIZE(dm9000_dev_resources),
+	.resource	= dm9000_dev_resources,
 	.platform_data	= &dm9000_data,
 };
 
@@ -136,11 +143,18 @@ static void __init pm_add_device_dm9000(void)
 static void __init ek_add_device_dm9000(void) {}
 #endif /* CONFIG_DRIVER_NET_DM9000 */
 
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_0,
+		.size	= 4 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id		= 0,
 	.name		= "cfi_flash",
-	.map_base	= AT91_CHIPSELECT_0,
-	.size		= 4 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
 static int pm9261_devices_init(void)
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index abe8def..ff4f6f6 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -86,11 +86,18 @@ static void pm_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_0,
+		.size	= 4 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = AT91_CHIPSELECT_0,
-	.size     = 4 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
 static struct at91_ether_platform_data macb_pdata = {
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 4c08c50..b58b12d 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -32,25 +32,34 @@
 #include <fcntl.h>
 #include <dm9000.h>
 
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= 0x10000000,
+		.size	= 16 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-
-	.map_base = 0x10000000,
-	.size     = 16 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0x08000000,
+		.size	= 16 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0x08000000,
-	.size     = 16 * 1024 * 1024,
-	.platform_data = &sdram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static struct dm9000_platform_data dm9000_data = {
@@ -60,11 +69,18 @@ static struct dm9000_platform_data dm9000_data = {
 	.srom     = 1,
 };
 
+static struct resource dm9000_dev_resources[] = {
+	[0] = {
+		.start	= 0x16000000,
+		.size	= 8,
+	},
+};
+
 static struct device_d dm9000_dev = {
 	.id	  = -1,
 	.name     = "dm9000",
-	.map_base = 0x16000000,
-	.size     = 8,
+	.num_resources	= ARRAY_SIZE(dm9000_dev_resources),
+	.resource	= dm9000_dev_resources,
 	.platform_data = &dm9000_data,
 };
 
@@ -106,11 +122,18 @@ static int scb9328_devices_init(void) {
 
 device_initcall(scb9328_devices_init);
 
+static struct resource scb9328_serial_resources[] = {
+	[0] = {
+		.start	= IMX_UART1_BASE,
+		.size	= 4096,
+	},
+};
+
 static struct device_d scb9328_serial_device = {
 	.id	  = -1,
 	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
+	.num_resources	= ARRAY_SIZE(scb9328_serial_resources),
+	.resource	= scb9328_serial_resources,
 };
 
 static int scb9328_console_init(void)
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index f826da6..d1f8281 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -78,8 +78,8 @@ static void setup_memory_tags(void)
 		params->hdr.tag = ATAG_MEM;
 		params->hdr.size = tag_size(tag_mem32);
 
-		params->u.mem.start = mem->dev->map_base;
-		params->u.mem.size = mem->dev->size;
+		params->u.mem.start = dev_resource_get_start(mem->dev);
+		params->u.mem.size = dev_resource_get_size(mem->dev);
 
 		params = tag_next(params);
 	}
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index fc8f828..d8bcaf2 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -20,31 +20,41 @@
 
 #include "generic.h"
 
-static struct memory_platform_data sram_pdata = {
-	.name = "sram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "sram0",
+		.start	= AT91_CHIPSELECT_1,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = AT91_CHIPSELECT_1,
-	.platform_data = &sram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	dev_resource_set_size(&sdram_dev, size);
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
+static struct resource eth_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_EMAC,
+		.size	= 0x1000,
+	},
+};
+
 static struct device_d macb_dev = {
 	.id	  = -1,
 	.name     = "macb",
-	.map_base = AT91SAM9260_BASE_EMAC,
-	.size     = 0x1000,
+	.resource	= eth_resources,
+	.num_resources	= ARRAY_SIZE(eth_resources),
 };
 
 void at91_add_device_eth(struct at91_ether_platform_data *data)
@@ -83,11 +93,18 @@ void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= 0x10,
+	},
+};
+
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "atmel_nand",
-	.map_base = AT91_CHIPSELECT_3,
-	.size     = 0x10,
+	.resource	= nand_resources,
+	.num_resources	= ARRAY_SIZE(nand_resources),
 };
 
 void at91_add_device_nand(struct atmel_nand_data *data)
@@ -119,11 +136,18 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
+static struct resource dbgu_resources[] = {
+	[0] = {
+		.start	= AT91_BASE_SYS + AT91_DBGU,
+		.size	= 4096,
+	},
+};
+
 static struct device_d dbgu_serial_device = {
 	.id	  = 0,
 	.name     = "atmel_serial",
-	.map_base = AT91_BASE_SYS + AT91_DBGU,
-	.size     = 4096,
+	.resource	= dbgu_resources,
+	.num_resources	= ARRAY_SIZE(dbgu_resources),
 };
 
 static inline void configure_dbgu_pins(void)
@@ -132,11 +156,18 @@ static inline void configure_dbgu_pins(void)
 	at91_set_A_periph(AT91_PIN_PB15, 1);		/* DTXD */
 }
 
+static struct resource uart0_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_US0,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart0_serial_device = {
 	.id	  = 1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US0,
-	.size     = 4096,
+	.resource	= uart0_resources,
+	.num_resources	= ARRAY_SIZE(uart0_resources),
 };
 
 static inline void configure_usart0_pins(unsigned pins)
@@ -158,11 +189,18 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PB25, 0);	/* RI0 */
 }
 
+static struct resource uart1_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_US1,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart1_serial_device = {
 	.id	  = 2,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US1,
-	.size     = 4096,
+	.resource	= uart1_resources,
+	.num_resources	= ARRAY_SIZE(uart1_resources),
 };
 
 static inline void configure_usart1_pins(unsigned pins)
@@ -176,11 +214,18 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PB29, 0);	/* CTS1 */
 }
 
+static struct resource uart2_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_US2,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart2_serial_device = {
 	.id	  = 3,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US2,
-	.size     = 4096,
+	.resource	= uart2_resources,
+	.num_resources	= ARRAY_SIZE(uart2_resources),
 };
 
 static inline void configure_usart2_pins(unsigned pins)
@@ -194,11 +239,18 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PA5, 0);	/* CTS2 */
 }
 
+static struct resource uart3_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_US3,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart3_serial_device = {
 	.id	  = 4,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US3,
-	.size     = 4096,
+	.resource	= uart3_resources,
+	.num_resources	= ARRAY_SIZE(uart3_resources),
 };
 
 static inline void configure_usart3_pins(unsigned pins)
@@ -212,11 +264,18 @@ static inline void configure_usart3_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PC10, 0);	/* CTS3 */
 }
 
+static struct resource uart4_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_US4,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart4_serial_device = {
 	.id	  = 5,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US4,
-	.size     = 4096,
+	.resource	= uart4_resources,
+	.num_resources	= ARRAY_SIZE(uart4_resources),
 };
 
 static inline void configure_usart4_pins(void)
@@ -225,11 +284,18 @@ static inline void configure_usart4_pins(void)
 	at91_set_B_periph(AT91_PIN_PA30, 0);		/* RXD4 */
 }
 
+static struct resource uart5_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_US5,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart5_serial_device = {
 	.id	  = 6,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US5,
-	.size     = 4096,
+	.resource	= uart5_resources,
+	.num_resources	= ARRAY_SIZE(uart5_resources),
 };
 
 static inline void configure_usart5_pins(void)
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 45bfb23..c239d2b 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -20,31 +20,41 @@
 
 #include "generic.h"
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= AT91_CHIPSELECT_1,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id		= 0,
 	.name		= "mem",
-	.map_base	= AT91_CHIPSELECT_1,
-	.platform_data	= &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	dev_resource_set_size(&sdram_dev, size);
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
 
 #if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= 0x10,
+	},
+};
+
 static struct device_d nand_dev = {
 	.id		= 0,
 	.name		= "atmel_nand",
-	.map_base	= AT91_CHIPSELECT_3,
-	.size		= 0x10,
+	.resource	= nand_resources,
+	.num_resources	= ARRAY_SIZE(nand_resources),
 };
 
 void at91_add_device_nand(struct atmel_nand_data *data)
@@ -79,11 +89,18 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
+static struct resource dbgu_resources[] = {
+	[0] = {
+		.start	= (AT91_BASE_SYS + AT91_DBGU),
+		.size	= 4096,
+	},
+};
+
 static struct device_d dbgu_serial_device = {
 	.id		= 0,
 	.name		= "atmel_serial",
-	.map_base	= (AT91_BASE_SYS + AT91_DBGU),
-	.size		= 4096,
+	.resource	= dbgu_resources,
+	.num_resources	= ARRAY_SIZE(dbgu_resources),
 };
 
 static inline void configure_dbgu_pins(void)
@@ -92,11 +109,18 @@ static inline void configure_dbgu_pins(void)
 	at91_set_A_periph(AT91_PIN_PA10, 1);		/* DTXD */
 }
 
+static struct resource uart0_resources[] = {
+	[0] = {
+		.start	= AT91SAM9261_BASE_US0,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart0_serial_device = {
 	.id		= 1,
 	.name		= "atmel_serial",
-	.map_base	= AT91SAM9261_BASE_US0,
-	.size		= 4096,
+	.resource	= uart0_resources,
+	.num_resources	= ARRAY_SIZE(uart0_resources),
 };
 
 static inline void configure_usart0_pins(unsigned pins)
@@ -110,11 +134,18 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PC11, 0);	/* CTS0 */
 }
 
+static struct resource uart1_resources[] = {
+	[0] = {
+		.start	= AT91SAM9261_BASE_US1,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart1_serial_device = {
 	.id		= 2,
 	.name		= "atmel_serial",
-	.map_base	= AT91SAM9261_BASE_US1,
-	.size		= 4096,
+	.resource	= uart1_resources,
+	.num_resources	= ARRAY_SIZE(uart1_resources),
 };
 
 static inline void configure_usart1_pins(unsigned pins)
@@ -128,11 +159,18 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PA13, 0);	/* CTS1 */
 }
 
+static struct resource uart2_resources[] = {
+	[0] = {
+		.start	= AT91SAM9261_BASE_US2,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart2_serial_device = {
 	.id		= 3,
 	.name		= "atmel_serial",
-	.map_base	= AT91SAM9261_BASE_US2,
-	.size		= 4096,
+	.resource	= uart2_resources,
+	.num_resources	= ARRAY_SIZE(uart2_resources),
 };
 
 static inline void configure_usart2_pins(unsigned pins)
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 346426c..d6638f7 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -20,31 +20,41 @@
 
 #include "generic.h"
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= AT91_CHIPSELECT_1,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = AT91_CHIPSELECT_1,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	dev_resource_set_size(&sdram_dev, size);
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
+static struct resource eth_resources[] = {
+	[0] = {
+		.start	= AT91SAM9263_BASE_EMAC,
+		.size	= 0x1000,
+	},
+};
+
 static struct device_d macb_dev = {
 	.id	  = -1,
 	.name     = "macb",
-	.map_base = AT91SAM9263_BASE_EMAC,
-	.size     = 0x1000,
+	.resource	= eth_resources,
+	.num_resources	= ARRAY_SIZE(eth_resources),
 };
 
 void at91_add_device_eth(struct at91_ether_platform_data *data)
@@ -82,11 +92,18 @@ void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= 0x10,
+	},
+};
+
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "atmel_nand",
-	.map_base = AT91_CHIPSELECT_3,
-	.size     = 0x10,
+	.resource	= nand_resources,
+	.num_resources	= ARRAY_SIZE(nand_resources),
 };
 
 void at91_add_device_nand(struct atmel_nand_data *data)
@@ -118,11 +135,18 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
+static struct resource dbgu_resources[] = {
+	[0] = {
+		.start	= (AT91_BASE_SYS + AT91_DBGU),
+		.size	= 4096,
+	},
+};
+
 static struct device_d dbgu_serial_device = {
 	.id	  = 0,
 	.name     = "atmel_serial",
-	.map_base = (AT91_BASE_SYS + AT91_DBGU),
-	.size     = 4096,
+	.resource	= dbgu_resources,
+	.num_resources	= ARRAY_SIZE(dbgu_resources),
 };
 
 static inline void configure_dbgu_pins(void)
@@ -131,11 +155,18 @@ static inline void configure_dbgu_pins(void)
 	at91_set_A_periph(AT91_PIN_PC31, 1);		/* DTXD */
 }
 
+static struct resource uart0_resources[] = {
+	[0] = {
+		.start	= AT91SAM9263_BASE_US0,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart0_serial_device = {
 	.id	  = 1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9263_BASE_US0,
-	.size     = 4096,
+	.resource	= uart0_resources,
+	.num_resources	= ARRAY_SIZE(uart0_resources),
 };
 
 static inline void configure_usart0_pins(unsigned pins)
@@ -149,11 +180,18 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PA29, 0);	/* CTS0 */
 }
 
+static struct resource uart1_resources[] = {
+	[0] = {
+		.start	= AT91SAM9263_BASE_US1,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart1_serial_device = {
 	.id	  = 2,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9263_BASE_US1,
-	.size     = 4096,
+	.resource	= uart1_resources,
+	.num_resources	= ARRAY_SIZE(uart1_resources),
 };
 
 static inline void configure_usart1_pins(unsigned pins)
@@ -167,11 +205,18 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PD8, 0);	/* CTS1 */
 }
 
+static struct resource uart2_resources[] = {
+	[0] = {
+		.start	= AT91SAM9263_BASE_US2,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart2_serial_device = {
 	.id	  = 3,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9263_BASE_US2,
-	.size     = 4096,
+	.resource	= uart2_resources,
+	.num_resources	= ARRAY_SIZE(uart2_resources),
 };
 
 static inline void configure_usart2_pins(unsigned pins)
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index ddb005a..dd6c762 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -20,31 +20,41 @@
 
 #include "generic.h"
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= AT91_CHIPSELECT_6,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.map_base	= AT91_CHIPSELECT_6,
-	.platform_data	= &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	dev_resource_set_size(&sdram_dev, size);
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
+static struct resource eth_resources[] = {
+	[0] = {
+		.start	= AT91SAM9G45_BASE_EMAC,
+		.size	= 0x1000,
+	},
+};
+
 static struct device_d macb_dev = {
 	.id		= 0,
 	.name		= "macb",
-	.map_base	= AT91SAM9G45_BASE_EMAC,
-	.size		= 0x1000,
+	.resource	= eth_resources,
+	.num_resources	= ARRAY_SIZE(eth_resources),
 };
 
 void at91_add_device_eth(struct at91_ether_platform_data *data)
@@ -83,11 +93,18 @@ void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= 0x10,
+	},
+};
+
 static struct device_d nand_dev = {
 	.id		= -1,
 	.name		= "atmel_nand",
-	.map_base	= AT91_CHIPSELECT_3,
-	.size		= 0x10,
+	.resource	= nand_resources,
+	.num_resources	= ARRAY_SIZE(nand_resources),
 };
 
 void at91_add_device_nand(struct atmel_nand_data *data)
@@ -122,11 +139,18 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
+static struct resource dbgu_resources[] = {
+	[0] = {
+		.start	= (AT91_BASE_SYS + AT91_DBGU),
+		.size	= 4096,
+	},
+};
+
 static struct device_d dbgu_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = (AT91_BASE_SYS + AT91_DBGU),
-	.size     = 4096,
+	.resource	= dbgu_resources,
+	.num_resources	= ARRAY_SIZE(dbgu_resources),
 };
 
 static inline void configure_dbgu_pins(void)
@@ -135,11 +159,18 @@ static inline void configure_dbgu_pins(void)
 	at91_set_A_periph(AT91_PIN_PB13, 1);		/* DTXD */
 }
 
+static struct resource uart0_resources[] = {
+	[0] = {
+		.start	= AT91SAM9G45_BASE_US0,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart0_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9G45_BASE_US0,
-	.size     = 4096,
+	.resource	= uart0_resources,
+	.num_resources	= ARRAY_SIZE(uart0_resources),
 };
 
 static inline void configure_usart0_pins(unsigned pins)
@@ -153,11 +184,18 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PB15, 0);	/* CTS0 */
 }
 
+static struct resource uart1_resources[] = {
+	[0] = {
+		.start	= AT91SAM9G45_BASE_US1,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart1_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9G45_BASE_US1,
-	.size     = 4096,
+	.resource	= uart1_resources,
+	.num_resources	= ARRAY_SIZE(uart1_resources),
 };
 
 static inline void configure_usart1_pins(unsigned pins)
@@ -171,11 +209,18 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PD17, 0);	/* CTS1 */
 }
 
+static struct resource uart2_resources[] = {
+	[0] = {
+		.start	= AT91SAM9G45_BASE_US2,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart2_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9G45_BASE_US2,
-	.size     = 4096,
+	.resource	= uart2_resources,
+	.num_resources	= ARRAY_SIZE(uart2_resources),
 };
 
 static inline void configure_usart2_pins(unsigned pins)
@@ -189,11 +234,18 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PC11, 0);	/* CTS2 */
 }
 
+static struct resource uart3_resources[] = {
+	[0] = {
+		.start	= AT91SAM9G45_BASE_US3,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart3_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9G45_ID_US3,
-	.size     = 4096,
+	.resource	= uart3_resources,
+	.num_resources	= ARRAY_SIZE(uart3_resources),
 };
 
 static inline void configure_usart3_pins(unsigned pins)
diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 11cf2a4..e89f8bb 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -9,8 +9,8 @@ static struct device_d *imx_add_device(char *name, int id, void *base, int size,
 	dev = xzalloc(sizeof(*dev));
 	strcpy(dev->name,name);
 	dev->id = id;
-	dev->map_base = (unsigned long)base;
-	dev->size = size;
+	dev_resource_set_start(dev, (unsigned long)base);
+	dev_resource_set_size(dev, (unsigned long)size);
 	dev->platform_data = pdata;
 
 	register_device(dev);
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
index 37eafaf..2468d22 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -49,6 +49,12 @@ u64 imx_uid(void)
 	return uid;
 }
 
+static struct resource imx25_iim_dev_resources[] = {
+	[0] = {
+		.start	= IMX_IIM_BASE,
+	},
+};
+
 static struct imx_iim_platform_data imx25_iim_pdata = {
 	.mac_addr_base	= IIM_MAC_ADDR,
 };
@@ -56,29 +62,51 @@ static struct imx_iim_platform_data imx25_iim_pdata = {
 static struct device_d imx25_iim_dev = {
 	.id		= -1,
 	.name		= "imx_iim",
-	.map_base	= IMX_IIM_BASE,
+	.num_resources	= ARRAY_SIZE(imx25_iim_dev_resources),
+	.resource	= imx25_iim_dev_resources,
 	.platform_data	= &imx25_iim_pdata,
 };
 
+static struct resource imx25_iim_bank0_dev_resources[] = {
+	[0] = {
+		.start	= IIM_BANK0_BASE,
+		.size	= IIM_BANK_SIZE,
+	},
+};
+
 static struct device_d imx25_iim_bank0_dev = {
 	.name		= "imx_iim_bank",
 	.id		= 0,
-	.map_base	= IIM_BANK0_BASE,
-	.size		= IIM_BANK_SIZE,
+	.num_resources	= ARRAY_SIZE(imx25_iim_bank0_dev_resources),
+	.resource	= imx25_iim_bank0_dev_resources,
+};
+
+static struct resource imx25_iim_bank1_dev_resources[] = {
+	[0] = {
+		.start	= IIM_BANK1_BASE,
+		.size	= IIM_BANK_SIZE,
+	},
 };
 
 static struct device_d imx25_iim_bank1_dev = {
 	.name		= "imx_iim_bank",
 	.id		= 1,
-	.map_base	= IIM_BANK1_BASE,
-	.size		= IIM_BANK_SIZE,
+	.num_resources	= ARRAY_SIZE(imx25_iim_bank1_dev_resources),
+	.resource	= imx25_iim_bank1_dev_resources,
+};
+
+static struct resource imx25_iim_bank2_dev_resources[] = {
+	[0] = {
+		.start	= IIM_BANK2_BASE,
+		.size	= IIM_BANK_SIZE,
+	},
 };
 
 static struct device_d imx25_iim_bank2_dev = {
 	.name		= "imx_iim_bank",
 	.id		= 2,
-	.map_base	= IIM_BANK2_BASE,
-	.size		= IIM_BANK_SIZE,
+	.num_resources	= ARRAY_SIZE(imx25_iim_bank2_dev_resources),
+	.resource	= imx25_iim_bank2_dev_resources,
 };
 
 static int imx25_iim_init(void)
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index 5844c68..74bbb94 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -31,37 +31,54 @@ static struct clk st8815_clk_48 = {
        .rate = 48 * 1000 * 1000,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0x00000000,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id = -1,
 	.name = "mem",
-	.map_base = 0x00000000,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 void st8815_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	dev_resource_set_size(&sdram_dev, size);
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
 
+static struct resource uart0_serial_resources[] = {
+	[0] = {
+		.start	= NOMADIK_UART0_BASE,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart0_serial_device = {
 	.id = 0,
 	.name = "uart-pl011",
-	.map_base = NOMADIK_UART0_BASE,
-	.size = 4096,
+	.num_resources	= ARRAY_SIZE(uart0_serial_resources),
+	.resource	= uart0_serial_resources,
+};
+
+static struct resource uart1_serial_resources[] = {
+	[0] = {
+		.start	= NOMADIK_UART1_BASE,
+		.size	= 4096,
+	},
 };
 
 static struct device_d uart1_serial_device = {
 	.id = 1,
 	.name = "uart-pl011",
-	.map_base = NOMADIK_UART1_BASE,
-	.size = 4096,
+	.num_resources	= ARRAY_SIZE(uart1_serial_resources),
+	.resource	= uart1_serial_resources,
 };
 
 void st8815_register_uart(unsigned id)
diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index 61bcd43..c1c88fe 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -5,31 +5,48 @@
 #include <partition.h>
 #include <fs.h>
 
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= 0x20000000,
+		.size	= 32 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0x20000000,
-	.size     = 32 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0x00000000,
+		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0x0,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
+};
+
+static struct resource smc911x_dev_resources[] = {
+	[0] = {
+		.start	= 0x24000000,
+		.size	= 4096,
+	},
 };
 
 static struct device_d smc911x_dev = {
 	.id	  = -1,
 	.name     = "smc911x",
-	.map_base = 0x24000000,
-	.size     = 4096,
+	.num_resources	= ARRAY_SIZE(smc911x_dev_resources),
+	.resource	= smc911x_dev_resources,
 };
 
 static int ipe337_devices_init(void) {
@@ -54,11 +71,18 @@ static int ipe337_devices_init(void) {
 
 device_initcall(ipe337_devices_init);
 
+static struct resource blackfin_serial_resources[] = {
+	[0] = {
+		.start	= 0x00000000,
+		.size	= 4096,
+	},
+};
+
 static struct device_d blackfin_serial_device = {
 	.id	  = -1,
 	.name     = "blackfin_serial",
-	.map_base = 0,
-	.size     = 4096,
+	.num_resources	= ARRAY_SIZE(blackfin_serial_resources),
+	.resource	= blackfin_serial_resources,
 };
 
 static int blackfin_console_init(void)
diff --git a/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c b/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c
index 7475ab3..6a7abdd 100644
--- a/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c
+++ b/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c
@@ -41,34 +41,59 @@ ulong mcfv4e_get_bus_clk(void)
  * Up to 64MiB NOR type flash, connected to
  * CS line 0, data width is 32 bit
  */
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= CFG_FLASH_ADDRESS,
+		.size	= CFG_FLASH_SIZE,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = CFG_FLASH_ADDRESS,
-	.size     = CFG_FLASH_SIZE,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
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
+static struct resource sram_dev_resources[] = {
+	[0] = {
+		.start	= IMX_CS4_BASE,
+		.size	= IMX_CS4_RANGE,	/* area size */
+	},
+};
+
+static struct device_d sram_dev = {
+	.id	  = -1,
+	.name     = "sram",
+	/* FIXME */
+	.num_resources	= ARRAY_SIZE(sram_dev_resources),
+	.resource	= sram_dev_resources,
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
+#if 0
+static struct resource nand_dev_resources[] = {
+	[0] = {
+		.start	= 0xfc000000,		/* FIXME */
+		.size	= 32 * 1024 * 1024,	/* FIXME */
+	},
+};
 
+static struct device_d nand_dev = {
+	.id	  = -1,
+	.name     = "cfi_flash_nand",
+	.num_resources	= ARRAY_SIZE(nand_dev_resources),
+	.resource	= nand_dev_resources,
+};
+#endif
 
 /*
  * Build in FastEthernetControllers (FECs)
@@ -77,35 +102,53 @@ static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
 
+static struct resource network_dev0_resources[] = {
+	[0] = {
+		.start	= MCF_FEC_ADDR(0),
+		.size	= MCF_FEC_SIZE(0),	/* area size */
+	},
+};
+
 static struct device_d network_dev0 = {
 	.id	  = -1,
 	.name     = "fec_mcf54xx",
-	.map_base = MCF_FEC_ADDR(0),
-	.size     = MCF_FEC_SIZE(0),	   /* area size */
+	.num_resources	= ARRAY_SIZE(network_dev0_resources),
+	.resource	= network_dev0_resources,
 	.platform_data	= &fec_info,
 };
+
+static struct resource network_dev1_resources[] = {
+	[0] = {
+		.start	= MCF_FEC_ADDR(1),
+		.size	= MCF_FEC_SIZE(1),	/* area size */
+	},
+};
+
 static struct device_d network_dev1 = {
 	.id	  = -1,
 	.name     = "fec_mcf54xx",
-	.map_base = MCF_FEC_ADDR(1),
-	.size     = MCF_FEC_SIZE(1),	   /* area size */
+	.num_resources	= ARRAY_SIZE(network_dev1_resources),
+	.resource	= network_dev1_resources,
 	.platform_data	= &fec_info,
 };
 
 /*
  * 128MiB of SDRAM, data width is 32 bit
  */
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= CFG_SDRAM_ADDRESS,
+		.size	= CFG_SDRAM_SIZE,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = CFG_SDRAM_ADDRESS,
-	.size     = CFG_SDRAM_SIZE,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static int mcfv4e_devices_init(void)
@@ -139,11 +182,18 @@ static int mcfv4e_devices_init(void)
 
 device_initcall(mcfv4e_devices_init);
 
+static struct resource mcfv4e_serial_resources[] = {
+	[0] = {
+		.start	= 1 + CFG_EARLY_UART_PORT,
+		.size	= 16 * 1024,
+	},
+};
+
 static struct device_d mcfv4e_serial_device = {
 	.id	  = -1,
 	.name     = "mcfv4e_serial",
-	.map_base = 1+CFG_EARLY_UART_PORT,
-	.size     = 16 * 1024,
+	.num_resources	= ARRAY_SIZE(mcfv4e_serial_resources),
+	.resource	= mcfv4e_serial_resources,
 };
 
 static int mcfv4e_console_init(void)
diff --git a/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c b/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
index 3744950..19dad3d 100644
--- a/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
+++ b/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
@@ -44,12 +44,19 @@ ulong mcfv4e_get_bus_clk(void)
  * Up to 64MiB NOR type flash, connected to
  * CS line 0, data width is 32 bit
  */
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= CFG_FLASH_ADDRESS,
+		.size	= CFG_FLASH_SIZE,
+	},
+};
+
 static struct device_d cfi_dev =
 {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = CFG_FLASH_ADDRESS,
-	.size     = CFG_FLASH_SIZE,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
 /*
@@ -60,38 +67,53 @@ static struct fec_platform_data fec_info =
 	.xcv_type = MII100,
 };
 
-static struct device_d network_dev0 =
-{
+static struct resource network_dev0_resources[] = {
+	[0] = {
+		.start	= MCF_FEC_ADDR(0),
+		.size	= MCF_FEC_SIZE(0),	/* area size */
+	},
+};
+
+static struct device_d network_dev0 = {
 	.id	  = -1,
 	.name     = "fec_mcf54xx",
-	.map_base = MCF_FEC_ADDR(0),
-	.size     = MCF_FEC_SIZE(0),	   /* area size */
+	.num_resources	= ARRAY_SIZE(network_dev0_resources),
+	.resource	= network_dev0_resources,
 	.platform_data	= &fec_info,
 };
-static struct device_d network_dev1 =
-{
+
+static struct resource network_dev1_resources[] = {
+	[0] = {
+		.start	= MCF_FEC_ADDR(1),
+		.size	= MCF_FEC_SIZE(1),	/* area size */
+	},
+};
+
+static struct device_d network_dev1 = {
 	.id	  = -1,
 	.name     = "fec_mcf54xx",
-	.map_base = MCF_FEC_ADDR(1),
-	.size     = MCF_FEC_SIZE(1),	   /* area size */
+	.num_resources	= ARRAY_SIZE(network_dev1_resources),
+	.resource	= network_dev1_resources,
 	.platform_data	= &fec_info,
 };
 
 /*
  * 128MiB of SDRAM, data width is 32 bit
  */
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= CFG_SDRAM_ADDRESS,
+		.size	= CFG_SDRAM_SIZE,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
-static struct device_d sdram_dev =
-{
+static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = CFG_SDRAM_ADDRESS,
-	.size     = CFG_SDRAM_SIZE,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static int mcfv4e_devices_init(void)
@@ -118,12 +140,18 @@ static int mcfv4e_devices_init(void)
 
 device_initcall(mcfv4e_devices_init);
 
-static struct device_d mcfv4e_serial_device =
-{
+static struct resource mcfv4e_serial_resources[] = {
+	[0] = {
+		.start	= 1 + CFG_EARLY_UART_PORT,
+		.size	= 16 * 1024,
+	},
+};
+
+static struct device_d mcfv4e_serial_device = {
 	.id	  = -1,
 	.name     = "mcfv4e_serial",
-	.map_base = 1 + CFG_EARLY_UART_PORT,
-	.size     = 16 * 1024,
+	.num_resources	= ARRAY_SIZE(mcfv4e_serial_resources),
+	.resource	= mcfv4e_serial_resources,
 };
 
 static int mcfv4e_console_init(void)
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index 8b43550..3eb2f88 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -37,34 +37,51 @@
 #include <mem_malloc.h>
 #include <reloc.h>
 
+static struct resource cfi_dev_resources[] = {
+	[0] = {
+		.start	= 0xff000000,
+		.size	= 16 * 1024 * 1024,
+	},
+};
+
 struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = 0xff000000,
-	.size     = 16 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_dev_resources),
+	.resource	= cfi_dev_resources,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0x00000000,
+		.size	= 64 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = 0x0,
-	.size     = 64 * 1024 * 1024,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static struct mpc5xxx_fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
 
+static struct resource eth_dev_resources[] = {
+	[0] = {
+		.start	= MPC5XXX_FEC,
+	},
+};
+
 struct device_d eth_dev = {
 	.id		= -1,
 	.name		= "fec_mpc5xxx",
-	.map_base	= MPC5XXX_FEC,
+	.num_resources	= ARRAY_SIZE(eth_dev_resources),
+	.resource	= eth_dev_resources,
 	.platform_data	= &fec_info,
 };
 
@@ -82,18 +99,32 @@ static int devices_init (void)
 
 device_initcall(devices_init);
 
+static struct resource psc3_resources[] = {
+	[0] = {
+		.start	= MPC5XXX_PSC3,
+		.size	= 4096,
+	},
+};
+
 static struct device_d psc3 = {
 	.id	  = -1,
 	.name     = "mpc5xxx_serial",
-	.map_base = MPC5XXX_PSC3,
-	.size     = 4096,
+	.num_resources	= ARRAY_SIZE(psc3_resources),
+	.resource	= psc3_resources,
+};
+
+static struct resource psc6_resources[] = {
+	[0] = {
+		.start	= MPC5XXX_PSC6,
+		.size	= 4096,
+	},
 };
 
 static struct device_d psc6 = {
 	.id	  = -1,
 	.name     = "mpc5xxx_serial",
-	.map_base = MPC5XXX_PSC6,
-	.size     = 4096,
+	.num_resources	= ARRAY_SIZE(psc6_resources),
+	.resource	= psc6_resources,
 };
 
 static int console_init(void)
@@ -133,7 +164,7 @@ static void sdram_start (int hi_addr)
 	*(vu_long *)MPC5XXX_SDRAM_MODE = SDRAM_EMODE;
 	__asm__ volatile ("sync");
 
-	/* set mode register: reset DLL */
+	/* set mode register:map_baset DLL */
 	*(vu_long *)MPC5XXX_SDRAM_MODE = SDRAM_MODE | 0x04000000;
 	__asm__ volatile ("sync");
 #endif
@@ -142,7 +173,7 @@ static void sdram_start (int hi_addr)
 	*(vu_long *)MPC5XXX_SDRAM_CTRL = SDRAM_CONTROL | 0x80000002 | hi_addr_bit;
 	__asm__ volatile ("sync");
 
-	/* auto refresh */
+	/* auto remap_baseth */
 	*(vu_long *)MPC5XXX_SDRAM_CTRL = SDRAM_CONTROL | 0x80000004 | hi_addr_bit;
 	__asm__ volatile ("sync");
 
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 38a52a8..30581c7 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -108,8 +108,8 @@ int barebox_register_filedev(struct hf_platform_data *hf)
 	dev->platform_data = hf;
 
 	strcpy(dev->name, "hostfile");
-	dev->size = hf->size;
-	dev->map_base = hf->map_base;
+	dev_resource_set_size(dev, hf->size);
+	dev_resource_set_start(dev, hf->start);
 
 	return register_device(dev);
 }
diff --git a/arch/sandbox/mach-sandbox/include/mach/hostfile.h b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
index f7aca7c..bd89e48 100644
--- a/arch/sandbox/mach-sandbox/include/mach/hostfile.h
+++ b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
@@ -1,10 +1,16 @@
 #ifndef __ASM_ARCH_HOSTFILE_H
 #define __ASM_ARCH_HOSTFILE_H
 
+#ifdef CONFIG_PHYS_ADDR_T_64BIT
+typedef uint64_t __resource_size_t;
+#else
+typedef uint32_t __resource_size_t;
+#endif
+
 struct hf_platform_data {
 	int fd;
-	size_t size;
-	unsigned long map_base;
+	__resource_size_t start;
+	__resource_size_t size;
 	char *filename;
 	char *name;
 };
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 287be0d..c814751 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -256,10 +256,10 @@ static int add_image(char *str, char *name)
 	hf->name = strdup(name);
 
 	if (map) {
-		hf->map_base = (unsigned long)mmap(NULL, hf->size,
+		hf->start = (unsigned long)mmap(NULL, hf->size,
 				PROT_READ | (readonly ? 0 : PROT_WRITE),
 				MAP_SHARED, fd, 0);
-		if ((void *)hf->map_base == MAP_FAILED)
+		if (((void *)hf->start) == MAP_FAILED)
 			printf("warning: mmapping %s failed\n", file);
 	}
 
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index b9c31aa..9b5fc4e 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -30,17 +30,20 @@
 #include <asm/syslib.h>
 #include <ns16550.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name		= "ram0",
-	.flags		= DEVFS_RDWR,
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.name	= "ram0",
+		.start	= 0x00000000,
+		.size	= 16 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.size		= 16 * 1024 * 1024,
-	.map_base	= 0,
-	.platform_data	= &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 static struct device_d bios_disk_dev = {
@@ -96,12 +99,19 @@ static struct NS16550_plat serial_plat = {
 };
 
 /* we are expecting always one serial interface */
+static struct resource generic_pc_serial_resources[] = {
+	[0] = {
+		.start = 0x000003f8,
+		.size = 8,
+	},
+};
+
 static struct device_d generic_pc_serial_device = {
-       .id = -1,
-       .name = "serial_ns16550",
-       .map_base = 0x3f8,
-       .size = 8,
-       .platform_data = (void *)&serial_plat,
+	.id = -1,
+	.name = "serial_ns16550",
+	.num_resources	= ARRAY_SIZE(generic_pc_serial_resources),
+	.resource	= generic_pc_serial_resources,
+	.platform_data = (void *)&serial_plat,
 };
 
 static int pc_console_init(void)
diff --git a/commands/mem.c b/commands/mem.c
index 73bf915..05956ab 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -589,14 +589,14 @@ static struct file_operations memops = {
 
 static int mem_probe(struct device_d *dev)
 {
-	struct memory_platform_data *pdata = dev->platform_data;
+	struct resource *res = &dev->resource[0];
 	struct cdev *cdev;
 
 	cdev = xzalloc(sizeof (*cdev));
 	dev->priv = cdev;
 
-	cdev->name = pdata->name;
-	cdev->size = dev->size;
+	cdev->name = (char*)res->name;
+	cdev->size = res->size;
 	cdev->ops = &memops;
 	cdev->dev = dev;
 
@@ -610,17 +610,20 @@ static struct driver_d mem_drv = {
 	.probe = mem_probe,
 };
 
-static struct memory_platform_data mem_dev_pdata = {
-	.name = "mem",
-	.flags = DEVFS_RDWR,
+static struct resource mem_dev_resources[] = {
+	[0] = {
+		.name	= "mem",
+		.start	= 0x00000000,
+		.size   = ~0, /* FIXME: should be 0x100000000, ahem... */
+		.flags	= DEVFS_RDWR,
+	},
 };
 
 static struct device_d mem_dev = {
 	.id = -1,
 	.name  = "mem",
-	.map_base = 0,
-	.size   = ~0, /* FIXME: should be 0x100000000, ahem... */
-	.platform_data = &mem_dev_pdata,
+	.num_resources	= ARRAY_SIZE(mem_dev_resources),
+	.resource	= mem_dev_resources,
 };
 
 static int mem_init(void)
diff --git a/common/startup.c b/common/startup.c
index 84a59c5..b8852ef 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -81,20 +81,23 @@ void early_init (void)
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 #include <generated/barebox_default_env.h>
 
-static struct memory_platform_data default_env_platform_data = {
-	.name = "defaultenv",
+static struct resource default_env_resources[] = {
+	[0] = {
+		.name = "defaultenv",
+	},
 };
 
 static struct device_d default_env_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.platform_data	= &default_env_platform_data,
+	.num_resources	= ARRAY_SIZE(default_env_resources),
+	.resource	= default_env_resources,
 };
 
 static int register_default_env(void)
 {
-	default_env_dev.map_base = (unsigned long)default_environment;
-	default_env_dev.size = sizeof(default_environment);
+	dev_resource_set_start(&default_env_dev, (resource_size_t)default_environment);
+	dev_resource_set_size(&default_env_dev, sizeof(default_environment));
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
diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
index a54429a..78640b2 100644
--- a/drivers/ata/disk_drive.c
+++ b/drivers/ata/disk_drive.c
@@ -275,6 +275,7 @@ static int disk_probe(struct device_d *dev)
 	int rc;
 	struct ata_interface *intf = dev->platform_data;
 	struct cdev *disk_cdev;
+	resource_size_t size = dev_resource_get_size(dev);
 
 	sector = xmalloc(SECTOR_SIZE);
 
@@ -302,14 +303,14 @@ static int disk_probe(struct device_d *dev)
 		disk_cdev->name = asprintf("disk%d", dev->id);
 
 	/* On x86, BIOS based disks are coming without a valid .size field */
-	if (dev->size == 0) {
+	if (size == 0) {
 		/*
 		 * We need always the size of the drive, else its nearly impossible
 		 * to do anything with it (at least with the generic routines)
 		 */
 		disk_cdev->size = 32;
 	} else
-		disk_cdev->size = dev->size;
+		disk_cdev->size = size;
 	disk_cdev->ops = &disk_ops;
 	disk_cdev->dev = dev;
 	devfs_create(disk_cdev);
@@ -320,12 +321,12 @@ static int disk_probe(struct device_d *dev)
 		goto on_error;
 	}
 
-	if (dev->size == 0) {
+	if (size == 0) {
 		/* guess the size of this drive if not otherwise given */
-		dev->size = disk_guess_size(dev,
+		size = disk_guess_size(dev,
 			(struct partition_entry*)&sector[446]) * SECTOR_SIZE;
-		dev_info(dev, "Drive size guessed to %u kiB\n", dev->size / 1024);
-		disk_cdev->size = dev->size;
+		dev_info(dev, "Drive size guessed to %u kiB\n", size / 1024);
+		disk_cdev->size = size;
 	}
 
 	rc = disk_register_partitions(dev, (struct partition_entry*)&sector[446]);
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 266cb52..e69c827 100644
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
 
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 63cd059..38ea57f 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -457,7 +457,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	mci = &host->mci;
 
 	host->dev = dev;
-	host->regs = (struct fsl_esdhc *)dev->map_base;
+	host->regs = (struct fsl_esdhc *)dev_resource_get_start(dev);
 
 	/* First reset the eSDHC controller */
 	ret = esdhc_reset(host->regs);
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 8525692..af7090d 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -485,6 +485,7 @@ static int mxcmci_init(struct mci_host *mci, struct device_d *dev)
 static int mxcmci_probe(struct device_d *dev)
 {
 	struct mxcmci_host *host;
+	resource_size_t map_base = dev_resource_get_start(dev);
 
 	host = xzalloc(sizeof(*host));
 
@@ -493,7 +494,7 @@ static int mxcmci_probe(struct device_d *dev)
 	host->mci.init = mxcmci_init;
 	host->mci.host_caps = MMC_MODE_4BIT;
 
-	host->base = (struct mxcmci_regs *)dev->map_base;
+	host->base = (struct mxcmci_regs *)map_base;
 
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a8aa486..ae78ddc 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1213,8 +1213,8 @@ static int mci_card_probe(struct device_d *mci_dev)
 	p->priv = mci_dev;
 
 	strcpy(disk_dev->name, "disk");
-	disk_dev->size = mci->capacity;
-	disk_dev->map_base = 0;
+	dev_resource_set_size(disk_dev, mci->capacity);
+	dev_resource_set_start(disk_dev, 0);
 	disk_dev->platform_data = p;
 
 	register_device(disk_dev);
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 9810683..5c8f85b 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -211,6 +211,7 @@ static unsigned s3c_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 {
 	unsigned clock;
 	uint32_t mci_psc;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 	if (nc == 0)
 		return 0;
@@ -224,7 +225,7 @@ static unsigned s3c_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 		pr_warning("SD/MMC clock might be too high!\n");
 	}
 
-	writel(mci_psc - 1, hw_dev->map_base + SDIPRE);
+	writel(mci_psc - 1, map_base + SDIPRE);
 
 	return clock / mci_psc;
 }
@@ -237,10 +238,12 @@ static unsigned s3c_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
  */
 static void s3c_mci_reset(struct device_d *hw_dev)
 {
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
+
 	/* reset the hardware */
-	writel(SDICON_SDRESET, hw_dev->map_base + SDICON);
+	writel(SDICON_SDRESET, map_base + SDICON);
 	/* wait until reset it finished */
-	while (readl(hw_dev->map_base + SDICON) & SDICON_SDRESET)
+	while (readl(map_base + SDICON) & SDICON_SDRESET)
 		;
 }
 
@@ -252,14 +255,15 @@ static void s3c_mci_reset(struct device_d *hw_dev)
 static int s3c_mci_initialize(struct device_d *hw_dev, struct device_d *mci_dev)
 {
 	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 	s3c_mci_reset(hw_dev);
 
 	/* restore last settings */
 	host_data->clock = s3c_setup_clock_speed(hw_dev, host_data->clock);
-	writel(0x007FFFFF, hw_dev->map_base + SDITIMER);
-	writel(SDICON_MMCCLOCK, hw_dev->map_base + SDICON);
-	writel(512, hw_dev->map_base + SDIBSIZE);
+	writel(0x007FFFFF, map_base + SDITIMER);
+	writel(SDICON_MMCCLOCK, map_base + SDICON);
+	writel(512, map_base + SDIBSIZE);
 
 	return 0;
 }
@@ -335,11 +339,12 @@ static uint32_t s3c_prepare_data_setup(struct device_d *hw_dev, unsigned data_fl
 static int s3c_terminate_transfer(struct device_d *hw_dev)
 {
 	unsigned stoptries = 3;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
-	while (readl(hw_dev->map_base + SDIDSTA) & (SDIDSTA_TXDATAON | SDIDSTA_RXDATAON)) {
+	while (readl(map_base + SDIDSTA) & (SDIDSTA_TXDATAON | SDIDSTA_RXDATAON)) {
 		pr_debug("Transfer still in progress.\n");
 
-		writel(SDIDCON_STOP, hw_dev->map_base + SDIDCON);
+		writel(SDIDCON_STOP, map_base + SDIDCON);
 		s3c_mci_initialize(hw_dev, NULL);
 
 		if ((stoptries--) == 0) {
@@ -360,12 +365,13 @@ static int s3c_terminate_transfer(struct device_d *hw_dev)
 static int s3c_prepare_data_transfer(struct device_d *hw_dev, struct mci_data *data)
 {
 	uint32_t reg;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
-	writel(data->blocksize, hw_dev->map_base + SDIBSIZE);
+	writel(data->blocksize, map_base + SDIBSIZE);
 	reg = s3c_prepare_data_setup(hw_dev, data->flags);
 	reg |= data->blocks & SDIDCON_BLKNUM;
-	writel(reg, hw_dev->map_base + SDIDCON);
-	writel(0x007FFFFF, hw_dev->map_base + SDITIMER);
+	writel(reg, map_base + SDIDCON);
+	writel(0x007FFFFF, map_base + SDITIMER);
 
 	return 0;
 }
@@ -382,34 +388,35 @@ static int s3c_send_command(struct device_d *hw_dev, struct mci_cmd *cmd,
 {
 	uint32_t reg, t1;
 	int rc;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
-	writel(0x007FFFFF, hw_dev->map_base + SDITIMER);
+	writel(0x007FFFFF, map_base + SDITIMER);
 
 	/* setup argument */
-	writel(cmd->cmdarg, hw_dev->map_base + SDICMDARG);
+	writel(cmd->cmdarg, map_base + SDICMDARG);
 
 	/* setup command and transfer characteristic */
 	reg = s3c_prepare_command_setup(cmd->resp_type, data != NULL ? data->flags : 0);
 	reg |= cmd->cmdidx & SDICMDCON_INDEX;
 
 	/* run the command right now */
-	writel(reg | SDICMDCON_CMDSTART, hw_dev->map_base + SDICMDCON);
-	t1 = readl(hw_dev->map_base + SDICMDSTAT);
+	writel(reg | SDICMDCON_CMDSTART, map_base + SDICMDCON);
+	t1 = readl(map_base + SDICMDSTAT);
 	/* wait until command is done */
 	while (1) {
-		reg = readl(hw_dev->map_base + SDICMDSTAT);
+		reg = readl(map_base + SDICMDSTAT);
 		/* done? */
 		if (cmd->resp_type & MMC_RSP_PRESENT) {
 			if (reg & SDICMDSTAT_RSPFIN) {
 				writel(SDICMDSTAT_RSPFIN,
-					hw_dev->map_base + SDICMDSTAT);
+					map_base + SDICMDSTAT);
 				rc = 0;
 				break;
 			}
 		} else {
 			if (reg & SDICMDSTAT_CMDSENT) {
 					writel(SDICMDSTAT_CMDSENT,
-						hw_dev->map_base + SDICMDSTAT);
+						map_base + SDICMDSTAT);
 					rc = 0;
 					break;
 			}
@@ -417,17 +424,17 @@ static int s3c_send_command(struct device_d *hw_dev, struct mci_cmd *cmd,
 		/* timeout? */
 		if (reg & SDICMDSTAT_CMDTIMEOUT) {
 			writel(SDICMDSTAT_CMDTIMEOUT,
-				hw_dev->map_base + SDICMDSTAT);
+				map_base + SDICMDSTAT);
 			rc = -ETIMEDOUT;
 			break;
 		}
 	}
 
 	if ((rc == 0) && (cmd->resp_type & MMC_RSP_PRESENT)) {
-		cmd->response[0] = readl(hw_dev->map_base + SDIRSP0);
-		cmd->response[1] = readl(hw_dev->map_base + SDIRSP1);
-		cmd->response[2] = readl(hw_dev->map_base + SDIRSP2);
-		cmd->response[3] = readl(hw_dev->map_base + SDIRSP3);
+		cmd->response[0] = readl(map_base + SDIRSP0);
+		cmd->response[1] = readl(map_base + SDIRSP1);
+		cmd->response[2] = readl(map_base + SDIRSP2);
+		cmd->response[3] = readl(map_base + SDIRSP3);
 	}
 	/* do not disable the clock! */
 	return rc;
@@ -443,14 +450,15 @@ static int s3c_send_command(struct device_d *hw_dev, struct mci_cmd *cmd,
 static int s3c_prepare_engine(struct device_d *hw_dev)
 {
 	int rc;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 	rc = s3c_terminate_transfer(hw_dev);
 	if (rc != 0)
 		return rc;
 
-	writel(-1, hw_dev->map_base + SDICMDSTAT);
-	writel(-1, hw_dev->map_base + SDIDSTA);
-	writel(-1, hw_dev->map_base + SDIFSTA);
+	writel(-1, map_base + SDICMDSTAT);
+	writel(-1, map_base + SDIDSTA);
+	writel(-1, map_base + SDIFSTA);
 
 	return 0;
 }
@@ -487,6 +495,7 @@ static int s3c_mci_read_block(struct device_d *hw_dev, struct mci_data *data)
 {
 	uint32_t *p;
 	unsigned cnt, data_size;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 #define READ_REASON_TO_FAIL (SDIDSTA_CRCFAIL | SDIDSTA_RXCRCFAIL | SDIDSTA_DATATIMEOUT)
 
@@ -496,23 +505,23 @@ static int s3c_mci_read_block(struct device_d *hw_dev, struct mci_data *data)
 	while (data_size > 0) {
 
 		/* serious error? */
-		if (readl(hw_dev->map_base + SDIDSTA) & READ_REASON_TO_FAIL) {
+		if (readl(map_base + SDIDSTA) & READ_REASON_TO_FAIL) {
 			pr_err("Failed while reading data\n");
 			return -EIO;
 		}
 
 		/* now check the FIFO status */
-		if (readl(hw_dev->map_base + SDIFSTA) & SDIFSTA_FIFOFAIL) {
+		if (readl(map_base + SDIFSTA) & SDIFSTA_FIFOFAIL) {
 			pr_err("Data loss due to FIFO overflow when reading\n");
 			return -EIO;
 		}
 
 		/* we only want to read full words */
-		cnt = (readl(hw_dev->map_base + SDIFSTA) & SDIFSTA_COUNTMASK) >> 2;
+		cnt = (readl(map_base + SDIFSTA) & SDIFSTA_COUNTMASK) >> 2;
 
 		/* read one chunk of data from the FIFO */
 		while (cnt--) {
-			*p = readl(hw_dev->map_base + SDIDATA);
+			*p = readl(map_base + SDIDATA);
 			p++;
 			if (data_size >= 4)
 				data_size -= 4;
@@ -542,6 +551,7 @@ static int s3c_mci_write_block(struct device_d *hw_dev, struct mci_cmd *cmd,
 	const uint32_t *p = (const uint32_t*)data->src;
 	unsigned cnt, data_size;
 	uint32_t reg;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 #define WRITE_REASON_TO_FAIL (SDIDSTA_CRCFAIL | SDIDSTA_DATATIMEOUT)
 
@@ -553,7 +563,7 @@ static int s3c_mci_write_block(struct device_d *hw_dev, struct mci_cmd *cmd,
 	 */
 	cnt = 16;
 	while (cnt--) {
-		writel(*p, hw_dev->map_base + SDIDATA);
+		writel(*p, map_base + SDIDATA);
 		p++;
 		if (data_size >= 4)
 			data_size -= 4;
@@ -566,7 +576,7 @@ static int s3c_mci_write_block(struct device_d *hw_dev, struct mci_cmd *cmd,
 	/* data is now in place and waits for transmitt. Start the command right now */
 	s3c_send_command(hw_dev, cmd, data);
 
-	if ((reg = readl(hw_dev->map_base + SDIFSTA)) & SDIFSTA_FIFOFAIL) {
+	if ((reg = readl(map_base + SDIFSTA)) & SDIFSTA_FIFOFAIL) {
 		pr_err("Command fails immediatly due to FIFO underrun when writing %08X\n",
 			reg);
 		return -EIO;
@@ -574,24 +584,24 @@ static int s3c_mci_write_block(struct device_d *hw_dev, struct mci_cmd *cmd,
 
 	while (data_size > 0) {
 
-		if (readl(hw_dev->map_base + SDIDSTA) & WRITE_REASON_TO_FAIL) {
+		if (readl(map_base + SDIDSTA) & WRITE_REASON_TO_FAIL) {
 			pr_err("Failed writing data\n");
 			return -EIO;
 		}
 
 		/* now check the FIFO status */
-		if ((reg = readl(hw_dev->map_base + SDIFSTA)) & SDIFSTA_FIFOFAIL) {
+		if ((reg = readl(map_base + SDIFSTA)) & SDIFSTA_FIFOFAIL) {
 			pr_err("Data loss due to FIFO underrun when writing %08X\n",
 					reg);
 			return -EIO;
 		}
 
 		/* we only want to write full words */
-		cnt = 16 - (((readl(hw_dev->map_base + SDIFSTA) & SDIFSTA_COUNTMASK) + 3) >> 2);
+		cnt = 16 - (((readl(map_base + SDIFSTA) & SDIFSTA_COUNTMASK) + 3) >> 2);
 
 		/* fill the FIFO if it has free entries */
 		while (cnt--) {
-			writel(*p, hw_dev->map_base + SDIDATA);
+			writel(*p, map_base + SDIDATA);
 			p++;
 			if (data_size >= 4)
 				data_size -= 4;
@@ -616,6 +626,7 @@ static int s3c_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 			struct mci_data *data)
 {
 	int rc;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 	rc = s3c_prepare_engine(hw_dev);
 	if (rc != 0)
@@ -629,7 +640,7 @@ static int s3c_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 		s3c_send_command(hw_dev, cmd, data);
 		rc = s3c_mci_read_block(hw_dev, data);
 		if (rc == 0) {
-			while (!(readl(hw_dev->map_base + SDIDSTA) & SDIDSTA_XFERFINISH))
+			while (!(readl(map_base + SDIDSTA) & SDIDSTA_XFERFINISH))
 				;
 		} else
 			s3c_terminate_transfer(hw_dev);
@@ -638,12 +649,12 @@ static int s3c_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 	if (data->flags & MMC_DATA_WRITE) {
 		rc = s3c_mci_write_block(hw_dev, cmd, data);
 		if (rc == 0) {
-			while (!(readl(hw_dev->map_base + SDIDSTA) & SDIDSTA_XFERFINISH))
+			while (!(readl(map_base + SDIDSTA) & SDIDSTA_XFERFINISH))
 				;
 		} else
 			s3c_terminate_transfer(hw_dev);
 	}
-	writel(0, hw_dev->map_base + SDIDCON);
+	writel(0, map_base + SDIDCON);
 
 	return rc;
 }
@@ -675,10 +686,11 @@ static int mci_request(struct mci_host *mci_pdata, struct mci_cmd *cmd,
 {
 	struct device_d *hw_dev = mci_pdata->hw_dev;
 	int rc;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 	/* enable clock */
-	writel(readl(hw_dev->map_base + SDICON) | SDICON_CLKEN,
-		hw_dev->map_base + SDICON);
+	writel(readl(map_base + SDICON) | SDICON_CLKEN,
+		map_base + SDICON);
 
 	if ((cmd->resp_type == 0) || (data == NULL))
 		rc = s3c_mci_std_cmds(hw_dev, cmd);
@@ -688,8 +700,8 @@ static int mci_request(struct mci_host *mci_pdata, struct mci_cmd *cmd,
 	s3c_finish_request(hw_dev);
 
 	/* disable clock */
-	writel(readl(hw_dev->map_base + SDICON) & ~SDICON_CLKEN,
-		hw_dev->map_base + SDICON);
+	writel(readl(map_base + SDICON) & ~SDICON_CLKEN,
+		map_base + SDICON);
 	return rc;
 }
 
@@ -706,6 +718,7 @@ static void mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
 	struct device_d *hw_dev = mci_pdata->hw_dev;
 	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 	struct mci_host *host = GET_MCI_PDATA(mci_dev);
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 	uint32_t reg;
 
 	switch (bus_width) {
@@ -720,7 +733,7 @@ static void mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
 		break;
 	}
 
-	reg = readl(hw_dev->map_base + SDICON);
+	reg = readl(map_base + SDICON);
 	if (clock) {
 		/* setup the IO clock frequency and enable it */
 		host->clock = host_data->clock = s3c_setup_clock_speed(hw_dev, clock);
@@ -729,7 +742,7 @@ static void mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
 		reg &= ~SDICON_CLKEN;	/* disable the clock */
 		host->clock = host_data->clock = 0;
 	}
-	writel(reg, hw_dev->map_base + SDICON);
+	writel(reg, map_base + SDICON);
 
 	pr_debug("IO settings: bus width=%d, frequency=%u Hz\n",
 		host->bus_width, host->clock);
@@ -772,6 +785,7 @@ static struct mci_host mci_pdata = {
 static int s3c_mci_probe(struct device_d *hw_dev)
 {
 	struct s3c_mci_platform_data *pd = hw_dev->platform_data;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 	/* TODO replace by the global func: enable the SDI unit clock */
 	writel(readl(S3C24X0_CLOCK_POWER_BASE + 0x0c) | 0x200,
@@ -795,7 +809,7 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 	 * Start the clock to let the engine and the card finishes its startup
 	 */
 	host_data.clock = s3c_setup_clock_speed(hw_dev, mci_pdata.f_min);
-	writel(SDICON_FIFORESET | SDICON_MMCCLOCK, hw_dev->map_base + SDICON);
+	writel(SDICON_FIFORESET | SDICON_MMCCLOCK, map_base + SDICON);
 
 	return mci_register(&mci_pdata);
 }
diff --git a/drivers/mci/stm378x.c b/drivers/mci/stm378x.c
index 420c2ea..f48ccaf 100644
--- a/drivers/mci/stm378x.c
+++ b/drivers/mci/stm378x.c
@@ -131,6 +131,8 @@ struct stm_mci_host {
  */
 static int get_cards_response(struct device_d *hw_dev, struct mci_cmd *cmd)
 {
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
+
 	switch (cmd->resp_type) {
 	case MMC_RSP_NONE:
 		return 0;
@@ -138,14 +140,14 @@ static int get_cards_response(struct device_d *hw_dev, struct mci_cmd *cmd)
 	case MMC_RSP_R1:
 	case MMC_RSP_R1b:
 	case MMC_RSP_R3:
-		cmd->response[0] = readl(hw_dev->map_base + HW_SSP_SDRESP0);
+		cmd->response[0] = readl(map_base + HW_SSP_SDRESP0);
 		return 1;
 
 	case MMC_RSP_R2:
-		cmd->response[3] = readl(hw_dev->map_base + HW_SSP_SDRESP0);
-		cmd->response[2] = readl(hw_dev->map_base + HW_SSP_SDRESP1);
-		cmd->response[1] = readl(hw_dev->map_base + HW_SSP_SDRESP2);
-		cmd->response[0] = readl(hw_dev->map_base + HW_SSP_SDRESP3);
+		cmd->response[3] = readl(map_base + HW_SSP_SDRESP0);
+		cmd->response[2] = readl(map_base + HW_SSP_SDRESP1);
+		cmd->response[1] = readl(map_base + HW_SSP_SDRESP2);
+		cmd->response[0] = readl(map_base + HW_SSP_SDRESP3);
 		return 4;
 	}
 
@@ -160,8 +162,10 @@ static int get_cards_response(struct device_d *hw_dev, struct mci_cmd *cmd)
  */
 static void finish_request(struct device_d *hw_dev)
 {
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
+
 	/* stop the engines (normaly already done) */
-	writel(SSP_CTRL0_RUN, hw_dev->map_base + HW_SSP_CTRL0 + 8);
+	writel(SSP_CTRL0_RUN, map_base + HW_SSP_CTRL0 + 8);
 }
 
 /**
@@ -199,10 +203,11 @@ static int get_cmd_error(unsigned status)
 static void stm_setup_timout(struct device_d *hw_dev, unsigned to)
 {
 	uint32_t reg;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
-	reg = readl(hw_dev->map_base + HW_SSP_TIMING) & ~SSP_TIMING_TIMEOUT_MASK;
+	reg = readl(map_base + HW_SSP_TIMING) & ~SSP_TIMING_TIMEOUT_MASK;
 	reg |= SSP_TIMING_TIMEOUT(to);
-	writel(reg, hw_dev->map_base + HW_SSP_TIMING);
+	writel(reg, map_base + HW_SSP_TIMING);
 }
 
 /**
@@ -219,6 +224,7 @@ static void stm_setup_timout(struct device_d *hw_dev, unsigned to)
 static int read_data(struct device_d *hw_dev, void *buffer, unsigned length)
 {
 	uint32_t *p = buffer;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 	if (length & 0x3) {
 		pr_debug("Cannot read data sizes not multiple of 4 (request for %u detected)\n",
@@ -227,10 +233,10 @@ static int read_data(struct device_d *hw_dev, void *buffer, unsigned length)
 	}
 
 	while ((length != 0) &&
-		((readl(hw_dev->map_base + HW_SSP_STATUS) & SSP_STATUS_ERROR) == 0)) {
+		((readl(map_base + HW_SSP_STATUS) & SSP_STATUS_ERROR) == 0)) {
 		/* TODO sort out FIFO overflows and emit -EOI for this case */
-		if ((readl(hw_dev->map_base + HW_SSP_STATUS) & SSP_STATUS_FIFO_EMPTY) == 0) {
-			*p = readl(hw_dev->map_base + HW_SSP_DATA);
+		if ((readl(map_base + HW_SSP_STATUS) & SSP_STATUS_FIFO_EMPTY) == 0) {
+			*p = readl(map_base + HW_SSP_DATA);
 			p++;
 			length -= 4;
 		}
@@ -257,6 +263,7 @@ static int read_data(struct device_d *hw_dev, void *buffer, unsigned length)
 static int write_data(struct device_d *hw_dev, const void *buffer, unsigned length)
 {
 	const uint32_t *p = buffer;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 	if (length & 0x3) {
 		pr_debug("Cannot write data sizes not multiple of 4 (request for %u detected)\n",
@@ -265,10 +272,10 @@ static int write_data(struct device_d *hw_dev, const void *buffer, unsigned leng
 	}
 
 	while ((length != 0) &&
-		((readl(hw_dev->map_base + HW_SSP_STATUS) & SSP_STATUS_ERROR) == 0)) {
+		((readl(map_base + HW_SSP_STATUS) & SSP_STATUS_ERROR) == 0)) {
 		/* TODO sort out FIFO overflows and emit -EOI for this case */
-		if ((readl(hw_dev->map_base + HW_SSP_STATUS) & SSP_STATUS_FIFO_FULL) == 0) {
-			writel(*p, hw_dev->map_base + HW_SSP_DATA);
+		if ((readl(map_base + HW_SSP_STATUS) & SSP_STATUS_FIFO_FULL) == 0) {
+			writel(*p, map_base + HW_SSP_DATA);
 			p++;
 			length -= 4;
 		}
@@ -288,6 +295,7 @@ static int write_data(struct device_d *hw_dev, const void *buffer, unsigned leng
 static int transfer_data(struct device_d *hw_dev, struct mci_data *data)
 {
 	unsigned length;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 	if (data != NULL) {
 		length = data->blocks * data->blocksize;
@@ -313,7 +321,7 @@ static int transfer_data(struct device_d *hw_dev, struct mci_data *data)
 	 *
 	 * Start the transaction right now
 	 */
-	writel(SSP_CTRL0_RUN, hw_dev->map_base + HW_SSP_CTRL0 + 4);
+	writel(SSP_CTRL0_RUN, map_base + HW_SSP_CTRL0 + 4);
 
 	if (data != NULL) {
 		if (data->flags & MMC_DATA_READ)
@@ -366,31 +374,33 @@ static uint32_t prepare_transfer_setup(unsigned cmd_flags, unsigned data_flags)
  */
 static int stm_mci_std_cmds(struct device_d *hw_dev, struct mci_cmd *cmd)
 {
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
+
 	/* setup command and transfer parameters */
 	writel(prepare_transfer_setup(cmd->resp_type, 0) |
-		SSP_CTRL0_ENABLE, hw_dev->map_base + HW_SSP_CTRL0);
+		SSP_CTRL0_ENABLE, map_base + HW_SSP_CTRL0);
 
 	/* prepare the command, when no response is expected add a few trailing clocks */
 	writel(SSP_CMD0_CMD(cmd->cmdidx) |
 		(cmd->resp_type & MMC_RSP_PRESENT ? 0 : SSP_CMD0_APPEND_8CYC),
-		hw_dev->map_base + HW_SSP_CMD0);
+		map_base + HW_SSP_CMD0);
 
 	/* prepare command's arguments */
-	writel(cmd->cmdarg, hw_dev->map_base + HW_SSP_CMD1);
+	writel(cmd->cmdarg, map_base + HW_SSP_CMD1);
 
 	stm_setup_timout(hw_dev, 0xffff);
 
 	/* start the transfer */
-	writel(SSP_CTRL0_RUN, hw_dev->map_base + HW_SSP_CTRL0 + 4);
+	writel(SSP_CTRL0_RUN, map_base + HW_SSP_CTRL0 + 4);
 
 	/* wait until finished */
-	while (readl(hw_dev->map_base + HW_SSP_CTRL0) & SSP_CTRL0_RUN)
+	while (readl(map_base + HW_SSP_CTRL0) & SSP_CTRL0_RUN)
 		;
 
 	if (cmd->resp_type & MMC_RSP_PRESENT)
 		get_cards_response(hw_dev, cmd);
 
-	return get_cmd_error(readl(hw_dev->map_base + HW_SSP_STATUS));
+	return get_cmd_error(readl(map_base + HW_SSP_STATUS));
 }
 
 /**
@@ -406,6 +416,7 @@ static int stm_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 	struct stm_mci_host *host_data = (struct stm_mci_host*)GET_HOST_DATA(hw_dev);
 	uint32_t xfer_cnt, log2blocksize, block_cnt;
 	int err;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 	/* Note: 'data' can be NULL! */
 	if (data != NULL) {
@@ -422,17 +433,17 @@ static int stm_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 		(xfer_cnt != 0 ? SSP_CTRL0_DATA_XFER : 0) | /* command plus data */
 		SSP_CTRL0_ENABLE |
 		SSP_CTRL0_XFER_COUNT(xfer_cnt), /* byte count to be transfered */
-		hw_dev->map_base + HW_SSP_CTRL0);
+		map_base + HW_SSP_CTRL0);
 
 	/* prepare the command and the transfered data count */
 	writel(SSP_CMD0_CMD(cmd->cmdidx) |
 		SSP_CMD0_BLOCK_SIZE(log2blocksize) |
 		SSP_CMD0_BLOCK_COUNT(block_cnt) |
 		(cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION ? SSP_CMD0_APPEND_8CYC : 0),
-		hw_dev->map_base + HW_SSP_CMD0);
+		map_base + HW_SSP_CMD0);
 
 	/* prepare command's arguments */
-	writel(cmd->cmdarg, hw_dev->map_base + HW_SSP_CMD1);
+	writel(cmd->cmdarg, map_base + HW_SSP_CMD1);
 
 	stm_setup_timout(hw_dev, 0xffff);
 
@@ -443,7 +454,7 @@ static int stm_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 	}
 
 	/* wait until finished */
-	while (readl(hw_dev->map_base + HW_SSP_CTRL0) & SSP_CTRL0_RUN)
+	while (readl(map_base + HW_SSP_CTRL0) & SSP_CTRL0_RUN)
 		;
 
 	get_cards_response(hw_dev, cmd);
@@ -475,6 +486,7 @@ static int stm_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 static unsigned setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 {
 	unsigned ssp, div, rate, reg;
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 	if (nc == 0U) {
 		/* TODO stop the clock */
@@ -493,9 +505,9 @@ static unsigned setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 		return 0;
 	}
 
-	reg = readl(hw_dev->map_base + HW_SSP_TIMING) & SSP_TIMING_TIMEOUT_MASK;
+	reg = readl(map_base + HW_SSP_TIMING) & SSP_TIMING_TIMEOUT_MASK;
 	reg |= SSP_TIMING_CLOCK_DIVIDE(div) | SSP_TIMING_CLOCK_RATE(rate - 1);
-	writel(reg, hw_dev->map_base + HW_SSP_TIMING);
+	writel(reg, map_base + HW_SSP_TIMING);
 
 	return ssp / div / rate;
 }
@@ -508,8 +520,10 @@ static unsigned setup_clock_speed(struct device_d *hw_dev, unsigned nc)
  */
 static void stm_mci_reset(struct device_d *hw_dev)
 {
-	writel(SSP_CTRL0_SFTRST, hw_dev->map_base + HW_SSP_CTRL0 + 8);
-	while (readl(hw_dev->map_base + HW_SSP_CTRL0) & SSP_CTRL0_SFTRST)
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
+
+	writel(SSP_CTRL0_SFTRST, map_base + HW_SSP_CTRL0 + 8);
+	while (readl(map_base + HW_SSP_CTRL0) & SSP_CTRL0_SFTRST)
 		;
 }
 
@@ -522,9 +536,10 @@ static int stm_mci_initialize(struct device_d *hw_dev, struct device_d *mci_dev)
 {
 	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 	struct stm_mci_host *host_data = (struct stm_mci_host*)GET_HOST_DATA(hw_dev);
+	resource_size_t map_base = dev_resource_get_start(hw_dev);
 
 	/* enable the clock to this unit to be able to reset it */
-	writel(SSP_CTRL0_CLKGATE, hw_dev->map_base + HW_SSP_CTRL0 + 8);
+	writel(SSP_CTRL0_CLKGATE, map_base + HW_SSP_CTRL0 + 8);
 
 	/* reset the unit */
 	stm_mci_reset(hw_dev);
@@ -534,10 +549,10 @@ static int stm_mci_initialize(struct device_d *hw_dev, struct device_d *mci_dev)
 	stm_setup_timout(hw_dev, 0xffff);
 	writel(SSP_CTRL0_IGNORE_CRC |
 		SSP_CTRL0_BUS_WIDTH(host_data->bus_width),
-		hw_dev->map_base + HW_SSP_CTRL0);
+		map_base + HW_SSP_CTRL0);
 	writel(SSP_CTRL1_POLARITY |
 		SSP_CTRL1_SSP_MODE(3) |
-		SSP_CTRL1_WORD_LENGTH(7), hw_dev->map_base + HW_SSP_CTRL1);
+		SSP_CTRL1_WORD_LENGTH(7), map_base + HW_SSP_CTRL1);
 
 	return 0;
 }
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
index 63ba188..dbd9d01 100644
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
index 7c9bc32..e65c053 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -11,11 +11,18 @@
  * A typical device registration is as follows:
  *
  * @code
+ * static struct resource my_nand_resources[] = {
+ * 	[0] = {
+ *		.start	= GPMC base address
+ *		.size	= GPMC address map size.
+ * 	},
+ * };
+ *
  * static struct device_d my_nand_device = {
  *	.name = "gpmc_nand",
  *	.id = some identifier you need to show.. e.g. "gpmc_nand0"
- *	.map_base = GPMC base address
- *	.size = GPMC address map size.
+ * 	.num_resources	= ARRAY_SIZE(my_nand_resources),
+ * 	.resource	= my_nand_resources,
  *	.platform_data = platform data - required - explained below
  * };
  * platform data required:
@@ -439,7 +446,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
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
index 9c8de77..e6aa792 100644
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
index fa5e5ee..78db1d8 100644
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
+			map_base, info->size, info->size);
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
index a7562f9..fb881fc 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -322,7 +322,7 @@ static int imx_serial_probe(struct device_d *dev)
 	priv = malloc(sizeof(*priv));
 	cdev = &priv->cdev;
 
-	priv->regs = (void __force __iomem *)dev->map_base;
+	priv->regs = (void __force __iomem *)dev_resource_get_start(dev);
 	dev->type_data = cdev;
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
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
 
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 90563f5..e6ffb77 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -60,64 +60,64 @@ struct stm_serial_local {
 
 static void stm_serial_putc(struct console_device *cdev, char c)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
 	/* Wait for room in TX FIFO */
-	while (readl(dev->map_base + UARTDBGFR) & TXFF)
+	while (readl(map_base + UARTDBGFR) & TXFF)
 		;
 
-	writel(c, dev->map_base + UARTDBGDR);
+	writel(c, map_base + UARTDBGDR);
 }
 
 static int stm_serial_tstc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
 	/* Check if RX FIFO is not empty */
-	return !(readl(dev->map_base + UARTDBGFR) & RXFE);
+	return !(readl(map_base + UARTDBGFR) & RXFE);
 }
 
 static int stm_serial_getc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
 	/* Wait while TX FIFO is empty */
-	while (readl(dev->map_base + UARTDBGFR) & RXFE)
+	while (readl(map_base + UARTDBGFR) & RXFE)
 		;
 
-	return readl(dev->map_base + UARTDBGDR) & 0xff;
+	return readl(map_base + UARTDBGDR) & 0xff;
 }
 
 static void stm_serial_flush(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 
 	/* Wait for TX FIFO empty */
-	while (readl(dev->map_base + UARTDBGFR) & TXFF)
+	while (readl(map_base + UARTDBGFR) & TXFF)
 		;
 }
 
 static int stm_serial_setbaudrate(struct console_device *cdev, int new_baudrate)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 	struct stm_serial_local *local = container_of(cdev, struct stm_serial_local, cdev);
 	uint32_t cr, lcr_h, quot;
 
 	/* Disable everything */
-	cr = readl(dev->map_base + UARTDBGCR);
-	writel(0, dev->map_base + UARTDBGCR);
+	cr = readl(map_base + UARTDBGCR);
+	writel(0, map_base + UARTDBGCR);
 
 	/* Calculate and set baudrate */
 	quot = (imx_get_xclk() * 4000) / new_baudrate;
-	writel(quot & 0x3f, dev->map_base + UARTDBGFBRD);
-	writel(quot >> 6, dev->map_base + UARTDBGIBRD);
+	writel(quot & 0x3f, map_base + UARTDBGFBRD);
+	writel(quot >> 6, map_base + UARTDBGIBRD);
 
 	/* Set 8n1 mode, enable FIFOs */
 	lcr_h = WLEN8 | FEN;
-	writel(lcr_h, dev->map_base + UARTDBGLCR_H);
+	writel(lcr_h, map_base + UARTDBGLCR_H);
 
 	/* Re-enable debug UART */
-	writel(cr, dev->map_base + UARTDBGCR);
+	writel(cr, map_base + UARTDBGCR);
 
 	local->baudrate = new_baudrate;
 
@@ -133,7 +133,7 @@ static int stm_clocksource_clock_change(struct notifier_block *nb, unsigned long
 
 static int stm_serial_init_port(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	resource_size_t map_base = dev_resource_get_start(cdev->dev);
 	/*
 	 * If the board specific file registers this console we should force
 	 * the usage of the debug UART pins, to be able to let the user see
@@ -143,10 +143,10 @@ static int stm_serial_init_port(struct console_device *cdev)
 	imx_gpio_mode(PWM0_DUART_RX);
 
 	/* Disable UART */
-	writel(0, dev->map_base + UARTDBGCR);
+	writel(0, map_base + UARTDBGCR);
 
 	/* Mask interrupts */
-	writel(0, dev->map_base + UARTDBGIMSC);
+	writel(0, map_base + UARTDBGIMSC);
 
 	return 0;
 }
@@ -164,6 +164,8 @@ static struct stm_serial_local stm_device = {
 
 static int stm_serial_probe(struct device_d *dev)
 {
+	resource_size_t map_base = dev_resource_get_start(dev);
+
 	stm_device.cdev.dev = dev;
 	dev->type_data = &stm_device.cdev;
 
@@ -171,7 +173,7 @@ static int stm_serial_probe(struct device_d *dev)
 	stm_serial_setbaudrate(&stm_device.cdev, CONFIG_BAUDRATE);
 
 	/* Enable UART */
-	writel(TXE | RXE | UARTEN, dev->map_base + UARTDBGCR);
+	writel(TXE | RXE | UARTEN, map_base + UARTDBGCR);
 
 	console_register(&stm_device.cdev);
 	stm_device.notify.notifier_call = stm_clocksource_clock_change;
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 2ad1bfa..b37516e 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -382,7 +382,7 @@ static int imx_spi_probe(struct device_d *dev)
 	imx->chipselect = spi_imx_devtype_data[version].chipselect;
 	imx->xchg_single = spi_imx_devtype_data[version].xchg_single;
 	imx->init = spi_imx_devtype_data[version].init;
-	imx->regs = (void __iomem *)dev->map_base;
+	imx->regs = (void __iomem *)dev_resource_get_start(dev);
 
 	imx->init(imx);
 
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 48fd0b5..6ea5818 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -2241,7 +2241,7 @@ static int fsl_udc_probe(struct device_d *dev)
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
index c38082d..aec2f4c 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -858,7 +858,7 @@ static int imxfb_probe(struct device_d *dev)
 	fbi = xzalloc(sizeof(*fbi));
 	info = &fbi->info;
 
-	fbi->regs = (void *)dev->map_base;
+	fbi->regs = (void *)dev_resource_get_start(dev);
 	fbi->dev = dev;
 	info->priv = fbi;
 	info->fbops = &imxfb_ops;
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
index b9edca0..c7dce1e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -24,6 +24,7 @@
 #define DRIVER_H
 
 #include <linux/list.h>
+#include <linux/ioport.h>
 
 #define MAX_DRIVER_NAME		32
 #define FORMAT_DRIVER_MANE_ID	"%s%d"
@@ -70,11 +71,8 @@ struct device_d {
 	 * something like eth0 or nor0. */
 	int id;
 
-	resource_size_t size;
-
-	/*! For devices which are directly mapped into memory, i.e. NOR
-	 * Flash or SDRAM. */
-	resource_size_t map_base;
+	struct resource *resource;
+	int num_resources;
 
 	void *platform_data; /*! board specific information about this device */
 
@@ -184,6 +182,41 @@ static inline const char *dev_name(const struct device_d *dev)
 	return dev_id(dev);
 }
 
+/* ressource helper */
+static inline resource_size_t dev_resource_get_start(struct device_d *dev)
+{
+	if (!dev || !dev->resource)
+		return 0;
+
+	return dev->resource[0].start;
+}
+
+static inline void dev_resource_set_start(struct device_d *dev,
+					  resource_size_t start)
+{
+	if (!dev || !dev->resource)
+		return;
+
+	dev->resource[0].start = start;
+}
+
+static inline resource_size_t dev_resource_get_size(struct device_d *dev)
+{
+	if (!dev || !dev->resource)
+		return 0;
+
+	return dev->resource[0].size;
+}
+
+static inline void dev_resource_set_size(struct device_d *dev,
+					 resource_size_t size)
+{
+	if (!dev || !dev->resource)
+		return;
+
+	dev->resource[0].size = size;
+}
+
 /* linear list over all available devices
  */
 extern struct list_head device_list;
@@ -326,10 +359,5 @@ int devfs_add_partition(const char *devname, unsigned long offset, size_t size,
 		int flags, const char *name);
 int devfs_del_partition(const char *name);
 
-struct memory_platform_data {
-	char *name;
-	unsigned int flags;
-};
-
 #endif /* DRIVER_H */
 
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
index ff92e44..a383e9b 100644
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
 
@@ -322,7 +322,8 @@ static int do_devinfo(struct command *cmdtp, int argc, char *argv[])
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
