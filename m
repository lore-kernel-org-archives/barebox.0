Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X05Pb-0006s5-C5
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 08:52:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Jun 2014 10:51:35 +0200
Message-Id: <1403772698-10330-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1811966080759563932=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/7] Documentation: remove doxygen documentation
To: barebox@lists.infradead.org

--===============1811966080759563932==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

The doxygen documentation is long outdated. Remove it. It will
be replaced with sphinx based documentation later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/barebox-main.dox                     |  126 --
 Documentation/board.dox                            |   94 --
 Documentation/boards.dox                           |   74 --
 Documentation/building.dox                         |   60 -
 Documentation/commands.dox                         |  111 --
 Documentation/developers_manual.dox                |   24 -
 Documentation/first_steps.dox                      |   61 -
 Documentation/manual_org.dox                       |   27 -
 Documentation/users_manual.dox                     |   18 -
 Doxyfile                                           | 1310 --------------------
 Makefile                                           |   10 -
 arch/architecture.dox                              |  175 ---
 arch/arm/boards/a9m2410/a9m2410.c                  |   68 -
 arch/arm/boards/a9m2440/a9m2440.c                  |   79 --
 arch/arm/boards/beagle/board.c                     |   31 -
 arch/arm/boards/ccxmx51/ccxmx51.dox                |    7 -
 arch/arm/boards/chumby_falconwing/falconwing.c     |  138 ---
 arch/arm/boards/edb93xx/edb93xx.dox                |  108 --
 .../arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.dox |   11 -
 .../arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.dox |    4 -
 .../arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.dox |    4 -
 arch/arm/boards/freescale-mx21-ads/imx21ads.dox    |    5 -
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |   32 -
 arch/arm/boards/freescale-mx27-ads/imx27ads.dox    |    5 -
 arch/arm/boards/freescale-mx35-3ds/3stack.dox      |    4 -
 .../arm/boards/freescale-mx51-babbage/mx51-pdk.dox |    4 -
 arch/arm/boards/freescale-mx53-qsb/mx53-pdk.dox    |    4 -
 arch/arm/boards/freescale-mx53-smd/mx53-smd.dox    |    4 -
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |  159 ---
 arch/arm/boards/guf-cupid/cupid.dox                |    9 -
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |   59 -
 arch/arm/boards/karo-tx28/tx28.c                   |   52 -
 arch/arm/boards/karo-tx51/tx51.dox                 |   50 -
 arch/arm/boards/module-mb7707/module-mb7707.dox    |   29 -
 arch/arm/boards/mx31moboard/mx31moboard.dox        |   10 -
 arch/arm/boards/netx/netx.dox                      |    9 -
 arch/arm/boards/omap343xdsp/board.c                |   26 -
 arch/arm/boards/phytec-phycard-imx27/pca100.dox    |    8 -
 arch/arm/boards/phytec-phycard-omap3/pca-a-l1.dox  |   16 -
 arch/arm/boards/phytec-phycore-imx27/pcm038.dox    |    9 -
 arch/arm/boards/phytec-phycore-imx31/pcm037.dox    |   11 -
 arch/arm/boards/phytec-phycore-imx35/pcm043.dox    |   28 -
 arch/arm/boards/qil-a926x/qil-a9260.dox            |   22 -
 arch/arm/boards/scb9328/scb9328.dox                |    9 -
 arch/arm/boards/tny-a926x/tny-a9263.dox            |   33 -
 arch/arm/boards/tny-a926x/tny-a9g20-lpw.dox        |   37 -
 arch/arm/boards/toshiba-ac100/toshiba-ac100.dox    |   37 -
 arch/arm/boards/usb-a926x/usb-a9263.dox            |   30 -
 arch/arm/boards/usb-a926x/usb-a9g20-lpw.dox        |   33 -
 arch/arm/boards/virt2real/virt2real.dox            |   41 -
 arch/arm/mach-arm.dox                              |   67 -
 arch/arm/mach-davinci/mach-davinci.dox             |    7 -
 arch/arm/mach-omap/arch-omap.dox                   |   96 --
 arch/arm/mach-samsung/lowlevel-s3c24x0.S           |    8 -
 arch/arm/mach-samsung/mem-s3c24x0.c                |   57 -
 arch/blackfin/boards/ipe337/ipe337.dox             |   10 -
 arch/blackfin/mach-bf.dox                          |    9 -
 arch/mips/boards/dlink-dir-320/dlink-dir-320.dox   |   38 -
 arch/mips/boards/loongson-ls1b/loongson_ls1b.dox   |   47 -
 arch/mips/boards/qemu-malta/qemu-malta.dox         |   20 -
 arch/mips/boards/ritmix-rzx50/ritmix-rzx50.dox     |   46 -
 arch/mips/boards/tplink-mr3020/tplink-mr3020.dox   |   64 -
 arch/mips/mach-bcm47xx/mach-bcm47xx.dox            |    7 -
 arch/mips/mach-loongson/mach-loongson.dox          |    7 -
 arch/mips/mach-malta/mach-malta.dox                |    7 -
 arch/mips/mach-mips.dox                            |   69 --
 arch/mips/mach-xburst/mach-xburst.dox              |    7 -
 arch/ppc/boards/pcm030/pcm030.dox                  |    8 -
 arch/ppc/mach-ppc.dox                              |    9 -
 arch/sandbox/os/common.c                           |   55 -
 arch/x86/boards/x86_generic/generic_pc.c           |   34 -
 arch/x86/boot/bioscall.S                           |    4 -
 arch/x86/lib/bios_disk.S                           |    3 -
 arch/x86/lib/linux_start.S                         |    3 -
 arch/x86/mach-x86.dox                              |  128 --
 commands/bootm.c                                   |   17 -
 commands/cp.c                                      |   14 -
 commands/devinfo.c                                 |   28 -
 commands/dfu.c                                     |   10 -
 commands/echo.c                                    |    8 -
 commands/edit.c                                    |   16 -
 commands/flash.c                                   |   52 -
 commands/gpio.c                                    |   62 -
 commands/led.c                                     |    9 -
 commands/linux16.c                                 |   66 -
 commands/loadenv.c                                 |    9 -
 commands/miitool.c                                 |    6 -
 commands/mount.c                                   |   36 -
 commands/partition.c                               |   24 -
 commands/printenv.c                                |   14 -
 commands/saveenv.c                                 |   18 -
 commands/setenv.c                                  |   13 -
 commands/splash.c                                  |   11 -
 commands/usbserial.c                               |    4 -
 common/kallsyms.c                                  |    4 -
 include/command.h                                  |    4 -
 include/driver.h                                   |   26 -
 include/i2c/i2c.h                                  |    4 -
 include/linux/mtd/mtd-abi.h                        |    4 -
 include/linux/mtd/mtd.h                            |    4 -
 include/spi/spi.h                                  |    4 -
 include/usb/ch9.h                                  |    4 -
 include/usb/composite.h                            |    4 -
 include/usb/gadget.h                               |    4 -
 include/usb/usb.h                                  |    4 -
 net/netconsole.c                                   |   28 -
 scripts/doxy_filter.awk                            |  103 --
 107 files changed, 4739 deletions(-)
 delete mode 100644 Documentation/barebox-main.dox
 delete mode 100644 Documentation/board.dox
 delete mode 100644 Documentation/boards.dox
 delete mode 100644 Documentation/building.dox
 delete mode 100644 Documentation/commands.dox
 delete mode 100644 Documentation/developers_manual.dox
 delete mode 100644 Documentation/first_steps.dox
 delete mode 100644 Documentation/manual_org.dox
 delete mode 100644 Documentation/users_manual.dox
 delete mode 100644 Doxyfile
 delete mode 100644 arch/architecture.dox
 delete mode 100644 arch/arm/boards/ccxmx51/ccxmx51.dox
 delete mode 100644 arch/arm/boards/edb93xx/edb93xx.dox
 delete mode 100644 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.dox
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.dox
 delete mode 100644 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.dox
 delete mode 100644 arch/arm/boards/freescale-mx21-ads/imx21ads.dox
 delete mode 100644 arch/arm/boards/freescale-mx27-ads/imx27ads.dox
 delete mode 100644 arch/arm/boards/freescale-mx35-3ds/3stack.dox
 delete mode 100644 arch/arm/boards/freescale-mx51-babbage/mx51-pdk.dox
 delete mode 100644 arch/arm/boards/freescale-mx53-qsb/mx53-pdk.dox
 delete mode 100644 arch/arm/boards/freescale-mx53-smd/mx53-smd.dox
 delete mode 100644 arch/arm/boards/guf-cupid/cupid.dox
 delete mode 100644 arch/arm/boards/karo-tx51/tx51.dox
 delete mode 100644 arch/arm/boards/module-mb7707/module-mb7707.dox
 delete mode 100644 arch/arm/boards/mx31moboard/mx31moboard.dox
 delete mode 100644 arch/arm/boards/netx/netx.dox
 delete mode 100644 arch/arm/boards/phytec-phycard-imx27/pca100.dox
 delete mode 100644 arch/arm/boards/phytec-phycard-omap3/pca-a-l1.dox
 delete mode 100644 arch/arm/boards/phytec-phycore-imx27/pcm038.dox
 delete mode 100644 arch/arm/boards/phytec-phycore-imx31/pcm037.dox
 delete mode 100644 arch/arm/boards/phytec-phycore-imx35/pcm043.dox
 delete mode 100644 arch/arm/boards/qil-a926x/qil-a9260.dox
 delete mode 100644 arch/arm/boards/scb9328/scb9328.dox
 delete mode 100644 arch/arm/boards/tny-a926x/tny-a9263.dox
 delete mode 100644 arch/arm/boards/tny-a926x/tny-a9g20-lpw.dox
 delete mode 100644 arch/arm/boards/toshiba-ac100/toshiba-ac100.dox
 delete mode 100644 arch/arm/boards/usb-a926x/usb-a9263.dox
 delete mode 100644 arch/arm/boards/usb-a926x/usb-a9g20-lpw.dox
 delete mode 100644 arch/arm/boards/virt2real/virt2real.dox
 delete mode 100644 arch/arm/mach-arm.dox
 delete mode 100644 arch/arm/mach-davinci/mach-davinci.dox
 delete mode 100644 arch/arm/mach-omap/arch-omap.dox
 delete mode 100644 arch/blackfin/boards/ipe337/ipe337.dox
 delete mode 100644 arch/blackfin/mach-bf.dox
 delete mode 100644 arch/mips/boards/dlink-dir-320/dlink-dir-320.dox
 delete mode 100644 arch/mips/boards/loongson-ls1b/loongson_ls1b.dox
 delete mode 100644 arch/mips/boards/qemu-malta/qemu-malta.dox
 delete mode 100644 arch/mips/boards/ritmix-rzx50/ritmix-rzx50.dox
 delete mode 100644 arch/mips/boards/tplink-mr3020/tplink-mr3020.dox
 delete mode 100644 arch/mips/mach-bcm47xx/mach-bcm47xx.dox
 delete mode 100644 arch/mips/mach-loongson/mach-loongson.dox
 delete mode 100644 arch/mips/mach-malta/mach-malta.dox
 delete mode 100644 arch/mips/mach-mips.dox
 delete mode 100644 arch/mips/mach-xburst/mach-xburst.dox
 delete mode 100644 arch/ppc/boards/pcm030/pcm030.dox
 delete mode 100644 arch/ppc/mach-ppc.dox
 delete mode 100644 arch/x86/mach-x86.dox
 delete mode 100644 scripts/doxy_filter.awk

diff --git a/Documentation/barebox-main.dox b/Documentation/barebox-main.dox
deleted file mode 100644
index c98c75f..0000000
diff --git a/Documentation/board.dox b/Documentation/board.dox
deleted file mode 100644
index e545709..0000000
diff --git a/Documentation/boards.dox b/Documentation/boards.dox
deleted file mode 100644
index 8d4fabb..0000000
diff --git a/Documentation/building.dox b/Documentation/building.dox
deleted file mode 100644
index 527ca45..0000000
diff --git a/Documentation/commands.dox b/Documentation/commands.dox
deleted file mode 100644
index d8cfa6b..0000000
diff --git a/Documentation/developers_manual.dox b/Documentation/developers_manual.dox
deleted file mode 100644
index 2f7d360..0000000
diff --git a/Documentation/first_steps.dox b/Documentation/first_steps.dox
deleted file mode 100644
index 17fdf37..0000000
diff --git a/Documentation/manual_org.dox b/Documentation/manual_org.dox
deleted file mode 100644
index 17238f0..0000000
diff --git a/Documentation/users_manual.dox b/Documentation/users_manual.dox
deleted file mode 100644
index ea47b18..0000000
diff --git a/Doxyfile b/Doxyfile
deleted file mode 100644
index 89151e3..0000000
diff --git a/Makefile b/Makefile
index 746f412..e7e1679 100644
--- a/Makefile
+++ b/Makefile
@@ -1117,16 +1117,6 @@ help:
 	@echo  'Execute "make" or "make all" to build all targets marked with [*] '
 	@echo  'For further info see the ./README file'
 
-# Generate doxygen docs
-# ---------------------------------------------------------------------------
-.PHONY += docs htmldocs
-
-docs : htmldocs
-
-htmldocs: Doxyfile.version
-	@echo  'Running doxygen with local Doxyfile'
-	$(Q)doxygen Doxyfile
-
 # Generate tags for editors
 # ---------------------------------------------------------------------------
 quiet_cmd_tags = GEN     $@
diff --git a/arch/architecture.dox b/arch/architecture.dox
deleted file mode 100644
index 2d2cf05..0000000
diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 943b770..44cf51b 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -14,12 +14,6 @@
  *
  */
 
-/**
- * @file
- * @brief a9m2410 Specific Board Initialization routines
- *
- */
-
 #include <common.h>
 #include <driver.h>
 #include <init.h>
@@ -154,65 +148,3 @@ static int a9m2410_console_init(void)
 }
 
 console_initcall(a9m2410_console_init);
-
-/** @page a9m2410 DIGI's a9m2410
-
-This CPU card is based on a Samsung S3C2410 CPU. The card is shipped with:
-
-- S3C2410\@200 MHz (ARM920T/ARMv4T)
-- 12MHz crystal reference
-- SDRAM 32 MiB
-   - Samsung K4M563233E-EE1H
-   - 2M x 32Bit x 4 Banks Mobile SDRAM
-   - 90 pin FBGA
-   - CL3\@133MHz, CL2\@100MHz (CAS/RAS delay 19ns)
-   - four banks
-   - 32 bit data bits
-   - row address size is 11
-   - Row cycle time: 69ns
-   - collumn address size is 9 bits
-   - Extended temperature range (-25�C...85�C)
-   - 64ms refresh period (4k)
-- NAND Flash 32 MiB
-   - Samsung KM29U256T
-   - 32MiB 3,3V 8-bit
-   - ID: 0xEC, 0x75, 0x??, 0xBD
-   - 30ns/40ns/20ns
-- I2C interface, 100KHz and 400KHz
-  - Real Time Clock
-    - Dallas DS1337
-    - address 0x68
-  - EEPROM
-    - ST M24LC64
-    - address 0x50
-    - 16bit addressing
-- LCD interface
-- Touch Screen interface
-- Camera interface
-- I2S interface
-- AC97 Audio-CODEC interface
-- SD card interface
-- 3 serial RS232 interfaces
-- Host and device USB interface, USB1.1 compliant
-- Ethernet interface
-  - 10Mbps, Cirrus Logic, CS8900A (on the CPU card) or
-  - 10/100Mbps, SMSC 91C111 (on the baseboard)
-- SPI interface
-- JTAG interface
-
-How to get the binary image:
-
-Using the default configuration:
-
-@code
-make ARCH=arm a9m2410_defconfig
-@endcode
-
-Build the binary image:
-
-@code
-make ARCH=arm CROSS_COMPILE=armv4compiler
-@endcode
-
-@note replace the armv4compiler with your ARM v4 cross compiler.
-*/
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index faac38a..587baf6 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -14,12 +14,6 @@
  *
  */
 
-/**
- * @file
- * @brief a9m2440 Specific Board Initialization routines
- *
- */
-
 #include <common.h>
 #include <driver.h>
 #include <init.h>
@@ -161,76 +155,3 @@ static int a9m2440_console_init(void)
 }
 
 console_initcall(a9m2440_console_init);
-
-/** @page a9m2440 DIGI's a9m2440
-
-This CPU card is based on a Samsung S3C2440 CPU. The card is shipped with:
-
-- S3C2440\@400 MHz or 533 MHz (ARM920T/ARMv4T)
-- 16.9344 MHz crystal reference
-- SDRAM 32/64/128 MiB
-   - Samsung K4M563233E-EE1H (one or two devices for 32 MiB or 64 MiB)
-     - 2M x 32bit x 4 Banks Mobile SDRAM
-     - CL2\@100 MHz (CAS/RAS delay 19ns)
-     - 105 MHz max
-     - collumn address size is 9 bits
-     - Row cycle time: 69ns
-   - Samsung K4M513233C-DG75 (one or two devices for 64 MiB or 128 MiB)
-     - 4M x 32bit x 4 Banks Mobile SDRAM
-     - CL2\@100MHz (CAS/RAS delay 18ns)
-     - 111 MHz max
-     - collumn address size is 9 bits
-     - Row cycle time: 63ns
-   - 64ms refresh period (4k)
-   - 90 pin FBGA
-   - 32 bit data bits
-   - Extended temperature range (-25�C...85�C)
-- NAND Flash 32/64/128 MiB
-   - Samsung KM29U512T (NAND01GW3A0AN6)
-     - 64 MiB 3,3V 8-bit
-     - ID: 0xEC, 0x76, 0x??, 0xBD
-   - Samsung KM29U256T
-     - 32 MiB 3,3V 8-bit
-     - ID: 0xEC, 0x75, 0x??, 0xBD
-   - ST Micro
-     - 128 MiB 3,3V 8-bit
-     - ID: 0x20, 0x79
-   - 30ns/40ns/20ns
-- I2C interface, 100 KHz and 400 KHz
-  - Real Time Clock
-    - Dallas DS1337
-    - address 0x68
-  - EEPROM
-    - ST M24LC64
-    - address 0x50
-    - 16bit addressing
-- LCD interface
-- Touch Screen interface
-- Camera interface
-- I2S interface
-- AC97 Audio-CODEC interface
-- SD card interface
-- 3 serial RS232 interfaces
-- Host and device USB interface, USB1.1 compliant
-- Ethernet interface
-  - 10Mbps, Cirrus Logic, CS8900A (on the CPU card)
-- SPI interface
-- JTAG interface
-
-How to get the binary image:
-
-Using the default configuration:
-
-@code
-make ARCH=arm a9m2440_defconfig
-@endcode
-
-Build the binary image:
-
-@code
-make ARCH=arm CROSS_COMPILE=armv4compiler
-@endcode
-
-@note replace the armv4compiler with your ARM v4 cross compiler.
-
-*/
diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 1899b1d..4054960 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -15,37 +15,6 @@
  *
  */
 
-/**
- * @file
- * @brief Beagle Specific Board Initialization routines
- */
-
-/**
- * @page ti_beagle Texas Instruments Beagle Board
- *
- * Beagle Board from Texas Instruments as described here:
- * http://www.beagleboard.org
- *
- * This board is based on OMAP3530.
- * More on OMAP3530 (including documentation can be found here):
- * http://focus.ti.com/docs/prod/folders/print/omap3530.html
- *
- * This file provides initialization in two stages:
- * @li boot time initialization - do basics required to get SDRAM working.
- * This is run from SRAM - so no case constructs and global vars can be used.
- * @li run time initialization - this is for the rest of the initializations
- * such as flash, uart etc.
- *
- * Boot time initialization includes:
- * @li SDRAM initialization.
- * @li Pin Muxing relevant for Beagle.
- *
- * Run time initialization includes
- * @li serial @ref serial_ns16550.c driver device definition
- *
- * Originally from arch/arm/boards/omap/board-sdp343x.c
- */
-
 #include <common.h>
 #include <console.h>
 #include <init.h>
diff --git a/arch/arm/boards/ccxmx51/ccxmx51.dox b/arch/arm/boards/ccxmx51/ccxmx51.dox
deleted file mode 100644
index cc28e8d..0000000
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 77581f6..2e5fca5 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -318,141 +318,3 @@ static int falconwing_console_init(void)
 }
 
 console_initcall(falconwing_console_init);
-
-/** @page chumbyone Chumby Industrie's Falconwing
-
-This device is also known as "chumby one" (http://www.chumby.com/)
-
-This CPU card is based on a Freescale i.MX23 CPU. The card is shipped with:
-
-- 64 MiB synchronous dynamic RAM (DDR type)
-
-Memory layout when @b barebox is running:
-
-- 0x40000000 start of SDRAM
-- 0x40000100 start of kernel's boot parameters
-  - below malloc area: stack area
-  - below barebox: malloc area
-- 0x42000000 start of @b barebox
-
-@section get_falconwing_binary How to get the bootloader binary image:
-
-Using the default configuration:
-
-@verbatim
-make ARCH=arm chumbyone_defconfig
-@endverbatim
-
-Build the bootloader binary image:
-
-@verbatim
-make ARCH=arm CROSS_COMPILE=armv5compiler
-@endverbatim
-
-@note replace the armv5compiler with your ARM v5 cross compiler.
-
-@section setup_falconwing How to prepare an MCI card to boot the "chumby one" with barebox
-
-- Create four primary partitions on the MCI card
- - the first one for the bootlets (about 256 kiB)
- - the second one for the persistant environment (size is up to you, at least 256k)
- - the third one for the kernel (2 MiB ... 4 MiB in size)
- - the 4th one for the root filesystem which can fill the rest of the available space
-
-- Mark the first partition with the partition ID "53" and copy the bootlets
-  into this partition (currently not part of @b barebox!).
-
-- Copy the default @b barebox environment into the second partition (no filesystem required).
-
-- Copy the kernel into the third partition (no filesystem required).
-
-- Create the root filesystem in the 4th partition. You may copy an image into this
-  partition or you can do it in the classic way: mkfs on it, mount it and copy
-  all required data and programs into it.
-
-@section gpio_falconwing Available GPIOs
-
-The Falconwing uses some GPIOs to control various features. With the regular
-GPIO commands these features can be controlled at @a barebox's runtime.
-
-<table width="100%" border="1" cellspacing="1" cellpadding="3">
-	<tr>
-		<td>No</td>
-		<td>Direction</td>
-		<td>Function</td>
-		<td>Reset</td>
-		<td>Set</td>
-	</tr>
-	<tr>
-		<td>8</td>
-		<td>Output</td>
-		<td>Switch Audio Amplifier</td>
-		<td>Off</td>
-		<td>On</td>
-	</tr>
-	<tr>
-		<td>11</td>
-		<td>Input</td>
-		<td>Head Phone Detection</td>
-		<td>TBD</td>
-		<td>TBD</td>
-	</tr>
-	<tr>
-		<td>14</td>
-		<td>Input</td>
-		<td>Unused (J113)</td>
-		<td>User</td>
-		<td>User</td>
-	</tr>
-	<tr>
-		<td>15</td>
-		<td>Input</td>
-		<td>Unused (J114)</td>
-		<td>User</td>
-		<td>User</td>
-	</tr>
-	<tr>
-		<td>26</td>
-		<td>Output</td>
-		<td>USB Power</td>
-		<td>TBD</td>
-		<td>TBD</td>
-	</tr>
-	<tr>
-		<td>27</td>
-		<td>Input</td>
-		<td>Display Connected</td>
-		<td>Display<br>Attached</td>
-		<td>Display<br>Disconnected</td>
-	</tr>
-	<tr>
-		<td>29</td>
-		<td>Output</td>
-		<td>USB HUB Reset</td>
-		<td>TBD</td>
-		<td>TBD</td>
-	</tr>
-	<tr>
-		<td>50</td>
-		<td>Output</td>
-		<td>Display Reset</td>
-		<td>Display<br>Reset</td>
-		<td>Display<br>Running</td>
-	</tr>
-	<tr>
-		<td>60</td>
-		<td>Output</td>
-		<td>Display Backlight</td>
-		<td>Backlight<br>Off</td>
-		<td>Backlight<br>On (100 %)</td>
-	</tr>
-	<tr>
-		<td>62</td>
-		<td>Input</td>
-		<td>Bend</td>
-		<td>Not pressed</td>
-		<td>Pressed</td>
-	</tr>
-</table>
-
-*/
diff --git a/arch/arm/boards/edb93xx/edb93xx.dox b/arch/arm/boards/edb93xx/edb93xx.dox
deleted file mode 100644
index 3964d55..0000000
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.dox b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.dox
deleted file mode 100644
index 6c2bfed..0000000
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.dox b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.dox
deleted file mode 100644
index cbdf69d..0000000
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.dox b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.dox
deleted file mode 100644
index 0f35e17..0000000
diff --git a/arch/arm/boards/freescale-mx21-ads/imx21ads.dox b/arch/arm/boards/freescale-mx21-ads/imx21ads.dox
deleted file mode 100644
index 9f11ffa..0000000
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index 1eae377..9f13fac 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -144,35 +144,3 @@ static int mx23_evk_console_init(void)
 }
 
 console_initcall(mx23_evk_console_init);
-
-/** @page mx23_evk Freescale's i.MX23 evaluation kit
-
-This CPU card is based on an i.MX23 CPU. The card is shipped with:
-
-- 32 MiB synchronous dynamic RAM (mobile DDR type)
-- ENC28j60 based network (over SPI)
-
-Memory layout when @b barebox is running:
-
-- 0x40000000 start of SDRAM
-- 0x40000100 start of kernel's boot parameters
-  - below malloc area: stack area
-  - below barebox: malloc area
-- 0x41000000 start of @b barebox
-
-@section get_imx23evk_binary How to get the bootloader binary image:
-
-Using the default configuration:
-
-@verbatim
-make ARCH=arm imx23evk_defconfig
-@endverbatim
-
-Build the bootloader binary image:
-
-@verbatim
-make ARCH=arm CROSS_COMPILE=armv5compiler
-@endverbatim
-
-@note replace the armv5compiler with your ARM v5 cross compiler.
-*/
diff --git a/arch/arm/boards/freescale-mx27-ads/imx27ads.dox b/arch/arm/boards/freescale-mx27-ads/imx27ads.dox
deleted file mode 100644
index e14d8e3..0000000
diff --git a/arch/arm/boards/freescale-mx35-3ds/3stack.dox b/arch/arm/boards/freescale-mx35-3ds/3stack.dox
deleted file mode 100644
index 15c5b6e..0000000
diff --git a/arch/arm/boards/freescale-mx51-babbage/mx51-pdk.dox b/arch/arm/boards/freescale-mx51-babbage/mx51-pdk.dox
deleted file mode 100644
index d9ea823..0000000
diff --git a/arch/arm/boards/freescale-mx53-qsb/mx53-pdk.dox b/arch/arm/boards/freescale-mx53-qsb/mx53-pdk.dox
deleted file mode 100644
index 3a2c84f..0000000
diff --git a/arch/arm/boards/freescale-mx53-smd/mx53-smd.dox b/arch/arm/boards/freescale-mx53-smd/mx53-smd.dox
deleted file mode 100644
index 1960508..0000000
diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
index 86e22ad..4034de5 100644
--- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
+++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
@@ -16,12 +16,6 @@
  *
  */
 
-/**
- * @file
- * @brief mini2440 Specific Board Initialization routines
- *
- */
-
 #include <common.h>
 #include <driver.h>
 #include <init.h>
@@ -338,156 +332,3 @@ static int mini2440_console_init(void)
 }
 
 console_initcall(mini2440_console_init);
-
-/** @page mini2440 FriendlyARM's mini2440
-
-This system is based on a Samsung S3C2440 CPU. The card is shipped with:
-
-- S3C2440\@400 MHz or 533 MHz (ARM920T/ARMv4T)
-- 12 MHz crystal reference
-- 32.768 kHz crystal reference
-- SDRAM 64 MiB (one bank only)
-   - HY57V561620 (two devices for 64 MiB to form a 32 bit bus)
-     - 4M x 16bit x 4 Banks Mobile SDRAM
-     - 8192 refresh cycles / 64 ms
-     - CL2\@100 MHz
-     - 133 MHz max
-     - collumn address size is 9 bits
-     - row address size is 13 bits
-   - MT48LC16M16 (two devices for 64 MiB to form a 32 bit bus)
-     - 4M x 16bit x 4 Banks Mobile SDRAM
-     - commercial & industrial type
-     - 8192 refresh cycles / 64 ms
-     - CL2\@100 MHz
-     - 133 MHz max
-     - collumn address size is 9 bits
-     - row address size is 13 bits
-- NAND Flash 128MiB...1GiB
-   - K9Fxx08
-- NOR Flash (up to 22 address lines available)
-   - AM29LV160DB, 2 MiB
-   - SST39VF1601, 2 MiB
-   - 16 bit data bus
-- SD card interface, 3.3V (fixed voltage)
-- Host and device USB interface, USB1.1 compliant
-- UDA1341TS Audio
-- DM9000 Ethernet interface
-  - uses CS#4
-  - uses EINT7
-  - 16 bit data bus
-- I2C interface, 100 KHz and 400 KHz
-  - EEPROM
-    - ST M24C08
-    - address 0x50
-- Speaker on GPB0 ("low" = inactive)
-- LCD interface
-- Touch Screen interface
-- Camera interface
-- I2S interface
-- AC97 Audio-CODEC interface
-- three serial RS232 interfaces (one with level converter)
-- SPI interface
-- JTAG interface
-
-How to get the binary image:
-
-Using the default configuration:
-
-@code
-make ARCH=arm mini2440_defconfig
-@endcode
-
-Build the binary image:
-
-@code
-make ARCH=arm CROSS_COMPILE=armv4compiler
-@endcode
-
-@note replace the armv4compiler with your ARM v4 cross compiler.
-
-How to bring in \a barebox ?
-
-First run it as a second stage bootloader. There are two known working ways to
-do so:
-
-One way is to use the "device firmware update" feature of the 'supervivi'.
- - connect a terminal application to the mini2440's serial connector
- - switch S2 to 'boot from NOR' to boot into 'supervivi'
- - connect your host to the usb device connector on the mini2440
- - switch on your mini2440
- - in 'supervivi' type q (command line) then:
-@code
-load ram 0x31000000 \<barebox-size\> u
-@endcode
- - use a tool for DFU update (for example from openkomo) to transfer the 'barebox.bin' binary
- - then in 'supervivi' just run
-@code
-go 0x31000000
-@endcode
-
-A second way is to use any kind of JTAG adapter. For this case I'm using the
-'JTAKkey tiny' from Amontec and OpenOCD. First you need an adapter for this
-kind of Dongle as it uses a 20 pin connector with 2.54 mm grid, and the
-mini2440 uses a 10 pin connector with 2 mm grid.
-
-@code
-             Amontec JTAGkey tiny               mini2440
-           -------------------------------------------------------
-              VREF  1   2  n.c.             VREF  1   2  VREF
-            TRST_N  3   4  GND            TRST_N  3   4  SRST_N
-               TDI  5   6  GND               TDI  5   6  TDO
-               TMS  7   8  GND               TMS  7   8  GND
-               TCK  9  10  GND               TCK  9  10  GND
-              n.c. 11  12  GND
-               TDO 13  14  GND
-            SRST_N 15  16  GND
-              n.c. 17  18  GND
-              n.c. 19  20  GND
-@endcode
-
-Create a simple board description file. I did it this way:
-
-@code
-source [find interface/jtagkey-tiny.cfg]
-source [find target/samsung_s3c2440.cfg]
-
-adapter_khz 12000
-@endcode
-
-And then the following steps:
- - connect a terminal application to the mini2440's serial connector
- - connect the mini2440 to a working network
- - switch S2 to boot from NOR to boot into 'supervivi'
- - switch on your mini2440
- - run the OpenOCD daemon configured with the file shown above
- - connect to the OpenOCD daemon via 'telnet'.
- - run the following commands to download @a barebox into your target
-@code
-> halt
-> load_image \<path to the 'barebox.bin'\> 0x31000000 bin
-> resume 0x31000000
-@endcode
-
-Now @a barebox is starting from an already initialized CPU and SDRAM (done by
-'supervivi').
-
-Change to your terminal console and configure the network first. Adapt the
-following settings to your network:
-@code
-eth0.ipaddr=192.168.1.240
-eth0.netmask=255.255.255.0
-eth0.gateway=192.168.23.2
-eth0.serverip=192.168.1.7
-eth0.ethaddr=00:04:f3:00:06:35
-@endcode
-
-A 'ping' to your TFTP server should bring a "...is alive" message now.
-
-We are ready now to program @a barebox into the NAND flash:
-
-@code
-erase /dev/nand0.barebox.bb
-tftp barebox.bin /dev/nand0.barebox.bb
-@endcode
-
-*/
diff --git a/arch/arm/boards/guf-cupid/cupid.dox b/arch/arm/boards/guf-cupid/cupid.dox
deleted file mode 100644
index 45f0e0c..0000000
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index fae4d91..fa95d72 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -143,62 +143,3 @@ static int imx23_olinuxino_console_init(void)
 }
 
 console_initcall(imx23_olinuxino_console_init);
-
-/** @page olinuxino Olimex.ltd's i.MX23 evaluation kit
-
-This CPU card is based on an i.MX23 CPU. The card is shipped with:
-
-- 64 MiB synchronous dynamic RAM (mobile DDR type)
-
-
-Memory layout when @b barebox is running:
-
-- 0x40000000 start of SDRAM
-- 0x40000100 start of kernel's boot parameters
-  - below malloc area: stack area
-  - below barebox: malloc area
-- 0x42000000 start of @b barebox
-
-@section get_imx23_olinuxino_binary How to get the bootloader binary image:
-
-Using the default configuration:
-
-@verbatim
-make ARCH=arm imx23_olinuxino_defconfig
-@endverbatim
-
-Build the bootloader binary image:
-
-@verbatim
-make ARCH=arm CROSS_COMPILE=armv5compiler
-@endverbatim
-
-@note replace the armv5compiler with your ARM v5 cross compiler.
-
-@section imx233-olinuxino How to prepare an MCI card to boot
-the imx233-olinuxino with barebox
-
-- Create four primary partitions on the MCI card
- - the first one for the bootlets (about 256 kiB)
- - the second one for the persistant environment
-   (size is up to you, at least 256k)
- - the third one for the kernel (2 MiB ... 4 MiB in size)
- - the 4th one for the root filesystem which can fill the
-   rest of the available space
-
-- Mark the first partition with the partition ID "53" and copy the bootlets
-  into this partition (currently not part of @b barebox!).
-
-- @b barebox expect device tree blob file imx23-olinuxino.dtb
-  into directory env/oftree. At compile time, copy blob file into directory
-  arch/arm/boards/imx233-olinuxino/env/oftree/.
-
-- Copy the default @b barebox environment into the second partition
-  (no filesystem required).
-
-- Copy the kernel into the third partition (no filesystem required).
-
-- Create the root filesystem in the 4th partition. You may copy an
-  image into this partition or you can do it in the classic way:
-  mkfs on it, mount it and copy all required data and programs into it.
-*/
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 3fb1fe9..26dbc00 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -99,55 +99,3 @@ static int tx28_devices_init(void)
 }
 
 device_initcall(tx28_devices_init);
-
-/**
-@page tx28 KARO's TX28 CPU module
-
-@section tx28_cpu_card The CPU module
-
-http://www.karo-electronics.de/
-
-This CPU card is based on a Freescale i.MX28 CPU. The card is shipped with:
-
-- 128 MiB synchronous dynamic RAM (DDR2 type), 200 MHz support
-- 128 MiB NAND K9F1G08U0A (3.3V type)
-- PCA9554 GPIO expander
-- DS1339 RTC
-- LAN8710 Phy
-
-@section tx28_basboards Supported baseboards
-
-Supported baseboards are:
-- KARO's Starterkit 5
-
-@section tx28_stk5_howto How to get barebox for 'KARO's Starterkit 5'
-
-Using the default configuration:
-
-@verbatim
-make ARCH=arm tx28stk5_defconfig
-@endverbatim
-
-Build the binary image:
-
-@verbatim
-make ARCH=arm CROSS_COMPILE=armv5compiler
-@endverbatim
-
-@note replace the armv5compiler with your ARM v5 cross compiler.
-
-@note To use the result, you also need the following resources from Freescale:
-- the 'bootlets' archive
-- the 'elftosb2' encryption tool
-- in the case you want to start @b barebox from an attached SD card the
-  'sdimage' tool from Freescale's 'uuc' archive.
-
-@section tx28_mlayout Memory layout when barebox is running:
-
-- 0x40000000 start of SDRAM
-- 0x40000100 start of kernel's boot parameters
-  - below malloc area: stack area
-  - below barebox: malloc area
-- 0x47000000 start of @b barebox
-
-*/
diff --git a/arch/arm/boards/karo-tx51/tx51.dox b/arch/arm/boards/karo-tx51/tx51.dox
deleted file mode 100644
index 08268e0..0000000
diff --git a/arch/arm/boards/module-mb7707/module-mb7707.dox b/arch/arm/boards/module-mb7707/module-mb7707.dox
deleted file mode 100644
index c0dbc8a..0000000
diff --git a/arch/arm/boards/mx31moboard/mx31moboard.dox b/arch/arm/boards/mx31moboard/mx31moboard.dox
deleted file mode 100644
index 41c8bbb..0000000
diff --git a/arch/arm/boards/netx/netx.dox b/arch/arm/boards/netx/netx.dox
deleted file mode 100644
index e22c5e8..0000000
diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
index 8329ace..1b1cb79 100644
--- a/arch/arm/boards/omap343xdsp/board.c
+++ b/arch/arm/boards/omap343xdsp/board.c
@@ -15,32 +15,6 @@
  *
  */
 
-/**
- * @file
- * @brief SDP3430 Specific Board Initialization routines
- */
-
-/**
- * @page ti_SDP3430 Texas Instruments SDP3430
- *
- * SDP3430 from Texas Instruments as described here:
- * http://www.ti.com/omap3430_devplatform
- * This file provides initialization in two stages:
- * @li boot time initialization - do basics required to get SDRAM working.
- * This is run from SRAM - so no case constructs and global vars can be used.
- * @li run time initialization - this is for the rest of the initializations
- * such as flash, uart etc.
- *
- * Boot time initialization includes:
- * @li SDRAM initialization.
- * @li Pin Muxing relevant for SDP3430.
- *
- * Run time initialization includes
- * @li serial @ref serial_ns16550.c driver device definition
- *
- * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
- */
-
 #include <common.h>
 #include <console.h>
 #include <init.h>
diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.dox b/arch/arm/boards/phytec-phycard-imx27/pca100.dox
deleted file mode 100644
index 9b17674..0000000
diff --git a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.dox b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.dox
deleted file mode 100644
index d93c574..0000000
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm038.dox b/arch/arm/boards/phytec-phycore-imx27/pcm038.dox
deleted file mode 100644
index 85177d2..0000000
diff --git a/arch/arm/boards/phytec-phycore-imx31/pcm037.dox b/arch/arm/boards/phytec-phycore-imx31/pcm037.dox
deleted file mode 100644
index b2afdd6..0000000
diff --git a/arch/arm/boards/phytec-phycore-imx35/pcm043.dox b/arch/arm/boards/phytec-phycore-imx35/pcm043.dox
deleted file mode 100644
index c6715ff..0000000
diff --git a/arch/arm/boards/qil-a926x/qil-a9260.dox b/arch/arm/boards/qil-a926x/qil-a9260.dox
deleted file mode 100644
index da5c197..0000000
diff --git a/arch/arm/boards/scb9328/scb9328.dox b/arch/arm/boards/scb9328/scb9328.dox
deleted file mode 100644
index 75bc7c8..0000000
diff --git a/arch/arm/boards/tny-a926x/tny-a9263.dox b/arch/arm/boards/tny-a926x/tny-a9263.dox
deleted file mode 100644
index 68fcdd1..0000000
diff --git a/arch/arm/boards/tny-a926x/tny-a9g20-lpw.dox b/arch/arm/boards/tny-a926x/tny-a9g20-lpw.dox
deleted file mode 100644
index e002107..0000000
diff --git a/arch/arm/boards/toshiba-ac100/toshiba-ac100.dox b/arch/arm/boards/toshiba-ac100/toshiba-ac100.dox
deleted file mode 100644
index 7c50f3c..0000000
diff --git a/arch/arm/boards/usb-a926x/usb-a9263.dox b/arch/arm/boards/usb-a926x/usb-a9263.dox
deleted file mode 100644
index 380a8e2..0000000
diff --git a/arch/arm/boards/usb-a926x/usb-a9g20-lpw.dox b/arch/arm/boards/usb-a926x/usb-a9g20-lpw.dox
deleted file mode 100644
index 024a3ce..0000000
diff --git a/arch/arm/boards/virt2real/virt2real.dox b/arch/arm/boards/virt2real/virt2real.dox
deleted file mode 100644
index fc38321..0000000
diff --git a/arch/arm/mach-arm.dox b/arch/arm/mach-arm.dox
deleted file mode 100644
index 1d2de48..0000000
diff --git a/arch/arm/mach-davinci/mach-davinci.dox b/arch/arm/mach-davinci/mach-davinci.dox
deleted file mode 100644
index 789eacc..0000000
diff --git a/arch/arm/mach-omap/arch-omap.dox b/arch/arm/mach-omap/arch-omap.dox
deleted file mode 100644
index 8c2b47d..0000000
diff --git a/arch/arm/mach-samsung/lowlevel-s3c24x0.S b/arch/arm/mach-samsung/lowlevel-s3c24x0.S
index e2efd86..52079ff 100644
--- a/arch/arm/mach-samsung/lowlevel-s3c24x0.S
+++ b/arch/arm/mach-samsung/lowlevel-s3c24x0.S
@@ -31,14 +31,6 @@ s3c24x0_disable_wd:
 	str r1, [r0]
 	mov pc, lr
 
-/**
-@page dev_s3c24xx_wd_handling Watchdog handling
-
-The watchdog must be disabled very early, because if it resets the system
-it is still active and will continue to reset the system. So, call this
-routine very early in your board_init_lowlevel routine.
-*/
-
 /*
  * S3C2410 PLL configuration
  * -------------------------
diff --git a/arch/arm/mach-samsung/mem-s3c24x0.c b/arch/arm/mach-samsung/mem-s3c24x0.c
index d40db14..db61c63 100644
--- a/arch/arm/mach-samsung/mem-s3c24x0.c
+++ b/arch/arm/mach-samsung/mem-s3c24x0.c
@@ -80,60 +80,3 @@ void s3c24xx_disable_second_sdram_bank(void)
 	writel(readl(S3C_BANKCON7) & ~(0x3 << 15), S3C_BANKCON7);
 	writel(readl(S3C_MISCCR) | (1 << 18), S3C_MISCCR); /* disable its clock */
 }
-
-/**
-
-@page dev_s3c24xx_arch Samsung's S3C24xx Platforms in barebox
-
-@section s3c24xx_boards Boards using S3C24xx Processors
-
-@li @subpage arch/arm/boards/a9m2410/a9m2410.c
-@li @subpage arch/arm/boards/a9m2440/a9m2440.c
-
-@section s3c24xx_arch Documentation for S3C24xx Architectures Files
-
-@li @subpage arch/arm/mach-s3c24xx/generic.c
-
-@section s3c24xx_mem_map SDRAM Memory Map
-
-SDRAM starts at address 0x3000.0000 up to the available amount of connected
-SDRAM memory. Physically this CPU can handle up to 256MiB (two areas with
-up to 128MiB each).
-
-@subsection s3c24xx_mem_generic_map Generic Map
-- 0x0000.0000 Start of the internal SRAM when booting from NAND flash memory or CS signal to a NOR flash memory.
-- 0x0800.0000 Start of I/O space.
-- 0x3000.0000 Start of SDRAM area.
-  - 0x3000.0100 Start of the TAG list area.
-  - 0x3000.8000 Start of the linux kernel (physical address).
-- 0x4000.0000 Start of internal SRAM, when booting from NOR flash memory
-- 0x4800.0000 Start of the internal I/O area
-
-@section s3c24xx_asm_arm include/asm-arm/arch-s3c24xx directory guidelines
-All S3C24xx common headers are located here.
-
-@note Do not add board specific header files/information here.
-*/
-
-/** @page dev_s3c24xx_mach Samsung's S3C24xx based platforms
-
-@par barebox Map
-
-The location of the @a barebox itself depends on the available amount of
-installed SDRAM memory:
-
-- 0x30fc.0000 Start of @a barebox when 16MiB SDRAM is available
-- 0x31fc.0000 Start of @a barebox when 32MiB SDRAM is available
-- 0x33fc.0000 Start of @a barebox when 64MiB SDRAM is available
-
-Adjust the @p CONFIG_TEXT_BASE/CONFIG_ARCH_TEXT_BASE symbol in accordance to
-the available memory.
-
-@note The RAM based filesystem and the stack resides always below the
-@a barebox start address.
-
-@li @subpage dev_s3c24xx_wd_handling
-@li @subpage dev_s3c24xx_pll_handling
-@li @subpage dev_s3c24xx_sdram_handling
-@li @subpage dev_s3c24xx_nandboot_handling
-*/
diff --git a/arch/blackfin/boards/ipe337/ipe337.dox b/arch/blackfin/boards/ipe337/ipe337.dox
deleted file mode 100644
index 4d7925a..0000000
diff --git a/arch/blackfin/mach-bf.dox b/arch/blackfin/mach-bf.dox
deleted file mode 100644
index 4b3a3c1..0000000
diff --git a/arch/mips/boards/dlink-dir-320/dlink-dir-320.dox b/arch/mips/boards/dlink-dir-320/dlink-dir-320.dox
deleted file mode 100644
index d0f5869..0000000
diff --git a/arch/mips/boards/loongson-ls1b/loongson_ls1b.dox b/arch/mips/boards/loongson-ls1b/loongson_ls1b.dox
deleted file mode 100644
index f96a3f8..0000000
diff --git a/arch/mips/boards/qemu-malta/qemu-malta.dox b/arch/mips/boards/qemu-malta/qemu-malta.dox
deleted file mode 100644
index bf10244..0000000
diff --git a/arch/mips/boards/ritmix-rzx50/ritmix-rzx50.dox b/arch/mips/boards/ritmix-rzx50/ritmix-rzx50.dox
deleted file mode 100644
index 5ec8194..0000000
diff --git a/arch/mips/boards/tplink-mr3020/tplink-mr3020.dox b/arch/mips/boards/tplink-mr3020/tplink-mr3020.dox
deleted file mode 100644
index 16fe465..0000000
diff --git a/arch/mips/mach-bcm47xx/mach-bcm47xx.dox b/arch/mips/mach-bcm47xx/mach-bcm47xx.dox
deleted file mode 100644
index 04ccf03..0000000
diff --git a/arch/mips/mach-loongson/mach-loongson.dox b/arch/mips/mach-loongson/mach-loongson.dox
deleted file mode 100644
index 7838ce5..0000000
diff --git a/arch/mips/mach-malta/mach-malta.dox b/arch/mips/mach-malta/mach-malta.dox
deleted file mode 100644
index 85351e1..0000000
diff --git a/arch/mips/mach-mips.dox b/arch/mips/mach-mips.dox
deleted file mode 100644
index 1002b16..0000000
diff --git a/arch/mips/mach-xburst/mach-xburst.dox b/arch/mips/mach-xburst/mach-xburst.dox
deleted file mode 100644
index 052c05e..0000000
diff --git a/arch/ppc/boards/pcm030/pcm030.dox b/arch/ppc/boards/pcm030/pcm030.dox
deleted file mode 100644
index b9ada83..0000000
diff --git a/arch/ppc/mach-ppc.dox b/arch/ppc/mach-ppc.dox
deleted file mode 100644
index f7191b9..0000000
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 36c8d62..4123938 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -18,10 +18,6 @@
  *
  */
 
-/**
- * @file
- * @brief Common wrapper functions between barebox and the host
- */
 /*
  * These are host includes. Never include any barebox header
  * files here...
@@ -421,54 +417,3 @@ static void print_usage(const char *prgname)
 	prgname
 	);
 }
-
-/**
- * @page barebox_simul barebox Simulator
- *
- * barebox can be run as a simulator on your host to check and debug new non
- * hardware related features.
- *
- * @section simu_build How to build barebox for simulation
- *
- * @section simu_run How to run barebox simulator
- *
- * $ barebox [\<OPTIONS\>]
- *
- * Options can be:
- *
- * -m, --malloc=\<size\>
- *
- * Start sandbox with a specified malloc-space \<size\> in bytes.
- *
- * -i \<file\>
- *
- * Map a \<file\> to barebox. This option can be given multiple times. The \<file\>s
- * will show up as /dev/fd0 ... /dev/fdx in the barebox simulator.
- *
- * -e \<file\>
- *
- * Map \<file\> to barebox. With this option \<file\>s are mapped as /dev/env0 ...
- * /dev/envx and thus are used as default environment. A clean file generated
- * with dd will do to get started with an empty environment
- *
- * -O \<file\>
- *
- * Register \<file\> as a console capable of doing stdout. \<file\> can be a
- * regular file or a fifo.
- *
- * -I \<file\>
- *
- * Register \<file\> as a console capable of doing stdin. \<file\> can be a regular
- * file or a fifo.
- *
- * -x, --xres \<res\>
- *
- * Specify SDL width
- *
- * -y, --yres \<res\>
- *
- * Specify SDL height
- *
- * @section simu_dbg How to debug barebox simulator
- *
- */
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index 5560efc..482889f 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -14,11 +14,6 @@
  *
  */
 
-/**
- * @file
- * @brief Generic PC support to let barebox acting as a boot loader
- */
-
 #include <common.h>
 #include <types.h>
 #include <driver.h>
@@ -34,32 +29,3 @@ static int devices_init(void)
 	return 0;
 }
 device_initcall(devices_init);
-
-/** @page generic_pc Generic PC based bootloader
-
-This platform acts as a generic PC based bootloader. It depends on at least
-one boot media that is connected locally (no network boot) and can be
-handled by the regular BIOS (any kind of hard disks for example).
-
-The created @a barebox image can be used to boot a standard x86 bzImage
-Linux kernel.
-
-Refer section @ref x86_bootloader_preparations how to do so.
-
-How to get the binary image:
-
-Using the default configuration:
-
-@code
-make ARCH=x86 generic_defconfig
-@endcode
-
-Build the binary image:
-
-@code
-make ARCH=x86 CROSS_COMPILE=x86compiler
-@endcode
-
-@note replace the 'x86compiler' with your x86 (cross) compiler.
-
-*/
diff --git a/arch/x86/boot/bioscall.S b/arch/x86/boot/bioscall.S
index 84d2577..e600729 100644
--- a/arch/x86/boot/bioscall.S
+++ b/arch/x86/boot/bioscall.S
@@ -13,8 +13,6 @@
  * touching registers they shouldn't be.
  */
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
 	.file	"bioscall.S"
 	.code16
 	.section .boot.text.intcall, "ax"
@@ -95,5 +93,3 @@ die:
         hlt
         jmp     die
 	.size	die, .-die
-
-#endif /* DOXYGEN_SHOULD_SKIP_THIS */
diff --git a/arch/x86/lib/bios_disk.S b/arch/x86/lib/bios_disk.S
index 121f440..cce33e6 100644
--- a/arch/x86/lib/bios_disk.S
+++ b/arch/x86/lib/bios_disk.S
@@ -26,7 +26,6 @@
  * space below 0x10000
  */
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
 /*
  *   int bios_disk_rw_int13_extensions (int ah, int drive, void *dap)
  *
@@ -69,5 +68,3 @@ bios_disk_rw_int13_extensions:
 	popl %ebp
 
 	ret
-
-#endif
diff --git a/arch/x86/lib/linux_start.S b/arch/x86/lib/linux_start.S
index f74e4e9..b9489b8 100644
--- a/arch/x86/lib/linux_start.S
+++ b/arch/x86/lib/linux_start.S
@@ -30,7 +30,6 @@
  *   void bios_start_linux(unsigned segment)
  *
  */
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
 
 	.section .boot.text.bios_start_linux, "ax"
 	.code32
@@ -67,5 +66,3 @@ setup_seg:
 	.word	0
 
 	.code32
-
-#endif
diff --git a/arch/x86/mach-x86.dox b/arch/x86/mach-x86.dox
deleted file mode 100644
index 661e905..0000000
diff --git a/commands/bootm.c b/commands/bootm.c
index d6625df..617acd6 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -194,20 +194,3 @@ static int binfmt_uimage_init(void)
 	return binfmt_register(&binfmt_uimage_hook);
 }
 fs_initcall(binfmt_uimage_init);
-
-/**
- * @file
- * @brief Boot support for Linux
- */
-
-/**
- * @page boot_preparation Preparing for Boot
- *
- * This chapter describes what's to be done to forward the control from
- * barebox to Linux. This part describes the generic part, below you can find
- * the architecture specific part.
- *
- * - @subpage arm_boot_preparation
- * - @subpage ppc_boot_preparation
- * - @subpage x86_boot_preparation
- */
diff --git a/commands/cp.c b/commands/cp.c
index 8ecde91..1a56754 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -17,10 +17,6 @@
  *
  */
 
-/**
- * @file
- * @brief cp: copy file command
- */
 #include <common.h>
 #include <command.h>
 #include <xfuncs.h>
@@ -95,15 +91,6 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-v", "verbose")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page cp_command
-This command operates on files.
-
-If you want to copy between memory blocks, use 'memcpy'.
-
-\todo What does this mean? Add examples.
- */
-
 BAREBOX_CMD_START(cp)
 	.cmd		= do_cp,
 	BAREBOX_CMD_DESC("copy files")
@@ -111,4 +98,3 @@ BAREBOX_CMD_START(cp)
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_cp_help)
 BAREBOX_CMD_END
-
diff --git a/commands/devinfo.c b/commands/devinfo.c
index 052a4a0..e61aaa2 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -118,34 +118,6 @@ static int do_devinfo(int argc, char *argv[])
 	return 0;
 }
 
-
-/**
- * @page devinfo_command
-
-If called without arguments, devinfo shows a summary of the known
-devices and drivers.
-
-If called with a device path being the argument, devinfo shows more
-default information about this device and its parameters.
-
-Example from an MPC5200 based system:
-
-@verbatim
-  barebox:/ devinfo /dev/eth0
-  base  : 0x1002b000
-  size  : 0x00000000
-  driver: fec_mpc5xxx
-
-  no info available for eth0
-  Parameters:
-      ipaddr = 192.168.23.197
-     ethaddr = 80:81:82:83:84:86
-     gateway = 192.168.23.1
-     netmask = 255.255.255.0
-    serverip = 192.168.23.2
-@endverbatim
- */
-
 BAREBOX_CMD_HELP_START(devinfo)
 BAREBOX_CMD_HELP_TEXT("If called without arguments, devinfo shows a summary of the known")
 BAREBOX_CMD_HELP_TEXT("devices.")
diff --git a/commands/dfu.c b/commands/dfu.c
index b71cc16..3546252 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -186,16 +186,6 @@ BAREBOX_CMD_HELP_OPT ("-V ID",  "vendor id")
 BAREBOX_CMD_HELP_OPT ("-P ID",  "product id")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page dfu_command
-\<description> has the following form:
-device1(name1)[sr],device2(name2)[sr]
-'s' means 'safe mode' (download the complete image before flashing) and
-'r' that readback of the firmware is allowed.
-
-\todo Add example, how to use dfu from a Linux or Windows host.
- */
-
 BAREBOX_CMD_START(dfu)
 	.cmd		= do_dfu,
 	BAREBOX_CMD_DESC("device firmware update")
diff --git a/commands/echo.c b/commands/echo.c
index 9b3e21e..7d47ab7 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -113,13 +113,6 @@ BAREBOX_CMD_HELP_OPT ("-a FILE", "append to FILE instead of using stdout")
 BAREBOX_CMD_HELP_OPT ("-o FILE", "overwrite FILE instead of using stdout")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page echo_command
-
-\todo Add documentation for -a, -o and -e.
-
- */
-
 BAREBOX_CMD_START(echo)
 	.cmd		= do_echo,
 	BAREBOX_CMD_DESC("echo args to console")
@@ -127,4 +120,3 @@ BAREBOX_CMD_START(echo)
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_echo_help)
 BAREBOX_CMD_END
-
diff --git a/commands/edit.c b/commands/edit.c
index f6b9d40..5a2da7d 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -15,11 +15,6 @@
  *
  */
 
-/**
- * @file
- * @brief A tiny editor implementation
- */
-
 #include <common.h>
 #include <command.h>
 #include <malloc.h>
@@ -550,16 +545,6 @@ BAREBOX_CMD_HELP_START(edit)
 BAREBOX_CMD_HELP_TEXT("Use cursor keys, Ctrl-C to exit and Ctrl-D to exit-with-save.")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page edit_command
-
-<p> Barebox contains a small text editor which can be used to edit
-config files in /env. You can move the cursor around with the arrow keys
-and type characters. </p>
-
-If called as sedit, the editor uses ansi codes to scroll the screen.
- */
-
 BAREBOX_CMD_START(edit)
 	.cmd		= do_edit,
 	.aliases	= edit_aliases,
@@ -568,4 +553,3 @@ BAREBOX_CMD_START(edit)
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_edit_help)
 BAREBOX_CMD_END
-
diff --git a/commands/flash.c b/commands/flash.c
index b50a327..99d3cb7 100644
--- a/commands/flash.c
+++ b/commands/flash.c
@@ -19,11 +19,6 @@
  *
  */
 
-/**
- * @file
- * @brief Flash memory support: erase, protect, unprotect
- */
-
 #include <common.h>
 #include <command.h>
 #include <errno.h>
@@ -92,20 +87,6 @@ BAREBOX_CMD_START(erase)
 	BAREBOX_CMD_HELP(cmd_erase_help)
 BAREBOX_CMD_END
 
-/**
- * @page erase_command
-
-<p> Erase the flash memory handled by this device. Which area will be
-erased depends on the device: If the device represents the whole flash
-memory, the whole memory will be erased. If the device represents a
-partition on a main flash memory, only this partition part will be
-erased. </p>
-
-Refer to \ref addpart_command, \ref delpart_command and \ref
-devinfo_command for partition handling.
-
- */
-
 static int do_protect(int argc, char *argv[])
 {
 	int fd;
@@ -173,23 +154,6 @@ BAREBOX_CMD_START(protect)
 	BAREBOX_CMD_HELP(cmd_protect_help)
 BAREBOX_CMD_END
 
-/**
- * @page protect_command
-
-
-If the device represents the whole
-flash memory the whole memory will be protected. If the device
-represents a partition on a main flash memory, only this partition part
-will be protected.
-
-Refer addpart_command, delpart_command and devinfo_command for partition
-handling.
-
-\todo Rework this documentation, what is an 'area'? Explain more about
-flashes here.
-
- */
-
 BAREBOX_CMD_HELP_START(unprotect)
 BAREBOX_CMD_HELP_TEXT("Unprotect the flash memory behind the device. It depends on the device")
 BAREBOX_CMD_HELP_TEXT("given, what area will be unprotected. If the device represents the whole")
@@ -205,19 +169,3 @@ BAREBOX_CMD_START(unprotect)
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_unprotect_help)
 BAREBOX_CMD_END
-
-/**
- * @page unprotect_command
-
-It depends on the device given,
-what area will be unprotected. If the device represents the whole flash memory
-the whole memory will be unprotected. If the device represents a partition
-on a main flash memory, only this partition part will be unprotected.
-
-Refer addpart_command, delpart_command and devinfo_command for partition
-handling.
-
-\todo Rework this documentation, what does it mean?
-
- */
-
diff --git a/commands/gpio.c b/commands/gpio.c
index 4f2d93e..08ecc15 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -107,65 +107,3 @@ BAREBOX_CMD_START(gpio_direction_output)
 	BAREBOX_CMD_OPTS("GPIO VALUE")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 BAREBOX_CMD_END
-
-/**
- * @page gpio_for_users GPIO Handling
-
-@section regular_gpio General usage information
-
-These commands are available if the symbol @b CONFIG_GENERIC_GPIO and @b
-CONFIG_CMD_GPIO are enabled in Kconfig.
-
-@note All gpio related commands take a number to identify the pad. This
-number is architecture dependent and may not directly correlate with the
-pad numbers. Due to this, it is also possible that the numbers changes
-between @b barebox releases.
-
-@section gpio_dir_out Use Pad as GPIO Output
-@verbatim
-# gpio_direction_output <gpio_no> <initial_value>
-@endverbatim
-- gpio_no: Architecture dependend GPIO number
-- initial_value: Output value
-
-<p> To avoid glitches on the pad the routines will first set up the
-pad's value and afterwards switch the pad to output (if the silicon is
-able to do so). If the pad is already configured in non-GPIO mode (if
-available), this command may silently fail. </p>
-
-@section gpio_dir_in Use Pad as GPIO Input
-@verbatim
-# gpio_direction_input <gpio_no>
-@endverbatim
-- gpio_no: Architecture dependent GPIO number
-
-<p> If the pad is already configured in non-GPIO mode (if available),
-this command may silently fail. </p>
-
-@section gpio_get_value Read Input Value from GPIO Pin
-@verbatim
-# gpio_get_value <gpio_no>
-@endverbatim
-
-<p> Reads the current value of a GPIO pin and return the value as a
-shell return code. There is no visible output on stdout. You can check
-the return value by using "echo $?". </p>
-
-<p> A return code other than '0' or '1' specifies an error code. </p>
-
-<p> If the pad is not configured in GPIO mode, this command may silently
-fail and return garbage. </p>
-
-@section gpio_set_value Set Output Value on GPIO Pin
-@verbatim
-# gpio_set_value <gpio_no> <value>
-@endverbatim
-- gpio_no: Architecture dependent GPIO number
-- value: Output value
-
-<p> Set a new output value on pad with GPIO number \<gpio_no>. </p>
-
-<p> If the pad is not configured in GPIO-mode, this command may silently
-fail. </p>
-
-*/
diff --git a/commands/led.c b/commands/led.c
index 62c72a3..354f74d 100644
--- a/commands/led.c
+++ b/commands/led.c
@@ -70,15 +70,6 @@ static int do_led(int argc, char *argv[])
 	return 0;
 }
 
-/**
- * @page led_command
-
-The exact meaning of <value> is unspecified. It can be a color in case of rgb
-LEDs or a brightness if this is controllable. In most cases only 1 for enabled
-is allowed.
-
-*/
-
 BAREBOX_CMD_HELP_START(led)
 BAREBOX_CMD_HELP_TEXT("Control the value of a LED. The exact meaning of VALUE is unspecified,")
 BAREBOX_CMD_HELP_TEXT("it can be a brightness, or a color. Most often a value of '1' means on")
diff --git a/commands/linux16.c b/commands/linux16.c
index 65814f4..594efc7 100644
--- a/commands/linux16.c
+++ b/commands/linux16.c
@@ -330,18 +330,6 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-v VESAMODE",   "set VESAMODE")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page linux16_command
-
-<p>Only kernel images in bzImage format are supported by now. See \ref
-x86_boot_preparation for more info about how to use this command.</p>
-
-<p>For the video mode refer the Linux kernel documentation
-'Documentation/fb/vesafb.txt' for correct VESA mode numbers. If the keyword
-'ask' instead of a number is given, the starting kernel will ask for a number.
-</p>
- */
-
 BAREBOX_CMD_START(linux16)
 	.cmd		= do_linux16,
 	BAREBOX_CMD_DESC("boot a linux kernel on x86 via real-mode code")
@@ -349,57 +337,3 @@ BAREBOX_CMD_START(linux16)
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_linux16_help)
 BAREBOX_CMD_END
-
-/**
- * @file
- * @brief Boot support for Linux on x86
- */
-
-/**
- * @page x86_boot_preparation Linux Preparation on x86
- *
- * Due to some real mode constraints, starting Linux is somehow tricky.
- * Currently only @p bzImages are supported, because @p zImages would
- * interfere with the @a barebox runtime.
- * Also older load header versions than 2.00 aren't supported.
- *
- * The memory layout immediately before starting the Linux kernel:
- *
-@verbatim
-                  real mode space                     hole            extended memory
-   |---------------------------------------------->|----------->|------------------------------>
-   0  0x7e00                        0x90000     0xa0000     0x100000
-    <-1-|----------2-----------><-3-   |
-                                  <-4--|-5-->                   |---------6------------->
-@endverbatim
- *
- * @li 1 = @a barebox's real mode stack
- * @li 2 = @a barebox's code
- * @li 3 = @a barebox's flat mode stack
- * @li 4 = real mode stack, when starting the Linux kernel
- * @li 5 = Kernel's real mode setup code
- * @li 6 = compressed kernel image
- *
- * A more detailed memory layout for kernel's real mode setup code
- *
-@verbatim
-
-   0x90000                                    0x97fff   0x99000              0x990ff
-   ---|------------------------------------------|----------------|--------------------|
-      |<-------- max setup code size ----------->|<--heap/stack-->|<-- command line -->|
-
-@endverbatim
- *
- * The regular entry point into the setup code is 0x90200 (2nd sector)
- *
- * To start the kernel, it's own setup code will be called. To do so, it
- * must be called in real mode. So, @a barebox switches back to real mode
- * a last time and does a jump to the setup code entry point. Now its up to
- * the setup code to deflate the kernel, switching to its own protected mode
- * setup and starting the kernel itself.
- *
- * @note This scenario only works, if a BIOS is still present. In this case
- * there is no need for @a barebox to forward any system related information
- * to the kernel. Everything is detected by kernel's setup code.
- *
- */
diff --git a/commands/loadenv.c b/commands/loadenv.c
index ba92613..8b15af4 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -112,15 +112,6 @@ BAREBOX_CMD_HELP_OPT("-s", "scrub old environment")
 BAREBOX_CMD_HELP_OPT("-d", "load default environment")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page loadenv_command
-
-ENVFS can only handle files, directories are skipped silently.
-
-\todo This needs proper documentation. What is ENVFS, why is it FS etc. Explain the concepts.
-
- */
-
 BAREBOX_CMD_START(loadenv)
 	.cmd		= do_loadenv,
 	BAREBOX_CMD_DESC("load environment from ENVFS")
diff --git a/commands/miitool.c b/commands/miitool.c
index b08be9c..40e34e9 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -293,12 +293,6 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-v", "increase verbosity")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page miitool_command
-This utility checks or sets the status of a network interface's
-Media Independent Interface (MII) unit. Most fast ethernet
-adapters use an MII to autonegotiate link speed and duplex setting.
- */
 BAREBOX_CMD_START(miitool)
 	.cmd		= do_miitool,
 	BAREBOX_CMD_DESC("view media-independent interface status")
diff --git a/commands/mount.c b/commands/mount.c
index 7aa155e..939e9bc 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -17,11 +17,6 @@
  *
  */
 
-/**
- * @file
- * @brief Filesystem mounting support
- */
-
 #include <common.h>
 #include <command.h>
 #include <fs.h>
@@ -130,37 +125,6 @@ BAREBOX_CMD_HELP_OPT("-o OPTIONS", "set file system OPTIONS")
 BAREBOX_CMD_HELP_OPT("-v\t", "verbose")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page mount_command
-
-<ul>
-<li>\<device> can be a device in /dev or some arbitrary string if no
-    device is needed for this driver, i.e. on ramfs. </li>
-<li>\<fstype> is the filesystem driver. A list of available drivers can
-    be shown with the \ref devinfo_command command.</li>
-<li>\<mountpoint> must be an empty directory, one level below the /
-    directory.</li>
-</ul>
-
- */
-
-/**
- * @page how_mount_works How mount works in barebox
-
-Mounting a filesystem ontop of a device is working like devices and
-drivers are finding together.
-
-The mount command creates a new device with the filesystem name as the
-driver for this "device". So the framework is able to merge both parts
-together.
-
-By the way: With this feature its impossible to accidentely remove
-partitions in use. A partition is internally also a device. If its
-mounted it will be marked as busy, so an delpart command fails, until
-the filesystem has been unmounted.
-
- */
-
 BAREBOX_CMD_START(mount)
 	.cmd		= do_mount,
 	BAREBOX_CMD_DESC("mount a filesystem or list mounted filesystems")
diff --git a/commands/partition.c b/commands/partition.c
index 51988df..ef6d9c9 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -180,18 +180,6 @@ BAREBOX_CMD_HELP_TEXT("The size of the last partition can be specified as '-' fo
 BAREBOX_CMD_HELP_TEXT("space on the device.")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page addpart_command
-
-The size and the offset can be given in decimal (without any prefix) and
-in hex (prefixed with 0x). Both can have an optional suffix K, M or G.
-The size of the last partition can be specified as '-' for the remaining
-space on the device.  This format is the same as used by the Linux
-kernel or cmdline mtd partitions.
-
-\todo This command has to be reworked and will probably change it's API.
-*/
-
 BAREBOX_CMD_START(addpart)
 	.cmd = do_addpart,
 	BAREBOX_CMD_DESC("add a partition description to a device")
@@ -219,17 +207,6 @@ BAREBOX_CMD_HELP_START(delpart)
 BAREBOX_CMD_HELP_TEXT("Delete partitions previously added to a device with addpart.")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page delpart_command
-
-Partitions are created by adding their description with the addpart
-command. If you want to get rid of a partition again, use delpart. The
-argument list is taken as a list of partitions to be deleted.
-
-\todo Add an example
-
- */
-
 BAREBOX_CMD_START(delpart)
 	.cmd = do_delpart,
 	BAREBOX_CMD_DESC("delete partition(s)")
@@ -238,4 +215,3 @@ BAREBOX_CMD_START(delpart)
 	BAREBOX_CMD_HELP(cmd_delpart_help)
 	BAREBOX_CMD_COMPLETE(devfs_partition_complete)
 BAREBOX_CMD_END
-
diff --git a/commands/printenv.c b/commands/printenv.c
index 83353ae..161c214 100644
--- a/commands/printenv.c
+++ b/commands/printenv.c
@@ -15,11 +15,6 @@
  *
  */
 
-/**
- * @file
- * @brief printenv: Print out environment variables
- */
-
 #include <common.h>
 #include <command.h>
 #include <errno.h>
@@ -62,15 +57,6 @@ BAREBOX_CMD_HELP_TEXT("variable to the terminal. If no argument is specified, al
 BAREBOX_CMD_HELP_TEXT("printed.")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page printenv_command
-
-<p>If an argument is given, printenv prints the content of an environment
-variable to the terminal. If no argument is specified, all variables are
-printed.</p>
-
- */
-
 BAREBOX_CMD_START(printenv)
 	.cmd		= do_printenv,
 	BAREBOX_CMD_DESC("print value of environment variables")
diff --git a/commands/saveenv.c b/commands/saveenv.c
index d629a94..54b6fa1 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -15,11 +15,6 @@
  *
  */
 
-/**
- * @file
- * @brief saveenv: Make the environment persistent
- */
-
 #include <common.h>
 #include <command.h>
 #include <errno.h>
@@ -64,16 +59,3 @@ BAREBOX_CMD_START(saveenv)
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_saveenv_help)
 BAREBOX_CMD_END
-
-/**
- * @page saveenv_command
-
-<p>\<envfs> is usually a block in flash but can be any other file. If
-omitted, \<directory> defaults to /env and \<envfs> defaults to
-/dev/env0. Note that envfs can only handle files, directories are being
-skipped silently.</p>
-
-\todo What does 'block in flash' mean? Add example.
-
- */
-
diff --git a/commands/setenv.c b/commands/setenv.c
index 9e21cce..af4dd29 100644
--- a/commands/setenv.c
+++ b/commands/setenv.c
@@ -15,11 +15,6 @@
  *
  */
 
-/**
- * @file
- * @brief setenv: Set an environment variables
- */
-
 #include <common.h>
 #include <command.h>
 #include <errno.h>
@@ -40,14 +35,6 @@ BAREBOX_CMD_HELP_TEXT("Set environment variable NAME to VALUE.")
 BAREBOX_CMD_HELP_TEXT("If VALUE is ommitted, then the variable is deleted.")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page setenv_command
-
-<p> This command is only available if the simple command line parser is
-in use. Within the hush shell, \c setenv is not required.</p>
-
- */
-
 BAREBOX_CMD_START(setenv)
 	.cmd		= do_setenv,
 	BAREBOX_CMD_DESC("set environment variable")
diff --git a/commands/splash.c b/commands/splash.c
index c61a1d7..5d0c0ad 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -89,17 +89,6 @@ BAREBOX_CMD_HELP_OPT ("-b COLOR", "background color in 0xttrrggbb")
 BAREBOX_CMD_HELP_OPT ("-o\t",       "render offscreen")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page bmp_command
-
-This command displays a graphics in the bitmap (.bmp) format on the
-framebuffer. Currently the bmp command supports images with 8 and 24 bit
-color depth.
-
-\todo What does the -o (offscreen) option do?
-
- */
-
 BAREBOX_CMD_START(splash)
 	.cmd		= do_splash,
 	BAREBOX_CMD_DESC("display a BMP image")
diff --git a/commands/usbserial.c b/commands/usbserial.c
index 1c26246..e4c2f18 100644
--- a/commands/usbserial.c
+++ b/commands/usbserial.c
@@ -92,10 +92,6 @@ BAREBOX_CMD_HELP_OPT ("-s",   "Generic Serial")
 BAREBOX_CMD_HELP_OPT ("-d",   "Disable the serial gadget")
 BAREBOX_CMD_HELP_END
 
-/**
- * @page usbserial_command
- */
-
 BAREBOX_CMD_START(usbserial)
 	.cmd		= do_usbserial,
 	BAREBOX_CMD_DESC("serial gadget enable/disable")
diff --git a/common/kallsyms.c b/common/kallsyms.c
index 121b77c..53e22cd 100644
--- a/common/kallsyms.c
+++ b/common/kallsyms.c
@@ -3,8 +3,6 @@
 #include <kallsyms.h>
 #include <asm/sections.h>
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
 /* These will be re-linked against their real values during the second link stage */
 extern const unsigned long kallsyms_addresses[] __attribute__((weak));
 extern const unsigned long kallsyms_num_syms __attribute__((weak));
@@ -15,8 +13,6 @@ extern const u16 kallsyms_token_index[] __attribute__((weak));
 
 extern const unsigned long kallsyms_markers[] __attribute__((weak));
 
-#endif /* DOXYGEN_SHOULD_SKIP_THIS */
-
 static inline int is_kernel_text(unsigned long addr)
 {
 	if ((addr >= (unsigned long)_stext && addr <= (unsigned long)_etext))
diff --git a/include/command.h b/include/command.h
index 347ad2f..5d5bf53 100644
--- a/include/command.h
+++ b/include/command.h
@@ -90,8 +90,6 @@ void barebox_cmd_usage(struct command *cmdtp);
 
 #endif	/* __ASSEMBLY__ */
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
 #define Struct_Section  __attribute__ ((unused,section (".barebox_cmd")))
 
 #define BAREBOX_CMD_START(_name)							\
@@ -127,8 +125,6 @@ static const __maybe_unused char cmd_##_name##_help[] =
 
 #define BAREBOX_CMD_OPTS(text)	.opts = text,
 
-#endif /* DOXYGEN_SHOULD_SKIP_THIS */
-
 int register_command(struct command *);
 
 #endif	/* __COMMAND_H */
diff --git a/include/driver.h b/include/driver.h
index ffc0cba..53e1000 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -28,32 +28,6 @@
 
 #include <param.h>
 
-/**
- * @file
- * @brief Main description of the device/driver model
- */
-
-/** @page driver_model Main description of the device/driver model
- *
- * We follow a rather simplistic driver model here. There is a
- * @code struct device_d @endcode
- * which describes a particular device present in the system.
- *
- * On the other side a
- * @code struct driver_d @endcode
- * represents a driver present in the system.
- *
- * Both structs find together via the members 'type' (int) and 'name' (char *).
- * If both members match, the driver's probe function is called with the
- * struct device_d as argument.
- *
- * People familiar with the Linux platform bus will recognize this behaviour
- * and in fact many things were stolen from there. Some selected members of the
- * structs will be described in this document.
- */
-
-/*@{*/	/* do not delete, doxygen relevant */
-
 struct filep;
 struct bus_type;
 
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index f89fefb..a107f5e 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -19,8 +19,6 @@
 #include <driver.h>
 #include <linux/types.h>
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
 /*
  * struct i2c_platform_data - structure of platform data for MXC I2C driver
  * @param	bitrate	Bus speed measured in Hz
@@ -153,8 +151,6 @@ extern int i2c_master_recv(struct i2c_client *client, char *buf, int count);
 extern int i2c_read_reg(struct i2c_client *client, u32 addr, u8 *buf, u16 count);
 extern int i2c_write_reg(struct i2c_client *client, u32 addr, const u8 *buf, u16 count);
 
-#endif /* DOXYGEN_SHOULD_SKIP_THIS */
-
 extern struct bus_type i2c_bus;
 
 static inline int i2c_driver_register(struct driver_d *drv)
diff --git a/include/linux/mtd/mtd-abi.h b/include/linux/mtd/mtd-abi.h
index c1ba55b..c46605d 100644
--- a/include/linux/mtd/mtd-abi.h
+++ b/include/linux/mtd/mtd-abi.h
@@ -7,8 +7,6 @@
 #ifndef __MTD_ABI_H__
 #define __MTD_ABI_H__
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
 #include <asm-generic/div64.h>
 
 struct erase_info_user {
@@ -183,6 +181,4 @@ static inline uint32_t mtd_user_div_by_eb(uint64_t sz,
 	return sz;
 }
 
-#endif /* DOXYGEN_SHOULD_SKIP_THIS */
-
 #endif /* __MTD_ABI_H__ */
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 5f02aee..1d33592 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -9,8 +9,6 @@
 #ifndef __MTD_MTD_H__
 #define __MTD_MTD_H__
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
 #include <driver.h>
 #include <errno.h>
 #include <linux/types.h>
@@ -325,8 +323,6 @@ int mtd_all_ff(const void *buf, unsigned int len);
 
 #endif /* CONFIG_MTD_DEBUG */
 
-#endif /* DOXYGEN_SHOULD_SKIP_THIS */
-
 static inline int mtd_is_bitflip(int err) {
 	return err == -EUCLEAN;
 }
diff --git a/include/spi/spi.h b/include/spi/spi.h
index b4358a8..620e5e5 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -1,8 +1,6 @@
 #ifndef __INCLUDE_SPI_H
 #define __INCLUDE_SPI_H
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
 #include <driver.h>
 #include <linux/string.h>
 
@@ -431,8 +429,6 @@ static inline ssize_t spi_w8r8(struct spi_device *spi, u8 cmd)
 	return (status < 0) ? status : result;
 }
 
-#endif /* DOXYGEN_SHOULD_SKIP_THIS */
-
 extern struct bus_type spi_bus;
 
 struct spi_master *spi_get_master(int bus);
diff --git a/include/usb/ch9.h b/include/usb/ch9.h
index adbe533..9322363 100644
--- a/include/usb/ch9.h
+++ b/include/usb/ch9.h
@@ -33,8 +33,6 @@
 #ifndef __LINUX_USB_CH9_H
 #define __LINUX_USB_CH9_H
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
 #include <linux/types.h>	/* __u8 etc */
 
 /*-------------------------------------------------------------------------*/
@@ -798,6 +796,4 @@ enum usb_device_state {
 	 */
 };
 
-#endif /* DOXYGEN_SHOULD_SKIP_THIS */
-
 #endif /* __LINUX_USB_CH9_H */
diff --git a/include/usb/composite.h b/include/usb/composite.h
index 798fa11..379927a 100644
--- a/include/usb/composite.h
+++ b/include/usb/composite.h
@@ -17,8 +17,6 @@
 #ifndef	__LINUX_USB_COMPOSITE_H
 #define	__LINUX_USB_COMPOSITE_H
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
 /*
  * This framework is an optional layer on top of the USB Gadget interface,
  * making it easier to build (a) Composite devices, supporting multiple
@@ -343,6 +341,4 @@ extern int usb_string_id(struct usb_composite_dev *c);
 #define WARNING(d, fmt, args...)
 #define INFO(d, fmt, args...)
 
-#endif /* DOXYGEN_SHOULD_SKIP_THIS */
-
 #endif	/* __LINUX_USB_COMPOSITE_H */
diff --git a/include/usb/gadget.h b/include/usb/gadget.h
index ff1509c..798b51b 100644
--- a/include/usb/gadget.h
+++ b/include/usb/gadget.h
@@ -15,8 +15,6 @@
 #ifndef __LINUX_USB_GADGET_H
 #define __LINUX_USB_GADGET_H
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
 #include <usb/ch9.h>
 #include <malloc.h>
 #include <errno.h>
@@ -899,6 +897,4 @@ extern struct usb_ep *usb_ep_autoconfig(struct usb_gadget *,
 
 extern void usb_ep_autoconfig_reset(struct usb_gadget *);
 
-#endif /* DOXYGEN_SHOULD_SKIP_THIS */
-
 #endif /* __LINUX_USB_GADGET_H */
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 1a369d2..4877e32 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -22,8 +22,6 @@
 #ifndef _USB_H_
 #define _USB_H_
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
 #include <driver.h>
 #include <usb/usb_defs.h>
 #include <asm/byteorder.h>
@@ -516,8 +514,6 @@ struct usb_device_id {
 #define USB_CTRL_SET_TIMEOUT   5000
 #define USB_CTRL_GET_TIMEOUT   5000
 
-#endif /* DOXYGEN_SHOULD_SKIP_THIS */
-
 enum usb_dr_mode of_usb_get_dr_mode(struct device_node *np,
 		const char *propname);
 
diff --git a/net/netconsole.c b/net/netconsole.c
index 86a68e1..021820b 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -32,11 +32,6 @@
 #include <init.h>
 #include <linux/err.h>
 
-/**
- * @file
- * @brief Network console support
- */
-
 struct nc_priv {
 	struct console_device cdev;
 	struct kfifo *fifo;
@@ -169,26 +164,3 @@ static int netconsole_init(void)
 }
 
 device_initcall(netconsole_init);
-
-/** @page net_netconsole Network console
-
-@section net_netconsole Using an UDP based network console
-
-If enabled barebox supports a console via udp networking. There is only
-one network console supported registered during init time. It is deactivated
-by default because it opens great security holes, so use with care.
-
-To use the network console you have to configure the remote ip and the local
-and remote ports. Assuming the network console is registered as cs1, it can be
-configured with:
-
-@code
-cs1.ip=<remotehost>
-cs1.port=<port>
-cs1.active=ioe
-@endcode
-
-On the remote host call scripts/netconsole with bareboxes ip and port as
-parameters. port is initialized to 6666 by default.
-
-*/
diff --git a/scripts/doxy_filter.awk b/scripts/doxy_filter.awk
deleted file mode 100644
index 5ec0406..0000000
-- 
2.0.0



--===============1811966080759563932==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1811966080759563932==--
