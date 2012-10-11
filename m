Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxn-0008QG-24
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:14:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:41 +0200
Message-Id: <1349939621-17793-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
References: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/13] ARM i.MX: get rid of imx-regs.h
To: barebox@lists.infradead.org

- remove now unused __REG definitions
- include individual SoC register files instead of imx-regs.h
- move IMX_GPIO_NR to generic.h
- finally remove imx-regs.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ccxmx51/ccxmx51.c                  |    2 +-
 arch/arm/boards/ccxmx51/ccxmx51js.c                |    2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    2 +-
 arch/arm/boards/eukrea_cpuimx25/flash_header.c     |    2 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |    2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    2 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |    2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    2 +-
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |    2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    2 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    2 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |    2 +-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |    2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |    2 +-
 arch/arm/boards/freescale-mx53-loco/board.c        |    2 +-
 arch/arm/boards/freescale-mx53-smd/board.c         |    2 +-
 arch/arm/boards/freescale-mx6-arm2/board.c         |    2 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |    2 +-
 arch/arm/boards/guf-cupid/board.c                  |    2 +-
 arch/arm/boards/guf-cupid/lowlevel.c               |    2 +-
 arch/arm/boards/guf-neso/board.c                   |    2 +-
 arch/arm/boards/guf-neso/lowlevel.c                |    2 +-
 arch/arm/boards/guf-neso/pll_init.S                |    2 +-
 arch/arm/boards/imx21ads/imx21ads.c                |    2 +-
 arch/arm/boards/imx21ads/lowlevel_init.S           |    2 +-
 arch/arm/boards/imx27ads/imx27ads.c                |    2 +-
 arch/arm/boards/imx27ads/lowlevel_init.S           |    2 +-
 arch/arm/boards/karo-tx25/board.c                  |    2 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |    2 +-
 arch/arm/boards/karo-tx51/tx51.c                   |    2 +-
 arch/arm/boards/karo-tx53/board.c                  |    2 +-
 arch/arm/boards/pcm037/lowlevel_init.S             |    2 +-
 arch/arm/boards/pcm037/pcm037.c                    |    2 +-
 arch/arm/boards/pcm038/lowlevel.c                  |    2 +-
 arch/arm/boards/pcm038/pcm038.c                    |    2 +-
 arch/arm/boards/pcm038/pcm970.c                    |    2 +-
 arch/arm/boards/pcm043/lowlevel.c                  |    2 +-
 arch/arm/boards/pcm043/pcm043.c                    |    2 +-
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |    2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |    2 +-
 arch/arm/boards/scb9328/lowlevel_init.S            |    2 +-
 arch/arm/boards/scb9328/scb9328.c                  |    2 +-
 arch/arm/boards/tqma53/board.c                     |    2 +-
 arch/arm/mach-imx/clk-imx5.c                       |    3 +-
 arch/arm/mach-imx/clk-pllv2.c                      |    1 -
 arch/arm/mach-imx/clk-pllv3.c                      |    1 -
 arch/arm/mach-imx/clocksource.c                    |    1 -
 arch/arm/mach-imx/external-nand-boot.c             |    6 +-
 arch/arm/mach-imx/gpio.c                           |    1 -
 arch/arm/mach-imx/imx1.c                           |    2 +-
 arch/arm/mach-imx/imx21.c                          |    2 +-
 arch/arm/mach-imx/imx25.c                          |    2 +-
 arch/arm/mach-imx/imx31.c                          |    2 +-
 arch/arm/mach-imx/imx35.c                          |    2 +-
 arch/arm/mach-imx/imx51.c                          |    2 +-
 arch/arm/mach-imx/imx53.c                          |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx31.h     |    2 +-
 arch/arm/mach-imx/include/mach/generic.h           |    4 ++
 arch/arm/mach-imx/include/mach/imx-regs.h          |   64 --------------------
 arch/arm/mach-imx/iomux-v3.c                       |    1 -
 arch/arm/mach-imx/nand.c                           |    5 +-
 drivers/mtd/nand/nand_imx.c                        |    1 -
 drivers/net/fec_imx.c                              |    1 -
 drivers/serial/serial_imx.c                        |    1 -
 drivers/video/imx-ipu-fb.c                         |    2 +-
 drivers/video/imx.c                                |    1 -
 69 files changed, 70 insertions(+), 131 deletions(-)
 delete mode 100644 arch/arm/mach-imx/include/mach/imx-regs.h

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index b391df1..a8d172c 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -23,7 +23,7 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx51-regs.h>
 #include <fec.h>
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/ccxmx51/ccxmx51js.c b/arch/arm/boards/ccxmx51/ccxmx51js.c
index f04615d..c947a1e 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51js.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51js.c
@@ -20,7 +20,7 @@
 #include <init.h>
 #include <mci.h>
 #include <asm/armlinux.h>
-#include <mach/imx-regs.h>
+#include <mach/imx51-regs.h>
 #include <mach/iomux-mx51.h>
 #include <mach/devices-imx51.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 39ed3b0..92e8df2 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -22,7 +22,7 @@
 #include <init.h>
 #include <driver.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx25-regs.h>
 #include <asm/armlinux.h>
 #include <asm/barebox-arm.h>
 #include <asm-generic/sections.h>
diff --git a/arch/arm/boards/eukrea_cpuimx25/flash_header.c b/arch/arm/boards/eukrea_cpuimx25/flash_header.c
index 344c7ff..9102c2a 100644
--- a/arch/arm/boards/eukrea_cpuimx25/flash_header.c
+++ b/arch/arm/boards/eukrea_cpuimx25/flash_header.c
@@ -23,7 +23,7 @@
  */
 #include <common.h>
 #include <mach/imx-flash-header.h>
-#include <mach/imx-regs.h>
+#include <mach/imx25-regs.h>
 #include <asm/barebox-arm-head.h>
 
 void __naked __flash_header_start go(void)
diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index 61105a7..303da29 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -19,7 +19,7 @@
  */
 #include <common.h>
 #include <init.h>
-#include <mach/imx-regs.h>
+#include <mach/imx25-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
 #include <io.h>
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 4667e62..c89ce8a 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -21,7 +21,7 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx27-regs.h>
 #include <fec.h>
 #include <notifier.h>
 #include <mach/gpio.h>
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index be9a4f4..4ee6efb 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -1,6 +1,6 @@
 #include <config.h>
 #include <asm-generic/memory_layout.h>
-#include <mach/imx-regs.h>
+#include <mach/imx27-regs.h>
 #include <mach/esdctl.h>
 #include <asm/barebox-arm-head.h>
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 5d8830b..fdbc26a 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -41,7 +41,7 @@
 
 #include <mach/gpio.h>
 #include <mach/imx-nand.h>
-#include <mach/imx-regs.h>
+#include <mach/imx35-regs.h>
 #include <mach/iomux-mx35.h>
 #include <mach/iomux-v3.h>
 #include <mach/imx-ipu-fb.h>
diff --git a/arch/arm/boards/eukrea_cpuimx35/flash_header.c b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
index 26752d1..6fa9c8b 100644
--- a/arch/arm/boards/eukrea_cpuimx35/flash_header.c
+++ b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <mach/imx-flash-header.h>
-#include <mach/imx-regs.h>
+#include <mach/imx35-regs.h>
 #include <asm/barebox-arm-head.h>
 
 void __naked __flash_header_start go(void)
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index c6ab3be..e38a0b5 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -18,7 +18,7 @@
  */
 #include <common.h>
 #include <init.h>
-#include <mach/imx-regs.h>
+#include <mach/imx35-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
 #include <asm/cache-l2x0.h>
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 1279f89..ab0ff81 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -19,7 +19,7 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx51-regs.h>
 #include <fec.h>
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 8b3c43d..5ce2f8e 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -21,7 +21,7 @@
 #include <init.h>
 #include <driver.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx25-regs.h>
 #include <asm/armlinux.h>
 #include <asm-generic/sections.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
index 6635571..fb98099 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
@@ -18,7 +18,7 @@
  */
 
 #include <asm-generic/memory_layout.h>
-#include <mach/imx-regs.h>
+#include <mach/imx25-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 4c79317..7da031a 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -41,7 +41,7 @@
 #include <mach/gpio.h>
 #include <mach/weim.h>
 #include <mach/imx-nand.h>
-#include <mach/imx-regs.h>
+#include <mach/imx35-regs.h>
 #include <mach/iomux-mx35.h>
 #include <mach/iomux-v3.h>
 #include <mach/imx-ipu-fb.h>
diff --git a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
index 66763db..076b816 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <mach/imx-flash-header.h>
-#include <mach/imx-regs.h>
+#include <mach/imx35-regs.h>
 #include <asm/barebox-arm-head.h>
 
 void __naked __flash_header_start go(void)
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index bd3dd7f..dada5f3 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -17,7 +17,7 @@
  *
  */
 
-#include <mach/imx-regs.h>
+#include <mach/imx35-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
 #include <asm/cache-l2x0.h>
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 61e635a..0adceac 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -17,7 +17,7 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx51-regs.h>
 #include <fec.h>
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 8e9b030..0678e0a 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -27,7 +27,7 @@
 
 #include <generated/mach-types.h>
 
-#include <mach/imx-regs.h>
+#include <mach/imx53-regs.h>
 #include <mach/iomux-mx53.h>
 #include <mach/devices-imx53.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index 0483103..a5ad009 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -27,7 +27,7 @@
 
 #include <generated/mach-types.h>
 
-#include <mach/imx-regs.h>
+#include <mach/imx53-regs.h>
 #include <mach/iomux-mx53.h>
 #include <mach/devices-imx53.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/freescale-mx6-arm2/board.c b/arch/arm/boards/freescale-mx6-arm2/board.c
index ccc7318..ce9874d 100644
--- a/arch/arm/boards/freescale-mx6-arm2/board.c
+++ b/arch/arm/boards/freescale-mx6-arm2/board.c
@@ -15,7 +15,7 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx6-regs.h>
 #include <fec.h>
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index cbfa3b4..da37e17 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -17,7 +17,7 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx6-regs.h>
 #include <fec.h>
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index e36fee8..5b17326 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -25,7 +25,7 @@
 #include <driver.h>
 #include <environment.h>
 #include <fs.h>
-#include <mach/imx-regs.h>
+#include <mach/imx35-regs.h>
 #include <asm/armlinux.h>
 #include <mach/gpio.h>
 #include <io.h>
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index 22ebaa0..5d6dfc5 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -18,7 +18,7 @@
  */
 #include <common.h>
 #include <init.h>
-#include <mach/imx-regs.h>
+#include <mach/imx35-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
 #include <asm/cache-l2x0.h>
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 1b8db26..200a2ef 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -35,7 +35,7 @@
 
 #include <mach/gpio.h>
 #include <mach/spi.h>
-#include <mach/imx-regs.h>
+#include <mach/imx27-regs.h>
 #include <mach/iomux-mx27.h>
 #include <mach/imx-nand.h>
 #include <mach/imx-pll.h>
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index 4c1cfeb..8c351f6 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -18,7 +18,7 @@
  */
 #include <common.h>
 #include <init.h>
-#include <mach/imx-regs.h>
+#include <mach/imx27-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
 #include <asm/cache-l2x0.h>
diff --git a/arch/arm/boards/guf-neso/pll_init.S b/arch/arm/boards/guf-neso/pll_init.S
index 13df4a3..4c6cb67 100644
--- a/arch/arm/boards/guf-neso/pll_init.S
+++ b/arch/arm/boards/guf-neso/pll_init.S
@@ -1,5 +1,5 @@
 #include <config.h>
-#include <mach/imx-regs.h>
+#include <mach/imx27-regs.h>
 #include <mach/imx-pll.h>
 #include <linux/linkage.h>
 
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index c4f44e9..ca566c8 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -21,7 +21,7 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx21-regs.h>
 #include <asm/armlinux.h>
 #include <asm-generic/sections.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
index be1199b..e52cac1 100644
--- a/arch/arm/boards/imx21ads/lowlevel_init.S
+++ b/arch/arm/boards/imx21ads/lowlevel_init.S
@@ -15,7 +15,7 @@
 
 #include <config.h>
 #include <asm-generic/memory_layout.h>
-#include <mach/imx-regs.h>
+#include <mach/imx21-regs.h>
 #include <asm/barebox-arm-head.h>
 
 	.section ".text_bare_init","ax"
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index 22c6e40..f41b155 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -18,7 +18,7 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx27-regs.h>
 #include <asm/armlinux.h>
 #include <io.h>
 #include <fec.h>
diff --git a/arch/arm/boards/imx27ads/lowlevel_init.S b/arch/arm/boards/imx27ads/lowlevel_init.S
index 7c01558..2dc34b5 100644
--- a/arch/arm/boards/imx27ads/lowlevel_init.S
+++ b/arch/arm/boards/imx27ads/lowlevel_init.S
@@ -5,7 +5,7 @@
  */
 
 #include <config.h>
-#include <mach/imx-regs.h>
+#include <mach/imx27-regs.h>
 #include <asm/barebox-arm-head.h>
 
 #define writel(val, reg) \
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 5c7b28b..1ffd890 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -21,7 +21,7 @@
 #include <init.h>
 #include <driver.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx25-regs.h>
 #include <asm/armlinux.h>
 #include <asm-generic/sections.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 0689f83..4250cc7 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -18,7 +18,7 @@
  */
 #include <common.h>
 #include <init.h>
-#include <mach/imx-regs.h>
+#include <mach/imx25-regs.h>
 #include <mach/esdctl.h>
 #include <io.h>
 #include <mach/imx-nand.h>
diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
index 3ee0ebd..dd377c1 100644
--- a/arch/arm/boards/karo-tx51/tx51.c
+++ b/arch/arm/boards/karo-tx51/tx51.c
@@ -18,7 +18,7 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx51-regs.h>
 #include <fec.h>
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index c8509be..9829a8f 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -25,7 +25,7 @@
 
 #include <generated/mach-types.h>
 
-#include <mach/imx-regs.h>
+#include <mach/imx53-regs.h>
 #include <mach/iomux-mx53.h>
 #include <mach/devices-imx53.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/pcm037/lowlevel_init.S b/arch/arm/boards/pcm037/lowlevel_init.S
index 283ea54..f9ecce1 100644
--- a/arch/arm/boards/pcm037/lowlevel_init.S
+++ b/arch/arm/boards/pcm037/lowlevel_init.S
@@ -17,7 +17,7 @@
  *
  */
 
-#include <mach/imx-regs.h>
+#include <mach/imx31-regs.h>
 #include <mach/imx-pll.h>
 #include <asm/barebox-arm-head.h>
 #include <mach/esdctl.h>
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 79ea1dc..ff4089a 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -24,7 +24,7 @@
 #include <fs.h>
 #include <environment.h>
 #include <usb/ulpi.h>
-#include <mach/imx-regs.h>
+#include <mach/imx31-regs.h>
 #include <mach/iomux-mx31.h>
 #include <asm/armlinux.h>
 #include <asm-generic/sections.h>
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 13639bc..a2da3cb 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -18,7 +18,7 @@
  */
 #include <common.h>
 #include <init.h>
-#include <mach/imx-regs.h>
+#include <mach/imx27-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
 #include <io.h>
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index d6d1d01..715d604 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -18,7 +18,7 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx27-regs.h>
 #include <fec.h>
 #include <notifier.h>
 #include <mach/gpio.h>
diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index 8caed11..93a1839 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -16,7 +16,7 @@
 #include <init.h>
 #include <sizes.h>
 #include <platform_ide.h>
-#include <mach/imx-regs.h>
+#include <mach/imx27-regs.h>
 #include <mach/iomux-mx27.h>
 #include <mach/weim.h>
 #include <mach/gpio.h>
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index 58c0840..3db0f8c 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -18,7 +18,7 @@
  */
 #include <common.h>
 #include <init.h>
-#include <mach/imx-regs.h>
+#include <mach/imx35-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
 #include <asm/cache-l2x0.h>
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index b0d48ba..abfeaf1 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -26,7 +26,7 @@
 #include <environment.h>
 #include <fs.h>
 #include <sizes.h>
-#include <mach/imx-regs.h>
+#include <mach/imx35-regs.h>
 #include <asm/armlinux.h>
 #include <mach/gpio.h>
 #include <io.h>
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
index 60393c6..8f0000f 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
@@ -5,7 +5,7 @@
  */
 
 #include <config.h>
-#include <mach/imx-regs.h>
+#include <mach/imx27-regs.h>
 #include <mach/imx-pll.h>
 #include <asm/barebox-arm-head.h>
 
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index b8abd1b..0b66b04 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -18,7 +18,7 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx-regs.h>
+#include <mach/imx27-regs.h>
 #include <fec.h>
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/scb9328/lowlevel_init.S b/arch/arm/boards/scb9328/lowlevel_init.S
index c303d2d..cefac84 100644
--- a/arch/arm/boards/scb9328/lowlevel_init.S
+++ b/arch/arm/boards/scb9328/lowlevel_init.S
@@ -12,7 +12,7 @@
  * GNU General Public License for more details.
  */
 
-#include <mach/imx-regs.h>
+#include <mach/imx1-regs.h>
 #include <asm/barebox-arm-head.h>
 
 #define CPU200
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index fd2758c..c70852c 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -19,7 +19,7 @@
 #include <init.h>
 #include <environment.h>
 #include <generated/mach-types.h>
-#include <mach/imx-regs.h>
+#include <mach/imx1-regs.h>
 #include <asm/armlinux.h>
 #include <mach/gpio.h>
 #include <mach/weim.h>
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 8c3d855..77535b5 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -30,7 +30,7 @@
 #include <asm/mmu.h>
 #include <generated/mach-types.h>
 
-#include <mach/imx-regs.h>
+#include <mach/imx53-regs.h>
 #include <mach/iomux-mx53.h>
 #include <mach/devices-imx53.h>
 #include <mach/generic.h>
diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index 03a1843..050842d 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -13,7 +13,8 @@
 #include <io.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx-regs.h>
+#include <mach/imx51-regs.h>
+#include <mach/imx53-regs.h>
 
 #include "clk.h"
 
diff --git a/arch/arm/mach-imx/clk-pllv2.c b/arch/arm/mach-imx/clk-pllv2.c
index 6907269..7e087c1 100644
--- a/arch/arm/mach-imx/clk-pllv2.c
+++ b/arch/arm/mach-imx/clk-pllv2.c
@@ -17,7 +17,6 @@
 #include <io.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx-regs.h>
 #include <malloc.h>
 #include <asm-generic/div64.h>
 
diff --git a/arch/arm/mach-imx/clk-pllv3.c b/arch/arm/mach-imx/clk-pllv3.c
index a99eec5..e337e87 100644
--- a/arch/arm/mach-imx/clk-pllv3.c
+++ b/arch/arm/mach-imx/clk-pllv3.c
@@ -17,7 +17,6 @@
 #include <io.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx-regs.h>
 #include <malloc.h>
 #include <clock.h>
 #include <asm-generic/div64.h>
diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index cc7c38f..e18685e 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -32,7 +32,6 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <notifier.h>
-#include <mach/imx-regs.h>
 #include <io.h>
 
 /* Part 1: Registers */
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index d3f2637..2e9e475 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -17,7 +17,11 @@
 #include <linux/mtd/nand.h>
 #include <mach/imx-nand.h>
 #include <mach/generic.h>
-#include <mach/imx-regs.h>
+#include <mach/imx21-regs.h>
+#include <mach/imx25-regs.h>
+#include <mach/imx27-regs.h>
+#include <mach/imx31-regs.h>
+#include <mach/imx35-regs.h>
 
 static void __bare_init noinline imx_nandboot_wait_op_done(void *regs)
 {
diff --git a/arch/arm/mach-imx/gpio.c b/arch/arm/mach-imx/gpio.c
index cd7655a..1bf4100 100644
--- a/arch/arm/mach-imx/gpio.c
+++ b/arch/arm/mach-imx/gpio.c
@@ -23,7 +23,6 @@
 #include <common.h>
 #include <errno.h>
 #include <io.h>
-#include <mach/imx-regs.h>
 #include <gpio.h>
 #include <init.h>
 
diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index 966a8c2..18901ea 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -14,7 +14,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/imx-regs.h>
+#include <mach/imx1-regs.h>
 #include <mach/weim.h>
 #include <mach/iomux-v1.h>
 #include <reset_source.h>
diff --git a/arch/arm/mach-imx/imx21.c b/arch/arm/mach-imx/imx21.c
index 417ada3..cddf3c0 100644
--- a/arch/arm/mach-imx/imx21.c
+++ b/arch/arm/mach-imx/imx21.c
@@ -14,7 +14,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/imx-regs.h>
+#include <mach/imx21-regs.h>
 #include <mach/weim.h>
 #include <mach/iomux-v1.h>
 
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 0f92b17..3bd95c1 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -13,7 +13,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/imx-regs.h>
+#include <mach/imx25-regs.h>
 #include <mach/iim.h>
 #include <io.h>
 #include <mach/weim.h>
diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index 71b4c33..b2f0724 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -15,7 +15,7 @@
 #include <init.h>
 #include <sizes.h>
 #include <io.h>
-#include <mach/imx-regs.h>
+#include <mach/imx31-regs.h>
 #include <mach/weim.h>
 
 void imx31_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 5560157..737eb3a 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -16,7 +16,7 @@
 #include <init.h>
 #include <io.h>
 #include <mach/weim.h>
-#include <mach/imx-regs.h>
+#include <mach/imx35-regs.h>
 #include <mach/iim.h>
 #include <mach/revision.h>
 #include <mach/generic.h>
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 60c8885..cf6230b 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -17,7 +17,7 @@
 #include <environment.h>
 #include <io.h>
 #include <mach/imx5.h>
-#include <mach/imx-regs.h>
+#include <mach/imx51-regs.h>
 #include <mach/revision.h>
 #include <mach/clock-imx51_53.h>
 
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 0a4de83..38b94fc 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -17,7 +17,7 @@
 #include <notifier.h>
 #include <sizes.h>
 #include <mach/imx5.h>
-#include <mach/imx-regs.h>
+#include <mach/imx53-regs.h>
 #include <mach/revision.h>
 #include <mach/clock-imx51_53.h>
 
diff --git a/arch/arm/mach-imx/include/mach/devices-imx31.h b/arch/arm/mach-imx/include/mach/devices-imx31.h
index 72167b0..fe71930 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx31.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx31.h
@@ -1,5 +1,5 @@
 
-#include <mach/imx-regs.h>
+#include <mach/imx31-regs.h>
 #include <mach/devices.h>
 
 static inline struct device_d *imx31_add_spi0(struct spi_imx_master *pdata)
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 7fe5810..86966e4 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -19,6 +19,10 @@ int imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type);
 void imx_27_boot_save_loc(void __iomem *sysctrl_base);
 int imx51_boot_save_loc(void __iomem *src_base);
 
+/* There's a off-by-one betweem the gpio bank number and the gpiochip */
+/* range e.g. GPIO_1_5 is gpio 5 under linux */
+#define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))
+
 #ifdef CONFIG_ARCH_IMX1
 #define cpu_is_mx1()	(1)
 #else
diff --git a/arch/arm/mach-imx/include/mach/imx-regs.h b/arch/arm/mach-imx/include/mach/imx-regs.h
deleted file mode 100644
index 4acee24..0000000
--- a/arch/arm/mach-imx/include/mach/imx-regs.h
+++ /dev/null
@@ -1,64 +0,0 @@
-/*
- *
- * (c) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef _IMX_REGS_H
-#define _IMX_REGS_H
-
-/* ------------------------------------------------------------------------
- *  Motorola IMX system registers
- * ------------------------------------------------------------------------
- */
-
-# ifndef __ASSEMBLY__
-# define __REG(x)	(*((volatile u32 *)(x)))
-# define __REG16(x)     (*(volatile u16 *)(x))
-# define __REG2(x,y)    (*(volatile u32 *)((u32)&__REG(x) + (y)))
-# else
-#  define __REG(x) (x)
-#  define __REG16(x) (x)
-#  define __REG2(x,y) ((x)+(y))
-#endif
-
-#ifdef CONFIG_ARCH_IMX1
-# include <mach/imx1-regs.h>
-#elif defined CONFIG_ARCH_IMX21
-# include <mach/imx21-regs.h>
-#elif defined CONFIG_ARCH_IMX27
-# include <mach/imx27-regs.h>
-#elif defined CONFIG_ARCH_IMX31
-# include <mach/imx31-regs.h>
-#elif defined CONFIG_ARCH_IMX35
-# include <mach/imx35-regs.h>
-#elif defined CONFIG_ARCH_IMX25
-# include <mach/imx25-regs.h>
-#elif defined CONFIG_ARCH_IMX51
-# include <mach/imx51-regs.h>
-#elif defined CONFIG_ARCH_IMX53
-# include <mach/imx53-regs.h>
-#elif defined CONFIG_ARCH_IMX6
-# include <mach/imx6-regs.h>
-#else
-# error "unknown i.MX soc type"
-#endif
-
-/* There's a off-by-one betweem the gpio bank number and the gpiochip */
-/* range e.g. GPIO_1_5 is gpio 5 under linux */
-#define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))
-
-#endif				/* _IMX_REGS_H */
diff --git a/arch/arm/mach-imx/iomux-v3.c b/arch/arm/mach-imx/iomux-v3.c
index 9153ead..8a6064d 100644
--- a/arch/arm/mach-imx/iomux-v3.c
+++ b/arch/arm/mach-imx/iomux-v3.c
@@ -18,7 +18,6 @@
 #include <init.h>
 #include <io.h>
 #include <mach/iomux-v3.h>
-#include <mach/imx-regs.h>
 
 static void __iomem *base;
 
diff --git a/arch/arm/mach-imx/nand.c b/arch/arm/mach-imx/nand.c
index e793015..f298a36 100644
--- a/arch/arm/mach-imx/nand.c
+++ b/arch/arm/mach-imx/nand.c
@@ -13,7 +13,10 @@
 
 #include <common.h>
 #include <mach/generic.h>
-#include <mach/imx-regs.h>
+#include <mach/imx21-regs.h>
+#include <mach/imx25-regs.h>
+#include <mach/imx27-regs.h>
+#include <mach/imx35-regs.h>
 #include <io.h>
 
 #define RCSR_NFC_FMS		(1 << 8)
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 0489d09..58dbd70 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -26,7 +26,6 @@
 #include <linux/mtd/nand.h>
 #include <mach/generic.h>
 #include <mach/imx-nand.h>
-#include <mach/imx-regs.h>
 #include <io.h>
 #include <errno.h>
 
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 3432d04..3b8b5f4 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -30,7 +30,6 @@
 #include <asm/mmu.h>
 
 #include <mach/generic.h>
-#include <mach/imx-regs.h>
 #include <mach/clock.h>
 #ifndef CONFIG_ARCH_MXS
 # include <mach/iim.h>
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index e3fe6ad..694eac2 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -15,7 +15,6 @@
  */
 
 #include <common.h>
-#include <mach/imx-regs.h>
 #include <driver.h>
 #include <init.h>
 #include <malloc.h>
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 5b9d7d5..a29920d 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -20,7 +20,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/imx-regs.h>
+#include <mach/imx35-regs.h>
 #include <fb.h>
 #include <mach/imxfb.h>
 #include <malloc.h>
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index ae4c671..39ecf6a 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -24,7 +24,6 @@
 #include <init.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <mach/imx-regs.h>
 #include <asm-generic/div64.h>
 
 #define LCDC_SSA	0x00
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
