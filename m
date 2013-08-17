Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VAclo-0003FI-E4
 for barebox@lists.infradead.org; Sat, 17 Aug 2013 09:26:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Aug 2013 11:25:31 +0200
Message-Id: <1376731537-12102-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376731537-12102-1-git-send-email-s.hauer@pengutronix.de>
References: <1376731537-12102-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] ARM: include <gpio.h> instead of <mach/gpio.h>
To: barebox@lists.infradead.org

The gpio api should be used from <gpio.h>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91rm9200ek/init.c               | 2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c           | 2 +-
 arch/arm/boards/ccxmx51/ccxmx51.c                 | 1 -
 arch/arm/boards/ccxmx51/ccxmx51js.c               | 2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c | 2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c | 2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c | 2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c | 2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   | 2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   | 2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c        | 2 +-
 arch/arm/boards/freescale-mx53-smd/board.c        | 2 +-
 arch/arm/boards/freescale-mx6-arm2/board.c        | 2 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c   | 3 +--
 arch/arm/boards/freescale-mx6-sabresd/board.c     | 3 +--
 arch/arm/boards/friendlyarm-mini2440/mini2440.c   | 2 +-
 arch/arm/boards/guf-cupid/board.c                 | 2 +-
 arch/arm/boards/guf-neso/board.c                  | 2 +-
 arch/arm/boards/imx21ads/imx21ads.c               | 2 +-
 arch/arm/boards/imx27ads/imx27ads.c               | 2 +-
 arch/arm/boards/karo-tx25/board.c                 | 2 +-
 arch/arm/boards/karo-tx51/tx51.c                  | 2 +-
 arch/arm/boards/karo-tx53/board.c                 | 2 +-
 arch/arm/boards/mmccpu/init.c                     | 2 +-
 arch/arm/boards/panda/board.c                     | 2 +-
 arch/arm/boards/pcm037/pcm037.c                   | 2 +-
 arch/arm/boards/pcm038/pcm038.c                   | 2 +-
 arch/arm/boards/pcm038/pcm970.c                   | 2 +-
 arch/arm/boards/pcm043/pcm043.c                   | 2 +-
 arch/arm/boards/pcm049/board.c                    | 2 +-
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c         | 2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c           | 2 +-
 arch/arm/boards/pm9261/init.c                     | 2 +-
 arch/arm/boards/pm9263/init.c                     | 2 +-
 arch/arm/boards/pm9g45/init.c                     | 2 +-
 arch/arm/boards/scb9328/scb9328.c                 | 1 -
 arch/arm/boards/tqma53/board.c                    | 2 +-
 arch/arm/mach-at91/at91rm9200_devices.c           | 2 +-
 arch/arm/mach-at91/at91sam9260_devices.c          | 2 +-
 arch/arm/mach-at91/at91sam9261_devices.c          | 2 +-
 arch/arm/mach-at91/at91sam9263_devices.c          | 2 +-
 arch/arm/mach-at91/at91sam9g45_devices.c          | 2 +-
 arch/arm/mach-at91/at91sam9n12_devices.c          | 2 +-
 arch/arm/mach-at91/at91sam9x5_devices.c           | 2 +-
 arch/arm/mach-at91/gpio.c                         | 1 -
 arch/arm/mach-at91/sama5d3_devices.c              | 2 +-
 arch/arm/mach-omap/omap4_generic.c                | 1 -
 47 files changed, 43 insertions(+), 49 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index cd8a165..c04f295 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -22,13 +22,13 @@
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
+#include <gpio.h>
 #include <fcntl.h>
 #include <io.h>
 #include <sizes.h>
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <spi/spi.h>
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 5aa8695..cd831cf 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -20,6 +20,7 @@
 #include <net.h>
 #include <mci.h>
 #include <init.h>
+#include <gpio.h>
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
@@ -33,7 +34,6 @@
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <gpio_keys.h>
diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index 2485e12..89d8f6c 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -25,7 +25,6 @@
 #include <environment.h>
 #include <mach/imx51-regs.h>
 #include <fec.h>
-#include <mach/gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
diff --git a/arch/arm/boards/ccxmx51/ccxmx51js.c b/arch/arm/boards/ccxmx51/ccxmx51js.c
index 3bd50ac..189e9a5 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51js.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51js.c
@@ -18,9 +18,9 @@
 #include <common.h>
 #include <io.h>
 #include <init.h>
+#include <gpio.h>
 #include <mci.h>
 #include <asm/armlinux.h>
-#include <mach/gpio.h>
 #include <mach/generic.h>
 #include <mach/imx51-regs.h>
 #include <mach/iomux-mx51.h>
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index a6f27dc..0de30e8 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -21,12 +21,12 @@
 #include <common.h>
 #include <init.h>
 #include <driver.h>
+#include <gpio.h>
 #include <environment.h>
 #include <mach/imx25-regs.h>
 #include <asm/armlinux.h>
 #include <asm/barebox-arm.h>
 #include <asm/sections.h>
-#include <mach/gpio.h>
 #include <io.h>
 #include <asm/mmu.h>
 #include <led.h>
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 75f3239..81ac654 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -24,7 +24,7 @@
 #include <mach/imx27-regs.h>
 #include <fec.h>
 #include <notifier.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index e406fe8..8db2ab1 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -33,13 +33,13 @@
 #include <nand.h>
 #include <net.h>
 #include <partition.h>
+#include <gpio.h>
 
 #include <asm/armlinux.h>
 #include <io.h>
 #include <generated/mach-types.h>
 #include <asm/mmu.h>
 
-#include <mach/gpio.h>
 #include <mach/imx-nand.h>
 #include <mach/imx35-regs.h>
 #include <mach/iomux-mx35.h>
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 523a805..ceabac6 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -21,7 +21,7 @@
 #include <environment.h>
 #include <mach/imx51-regs.h>
 #include <fec.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 6620a86..cba5cce 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -20,12 +20,12 @@
 #include <common.h>
 #include <init.h>
 #include <driver.h>
+#include <gpio.h>
 #include <environment.h>
 #include <mach/imx25-regs.h>
 #include <asm/armlinux.h>
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
-#include <mach/gpio.h>
 #include <io.h>
 #include <partition.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index f30d77d..c8358da 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -32,6 +32,7 @@
 #include <net.h>
 #include <sizes.h>
 #include <partition.h>
+#include <gpio.h>
 
 #include <asm/armlinux.h>
 #include <asm/sections.h>
@@ -39,7 +40,6 @@
 #include <io.h>
 #include <generated/mach-types.h>
 
-#include <mach/gpio.h>
 #include <mach/weim.h>
 #include <mach/imx-nand.h>
 #include <mach/imx35-regs.h>
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index cafcf37..ad09781 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -19,7 +19,7 @@
 #include <environment.h>
 #include <mach/imx51-regs.h>
 #include <fec.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index d7f6e8b..8c29e90 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -24,6 +24,7 @@
 #include <net.h>
 #include <partition.h>
 #include <sizes.h>
+#include <gpio.h>
 
 #include <generated/mach-types.h>
 
@@ -31,7 +32,6 @@
 #include <mach/iomux-mx53.h>
 #include <mach/devices-imx53.h>
 #include <mach/generic.h>
-#include <mach/gpio.h>
 #include <mach/imx-nand.h>
 #include <mach/iim.h>
 #include <mach/imx5.h>
diff --git a/arch/arm/boards/freescale-mx6-arm2/board.c b/arch/arm/boards/freescale-mx6-arm2/board.c
index 538ab7f..7dbcecc 100644
--- a/arch/arm/boards/freescale-mx6-arm2/board.c
+++ b/arch/arm/boards/freescale-mx6-arm2/board.c
@@ -17,7 +17,7 @@
 #include <environment.h>
 #include <mach/imx6-regs.h>
 #include <fec.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 39f465b..8bbeecd 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -19,7 +19,7 @@
 #include <environment.h>
 #include <mach/imx6-regs.h>
 #include <fec.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
@@ -33,7 +33,6 @@
 #include <mach/imx6.h>
 #include <mach/devices-imx6.h>
 #include <mach/iomux-mx6.h>
-#include <mach/gpio.h>
 #include <spi/spi.h>
 #include <mach/spi.h>
 #include <mach/usb.h>
diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index 422c0d9..0b6bf69 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -20,7 +20,7 @@
 #include <environment.h>
 #include <mach/imx6-regs.h>
 #include <fec.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
@@ -33,7 +33,6 @@
 #include <mach/imx6.h>
 #include <mach/devices-imx6.h>
 #include <mach/iomux-mx6.h>
-#include <mach/gpio.h>
 #include <spi/spi.h>
 #include <mach/spi.h>
 #include <mach/usb.h>
diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
index de07bda..aec3e67 100644
--- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
+++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
@@ -34,7 +34,7 @@
 #include <asm/armlinux.h>
 #include <asm/sections.h>
 #include <io.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <mach/s3c-iomap.h>
 #include <mach/devices-s3c24xx.h>
 #include <mach/s3c24xx-nand.h>
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 67a4b1d..32a3ed4 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -27,8 +27,8 @@
 #include <fs.h>
 #include <mach/imx35-regs.h>
 #include <asm/armlinux.h>
-#include <mach/gpio.h>
 #include <io.h>
+#include <gpio.h>
 #include <partition.h>
 #include <nand.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 00e0d21..055da54 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -21,6 +21,7 @@
 #include <fec.h>
 #include <notifier.h>
 #include <partition.h>
+#include <gpio.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <nand.h>
@@ -33,7 +34,6 @@
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 
-#include <mach/gpio.h>
 #include <mach/spi.h>
 #include <mach/imx27-regs.h>
 #include <mach/iomux-mx27.h>
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 8717774..3d110f9 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -26,7 +26,7 @@
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <io.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <mach/weim.h>
 #include <partition.h>
 #include <fs.h>
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index fc8cf4a..71749dc 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -22,7 +22,7 @@
 #include <asm/armlinux.h>
 #include <io.h>
 #include <fec.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <mach/weim.h>
 #include <partition.h>
 #include <fs.h>
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index bffa11e..d9669f1 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -21,12 +21,12 @@
 #include <init.h>
 #include <driver.h>
 #include <sizes.h>
+#include <gpio.h>
 #include <environment.h>
 #include <mach/imx25-regs.h>
 #include <asm/armlinux.h>
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
-#include <mach/gpio.h>
 #include <io.h>
 #include <partition.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
index d1407a8..55643f2 100644
--- a/arch/arm/boards/karo-tx51/tx51.c
+++ b/arch/arm/boards/karo-tx51/tx51.c
@@ -20,7 +20,7 @@
 #include <environment.h>
 #include <mach/imx51-regs.h>
 #include <fec.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 6ead6a9..ad867cb 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -23,6 +23,7 @@
 #include <net.h>
 #include <partition.h>
 #include <sizes.h>
+#include <gpio.h>
 
 #include <generated/mach-types.h>
 
@@ -30,7 +31,6 @@
 #include <mach/iomux-mx53.h>
 #include <mach/devices-imx53.h>
 #include <mach/generic.h>
-#include <mach/gpio.h>
 #include <mach/imx-nand.h>
 #include <mach/iim.h>
 #include <mach/imx5.h>
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 1569487..11c4bf5 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -19,6 +19,7 @@
 #include <init.h>
 #include <environment.h>
 #include <fec.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
@@ -30,7 +31,6 @@
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 
 static struct macb_platform_data macb_pdata = {
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index d1f9a5e..951fc5a 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -3,6 +3,7 @@
 #include <init.h>
 #include <driver.h>
 #include <io.h>
+#include <gpio.h>
 #include <ns16550.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
@@ -16,7 +17,6 @@
 #include <linux/err.h>
 #include <sizes.h>
 #include <asm/mmu.h>
-#include <mach/gpio.h>
 #include <envfs.h>
 #include <i2c/i2c.h>
 #include <gpio.h>
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index de83c99..ed3525c 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -22,13 +22,13 @@
 #include <init.h>
 #include <driver.h>
 #include <fs.h>
+#include <gpio.h>
 #include <environment.h>
 #include <usb/ulpi.h>
 #include <mach/imx31-regs.h>
 #include <mach/iomux-mx31.h>
 #include <asm/armlinux.h>
 #include <asm/sections.h>
-#include <mach/gpio.h>
 #include <mach/weim.h>
 #include <io.h>
 #include <smc911x.h>
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index b573289..1800dd0 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -24,7 +24,7 @@
 #include <fec.h>
 #include <sizes.h>
 #include <notifier.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index b176d8d..2b2483b 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -15,11 +15,11 @@
 #include <io.h>
 #include <init.h>
 #include <sizes.h>
+#include <gpio.h>
 #include <platform_ide.h>
 #include <mach/imx27-regs.h>
 #include <mach/iomux-mx27.h>
 #include <mach/weim.h>
-#include <mach/gpio.h>
 #include <mach/devices-imx27.h>
 #include <usb/chipidea-imx.h>
 
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 68b7864..e6987da 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -25,10 +25,10 @@
 #include <driver.h>
 #include <environment.h>
 #include <fs.h>
+#include <gpio.h>
 #include <sizes.h>
 #include <mach/imx35-regs.h>
 #include <asm/armlinux.h>
-#include <mach/gpio.h>
 #include <io.h>
 #include <partition.h>
 #include <nand.h>
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 6e4dbf6..e7d947f 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -18,6 +18,7 @@
 #include <console.h>
 #include <init.h>
 #include <driver.h>
+#include <gpio.h>
 #include <io.h>
 #include <ns16550.h>
 #include <asm/armlinux.h>
@@ -35,7 +36,6 @@
 #include <partition.h>
 #include <nand.h>
 #include <asm/mmu.h>
-#include <mach/gpio.h>
 #include <mach/gpmc.h>
 #include <mach/gpmc_nand.h>
 #include <i2c/i2c.h>
diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
index 8f79d98..7bb6140 100644
--- a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
+++ b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
@@ -19,6 +19,7 @@
 #include <init.h>
 #include <driver.h>
 #include <io.h>
+#include <gpio.h>
 #include <ns16550.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
@@ -32,7 +33,6 @@
 #include <partition.h>
 #include <nand.h>
 #include <asm/mmu.h>
-#include <mach/gpio.h>
 #include <mach/gpmc.h>
 #include <mach/gpmc_nand.h>
 #include <mach/omap_hsmmc.h>
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 4740756..1a64fc0 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -20,7 +20,7 @@
 #include <environment.h>
 #include <mach/imx27-regs.h>
 #include <fec.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <asm/sections.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 51dc351..e42f6e4 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -19,6 +19,7 @@
 #include <common.h>
 #include <net.h>
 #include <init.h>
+#include <gpio.h>
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
@@ -31,7 +32,6 @@
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <dm9000.h>
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 559e321..24476f1 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -25,6 +25,7 @@
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
+#include <gpio.h>
 #include <fcntl.h>
 #include <io.h>
 #include <asm/hardware.h>
@@ -32,7 +33,6 @@
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <linux/w1-gpio.h>
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 9bb1f1f..982b427 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -25,13 +25,13 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
+#include <gpio.h>
 #include <io.h>
 #include <asm/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <linux/w1-gpio.h>
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index d91b21d..541dddf 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -21,7 +21,6 @@
 #include <generated/mach-types.h>
 #include <mach/imx1-regs.h>
 #include <asm/armlinux.h>
-#include <mach/gpio.h>
 #include <mach/weim.h>
 #include <io.h>
 #include <partition.h>
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 19ad37e..5173ca4 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -23,6 +23,7 @@
 #include <net.h>
 #include <partition.h>
 #include <sizes.h>
+#include <gpio.h>
 #include <mci.h>
 #include <io.h>
 
@@ -34,7 +35,6 @@
 #include <mach/iomux-mx53.h>
 #include <mach/devices-imx53.h>
 #include <mach/generic.h>
-#include <mach/gpio.h>
 #include <mach/imx-nand.h>
 #include <mach/iim.h>
 #include <mach/imx5.h>
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index ee07848..2eba82b 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -11,11 +11,11 @@
  *
  */
 #include <common.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <mach/hardware.h>
 #include <mach/at91rm9200.h>
 #include <mach/board.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/at91rm9200_mc.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index cff0d90..e5cb8c0 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -11,13 +11,13 @@
  */
 #include <common.h>
 #include <sizes.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <asm/hardware.h>
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9260_matrix.h>
 #include <mach/at91sam9_sdramc.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index e3e51bf..089c56a 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -11,13 +11,13 @@
  */
 #include <common.h>
 #include <sizes.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9261_matrix.h>
 #include <mach/at91sam9_sdramc.h>
 #include <mach/board.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index a93220d..6cd1b89 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -11,13 +11,13 @@
  */
 #include <common.h>
 #include <sizes.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9263_matrix.h>
 #include <mach/at91sam9_sdramc.h>
 #include <mach/board.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <i2c/i2c-gpio.h>
 
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 68ed841..c51f0b3 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -11,13 +11,13 @@
  */
 #include <common.h>
 #include <sizes.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9g45_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/board.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <i2c/i2c-gpio.h>
 
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index aeac2aa..3a6a9a7 100644
--- a/arch/arm/mach-at91/at91sam9n12_devices.c
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -12,13 +12,13 @@
 #include <common.h>
 #include <init.h>
 #include <sizes.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <asm/hardware.h>
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9n12_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index d12ee57..9a2f584 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -11,13 +11,13 @@
  */
 #include <common.h>
 #include <sizes.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <asm/hardware.h>
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9x5_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index 0e39a52..b6cedff 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -24,7 +24,6 @@
 #include <linux/err.h>
 #include <errno.h>
 #include <io.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <gpio.h>
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index 031168b..28b1ba1 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -12,13 +12,13 @@
 #include <common.h>
 #include <init.h>
 #include <sizes.h>
+#include <gpio.h>
 #include <asm/armlinux.h>
 #include <asm/hardware.h>
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9x5_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
-#include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 54cefa2..64b0024 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -8,7 +8,6 @@
 #include <mach/syslib.h>
 #include <mach/generic.h>
 #include <mach/gpmc.h>
-#include <mach/gpio.h>
 #include <mach/omap4_rom_usb.h>
 
 /*
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
