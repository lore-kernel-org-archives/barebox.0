Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqxZV-0004xW-Oo
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 06:49:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Apr 2016 08:49:14 +0200
Message-Id: <1460702958-4012-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1460702958-4012-1-git-send-email-s.hauer@pengutronix.de>
References: <1460702958-4012-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] include: Move fec eth platform_data to
 include/platform_data
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/animeo_ip/init.c                  |  1 -
 arch/arm/boards/at91sam9n12ek/init.c              |  1 -
 arch/arm/boards/at91sam9x5ek/init.c               |  1 -
 arch/arm/boards/ccxmx51/ccxmx51.c                 |  2 +-
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c  |  1 -
 arch/arm/boards/datamodul-edm-qmx6/board.c        |  1 -
 arch/arm/boards/dss11/init.c                      |  1 -
 arch/arm/boards/embedsky-e9/board.c               |  1 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |  2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |  1 -
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |  2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |  2 +-
 arch/arm/boards/freescale-mx25-3ds/3stack.c       |  2 +-
 arch/arm/boards/freescale-mx27-ads/imx27ads.c     |  2 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c     |  2 +-
 arch/arm/boards/freescale-mx35-3ds/3stack.c       |  2 +-
 arch/arm/boards/freescale-mx51-babbage/board.c    |  1 -
 arch/arm/boards/freescale-mx53-smd/board.c        |  2 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c   |  1 -
 arch/arm/boards/freescale-mx6-sabresd/board.c     |  1 -
 arch/arm/boards/guf-cupid/board.c                 |  2 +-
 arch/arm/boards/guf-neso/board.c                  |  2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c             |  2 +-
 arch/arm/boards/karo-tx51/tx51.c                  |  2 +-
 arch/arm/boards/karo-tx53/board.c                 |  2 +-
 arch/arm/boards/mmccpu/init.c                     |  1 -
 arch/arm/boards/phytec-phycard-imx27/pca100.c     |  1 -
 arch/arm/boards/phytec-phycore-imx35/pcm043.c     |  1 -
 arch/arm/boards/phytec-som-imx6/board.c           |  3 +-
 arch/arm/boards/pm9263/init.c                     |  1 -
 arch/arm/boards/tqma6x/board.c                    |  1 -
 arch/arm/boards/udoo/board.c                      |  1 -
 arch/arm/mach-imx/include/mach/devices.h          |  2 +-
 arch/ppc/boards/pcm030/pcm030.c                   |  2 +-
 drivers/net/fec_imx.c                             |  2 +-
 drivers/net/fec_mpc5200.c                         |  2 +-
 include/fec.h                                     | 37 -----------------------
 include/platform_data/eth-fec.h                   | 37 +++++++++++++++++++++++
 38 files changed, 57 insertions(+), 73 deletions(-)
 delete mode 100644 include/fec.h
 create mode 100644 include/platform_data/eth-fec.h

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 2069ab3..14b33dc 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -8,7 +8,6 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <fec.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index 26d08ae..2ed58c1 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -18,7 +18,6 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <fec.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index e0c11a1..1ef3580 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -18,7 +18,6 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <fec.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index 40cf76d..71a51e1 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -20,7 +20,7 @@
 #include <init.h>
 #include <environment.h>
 #include <mach/imx51-regs.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index 6e83570..947db7c 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -19,7 +19,6 @@
 #include <environment.h>
 #include <envfs.h>
 #include <errno.h>
-#include <fec.h>
 #include <gpio.h>
 #include <init.h>
 #include <mci.h>
diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index 96c7fbe..043a934 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -26,7 +26,6 @@
 #include <linux/sizes.h>
 #include <init.h>
 #include <gpio.h>
-#include <fec.h>
 #include <of.h>
 
 #include <linux/micrel_phy.h>
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index feca909..321c383 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -17,7 +17,6 @@
 #include <mci.h>
 #include <init.h>
 #include <environment.h>
-#include <fec.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embedsky-e9/board.c
index 23bfec1..1ba7be1 100644
--- a/arch/arm/boards/embedsky-e9/board.c
+++ b/arch/arm/boards/embedsky-e9/board.c
@@ -22,7 +22,6 @@
 #include <init.h>
 #include <environment.h>
 #include <mach/imx6-regs.h>
-#include <fec.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 22bf740..9045191 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -36,7 +36,7 @@
 #include <mach/imx-nand.h>
 #include <mach/imxfb.h>
 #include <mach/iim.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <nand.h>
 #include <mach/iomux-mx25.h>
 #include <i2c/i2c.h>
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 31422e6..b40ad13 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -22,7 +22,6 @@
 #include <init.h>
 #include <environment.h>
 #include <mach/imx27-regs.h>
-#include <fec.h>
 #include <notifier.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 7b3993d..9c4ea13 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -27,7 +27,7 @@
 #include <environment.h>
 #include <errno.h>
 #include <fcntl.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <fs.h>
 #include <init.h>
 #include <nand.h>
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 75f3250..fc57f6c 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -20,7 +20,7 @@
 #include <init.h>
 #include <environment.h>
 #include <mach/imx51-regs.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/freescale-mx25-3ds/3stack.c b/arch/arm/boards/freescale-mx25-3ds/3stack.c
index 6d0e382..36ad591 100644
--- a/arch/arm/boards/freescale-mx25-3ds/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3ds/3stack.c
@@ -30,7 +30,7 @@
 #include <partition.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <nand.h>
 #include <mach/iomux-mx25.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/freescale-mx27-ads/imx27ads.c b/arch/arm/boards/freescale-mx27-ads/imx27ads.c
index 9fb1760..109f7f9 100644
--- a/arch/arm/boards/freescale-mx27-ads/imx27ads.c
+++ b/arch/arm/boards/freescale-mx27-ads/imx27ads.c
@@ -21,7 +21,7 @@
 #include <mach/imx27-regs.h>
 #include <asm/armlinux.h>
 #include <io.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <gpio.h>
 #include <mach/weim.h>
 #include <partition.h>
diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index fc12375..9e5d612 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -17,7 +17,7 @@
 #include <common.h>
 #include <environment.h>
 #include <errno.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <gpio.h>
 #include <init.h>
 #include <mci.h>
diff --git a/arch/arm/boards/freescale-mx35-3ds/3stack.c b/arch/arm/boards/freescale-mx35-3ds/3stack.c
index cca0fe4..caeb3f7 100644
--- a/arch/arm/boards/freescale-mx35-3ds/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3ds/3stack.c
@@ -25,7 +25,7 @@
 #include <environment.h>
 #include <errno.h>
 #include <fcntl.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <fs.h>
 #include <init.h>
 #include <nand.h>
diff --git a/arch/arm/boards/freescale-mx51-babbage/board.c b/arch/arm/boards/freescale-mx51-babbage/board.c
index c4acb8e..9157485 100644
--- a/arch/arm/boards/freescale-mx51-babbage/board.c
+++ b/arch/arm/boards/freescale-mx51-babbage/board.c
@@ -20,7 +20,6 @@
 #include <init.h>
 #include <environment.h>
 #include <mach/imx51-regs.h>
-#include <fec.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index 196d20a..354702d 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -17,7 +17,7 @@
 #include <common.h>
 #include <environment.h>
 #include <fcntl.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <fs.h>
 #include <init.h>
 #include <nand.h>
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index d40f99b..63fa588 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -18,7 +18,6 @@
 #include <init.h>
 #include <environment.h>
 #include <mach/imx6-regs.h>
-#include <fec.h>
 #include <gpio.h>
 #include <mach/bbu.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index 734adde..595b1ea 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -19,7 +19,6 @@
 #include <init.h>
 #include <environment.h>
 #include <mach/imx6-regs.h>
-#include <fec.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 90f1627..6ec74eb 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -33,7 +33,7 @@
 #include <nand.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <fb.h>
 #include <asm/mmu.h>
 #include <mach/weim.h>
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index f40f0d1..176d77e 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -18,7 +18,7 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <notifier.h>
 #include <partition.h>
 #include <gpio.h>
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index d67607b..ec08262 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -18,7 +18,7 @@
 #include <environment.h>
 #include <errno.h>
 #include <mci.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <linux/sizes.h>
 #include <io.h>
 #include <net.h>
diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
index f5ebe46..913df68 100644
--- a/arch/arm/boards/karo-tx51/tx51.c
+++ b/arch/arm/boards/karo-tx51/tx51.c
@@ -19,7 +19,7 @@
 #include <init.h>
 #include <environment.h>
 #include <mach/imx51-regs.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 9e65a83..99aa9e7 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -16,7 +16,7 @@
 #include <bootsource.h>
 #include <environment.h>
 #include <fcntl.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <fs.h>
 #include <init.h>
 #include <nand.h>
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 8979b81..747c4b2 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -18,7 +18,6 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <fec.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
index 0481113..895fae8 100644
--- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
+++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
@@ -19,7 +19,6 @@
 #include <init.h>
 #include <environment.h>
 #include <mach/imx27-regs.h>
-#include <fec.h>
 #include <gpio.h>
 #include <linux/sizes.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/phytec-phycore-imx35/pcm043.c b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
index e31c79d..b83698b 100644
--- a/arch/arm/boards/phytec-phycore-imx35/pcm043.c
+++ b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
@@ -34,7 +34,6 @@
 #include <nand.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
-#include <fec.h>
 #include <fb.h>
 #include <led.h>
 #include <bootsource.h>
diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 85ad8cb..6b81db4 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -29,7 +29,8 @@
 #include <init.h>
 #include <of.h>
 #include <mach/bbu.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
+
 #include <globalvar.h>
 
 #include <linux/micrel_phy.h>
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 2b6b089..e9f8588 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -20,7 +20,6 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <fec.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index 9c52c8a..8946a27 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -26,7 +26,6 @@
 #include <linux/sizes.h>
 #include <init.h>
 #include <gpio.h>
-#include <fec.h>
 #include <of.h>
 
 #include <linux/micrel_phy.h>
diff --git a/arch/arm/boards/udoo/board.c b/arch/arm/boards/udoo/board.c
index f3668fe..f0befaf 100644
--- a/arch/arm/boards/udoo/board.c
+++ b/arch/arm/boards/udoo/board.c
@@ -19,7 +19,6 @@
 #include <init.h>
 #include <environment.h>
 #include <mach/imx6-regs.h>
-#include <fec.h>
 #include <gpio.h>
 #include <mach/bbu.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index 45bb0a5..6a045dd 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -1,5 +1,5 @@
 
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <input/matrix_keypad.h>
 #include <i2c/i2c.h>
 #include <mach/spi.h>
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index 11b3beb..05c1ce9 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -26,7 +26,7 @@
 #include <common.h>
 #include <driver.h>
 #include <init.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <types.h>
 #include <partition.h>
 #include <memory.h>
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 83fdec6..8bc7c29 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -20,7 +20,7 @@
 #include <net.h>
 #include <init.h>
 #include <driver.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <io.h>
 #include <clock.h>
 #include <xfuncs.h>
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index bb57c34..b99c23f 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -10,7 +10,7 @@
 #include <mach/mpc5xxx.h>
 #include <malloc.h>
 #include <net.h>
-#include <fec.h>
+#include <platform_data/eth-fec.h>
 #include <init.h>
 #include <driver.h>
 #include <mach/sdma.h>
diff --git a/include/fec.h b/include/fec.h
deleted file mode 100644
index 699761a..0000000
--- a/include/fec.h
+++ /dev/null
@@ -1,37 +0,0 @@
-/*
- * (C) Copyright 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
- * (C) Copyright 2007 Pengutronix, Juergen Beisert <j.beisert@pengutronix.de>
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
-/**
- * @file
- * @brief Shared structures and constants between i.MX27's and MPC52xx's FEC
- */
-#ifndef __INCLUDE_NETWORK_FEC_H
-#define __INCLUDE_NETWORK_FEC_H
-
-#include <linux/phy.h>
-
-/*
- * Define the phy connected externally for FEC drivers
- * (like MPC52xx and i.MX27)
- */
-struct fec_platform_data {
-	phy_interface_t	xcv_type;
-	int		phy_addr;
-	void 		(*phy_init)(struct phy_device *dev);
-};
-
-#endif /* __INCLUDE_NETWORK_FEC_H */
-
diff --git a/include/platform_data/eth-fec.h b/include/platform_data/eth-fec.h
new file mode 100644
index 0000000..699761a
--- /dev/null
+++ b/include/platform_data/eth-fec.h
@@ -0,0 +1,37 @@
+/*
+ * (C) Copyright 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ * (C) Copyright 2007 Pengutronix, Juergen Beisert <j.beisert@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+/**
+ * @file
+ * @brief Shared structures and constants between i.MX27's and MPC52xx's FEC
+ */
+#ifndef __INCLUDE_NETWORK_FEC_H
+#define __INCLUDE_NETWORK_FEC_H
+
+#include <linux/phy.h>
+
+/*
+ * Define the phy connected externally for FEC drivers
+ * (like MPC52xx and i.MX27)
+ */
+struct fec_platform_data {
+	phy_interface_t	xcv_type;
+	int		phy_addr;
+	void 		(*phy_init)(struct phy_device *dev);
+};
+
+#endif /* __INCLUDE_NETWORK_FEC_H */
+
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
