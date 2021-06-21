Delivery-date: Mon, 21 Jun 2021 11:30:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvGGa-0000jU-Bu
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 11:30:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvGGX-0008M3-A7
	for lore@pengutronix.de; Mon, 21 Jun 2021 11:30:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTjmEUQvwNFOd5b9giSTRJrYI11M157r3PsSFRoth2A=; b=f3zIkqihE+4NO/
	ddItnPaDzP1Az3notC8MpPppf+gIVxCj5dwezY2fkBcTzUPMaBUsuW5dCtJjojndeuGEDS1Df1kBw
	8cMYHK2uQ7ViNvb187UXRpZOrS3vARctkO19nsL3Iqzuk+KSi6XfbKM3uGxFTbvQvLA0T6MfN1Wze
	5a5WnfxYAjK1echuiyvKBMQa9lbrs9sY1DiVoWO4ax461g0uldfsKGEmeUpxyGpGf50yxC8VKIJTK
	o2zwt02aEj/KFssxcBLQ9c4YDmqie+XqoUjpSxNHs2z7DMNbTo9iaWXPT0tNYabjRRciettRQlhSY
	zpF0aKxy4YBKMHZbnNDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvGEw-002tnE-OQ; Mon, 21 Jun 2021 09:29:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvGDt-002tGg-Ob
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 09:28:12 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvGDs-0007Zo-DZ; Mon, 21 Jun 2021 11:28:04 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvGDr-0003ds-NW; Mon, 21 Jun 2021 11:28:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 21 Jun 2021 11:28:00 +0200
Message-Id: <20210621092802.27275-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210621092802.27275-1-s.hauer@pengutronix.de>
References: <20210621092802.27275-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_022806_177500_34932EBC 
X-CRM114-Status: GOOD (  25.41  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/12] ARM: Rockchip: Add rk3568 evb board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds support for the rk3568 evb board. Tested features so far are:

- 1st stage booting
- Network
- SD card
- eMMC

The dts files are based on the ones posted on the mailing lists, they
should be rebased on the upstream files once they show up in barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Link: https://lore.barebox.org/20210615141641.31577-11-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/rockchip.rst             |  39 ++
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/rockchip-rk3568-evb/Makefile  |   2 +
 arch/arm/boards/rockchip-rk3568-evb/board.c   |  36 ++
 .../arm/boards/rockchip-rk3568-evb/lowlevel.c |  49 ++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/rk3568-evb1-v10.dts              | 487 ++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig                |   6 +
 images/Makefile.rockchip                      |  10 +
 9 files changed, 631 insertions(+)
 create mode 100644 arch/arm/boards/rockchip-rk3568-evb/Makefile
 create mode 100644 arch/arm/boards/rockchip-rk3568-evb/board.c
 create mode 100644 arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
 create mode 100644 arch/arm/dts/rk3568-evb1-v10.dts

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index a5599c6d5f..d03c4686df 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -45,3 +45,42 @@ Instructions.
 * Run "rk-makebootable FlashData barebox-radxa-rock.bin rrboot.bin"
 * Insert SD card and run "dd if=rrboot.bin of=</dev/sdcard> bs=$((0x200)) seek=$((0x40))"
 * SD card is ready
+
+Rockchip RK3568
+===============
+
+RK3568 EVB
+----------
+
+Building
+^^^^^^^^
+
+The build process needs three binary files which have to be copied from the
+`rkbin https://github.com/rockchip-linux/rkbin` repository to the barebox source tree:
+
+.. code-block:: sh
+  cp $RKBIN/rk35/rk3568_bl31_v1.24.elf firmware/rk3568-bl31.bin
+  cp $RKBIN/bin/rk35/rk3568_bl32_v1.05.bin firmware/rk3568-op-tee.bin
+  cp $RKBIN/bin/rk35/rk3568_ddr_1560MHz_v1.08.bin arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin
+
+With these barebox can be compiled as:
+
+.. code-block:: sh
+
+  make ARCH=arm rockchip_v8_defconfig
+  make ARCH=arm
+
+**NOTE** I found the bl32 firmware non working for me as of 7d631e0d5b2d373b54d4533580d08fb9bd2eaad4 in the rkbin repository.
+
+Creating a bootable SD card
+^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+A bootable SD card can be created with:
+
+.. code-block:: sh
+
+  dd if=images/barebox-rk3568-evb.img of=/dev/sdx bs=1024 seek=32
+
+The barebox image is written to the raw device, so make sure the partitioning
+doesn't conflict with the are barebox is written to. Starting the first
+partition at offset 8MiB is a safe bet.
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index b3415eb4a2..5aac64fce5 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -181,3 +181,4 @@ obj-$(CONFIG_MACH_LS1046ARDB)			+= ls1046ardb/
 obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
 obj-$(CONFIG_MACH_MNT_REFORM)			+= mnt-reform/
 obj-$(CONFIG_MACH_SKOV_ARM9CPU)			+= skov-arm9cpu/
+obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
diff --git a/arch/arm/boards/rockchip-rk3568-evb/Makefile b/arch/arm/boards/rockchip-rk3568-evb/Makefile
new file mode 100644
index 0000000000..01c7a259e9
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3568-evb/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
new file mode 100644
index 0000000000..57c24ed3c6
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <init.h>
+#include <mach/bbu.h>
+#include <bootsource.h>
+
+static int rk3568_evb_probe(struct device_d *dev)
+{
+	enum bootsource bootsource = bootsource_get();
+	int instance = bootsource_get_instance();
+
+	barebox_set_model("Rockchip RK3568 EVB");
+	barebox_set_hostname("rk3568-evb");
+
+	if (bootsource == BOOTSOURCE_MMC && instance == 1)
+		of_device_enable_path("/chosen/environment-sd");
+	else
+		of_device_enable_path("/chosen/environment-emmc");
+
+	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/emmc.barebox");
+	rk3568_bbu_mmc_register("sd", 0, "/dev/sd.barebox");
+
+	return 0;
+}
+
+static const struct of_device_id rk3568_evb_of_match[] = {
+	{ .compatible = "rockchip,rk3568-evb1-v10" },
+	{ /* Sentinel */},
+};
+
+static struct driver_d rk3568_evb_board_driver = {
+	.name = "board-rk3568-evb",
+	.probe = rk3568_evb_probe,
+	.of_compatible = rk3568_evb_of_match,
+};
+coredevice_platform_driver(rk3568_evb_board_driver);
diff --git a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
new file mode 100644
index 0000000000..363639d21b
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
@@ -0,0 +1,49 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+#include <mach/atf.h>
+#include <debug_ll.h>
+#include <mach/rockchip.h>
+
+extern char __dtb_rk3568_evb1_v10_start[];
+
+static noinline void rk3568_start(void)
+{
+	void *fdt;
+
+	/*
+	 * Enable vccio4 1.8V and vccio6 1.8V
+	 * Needed for GMAC to work.
+	 */
+	writel(RK_SETBITS(0x50), 0xfdc20140);
+
+	fdt = __dtb_rk3568_evb1_v10_start;
+
+	if (current_el() == 3) {
+		rk3568_lowlevel_init();
+		rk3568_atf_load_bl31(fdt);
+		/* not reached */
+	}
+
+	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM, fdt);
+}
+
+ENTRY_FUNCTION(start_rk3568_evb, r0, r1, r2)
+{
+	/*
+	 * Image execution starts at 0x0, but this is used for ATF and
+	 * OP-TEE later, so move away from here.
+	 */
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3568_start();
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index a07a3bf33f..ffa9fe88c1 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -96,6 +96,7 @@ lwl-$(CONFIG_MACH_PROTONIC_IMX8M) += imx8mm-prt8mm.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
 lwl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
+lwl-$(CONFIG_MACH_RK3568_EVB) += rk3568-evb1-v10.dtb.o
 lwl-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
 lwl-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
 lwl-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
new file mode 100644
index 0000000000..ca6f9c2803
--- /dev/null
+++ b/arch/arm/dts/rk3568-evb1-v10.dts
@@ -0,0 +1,487 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ *
+ */
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3568.dtsi"
+
+/ {
+	model = "Rockchip RK3568 EVB1 DDR4 V10 Board";
+	compatible = "rockchip,rk3568-evb1-v10", "rockchip,rk3568";
+
+	aliases {
+		emmc = &sdhci;
+		sd = &sdmmc0;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &environment_sd;
+			status = "disabled";
+		};
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+			status = "disabled";
+		};
+	};
+
+	memory@a00000 {
+		device_type = "memory";
+		reg = <0x0 0x00a00000 0x0 0x7f600000>;
+	};
+
+	dc_12v: dc-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_12v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc3v3_sys: vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&dc_12v>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc_12v>;
+	};
+
+	vcc3v3_lcd0_n: vcc3v3-lcd0-n {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_lcd0_n";
+		regulator-boot-on;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vcc3v3_lcd1_n: vcc3v3-lcd1-n {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_lcd1_n";
+		regulator-boot-on;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&gmac0 {
+	phy-mode = "rgmii";
+	clock_in_out = "output";
+
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
+	assigned-clock-rates = <0>, <125000000>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_rgmii_bus>;
+
+	tx_delay = <0x3c>;
+	rx_delay = <0x2f>;
+
+	phy-handle = <&rgmii_phy0>;
+	status = "okay";
+};
+
+&gmac1 {
+	phy-mode = "rgmii";
+	clock_in_out = "output";
+
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
+	assigned-clock-rates = <0>, <125000000>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m1_miim
+		     &gmac1m1_tx_bus2
+		     &gmac1m1_rx_bus2
+		     &gmac1m1_rgmii_clk
+		     &gmac1m1_rgmii_bus>;
+
+	tx_delay = <0x4f>;
+	rx_delay = <0x26>;
+
+	phy-handle = <&rgmii_phy1>;
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+
+		pinctrl-names = "default", "pmic-sleep",
+				"pmic-power-off", "pmic-reset";
+		pinctrl-0 = <&pmic_int>;
+		pinctrl-1 = <&soc_slppin_slp>, <&rk817_slppin_slp>;
+		pinctrl-2 = <&soc_slppin_gpio>, <&rk817_slppin_pwrdn>;
+		pinctrl-3 = <&soc_slppin_gpio>, <&rk817_slppin_rst>;
+
+		rockchip,system-power-controller;
+		wakeup-source;
+		#clock-cells = <1>;
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+		//fb-inner-reg-idxs = <2>;
+		/* 1: rst regs (default in codes), 0: rst the pmic */
+		pmic-reset-func = <0>;
+
+		vcc1-supply = <&vcc3v3_sys>;
+		vcc2-supply = <&vcc3v3_sys>;
+		vcc3-supply = <&vcc3v3_sys>;
+		vcc4-supply = <&vcc3v3_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+
+		pwrkey {
+			status = "okay";
+		};
+
+		pinctrl_rk8xx: pinctrl_rk8xx {
+			gpio-controller;
+			#gpio-cells = <2>;
+
+			rk817_slppin_null: rk817_slppin_null {
+				pins = "gpio_slp";
+				function = "pin_fun0";
+			};
+
+			rk817_slppin_slp: rk817_slppin_slp {
+				pins = "gpio_slp";
+				function = "pin_fun1";
+			};
+
+			rk817_slppin_pwrdn: rk817_slppin_pwrdn {
+				pins = "gpio_slp";
+				function = "pin_fun2";
+			};
+
+			rk817_slppin_rst: rk817_slppin_rst {
+				pins = "gpio_slp";
+				function = "pin_fun3";
+			};
+		};
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_logic";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_gpu: DCDC_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_gpu";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vcc_ddr";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vdd_npu: DCDC_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_npu";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_image: LDO_REG1 {
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda0v9_image";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v9: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda_0v9";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_pmu: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda0v9_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vccio_acodec: LDO_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_acodec";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_sd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc3v3_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcca_1v8: LDO_REG7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca_1v8";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pmu: LDO_REG8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcca1v8_image: LDO_REG9 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_image";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v3: SWITCH_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_3v3";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: SWITCH_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc3v3_sd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&mdio0 {
+	rgmii_phy0: phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reset-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reg = <0x0>;
+	};
+};
+
+&mdio1 {
+	rgmii_phy1: phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reset-gpios = <&gpio2 RK_PD1 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reg = <0x0>;
+	};
+};
+
+&pinctrl {
+	pmic {
+		pmic_int: pmic_int {
+			rockchip,pins =
+				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		soc_slppin_gpio: soc_slppin_gpio {
+			rockchip,pins =
+				<0 RK_PA2 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+
+		soc_slppin_slp: soc_slppin_slp {
+			rockchip,pins =
+				<0 RK_PA2 1 &pcfg_pull_none>;
+		};
+
+		soc_slppin_rst: soc_slppin_rst {
+			rockchip,pins =
+				<0 RK_PA2 2 &pcfg_pull_none>;
+		};
+	};
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	no-sd;
+	status = "okay";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@8000 {
+			label = "barebox";
+			reg = <0x8000 0x400000>;
+		};
+
+		environment_emmc: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x408000 0x8000>;
+		};
+	};
+};
+
+&sdmmc0 {
+	max-frequency = <150000000>;
+	supports-sd;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+	status = "okay";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@8000 {
+			label = "barebox";
+			reg = <0x8000 0x400000>;
+		};
+
+		environment_sd: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x408000 0x8000>;
+		};
+	};
+};
+
+&uart2 {
+	status = "okay";
+};
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index b4c8573c6e..2786fadeaf 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -45,6 +45,12 @@ config MACH_PHYTEC_SOM_RK3288
 	help
 	  Say Y here if you are using a RK3288 based Phytecs SOM
 
+config MACH_RK3568_EVB
+	select ARCH_RK3568
+	bool "RK3568 EVB"
+	help
+	  Say Y here if you are using a RK3568 EVB
+
 endmenu
 
 config ARCH_RK3568_OPTEE
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 16303164ae..e64fccec6b 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -9,3 +9,13 @@ image-$(CONFIG_MACH_RADXA_ROCK) += barebox-radxa-rock.img
 pblb-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += start_rk3288_phycore_som
 FILE_barebox-rk3288-phycore-som.img = start_rk3288_phycore_som.pblb
 image-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += barebox-rk3288-phycore-som.img
+
+pblb-$(CONFIG_MACH_RK3568_EVB) += start_rk3568_evb
+image-$(CONFIG_MACH_RK3568_EVB) += barebox-rk3568-evb.img
+
+quiet_cmd_rkimg_image = RK-IMG $@
+      cmd_rkimg_image = $(objtree)/scripts/rkimage -o $@ $(word 2,$^) $(word 1,$^)
+
+$(obj)/barebox-rk3568-evb.img: $(obj)/start_rk3568_evb.pblb \
+                $(board)/rockchip-rk3568-evb/sdram-init.bin
+	$(call if_changed,rkimg_image)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

