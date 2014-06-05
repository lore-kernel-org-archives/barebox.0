Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WsUeU-0003Zf-4c
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 10:12:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jun 2014 12:11:42 +0200
Message-Id: <1401963102-11295-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: AM335x: Beaglebone: Use stripped down devicetree for MLO
To: barebox@lists.infradead.org

The beaglebone white and black have different devicetrees. Both
get linked into the MLO which makes it too big. Use a devicetree
generated from am335x-bone-common.dtsi which both board variants
can share. This reduces the binary size by about 30k.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/lowlevel.c | 10 +++++-----
 arch/arm/dts/Makefile                 |  3 ++-
 arch/arm/dts/am335x-bone-common.dts   |  9 +++++++++
 3 files changed, 16 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/dts/am335x-bone-common.dts

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 350e3ff..a742bbf 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -104,6 +104,7 @@ static const struct am33xx_emif_regs ddr3_regs = {
 };
 
 extern char __dtb_am335x_boneblack_start[];
+extern char __dtb_am335x_bone_common_start[];
 extern char __dtb_am335x_bone_start[];
 
 /**
@@ -120,13 +121,12 @@ static noinline int beaglebone_sram_init(void)
 	uint32_t sdram_size;
 	void *fdt;
 
-	if (is_beaglebone_black()) {
+	fdt = __dtb_am335x_bone_common_start;
+
+	if (is_beaglebone_black())
 		sdram_size = SZ_512M;
-		fdt = __dtb_am335x_boneblack_start;
-	} else {
+	else
 		sdram_size = SZ_256M;
-		fdt = __dtb_am335x_bone_start;
-	}
 
 	/* WDT1 is already running when the bootloader gets control
 	 * Disable it to avoid "random" resets
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index ef65302..bb6c622 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,6 +1,7 @@
 dtb-$(CONFIG_ARCH_AM33XX) += \
 	am335x-bone.dtb \
 	am335x-boneblack.dtb \
+	am335x-bone-common.dtb \
 	am335x-phytec-phycore.dtb
 dtb-$(CONFIG_ARCH_IMX25) += imx25-karo-tx25.dtb
 dtb-$(CONFIG_ARCH_IMX27) += imx27-phytec-phycard-s-rdk-bb.dtb
@@ -43,7 +44,7 @@ dtb-$(CONFIG_ARCH_TEGRA) += \
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 
-pbl-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o
+pbl-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
 pbl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
 pbl-$(CONFIG_MACH_EMBEST_RIOTBOARD) += imx6s-riotboard.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
diff --git a/arch/arm/dts/am335x-bone-common.dts b/arch/arm/dts/am335x-bone-common.dts
new file mode 100644
index 0000000..bbc5561
--- /dev/null
+++ b/arch/arm/dts/am335x-bone-common.dts
@@ -0,0 +1,9 @@
+/dts-v1/;
+
+#include "am33xx.dtsi"
+#include "am335x-bone-common.dtsi"
+
+/ {
+	model = "TI AM335x BeagleBone";
+	compatible = "ti,am335x-bone", "ti,am33xx";
+};
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
