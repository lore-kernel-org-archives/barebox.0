Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U89Ef-0008C5-Mx
 for barebox@lists.infradead.org; Wed, 20 Feb 2013 12:57:25 +0000
Received: from mail611.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 19A38DC1A1B
 for <barebox@lists.infradead.org>; Wed, 20 Feb 2013 14:07:58 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 20 Feb 2013 13:56:16 +0100
Message-Id: <1361364976-8949-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1361364976-8949-1-git-send-email-plagnioj@jcrosoft.com>
References: <1361364976-8949-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] switch boards to lwl-y
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/a9m2410/Makefile                 |    3 +--
 arch/arm/boards/a9m2440/Makefile                 |    3 +--
 arch/arm/boards/archosg9/Makefile                |    3 +--
 arch/arm/boards/at91sam9261ek/Makefile           |    4 +---
 arch/arm/boards/at91sam9263ek/Makefile           |    4 +---
 arch/arm/boards/beagle/Makefile                  |    3 +--
 arch/arm/boards/beaglebone/Makefile              |    5 +----
 arch/arm/boards/ccxmx51/Makefile                 |    7 +++----
 arch/arm/boards/chumby_falconwing/Makefile       |    3 +--
 arch/arm/boards/clep7212/Makefile                |    4 ++--
 arch/arm/boards/crystalfontz-cfa10036/Makefile   |    3 +--
 arch/arm/boards/edb93xx/Makefile                 |    4 ++--
 arch/arm/boards/efika-mx-smartbook/Makefile      |    6 ++----
 arch/arm/boards/eukrea_cpuimx25/Makefile         |    6 ++----
 arch/arm/boards/eukrea_cpuimx27/Makefile         |    3 +--
 arch/arm/boards/eukrea_cpuimx35/Makefile         |    6 ++----
 arch/arm/boards/eukrea_cpuimx51/Makefile         |    6 ++----
 arch/arm/boards/freescale-mx23-evk/Makefile      |    3 +--
 arch/arm/boards/freescale-mx25-3-stack/Makefile  |    3 +--
 arch/arm/boards/freescale-mx28-evk/Makefile      |    3 +--
 arch/arm/boards/freescale-mx35-3-stack/Makefile  |    6 ++----
 arch/arm/boards/freescale-mx51-pdk/Makefile      |    6 ++----
 arch/arm/boards/freescale-mx53-loco/Makefile     |    6 ++----
 arch/arm/boards/freescale-mx53-smd/Makefile      |    6 ++----
 arch/arm/boards/freescale-mx6-arm2/Makefile      |    7 +++----
 arch/arm/boards/freescale-mx6-sabrelite/Makefile |    7 +++----
 arch/arm/boards/freescale-mx6-sabresd/Makefile   |    7 +++----
 arch/arm/boards/friendlyarm-mini2440/Makefile    |    4 ++--
 arch/arm/boards/friendlyarm-mini6410/Makefile    |    3 +--
 arch/arm/boards/friendlyarm-tiny210/Makefile     |    4 ++--
 arch/arm/boards/friendlyarm-tiny6410/Makefile    |    5 ++---
 arch/arm/boards/guf-cupid/Makefile               |    3 +--
 arch/arm/boards/guf-neso/Makefile                |    3 +--
 arch/arm/boards/guf-vincell/Makefile             |    3 +--
 arch/arm/boards/highbank/Makefile                |    3 +--
 arch/arm/boards/imx21ads/Makefile                |    3 +--
 arch/arm/boards/imx233-olinuxino/Makefile        |    3 +--
 arch/arm/boards/imx27ads/Makefile                |    3 +--
 arch/arm/boards/karo-tx25/Makefile               |    3 +--
 arch/arm/boards/karo-tx28/Makefile               |    3 +--
 arch/arm/boards/karo-tx51/Makefile               |    6 ++----
 arch/arm/boards/karo-tx53/Makefile               |    6 ++----
 arch/arm/boards/mioa701/Makefile                 |    3 +--
 arch/arm/boards/mmccpu/Makefile                  |    4 +---
 arch/arm/boards/netx/Makefile                    |    4 ++--
 arch/arm/boards/nhk8815/Makefile                 |    3 +--
 arch/arm/boards/omap343xdsp/Makefile             |    3 +--
 arch/arm/boards/omap3evm/Makefile                |    3 +--
 arch/arm/boards/panda/Makefile                   |    3 +--
 arch/arm/boards/pcm027/Makefile                  |    3 +--
 arch/arm/boards/pcm037/Makefile                  |    3 +--
 arch/arm/boards/pcm038/Makefile                  |    4 ++--
 arch/arm/boards/pcm043/Makefile                  |    3 +--
 arch/arm/boards/pcm049/Makefile                  |    4 ++--
 arch/arm/boards/pcm051/Makefile                  |    3 +--
 arch/arm/boards/phycard-a-l1/Makefile            |    3 +--
 arch/arm/boards/phycard-a-xl2/Makefile           |    4 ++--
 arch/arm/boards/phycard-i.MX27/Makefile          |    3 +--
 arch/arm/boards/pm9261/Makefile                  |    4 +---
 arch/arm/boards/pm9263/Makefile                  |    4 +---
 arch/arm/boards/raspberry-pi/Makefile            |    3 +--
 arch/arm/boards/scb9328/Makefile                 |    3 +--
 arch/arm/boards/tny-a926x/Makefile               |    4 +---
 arch/arm/boards/toshiba-ac100/Makefile           |    3 +--
 arch/arm/boards/tqma53/Makefile                  |    6 ++----
 arch/arm/boards/usb-a926x/Makefile               |    4 +---
 arch/arm/boards/versatile/Makefile               |    3 +--
 arch/arm/boards/vexpress/Makefile                |    3 +--
 arch/arm/mach-at91/Makefile                      |    4 +---
 arch/arm/mach-clps711x/Makefile                  |    4 ++--
 arch/arm/mach-ep93xx/Makefile                    |    5 ++---
 arch/arm/mach-imx/Makefile                       |    6 +-----
 72 files changed, 102 insertions(+), 189 deletions(-)

diff --git a/arch/arm/boards/a9m2410/Makefile b/arch/arm/boards/a9m2410/Makefile
index 6842c84..4bf737c 100644
--- a/arch/arm/boards/a9m2410/Makefile
+++ b/arch/arm/boards/a9m2410/Makefile
@@ -1,4 +1,3 @@
 
-obj-y += lowlevel_init.o
-pbl-y += lowlevel_init.o
+lwl-y += lowlevel_init.o
 obj-y += a9m2410.o
diff --git a/arch/arm/boards/a9m2440/Makefile b/arch/arm/boards/a9m2440/Makefile
index 8a8f36d..f21d389 100644
--- a/arch/arm/boards/a9m2440/Makefile
+++ b/arch/arm/boards/a9m2440/Makefile
@@ -1,5 +1,4 @@
 
-obj-y += lowlevel_init.o
-pbl-y += lowlevel_init.o
+lwl-y += lowlevel_init.o
 obj-y += a9m2440.o
 obj-$(CONFIG_MACH_A9M2410DEV) += a9m2410dev.o
diff --git a/arch/arm/boards/archosg9/Makefile b/arch/arm/boards/archosg9/Makefile
index 4cc5a2e..a78956f 100644
--- a/arch/arm/boards/archosg9/Makefile
+++ b/arch/arm/boards/archosg9/Makefile
@@ -1,4 +1,3 @@
 obj-y += board.o
 obj-$(CONFIG_ARM_BOARD_APPEND_ATAG) += archos_features.o
-obj-y += lowlevel.o mux.o
-pbl-y += lowlevel.o mux.o
+lwl-y += lowlevel.o mux.o
diff --git a/arch/arm/boards/at91sam9261ek/Makefile b/arch/arm/boards/at91sam9261ek/Makefile
index 1702783..1398c26 100644
--- a/arch/arm/boards/at91sam9261ek/Makefile
+++ b/arch/arm/boards/at91sam9261ek/Makefile
@@ -1,5 +1,3 @@
 obj-y += init.o
 
-obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
-
-pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
+lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
index 1702783..1398c26 100644
--- a/arch/arm/boards/at91sam9263ek/Makefile
+++ b/arch/arm/boards/at91sam9263ek/Makefile
@@ -1,5 +1,3 @@
 obj-y += init.o
 
-obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
-
-pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
+lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/boards/beagle/Makefile b/arch/arm/boards/beagle/Makefile
index 88c223a..01c7a25 100644
--- a/arch/arm/boards/beagle/Makefile
+++ b/arch/arm/boards/beagle/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/beaglebone/Makefile b/arch/arm/boards/beaglebone/Makefile
index 3b7261c..092c31d 100644
--- a/arch/arm/boards/beaglebone/Makefile
+++ b/arch/arm/boards/beaglebone/Makefile
@@ -1,5 +1,2 @@
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
 obj-y += board.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
diff --git a/arch/arm/boards/ccxmx51/Makefile b/arch/arm/boards/ccxmx51/Makefile
index d392533..422c919 100644
--- a/arch/arm/boards/ccxmx51/Makefile
+++ b/arch/arm/boards/ccxmx51/Makefile
@@ -1,5 +1,4 @@
-obj-y					+= flash_header.o ccxmx51.o
-pbl-y					+= flash_header.o
+obj-y					+= ccxmx51.o
+lwl-y				+= flash_header.o
+lwl-y				+= lowlevel.o
 obj-$(CONFIG_MACH_CCMX51_BASEBOARD)	+= ccxmx51js.o
-obj-y					+= lowlevel.o
-pbl-y					+= lowlevel.o
diff --git a/arch/arm/boards/chumby_falconwing/Makefile b/arch/arm/boards/chumby_falconwing/Makefile
index 360b55c..cf92c6a 100644
--- a/arch/arm/boards/chumby_falconwing/Makefile
+++ b/arch/arm/boards/chumby_falconwing/Makefile
@@ -1,3 +1,2 @@
 obj-y = falconwing.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/clep7212/Makefile b/arch/arm/boards/clep7212/Makefile
index a63aeae..4b0304f 100644
--- a/arch/arm/boards/clep7212/Makefile
+++ b/arch/arm/boards/clep7212/Makefile
@@ -1,2 +1,2 @@
-obj-y += lowlevel.o clep7212.o
-pbl-y += lowlevel.o
+obj-y += clep7212.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/crystalfontz-cfa10036/Makefile b/arch/arm/boards/crystalfontz-cfa10036/Makefile
index 0b701ed..5b764a6 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/Makefile
+++ b/arch/arm/boards/crystalfontz-cfa10036/Makefile
@@ -1,3 +1,2 @@
 obj-y += cfa10036.o hwdetect.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/edb93xx/Makefile b/arch/arm/boards/edb93xx/Makefile
index 945c963..eec5ed2 100644
--- a/arch/arm/boards/edb93xx/Makefile
+++ b/arch/arm/boards/edb93xx/Makefile
@@ -1,3 +1,3 @@
 
-obj-y += edb93xx.o flash_cfg.o pll_cfg.o sdram_cfg.o
-pbl-y += edb93xx.o flash_cfg.o pll_cfg.o sdram_cfg.o
+obj-y += edb93xx.o
+lwl-y += flash_cfg.o pll_cfg.o sdram_cfg.o
diff --git a/arch/arm/boards/efika-mx-smartbook/Makefile b/arch/arm/boards/efika-mx-smartbook/Makefile
index 6ca1c06..a2c3104 100644
--- a/arch/arm/boards/efika-mx-smartbook/Makefile
+++ b/arch/arm/boards/efika-mx-smartbook/Makefile
@@ -1,5 +1,3 @@
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
 obj-y += board.o
-obj-y += flash_header.o
-pbl-y += flash_header.o
+lwl-y += lowlevel.o
+lwl-y += flash_header.o
diff --git a/arch/arm/boards/eukrea_cpuimx25/Makefile b/arch/arm/boards/eukrea_cpuimx25/Makefile
index 56ed63f..203fcfb 100644
--- a/arch/arm/boards/eukrea_cpuimx25/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx25/Makefile
@@ -16,8 +16,6 @@
 #
 #
 
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
 obj-y += eukrea_cpuimx25.o
-obj-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) += flash_header.o
-pbl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) += flash_header.o
+lwl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/eukrea_cpuimx27/Makefile b/arch/arm/boards/eukrea_cpuimx27/Makefile
index fe6d376..2c3148a 100644
--- a/arch/arm/boards/eukrea_cpuimx27/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx27/Makefile
@@ -1,4 +1,3 @@
 
-obj-y += lowlevel_init.o
-pbl-y += lowlevel_init.o
+lwl-y += lowlevel_init.o
 obj-y += eukrea_cpuimx27.o
diff --git a/arch/arm/boards/eukrea_cpuimx35/Makefile b/arch/arm/boards/eukrea_cpuimx35/Makefile
index bdf0612..227b76b 100644
--- a/arch/arm/boards/eukrea_cpuimx35/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx35/Makefile
@@ -16,8 +16,6 @@
 #
 #
 
-obj-y					+= lowlevel.o
-pbl-y					+= lowlevel.o
 obj-y					+= eukrea_cpuimx35.o
-obj-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
-pbl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
+lwl-y					+= lowlevel.o
+lwl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
diff --git a/arch/arm/boards/eukrea_cpuimx51/Makefile b/arch/arm/boards/eukrea_cpuimx51/Makefile
index 1a23797..1509c92 100644
--- a/arch/arm/boards/eukrea_cpuimx51/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx51/Makefile
@@ -1,5 +1,3 @@
 obj-y += eukrea_cpuimx51.o
-obj-y += flash_header.o
-pbl-y += flash_header.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx23-evk/Makefile b/arch/arm/boards/freescale-mx23-evk/Makefile
index 9386603..3e00262 100644
--- a/arch/arm/boards/freescale-mx23-evk/Makefile
+++ b/arch/arm/boards/freescale-mx23-evk/Makefile
@@ -1,4 +1,3 @@
 #
 obj-y := mx23-evk.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx25-3-stack/Makefile b/arch/arm/boards/freescale-mx25-3-stack/Makefile
index 2c02406..52c416e 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/Makefile
+++ b/arch/arm/boards/freescale-mx25-3-stack/Makefile
@@ -16,6 +16,5 @@
 #
 #
 
-obj-y += lowlevel_init.o
-pbl-y += lowlevel_init.o
+lwl-y += lowlevel_init.o
 obj-y += 3stack.o
diff --git a/arch/arm/boards/freescale-mx28-evk/Makefile b/arch/arm/boards/freescale-mx28-evk/Makefile
index 2039610..a74ec24 100644
--- a/arch/arm/boards/freescale-mx28-evk/Makefile
+++ b/arch/arm/boards/freescale-mx28-evk/Makefile
@@ -1,3 +1,2 @@
 obj-y += mx28-evk.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx35-3-stack/Makefile b/arch/arm/boards/freescale-mx35-3-stack/Makefile
index 3f224f6..a1110c2 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/Makefile
+++ b/arch/arm/boards/freescale-mx35-3-stack/Makefile
@@ -1,6 +1,4 @@
 
-obj-y					+= lowlevel_init.o
-pbl-y					+= lowlevel_init.o
 obj-y					+= 3stack.o
-obj-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
-pbl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
+lwl-y					+= lowlevel_init.o
+lwl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
diff --git a/arch/arm/boards/freescale-mx51-pdk/Makefile b/arch/arm/boards/freescale-mx51-pdk/Makefile
index 2f45976..d44f697 100644
--- a/arch/arm/boards/freescale-mx51-pdk/Makefile
+++ b/arch/arm/boards/freescale-mx51-pdk/Makefile
@@ -1,5 +1,3 @@
 obj-y += board.o
-obj-y += flash_header.o
-pbl-y += flash_header.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx53-loco/Makefile b/arch/arm/boards/freescale-mx53-loco/Makefile
index 2f45976..d44f697 100644
--- a/arch/arm/boards/freescale-mx53-loco/Makefile
+++ b/arch/arm/boards/freescale-mx53-loco/Makefile
@@ -1,5 +1,3 @@
 obj-y += board.o
-obj-y += flash_header.o
-pbl-y += flash_header.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx53-smd/Makefile b/arch/arm/boards/freescale-mx53-smd/Makefile
index 2f45976..d44f697 100644
--- a/arch/arm/boards/freescale-mx53-smd/Makefile
+++ b/arch/arm/boards/freescale-mx53-smd/Makefile
@@ -1,5 +1,3 @@
 obj-y += board.o
-obj-y += flash_header.o
-pbl-y += flash_header.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-arm2/Makefile b/arch/arm/boards/freescale-mx6-arm2/Makefile
index 21fb7d9..d44f697 100644
--- a/arch/arm/boards/freescale-mx6-arm2/Makefile
+++ b/arch/arm/boards/freescale-mx6-arm2/Makefile
@@ -1,4 +1,3 @@
-obj-y += board.o flash_header.o
-pbl-y += flash_header.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+obj-y += board.o
+lwl-y += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/Makefile b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
index 21fb7d9..d44f697 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/Makefile
+++ b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
@@ -1,4 +1,3 @@
-obj-y += board.o flash_header.o
-pbl-y += flash_header.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+obj-y += board.o
+lwl-y += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-sabresd/Makefile b/arch/arm/boards/freescale-mx6-sabresd/Makefile
index 21fb7d9..d44f697 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/Makefile
+++ b/arch/arm/boards/freescale-mx6-sabresd/Makefile
@@ -1,4 +1,3 @@
-obj-y += board.o flash_header.o
-pbl-y += flash_header.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+obj-y += board.o
+lwl-y += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/friendlyarm-mini2440/Makefile b/arch/arm/boards/friendlyarm-mini2440/Makefile
index f56e803..da3520c 100644
--- a/arch/arm/boards/friendlyarm-mini2440/Makefile
+++ b/arch/arm/boards/friendlyarm-mini2440/Makefile
@@ -1,3 +1,3 @@
 
-obj-y += mini2440.o lowlevel_init.o
-pbl-y += lowlevel_init.o
+obj-y += mini2440.o
+lwl-y += lowlevel_init.o
diff --git a/arch/arm/boards/friendlyarm-mini6410/Makefile b/arch/arm/boards/friendlyarm-mini6410/Makefile
index d5fa853..0710d39 100644
--- a/arch/arm/boards/friendlyarm-mini6410/Makefile
+++ b/arch/arm/boards/friendlyarm-mini6410/Makefile
@@ -1,3 +1,2 @@
 obj-y += mini6410.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/friendlyarm-tiny210/Makefile b/arch/arm/boards/friendlyarm-tiny210/Makefile
index 20060a5..7deb178 100644
--- a/arch/arm/boards/friendlyarm-tiny210/Makefile
+++ b/arch/arm/boards/friendlyarm-tiny210/Makefile
@@ -1,2 +1,2 @@
-obj-y += tiny210.o lowlevel.o
-pbl-y += lowlevel.o
+obj-y += tiny210.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/friendlyarm-tiny6410/Makefile b/arch/arm/boards/friendlyarm-tiny6410/Makefile
index eb0e0ed..bf17eaa 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/Makefile
+++ b/arch/arm/boards/friendlyarm-tiny6410/Makefile
@@ -1,4 +1,3 @@
 obj-y += tiny6410.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
-obj-$(CONFIG_MACH_TINY6410_FA) += development-board.o
+lwl-y += lowlevel.o
+lwl-$(CONFIG_MACH_TINY6410_FA) += development-board.o
diff --git a/arch/arm/boards/guf-cupid/Makefile b/arch/arm/boards/guf-cupid/Makefile
index e2e53c0..b33952c 100644
--- a/arch/arm/boards/guf-cupid/Makefile
+++ b/arch/arm/boards/guf-cupid/Makefile
@@ -16,6 +16,5 @@
 #
 #
 
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/guf-neso/Makefile b/arch/arm/boards/guf-neso/Makefile
index 89f0aba..81263cc 100644
--- a/arch/arm/boards/guf-neso/Makefile
+++ b/arch/arm/boards/guf-neso/Makefile
@@ -1,4 +1,3 @@
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
 obj-y += board.o
 obj-y += pll_init.o
diff --git a/arch/arm/boards/guf-vincell/Makefile b/arch/arm/boards/guf-vincell/Makefile
index 8f4f978..aa30b7f 100644
--- a/arch/arm/boards/guf-vincell/Makefile
+++ b/arch/arm/boards/guf-vincell/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-obj-y += flash_header.o lowlevel.o
-pbl-y += flash_header.o lowlevel.o
+lwl-y += flash_header.o lowlevel.o
diff --git a/arch/arm/boards/highbank/Makefile b/arch/arm/boards/highbank/Makefile
index 98921a4..e11fd5b 100644
--- a/arch/arm/boards/highbank/Makefile
+++ b/arch/arm/boards/highbank/Makefile
@@ -1,4 +1,3 @@
 obj-y += init.o
 
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/imx21ads/Makefile b/arch/arm/boards/imx21ads/Makefile
index e18f7d9..a43425b 100644
--- a/arch/arm/boards/imx21ads/Makefile
+++ b/arch/arm/boards/imx21ads/Makefile
@@ -1,3 +1,2 @@
-obj-y += lowlevel_init.o
-pbl-y += lowlevel_init.o
+lwl-y += lowlevel_init.o
 obj-y += imx21ads.o
diff --git a/arch/arm/boards/imx233-olinuxino/Makefile b/arch/arm/boards/imx233-olinuxino/Makefile
index b8d9223..644f7e5 100644
--- a/arch/arm/boards/imx233-olinuxino/Makefile
+++ b/arch/arm/boards/imx233-olinuxino/Makefile
@@ -1,3 +1,2 @@
 obj-y = imx23-olinuxino.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/imx27ads/Makefile b/arch/arm/boards/imx27ads/Makefile
index 88d1baf..398db9b 100644
--- a/arch/arm/boards/imx27ads/Makefile
+++ b/arch/arm/boards/imx27ads/Makefile
@@ -1,4 +1,3 @@
 
-obj-y += lowlevel_init.o
-pbl-y += lowlevel_init.o
+lwl-y += lowlevel_init.o
 obj-y += imx27ads.o
diff --git a/arch/arm/boards/karo-tx25/Makefile b/arch/arm/boards/karo-tx25/Makefile
index 62a546e..58453b6 100644
--- a/arch/arm/boards/karo-tx25/Makefile
+++ b/arch/arm/boards/karo-tx25/Makefile
@@ -16,6 +16,5 @@
 #
 #
 
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/karo-tx28/Makefile b/arch/arm/boards/karo-tx28/Makefile
index c90bf36..c7d7398 100644
--- a/arch/arm/boards/karo-tx28/Makefile
+++ b/arch/arm/boards/karo-tx28/Makefile
@@ -1,4 +1,3 @@
 obj-y += tx28.o
 obj-$(CONFIG_MACH_TX28STK5) += tx28-stk5.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/karo-tx51/Makefile b/arch/arm/boards/karo-tx51/Makefile
index 00f2b05..988abea 100644
--- a/arch/arm/boards/karo-tx51/Makefile
+++ b/arch/arm/boards/karo-tx51/Makefile
@@ -1,5 +1,3 @@
 obj-y += tx51.o
-obj-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) += flash_header.o
-pbl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) += flash_header.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/karo-tx53/Makefile b/arch/arm/boards/karo-tx53/Makefile
index 2f45976..d44f697 100644
--- a/arch/arm/boards/karo-tx53/Makefile
+++ b/arch/arm/boards/karo-tx53/Makefile
@@ -1,5 +1,3 @@
 obj-y += board.o
-obj-y += flash_header.o
-pbl-y += flash_header.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/mioa701/Makefile b/arch/arm/boards/mioa701/Makefile
index 88c223a..01c7a25 100644
--- a/arch/arm/boards/mioa701/Makefile
+++ b/arch/arm/boards/mioa701/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/mmccpu/Makefile b/arch/arm/boards/mmccpu/Makefile
index 1702783..1398c26 100644
--- a/arch/arm/boards/mmccpu/Makefile
+++ b/arch/arm/boards/mmccpu/Makefile
@@ -1,5 +1,3 @@
 obj-y += init.o
 
-obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
-
-pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
+lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/boards/netx/Makefile b/arch/arm/boards/netx/Makefile
index ad694cd..90979ac 100644
--- a/arch/arm/boards/netx/Makefile
+++ b/arch/arm/boards/netx/Makefile
@@ -1,2 +1,2 @@
-obj-y += netx.o platform.o
-pbl-y += platform.o
+obj-y += netx.o
+lwl-y += platform.o
diff --git a/arch/arm/boards/nhk8815/Makefile b/arch/arm/boards/nhk8815/Makefile
index dbb2a71..f429852 100644
--- a/arch/arm/boards/nhk8815/Makefile
+++ b/arch/arm/boards/nhk8815/Makefile
@@ -1,3 +1,2 @@
 obj-y += setup.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/omap343xdsp/Makefile b/arch/arm/boards/omap343xdsp/Makefile
index 88c223a..01c7a25 100644
--- a/arch/arm/boards/omap343xdsp/Makefile
+++ b/arch/arm/boards/omap343xdsp/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/omap3evm/Makefile b/arch/arm/boards/omap3evm/Makefile
index 88c223a..01c7a25 100644
--- a/arch/arm/boards/omap3evm/Makefile
+++ b/arch/arm/boards/omap3evm/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/panda/Makefile b/arch/arm/boards/panda/Makefile
index 53b9d5b..5d4eb10 100644
--- a/arch/arm/boards/panda/Makefile
+++ b/arch/arm/boards/panda/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-obj-y += lowlevel.o mux.o
-pbl-y += lowlevel.o mux.o
+lwl-y += lowlevel.o mux.o
diff --git a/arch/arm/boards/pcm027/Makefile b/arch/arm/boards/pcm027/Makefile
index 1602c0a..040cf93 100644
--- a/arch/arm/boards/pcm027/Makefile
+++ b/arch/arm/boards/pcm027/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-obj-y += lowlevel_init.o
-pbl-y += lowlevel_init.o
+lwl-y += lowlevel_init.o
diff --git a/arch/arm/boards/pcm037/Makefile b/arch/arm/boards/pcm037/Makefile
index 859501c..6c9ca69 100644
--- a/arch/arm/boards/pcm037/Makefile
+++ b/arch/arm/boards/pcm037/Makefile
@@ -16,6 +16,5 @@
 #
 #
 
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
 obj-y += pcm037.o
diff --git a/arch/arm/boards/pcm038/Makefile b/arch/arm/boards/pcm038/Makefile
index 2c1b74d..bfb55d3 100644
--- a/arch/arm/boards/pcm038/Makefile
+++ b/arch/arm/boards/pcm038/Makefile
@@ -1,3 +1,3 @@
-obj-y					+= lowlevel.o pcm038.o
-pbl-y					+= lowlevel.o
+obj-y					+= pcm038.o
+lwl-y				+= lowlevel.o
 obj-$(CONFIG_MACH_PCM970_BASEBOARD)	+= pcm970.o
diff --git a/arch/arm/boards/pcm043/Makefile b/arch/arm/boards/pcm043/Makefile
index 08d9a36..72275ea 100644
--- a/arch/arm/boards/pcm043/Makefile
+++ b/arch/arm/boards/pcm043/Makefile
@@ -16,6 +16,5 @@
 #
 #
 
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
 obj-y += pcm043.o
diff --git a/arch/arm/boards/pcm049/Makefile b/arch/arm/boards/pcm049/Makefile
index df3764c..5d4eb10 100644
--- a/arch/arm/boards/pcm049/Makefile
+++ b/arch/arm/boards/pcm049/Makefile
@@ -1,2 +1,2 @@
-obj-y += board.o mux.o lowlevel.o
-pbl-y += lowlevel.o mux.o
+obj-y += board.o
+lwl-y += lowlevel.o mux.o
diff --git a/arch/arm/boards/pcm051/Makefile b/arch/arm/boards/pcm051/Makefile
index 8a571d9..092c31d 100644
--- a/arch/arm/boards/pcm051/Makefile
+++ b/arch/arm/boards/pcm051/Makefile
@@ -1,3 +1,2 @@
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/phycard-a-l1/Makefile b/arch/arm/boards/phycard-a-l1/Makefile
index 5565c3d..a71feec 100644
--- a/arch/arm/boards/phycard-a-l1/Makefile
+++ b/arch/arm/boards/phycard-a-l1/Makefile
@@ -15,5 +15,4 @@
 #
 
 obj-y += pca-a-l1.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/phycard-a-xl2/Makefile b/arch/arm/boards/phycard-a-xl2/Makefile
index ae02089..64782e0 100644
--- a/arch/arm/boards/phycard-a-xl2/Makefile
+++ b/arch/arm/boards/phycard-a-xl2/Makefile
@@ -13,5 +13,5 @@
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
 #
-obj-y += pca-a-xl2.o mux.o lowlevel.o
-pbl-y += mux.o lowlevel.o
+obj-y += pca-a-xl2.o
+lwl-y += mux.o lowlevel.o
diff --git a/arch/arm/boards/phycard-i.MX27/Makefile b/arch/arm/boards/phycard-i.MX27/Makefile
index 60253e5..bbff289 100644
--- a/arch/arm/boards/phycard-i.MX27/Makefile
+++ b/arch/arm/boards/phycard-i.MX27/Makefile
@@ -1,4 +1,3 @@
 
-obj-y += lowlevel_init.o
-pbl-y += lowlevel_init.o
+lwl-y += lowlevel_init.o
 obj-y += pca100.o
diff --git a/arch/arm/boards/pm9261/Makefile b/arch/arm/boards/pm9261/Makefile
index 1702783..1398c26 100644
--- a/arch/arm/boards/pm9261/Makefile
+++ b/arch/arm/boards/pm9261/Makefile
@@ -1,5 +1,3 @@
 obj-y += init.o
 
-obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
-
-pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
+lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/boards/pm9263/Makefile b/arch/arm/boards/pm9263/Makefile
index 1702783..1398c26 100644
--- a/arch/arm/boards/pm9263/Makefile
+++ b/arch/arm/boards/pm9263/Makefile
@@ -1,5 +1,3 @@
 obj-y += init.o
 
-obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
-
-pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
+lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/boards/raspberry-pi/Makefile b/arch/arm/boards/raspberry-pi/Makefile
index 825b30b..978383a 100644
--- a/arch/arm/boards/raspberry-pi/Makefile
+++ b/arch/arm/boards/raspberry-pi/Makefile
@@ -1,3 +1,2 @@
 obj-$(CONFIG_MACH_RPI) += rpi.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/scb9328/Makefile b/arch/arm/boards/scb9328/Makefile
index 69d3970..002f218 100644
--- a/arch/arm/boards/scb9328/Makefile
+++ b/arch/arm/boards/scb9328/Makefile
@@ -1,4 +1,3 @@
 
-obj-y += lowlevel_init.o
-pbl-y += lowlevel_init.o
+lwl-y += lowlevel_init.o
 obj-y += scb9328.o
diff --git a/arch/arm/boards/tny-a926x/Makefile b/arch/arm/boards/tny-a926x/Makefile
index caa7163..45b10ec 100644
--- a/arch/arm/boards/tny-a926x/Makefile
+++ b/arch/arm/boards/tny-a926x/Makefile
@@ -5,6 +5,4 @@ obj-$(CONFIG_AT91_BOOTSTRAP) += $(bootstrap-y)
 
 lowlevel_init-$(CONFIG_MACH_TNY_A9263) = tny_a9263_lowlevel_init.o
 
-obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
-
-pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
+lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
diff --git a/arch/arm/boards/toshiba-ac100/Makefile b/arch/arm/boards/toshiba-ac100/Makefile
index 5b74351..4d321e1 100644
--- a/arch/arm/boards/toshiba-ac100/Makefile
+++ b/arch/arm/boards/toshiba-ac100/Makefile
@@ -1,4 +1,3 @@
 obj-y += board.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/tqma53/Makefile b/arch/arm/boards/tqma53/Makefile
index 2f45976..d44f697 100644
--- a/arch/arm/boards/tqma53/Makefile
+++ b/arch/arm/boards/tqma53/Makefile
@@ -1,5 +1,3 @@
 obj-y += board.o
-obj-y += flash_header.o
-pbl-y += flash_header.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/usb-a926x/Makefile b/arch/arm/boards/usb-a926x/Makefile
index 88f163f..f1370a4 100644
--- a/arch/arm/boards/usb-a926x/Makefile
+++ b/arch/arm/boards/usb-a926x/Makefile
@@ -5,6 +5,4 @@ obj-$(CONFIG_AT91_BOOTSTRAP) += $(bootstrap-y)
 
 lowlevel_init-$(CONFIG_MACH_USB_A9263) = usb_a9263_lowlevel_init.o
 
-obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
-
-pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
+lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
diff --git a/arch/arm/boards/versatile/Makefile b/arch/arm/boards/versatile/Makefile
index 9dc6869..89232a7 100644
--- a/arch/arm/boards/versatile/Makefile
+++ b/arch/arm/boards/versatile/Makefile
@@ -1,3 +1,2 @@
 obj-$(CONFIG_MACH_VERSATILEPB) += versatilepb.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/vexpress/Makefile b/arch/arm/boards/vexpress/Makefile
index 98921a4..e11fd5b 100644
--- a/arch/arm/boards/vexpress/Makefile
+++ b/arch/arm/boards/vexpress/Makefile
@@ -1,4 +1,3 @@
 obj-y += init.o
 
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 53ca570..f098e0e 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -12,9 +12,7 @@ lowlevel_init-$(CONFIG_SOC_AT91SAM9X5) += at91sam9x5_lowlevel_init.o
 lowlevel_init-$(CONFIG_SOC_AT91SAM9N12) += at91sam9n12_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_SAMA5D3) += sama5d3_lowlevel_init.o
-obj-y += $(lowlevel_init-y)
-
-pbl-y += $(lowlevel_init-y)
+lwl-y += $(lowlevel_init-y)
 
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
diff --git a/arch/arm/mach-clps711x/Makefile b/arch/arm/mach-clps711x/Makefile
index 69a4a3c..4552534 100644
--- a/arch/arm/mach-clps711x/Makefile
+++ b/arch/arm/mach-clps711x/Makefile
@@ -1,2 +1,2 @@
-obj-y += clock.o devices.o lowlevel.o reset.o
-pbl-y += lowlevel.o
+obj-y += clock.o devices.o reset.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/mach-ep93xx/Makefile b/arch/arm/mach-ep93xx/Makefile
index 0ff0b66..fc0cb1a 100644
--- a/arch/arm/mach-ep93xx/Makefile
+++ b/arch/arm/mach-ep93xx/Makefile
@@ -1,4 +1,3 @@
-obj-y += clocksource.o gpio.o led.o header.o
+obj-y += clocksource.o gpio.o header.o
 
-obj-y += lowlevel_init.o
-pbl-y += lowlevel_init.o led.o
+lwl-y += lowlevel_init.o led.o
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 1c28035..4adf522 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -11,11 +11,7 @@ pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
 obj-$(CONFIG_ARCH_IMX6) += imx6.o iomux-v3.o usb-imx6.o clk-imx6.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
-ifdef CONFIG_PBL_IMAGE
-pbl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
-else
-obj-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
-endif
+lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
 obj-$(CONFIG_COMMON_CLK) += clk-pllv1.o clk-pllv2.o clk-pllv3.o clk-pfd.o
 obj-y += devices.o imx.o esdctl.o
 obj-y += boot.o
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
