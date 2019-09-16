Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lPy-0006w3-L8
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 07:27:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Sep 2019 09:27:17 +0200
Message-Id: <20190916072721.12392-3-s.hauer@pengutronix.de>
In-Reply-To: <20190916072721.12392-1-s.hauer@pengutronix.de>
References: <20190916072721.12392-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] ARM: Compile dtbs for lowlevel code
To: Barebox List <barebox@lists.infradead.org>

When no PBL is used then the DTB is used in the real barebox binary. We
already have lwl-y for code which needs to be in PBL when existing and
in the real barebox binary otherwise. Do the same for the DTBs and
compile them with lwl-dtb-y.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/Makefile | 190 +++++++++++++++++++++---------------------
 scripts/Makefile.lib  |   4 +-
 2 files changed, 97 insertions(+), 97 deletions(-)

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index f33e6a4989..7a212174de 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -7,45 +7,45 @@ endif
 # created.
 obj- += dummy.o
 
-pbl-dtb-$(CONFIG_MACH_ADVANTECH_ROM_742X) += imx6dl-advantech-rom-7421.dtb.o
-pbl-dtb-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
-pbl-dtb-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
-pbl-dtb-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
-pbl-dtb-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
-pbl-dtb-$(CONFIG_MACH_DUCKBILL) += imx28-duckbill.dtb.o
-pbl-dtb-$(CONFIG_MACH_KINDLE_MX50) += imx50-kindle-d01100.dtb.o imx50-kindle-d01200.dtb.o imx50-kindle-ey21.dtb.o
-pbl-dtb-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
-pbl-dtb-$(CONFIG_MACH_ELTEC_HIPERCAM) += imx6dl-eltec-hipercam.dtb.o
-pbl-dtb-$(CONFIG_MACH_EMBEST_RIOTBOARD) += imx6s-riotboard.dtb.o
-pbl-dtb-$(CONFIG_MACH_EMBEDSKY_E9) += imx6q-embedsky-e9.dtb.o
-pbl-dtb-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
-pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
-pbl-dtb-$(CONFIG_MACH_TX53) += imx53-tx53-xx30.dtb.o imx53-tx53-1011.dtb.o
-pbl-dtb-$(CONFIG_MACH_CCMX51) += imx51-ccxmx51.dtb.o
-pbl-dtb-$(CONFIG_MACH_CCMX53) += imx53-ccxmx53.dtb.o
-pbl-dtb-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += imx6ul-ccimx6ulsbcpro.dtb.o
-pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
-pbl-dtb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
-pbl-dtb-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
-pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_GRINN_LITEBOARD) += imx6ul-liteboard.dtb.o
-pbl-dtb-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
-pbl-dtb-$(CONFIG_MACH_GUF_VINCELL) += imx53-guf-vincell.dtb.o imx53-guf-vincell-lt.dtb.o
-pbl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
-pbl-dtb-$(CONFIG_MACH_KONTRON_SAMX6I) += imx6q-samx6i.dtb.o \
+lwl-dtb-$(CONFIG_MACH_ADVANTECH_ROM_742X) += imx6dl-advantech-rom-7421.dtb.o
+lwl-dtb-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
+lwl-dtb-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
+lwl-dtb-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
+lwl-dtb-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
+lwl-dtb-$(CONFIG_MACH_DUCKBILL) += imx28-duckbill.dtb.o
+lwl-dtb-$(CONFIG_MACH_KINDLE_MX50) += imx50-kindle-d01100.dtb.o imx50-kindle-d01200.dtb.o imx50-kindle-ey21.dtb.o
+lwl-dtb-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
+lwl-dtb-$(CONFIG_MACH_ELTEC_HIPERCAM) += imx6dl-eltec-hipercam.dtb.o
+lwl-dtb-$(CONFIG_MACH_EMBEST_RIOTBOARD) += imx6s-riotboard.dtb.o
+lwl-dtb-$(CONFIG_MACH_EMBEDSKY_E9) += imx6q-embedsky-e9.dtb.o
+lwl-dtb-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
+lwl-dtb-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
+lwl-dtb-$(CONFIG_MACH_TX53) += imx53-tx53-xx30.dtb.o imx53-tx53-1011.dtb.o
+lwl-dtb-$(CONFIG_MACH_CCMX51) += imx51-ccxmx51.dtb.o
+lwl-dtb-$(CONFIG_MACH_CCMX53) += imx53-ccxmx53.dtb.o
+lwl-dtb-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += imx6ul-ccimx6ulsbcpro.dtb.o
+lwl-dtb-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
+lwl-dtb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
+lwl-dtb-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
+lwl-dtb-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_GRINN_LITEBOARD) += imx6ul-liteboard.dtb.o
+lwl-dtb-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
+lwl-dtb-$(CONFIG_MACH_GUF_VINCELL) += imx53-guf-vincell.dtb.o imx53-guf-vincell-lt.dtb.o
+lwl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
+lwl-dtb-$(CONFIG_MACH_KONTRON_SAMX6I) += imx6q-samx6i.dtb.o \
 					imx6dl-samx6i.dtb.o
-pbl-dtb-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o armada-xp-db-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_MX28EVK) += imx28-evk.dtb.o
-pbl-dtb-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_NETGEAR_RN2120) += armada-xp-rn2120-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_NITROGEN6) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
-pbl-dtb-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
-pbl-dtb-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
-pbl-dtb-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
-pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am335x-phytec-phyflex-som-mlo.dtb.o \
+lwl-dtb-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o armada-xp-db-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_MX28EVK) += imx28-evk.dtb.o
+lwl-dtb-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_NETGEAR_RN2120) += armada-xp-rn2120-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_NITROGEN6) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
+lwl-dtb-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
+lwl-dtb-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
+lwl-dtb-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
+lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am335x-phytec-phyflex-som-mlo.dtb.o \
 	am335x-phytec-phyflex-som-no-spi.dtb.o am335x-phytec-phyflex-som-no-eeprom.dtb.o \
 	am335x-phytec-phyflex-som-no-spi-no-eeprom.dtb.o \
 	am335x-phytec-phycore-som-mlo.dtb.o \
@@ -53,7 +53,7 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am33
 	am335x-phytec-phycore-som-nand-no-eeprom.dtb.o am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dtb.o \
 	am335x-phytec-phycore-som-emmc.dtb.o \
 	am335x-phytec-phycard-som.dtb.o am335x-phytec-phycard-som-mlo.dtb.o
-pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
+lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6s-phytec-pbab01.dtb.o \
 				imx6dl-phytec-pbab01.dtb.o \
 				imx6q-phytec-pbab01.dtb.o \
@@ -71,61 +71,61 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6ull-phytec-phycore-som-lc-nand.dtb.o \
 				imx6ull-phytec-phycore-som-nand.dtb.o \
 				imx6ull-phytec-phycore-som-emmc.dtb.o
-pbl-dtb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
-pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
-pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
-pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
-pbl-dtb-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
-pbl-dtb-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
-pbl-dtb-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
-pbl-dtb-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
-pbl-dtb-$(CONFIG_MACH_RPI_CM3) += bcm2837-rpi-cm3.dtb.o
-pbl-dtb-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
-pbl-dtb-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
-pbl-dtb-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
-pbl-dtb-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += socfpga_cyclone5_socdk.dtb.o
-pbl-dtb-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
-pbl-dtb-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += socfpga_arria10_achilles.dtb.o
-pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += socfpga_cyclone5_de0_nano_soc.dtb.o
-pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
-pbl-dtb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o \
+lwl-dtb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
+lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
+lwl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
+lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
+lwl-dtb-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
+lwl-dtb-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
+lwl-dtb-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
+lwl-dtb-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
+lwl-dtb-$(CONFIG_MACH_RPI_CM3) += bcm2837-rpi-cm3.dtb.o
+lwl-dtb-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
+lwl-dtb-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
+lwl-dtb-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
+lwl-dtb-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += socfpga_cyclone5_socdk.dtb.o
+lwl-dtb-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
+lwl-dtb-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += socfpga_arria10_achilles.dtb.o
+lwl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += socfpga_cyclone5_de0_nano_soc.dtb.o
+lwl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
+lwl-dtb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o \
 				imx6dl-hummingboard2.dtb.o imx6q-hummingboard2.dtb.o \
 				imx6q-h100.dtb.o
-pbl-dtb-$(CONFIG_MACH_STM32MP157C_DK2) += stm32mp157c-dk2.dtb.o
-pbl-dtb-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
-pbl-dtb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
-pbl-dtb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
-pbl-dtb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += imx6ull-14x14-evk.dtb.o
-pbl-dtb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
-pbl-dtb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
-pbl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
-pbl-dtb-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
-pbl-dtb-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
-pbl-dtb-$(CONFIG_MACH_TX25) += imx25-karo-tx25.dtb.o
-pbl-dtb-$(CONFIG_MACH_TX6X) += imx6dl-tx6u.dtb.o
-pbl-dtb-$(CONFIG_MACH_TX6X) += imx6q-tx6q.dtb.o
-pbl-dtb-$(CONFIG_MACH_TURRIS_OMNIA) += armada-385-turris-omnia-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
-pbl-dtb-$(CONFIG_MACH_UDOO_NEO) += imx6sx-udoo-neo-full.dtb.o
-pbl-dtb-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
-pbl-dtb-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca9.dtb.o
-pbl-dtb-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca15.dtb.o
-pbl-dtb-$(CONFIG_MACH_VSCOM_BALTOS) += am335x-baltos-minimal.dtb.o
-pbl-dtb-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
-pbl-dtb-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
-pbl-dtb-$(CONFIG_MACH_ZII_RDU1) +=	\
+lwl-dtb-$(CONFIG_MACH_STM32MP157C_DK2) += stm32mp157c-dk2.dtb.o
+lwl-dtb-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
+lwl-dtb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
+lwl-dtb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
+lwl-dtb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += imx6ull-14x14-evk.dtb.o
+lwl-dtb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
+lwl-dtb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
+lwl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
+lwl-dtb-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
+lwl-dtb-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
+lwl-dtb-$(CONFIG_MACH_TX25) += imx25-karo-tx25.dtb.o
+lwl-dtb-$(CONFIG_MACH_TX6X) += imx6dl-tx6u.dtb.o
+lwl-dtb-$(CONFIG_MACH_TX6X) += imx6q-tx6q.dtb.o
+lwl-dtb-$(CONFIG_MACH_TURRIS_OMNIA) += armada-385-turris-omnia-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
+lwl-dtb-$(CONFIG_MACH_UDOO_NEO) += imx6sx-udoo-neo-full.dtb.o
+lwl-dtb-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
+lwl-dtb-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca9.dtb.o
+lwl-dtb-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca15.dtb.o
+lwl-dtb-$(CONFIG_MACH_VSCOM_BALTOS) += am335x-baltos-minimal.dtb.o
+lwl-dtb-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
+lwl-dtb-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
+lwl-dtb-$(CONFIG_MACH_ZII_RDU1) +=	\
 	imx51-zii-rdu1.dtb.o		\
 	imx51-zii-scu2-mezz.dtb.o	\
 	imx51-zii-scu3-esb.dtb.o
-pbl-dtb-$(CONFIG_MACH_ZII_RDU2) += imx6q-zii-rdu2.dtb.o imx6qp-zii-rdu2.dtb.o
-pbl-dtb-$(CONFIG_MACH_ZII_IMX8MQ_DEV) +=	\
+lwl-dtb-$(CONFIG_MACH_ZII_RDU2) += imx6q-zii-rdu2.dtb.o imx6qp-zii-rdu2.dtb.o
+lwl-dtb-$(CONFIG_MACH_ZII_IMX8MQ_DEV) +=	\
 	imx8mq-zii-ultra-rmb3.dtb.o		\
 	imx8mq-zii-ultra-zest.dtb.o
-pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
+lwl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-dev-rev-b.dtb.o 	\
 	vf610-zii-dev-rev-c.dtb.o 	\
 	vf610-zii-cfu1.dtb.o		\
@@ -133,14 +133,14 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-scu4-aib.dtb.o	\
 	vf610-zii-spb4.dtb.o		\
 	vf610-zii-ssmb-dtu.dtb.o
-pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
-pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
-pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
-pbl-dtb-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
+lwl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
+lwl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
+lwl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
+lwl-dtb-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
 
-pbl-dtb-$(CONFIG_MACH_ZII_IMX7D_DEV) += imx7d-zii-rpu2.dtb.o imx7d-zii-rmu2.dtb.o
-pbl-dtb-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
-pbl-dtb-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
-pbl-dtb-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-mbls10xxa.dtb.o
+lwl-dtb-$(CONFIG_MACH_ZII_IMX7D_DEV) += imx7d-zii-rpu2.dtb.o imx7d-zii-rmu2.dtb.o
+lwl-dtb-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
+lwl-dtb-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
+lwl-dtb-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-mbls10xxa.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index c4d307ae30..2da14ba29b 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -29,9 +29,9 @@ extra-y		+= $(patsubst %.dtb.o,%.dtb,$(pbl-dtb-y))
 # lowlevel is present in the PBL if enabled
 # otherwise in barebox
 ifeq ($(CONFIG_PBL_IMAGE), y)
-pbl-y		+= $(lwl-y)
+pbl-y		+= $(lwl-y) $(lwl-dtb-y)
 else
-obj-y		+= $(lwl-y)
+obj-y		+= $(lwl-y) $(lwl-dtb-y)
 endif
 
 obj-y		+= $(obj-pbl-y)
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
