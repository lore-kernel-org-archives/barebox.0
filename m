Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ven0v-0004qM-EZ
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 14:26:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Nov 2013 15:25:59 +0100
Message-Id: <1383920759-3316-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] treewide: Add missing includes
To: barebox@lists.infradead.org

A lot of files rely on include/driver.h including include/of.h (and
this including include/errno.h. include the files explicitly so we can
eventually get rid of including of.h from driver.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/dmo-mx6-realq7/board.c      | 1 +
 arch/arm/boards/efika-mx-smartbook/board.c  | 1 +
 arch/arm/boards/freescale-mx51-pdk/board.c  | 1 +
 arch/arm/boards/freescale-mx53-loco/board.c | 1 +
 arch/arm/boards/gk802/board.c               | 1 +
 arch/arm/boards/tqma6x/board.c              | 1 +
 arch/arm/cpu/start.c                        | 1 +
 arch/arm/mach-imx/clk-imx5.c                | 1 +
 arch/arm/mach-imx/clk-imx6.c                | 1 +
 arch/arm/mach-imx/clocksource.c             | 1 +
 arch/arm/mach-imx/esdctl.c                  | 1 +
 arch/arm/mach-imx/iim.c                     | 2 +-
 arch/arm/mach-imx/imx.c                     | 1 +
 arch/arm/mach-imx/include/mach/bbu.h        | 1 +
 arch/arm/mach-imx/ocotp.c                   | 1 +
 commands/detect.c                           | 1 +
 commands/filetype.c                         | 2 +-
 commands/loadenv.c                          | 1 +
 common/console.c                            | 1 +
 common/globalvar.c                          | 1 +
 common/memory_display.c                     | 1 +
 common/memtest.c                            | 1 +
 common/misc.c                               | 1 +
 common/startup.c                            | 1 +
 drivers/ata/ahci.c                          | 1 +
 drivers/ata/ide-sff.c                       | 1 +
 drivers/ata/pata-imx.c                      | 1 +
 drivers/ata/sata-imx.c                      | 1 +
 drivers/base/bus.c                          | 1 +
 drivers/base/driver.c                       | 1 +
 drivers/base/platform.c                     | 1 +
 drivers/gpio/gpio-imx.c                     | 1 +
 drivers/i2c/busses/i2c-imx.c                | 1 +
 drivers/i2c/i2c.c                           | 1 +
 drivers/mci/imx-esdhc.c                     | 1 +
 drivers/mci/mci-core.c                      | 1 +
 drivers/mfd/mc13xxx.c                       | 1 +
 drivers/mfd/stmpe-i2c.c                     | 1 +
 drivers/mtd/core.c                          | 1 +
 drivers/mtd/devices/m25p80.c                | 1 +
 drivers/mtd/devices/mtd_dataflash.c         | 1 +
 drivers/pinctrl/imx-iomux-v3.c              | 1 +
 drivers/pinctrl/pinctrl.c                   | 2 ++
 drivers/serial/serial_imx.c                 | 1 +
 drivers/spi/imx_spi.c                       | 1 +
 drivers/usb/imx/chipidea-imx.c              | 2 ++
 drivers/usb/imx/imx-usb-misc.c              | 2 ++
 drivers/usb/imx/imx-usb-phy.c               | 2 ++
 drivers/watchdog/imxwd.c                    | 1 +
 include/linux/mtd/mtd.h                     | 1 +
 lib/math.c                                  | 1 +
 lib/unlink-recursive.c                      | 1 +
 net/eth.c                                   | 1 +
 53 files changed, 57 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/dmo-mx6-realq7/board.c b/arch/arm/boards/dmo-mx6-realq7/board.c
index a456389..1753bdd 100644
--- a/arch/arm/boards/dmo-mx6-realq7/board.c
+++ b/arch/arm/boards/dmo-mx6-realq7/board.c
@@ -27,6 +27,7 @@
 #include <init.h>
 #include <gpio.h>
 #include <fec.h>
+#include <of.h>
 
 #include <linux/micrel_phy.h>
 #include <mfd/stmpe-i2c.h>
diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 4469f97..0293c3e 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -23,6 +23,7 @@
 #include <led.h>
 #include <fs.h>
 #include <io.h>
+#include <of.h>
 
 #include <spi/spi.h>
 #include <mfd/mc13xxx.h>
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index ad09781..379313e 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -24,6 +24,7 @@
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
+#include <of.h>
 #include <fcntl.h>
 #include <mach/bbu.h>
 #include <nand.h>
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 15dc591..1f00ec0 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -22,6 +22,7 @@
 #include <init.h>
 #include <fs.h>
 #include <io.h>
+#include <of.h>
 
 #include <mfd/mc13xxx.h>
 #include <i2c/i2c.h>
diff --git a/arch/arm/boards/gk802/board.c b/arch/arm/boards/gk802/board.c
index fa5f320..a4be03f 100644
--- a/arch/arm/boards/gk802/board.c
+++ b/arch/arm/boards/gk802/board.c
@@ -25,6 +25,7 @@
 #include <mach/imx6.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <sizes.h>
+#include <of.h>
 
 #define GK802_GPIO_RECOVERY_BTN	IMX_GPIO_NR(3, 16)	/* recovery button */
 #define GK802_GPIO_RTL8192_PDN	IMX_GPIO_NR(2, 0)	/* RTL8192CU powerdown */
diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index 3e051a5..a870bf2 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -27,6 +27,7 @@
 #include <init.h>
 #include <gpio.h>
 #include <fec.h>
+#include <of.h>
 
 #include <linux/micrel_phy.h>
 #include <mfd/stmpe-i2c.h>
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f0a7df3..0eb15e6 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -20,6 +20,7 @@
 #include <common.h>
 #include <init.h>
 #include <sizes.h>
+#include <of.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index 8c7ed1c..f389653 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -11,6 +11,7 @@
 #include <driver.h>
 #include <linux/clk.h>
 #include <io.h>
+#include <of.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
 #include <mach/imx51-regs.h>
diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 4639c0b..c32b6cc 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -15,6 +15,7 @@
 #include <driver.h>
 #include <linux/clk.h>
 #include <io.h>
+#include <of.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
 #include <mach/imx6-regs.h>
diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index c04af63..dc29d20 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -29,6 +29,7 @@
 #include <init.h>
 #include <clock.h>
 #include <errno.h>
+#include <of.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <notifier.h>
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index e2025b3..3ac4075 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -18,6 +18,7 @@
 
 #include <common.h>
 #include <io.h>
+#include <errno.h>
 #include <sizes.h>
 #include <init.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 938c3f3..dccaaa9 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -24,7 +24,7 @@
 #include <param.h>
 #include <fcntl.h>
 #include <malloc.h>
-
+#include <of.h>
 #include <io.h>
 
 #include <mach/iim.h>
diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index be44339..07d7ba1 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -12,6 +12,7 @@
  */
 
 #include <common.h>
+#include <of.h>
 #include <init.h>
 #include <mach/revision.h>
 #include <mach/generic.h>
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index 077133a..3cd3b1e 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -2,6 +2,7 @@
 #define __MACH_BBU_H
 
 #include <bbu.h>
+#include <errno.h>
 
 struct imx_dcd_entry;
 struct imx_dcd_v2_entry;
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 04feb84..e36b484 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -24,6 +24,7 @@
 #include <init.h>
 #include <net.h>
 #include <io.h>
+#include <of.h>
 
 /*
  * a single MAC address reference has the form
diff --git a/commands/detect.c b/commands/detect.c
index 15055e7..499994b 100644
--- a/commands/detect.c
+++ b/commands/detect.c
@@ -21,6 +21,7 @@
 #include <complete.h>
 #include <driver.h>
 #include <getopt.h>
+#include <errno.h>
 
 static int do_detect(int argc, char *argv[])
 {
diff --git a/commands/filetype.c b/commands/filetype.c
index 20d335b..f82a461 100644
--- a/commands/filetype.c
+++ b/commands/filetype.c
@@ -12,7 +12,7 @@
 #include <magicvar.h>
 #include <getopt.h>
 #include <linux/stat.h>
-#include <fs.h>
+#include <errno.h>
 
 static int do_filetype(int argc, char *argv[])
 {
diff --git a/commands/loadenv.c b/commands/loadenv.c
index 14b9643..df0df27 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -24,6 +24,7 @@
 #include <getopt.h>
 #include <command.h>
 #include <envfs.h>
+#include <errno.h>
 #include <fs.h>
 
 static int do_loadenv(int argc, char *argv[])
diff --git a/common/console.c b/common/console.c
index 56bc864..329bc72 100644
--- a/common/console.c
+++ b/common/console.c
@@ -25,6 +25,7 @@
 #include <console.h>
 #include <driver.h>
 #include <fs.h>
+#include <of.h>
 #include <init.h>
 #include <clock.h>
 #include <kfifo.h>
diff --git a/common/globalvar.c b/common/globalvar.c
index 41ce06e..1f9b0cc 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <malloc.h>
 #include <globalvar.h>
+#include <errno.h>
 #include <init.h>
 #include <environment.h>
 #include <magicvar.h>
diff --git a/common/memory_display.c b/common/memory_display.c
index 7e4f4da..c8ae57a 100644
--- a/common/memory_display.c
+++ b/common/memory_display.c
@@ -1,4 +1,5 @@
 #include <common.h>
+#include <errno.h>
 
 #define DISP_LINE_LEN	16
 
diff --git a/common/memtest.c b/common/memtest.c
index 22178cf..5303c92 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -25,6 +25,7 @@
 #include <memory.h>
 #include <types.h>
 #include <sizes.h>
+#include <errno.h>
 #include <memtest.h>
 
 static const resource_size_t bitpattern[] = {
diff --git a/common/misc.c b/common/misc.c
index f73f4cf..65f3306 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -22,6 +22,7 @@
 #include <magicvar.h>
 #include <globalvar.h>
 #include <environment.h>
+#include <of.h>
 
 int errno;
 EXPORT_SYMBOL(errno);
diff --git a/common/startup.c b/common/startup.c
index 2e0a4ba..74c7735 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -35,6 +35,7 @@
 #include <malloc.h>
 #include <debug_ll.h>
 #include <fs.h>
+#include <errno.h>
 #include <linux/stat.h>
 #include <envfs.h>
 #include <asm/sections.h>
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index f9cf2d1..96138cf 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -29,6 +29,7 @@
 #include <init.h>
 #include <errno.h>
 #include <io.h>
+#include <of.h>
 #include <malloc.h>
 #include <scsi.h>
 #include <linux/ctype.h>
diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
index a7f2647..3d5932e 100644
--- a/drivers/ata/ide-sff.c
+++ b/drivers/ata/ide-sff.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <ata_drive.h>
 #include <io.h>
+#include <errno.h>
 #include <clock.h>
 #include <disks.h>
 #include <malloc.h>
diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index 93809c2..fd3a1cb 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -30,6 +30,7 @@
 #include <ata_drive.h>
 #include <platform_ide.h>
 #include <io.h>
+#include <of.h>
 #include <linux/err.h>
 #include <linux/clk.h>
 
diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index ef7989e..b7bd110 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <ata_drive.h>
 #include <io.h>
+#include <of.h>
 #include <clock.h>
 #include <disks.h>
 #include <driver.h>
diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index 4357020..b383d09 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -7,6 +7,7 @@
 #include <common.h>
 #include <driver.h>
 #include <errno.h>
+#include <of.h>
 
 LIST_HEAD(bus_list);
 EXPORT_SYMBOL(bus_list);
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 80e0ea8..4250fb0 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -30,6 +30,7 @@
 #include <linux/ctype.h>
 #include <errno.h>
 #include <fs.h>
+#include <of.h>
 #include <linux/list.h>
 #include <complete.h>
 #include <pinctrl.h>
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index 34a79b2..e053ec7 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -20,6 +20,7 @@
 #include <driver.h>
 #include <errno.h>
 #include <init.h>
+#include <of.h>
 
 static int platform_probe(struct device_d *dev)
 {
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index 063a81c..a71492a 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -23,6 +23,7 @@
 #include <common.h>
 #include <errno.h>
 #include <io.h>
+#include <of.h>
 #include <gpio.h>
 #include <init.h>
 
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index c607bcb..f657c28 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -34,6 +34,7 @@
 #include <common.h>
 #include <driver.h>
 #include <init.h>
+#include <of.h>
 #include <malloc.h>
 #include <types.h>
 #include <xfuncs.h>
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index ccc4844..3b9f601 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -22,6 +22,7 @@
 #include <malloc.h>
 #include <xfuncs.h>
 #include <init.h>
+#include <of.h>
 
 #include <i2c/i2c.h>
 
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 8da7097..7664e7b 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -24,6 +24,7 @@
 #include <common.h>
 #include <driver.h>
 #include <init.h>
+#include <of.h>
 #include <malloc.h>
 #include <mci.h>
 #include <clock.h>
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index cfae91b..e62569d 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -34,6 +34,7 @@
 #include <asm/byteorder.h>
 #include <block.h>
 #include <disks.h>
+#include <of.h>
 #include <linux/err.h>
 
 #define MAX_BUFFER_NUMBER 0xffffffff
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index cf4c02a..bfbd328 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -21,6 +21,7 @@
 #include <xfuncs.h>
 #include <errno.h>
 #include <malloc.h>
+#include <of.h>
 
 #include <i2c/i2c.h>
 #include <spi/spi.h>
diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index 3a2db92..c1e7d9e 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -19,6 +19,7 @@
 #include <driver.h>
 #include <xfuncs.h>
 #include <errno.h>
+#include <of.h>
 
 #include <i2c/i2c.h>
 #include <mfd/stmpe-i2c.h>
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index f63b10e..33f900e 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -25,6 +25,7 @@
 #include <ioctl.h>
 #include <nand.h>
 #include <errno.h>
+#include <of.h>
 
 #include "mtd.h"
 
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 1e3bc93..9594011 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -17,6 +17,7 @@
 #include <common.h>
 #include <init.h>
 #include <driver.h>
+#include <of.h>
 #include <spi/spi.h>
 #include <spi/flash.h>
 #include <xfuncs.h>
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index d785e33..cdc0120 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -17,6 +17,7 @@
 #include <linux/err.h>
 #include <errno.h>
 #include <io.h>
+#include <of.h>
 #include <clock.h>
 
 #include <spi/spi.h>
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 1223c02..7fcbb98 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -20,6 +20,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <of.h>
 #include <pinctrl.h>
 #include <malloc.h>
 #include <mach/iomux-v3.h>
diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index 7c797d3..7f76d5a 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -19,6 +19,8 @@
 #include <common.h>
 #include <malloc.h>
 #include <pinctrl.h>
+#include <errno.h>
+#include <of.h>
 
 static LIST_HEAD(pinctrl_list);
 
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 01c7cc7..8468fa0 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -20,6 +20,7 @@
 #include <malloc.h>
 #include <notifier.h>
 #include <io.h>
+#include <of.h>
 #include <linux/err.h>
 #include <linux/clk.h>
 
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 1c6b684..c0c2ed7 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -20,6 +20,7 @@
 #include <spi/spi.h>
 #include <xfuncs.h>
 #include <io.h>
+#include <of.h>
 #include <errno.h>
 #include <malloc.h>
 #include <gpio.h>
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index a0dab70..d8209d1 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -15,6 +15,8 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <of.h>
+#include <errno.h>
 #include <driver.h>
 #include <usb/usb.h>
 #include <usb/ehci.h>
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 68c8c4b..ed44d78 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -16,6 +16,8 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <of.h>
+#include <errno.h>
 #include <usb/chipidea-imx.h>
 #include <mach/imx6-regs.h>
 #include <mach/iomux-mx6.h>
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 776bfe5..a573c7f 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -15,6 +15,8 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <of.h>
+#include <errno.h>
 #include <driver.h>
 #include <malloc.h>
 #include <linux/clk.h>
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 78f0f38..f5910ac 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -15,6 +15,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <of.h>
 #include <errno.h>
 #include <malloc.h>
 #include <watchdog.h>
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 1735b49..402e497 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -12,6 +12,7 @@
 #ifndef DOXYGEN_SHOULD_SKIP_THIS
 
 #include <driver.h>
+#include <errno.h>
 #include <linux/types.h>
 #include <linux/list.h>
 #include <linux/mtd/mtd-abi.h>
diff --git a/lib/math.c b/lib/math.c
index 5a68f5e..a4731ed 100644
--- a/lib/math.c
+++ b/lib/math.c
@@ -118,6 +118,7 @@
 #include <linux/ctype.h>
 #include <linux/string.h>
 #include <libbb.h>
+#include <errno.h>
 #include <math.h>
 
 #define lookupvar (math_state->lookupvar)
diff --git a/lib/unlink-recursive.c b/lib/unlink-recursive.c
index a488553..8f7812f 100644
--- a/lib/unlink-recursive.c
+++ b/lib/unlink-recursive.c
@@ -1,4 +1,5 @@
 #include <common.h>
+#include <errno.h>
 #include <libbb.h>
 #include <fs.h>
 
diff --git a/net/eth.c b/net/eth.c
index 3867453..37dd9e0 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -23,6 +23,7 @@
 #include <driver.h>
 #include <init.h>
 #include <net.h>
+#include <of.h>
 #include <linux/phy.h>
 #include <errno.h>
 #include <malloc.h>
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
