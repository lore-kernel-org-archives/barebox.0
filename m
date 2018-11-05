Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJh9z-0000Oz-25
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:51:07 +0100
Message-Id: <20181105155113.3434-17-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 16/22] ARM: at91: remove mach/io.h
To: Barebox List <barebox@lists.infradead.org>

Remove at91_sys_read() and at91_sys_write() since these are no longer
used. This makes mach/io.h empty so remove that aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/animeo_ip/init.c              |  1 -
 arch/arm/boards/at91rm9200ek/init.c           |  1 -
 arch/arm/boards/at91sam9260ek/init.c          |  1 -
 arch/arm/boards/at91sam9261ek/init.c          |  1 -
 arch/arm/boards/at91sam9263ek/init.c          |  1 -
 arch/arm/boards/at91sam9263ek/of_init.c       |  2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c       |  1 -
 arch/arm/boards/at91sam9m10ihd/init.c         |  1 -
 arch/arm/boards/at91sam9n12ek/init.c          |  1 -
 arch/arm/boards/at91sam9x5ek/init.c           |  1 -
 arch/arm/boards/dss11/init.c                  |  1 -
 arch/arm/boards/haba-knx/init.c               |  1 -
 arch/arm/boards/pm9261/init.c                 |  1 -
 arch/arm/boards/pm9263/init.c                 |  1 -
 arch/arm/boards/pm9g45/init.c                 |  1 -
 arch/arm/boards/qil-a926x/init.c              |  1 -
 arch/arm/boards/sama5d3_xplained/init.c       |  1 -
 arch/arm/boards/sama5d3xek/init.c             |  1 -
 arch/arm/boards/telit-evk-pro3/init.c         |  1 -
 arch/arm/boards/tny-a926x/init.c              |  1 -
 arch/arm/boards/usb-a926x/init.c              |  1 -
 arch/arm/mach-at91/at91rm9200_devices.c       |  1 -
 arch/arm/mach-at91/at91rm9200_time.c          |  1 -
 arch/arm/mach-at91/at91sam9260_devices.c      |  1 -
 arch/arm/mach-at91/at91sam9261_devices.c      |  1 -
 arch/arm/mach-at91/at91sam9263_devices.c      |  1 -
 arch/arm/mach-at91/at91sam9g45.c              |  1 -
 arch/arm/mach-at91/at91sam9g45_devices.c      |  1 -
 arch/arm/mach-at91/at91sam9n12.c              |  1 -
 arch/arm/mach-at91/at91sam9n12_devices.c      |  1 -
 arch/arm/mach-at91/at91sam9x5_devices.c       |  1 -
 arch/arm/mach-at91/clock.c                    |  1 -
 .../mach-at91/include/mach/at91rm9200_mc.h    |  3 +-
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  |  6 ++-
 .../mach-at91/include/mach/at91sam9_sdramc.h  |  5 ++-
 arch/arm/mach-at91/include/mach/io.h          | 38 -------------------
 arch/arm/mach-at91/sam9_smc.c                 |  1 -
 arch/arm/mach-at91/sama5d3.c                  |  1 -
 arch/arm/mach-at91/sama5d3_devices.c          |  1 -
 arch/arm/mach-at91/sama5d4.c                  |  1 -
 arch/arm/mach-at91/sama5d4_devices.c          |  1 -
 drivers/clocksource/timer-atmel-pit.c         |  1 -
 drivers/spi/atmel_spi.c                       |  1 -
 drivers/usb/gadget/at91_udc.c                 |  2 +-
 drivers/video/atmel_hlcdfb.c                  |  1 -
 drivers/video/atmel_lcdfb.c                   |  1 -
 46 files changed, 13 insertions(+), 83 deletions(-)
 delete mode 100644 arch/arm/mach-at91/include/mach/io.h

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 117d834624..07daaf4ffd 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -24,7 +24,6 @@
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
 #include <mach/iomux.h>
-#include <mach/io.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 #include <local_mac_address.h>
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 7626786e07..2d9318575c 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -31,7 +31,6 @@
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
-#include <mach/io.h>
 #include <spi/spi.h>
 
 static struct macb_platform_data ether_pdata = {
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index de74835d78..037f46a78d 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -24,7 +24,6 @@
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91_rstc.h>
 #include <linux/clk.h>
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 58f253b1a6..a469dba92e 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -32,7 +32,6 @@
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
 #include <gpio.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91sam9_smc.h>
 #include <platform_data/eth-dm9000.h>
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index b71cc55179..f7461ce041 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -35,7 +35,6 @@
 #include <mach/board.h>
 #include <mach/iomux.h>
 #include <gpio.h>
-#include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 
 static struct atmel_nand_data nand_pdata = {
diff --git a/arch/arm/boards/at91sam9263ek/of_init.c b/arch/arm/boards/at91sam9263ek/of_init.c
index 98af5adfc0..259287ccb5 100644
--- a/arch/arm/boards/at91sam9263ek/of_init.c
+++ b/arch/arm/boards/at91sam9263ek/of_init.c
@@ -16,13 +16,13 @@
 #include <envfs.h>
 #include <init.h>
 #include <gpio.h>
+#include <io.h>
 
 #include <mach/at91sam9263_matrix.h>
 #include <mach/at91sam9_smc.h>
 #include <mach/at91_rtt.h>
 #include <mach/hardware.h>
 #include <mach/iomux.h>
-#include <mach/io.h>
 
 static int add_smc_devices(void)
 {
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index ee692630bf..2660104946 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -36,7 +36,6 @@
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
-#include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <gpio_keys.h>
 #include <readkey.h>
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index de601d53b3..5008e0f67e 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -21,7 +21,6 @@
 #include <linux/mtd/nand.h>
 #include <mach/board.h>
 #include <gpio.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91sam9_smc.h>
 #include <input/qt1070.h>
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index bc3fb8e089..72c6ff84ee 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -32,7 +32,6 @@
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 7ed6f58595..65493ebbcd 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -32,7 +32,6 @@
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 432613ff4a..0d0b5e29bf 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -29,7 +29,6 @@
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91_rstc.h>
 #include <linux/clk.h>
diff --git a/arch/arm/boards/haba-knx/init.c b/arch/arm/boards/haba-knx/init.c
index 4a000d9aed..55441b63af 100644
--- a/arch/arm/boards/haba-knx/init.c
+++ b/arch/arm/boards/haba-knx/init.c
@@ -35,7 +35,6 @@
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
 #include <led.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index b0377d063c..33c2a542b2 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -34,7 +34,6 @@
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
-#include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <platform_data/eth-dm9000.h>
 #include <linux/w1-gpio.h>
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index e9f8588649..30b3d26fbf 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -32,7 +32,6 @@
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91sam9_smc.h>
 #include <linux/w1-gpio.h>
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index efa5dc025d..0565657a8c 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -34,7 +34,6 @@
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
-#include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <linux/w1-gpio.h>
 #include <w1_mac_address.h>
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index 6fa0df033e..fa7575d270 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -25,7 +25,6 @@
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
 #include <led.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
diff --git a/arch/arm/boards/sama5d3_xplained/init.c b/arch/arm/boards/sama5d3_xplained/init.c
index fda4c56c6c..2433e25f16 100644
--- a/arch/arm/boards/sama5d3_xplained/init.c
+++ b/arch/arm/boards/sama5d3_xplained/init.c
@@ -30,7 +30,6 @@
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index b35bdb5b05..08ccbcf4a3 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -33,7 +33,6 @@
 #include <mach/at91sam9_smc.h>
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
index 4f536079cc..f6ee715bb1 100644
--- a/arch/arm/boards/telit-evk-pro3/init.c
+++ b/arch/arm/boards/telit-evk-pro3/init.c
@@ -22,7 +22,6 @@
 #include <mach/at91_rstc.h>
 #include <mach/at91sam9_smc.h>
 #include <mach/board.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <nand.h>
 
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 3b83c9f222..dab373009f 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -34,7 +34,6 @@
 #include <mach/at91sam9_smc.h>
 #include <mach/at91sam9_sdramc.h>
 #include <gpio.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index e431cd4603..8969cbd3a8 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -36,7 +36,6 @@
 #include <mach/at91sam9_sdramc.h>
 #include <gpio.h>
 #include <led.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 2563b6c834..f370160580 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -17,7 +17,6 @@
 #include <mach/at91rm9200.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
-#include <mach/io.h>
 #include <mach/at91rm9200_mc.h>
 #include <i2c/i2c-gpio.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/mach-at91/at91rm9200_time.c b/arch/arm/mach-at91/at91rm9200_time.c
index ef85502f5e..b4021b5038 100644
--- a/arch/arm/mach-at91/at91rm9200_time.c
+++ b/arch/arm/mach-at91/at91rm9200_time.c
@@ -31,7 +31,6 @@
 #include <restart.h>
 #include <mach/hardware.h>
 #include <mach/at91rm9200_st.h>
-#include <mach/io.h>
 #include <io.h>
 
 static void __iomem *st = IOMEM(AT91RM9200_BASE_ST);
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 9b8654f400..eafcfeacf7 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -21,7 +21,6 @@
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91_rtt.h>
 #include <mach/iomux.h>
-#include <mach/io.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
 
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 3b869f923c..fcf719a09a 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -21,7 +21,6 @@
 #include <mach/at91_rtt.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
-#include <mach/io.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
 
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 877acc0df7..a67345f05d 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -21,7 +21,6 @@
 #include <mach/at91_rtt.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
-#include <mach/io.h>
 #include <i2c/i2c-gpio.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index c70036b389..29294ae28f 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -1,7 +1,6 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
-#include <mach/io.h>
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/cpu.h>
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index ae4bd50c4b..43d8d5fbd6 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -21,7 +21,6 @@
 #include <mach/at91_rtt.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
-#include <mach/io.h>
 #include <i2c/i2c-gpio.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index 7ab44e4964..f764af2861 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -3,7 +3,6 @@
 #include <init.h>
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
-#include <mach/io.h>
 #include <mach/cpu.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index 3c606d5a4d..43cbb79af4 100644
--- a/arch/arm/mach-at91/at91sam9n12_devices.c
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -19,7 +19,6 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9n12_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index b8035c1acf..ab506a1f42 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -18,7 +18,6 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9x5_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 125d16917e..1f2cfdc716 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -20,7 +20,6 @@
 #include <init.h>
 
 #include <mach/hardware.h>
-#include <mach/io.h>
 #include <mach/at91_pmc.h>
 #include <mach/cpu.h>
 
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200_mc.h b/arch/arm/mach-at91/include/mach/at91rm9200_mc.h
index 14da76b85a..03e1b87f5f 100644
--- a/arch/arm/mach-at91/include/mach/at91rm9200_mc.h
+++ b/arch/arm/mach-at91/include/mach/at91rm9200_mc.h
@@ -158,7 +158,8 @@
 #define		AT91RM9200_BFC_RDYEN		(1   << 19)		/* Ready Enable Mode */
 
 #ifndef __ASSEMBLY__
-#include <mach/io.h>
+#include <io.h>
+#include <mach/at91rm9200.h>
 static inline u32 at91rm9200_get_sdram_size(void)
 {
 	u32 cr, mr;
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index 88796a6a2c..1c4d313eb4 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -136,7 +136,7 @@ Banks [not SAM9G45] */
 #define		AT91_DDRSDRC_WPVSRC	(0xffff << 8)		/* Write protect violation source */
 
 #ifndef __ASSEMBLY__
-#include <mach/io.h>
+#include <io.h>
 
 static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
 {
@@ -176,6 +176,7 @@ static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
 }
 
 #ifdef CONFIG_SOC_AT91SAM9G45
+#include <mach/at91sam9g45.h>
 static inline u32 at91sam9g45_get_ddram_size(int bank)
 {
 	switch (bank) {
@@ -195,6 +196,7 @@ static inline u32 at91sam9g45_get_ddram_size(int bank)
 #endif
 
 #ifdef CONFIG_SOC_AT91SAM9X5
+#include <mach/at91sam9x5.h>
 static inline u32 at91sam9x5_get_ddram_size(void)
 {
 	return at91_get_ddram_size(IOMEM(AT91SAM9X5_BASE_DDRSDRC0), true);
@@ -207,6 +209,7 @@ static inline u32 at91sam9x5_get_ddram_size(void)
 #endif
 
 #ifdef CONFIG_SOC_AT91SAM9N12
+#include <mach/at91sam9n12.h>
 static inline u32 at91sam9n12_get_ddram_size(void)
 {
 	return at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true);
@@ -219,6 +222,7 @@ static inline u32 at91sam9n12_get_ddram_size(void)
 #endif
 
 #ifdef CONFIG_SOC_SAMA5
+#include <mach/sama5d3.h>
 static inline u32 at91sama5_get_ddram_size(void)
 {
 	u32 cr;
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
index 91efa67c8a..8595f9cd5c 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
@@ -84,7 +84,7 @@
 #define			AT91_SDRAMC_MD_LOW_POWER_SDRAM	1
 
 #ifndef __ASSEMBLY__
-#include <mach/io.h>
+#include <io.h>
 static inline u32 at91_get_sdram_size(void *base)
 {
 	u32 val;
@@ -118,6 +118,7 @@ static inline bool at91_is_low_power_sdram(void *base)
 }
 
 #ifdef CONFIG_SOC_AT91SAM9260
+#include <mach/at91sam9260.h>
 static inline u32 at91sam9260_get_sdram_size(void)
 {
 	return at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC));
@@ -140,6 +141,7 @@ static inline bool at91sam9260_is_low_power_sdram(void)
 #endif
 
 #ifdef CONFIG_SOC_AT91SAM9261
+#include <mach/at91sam9261.h>
 static inline u32 at91sam9261_get_sdram_size(void)
 {
 	return at91_get_sdram_size(IOMEM(AT91SAM9261_BASE_SDRAMC));
@@ -162,6 +164,7 @@ static inline bool at91sam9261_is_low_power_sdram(void)
 #endif
 
 #ifdef CONFIG_SOC_AT91SAM9263
+#include <mach/at91sam9263.h>
 static inline u32 at91sam9263_get_sdram_size(int bank)
 {
 	switch (bank) {
diff --git a/arch/arm/mach-at91/include/mach/io.h b/arch/arm/mach-at91/include/mach/io.h
deleted file mode 100644
index a1d970f2a2..0000000000
--- a/arch/arm/mach-at91/include/mach/io.h
+++ /dev/null
@@ -1,38 +0,0 @@
-/*
- * [origin: Linux kernel include/asm-arm/arch-at91/io.h]
- *
- *  Copyright (C) 2003 SAN People
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __ASM_ARCH_IO_H
-#define __ASM_ARCH_IO_H
-
-#include <io.h>
-#include <mach/hardware.h>
-
-static inline unsigned int at91_sys_read(unsigned int reg_offset)
-{
-	void *addr = (void *)AT91_BASE_SYS;
-
-	return __raw_readl(addr + reg_offset);
-}
-
-static inline void at91_sys_write(unsigned int reg_offset, unsigned long value)
-{
-	void *addr = (void *)AT91_BASE_SYS;
-
-	__raw_writel(value, addr + reg_offset);
-}
-
-#endif
diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index d2b075e3e8..dc1f2edf41 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -13,7 +13,6 @@
 #include <io.h>
 #include <mach/hardware.h>
 #include <mach/cpu.h>
-#include <mach/io.h>
 #include <linux/err.h>
 
 #include <mach/at91sam9_smc.h>
diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
index b52c6b49be..01c724f940 100644
--- a/arch/arm/mach-at91/sama5d3.c
+++ b/arch/arm/mach-at91/sama5d3.c
@@ -3,7 +3,6 @@
 #include <init.h>
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
-#include <mach/io.h>
 #include <mach/cpu.h>
 #include <linux/clk.h>
 
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index c6f5e3a87c..f5075b3937 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -20,7 +20,6 @@
 #include <mach/at91sam9x5_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/iomux.h>
-#include <mach/io.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
 
diff --git a/arch/arm/mach-at91/sama5d4.c b/arch/arm/mach-at91/sama5d4.c
index d6b18fca24..137800f825 100644
--- a/arch/arm/mach-at91/sama5d4.c
+++ b/arch/arm/mach-at91/sama5d4.c
@@ -12,7 +12,6 @@
 #include <init.h>
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
-#include <mach/io.h>
 #include <mach/cpu.h>
 #include <linux/clk.h>
 
diff --git a/arch/arm/mach-at91/sama5d4_devices.c b/arch/arm/mach-at91/sama5d4_devices.c
index c2f171a968..4064e4441f 100644
--- a/arch/arm/mach-at91/sama5d4_devices.c
+++ b/arch/arm/mach-at91/sama5d4_devices.c
@@ -21,7 +21,6 @@
 #include <mach/at91sam9x5_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/iomux.h>
-#include <mach/io.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
 
diff --git a/drivers/clocksource/timer-atmel-pit.c b/drivers/clocksource/timer-atmel-pit.c
index 947a1e7f49..40895847f0 100644
--- a/drivers/clocksource/timer-atmel-pit.c
+++ b/drivers/clocksource/timer-atmel-pit.c
@@ -30,7 +30,6 @@
 #include <clock.h>
 #include <mach/hardware.h>
 #include <mach/at91_pit.h>
-#include <mach/io.h>
 #include <io.h>
 #include <linux/clk.h>
 #include <linux/err.h>
diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index a0243be858..55bea79a5e 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -32,7 +32,6 @@
 #include <of_gpio.h>
 #include <io.h>
 #include <spi/spi.h>
-#include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/board.h>
 #include <mach/cpu.h>
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 9d45323a53..645275a016 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -18,6 +18,7 @@
 #include <errno.h>
 #include <init.h>
 #include <gpio.h>
+#include <io.h>
 #include <clock.h>
 #include <usb/ch9.h>
 #include <usb/gadget.h>
@@ -33,7 +34,6 @@
 #if defined CONFIG_ARCH_AT91SAM9261 || defined CONFIG_ARCH_AT91SAM9G10
 #include <mach/at91sam9261.h>
 #endif
-#include <mach/io.h>
 #include <mach/board.h>
 #include <mach/cpu.h>
 #include <mach/at91sam9261_matrix.h>
diff --git a/drivers/video/atmel_hlcdfb.c b/drivers/video/atmel_hlcdfb.c
index 5d130f598e..aa84334b09 100644
--- a/drivers/video/atmel_hlcdfb.c
+++ b/drivers/video/atmel_hlcdfb.c
@@ -24,7 +24,6 @@
 #include <linux/clk.h>
 #include <mach/hardware.h>
 #include <mach/atmel_hlcdc.h>
-#include <mach/io.h>
 #include <mach/cpu.h>
 #include <errno.h>
 
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index d343c5c059..322404f322 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -22,7 +22,6 @@
 #include <io.h>
 #include <init.h>
 #include <mach/hardware.h>
-#include <mach/io.h>
 #include <errno.h>
 #include <linux/clk.h>
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
