Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R71zb-0004Ov-Dy
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 09:24:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 11:24:09 +0200
Message-Id: <1316769860-24549-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
References: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] introduce io.h
To: barebox@lists.infradead.org

To allow for some generic io accessors introduce io.h and use
this instead of asm/io.h throughout the tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c                 |    2 +-
 arch/arm/boards/a9m2440/a9m2410dev.c              |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                 |    2 +-
 arch/arm/boards/at91rm9200ek/init.c               |    2 +-
 arch/arm/boards/at91sam9260ek/init.c              |    2 +-
 arch/arm/boards/at91sam9261ek/init.c              |    2 +-
 arch/arm/boards/at91sam9263ek/init.c              |    2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c           |    2 +-
 arch/arm/boards/chumby_falconwing/falconwing.c    |    2 +-
 arch/arm/boards/edb93xx/edb93xx.c                 |    2 +-
 arch/arm/boards/edb93xx/flash_cfg.c               |    2 +-
 arch/arm/boards/edb93xx/pll_cfg.c                 |    2 +-
 arch/arm/boards/edb93xx/sdram_cfg.c               |    2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    2 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c        |    2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c        |    2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c        |    2 +-
 arch/arm/boards/freescale-mx53-loco/board.c       |    2 +-
 arch/arm/boards/guf-cupid/board.c                 |    2 +-
 arch/arm/boards/guf-cupid/lowlevel.c              |    2 +-
 arch/arm/boards/guf-neso/board.c                  |    2 +-
 arch/arm/boards/guf-neso/lowlevel.c               |    2 +-
 arch/arm/boards/imx21ads/imx21ads.c               |    2 +-
 arch/arm/boards/imx27ads/imx27ads.c               |    2 +-
 arch/arm/boards/karo-tx25/board.c                 |    2 +-
 arch/arm/boards/karo-tx25/lowlevel.c              |    2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c             |    2 +-
 arch/arm/boards/karo-tx28/tx28.c                  |    2 +-
 arch/arm/boards/mini2440/mini2440.c               |    2 +-
 arch/arm/boards/mmccpu/init.c                     |    2 +-
 arch/arm/boards/nhk8815/setup.c                   |    2 +-
 arch/arm/boards/omap/board-beagle.c               |    2 +-
 arch/arm/boards/omap/board-omap3evm.c             |    2 +-
 arch/arm/boards/omap/board-sdp343x.c              |    2 +-
 arch/arm/boards/panda/board.c                     |    2 +-
 arch/arm/boards/panda/lowlevel.c                  |    2 +-
 arch/arm/boards/panda/mux.c                       |    2 +-
 arch/arm/boards/pcm037/pcm037.c                   |    2 +-
 arch/arm/boards/pcm038/lowlevel.c                 |    2 +-
 arch/arm/boards/pcm038/pcm038.c                   |    2 +-
 arch/arm/boards/pcm043/lowlevel.c                 |    2 +-
 arch/arm/boards/pcm043/pcm043.c                   |    2 +-
 arch/arm/boards/pcm049/board.c                    |    2 +-
 arch/arm/boards/pcm049/lowlevel.c                 |    2 +-
 arch/arm/boards/pcm049/mux.c                      |    2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c           |    2 +-
 arch/arm/boards/pm9261/init.c                     |    2 +-
 arch/arm/boards/pm9263/init.c                     |    2 +-
 arch/arm/boards/pm9g45/init.c                     |    2 +-
 arch/arm/boards/scb9328/scb9328.c                 |    2 +-
 arch/arm/boards/usb-a926x/init.c                  |    2 +-
 arch/arm/cpu/cache-l2x0.c                         |    2 +-
 arch/arm/mach-at91/at91rm9200_time.c              |    2 +-
 arch/arm/mach-at91/at91sam926x_time.c             |    2 +-
 arch/arm/mach-at91/gpio.c                         |    2 +-
 arch/arm/mach-at91/include/mach/gpio.h            |    2 +-
 arch/arm/mach-at91/include/mach/io.h              |    2 +-
 arch/arm/mach-at91/sam9_smc.c                     |    2 +-
 arch/arm/mach-ep93xx/clocksource.c                |    2 +-
 arch/arm/mach-ep93xx/gpio.c                       |    2 +-
 arch/arm/mach-ep93xx/led.c                        |    2 +-
 arch/arm/mach-imx/boot.c                          |    2 +-
 arch/arm/mach-imx/clocksource.c                   |    2 +-
 arch/arm/mach-imx/gpio.c                          |    2 +-
 arch/arm/mach-imx/iim.c                           |    2 +-
 arch/arm/mach-imx/imx25.c                         |    2 +-
 arch/arm/mach-imx/imx35.c                         |    2 +-
 arch/arm/mach-imx/imx51.c                         |    2 +-
 arch/arm/mach-imx/imx53.c                         |    2 +-
 arch/arm/mach-imx/internal-nand-boot.c            |    2 +-
 arch/arm/mach-imx/iomux-v2.c                      |    2 +-
 arch/arm/mach-imx/iomux-v3.c                      |    2 +-
 arch/arm/mach-imx/nand.c                          |    2 +-
 arch/arm/mach-imx/speed-imx25.c                   |    2 +-
 arch/arm/mach-imx/speed-imx31.c                   |    2 +-
 arch/arm/mach-imx/speed-imx35.c                   |    2 +-
 arch/arm/mach-imx/speed-imx51.c                   |    2 +-
 arch/arm/mach-imx/speed-imx53.c                   |    2 +-
 arch/arm/mach-mxs/clocksource-imx23.c             |    2 +-
 arch/arm/mach-mxs/clocksource-imx28.c             |    2 +-
 arch/arm/mach-mxs/imx_lcd_clk.c                   |    2 +-
 arch/arm/mach-mxs/iomux-imx.c                     |    2 +-
 arch/arm/mach-mxs/reset-imx.c                     |    2 +-
 arch/arm/mach-mxs/speed-imx23.c                   |    2 +-
 arch/arm/mach-mxs/speed-imx28.c                   |    2 +-
 arch/arm/mach-mxs/usb.c                           |    2 +-
 arch/arm/mach-nomadik/reset.c                     |    2 +-
 arch/arm/mach-nomadik/timer.c                     |    2 +-
 arch/arm/mach-omap/devices-gpmc-nand.c            |    2 +-
 arch/arm/mach-omap/gpio.c                         |    2 +-
 arch/arm/mach-omap/gpmc.c                         |    2 +-
 arch/arm/mach-omap/include/mach/syslib.h          |    2 +-
 arch/arm/mach-omap/omap3_clock.c                  |    2 +-
 arch/arm/mach-omap/omap3_generic.c                |    2 +-
 arch/arm/mach-omap/omap4_clock.c                  |    2 +-
 arch/arm/mach-omap/omap4_generic.c                |    2 +-
 arch/arm/mach-omap/s32k_clksource.c               |    2 +-
 arch/arm/mach-omap/syslib.c                       |    2 +-
 arch/arm/mach-s3c24xx/generic.c                   |    2 +-
 arch/arm/mach-s3c24xx/gpio-s3c24x0.c              |    2 +-
 arch/arm/mach-versatile/core.c                    |    2 +-
 arch/arm/mach-versatile/include/mach/debug_ll.h   |    2 +-
 arch/mips/boards/dlink-dir-320/serial.c           |    2 +-
 arch/mips/boards/qemu-malta/serial.c              |    2 +-
 arch/mips/lib/csrc-r4k.c                          |    2 +-
 arch/mips/mach-bcm47xx/include/mach/debug_ll.h    |    2 +-
 arch/mips/mach-bcm47xx/reset.c                    |    2 +-
 arch/mips/mach-malta/include/mach/debug_ll.h      |    2 +-
 arch/mips/mach-malta/reset.c                      |    2 +-
 arch/nios2/cpu/interrupts.c                       |    2 +-
 arch/nios2/lib/clock.c                            |    2 +-
 arch/nios2/lib/early_printf.c                     |    2 +-
 arch/ppc/include/asm/mc146818rtc.h                |    2 +-
 arch/ppc/mach-mpc5xxx/interrupts.c                |    2 +-
 arch/ppc/mach-mpc5xxx/pci_mpc5200.c               |    2 +-
 arch/x86/boot/a20.c                               |    2 +-
 arch/x86/boot/prepare_uboot.c                     |    2 +-
 arch/x86/mach-i386/generic.c                      |    2 +-
 arch/x86/mach-i386/pit_timer.c                    |    2 +-
 drivers/i2c/busses/i2c-imx.c                      |    2 +-
 drivers/i2c/busses/i2c-omap.c                     |    2 +-
 drivers/mci/atmel_mci.c                           |    2 +-
 drivers/mci/imx-esdhc.c                           |    2 +-
 drivers/mci/imx.c                                 |    2 +-
 drivers/mci/mxs.c                                 |    2 +-
 drivers/mci/omap_hsmmc.c                          |    2 +-
 drivers/mci/s3c.c                                 |    2 +-
 drivers/mtd/nand/atmel_nand.c                     |    2 +-
 drivers/mtd/nand/diskonchip.c                     |    2 +-
 drivers/mtd/nand/nand_base.c                      |    2 +-
 drivers/mtd/nand/nand_hwecc.c                     |    2 +-
 drivers/mtd/nand/nand_hwecc_syndrome.c            |    2 +-
 drivers/mtd/nand/nand_imx.c                       |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c                 |    2 +-
 drivers/mtd/nand/nand_s3c2410.c                   |    2 +-
 drivers/mtd/nand/nand_swecc.c                     |    2 +-
 drivers/mtd/nand/nand_write.c                     |    2 +-
 drivers/mtd/nand/nomadik_nand.c                   |    2 +-
 drivers/net/altera_tse.c                          |    2 +-
 drivers/net/cs8900.c                              |    2 +-
 drivers/net/dm9000.c                              |    2 +-
 drivers/net/ep93xx.c                              |    2 +-
 drivers/net/fec_imx.c                             |    2 +-
 drivers/net/macb.c                                |    2 +-
 drivers/net/netx_eth.c                            |    2 +-
 drivers/net/smc91111.c                            |    2 +-
 drivers/net/smc911x.c                             |    2 +-
 drivers/nor/cfi_flash.c                           |    2 +-
 drivers/nor/cfi_flash.h                           |    2 +-
 drivers/serial/amba-pl011.c                       |    2 +-
 drivers/serial/atmel.c                            |    2 +-
 drivers/serial/serial_altera.c                    |    2 +-
 drivers/serial/serial_altera_jtag.c               |    2 +-
 drivers/serial/serial_at91rm9200.c                |    2 +-
 drivers/serial/serial_blackfin.c                  |    2 +-
 drivers/serial/serial_imx.c                       |    2 +-
 drivers/serial/serial_netx.c                      |    2 +-
 drivers/serial/serial_ns16550.c                   |    2 +-
 drivers/serial/serial_pl010.c                     |    2 +-
 drivers/serial/serial_s3c24x0.c                   |    2 +-
 drivers/serial/stm-serial.c                       |    2 +-
 drivers/spi/altera_spi.c                          |    2 +-
 drivers/spi/atmel_spi.c                           |    2 +-
 drivers/spi/imx_spi.c                             |    2 +-
 drivers/usb/gadget/fsl_udc.c                      |    2 +-
 drivers/usb/host/ehci-hcd.c                       |    2 +-
 drivers/usb/host/ehci-omap.c                      |    2 +-
 drivers/usb/host/ohci-at91.c                      |    2 +-
 drivers/usb/host/ohci-hcd.c                       |    2 +-
 drivers/usb/otg/ulpi.c                            |    2 +-
 drivers/video/imx-ipu-fb.c                        |    2 +-
 drivers/video/imx.c                               |    2 +-
 drivers/video/s3c.c                               |    2 +-
 drivers/video/stm.c                               |    2 +-
 include/io.h                                      |    6 ++++++
 180 files changed, 185 insertions(+), 179 deletions(-)
 create mode 100644 include/io.h

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 44ac44b..bbe1604 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -31,7 +31,7 @@
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <nand.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/s3c24x0-iomap.h>
 #include <mach/s3c24x0-nand.h>
 
diff --git a/arch/arm/boards/a9m2440/a9m2410dev.c b/arch/arm/boards/a9m2440/a9m2410dev.c
index 1220bd9..5f7c53b 100644
--- a/arch/arm/boards/a9m2440/a9m2410dev.c
+++ b/arch/arm/boards/a9m2440/a9m2410dev.c
@@ -27,7 +27,7 @@
 #include <common.h>
 #include <driver.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/s3c24x0-iomap.h>
 
 /**
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 89c9cdf..964d376 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -31,7 +31,7 @@
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <nand.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/s3c24x0-iomap.h>
 #include <mach/s3c24x0-nand.h>
 #include <mach/s3c24xx-generic.h>
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index cff7ede..b2008a4 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -27,7 +27,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 8fab557..ea80a1b 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -28,7 +28,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 69111a0..0bef84d 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -27,7 +27,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 278e312..40c0b7b 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -29,7 +29,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index ba7c2ff..073ff42 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -30,7 +30,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 1c66eb2..38f28be 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -25,7 +25,7 @@
 #include <sizes.h>
 #include <usb/ehci.h>
 #include <asm/armlinux.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/mmu.h>
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 3e4e0b0..70fd12c 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -27,7 +27,7 @@
 #include <init.h>
 #include <partition.h>
 #include <asm/armlinux.h>
-#include <asm/io.h>
+#include <io.h>
 #include <generated/mach-types.h>
 #include <mach/ep93xx-regs.h>
 #include "edb93xx.h"
diff --git a/arch/arm/boards/edb93xx/flash_cfg.c b/arch/arm/boards/edb93xx/flash_cfg.c
index 91a6a4e..56bf0b5 100644
--- a/arch/arm/boards/edb93xx/flash_cfg.c
+++ b/arch/arm/boards/edb93xx/flash_cfg.c
@@ -24,7 +24,7 @@
 
 #include <common.h>
 #include <mach/ep93xx-regs.h>
-#include <asm/io.h>
+#include <io.h>
 
 #define SMC_BCR6_VALUE	(2 << SMC_BCR_IDCY_SHIFT | 5 << SMC_BCR_WST1_SHIFT | \
 				SMC_BCR_BLE | 2 << SMC_BCR_WST2_SHIFT | \
diff --git a/arch/arm/boards/edb93xx/pll_cfg.c b/arch/arm/boards/edb93xx/pll_cfg.c
index a687af0..a53efa6 100644
--- a/arch/arm/boards/edb93xx/pll_cfg.c
+++ b/arch/arm/boards/edb93xx/pll_cfg.c
@@ -25,7 +25,7 @@
  */
 
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include "pll_cfg.h"
 #include "early_udelay.h"
 
diff --git a/arch/arm/boards/edb93xx/sdram_cfg.c b/arch/arm/boards/edb93xx/sdram_cfg.c
index 3d4fe08..8342d44 100644
--- a/arch/arm/boards/edb93xx/sdram_cfg.c
+++ b/arch/arm/boards/edb93xx/sdram_cfg.c
@@ -23,7 +23,7 @@
  */
 
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include "sdram_cfg.h"
 #include "early_udelay.h"
 
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 1c54202..6355e3c 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -29,7 +29,7 @@
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
 #include <mach/gpio.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/mmu.h>
 #include <led.h>
 
diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index 4ebf247..1221973 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -26,7 +26,7 @@
 #include <mach/imx-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm-generic/memory_layout.h>
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index a5aadac..994f456 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -37,7 +37,7 @@
 #include <fcntl.h>
 #include <nand.h>
 #include <command.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-nand.h>
 #include <mach/imx-pll.h>
 #include <mach/imxfb.h>
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 426445f..5f654d4 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -39,7 +39,7 @@
 #include <partition.h>
 
 #include <asm/armlinux.h>
-#include <asm/io.h>
+#include <io.h>
 #include <generated/mach-types.h>
 #include <asm/mmu.h>
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index 6c0e106..a909a87 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -26,7 +26,7 @@
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
 #include <asm/cache-l2x0.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm-generic/memory_layout.h>
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 727db29..a128d50 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -34,7 +34,7 @@
 #include <nand.h>
 #include <spi/spi.h>
 #include <mfd/mc13892.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/mmu.h>
 #include <mach/imx-nand.h>
 #include <mach/spi.h>
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 979115d..5aa54e4 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -28,7 +28,7 @@
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
 #include <mach/gpio.h>
-#include <asm/io.h>
+#include <io.h>
 #include <partition.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index ab70265..030a1a7 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -37,7 +37,7 @@
 #include <partition.h>
 
 #include <asm/armlinux.h>
-#include <asm/io.h>
+#include <io.h>
 #include <generated/mach-types.h>
 
 #include <mach/gpio.h>
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 646f807..d56effa 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -32,7 +32,7 @@
 #include <nand.h>
 #include <spi/spi.h>
 #include <mfd/mc13892.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/mmu.h>
 #include <mach/imx-nand.h>
 #include <mach/spi.h>
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index b5240f4..24df9ae 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -36,7 +36,7 @@
 #include <mach/iim.h>
 
 #include <asm/armlinux.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/mmu.h>
 
 static struct fec_platform_data fec_info = {
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 706707d..158adfc 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -32,7 +32,7 @@
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
 #include <mach/gpio.h>
-#include <asm/io.h>
+#include <io.h>
 #include <partition.h>
 #include <nand.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index 8d403ee..396604d 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -26,7 +26,7 @@
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
 #include <asm/cache-l2x0.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm-generic/memory_layout.h>
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 446b333..e524b70 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -32,7 +32,7 @@
 #include <spi/spi.h>
 #include <usb/isp1504.h>
 
-#include <asm/io.h>
+#include <io.h>
 #include <asm/mmu.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index d366d44..b1ad621 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -26,7 +26,7 @@
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
 #include <asm/cache-l2x0.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm/system.h>
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index d58831e..fc34709 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -27,7 +27,7 @@
 #include <environment.h>
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/gpio.h>
 #include <partition.h>
 #include <fs.h>
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index da4260f..e93f07a 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -24,7 +24,7 @@
 #include <environment.h>
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
-#include <asm/io.h>
+#include <io.h>
 #include <fec.h>
 #include <mach/gpio.h>
 #include <partition.h>
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 22bc27a..1eece1d 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -28,7 +28,7 @@
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
 #include <mach/gpio.h>
-#include <asm/io.h>
+#include <io.h>
 #include <partition.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 868ba08..09c0339 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -24,7 +24,7 @@
 #include <init.h>
 #include <mach/imx-regs.h>
 #include <mach/esdctl.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm/system.h>
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 8427dc2..645aa7b 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -21,7 +21,7 @@
 #include <fec.h>
 #include <sizes.h>
 #include <reloc.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/sections.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index def388a..a62cb82 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -18,7 +18,7 @@
 #include <environment.h>
 #include <errno.h>
 #include <asm/armlinux.h>
-#include <asm/io.h>
+#include <io.h>
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index fd1f2f2..4351023 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -36,7 +36,7 @@
 #include <mci.h>
 #include <fb.h>
 #include <asm/armlinux.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/gpio.h>
 #include <mach/s3c24x0-iomap.h>
 #include <mach/s3c24x0-nand.h>
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 36bc193..51dbf24 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -28,7 +28,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index dcf7166..42d981c 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -26,7 +26,7 @@
 #include <nand.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <asm/io.h>
+#include <io.h>
 
 #include <mach/hardware.h>
 #include <mach/board.h>
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 49af40c..e63d7b7 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -57,7 +57,7 @@
 #include <init.h>
 #include <driver.h>
 #include <sizes.h>
-#include <asm/io.h>
+#include <io.h>
 #include <ns16550.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index a2532d5..bbf0d81 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -48,7 +48,7 @@
 #include <console.h>
 #include <init.h>
 #include <driver.h>
-#include <asm/io.h>
+#include <io.h>
 #include <ns16550.h>
 #include <asm/armlinux.h>
 #include <mach/silicon.h>
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 82fc16d..5a8ef16 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -51,7 +51,7 @@
 #include <console.h>
 #include <init.h>
 #include <driver.h>
-#include <asm/io.h>
+#include <io.h>
 #include <ns16550.h>
 #include <asm/armlinux.h>
 #include <mach/silicon.h>
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 1303c47..dfe774f 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -3,7 +3,7 @@
 #include <init.h>
 #include <fs.h>
 #include <driver.h>
-#include <asm/io.h>
+#include <io.h>
 #include <ns16550.h>
 #include <asm/armlinux.h>
 #include <linux/stat.h>
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index cc0c374..45ea221 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -21,7 +21,7 @@
  * MA 02111-1307 USA
  */
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-clock.h>
diff --git a/arch/arm/boards/panda/mux.c b/arch/arm/boards/panda/mux.c
index a031040..7586e86 100644
--- a/arch/arm/boards/panda/mux.c
+++ b/arch/arm/boards/panda/mux.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-mux.h>
 
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 85f004f..42a543d 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -32,7 +32,7 @@
 #include <mach/iomux-mx31.h>
 #include <asm/armlinux.h>
 #include <mach/gpio.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/mmu.h>
 #include <partition.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index b50e1c8..3239263 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -25,7 +25,7 @@
 #include <mach/imx-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm/system.h>
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 6fee5c2..0b07a63 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -35,7 +35,7 @@
 #include <nand.h>
 #include <command.h>
 #include <spi/spi.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-nand.h>
 #include <mach/imx-pll.h>
 #include <mach/imxfb.h>
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index eff96f9..54cc66b 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -26,7 +26,7 @@
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
 #include <asm/cache-l2x0.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm-generic/memory_layout.h>
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index fbe8cea..23580c9 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -32,7 +32,7 @@
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
 #include <mach/gpio.h>
-#include <asm/io.h>
+#include <io.h>
 #include <partition.h>
 #include <nand.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 502e121..58f09f6 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -22,7 +22,7 @@
 #include <console.h>
 #include <init.h>
 #include <driver.h>
-#include <asm/io.h>
+#include <io.h>
 #include <ns16550.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index e036ba7..bea895e 100644
--- a/arch/arm/boards/pcm049/lowlevel.c
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -21,7 +21,7 @@
  * MA 02111-1307 USA
  */
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-clock.h>
diff --git a/arch/arm/boards/pcm049/mux.c b/arch/arm/boards/pcm049/mux.c
index d93d458..9911b62 100644
--- a/arch/arm/boards/pcm049/mux.c
+++ b/arch/arm/boards/pcm049/mux.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-mux.h>
 
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index f285466..4156767 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -32,7 +32,7 @@
 #include <fcntl.h>
 #include <nand.h>
 #include <spi/spi.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-nand.h>
 #include <mach/imx-pll.h>
 #include <gpio.h>
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index efc5dcc..2766f47 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -27,7 +27,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 8f451e8..92d7e9f 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -28,7 +28,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 35c9ce9..480c751 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -29,7 +29,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index e90417f..906a17e 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -26,7 +26,7 @@
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
 #include <mach/gpio.h>
-#include <asm/io.h>
+#include <io.h>
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 07d85c1..5354582 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -27,7 +27,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/hardware.h>
 #include <nand.h>
 #include <sizes.h>
diff --git a/arch/arm/cpu/cache-l2x0.c b/arch/arm/cpu/cache-l2x0.c
index 1ea7bab..b300e6f 100644
--- a/arch/arm/cpu/cache-l2x0.c
+++ b/arch/arm/cpu/cache-l2x0.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/mmu.h>
 
 #define CACHE_LINE_SIZE		32
diff --git a/arch/arm/mach-at91/at91rm9200_time.c b/arch/arm/mach-at91/at91rm9200_time.c
index 92b9e66..b6e7f55 100644
--- a/arch/arm/mach-at91/at91rm9200_time.c
+++ b/arch/arm/mach-at91/at91rm9200_time.c
@@ -37,7 +37,7 @@
 #include <mach/at91_st.h>
 #include <mach/at91_pmc.h>
 #include <mach/io.h>
-#include <asm/io.h>
+#include <io.h>
 
 /*
  * The ST_CRTR is updated asynchronously to the master clock ... but
diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
index 7a1d6dd..7ca2ef4 100644
--- a/arch/arm/mach-at91/at91sam926x_time.c
+++ b/arch/arm/mach-at91/at91sam926x_time.c
@@ -37,7 +37,7 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 #include <mach/io.h>
-#include <asm/io.h>
+#include <io.h>
 
 uint64_t at91sam9_clocksource_read(void)
 {
diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index b257128..c34df05 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -24,7 +24,7 @@
 #include <common.h>
 #include <linux/clk.h>
 #include <errno.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/gpio.h>
 #include <gpio.h>
 
diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index 7e1a9a8..f3239f5 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -13,7 +13,7 @@
 #ifndef __ASM_ARCH_AT91_GPIO_H
 #define __ASM_ARCH_AT91_GPIO_H
 
-#include <asm/io.h>
+#include <io.h>
 #include <asm-generic/errno.h>
 #include <mach/at91_pio.h>
 #include <mach/hardware.h>
diff --git a/arch/arm/mach-at91/include/mach/io.h b/arch/arm/mach-at91/include/mach/io.h
index f09b2df..7b0cd9d 100644
--- a/arch/arm/mach-at91/include/mach/io.h
+++ b/arch/arm/mach-at91/include/mach/io.h
@@ -21,7 +21,7 @@
 #ifndef __ASM_ARCH_IO_H
 #define __ASM_ARCH_IO_H
 
-#include <asm/io.h>
+#include <io.h>
 
 static inline unsigned int at91_sys_read(unsigned int reg_offset)
 {
diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index 3e7de2f..c397fe4 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -9,7 +9,7 @@
  */
 
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/hardware.h>
 #include <mach/io.h>
 
diff --git a/arch/arm/mach-ep93xx/clocksource.c b/arch/arm/mach-ep93xx/clocksource.c
index b500948..ce8a29f 100644
--- a/arch/arm/mach-ep93xx/clocksource.c
+++ b/arch/arm/mach-ep93xx/clocksource.c
@@ -23,7 +23,7 @@
 #include <common.h>
 #include <init.h>
 #include <clock.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/ep93xx-regs.h>
 
 #define TIMER_CLKSEL		(1 << 3)
diff --git a/arch/arm/mach-ep93xx/gpio.c b/arch/arm/mach-ep93xx/gpio.c
index 5d57434..f4def28 100644
--- a/arch/arm/mach-ep93xx/gpio.c
+++ b/arch/arm/mach-ep93xx/gpio.c
@@ -20,7 +20,7 @@
 #include <common.h>
 #include <errno.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/ep93xx-regs.h>
 
 #define EP93XX_GPIO_NUM_PORTS	8
diff --git a/arch/arm/mach-ep93xx/led.c b/arch/arm/mach-ep93xx/led.c
index 6d6b902..91f33d1 100644
--- a/arch/arm/mach-ep93xx/led.c
+++ b/arch/arm/mach-ep93xx/led.c
@@ -21,7 +21,7 @@
  */
 
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/ep93xx-regs.h>
 
 #define GREEN_LED_POS		0x01
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 8482b60..f13d956 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -19,7 +19,7 @@
 #include <environment.h>
 #include <init.h>
 
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-regs.h>
 
 #if defined(CONFIG_ARCH_IMX25) || defined(CONFIG_ARCH_IMX35)
diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 5397da0..4f5895c 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -35,7 +35,7 @@
 #include <notifier.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
-#include <asm/io.h>
+#include <io.h>
 
 #define GPT(x) __REG(IMX_TIM1_BASE + (x))
 #define timer_base (IMX_TIM1_BASE)
diff --git a/arch/arm/mach-imx/gpio.c b/arch/arm/mach-imx/gpio.c
index 0a3e046..fdee20b 100644
--- a/arch/arm/mach-imx/gpio.c
+++ b/arch/arm/mach-imx/gpio.c
@@ -25,7 +25,7 @@
 
 #include <common.h>
 #include <errno.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-regs.h>
 #include <mach/gpio.h>
 
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index ca89710..7494e3a 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -25,7 +25,7 @@
 #include <fcntl.h>
 #include <malloc.h>
 
-#include <asm/io.h>
+#include <io.h>
 
 #include <mach/iim.h>
 
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 75ec8c7..19a2909 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -19,7 +19,7 @@
 #include <init.h>
 #include <mach/imx-regs.h>
 #include <mach/iim.h>
-#include <asm/io.h>
+#include <io.h>
 #include <sizes.h>
 
 #include "gpio.h"
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index c846260..381a564 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -18,7 +18,7 @@
 #include <common.h>
 #include <sizes.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-regs.h>
 #include <mach/iim.h>
 #include <mach/generic.h>
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index f2c886e..0600a9d 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -19,7 +19,7 @@
 #include <common.h>
 #include <sizes.h>
 #include <environment.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx51-regs.h>
 
 #include "gpio.h"
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 7a822c2..8fb64bb 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -17,7 +17,7 @@
 
 #include <init.h>
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <sizes.h>
 #include <mach/imx53-regs.h>
 
diff --git a/arch/arm/mach-imx/internal-nand-boot.c b/arch/arm/mach-imx/internal-nand-boot.c
index 0d71b99..c55a0e7 100644
--- a/arch/arm/mach-imx/internal-nand-boot.c
+++ b/arch/arm/mach-imx/internal-nand-boot.c
@@ -17,7 +17,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <linux/mtd/nand.h>
 #include <mach/imx-nand.h>
 #include <mach/generic.h>
diff --git a/arch/arm/mach-imx/iomux-v2.c b/arch/arm/mach-imx/iomux-v2.c
index abb2ebe..1b49ccb 100644
--- a/arch/arm/mach-imx/iomux-v2.c
+++ b/arch/arm/mach-imx/iomux-v2.c
@@ -18,7 +18,7 @@
  */
 
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-regs.h>
 #include <mach/iomux-mx31.h>
 
diff --git a/arch/arm/mach-imx/iomux-v3.c b/arch/arm/mach-imx/iomux-v3.c
index a74f942..bb2307a 100644
--- a/arch/arm/mach-imx/iomux-v3.c
+++ b/arch/arm/mach-imx/iomux-v3.c
@@ -19,7 +19,7 @@
  * MA 02110-1301, USA.
  */
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/iomux-v3.h>
 #include <mach/imx-regs.h>
 
diff --git a/arch/arm/mach-imx/nand.c b/arch/arm/mach-imx/nand.c
index c52b8b0..fcbb85e 100644
--- a/arch/arm/mach-imx/nand.c
+++ b/arch/arm/mach-imx/nand.c
@@ -17,7 +17,7 @@
 
 #include <common.h>
 #include <mach/imx-regs.h>
-#include <asm/io.h>
+#include <io.h>
 
 #if defined(CONFIG_ARCH_IMX35) || defined (CONFIG_ARCH_IMX25)
 
diff --git a/arch/arm/mach-imx/speed-imx25.c b/arch/arm/mach-imx/speed-imx25.c
index 150adb2..f6dcacb 100644
--- a/arch/arm/mach-imx/speed-imx25.c
+++ b/arch/arm/mach-imx/speed-imx25.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <mach/imx-regs.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/clock.h>
 #include <init.h>
 
diff --git a/arch/arm/mach-imx/speed-imx31.c b/arch/arm/mach-imx/speed-imx31.c
index 32a517d..d3f168c 100644
--- a/arch/arm/mach-imx/speed-imx31.c
+++ b/arch/arm/mach-imx/speed-imx31.c
@@ -16,7 +16,7 @@
  */
 
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
 #include <init.h>
diff --git a/arch/arm/mach-imx/speed-imx35.c b/arch/arm/mach-imx/speed-imx35.c
index b2a339c..1e1c39f 100644
--- a/arch/arm/mach-imx/speed-imx35.c
+++ b/arch/arm/mach-imx/speed-imx35.c
@@ -17,7 +17,7 @@
 
 #include <common.h>
 #include <mach/imx-regs.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/clock.h>
 #include <mach/generic.h>
 #include <init.h>
diff --git a/arch/arm/mach-imx/speed-imx51.c b/arch/arm/mach-imx/speed-imx51.c
index 47d3c91..643ad8f 100644
--- a/arch/arm/mach-imx/speed-imx51.c
+++ b/arch/arm/mach-imx/speed-imx51.c
@@ -1,5 +1,5 @@
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm-generic/div64.h>
 #include <mach/imx51-regs.h>
 #include <mach/clock-imx51_53.h>
diff --git a/arch/arm/mach-imx/speed-imx53.c b/arch/arm/mach-imx/speed-imx53.c
index 7b099f5..0d6ac24 100644
--- a/arch/arm/mach-imx/speed-imx53.c
+++ b/arch/arm/mach-imx/speed-imx53.c
@@ -1,5 +1,5 @@
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm-generic/div64.h>
 #include <mach/imx-regs.h>
 #include "mach/clock-imx51_53.h"
diff --git a/arch/arm/mach-mxs/clocksource-imx23.c b/arch/arm/mach-mxs/clocksource-imx23.c
index f7c94c1..66e534b 100644
--- a/arch/arm/mach-mxs/clocksource-imx23.c
+++ b/arch/arm/mach-mxs/clocksource-imx23.c
@@ -23,7 +23,7 @@
 #include <notifier.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
-#include <asm/io.h>
+#include <io.h>
 
 #define TIMROTCTRL 0x00
 #define TIMCTRL1 0x40
diff --git a/arch/arm/mach-mxs/clocksource-imx28.c b/arch/arm/mach-mxs/clocksource-imx28.c
index 15ae951..328ca5d 100644
--- a/arch/arm/mach-mxs/clocksource-imx28.c
+++ b/arch/arm/mach-mxs/clocksource-imx28.c
@@ -18,7 +18,7 @@
 #include <notifier.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
-#include <asm/io.h>
+#include <io.h>
 
 #define TIMROTCTRL 0x00
 # define TIMROTCTRL_SFTRST
diff --git a/arch/arm/mach-mxs/imx_lcd_clk.c b/arch/arm/mach-mxs/imx_lcd_clk.c
index 65bfc6e..455dfcb 100644
--- a/arch/arm/mach-mxs/imx_lcd_clk.c
+++ b/arch/arm/mach-mxs/imx_lcd_clk.c
@@ -16,7 +16,7 @@
 #include <init.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
-#include <asm/io.h>
+#include <io.h>
 
 #ifdef CONFIG_ARCH_IMX23
 
diff --git a/arch/arm/mach-mxs/iomux-imx.c b/arch/arm/mach-mxs/iomux-imx.c
index bf6165f..3161a5d 100644
--- a/arch/arm/mach-mxs/iomux-imx.c
+++ b/arch/arm/mach-mxs/iomux-imx.c
@@ -21,7 +21,7 @@
 #include <init.h>
 #include <gpio.h>
 #include <errno.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-regs.h>
 
 #define HW_PINCTRL_CTRL 0x000
diff --git a/arch/arm/mach-mxs/reset-imx.c b/arch/arm/mach-mxs/reset-imx.c
index b35f796..cfb3548 100644
--- a/arch/arm/mach-mxs/reset-imx.c
+++ b/arch/arm/mach-mxs/reset-imx.c
@@ -21,7 +21,7 @@
 #include <init.h>
 #include <notifier.h>
 #include <mach/imx-regs.h>
-#include <asm/io.h>
+#include <io.h>
 
 #define HW_RTC_CTRL     0x000
 # define BM_RTC_CTRL_WATCHDOGEN (1 << 4)
diff --git a/arch/arm/mach-mxs/speed-imx23.c b/arch/arm/mach-mxs/speed-imx23.c
index a31139d..b10c786 100644
--- a/arch/arm/mach-mxs/speed-imx23.c
+++ b/arch/arm/mach-mxs/speed-imx23.c
@@ -24,7 +24,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-regs.h>
 #include <mach/generic.h>
 #include <mach/clock.h>
diff --git a/arch/arm/mach-mxs/speed-imx28.c b/arch/arm/mach-mxs/speed-imx28.c
index 63c6b07..67cdbdf 100644
--- a/arch/arm/mach-mxs/speed-imx28.c
+++ b/arch/arm/mach-mxs/speed-imx28.c
@@ -18,7 +18,7 @@
  */
 #include <common.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-regs.h>
 #include <mach/generic.h>
 #include <mach/clock.h>
diff --git a/arch/arm/mach-mxs/usb.c b/arch/arm/mach-mxs/usb.c
index d232bb6..b7a9376 100644
--- a/arch/arm/mach-mxs/usb.c
+++ b/arch/arm/mach-mxs/usb.c
@@ -18,7 +18,7 @@
  * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  */
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-regs.h>
 
 #define POWER_CTRL			(IMX_POWER_BASE + 0x0)
diff --git a/arch/arm/mach-nomadik/reset.c b/arch/arm/mach-nomadik/reset.c
index d55f278..6ea74dd 100644
--- a/arch/arm/mach-nomadik/reset.c
+++ b/arch/arm/mach-nomadik/reset.c
@@ -18,7 +18,7 @@
  */
 
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/hardware.h>
 
 void __noreturn reset_cpu(unsigned long addr)
diff --git a/arch/arm/mach-nomadik/timer.c b/arch/arm/mach-nomadik/timer.c
index 7de1f39..becd363 100644
--- a/arch/arm/mach-nomadik/timer.c
+++ b/arch/arm/mach-nomadik/timer.c
@@ -11,7 +11,7 @@
 #include <common.h>
 #include <init.h>
 #include <clock.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/hardware.h>
 #include <mach/mtu.h>
 #include <mach/timex.h>
diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/devices-gpmc-nand.c
index 76ceb20..197d4be 100644
--- a/arch/arm/mach-omap/devices-gpmc-nand.c
+++ b/arch/arm/mach-omap/devices-gpmc-nand.c
@@ -31,7 +31,7 @@
 #include <init.h>
 #include <driver.h>
 #include <clock.h>
-#include <asm/io.h>
+#include <io.h>
 
 #include <mach/silicon.h>
 #include <mach/gpmc.h>
diff --git a/arch/arm/mach-omap/gpio.c b/arch/arm/mach-omap/gpio.c
index b0bd805..142cf52 100644
--- a/arch/arm/mach-omap/gpio.c
+++ b/arch/arm/mach-omap/gpio.c
@@ -37,7 +37,7 @@
  */
 #include <common.h>
 #include <mach/gpio.h>
-#include <asm/io.h>
+#include <io.h>
 #include <errno.h>
 
 #ifdef CONFIG_ARCH_OMAP3
diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
index 2b99649..e8946d7 100644
--- a/arch/arm/mach-omap/gpmc.c
+++ b/arch/arm/mach-omap/gpmc.c
@@ -29,7 +29,7 @@
  */
 #include <common.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/silicon.h>
 #include <mach/gpmc.h>
 #include <mach/sys_info.h>
diff --git a/arch/arm/mach-omap/include/mach/syslib.h b/arch/arm/mach-omap/include/mach/syslib.h
index 65aca02..1909f17 100644
--- a/arch/arm/mach-omap/include/mach/syslib.h
+++ b/arch/arm/mach-omap/include/mach/syslib.h
@@ -30,7 +30,7 @@
  */
 #ifndef __ASM_ARCH_OMAP_SYSLIB_H_
 #define __ASM_ARCH_OMAP_SYSLIB_H_
-#include <asm/io.h>
+#include <io.h>
 
 /** System Independent functions */
 
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 3a0ab24..412d7b7 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -39,7 +39,7 @@
  */
 
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/silicon.h>
 #include <mach/clocks.h>
 #include <mach/timers.h>
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 7468441..fc83d23 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -36,7 +36,7 @@
  */
 #include <common.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/silicon.h>
 #include <mach/gpmc.h>
 #include <mach/sdrc.h>
diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
index 23a77d0..f8bab5f 100644
--- a/arch/arm/mach-omap/omap4_clock.c
+++ b/arch/arm/mach-omap/omap4_clock.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <mach/syslib.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/omap4-clock.h>
 
 #define LDELAY	12000000
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 313e5e9..5223c7e 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -1,7 +1,7 @@
 #include <common.h>
 #include <init.h>
 #include <mach/silicon.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-clock.h>
 #include <mach/syslib.h>
diff --git a/arch/arm/mach-omap/s32k_clksource.c b/arch/arm/mach-omap/s32k_clksource.c
index 094b76d..3ed9448 100644
--- a/arch/arm/mach-omap/s32k_clksource.c
+++ b/arch/arm/mach-omap/s32k_clksource.c
@@ -33,7 +33,7 @@
 #include <common.h>
 #include <clock.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/silicon.h>
 #include <mach/clocks.h>
 #include <mach/timers.h>
diff --git a/arch/arm/mach-omap/syslib.c b/arch/arm/mach-omap/syslib.c
index 677de6a..765a816 100644
--- a/arch/arm/mach-omap/syslib.c
+++ b/arch/arm/mach-omap/syslib.c
@@ -32,7 +32,7 @@
 
 #include <config.h>
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/syslib.h>
 
 /**
diff --git a/arch/arm/mach-s3c24xx/generic.c b/arch/arm/mach-s3c24xx/generic.c
index 4c7e799..d2f2ac7 100644
--- a/arch/arm/mach-s3c24xx/generic.c
+++ b/arch/arm/mach-s3c24xx/generic.c
@@ -26,7 +26,7 @@
 #include <common.h>
 #include <init.h>
 #include <clock.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/s3c24x0-iomap.h>
 
 /**
diff --git a/arch/arm/mach-s3c24xx/gpio-s3c24x0.c b/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
index 3d5e5e5..946ec33 100644
--- a/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
+++ b/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
@@ -17,7 +17,7 @@
 
 #include <common.h>
 #include <errno.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/s3c24x0-iomap.h>
 #include <mach/gpio.h>
 
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 1231a7d..bdf48f9 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -35,7 +35,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
-#include <asm/io.h>
+#include <io.h>
 #include <asm/hardware/arm_timer.h>
 #include <asm/armlinux.h>
 
diff --git a/arch/arm/mach-versatile/include/mach/debug_ll.h b/arch/arm/mach-versatile/include/mach/debug_ll.h
index 1f6162b..30762c9 100644
--- a/arch/arm/mach-versatile/include/mach/debug_ll.h
+++ b/arch/arm/mach-versatile/include/mach/debug_ll.h
@@ -20,7 +20,7 @@
 #define   __MACH_DEBUG_LL_H__
 
 #include <linux/amba/serial.h>
-#include <asm/io.h>
+#include <io.h>
 
 static inline void putc(char c)
 {
diff --git a/arch/mips/boards/dlink-dir-320/serial.c b/arch/mips/boards/dlink-dir-320/serial.c
index ebe8c06..3eaab2a 100644
--- a/arch/mips/boards/dlink-dir-320/serial.c
+++ b/arch/mips/boards/dlink-dir-320/serial.c
@@ -24,7 +24,7 @@
 #include <init.h>
 #include <ns16550.h>
 #include <mach/hardware.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/common.h>
 
 static struct NS16550_plat serial_plat = {
diff --git a/arch/mips/boards/qemu-malta/serial.c b/arch/mips/boards/qemu-malta/serial.c
index ef6be17..502b346 100644
--- a/arch/mips/boards/qemu-malta/serial.c
+++ b/arch/mips/boards/qemu-malta/serial.c
@@ -24,7 +24,7 @@
 #include <init.h>
 #include <ns16550.h>
 #include <mach/hardware.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/common.h>
 
 static struct NS16550_plat serial_plat = {
diff --git a/arch/mips/lib/csrc-r4k.c b/arch/mips/lib/csrc-r4k.c
index 8e93e6f..1dd0928 100644
--- a/arch/mips/lib/csrc-r4k.c
+++ b/arch/mips/lib/csrc-r4k.c
@@ -25,7 +25,7 @@
 
 #include <init.h>
 #include <clock.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/mipsregs.h>
 
 static uint64_t c0_hpt_read(void)
diff --git a/arch/mips/mach-bcm47xx/include/mach/debug_ll.h b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
index 32d13c1..ccc9d9b 100644
--- a/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
+++ b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
@@ -24,7 +24,7 @@
 #ifndef __INCLUDE_ARCH_DEBUG_LL_H__
 #define   __INCLUDE_ARCH_DEBUG_LL_H__
 
-#include <asm/io.h>
+#include <io.h>
 #include <mach/hardware.h>
 
 #define rbr		0
diff --git a/arch/mips/mach-bcm47xx/reset.c b/arch/mips/mach-bcm47xx/reset.c
index 2818e7c..d6fcd8d 100644
--- a/arch/mips/mach-bcm47xx/reset.c
+++ b/arch/mips/mach-bcm47xx/reset.c
@@ -24,7 +24,7 @@
  */
 
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/hardware.h>
 
 void __noreturn reset_cpu(ulong addr)
diff --git a/arch/mips/mach-malta/include/mach/debug_ll.h b/arch/mips/mach-malta/include/mach/debug_ll.h
index 32d13c1..ccc9d9b 100644
--- a/arch/mips/mach-malta/include/mach/debug_ll.h
+++ b/arch/mips/mach-malta/include/mach/debug_ll.h
@@ -24,7 +24,7 @@
 #ifndef __INCLUDE_ARCH_DEBUG_LL_H__
 #define   __INCLUDE_ARCH_DEBUG_LL_H__
 
-#include <asm/io.h>
+#include <io.h>
 #include <mach/hardware.h>
 
 #define rbr		0
diff --git a/arch/mips/mach-malta/reset.c b/arch/mips/mach-malta/reset.c
index 2818e7c..d6fcd8d 100644
--- a/arch/mips/mach-malta/reset.c
+++ b/arch/mips/mach-malta/reset.c
@@ -24,7 +24,7 @@
  */
 
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/hardware.h>
 
 void __noreturn reset_cpu(ulong addr)
diff --git a/arch/nios2/cpu/interrupts.c b/arch/nios2/cpu/interrupts.c
index 5efbd5e..f443bfd 100644
--- a/arch/nios2/cpu/interrupts.c
+++ b/arch/nios2/cpu/interrupts.c
@@ -27,7 +27,7 @@
 #include <nios2.h>
 #include <asm/nios2-io.h>
 #include <asm/types.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/ptrace.h>
 #include <common.h>
 #include <command.h>
diff --git a/arch/nios2/lib/clock.c b/arch/nios2/lib/clock.c
index 05008be..52f52fd 100644
--- a/arch/nios2/lib/clock.c
+++ b/arch/nios2/lib/clock.c
@@ -24,7 +24,7 @@
 #include <clock.h>
 #include <init.h>
 #include <asm/nios2-io.h>
-#include <asm/io.h>
+#include <io.h>
 
 static struct nios_timer *timer = (struct nios_timer *)NIOS_SOPC_TIMER_BASE;
 
diff --git a/arch/nios2/lib/early_printf.c b/arch/nios2/lib/early_printf.c
index 637bb73..50b071b 100644
--- a/arch/nios2/lib/early_printf.c
+++ b/arch/nios2/lib/early_printf.c
@@ -23,7 +23,7 @@
 #include <stdio.h>
 #include <common.h>
 #include <asm/nios2-io.h>
-#include <asm/io.h>
+#include <io.h>
 
 void early_putc(char ch)
 {
diff --git a/arch/ppc/include/asm/mc146818rtc.h b/arch/ppc/include/asm/mc146818rtc.h
index 5f806c4..adc4e24 100644
--- a/arch/ppc/include/asm/mc146818rtc.h
+++ b/arch/ppc/include/asm/mc146818rtc.h
@@ -4,7 +4,7 @@
 #ifndef __ASM_PPC_MC146818RTC_H
 #define __ASM_PPC_MC146818RTC_H
 
-#include <asm/io.h>
+#include <io.h>
 
 #ifndef RTC_PORT
 #define RTC_PORT(x) (0x70 + (x))
diff --git a/arch/ppc/mach-mpc5xxx/interrupts.c b/arch/ppc/mach-mpc5xxx/interrupts.c
index e484b6e..4838bc5 100644
--- a/arch/ppc/mach-mpc5xxx/interrupts.c
+++ b/arch/ppc/mach-mpc5xxx/interrupts.c
@@ -39,7 +39,7 @@
 
 #include <common.h>
 #include <asm/processor.h>
-#include <asm/io.h>
+#include <io.h>
 #include <command.h>
 #include <mach/sdma.h>
 #include <asm/bitops.h>
diff --git a/arch/ppc/mach-mpc5xxx/pci_mpc5200.c b/arch/ppc/mach-mpc5xxx/pci_mpc5200.c
index a7de4a2..d8f3b00 100644
--- a/arch/ppc/mach-mpc5xxx/pci_mpc5200.c
+++ b/arch/ppc/mach-mpc5xxx/pci_mpc5200.c
@@ -26,7 +26,7 @@
 #if defined(CONFIG_PCI) && defined(CONFIG_MPC5200)
 
 #include <asm/processor.h>
-#include <asm/io.h>
+#include <io.h>
 #include <pci.h>
 #include <mpc5xxx.h>
 
diff --git a/arch/x86/boot/a20.c b/arch/x86/boot/a20.c
index 4b61d91..ddb40ee 100644
--- a/arch/x86/boot/a20.c
+++ b/arch/x86/boot/a20.c
@@ -14,7 +14,7 @@
  */
 
 #include <asm/segment.h>
-#include <asm/io.h>
+#include <io.h>
 #include "boot.h"
 
 #define MAX_8042_LOOPS	100000
diff --git a/arch/x86/boot/prepare_uboot.c b/arch/x86/boot/prepare_uboot.c
index a68aced..79e6fb0 100644
--- a/arch/x86/boot/prepare_uboot.c
+++ b/arch/x86/boot/prepare_uboot.c
@@ -13,7 +13,7 @@
  */
 #include <asm/segment.h>
 #include <asm/modes.h>
-#include <asm/io.h>
+#include <io.h>
 #include "boot.h"
 
 /* be aware of: */
diff --git a/arch/x86/mach-i386/generic.c b/arch/x86/mach-i386/generic.c
index edeacc4..376de58 100644
--- a/arch/x86/mach-i386/generic.c
+++ b/arch/x86/mach-i386/generic.c
@@ -23,7 +23,7 @@
  * @brief x86 Architecture Initialization routines
  */
 
-#include <asm/io.h>
+#include <io.h>
 
 /** to work with the 8250 UART driver implementation we need this function */
 unsigned int x86_uart_read(unsigned long base, unsigned char reg_idx)
diff --git a/arch/x86/mach-i386/pit_timer.c b/arch/x86/mach-i386/pit_timer.c
index ec97cee..36019b0 100644
--- a/arch/x86/mach-i386/pit_timer.c
+++ b/arch/x86/mach-i386/pit_timer.c
@@ -32,7 +32,7 @@
 
 #include <init.h>
 #include <clock.h>
-#include <asm/io.h>
+#include <io.h>
 
 /** base address of the PIT in a standard PC */
 #define PIT 0x40
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 2d075f7..c1e9caf 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -44,7 +44,7 @@
 
 #include <linux/err.h>
 
-#include <asm/io.h>
+#include <io.h>
 #include <i2c/i2c.h>
 #include <mach/generic.h>
 #include <mach/clock.h>
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 95c4fdf..2a1ae7a 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -43,7 +43,7 @@
 
 #include <linux/err.h>
 
-#include <asm/io.h>
+#include <io.h>
 #include <i2c/i2c.h>
 #include <mach/generic.h>
 #include <mach/omap3-clock.h>
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 7af153a..4a29cad 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -20,7 +20,7 @@
 #include <errno.h>
 #include <clock.h>
 #include <gpio.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/board.h>
 #include <linux/clk.h>
 #include <linux/err.h>
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 358f0dc..a0e61f0 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -32,7 +32,7 @@
 #include <malloc.h>
 #include <mci.h>
 #include <clock.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/mmu.h>
 #include <mach/clock.h>
 #include <mach/generic.h>
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 905c251..50c98e1 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -26,7 +26,7 @@
 #include <init.h>
 #include <driver.h>
 #include <mach/clock.h>
-#include <asm/io.h>
+#include <io.h>
 
 #define DRIVER_NAME "imx-mmc"
 
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 70b8be9..d747ad1 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -39,7 +39,7 @@
 #include <mci.h>
 #include <errno.h>
 #include <clock.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/bitops.h>
 #include <mach/imx-regs.h>
 #include <mach/mci.h>
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index bf8d4a9..3f70e22 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -29,7 +29,7 @@
 #include <mci.h>
 #include <clock.h>
 #include <errno.h>
-#include <asm/io.h>
+#include <io.h>
 
 #include <mach/omap_hsmmc.h>
 
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index c621445..f97e13a 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -39,7 +39,7 @@
 #include <mci.h>
 #include <errno.h>
 #include <clock.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/mci.h>
 #include <mach/s3c24xx-generic.h>
 #include <mach/s3c24x0-iomap.h>
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 0710407..8cc1b51 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -31,7 +31,7 @@
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
 
-#include <asm/io.h>
+#include <io.h>
 #include <mach/board.h>
 
 #include <errno.h>
diff --git a/drivers/mtd/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
index e762524..2433945 100644
--- a/drivers/mtd/nand/diskonchip.c
+++ b/drivers/mtd/nand/diskonchip.c
@@ -29,7 +29,7 @@
 #include <linux/delay.h>
 #include <linux/rslib.h>
 #include <linux/moduleparam.h>
-#include <asm/io.h>
+#include <io.h>
 
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 5e122a1..2710f6a 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -39,7 +39,7 @@
 #include <linux/err.h>
 #include <linux/mtd/nand_ecc.h>
 #include <asm/byteorder.h>
-#include <asm/io.h>
+#include <io.h>
 #include <malloc.h>
 #include <module.h>
 
diff --git a/drivers/mtd/nand/nand_hwecc.c b/drivers/mtd/nand/nand_hwecc.c
index 95b08d3..5ead49c 100644
--- a/drivers/mtd/nand/nand_hwecc.c
+++ b/drivers/mtd/nand/nand_hwecc.c
@@ -6,7 +6,7 @@
 #include <linux/err.h>
 #include <linux/mtd/nand_ecc.h>
 #include <asm/byteorder.h>
-#include <asm/io.h>
+#include <io.h>
 #include <malloc.h>
 
 #include "nand.h"
diff --git a/drivers/mtd/nand/nand_hwecc_syndrome.c b/drivers/mtd/nand/nand_hwecc_syndrome.c
index 9a66180..dd067c9 100644
--- a/drivers/mtd/nand/nand_hwecc_syndrome.c
+++ b/drivers/mtd/nand/nand_hwecc_syndrome.c
@@ -6,7 +6,7 @@
 #include <linux/err.h>
 #include <linux/mtd/nand_ecc.h>
 #include <asm/byteorder.h>
-#include <asm/io.h>
+#include <io.h>
 #include <malloc.h>
 #include <module.h>
 
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index f270326..581136a 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -27,7 +27,7 @@
 #include <mach/generic.h>
 #include <mach/imx-nand.h>
 #include <mach/imx-regs.h>
-#include <asm/io.h>
+#include <io.h>
 #include <errno.h>
 
 #define NFC_V3_FLASH_CMD		(host->regs_axi + 0x00)
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 083aa57..a012c03 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -71,7 +71,7 @@
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/nand_ecc.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/silicon.h>
 #include <mach/gpmc.h>
 #include <mach/gpmc_nand.h>
diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index 0ce20d4..c5f5d97 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -33,7 +33,7 @@
 #include <mach/s3c24xx-generic.h>
 #include <mach/s3c24x0-iomap.h>
 #include <mach/s3c24x0-nand.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm-generic/errno.h>
 
 #ifdef CONFIG_S3C24XX_NAND_BOOT
diff --git a/drivers/mtd/nand/nand_swecc.c b/drivers/mtd/nand/nand_swecc.c
index 93511cb..a5edffa 100644
--- a/drivers/mtd/nand/nand_swecc.c
+++ b/drivers/mtd/nand/nand_swecc.c
@@ -6,7 +6,7 @@
 #include <linux/err.h>
 #include <linux/mtd/nand_ecc.h>
 #include <asm/byteorder.h>
-#include <asm/io.h>
+#include <io.h>
 #include <malloc.h>
 
 #include "nand.h"
diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index 3ede8d0..13b6c89 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -6,7 +6,7 @@
 #include <linux/err.h>
 #include <linux/mtd/nand_ecc.h>
 #include <asm/byteorder.h>
-#include <asm/io.h>
+#include <io.h>
 #include <malloc.h>
 #include <module.h>
 
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 3073011..c1e93ad 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -30,7 +30,7 @@
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
 
-#include <asm/io.h>
+#include <io.h>
 #include <mach/nand.h>
 #include <mach/fsmc.h>
 
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index 7e456c7..5163488 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -31,7 +31,7 @@
 #include <clock.h>
 #include <linux/mii.h>
 
-#include <asm/io.h>
+#include <io.h>
 #include <asm/dma-mapping.h>
 
 #include "altera_tse.h"
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index 33afc5e..da23755 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -27,7 +27,7 @@
 #include <net.h>
 #include <malloc.h>
 #include <clock.h>
-#include <asm/io.h>
+#include <io.h>
 #include <errno.h>
 
 /* I/O ports for I/O Space operation */
diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
index e9ec61b..f327781 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -50,7 +50,7 @@
 #include <malloc.h>
 #include <net.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <xfuncs.h>
 #include <dm9000.h>
 #include <errno.h>
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index 954ec78..227e317 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -35,7 +35,7 @@
 #include <init.h>
 #include <malloc.h>
 #include <miidev.h>
-#include <asm/io.h>
+#include <io.h>
 #include <linux/types.h>
 #include <mach/ep93xx-regs.h>
 #include "ep93xx.h"
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 3b0f266..ae63fdc 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -28,7 +28,7 @@
 #include <fec.h>
 
 #include <asm/mmu.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/generic.h>
 #include <mach/imx-regs.h>
 #include <clock.h>
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index e3368c9..c1f7f68 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -46,7 +46,7 @@
 #include <init.h>
 #include <miidev.h>
 #include <errno.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/board.h>
 #include <linux/clk.h>
 #include <linux/err.h>
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index 5503bc9..81a7ff4 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -1,7 +1,7 @@
 #include <common.h>
 #include <command.h>
 #include <net.h>
-#include <asm/io.h>
+#include <io.h>
 #include <miidev.h>
 #include <mach/netx-xc.h>
 #include <mach/netx-eth.h>
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 2313aae..c51f8c7 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -73,7 +73,7 @@
 #include <xfuncs.h>
 #include <errno.h>
 #include <clock.h>
-#include <asm/io.h>
+#include <io.h>
 
 /*---------------------------------------------------------------
  .
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index fba61c4..e34c0df 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -36,7 +36,7 @@
 #include <xfuncs.h>
 #include <errno.h>
 #include <clock.h>
-#include <asm/io.h>
+#include <io.h>
 
 #define AS CONFIG_DRIVER_NET_SMC911X_ADDRESS_SHIFT
 
diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 7b25adb..f9b96c5 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -40,7 +40,7 @@
 #include <clock.h>
 #include <init.h>
 #include <malloc.h>
-#include <asm/io.h>
+#include <io.h>
 #include <errno.h>
 #include <progress.h>
 #include "cfi_flash.h"
diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index 32dcc8c..34a4cf8 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -26,7 +26,7 @@
 
 #include <driver.h>
 #include <asm/byteorder.h>
-#include <asm/io.h>
+#include <io.h>
 #include <linux/mtd/mtd.h>
 
 typedef unsigned long flash_sect_t;
diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 2b6d5d3..148bdbf 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -31,7 +31,7 @@
 #include <driver.h>
 #include <init.h>
 #include <malloc.h>
-#include <asm/io.h>
+#include <io.h>
 #include <linux/amba/serial.h>
 #include <linux/clk.h>
 #include <linux/err.h>
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 2d4b842..9ba4ca9 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -21,7 +21,7 @@
 #include <driver.h>
 #include <init.h>
 #include <malloc.h>
-#include <asm/io.h>
+#include <io.h>
 #include <linux/clk.h>
 
 /* USART3 register offsets */
diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
index 1148564..8fd5d8a 100644
--- a/drivers/serial/serial_altera.c
+++ b/drivers/serial/serial_altera.c
@@ -24,7 +24,7 @@
 #include <driver.h>
 #include <init.h>
 #include <malloc.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/nios2-io.h>
 
 struct altera_serial_priv {
diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
index 2e34c89..3e1b0cf 100644
--- a/drivers/serial/serial_altera_jtag.c
+++ b/drivers/serial/serial_altera_jtag.c
@@ -27,7 +27,7 @@
 #include <driver.h>
 #include <init.h>
 #include <malloc.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/nios2-io.h>
 
 struct altera_serial_jtag_priv {
diff --git a/drivers/serial/serial_at91rm9200.c b/drivers/serial/serial_at91rm9200.c
index f5546aa..9bdc626 100644
--- a/drivers/serial/serial_at91rm9200.c
+++ b/drivers/serial/serial_at91rm9200.c
@@ -30,7 +30,7 @@
  */
 
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/hardware.h>
 
 #if !defined(CONFIG_DBGU) && !defined(CONFIG_USART0) && !defined(CONFIG_USART1)
diff --git a/drivers/serial/serial_blackfin.c b/drivers/serial/serial_blackfin.c
index 59b2fbb..9ad5579 100644
--- a/drivers/serial/serial_blackfin.c
+++ b/drivers/serial/serial_blackfin.c
@@ -25,7 +25,7 @@
 #include <driver.h>
 #include <init.h>
 #include <malloc.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/blackfin.h>
 
 #define UART_IER_ERBFI		0x01
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index e3edac9..4923dcb 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -24,7 +24,7 @@
 #include <init.h>
 #include <malloc.h>
 #include <notifier.h>
-#include <asm/io.h>
+#include <io.h>
 
 #define URXD0	0x0	/* Receiver Register */
 #define URTX0	0x40	/* Transmitter Register */
diff --git a/drivers/serial/serial_netx.c b/drivers/serial/serial_netx.c
index fbbc4ef..a3273e9 100644
--- a/drivers/serial/serial_netx.c
+++ b/drivers/serial/serial_netx.c
@@ -26,7 +26,7 @@
 #include <driver.h>
 #include <init.h>
 #include <malloc.h>
-#include <asm/io.h>
+#include <io.h>
 
 enum uart_regs {
 	UART_DR              = 0x00,
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 36d39cd..1217a5f 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -41,7 +41,7 @@
 #include <init.h>
 #include <errno.h>
 #include <malloc.h>
-#include <asm/io.h>
+#include <io.h>
 
 #include "serial_ns16550.h"
 #include <ns16550.h>
diff --git a/drivers/serial/serial_pl010.c b/drivers/serial/serial_pl010.c
index 9f7b7d3..cb87541 100644
--- a/drivers/serial/serial_pl010.c
+++ b/drivers/serial/serial_pl010.c
@@ -32,7 +32,7 @@
 #include <common.h>
 #include <init.h>
 #include <malloc.h>
-#include <asm/io.h>
+#include <io.h>
 #include "serial_pl010.h"
 
 static int pl010_setbaudrate(struct console_device *cdev, int baudrate)
diff --git a/drivers/serial/serial_s3c24x0.c b/drivers/serial/serial_s3c24x0.c
index 21bca12..3a703b6 100644
--- a/drivers/serial/serial_s3c24x0.c
+++ b/drivers/serial/serial_s3c24x0.c
@@ -24,7 +24,7 @@
 #include <driver.h>
 #include <init.h>
 #include <malloc.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/s3c24xx-generic.h>
 #include <mach/s3c24x0-iomap.h>
 
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 4264345..1563d2a 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -30,7 +30,7 @@
 #include <init.h>
 #include <notifier.h>
 #include <gpio.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
 
diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
index 2c02d7a..4fd82fb 100644
--- a/drivers/spi/altera_spi.c
+++ b/drivers/spi/altera_spi.c
@@ -22,7 +22,7 @@
 #include <init.h>
 #include <driver.h>
 #include <spi/spi.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/spi.h>
 #include <asm/nios2-io.h>
 
diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 5f5ccb6..faa03b1 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -33,7 +33,7 @@
 #include <clock.h>
 #include <xfuncs.h>
 #include <gpio.h>
-#include <asm/io.h>
+#include <io.h>
 #include <spi/spi.h>
 #include <mach/io.h>
 #include <mach/board.h>
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index bc84e19..3b33b66 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -23,7 +23,7 @@
 #include <driver.h>
 #include <spi/spi.h>
 #include <xfuncs.h>
-#include <asm/io.h>
+#include <io.h>
 #include <gpio.h>
 #include <mach/spi.h>
 #include <mach/generic.h>
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 1e4d4b0..fbc6e4e 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -5,7 +5,7 @@
 #include <usb/ch9.h>
 #include <usb/gadget.h>
 #include <usb/fsl_usb2.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/byteorder.h>
 #include <asm/mmu.h>
 
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 81e41d9..77087cb 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -24,7 +24,7 @@
 #include <common.h>
 #include <asm/byteorder.h>
 #include <usb/usb.h>
-#include <asm/io.h>
+#include <io.h>
 #include <malloc.h>
 #include <driver.h>
 #include <init.h>
diff --git a/drivers/usb/host/ehci-omap.c b/drivers/usb/host/ehci-omap.c
index 94aa356..e2ce65f 100644
--- a/drivers/usb/host/ehci-omap.c
+++ b/drivers/usb/host/ehci-omap.c
@@ -15,7 +15,7 @@
 #include <usb/twl4030.h>
 #include <mach/ehci.h>
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <clock.h>
 #include <gpio.h>
 #include <mach/omap3-silicon.h>
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index cae049a..7465182 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -27,7 +27,7 @@
 #include <usb/usb.h>
 #include <usb/usb_defs.h>
 #include <errno.h>
-#include <asm/io.h>
+#include <io.h>
 
 #include "ohci.h"
 
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index 5ac4acc..f103101 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -53,7 +53,7 @@
 #include <errno.h>
 
 #include <asm/byteorder.h>
-#include <asm/io.h>
+#include <io.h>
 #include <asm/mmu.h>
 
 #include "ohci.h"
diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index 4a898fb..6ed6f01 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -17,7 +17,7 @@
  */
 
 #include <common.h>
-#include <asm/io.h>
+#include <io.h>
 #include <errno.h>
 #include <usb/ulpi.h>
 
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 5ae8c4b..dce2a9e 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -23,7 +23,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-regs.h>
 #include <fb.h>
 #include <mach/imxfb.h>
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index c19e83e..7ffbcb5 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -16,7 +16,7 @@
 
 #include <common.h>
 #include <fb.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imxfb.h>
 #include <driver.h>
 #include <malloc.h>
diff --git a/drivers/video/s3c.c b/drivers/video/s3c.c
index d079fde..b17aeb6 100644
--- a/drivers/video/s3c.c
+++ b/drivers/video/s3c.c
@@ -29,7 +29,7 @@
 #include <driver.h>
 #include <malloc.h>
 #include <errno.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/gpio.h>
 #include <mach/s3c24xx-generic.h>
 #include <mach/fb.h>
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 78acad7..c109352 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -23,7 +23,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <xfuncs.h>
-#include <asm/io.h>
+#include <io.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
 #include <mach/fb.h>
diff --git a/include/io.h b/include/io.h
new file mode 100644
index 0000000..8eb56b0
--- /dev/null
+++ b/include/io.h
@@ -0,0 +1,6 @@
+#ifndef __IO_H
+#define __IO_H
+
+#include <asm/io.h>
+
+#endif /* __IO_H */
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
