Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg31-0006q9-Rc
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:09:19 +0000
Received: by mail-pg0-x243.google.com with SMTP id d2-v6so3847263pga.13
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:09:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:08:52 -0700
Message-Id: <20180615040852.22906-1-andrew.smirnov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] Revert "i.MX: Add provisions to boot from IRAM"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

After being introduced 3 years ago this feature ended up being
"obsoleted by events" and project it was supposed to be a part of
winded down.

Revert this feature due to:

  a) Lack of users

  b) Existence of better way to make barebox load via SRAM as
  intermediary step that does not require two separate images to be
  built (.imx-sram-img)

This reverts commit 903c9477a08c5655161779ef4144886928ecc7d1.
---

I am assuming that this feature was never used by anyone but me (hence
a) above), so it should be safe to drop it. However if this feature is
useful to anyone, I am more than happy to keep it.

Thanks,
Andrey Smirnov

 Documentation/boards/imx.rst                  | 27 ---------
 .../arm/boards/freescale-mx51-babbage/board.c | 60 -------------------
 .../flash-header-common.imxcfg                | 58 ------------------
 .../flash-header-imx51-babbage-xload.imxcfg   |  3 -
 .../flash-header-imx51-babbage.imxcfg         | 60 ++++++++++++++++++-
 .../boards/freescale-mx51-babbage/lowlevel.c  | 25 --------
 arch/arm/configs/imx_v7-xload_defconfig       | 31 ----------
 arch/arm/mach-imx/Kconfig                     | 15 -----
 arch/arm/mach-imx/Makefile                    |  1 -
 arch/arm/mach-imx/xload.c                     | 52 ----------------
 images/Makefile.imx                           | 19 +-----
 11 files changed, 59 insertions(+), 292 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx51-babbage/flash-header-common.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage-xload.imxcfg
 delete mode 100644 arch/arm/configs/imx_v7-xload_defconfig
 delete mode 100644 arch/arm/mach-imx/xload.c

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index b3002badf..73b0993ce 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -105,33 +105,6 @@ Some notes about the mentioned *conditions*.
  - ``until_any_bit_clear`` waits until ``(*addr & mask) != mask`` is true
  - ``until_any_bit_set`` waits until ``(*addr & mask) != 0`` is true.
 
-Internal Boot Mode Through Internal RAM(IRAM)
----------------------------------------------
-
-The Internal Boot Mode Through Internal RAM is supported on:
-
-* i.MX51
-
-As can be easily deduced from its name, the Internal Boot Mode Through
-Internal RAM is just a variant of Internal Boot Mode so all of the
-stated above still applies in this case. What it differs in is the following:
-
-* Boot process is done in two stages(First stage binary can be
-  produced with ``imx_v7-xload_defconfig``)
-* DCD of the first stage image is set such that the image is fetched
-  into an unoccupied area or IRAM
-* First stage image once uncompressed and set up will look for a
-  second stage bootloader on the same media it booted from and start
-  it(see mach-imx/xload.c for more details)
-* Second stage images are just regular i.MX boot images
-
-Since on a typical i.MX SoC unused IRAM area is not enough to run
-anything but a PBL this mode, due to its very limited usability,
-serves only one purpose -- allow for a portion of a bootloader to be
-executed without depending on DRAM to be functional. This peculiarity
-of the mode can be used to implement various memory testing
-scenarious.
-
 USB Boot
 ^^^^^^^^
 
diff --git a/arch/arm/boards/freescale-mx51-babbage/board.c b/arch/arm/boards/freescale-mx51-babbage/board.c
index 915748528..e90f38e80 100644
--- a/arch/arm/boards/freescale-mx51-babbage/board.c
+++ b/arch/arm/boards/freescale-mx51-babbage/board.c
@@ -167,63 +167,3 @@ static int imx51_babbage_init(void)
 	return 0;
 }
 coredevice_initcall(imx51_babbage_init);
-
-#ifdef CONFIG_ARCH_IMX_XLOAD
-
-static int imx51_babbage_xload_init_pinmux(void)
-{
-	static const iomux_v3_cfg_t pinmux[] = {
-		/* (e)CSPI */
-		MX51_PAD_CSPI1_MOSI__ECSPI1_MOSI,
-		MX51_PAD_CSPI1_MISO__ECSPI1_MISO,
-		MX51_PAD_CSPI1_SCLK__ECSPI1_SCLK,
-
-		/* (e)CSPI chip select lines */
-		MX51_PAD_CSPI1_SS1__GPIO4_25,
-
-
-		/* eSDHC 1 */
-		MX51_PAD_SD1_CMD__SD1_CMD,
-		MX51_PAD_SD1_CLK__SD1_CLK,
-		MX51_PAD_SD1_DATA0__SD1_DATA0,
-		MX51_PAD_SD1_DATA1__SD1_DATA1,
-		MX51_PAD_SD1_DATA2__SD1_DATA2,
-		MX51_PAD_SD1_DATA3__SD1_DATA3,
-	};
-
-	mxc_iomux_v3_setup_multiple_pads(ARRAY_AND_SIZE(pinmux));
-
-	return 0;
-}
-coredevice_initcall(imx51_babbage_xload_init_pinmux);
-
-static int imx51_babbage_xload_init_devices(void)
-{
-	static int spi0_chipselects[] = {
-		IMX_GPIO_NR(4, 25),
-	};
-
-	static struct spi_imx_master spi0_pdata = {
-		.chipselect = spi0_chipselects,
-		.num_chipselect = ARRAY_SIZE(spi0_chipselects),
-	};
-
-	static const struct spi_board_info spi0_devices[] = {
-		{
-			.name		= "mtd_dataflash",
-			.chip_select	= 0,
-			.max_speed_hz	= 25 * 1000 * 1000,
-			.bus_num	= 0,
-		},
-	};
-
-	imx51_add_mmc0(NULL);
-
-	spi_register_board_info(ARRAY_AND_SIZE(spi0_devices));
-	imx51_add_spi0(&spi0_pdata);
-
-	return 0;
-}
-device_initcall(imx51_babbage_xload_init_devices);
-
-#endif
diff --git a/arch/arm/boards/freescale-mx51-babbage/flash-header-common.imxcfg b/arch/arm/boards/freescale-mx51-babbage/flash-header-common.imxcfg
deleted file mode 100644
index 1332b7470..000000000
--- a/arch/arm/boards/freescale-mx51-babbage/flash-header-common.imxcfg
+++ /dev/null
@@ -1,58 +0,0 @@
-soc imx51
-dcdofs 0x400
-wm 32 0x73fa88a0 0x00000200
-wm 32 0x73fa850c 0x000020c5
-wm 32 0x73fa8510 0x000020c5
-wm 32 0x73fa883c 0x00000002
-wm 32 0x73fa8848 0x00000002
-wm 32 0x73fa84b8 0x000000e7
-wm 32 0x73fa84bc 0x00000045
-wm 32 0x73fa84c0 0x00000045
-wm 32 0x73fa84c4 0x00000045
-wm 32 0x73fa84c8 0x00000045
-wm 32 0x73fa8820 0x00000000
-wm 32 0x73fa84a4 0x00000003
-wm 32 0x73fa84a8 0x00000003
-wm 32 0x73fa84ac 0x000000e3
-wm 32 0x73fa84b0 0x000000e3
-wm 32 0x73fa84b4 0x000000e3
-wm 32 0x73fa84cc 0x000000e3
-wm 32 0x73fa84d0 0x000000e2
-wm 32 0x73fa882c 0x00000004
-wm 32 0x73fa88a4 0x00000004
-wm 32 0x73fa88ac 0x00000004
-wm 32 0x73fa88b8 0x00000004
-wm 32 0x83fd9000 0x82a20000
-wm 32 0x83fd9008 0x82a20000
-wm 32 0x83fd9010 0x000ad0d0
-wm 32 0x83fd9004 0x3f3584ab
-wm 32 0x83fd900c 0x3f3584ab
-wm 32 0x83fd9014 0x04008008
-wm 32 0x83fd9014 0x0000801a
-wm 32 0x83fd9014 0x0000801b
-wm 32 0x83fd9014 0x00448019
-wm 32 0x83fd9014 0x07328018
-wm 32 0x83fd9014 0x04008008
-wm 32 0x83fd9014 0x00008010
-wm 32 0x83fd9014 0x00008010
-wm 32 0x83fd9014 0x06328018
-wm 32 0x83fd9014 0x03808019
-wm 32 0x83fd9014 0x00408019
-wm 32 0x83fd9014 0x00008000
-wm 32 0x83fd9014 0x0400800c
-wm 32 0x83fd9014 0x0000801e
-wm 32 0x83fd9014 0x0000801f
-wm 32 0x83fd9014 0x0000801d
-wm 32 0x83fd9014 0x0732801c
-wm 32 0x83fd9014 0x0400800c
-wm 32 0x83fd9014 0x00008014
-wm 32 0x83fd9014 0x00008014
-wm 32 0x83fd9014 0x0632801c
-wm 32 0x83fd9014 0x0380801d
-wm 32 0x83fd9014 0x0040801d
-wm 32 0x83fd9014 0x00008004
-wm 32 0x83fd9000 0xb2a20000
-wm 32 0x83fd9008 0xb2a20000
-wm 32 0x83fd9010 0x000ad6d0
-wm 32 0x83fd9034 0x90000000
-wm 32 0x83fd9014 0x00000000
diff --git a/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage-xload.imxcfg b/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage-xload.imxcfg
deleted file mode 100644
index b249a7d4b..000000000
--- a/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage-xload.imxcfg
+++ /dev/null
@@ -1,3 +0,0 @@
-loadaddr CONFIG_ARCH_IMX_UNUSED_IRAM_BASE
-
-#include "flash-header-common.imxcfg"
\ No newline at end of file
diff --git a/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg b/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
index cb60e4752..bac6816fe 100644
--- a/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
+++ b/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
@@ -1,3 +1,59 @@
 loadaddr 0x90000000
-
-#include "flash-header-common.imxcfg"
\ No newline at end of file
+soc imx51
+dcdofs 0x400
+wm 32 0x73fa88a0 0x00000200
+wm 32 0x73fa850c 0x000020c5
+wm 32 0x73fa8510 0x000020c5
+wm 32 0x73fa883c 0x00000002
+wm 32 0x73fa8848 0x00000002
+wm 32 0x73fa84b8 0x000000e7
+wm 32 0x73fa84bc 0x00000045
+wm 32 0x73fa84c0 0x00000045
+wm 32 0x73fa84c4 0x00000045
+wm 32 0x73fa84c8 0x00000045
+wm 32 0x73fa8820 0x00000000
+wm 32 0x73fa84a4 0x00000003
+wm 32 0x73fa84a8 0x00000003
+wm 32 0x73fa84ac 0x000000e3
+wm 32 0x73fa84b0 0x000000e3
+wm 32 0x73fa84b4 0x000000e3
+wm 32 0x73fa84cc 0x000000e3
+wm 32 0x73fa84d0 0x000000e2
+wm 32 0x73fa882c 0x00000004
+wm 32 0x73fa88a4 0x00000004
+wm 32 0x73fa88ac 0x00000004
+wm 32 0x73fa88b8 0x00000004
+wm 32 0x83fd9000 0x82a20000
+wm 32 0x83fd9008 0x82a20000
+wm 32 0x83fd9010 0x000ad0d0
+wm 32 0x83fd9004 0x3f3584ab
+wm 32 0x83fd900c 0x3f3584ab
+wm 32 0x83fd9014 0x04008008
+wm 32 0x83fd9014 0x0000801a
+wm 32 0x83fd9014 0x0000801b
+wm 32 0x83fd9014 0x00448019
+wm 32 0x83fd9014 0x07328018
+wm 32 0x83fd9014 0x04008008
+wm 32 0x83fd9014 0x00008010
+wm 32 0x83fd9014 0x00008010
+wm 32 0x83fd9014 0x06328018
+wm 32 0x83fd9014 0x03808019
+wm 32 0x83fd9014 0x00408019
+wm 32 0x83fd9014 0x00008000
+wm 32 0x83fd9014 0x0400800c
+wm 32 0x83fd9014 0x0000801e
+wm 32 0x83fd9014 0x0000801f
+wm 32 0x83fd9014 0x0000801d
+wm 32 0x83fd9014 0x0732801c
+wm 32 0x83fd9014 0x0400800c
+wm 32 0x83fd9014 0x00008014
+wm 32 0x83fd9014 0x00008014
+wm 32 0x83fd9014 0x0632801c
+wm 32 0x83fd9014 0x0380801d
+wm 32 0x83fd9014 0x0040801d
+wm 32 0x83fd9014 0x00008004
+wm 32 0x83fd9000 0xb2a20000
+wm 32 0x83fd9008 0xb2a20000
+wm 32 0x83fd9010 0x000ad6d0
+wm 32 0x83fd9034 0x90000000
+wm 32 0x83fd9014 0x00000000
diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index 1c20b6a7a..132f9b08e 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -3,7 +3,6 @@
 #include <common.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
-#include <asm/cache.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
@@ -54,27 +53,3 @@ ENTRY_FUNCTION(start_imx51_babbage, r0, r1, r2)
 
 	imx51_barebox_entry(fdt);
 }
-
-static noinline void babbage_entry(void)
-{
-	arm_early_mmu_cache_invalidate();
-
-	relocate_to_current_adr();
-	setup_c();
-
-	puts_ll("lowlevel init done\n");
-
-	imx51_barebox_entry(NULL);
-}
-
-ENTRY_FUNCTION(start_imx51_babbage_xload, r0, r1, r2)
-{
-	imx5_cpu_lowlevel_init();
-
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
-
-	arm_setup_stack(0x20000000 - 16);
-
-	babbage_entry();
-}
diff --git a/arch/arm/configs/imx_v7-xload_defconfig b/arch/arm/configs/imx_v7-xload_defconfig
deleted file mode 100644
index dcf100d44..000000000
--- a/arch/arm/configs/imx_v7-xload_defconfig
+++ /dev/null
@@ -1,31 +0,0 @@
-CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX_XLOAD=y
-CONFIG_IMX_MULTI_BOARDS=y
-CONFIG_MACH_FREESCALE_MX51_PDK=y
-CONFIG_THUMB2_BAREBOX=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x0
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_DUMMY=y
-CONFIG_RELOCATABLE=y
-CONFIG_SHELL_NONE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-CONFIG_DEBUG_LL=y
-CONFIG_MTD=y
-# CONFIG_MTD_WRITE is not set
-CONFIG_MTD_DATAFLASH=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-# CONFIG_MCI_WRITE is not set
-CONFIG_MCI_IMX_ESDHC=y
-CONFIG_EEPROM_AT25=y
-CONFIG_WATCHDOG=y
-CONFIG_WATCHDOG_IMX=y
-# CONFIG_FS_RAMFS is not set
-# CONFIG_FS_DEVFS is not set
-CONFIG_FS_FAT=y
-CONFIG_BOOTSTRAP=y
-CONFIG_BOOTSTRAP_DEVFS=y
-CONFIG_BOOTSTRAP_DISK=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index dec5e387e..cacdc835a 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -53,21 +53,6 @@ config ARCH_IMX_IMXIMAGE_SSL_SUPPORT
 	  This enables SSL support for the imx-image tool. This is required
 	  for created images for HABv3. This adds openssl to the build dependencies
 
-config ARCH_IMX_XLOAD
-	bool
-	depends on ARCH_IMX51
-	prompt "Build preloader image"
-
-config ARCH_IMX_UNUSED_IRAM_BASE
-       hex
-       depends on ARCH_IMX_XLOAD
-       default 0x1ffe2000 if ARCH_IMX51
-
-config ARCH_IMX_UNUSED_IRAM_SIZE
-       hex
-       depends on ARCH_IMX_XLOAD
-       default 0x16000 if ARCH_IMX51
-
 config ARCH_IMX_EXTERNAL_BOOT_NAND
 	bool
 	depends on ARCH_IMX25 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 442039a27..541a8e1ea 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -17,7 +17,6 @@ lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
 obj-$(CONFIG_ARCH_IMX8MQ) += imx8mq.o
-obj-$(CONFIG_ARCH_IMX_XLOAD) += xload.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
diff --git a/arch/arm/mach-imx/xload.c b/arch/arm/mach-imx/xload.c
deleted file mode 100644
index 921e9ade2..000000000
--- a/arch/arm/mach-imx/xload.c
+++ /dev/null
@@ -1,52 +0,0 @@
-#include <bootsource.h>
-#include <bootstrap.h>
-#include <common.h>
-#include <malloc.h>
-#include <init.h>
-#include <envfs.h>
-#include <linux/sizes.h>
-#include <fs.h>
-#include <io.h>
-
-#include <linux/clkdev.h>
-#include <linux/stat.h>
-#include <linux/clk.h>
-
-#include <mach/devices-imx51.h>
-
-static __noreturn int imx_xload(void)
-{
-	enum bootsource bootsource = bootsource_get();
-	void *buf;
-
-	switch (bootsource) {
-	case BOOTSOURCE_MMC:
-		pr_info("booting from MMC\n");
-		buf = bootstrap_read_disk("disk0.0", "fat");
-		break;
-	case BOOTSOURCE_SPI_NOR:
-		pr_info("booting from SPI\n");
-		buf = bootstrap_read_devfs("dataflash0", false,
-					   SZ_256K, SZ_1M, SZ_1M);
-		break;
-	default:
-		pr_err("unknown bootsource %d\n", bootsource);
-		hang();
-	}
-
-	if (!buf) {
-		pr_err("failed to load barebox.bin\n");
-		hang();
-	}
-
-	bootstrap_boot(buf, 0);
-
-	hang();
-}
-
-static int imx_devices_init(void)
-{
-	barebox_main = imx_xload;
-	return 0;
-}
-coredevice_initcall(imx_devices_init);
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 43505b1ff..588139e4f 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -5,14 +5,8 @@
 # %.imximg - convert into i.MX image
 # ----------------------------------------------------------------
 
-ifdef CONFIG_ARCH_IMX_XLOAD
 $(obj)/%.imximg: $(obj)/% FORCE
-	$(call cmd,check_file_size,$<,$(CONFIG_ARCH_IMX_UNUSED_IRAM_SIZE))
 	$(call if_changed,imx_image,$(CFG_$(@F)),)
-else
-$(obj)/%.imximg: $(obj)/% FORCE
-	$(call if_changed,imx_image,$(CFG_$(@F)),)
-endif
 
 $(obj)/%.simximg: $(obj)/% FORCE
 	$(call if_changed,imx_image,$(CFG_$(patsubst %.simximg,%.imximg,$(@F))),-s)
@@ -69,18 +63,7 @@ imx-barebox-$(CONFIG_MACH_KINDLE_MX50) += barebox-kindle-ey21.img
 pblx-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
 CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
 FILE_barebox-freescale-imx51-babbage.img = start_imx51_babbage.pblx.imximg
-imx-barebox-$(CONFIG_MACH_FREESCALE_MX51_PDK) += barebox-freescale-imx51-babbage.img
-
-pblx-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage_xload
-CFG_start_imx51_babbage_xload.pblx.imximg = $(board)/freescale-mx51-babbage/flash-header-imx51-babbage-xload.imxcfg
-FILE_barebox-freescale-imx51-babbage-xload.img = start_imx51_babbage_xload.pblx.imximg
-imx-xload-$(CONFIG_MACH_FREESCALE_MX51_PDK) += barebox-freescale-imx51-babbage-xload.img
-
-ifdef CONFIG_ARCH_IMX_XLOAD
-image-y += $(imx-xload-y)
-else
-image-y += $(imx-barebox-y)
-endif
+image-$(CONFIG_MACH_FREESCALE_MX51_PDK) += barebox-freescale-imx51-babbage.img
 
 pblx-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += start_imx51_genesi_efikasb
 CFG_start_imx51_genesi_efikasb.pblx.imximg = $(board)/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
