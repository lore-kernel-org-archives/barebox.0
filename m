Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oz2ea-0002Uw-60
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 07:25:11 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Sep 2010 09:23:24 +0200
Message-Id: <1285313004-25445-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285313004-25445-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285313004-25445-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] ram device: use resource structure instead of
	memory_platform_data
To: barebox@lists.infradead.org

as we have the name content

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/a9m2410/a9m2410.c                  |    8 +----
 arch/arm/boards/a9m2440/a9m2440.c                  |    8 +----
 arch/arm/boards/edb93xx/edb93xx.c                  |   32 +++++---------------
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    8 +----
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    8 +----
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    8 +----
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   16 ++-------
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    8 +----
 arch/arm/boards/guf-neso/board.c                   |    8 +----
 arch/arm/boards/imx21ads/imx21ads.c                |    8 +----
 arch/arm/boards/imx27ads/imx27ads.c                |    8 +----
 arch/arm/boards/netx/netx.c                        |    8 +----
 arch/arm/boards/omap/board-beagle.c                |    8 +----
 arch/arm/boards/omap/board-omap3evm.c              |    8 +----
 arch/arm/boards/omap/board-sdp343x.c               |    8 +----
 arch/arm/boards/pcm037/pcm037.c                    |   24 ++++-----------
 arch/arm/boards/pcm038/pcm038.c                    |   16 ++-------
 arch/arm/boards/pcm043/pcm043.c                    |    8 +----
 arch/arm/boards/phycard-i.MX27/pca100.c            |    8 +----
 arch/arm/boards/scb9328/scb9328.c                  |    8 +----
 arch/arm/mach-at91/at91sam9260_devices.c           |    8 +----
 arch/arm/mach-at91/at91sam9263_devices.c           |    8 +----
 arch/arm/mach-nomadik/8815.c                       |    8 +----
 arch/blackfin/boards/ipe337/ipe337.c               |    8 +----
 arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c |    8 +----
 arch/ppc/boards/pcm030/pcm030.c                    |    8 +----
 arch/x86/boards/x86_generic/generic_pc.c           |    8 +----
 commands/mem.c                                     |   14 +++-----
 common/startup.c                                   |   12 +++----
 include/driver.h                                   |    5 ---
 30 files changed, 78 insertions(+), 225 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index ac8bf65..fff1409 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -35,18 +35,14 @@
 #include <mach/s3c24x0-iomap.h>
 #include <mach/s3c24x0-nand.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name		= "ram0",
-	.flags		= DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name     	= "ram",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= CS6_BASE,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data  = &ram_pdata,
 };
 
 // {"NAND 1MiB 3,3V 8-bit", 0xec, 256, 1, 0x1000, 0},
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 8d4c7fd..1899be6 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -38,18 +38,14 @@
 
 #include "baseboards.h"
 
-static struct memory_platform_data ram_pdata = {
-	.name		= "ram0",
-	.flags		= DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= CS6_BASE,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data	= &ram_pdata,
 };
 
 static struct s3c24x0_nand_platform_data nand_info = {
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index eb37fcc..442993d 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -47,69 +47,53 @@ static struct device_d cfi_dev = {
 	},
 };
 
-static struct memory_platform_data ram_dev_pdata0 = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name = "ram0",
 		.start	= CONFIG_EP93XX_SDRAM_BANK0_BASE,
 		.size	= CONFIG_EP93XX_SDRAM_BANK0_SIZE,
+		.flags = DEVFS_RDWR,
 	},
-	.platform_data = &ram_dev_pdata0,
 };
 
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
-static struct memory_platform_data ram_dev_pdata1 = {
-	.name = "ram1",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram1_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram1",
 		.start	= CONFIG_EP93XX_SDRAM_BANK1_BASE,
 		.size	= CONFIG_EP93XX_SDRAM_BANK1_SIZE,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_dev_pdata1,
 };
 #endif
 
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
-static struct memory_platform_data ram_dev_pdata2 = {
-	.name = "ram2",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram2_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram2",
 		.start	= CONFIG_EP93XX_SDRAM_BANK2_BASE,
 		.size	= CONFIG_EP93XX_SDRAM_BANK2_SIZE,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_dev_pdata2,
 };
 #endif
 
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
-static struct memory_platform_data ram_dev_pdata3 = {
-	.name = "ram3",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram3_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram3",
 		.start	= CONFIG_EP93XX_SDRAM_BANK3_BASE,
 		.size	= CONFIG_EP93XX_SDRAM_BANK3_SIZE,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_dev_pdata3,
 };
 #endif
 
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index e8cdc03..429afa0 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -93,19 +93,15 @@ static struct device_d fec_dev = {
 	.platform_data	= &fec_info,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
-};
-
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= IMX_SDRAM_CS0,
 		.size	= 64 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &sdram_pdata,
 };
 
 struct imx_nand_platform_data nand_info = {
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 9fa8f54..e346adc 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -66,11 +66,6 @@ static struct device_d cfi_dev1 = {
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
@@ -81,10 +76,11 @@ static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0xa0000000,
 		.size	= SDRAM0 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
 };
 
 static struct fec_platform_data fec_info = {
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 87e992c..2ae5121 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -66,19 +66,15 @@ static struct device_d fec_dev = {
 	.platform_data	= &fec_info,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= IMX_SDRAM_CS0,
 		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data	= &sdram_pdata,
 };
 
 struct imx_nand_platform_data nand_info = {
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 1d1fcb6..f076eee 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -122,15 +122,11 @@ static struct device_d fec_dev = {
 	.platform_data	= &fec_info,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
-};
-
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= IMX_SDRAM_CS0,
 #if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
 		.size	= 64 * 1024 * 1024,
@@ -139,23 +135,19 @@ static struct device_d sdram0_dev = {
 #else
 #error "Unsupported SDRAM type"
 #endif
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &sdram_pdata,
-};
-
-static struct memory_platform_data sram_pdata = {
-	.name	= "sram0",
-	.flags	= DEVFS_RDWR,
 };
 
 static struct device_d sram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "sram0",
 		.start	= 0x78000000,
 		.size	= 128 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &sram_pdata,
 };
 
 struct imx_nand_platform_data nand_info = {
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index fdce04f..d286213 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -81,19 +81,15 @@ static struct device_d fec_dev = {
 	.platform_data	= &fec_info,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= IMX_SDRAM_CS0,
 		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data	= &sdram_pdata,
 };
 
 struct imx_nand_platform_data nand_info = {
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 4923f46..4e459eb 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -53,19 +53,15 @@
 #define LCD_POWER_GPIO (GPIO_PORTF + 18)
 #define BACKLIGHT_POWER_GPIO (GPIO_PORTE + 5)
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name 	= "ram0",
 		.start	= 0xa0000000,
 		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
 };
 
 static struct fec_platform_data fec_info = {
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index f72da9a..19d478e 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -49,19 +49,15 @@ static struct device_d cfi_dev = {
 	},
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0xc0000000,
 		.size	= 64 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
 };
 
 struct imx_nand_platform_data nand_info = {
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index 0b64dba..5470542 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -42,19 +42,15 @@ static struct device_d cfi_dev = {
 	},
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0xa0000000,
 		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
 };
 
 static struct fec_platform_data fec_info = {
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index 44c116f..d658ffd 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -39,19 +39,15 @@ static struct device_d cfi_dev = {
 	},
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0x80000000,
 		.size	= 64 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
 };
 
 struct netx_eth_platform_data eth0_data = {
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 7b2deca..8f92616 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -264,19 +264,15 @@ static int beagle_console_init(void)
 console_initcall(beagle_console_init);
 #endif /* CONFIG_DRIVER_SERIAL_NS16550 */
 
-static struct memory_platform_data sram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id = -1,
 	.name = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0x80000000,
 		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &sram_pdata,
 };
 
 #ifdef CONFIG_USB_EHCI_OMAP
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index 1720c2b..773bf15 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -243,19 +243,15 @@ static int omap3evm_init_console(void)
 console_initcall(omap3evm_init_console);
 #endif /* CONFIG_DRIVER_SERIAL_NS16550 */
 
-static struct memory_platform_data sram_pdata = {
-	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0x80000000,
 		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data	= &sram_pdata,
 };
 
 static int omap3evm_init_devices(void)
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 3b8db5c..1d89c5e 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -643,19 +643,15 @@ static int sdp3430_flash_init(void)
 	return 0;
 }
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 struct device_d sdram_dev = {
 	.id = -1,
 	.name = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0x80000000,
 		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
 };
 
 /*-----------------------Generic Devices Initialization ---------------------*/
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 8973a44..6ffd87c 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -56,19 +56,15 @@ static struct device_d cfi_dev = {
  * up to 2MiB static RAM type memory, connected
  * to CS4, data width is 16 bit
  */
-static struct memory_platform_data sram_dev_pdata0 = {
-	.name = "sram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "sram0",
 		.start	= IMX_CS4_BASE,
 		.size	= IMX_CS4_RANGE,	/* area size */
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &sram_dev_pdata0,
 };
 
 /*
@@ -91,19 +87,15 @@ static struct device_d network_dev = {
 #define SDRAM0	256
 #endif
 
-static struct memory_platform_data ram_dev_pdata0 = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= IMX_SDRAM_CS0,
 		.size	= SDRAM0 * 1024 * 1024,	/* fix size */
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_dev_pdata0,
 };
 
 #ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
@@ -114,19 +106,15 @@ static struct device_d sdram0_dev = {
 #define SDRAM1	256
 #endif
 
-static struct memory_platform_data ram_dev_pdata1 = {
-	.name = "ram1",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram1_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram1",
 		.start	= IMX_SDRAM_CS1,
 		.size	= SDRAM1 * 1024 * 1024,	/* fix size */
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_dev_pdata1,
 };
 #endif
 
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 27bb9d1..20ffffb 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -53,34 +53,26 @@ static struct device_d cfi_dev = {
 	},
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0xa0000000,
 		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
-};
-
-static struct memory_platform_data sram_pdata = {
-	.name = "sram0",
-	.flags = DEVFS_RDWR,
 };
 
 static struct device_d sram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "sram0",
 		.start	= 0xc8000000,
 		.size	= 512 * 1024, /* Can be up to 2MiB */
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &sram_pdata,
 };
 
 static struct fec_platform_data fec_info = {
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 262814f..9f81774 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -70,19 +70,15 @@ static struct device_d fec_dev = {
 	.platform_data	= &fec_info,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram0_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= IMX_SDRAM_CS0,
 		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
 };
 
 struct imx_nand_platform_data nand_info = {
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 410e13b..e617dc2 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -40,19 +40,15 @@
 #include <usb/isp1504.h>
 #include <mach/iomux-mx27.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0xa0000000,
 		.size	= 128 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
 };
 
 static struct fec_platform_data fec_info = {
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 94e41c1..982ddd8 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -41,19 +41,15 @@ static struct device_d cfi_dev = {
 	},
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0x08000000,
 		.size	= 16 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &sdram_pdata,
 };
 
 static struct dm9000_platform_data dm9000_data = {
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 077459a..548bff6 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -20,18 +20,14 @@
 
 #include "generic.h"
 
-static struct memory_platform_data sram_pdata = {
-	.name = "sram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "sram0",
 		.start	= AT91_CHIPSELECT_1,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &sram_pdata,
 };
 
 void at91_add_device_sdram(u32 size)
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 3358a80..dca6ac4 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -20,18 +20,14 @@
 
 #include "generic.h"
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= AT91_CHIPSELECT_1,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
 };
 
 void at91_add_device_sdram(u32 size)
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index 49f4369..908e4bf 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -31,18 +31,14 @@ static struct clk st8815_clk_48 = {
        .rate = 48 * 1000 * 1000,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id = -1,
 	.name = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0x00000000,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
 };
 
 void st8815_add_device_sdram(u32 size)
diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index 168933a..acf09ce 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -14,19 +14,15 @@ static struct device_d cfi_dev = {
 	},
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0x00000000,
 		.size	= 128 * 1024 * 1024,
+		.flags = DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
 };
 
 static struct device_d smc911x_dev = {
diff --git a/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c b/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
index 286b4e6..5c820a4 100644
--- a/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
+++ b/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
@@ -86,20 +86,16 @@ static struct device_d network_dev1 =
 /*
  * 128MiB of SDRAM, data width is 32 bit
  */
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev =
 {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= CFG_SDRAM_ADDRESS,
 		.size	= CFG_SDRAM_SIZE,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
 };
 
 static int mcfv4e_devices_init(void)
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index ea9aac8..e9bfea5 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -46,19 +46,15 @@ struct device_d cfi_dev = {
 	},
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
 struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0x00000000,
 		.size	= 64 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &ram_pdata,
 };
 
 static struct mpc5xxx_fec_platform_data fec_info = {
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index b310ebb..c6a888a 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -30,19 +30,15 @@
 #include <asm/syslib.h>
 #include <ns16550.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name		= "ram0",
-	.flags		= DEVFS_RDWR,
-};
-
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
 	.resource_base = {
+		.name	= "ram0",
 		.start	= 0x00000000,
 		.size	= 16 * 1024 * 1024,
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data	= &ram_pdata,
 };
 
 static struct device_d bios_disk_dev = {
diff --git a/commands/mem.c b/commands/mem.c
index 8d715c5..50084c2 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -589,14 +589,14 @@ static struct file_operations memops = {
 
 static int mem_probe(struct device_d *dev)
 {
-	struct memory_platform_data *pdata = dev->platform_data;
+	struct resource *res = &dev->resource_base;
 	struct cdev *cdev;
 
 	cdev = xzalloc(sizeof (*cdev));
 	dev->priv = cdev;
 
-	cdev->name = pdata->name;
-	cdev->size = dev_resource_get_size(dev);
+	cdev->name = (char*)res->name;
+	cdev->size = res->size;
 	cdev->ops = &memops;
 	cdev->dev = dev;
 
@@ -610,19 +610,15 @@ static struct driver_d mem_drv = {
 	.probe = mem_probe,
 };
 
-static struct memory_platform_data mem_dev_pdata = {
-	.name = "mem",
-	.flags = DEVFS_RDWR,
-};
-
 static struct device_d mem_dev = {
 	.id = -1,
 	.name  = "mem",
 	.resource_base = {
+		.name	= "mem",
 		.start	= 0x00000000,
 		.size   = ~0, /* FIXME: should be 0x100000000, ahem... */
+		.flags	= DEVFS_RDWR,
 	},
-	.platform_data = &mem_dev_pdata,
 };
 
 static int mem_init(void)
diff --git a/common/startup.c b/common/startup.c
index a68d101..b7125ac 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -81,20 +81,18 @@ void early_init (void)
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 #include <generated/barebox_default_env.h>
 
-static struct memory_platform_data default_env_platform_data = {
-	.name = "defaultenv",
-};
-
 static struct device_d default_env_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.platform_data	= &default_env_platform_data,
+	.resource_base = {
+		.name = "defaultenv",
+	},
 };
 
 static int register_default_env(void)
 {
-	default_env_dev.resource_base.start = (unsigned long)default_environment;
-	default_env_dev.resource_base.size = sizeof(default_environment);
+	dev_resource_set_start(&default_env_dev, (resource_size_t)default_environment);
+	dev_resource_set_size(&default_env_dev, sizeof(default_environment));
 	register_device(&default_env_dev);
 	return 0;
 }
diff --git a/include/driver.h b/include/driver.h
index 59e1bd8..534b8dd 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -346,10 +346,5 @@ int devfs_add_partition(const char *devname, unsigned long offset, size_t size,
 		int flags, const char *name);
 int devfs_del_partition(const char *name);
 
-struct memory_platform_data {
-	char *name;
-	unsigned int flags;
-};
-
 #endif /* DRIVER_H */
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
