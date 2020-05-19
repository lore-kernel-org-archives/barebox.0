Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jawS3-00087S-1c
 for barebox@lists.infradead.org; Tue, 19 May 2020 07:14:15 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 19 May 2020 16:13:46 +0900
Message-Id: <20200519071353.395493-2-masahiroy@kernel.org>
In-Reply-To: <20200519071353.395493-1-masahiroy@kernel.org>
References: <20200519071353.395493-1-masahiroy@kernel.org>
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
Subject: [PATCH 2/8] kbuild: remove obj-dtb-y, pbl-dtb-y, lwl-dtb-y syntax
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

The embedded DTBs are compiled by the chain of pattern rules as follows:

  %.dts -> %.dtb -> %.dtb.S -> %.dtb.o       for barebox proper
  %.dts -> %.dtb -> %.dtb.S -> %.dtb.pbl.o   for pbl

Barebox introduced {obj,pbl,lwl}-dtb-y syntax to put the intermediate
files into extra-y. The purposes of doing so were:

 [1] prevent GNU Make from deleting the intermediate files
 [2] include .*.cmd files

In contrast, Linux does not use a special syntax for embedding DTBs
into the kernel.

For example, as you see in arch/sh/boot/dts/Makefile of Linux 5.6,

   obj-y += <basename>.dtb.o

... just works.

This is because scripts/Kbuild.include specifies .SECONDARY to cater
to [1], and scripts/Makefile.build adds the intermediates to 'targets'
to deal with [2].

Barebox had already imported the same code from Linux, so you can use
obj-y instead of obj-dtb-y, like Linux.

pbl-dtb-y and lwl-dtb-y are barebox-specific cases, so I added the
%.dtb.pbl.o pattern to intermediate_targets.

Going forward, please use obj-y, pbl-y, or lwl-y.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/arm/dts/Makefile   | 212 ++++++++++++++++++++--------------------
 arch/kvx/dts/Makefile   |   4 +-
 arch/mips/dts/Makefile  |  24 ++---
 arch/riscv/dts/Makefile |   4 +-
 scripts/Makefile.build  |   2 +
 scripts/Makefile.lib    |  14 +--
 6 files changed, 126 insertions(+), 134 deletions(-)

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 1aeaa61e0..d61a05231 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -2,49 +2,49 @@
 # created.
 obj- += dummy.o
 
-lwl-dtb-$(CONFIG_MACH_ADVANTECH_ROM_742X) += imx6dl-advantech-rom-7421.dtb.o
-lwl-dtb-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
-lwl-dtb-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
-lwl-dtb-$(CONFIG_MACH_CANON_A1100) += canon-a1100.dtb.o
-lwl-dtb-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
-lwl-dtb-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
-lwl-dtb-$(CONFIG_MACH_DUCKBILL) += imx28-duckbill.dtb.o
-lwl-dtb-$(CONFIG_MACH_KINDLE_MX50) += imx50-kindle-d01100.dtb.o imx50-kindle-d01200.dtb.o imx50-kindle-ey21.dtb.o
-lwl-dtb-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
-lwl-dtb-$(CONFIG_MACH_ELTEC_HIPERCAM) += imx6dl-eltec-hipercam.dtb.o
-lwl-dtb-$(CONFIG_MACH_EMBEST_MARSBOARD) += imx6q-marsboard.dtb.o
-lwl-dtb-$(CONFIG_MACH_EMBEST_RIOTBOARD) += imx6s-riotboard.dtb.o
-lwl-dtb-$(CONFIG_MACH_EMBEDSKY_E9) += imx6q-embedsky-e9.dtb.o
-lwl-dtb-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
-lwl-dtb-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
-lwl-dtb-$(CONFIG_MACH_TX53) += imx53-tx53-xx30.dtb.o imx53-tx53-1011.dtb.o
-lwl-dtb-$(CONFIG_MACH_CCMX51) += imx51-ccxmx51.dtb.o
-lwl-dtb-$(CONFIG_MACH_CCMX53) += imx53-ccxmx53.dtb.o
-lwl-dtb-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += imx6ul-ccimx6ulsbcpro.dtb.o
-lwl-dtb-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
-lwl-dtb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
-lwl-dtb-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
-lwl-dtb-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_GRINN_LITEBOARD) += imx6ul-liteboard.dtb.o
-lwl-dtb-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
-lwl-dtb-$(CONFIG_MACH_GUF_VINCELL) += imx53-guf-vincell.dtb.o imx53-guf-vincell-lt.dtb.o
-lwl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
-lwl-dtb-$(CONFIG_MACH_KONTRON_SAMX6I) += imx6q-samx6i.dtb.o \
+lwl-$(CONFIG_MACH_ADVANTECH_ROM_742X) += imx6dl-advantech-rom-7421.dtb.o
+lwl-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
+lwl-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
+lwl-$(CONFIG_MACH_CANON_A1100) += canon-a1100.dtb.o
+lwl-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
+lwl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
+lwl-$(CONFIG_MACH_DUCKBILL) += imx28-duckbill.dtb.o
+lwl-$(CONFIG_MACH_KINDLE_MX50) += imx50-kindle-d01100.dtb.o imx50-kindle-d01200.dtb.o imx50-kindle-ey21.dtb.o
+lwl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
+lwl-$(CONFIG_MACH_ELTEC_HIPERCAM) += imx6dl-eltec-hipercam.dtb.o
+lwl-$(CONFIG_MACH_EMBEST_MARSBOARD) += imx6q-marsboard.dtb.o
+lwl-$(CONFIG_MACH_EMBEST_RIOTBOARD) += imx6s-riotboard.dtb.o
+lwl-$(CONFIG_MACH_EMBEDSKY_E9) += imx6q-embedsky-e9.dtb.o
+lwl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
+lwl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
+lwl-$(CONFIG_MACH_TX53) += imx53-tx53-xx30.dtb.o imx53-tx53-1011.dtb.o
+lwl-$(CONFIG_MACH_CCMX51) += imx51-ccxmx51.dtb.o
+lwl-$(CONFIG_MACH_CCMX53) += imx53-ccxmx53.dtb.o
+lwl-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += imx6ul-ccimx6ulsbcpro.dtb.o
+lwl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
+lwl-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
+lwl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
+lwl-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
+lwl-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
+lwl-$(CONFIG_MACH_GRINN_LITEBOARD) += imx6ul-liteboard.dtb.o
+lwl-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
+lwl-$(CONFIG_MACH_GUF_VINCELL) += imx53-guf-vincell.dtb.o imx53-guf-vincell-lt.dtb.o
+lwl-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
+lwl-$(CONFIG_MACH_KONTRON_SAMX6I) += imx6q-samx6i.dtb.o \
 					imx6dl-samx6i.dtb.o
-lwl-dtb-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB) += armada-xp-db-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_MB7707) += module-mb7707.dtb.o
-lwl-dtb-$(CONFIG_MACH_MX28EVK) += imx28-evk.dtb.o
-lwl-dtb-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_NETGEAR_RN2120) += armada-xp-rn2120-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_NITROGEN6) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
-lwl-dtb-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
-lwl-dtb-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
-lwl-dtb-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
-lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am335x-phytec-phyflex-som-mlo.dtb.o \
+lwl-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
+lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
+lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB) += armada-xp-db-bb.dtb.o
+lwl-$(CONFIG_MACH_MB7707) += module-mb7707.dtb.o
+lwl-$(CONFIG_MACH_MX28EVK) += imx28-evk.dtb.o
+lwl-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
+lwl-$(CONFIG_MACH_NETGEAR_RN2120) += armada-xp-rn2120-bb.dtb.o
+lwl-$(CONFIG_MACH_NITROGEN6) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
+lwl-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
+lwl-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
+lwl-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
+lwl-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
+lwl-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am335x-phytec-phyflex-som-mlo.dtb.o \
 	am335x-phytec-phyflex-som-no-spi.dtb.o am335x-phytec-phyflex-som-no-eeprom.dtb.o \
 	am335x-phytec-phyflex-som-no-spi-no-eeprom.dtb.o \
 	am335x-phytec-phycore-som-mlo.dtb.o \
@@ -52,7 +52,7 @@ lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am33
 	am335x-phytec-phycore-som-nand-no-eeprom.dtb.o am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dtb.o \
 	am335x-phytec-phycore-som-emmc.dtb.o \
 	am335x-phytec-phycard-som.dtb.o am335x-phytec-phycard-som-mlo.dtb.o
-lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-phycard.dtb.o \
+lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-phycard.dtb.o \
 				imx6s-phytec-pbab01.dtb.o \
 				imx6dl-phytec-pbab01.dtb.o \
 				imx6q-phytec-pbab01.dtb.o \
@@ -70,65 +70,65 @@ lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-phycard.dtb.o \
 				imx6ull-phytec-phycore-som-lc-nand.dtb.o \
 				imx6ull-phytec-phycore-som-nand.dtb.o \
 				imx6ull-phytec-phycore-som-emmc.dtb.o
-lwl-dtb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
-lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
-lwl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
-lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
-lwl-dtb-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
-lwl-dtb-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
-lwl-dtb-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
-lwl-dtb-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
-lwl-dtb-$(CONFIG_MACH_RPI_CM3) += bcm2837-rpi-cm3.dtb.o
-lwl-dtb-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
-lwl-dtb-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
-lwl-dtb-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
-lwl-dtb-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += socfpga_cyclone5_socdk.dtb.o
-lwl-dtb-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
-lwl-dtb-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += socfpga_arria10_achilles.dtb.o
-lwl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += socfpga_cyclone5_de0_nano_soc.dtb.o
-lwl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
-lwl-dtb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o \
+lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
+lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
+lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
+lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
+lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
+lwl-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
+lwl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
+lwl-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
+lwl-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
+lwl-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
+lwl-$(CONFIG_MACH_RPI_CM3) += bcm2837-rpi-cm3.dtb.o
+lwl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
+lwl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
+lwl-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
+lwl-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += socfpga_cyclone5_socdk.dtb.o
+lwl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
+lwl-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += socfpga_arria10_achilles.dtb.o
+lwl-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += socfpga_cyclone5_de0_nano_soc.dtb.o
+lwl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
+lwl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
+lwl-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o \
 				imx6dl-hummingboard2.dtb.o imx6q-hummingboard2.dtb.o \
 				imx6q-h100.dtb.o
-lwl-dtb-$(CONFIG_MACH_STM32MP157C_DK2) += stm32mp157c-dk2.dtb.o
-lwl-dtb-$(CONFIG_MACH_LXA_MC1) += stm32mp157c-lxa-mc1.dtb.o
-lwl-dtb-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
-lwl-dtb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
-lwl-dtb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
-lwl-dtb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += imx6ull-14x14-evk.dtb.o
-lwl-dtb-$(CONFIG_MACH_NXP_IMX8MM_EVK) += imx8mm-evk.dtb.o
-lwl-dtb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
-lwl-dtb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
-lwl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
-lwl-dtb-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
-lwl-dtb-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
-lwl-dtb-$(CONFIG_MACH_TX25) += imx25-karo-tx25.dtb.o
-lwl-dtb-$(CONFIG_MACH_TX6X) += imx6dl-tx6u.dtb.o
-lwl-dtb-$(CONFIG_MACH_TX6X) += imx6q-tx6q.dtb.o
-lwl-dtb-$(CONFIG_MACH_TURRIS_OMNIA) += armada-385-turris-omnia-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
-lwl-dtb-$(CONFIG_MACH_UDOO_NEO) += imx6sx-udoo-neo-full.dtb.o
-lwl-dtb-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
-lwl-dtb-$(CONFIG_MACH_VERSATILEPB) += versatile-pb.dtb.o
-lwl-dtb-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca9.dtb.o
-lwl-dtb-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca15.dtb.o
-lwl-dtb-$(CONFIG_MACH_VIRT2REAL) += virt2real.dtb.o
-lwl-dtb-$(CONFIG_MACH_VSCOM_BALTOS) += am335x-baltos-minimal.dtb.o
-lwl-dtb-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
-lwl-dtb-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
-lwl-dtb-$(CONFIG_MACH_ZII_RDU1) +=	\
+lwl-$(CONFIG_MACH_STM32MP157C_DK2) += stm32mp157c-dk2.dtb.o
+lwl-$(CONFIG_MACH_LXA_MC1) += stm32mp157c-lxa-mc1.dtb.o
+lwl-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
+lwl-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
+lwl-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
+lwl-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += imx6ull-14x14-evk.dtb.o
+lwl-$(CONFIG_MACH_NXP_IMX8MM_EVK) += imx8mm-evk.dtb.o
+lwl-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
+lwl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
+lwl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
+lwl-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
+lwl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
+lwl-$(CONFIG_MACH_TX25) += imx25-karo-tx25.dtb.o
+lwl-$(CONFIG_MACH_TX6X) += imx6dl-tx6u.dtb.o
+lwl-$(CONFIG_MACH_TX6X) += imx6q-tx6q.dtb.o
+lwl-$(CONFIG_MACH_TURRIS_OMNIA) += armada-385-turris-omnia-bb.dtb.o
+lwl-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
+lwl-$(CONFIG_MACH_UDOO_NEO) += imx6sx-udoo-neo-full.dtb.o
+lwl-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
+lwl-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
+lwl-$(CONFIG_MACH_VERSATILEPB) += versatile-pb.dtb.o
+lwl-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca9.dtb.o
+lwl-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca15.dtb.o
+lwl-$(CONFIG_MACH_VIRT2REAL) += virt2real.dtb.o
+lwl-$(CONFIG_MACH_VSCOM_BALTOS) += am335x-baltos-minimal.dtb.o
+lwl-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
+lwl-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
+lwl-$(CONFIG_MACH_ZII_RDU1) +=	\
 	imx51-zii-rdu1.dtb.o		\
 	imx51-zii-scu2-mezz.dtb.o	\
 	imx51-zii-scu3-esb.dtb.o
-lwl-dtb-$(CONFIG_MACH_ZII_RDU2) += imx6q-zii-rdu2.dtb.o imx6qp-zii-rdu2.dtb.o
-lwl-dtb-$(CONFIG_MACH_ZII_IMX8MQ_DEV) +=	\
+lwl-$(CONFIG_MACH_ZII_RDU2) += imx6q-zii-rdu2.dtb.o imx6qp-zii-rdu2.dtb.o
+lwl-$(CONFIG_MACH_ZII_IMX8MQ_DEV) +=	\
 	imx8mq-zii-ultra-rmb3.dtb.o		\
 	imx8mq-zii-ultra-zest.dtb.o
-lwl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
+lwl-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-dev-rev-b.dtb.o 	\
 	vf610-zii-dev-rev-c.dtb.o 	\
 	vf610-zii-cfu1.dtb.o		\
@@ -136,17 +136,17 @@ lwl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-scu4-aib.dtb.o	\
 	vf610-zii-spb4.dtb.o		\
 	vf610-zii-ssmb-dtu.dtb.o
-lwl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
-lwl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
-lwl-dtb-$(CONFIG_MACH_SAMA5D27_SOM1) += at91-sama5d27_som1_ek.dtb.o
-lwl-dtb-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += at91-sama5d27_giantboard.dtb.o
-lwl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
-lwl-dtb-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
+lwl-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
+lwl-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
+lwl-$(CONFIG_MACH_SAMA5D27_SOM1) += at91-sama5d27_som1_ek.dtb.o
+lwl-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += at91-sama5d27_giantboard.dtb.o
+lwl-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
+lwl-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
 
-lwl-dtb-$(CONFIG_MACH_ZII_IMX7D_DEV) += imx7d-zii-rpu2.dtb.o imx7d-zii-rmu2.dtb.o
-lwl-dtb-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
-lwl-dtb-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
-lwl-dtb-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-mbls10xxa.dtb.o
-lwl-dtb-$(CONFIG_MACH_ZEDBOARD) += zynq-zed.dtb.o
+lwl-$(CONFIG_MACH_ZII_IMX7D_DEV) += imx7d-zii-rpu2.dtb.o imx7d-zii-rmu2.dtb.o
+lwl-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
+lwl-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
+lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-mbls10xxa.dtb.o
+lwl-$(CONFIG_MACH_ZEDBOARD) += zynq-zed.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/kvx/dts/Makefile b/arch/kvx/dts/Makefile
index 9d5e94ae1..391783c1e 100644
--- a/arch/kvx/dts/Makefile
+++ b/arch/kvx/dts/Makefile
@@ -4,10 +4,10 @@ obj- += dummy.o
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 ifneq ($(BUILTIN_DTB),)
-obj-dtb-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
+obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 endif
 
-obj-dtb-$(CONFIG_BOARD_K200) += k200.dtb.o
+obj-$(CONFIG_BOARD_K200) += k200.dtb.o
 
 always := $(dtb-y)
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
diff --git a/arch/mips/dts/Makefile b/arch/mips/dts/Makefile
index 9e8a6a6aa..b0ad25ecf 100644
--- a/arch/mips/dts/Makefile
+++ b/arch/mips/dts/Makefile
@@ -1,18 +1,18 @@
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 ifneq ($(BUILTIN_DTB),)
-obj-dtb-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
+obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 endif
 
-pbl-dtb-$(CONFIG_BOARD_8DEVICES_LIMA) += qca4531-8devices-lima.dtb.o
-pbl-dtb-$(CONFIG_BOARD_BLACK_SWIFT) += black-swift.dtb.o
-pbl-dtb-$(CONFIG_BOARD_CI20) += img-ci20.dtb.o
-pbl-dtb-$(CONFIG_BOARD_DLINK_DIR320) += dlink-dir-320.dtb.o
-pbl-dtb-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += ar9331-dptechnics-dpt-module.dtb.o
-pbl-dtb-$(CONFIG_BOARD_OPENEMBEDED_SOM9331) += ar9331-openembed-som9331-board.dtb.o
-pbl-dtb-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += loongson-ls1b.dtb.o
-pbl-dtb-$(CONFIG_BOARD_QEMU_MALTA) += qemu-malta.dtb.o
-pbl-dtb-$(CONFIG_BOARD_RZX50) += rzx50.dtb.o
-pbl-dtb-$(CONFIG_BOARD_TPLINK_MR3020) += ar9331_tl_mr3020.dtb.o
-pbl-dtb-$(CONFIG_BOARD_TPLINK_WDR4300) += ar9344-tl-wdr4300-v1.7.dtb.o
+pbl-$(CONFIG_BOARD_8DEVICES_LIMA) += qca4531-8devices-lima.dtb.o
+pbl-$(CONFIG_BOARD_BLACK_SWIFT) += black-swift.dtb.o
+pbl-$(CONFIG_BOARD_CI20) += img-ci20.dtb.o
+pbl-$(CONFIG_BOARD_DLINK_DIR320) += dlink-dir-320.dtb.o
+pbl-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += ar9331-dptechnics-dpt-module.dtb.o
+pbl-$(CONFIG_BOARD_OPENEMBEDED_SOM9331) += ar9331-openembed-som9331-board.dtb.o
+pbl-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += loongson-ls1b.dtb.o
+pbl-$(CONFIG_BOARD_QEMU_MALTA) += qemu-malta.dtb.o
+pbl-$(CONFIG_BOARD_RZX50) += rzx50.dtb.o
+pbl-$(CONFIG_BOARD_TPLINK_MR3020) += ar9331_tl_mr3020.dtb.o
+pbl-$(CONFIG_BOARD_TPLINK_WDR4300) += ar9344-tl-wdr4300-v1.7.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
index 903fe8ff3..509f236cc 100644
--- a/arch/riscv/dts/Makefile
+++ b/arch/riscv/dts/Makefile
@@ -1,9 +1,9 @@
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 ifneq ($(BUILTIN_DTB),)
-obj-dtb-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
+obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 endif
 
-obj-dtb-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
+obj-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
 
 # just to build a built-in.o. Otherwise compilation fails when no devicetree is
 # created.
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 956df9e23..f4e771980 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -304,10 +304,12 @@ intermediate_targets = $(foreach sfx, $(2), \
 					$(filter %$(strip $(1)), $(targets))))
 # %.asn1.o <- %.asn1.[ch] <- %.asn1
 # %.dtb.o <- %.dtb.S <- %.dtb <- %.dts
+# %.dtb.pbl.o <- %.dtb.S <- %.dtb <- %.dts (Barebox only)
 # %.lex.o <- %.lex.c <- %.l
 # %.tab.o <- %.tab.[ch] <- %.y
 targets += $(call intermediate_targets, .asn1.o, .asn1.c .asn1.h) \
 	   $(call intermediate_targets, .dtb.o, .dtb.S .dtb) \
+	   $(call intermediate_targets, .dtb.pbl.o, .dtb.S .dtb) \
 	   $(call intermediate_targets, .lex.o, .lex.c) \
 	   $(call intermediate_targets, .tab.o, .tab.c .tab.h)
 
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 273113ff5..604bedfc5 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -20,16 +20,6 @@ obj-m := $(filter-out $(obj-y),$(obj-m))
 
 lib-y := $(filter-out $(obj-y), $(sort $(lib-y) $(lib-m)))
 
-
-pbl-y		+= $(pbl-dtb-y)
-obj-y		+= $(obj-dtb-y)
-extra-y		+= $(patsubst %.dtb.o,%.dtb.S,$(obj-dtb-y))
-extra-y		+= $(patsubst %.dtb.o,%.dtb,$(obj-dtb-y))
-extra-y		+= $(patsubst %.dtb.o,%.dtb.S,$(pbl-dtb-y))
-extra-y		+= $(patsubst %.dtb.o,%.dtb,$(pbl-dtb-y))
-extra-y		+= $(patsubst %.dtb.o,%.dtb.S,$(lwl-dtb-y))
-extra-y		+= $(patsubst %.dtb.o,%.dtb,$(lwl-dtb-y))
-
 # Handle objects in subdirs
 # ---------------------------------------------------------------------------
 # o if we encounter foo/ in $(obj-y), replace it by foo/built-in.o
@@ -40,9 +30,9 @@ extra-y		+= $(patsubst %.dtb.o,%.dtb,$(lwl-dtb-y))
 # lowlevel is present in the PBL if enabled
 # otherwise in barebox
 ifeq ($(CONFIG_PBL_IMAGE), y)
-pbl-y		+= $(lwl-y) $(lwl-dtb-y)
+pbl-y		+= $(lwl-y)
 else
-obj-y		+= $(lwl-y) $(lwl-dtb-y)
+obj-y		+= $(lwl-y)
 endif
 
 obj-y		+= $(obj-pbl-y)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
