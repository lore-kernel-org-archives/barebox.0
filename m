Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCpSj-0002yH-QT
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:28:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 31 Jul 2014 14:27:34 +0200
Message-Id: <1406809657-2489-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406809657-2489-1-git-send-email-s.hauer@pengutronix.de>
References: <1406809657-2489-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] make: build device trees with obj-dtb-y and pbl-dtb-y
To: barebox@lists.infradead.org

To build an object file from a device tree currently we currently
have to add them to the Makefile twice, once to dtb-y and once to
obj-y. This patch introduces obj-dtb-y and pbl-dtb-y to directly
compile a device tree object file for inclusion in the barebox binary
or the pbl respectively.
The now unneeded dtb-y targets are removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/Makefile  | 126 +++++++++++++++----------------------------------
 arch/mips/dts/Makefile |  10 ----
 scripts/Makefile.lib   |   7 +++
 3 files changed, 45 insertions(+), 98 deletions(-)

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 72ad5e6..2ee3875 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,93 +1,43 @@
-dtb-$(CONFIG_ARCH_AM33XX) += \
-	am335x-bone.dtb \
-	am335x-boneblack.dtb \
-	am335x-bone-common.dtb \
-	am335x-phytec-phycore.dtb
-dtb-$(CONFIG_ARCH_IMX25) += imx25-karo-tx25.dtb
-dtb-$(CONFIG_ARCH_IMX27) += imx27-phytec-phycard-s-rdk-bb.dtb \
-	imx27-phytec-phycore-rdk.dtb
-dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb \
-	imx51-genesi-efika-sb.dtb
-dtb-$(CONFIG_ARCH_IMX53) += imx53-mba53.dtb \
-	imx53-qsb.dtb \
-	imx53-qsrb.dtb \
-	imx53-voipac-bsb.dtb
-dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
-	imx6dl-dfi-fs700-m60-6s.dtb \
-	imx6q-dfi-fs700-m60-6q.dtb \
-	imx6q-dmo-edmqmx6.dtb \
-	imx6q-sabrelite.dtb \
-	imx6dl-sabrelite.dtb \
-	imx6q-sabresd.dtb \
-	imx6dl-mba6x.dtb \
-	imx6q-mba6x.dtb \
-	imx6dl-phytec-pbab01.dtb \
-	imx6q-phytec-pbab01.dtb \
-	imx6s-phytec-pbab01.dtb \
-	imx6dl-hummingboard.dtb \
-	imx6q-guf-santaro.dtb \
-	imx6q-nitrogen6x.dtb \
-	imx6dl-nitrogen6x.dtb \
-	imx6q-udoo.dtb \
-	imx6q-var-custom.dtb \
-	imx6s-riotboard.dtb \
-	imx6q-phytec-pbaa03.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3188-radxarock.dtb
-dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb \
-	socfpga_cyclone5_socrates.dtb
-dtb-$(CONFIG_ARCH_TEGRA) += \
-	tegra20-colibri-iris.dtb \
-	tegra20-paz00.dtb \
-	tegra30-beaver.dtb \
-	tegra124-jetson-tk1.dtb
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
-obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
+obj-dtb-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 
-pbl-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
-pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
-pbl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
-pbl-$(CONFIG_MACH_EMBEST_RIOTBOARD) += imx6s-riotboard.dtb.o
-pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
-pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
-pbl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
-pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
-pbl-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
-pbl-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
-pbl-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
-pbl-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
-pbl-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
-pbl-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
-pbl-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
-pbl-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
-pbl-$(CONFIG_MACH_PCAAXL3) += imx6q-phytec-pbaa03.dtb.o
-pbl-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
-pbl-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
-pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o
-pbl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
-pbl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
-pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
-pbl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
-pbl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
-pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
-pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
-pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
-pbl-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o
-pbl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
-pbl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
-pbl-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
-pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
-pbl-$(CONFIG_MACH_TX25) += imx25-karo-tx25.dtb.o
-pbl-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
-pbl-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
-pbl-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
-
-.SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
-.SECONDARY: $(patsubst %,$(obj)/%.S,$(dtb-y))
-
-targets += dtbs
-targets += $(dtb-y)
-
-extra-y += $(dtb-y)
+pbl-dtb-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
+pbl-dtb-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
+pbl-dtb-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
+pbl-dtb-$(CONFIG_MACH_EMBEST_RIOTBOARD) += imx6s-riotboard.dtb.o
+pbl-dtb-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
+pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
+pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
+pbl-dtb-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
+pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
+pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
+pbl-dtb-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
+pbl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
+pbl-dtb-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
+pbl-dtb-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
+pbl-dtb-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
+pbl-dtb-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
+pbl-dtb-$(CONFIG_MACH_PCAAXL3) += imx6q-phytec-pbaa03.dtb.o
+pbl-dtb-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
+pbl-dtb-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
+pbl-dtb-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o
+pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
+pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
+pbl-dtb-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
+pbl-dtb-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
+pbl-dtb-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
+pbl-dtb-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
+pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
+pbl-dtb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
+pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o
+pbl-dtb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
+pbl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
+pbl-dtb-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
+pbl-dtb-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
+pbl-dtb-$(CONFIG_MACH_TX25) += imx25-karo-tx25.dtb.o
+pbl-dtb-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
+pbl-dtb-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
+pbl-dtb-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
diff --git a/arch/mips/dts/Makefile b/arch/mips/dts/Makefile
index 7ccb2f8..6d6c9a3 100644
--- a/arch/mips/dts/Makefile
+++ b/arch/mips/dts/Makefile
@@ -2,14 +2,4 @@
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 
-dtb-y += ${BUILTIN_DTB}.dtb
-
-.SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
-.SECONDARY: $(patsubst %,$(obj)/%.S,$(dtb-y))
-
-targets += dtbs
-targets += $(dtb-y)
-
-extra-y += $(dtb-y)
-
 clean-files := *.dtb *.dtb.S
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 0851870..0a6302b 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -14,6 +14,13 @@ obj-m := $(filter-out $(obj-y),$(obj-m))
 lib-y := $(filter-out $(obj-y), $(sort $(lib-y) $(lib-m)))
 
 
+pbl-y		+= $(pbl-dtb-y)
+obj-y		+= $(obj-dtb-y)
+extra-y		+= $(patsubst %.dtb.o,%.dtb.S,$(obj-dtb-y))
+extra-y		+= $(patsubst %.dtb.o,%.dtb,$(obj-dtb-y))
+extra-y		+= $(patsubst %.dtb.o,%.dtb.S,$(pbl-dtb-y))
+extra-y		+= $(patsubst %.dtb.o,%.dtb,$(pbl-dtb-y))
+
 # Handle objects in subdirs
 # ---------------------------------------------------------------------------
 # o if we encounter foo/ in $(obj-y), replace it by foo/built-in.o
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
