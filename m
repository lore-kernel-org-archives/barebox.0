Delivery-date: Fri, 11 Feb 2022 10:15:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIS1c-00ChbM-QQ
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 10:15:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIS1a-0004yo-B3
	for lore@pengutronix.de; Fri, 11 Feb 2022 10:15:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GuldLbx8fFxqlXpC7bLJt19cTyGffA4FnrGUnPlWHW0=; b=EL2vmWGhIrnNOh
	K+vWFHUhXh6Wo7Z66PIvEOfVFX6d9oxXPojY9e29A06k0D3D12KHKX0N6IHsLN6v3tW8ji6+9+dpS
	I3plfnowYqnoM9xHoMueVac+8sMvaohE6EtfuvWcRHZ50y/ZD8B+R+trfK0Th3EplQiR1QosUSwry
	ArSQ4geSG5kVw4eMFkwcSzlK/jCaoP6LyEc0VmdiN375FBgVnyxUziiIvLCzrYVtngXAKKrP+rX6f
	zXwBDcZ3jfPIFzkVjy0aNFVHWvgqpJyGNDry+KFUka6Umrws0tceGtVy7IVtOQ3A/3zDUvBjMFBd6
	XjAmbkhgzjJVK3CumBkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIS0D-006JJ1-FC; Fri, 11 Feb 2022 09:14:05 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIS06-006JHM-MF
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 09:14:01 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout2.routing.net (Postfix) with ESMTP id C48695FD7A;
 Fri, 11 Feb 2022 09:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1644570835;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=IjKW1xOhtHyYv3K8coDmXjsVfQHXPMuH6Kwc2/LmwQs=;
 b=VLcHgrLu7H2dHmiswCdRa2Nt6kr+Dbx2qHh8tL9mss/q2JA7+0+BsshC7T8Ou7GHwTw+NB
 fnUpXItyYV5f/CST+4urJV6bJlAdIERaMlxmqG0WdbgpAl9OTaYKt/ubBU9SM7vyWDBSfk
 NLvOqypI82elM88cRN9KkgZ2lA7DPJo=
Received: from localhost.localdomain (fttx-pool-217.61.154.74.bambit.de
 [217.61.154.74])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id EED3310068B;
 Fri, 11 Feb 2022 09:13:54 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>
Date: Fri, 11 Feb 2022 10:13:54 +0100
Message-Id: <20220211091354.11573-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: f4385bbe-0533-4eb2-a16d-93a2ec51cc04
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_011359_074281_E31FEF99 
X-CRM114-Status: GOOD (  25.17  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3] ARM: Rockchip: Add rk3568 BananaPi R2 Pro board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Frank Wunderlich <frank-w@public-files.de>

This adds support for the BananaPi R2 Pro board.
It is basicly a copy of rk3568 evb board but with slightly modified DTS.
Added GPIO-Leds to dts and modified the hw-detection a bit.

Tested features so far are:

 - 1st stage booting
 - Network
 - SD card and Emmc
 - usb (1.1 and 3 work, usb2 not working)
 - power LED (green)

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
changes in v3:
- modify to be more similar to linux dts

changes in v2:
- dts: drop chosen label
- some changes to dts to make it similar to linux-version
- board.c: add "bpi" on different places and drop rk3568 partially
- drop change in dt-bindings
- add entry to Documentation rk356x supported boards
- add bpi-r2-pro to rockchip_v8_defconfig
---
 Documentation/boards/rockchip.rst             |   1 +
 arch/arm/boards/Makefile                      |   1 +
 .../rockchip-rk3568-bpi-r2pro/.gitignore      |   1 +
 .../boards/rockchip-rk3568-bpi-r2pro/Makefile |   2 +
 .../boards/rockchip-rk3568-bpi-r2pro/board.c  |  93 +++
 .../rockchip-rk3568-bpi-r2pro/lowlevel.c      |  49 ++
 arch/arm/configs/rockchip_v8_defconfig        |   1 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/rk3568-bpi-r2-pro.dts            | 593 ++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig                |   6 +
 images/Makefile.rockchip                      |   7 +
 11 files changed, 755 insertions(+)
 create mode 100644 arch/arm/boards/rockchip-rk3568-bpi-r2pro/.gitignore
 create mode 100644 arch/arm/boards/rockchip-rk3568-bpi-r2pro/Makefile
 create mode 100644 arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
 create mode 100644 arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
 create mode 100644 arch/arm/dts/rk3568-bpi-r2-pro.dts

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index 68c3e112650b..041bb9fa6490 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -57,6 +57,7 @@ Supported Boards
 ----------------
 
 - Rockchip RK3568 EVB
+- Rockchip RK3568 Bananapi R2 Pro
 - Pine64 Quartz64 Model A
 
 The steps described in the following target the RK3568 and the RK3568 EVB but
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 6fe1b5991455..0ede7818fdde 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -186,4 +186,5 @@ obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
 obj-$(CONFIG_MACH_MNT_REFORM)			+= mnt-reform/
 obj-$(CONFIG_MACH_SKOV_ARM9CPU)			+= skov-arm9cpu/
 obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
+obj-$(CONFIG_MACH_RK3568_BPI_R2PRO)			+= rockchip-rk3568-bpi-r2pro/
 obj-$(CONFIG_MACH_PINE64_QUARTZ64)		+= pine64-quartz64/
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/.gitignore b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/.gitignore
new file mode 100644
index 000000000000..f458f794b54c
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/.gitignore
@@ -0,0 +1 @@
+sdram-init.bin
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/Makefile b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/Makefile
new file mode 100644
index 000000000000..01c7a259e9a5
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
new file mode 100644
index 000000000000..e472f13c8bbf
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "rk3568-r2pro: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <mach/bbu.h>
+#include <aiodev.h>
+#include <bootsource.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <magicvar.h>
+#include <deep-probe.h>
+
+static bool machine_is_bpi_r2pro = false;
+
+static int rk3568_bpi_r2pro_probe(struct device_d *dev)
+{
+	enum bootsource bootsource = bootsource_get();
+	int instance = bootsource_get_instance();
+
+	barebox_set_model("BPI R2PRO");
+	barebox_set_hostname("bpi-r2pro");
+	machine_is_bpi_r2pro = true;
+
+	if (bootsource == BOOTSOURCE_MMC && instance == 1)
+		of_device_enable_path("/chosen/environment-sd");
+	else
+		of_device_enable_path("/chosen/environment-emmc");
+
+	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/emmc");
+	rk3568_bbu_mmc_register("sd", 0, "/dev/sd");
+
+	return 0;
+}
+
+static const struct of_device_id rk3568_bpi_r2pro_of_match[] = {
+	{ .compatible = "rockchip,rk3568-bpi-r2pro" },
+	{ /* Sentinel */},
+};
+
+static struct driver_d rk3568_bpi_r2pro_board_driver = {
+	.name = "board-rk3568-bpi-r2pro",
+	.probe = rk3568_bpi_r2pro_probe,
+	.of_compatible = rk3568_bpi_r2pro_of_match,
+};
+coredevice_platform_driver(rk3568_bpi_r2pro_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(rk3568_bpi_r2pro_of_match);
+
+static int rk3568_bpi_r2pro_detect_hwid(void)
+{
+	int ret;
+	int hwid_voltage;
+	struct aiochannel *hwid_chan;
+	char *hwid;
+
+	if (!IS_ENABLED(CONFIG_AIODEV))
+		return 0;
+
+	if (!machine_is_bpi_r2pro)
+		return 0;
+
+	hwid_chan = aiochannel_by_name("aiodev0.in_value1_mV");
+	if (IS_ERR(hwid_chan)) {
+		ret = PTR_ERR(hwid_chan);
+		goto err_hwid;
+	}
+
+	ret = aiochannel_get_value(hwid_chan, &hwid_voltage);
+	if (ret)
+		goto err_hwid;
+
+	pr_info("hwid_voltage: %d\n", hwid_voltage);
+
+	if (hwid_voltage == 1800)
+		hwid = "V00";
+	else
+		hwid = "unknown";
+
+	pr_info("Detected RK3568 BananaPi R2 Pro %s\n", hwid);
+
+	globalvar_add_simple("board.hwid", hwid);
+
+	return 0;
+
+err_hwid:
+	pr_err("couldn't retrieve hardware ID\n");
+	return ret;
+}
+late_initcall(rk3568_bpi_r2pro_detect_hwid);
+
+BAREBOX_MAGICVAR(global.board.hwid, "The board hardware ID");
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
new file mode 100644
index 000000000000..9f039c604854
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
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
+extern char __dtb_rk3568_bpi_r2_pro_start[];
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
+	fdt = __dtb_rk3568_bpi_r2_pro_start;
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
+ENTRY_FUNCTION(start_rk3568_bpi_r2pro, r0, r1, r2)
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
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 4ceb036db6ae..387c9f21d2ff 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_MACH_RK3568_EVB=y
+CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_QUARTZ64=y
 CONFIG_BOARD_ARM_GENERIC_DT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 8ae8244bfeee..8106360e50dd 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -105,6 +105,7 @@ lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
 lwl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 lwl-$(CONFIG_MACH_RK3568_EVB) += rk3568-evb1-v10.dtb.o
+lwl-$(CONFIG_MACH_RK3568_BPI_R2PRO) += rk3568-bpi-r2-pro.dtb.o
 lwl-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
 lwl-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
 lwl-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
diff --git a/arch/arm/dts/rk3568-bpi-r2-pro.dts b/arch/arm/dts/rk3568-bpi-r2-pro.dts
new file mode 100644
index 000000000000..ef2e0c33e663
--- /dev/null
+++ b/arch/arm/dts/rk3568-bpi-r2-pro.dts
@@ -0,0 +1,593 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Author: Frank Wunderlich <frank-w@public-files.de>
+ *
+ */
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3568.dtsi"
+
+/ {
+	model = "Bananapi-R2 Pro (RK3568) DDR4 Board";
+	compatible = "rockchip,rk3568-bpi-r2pro", "rockchip,rk3568";
+
+	aliases {
+		emmc = &sdhci;
+		sd = &sdmmc0;
+	};
+
+	chosen {
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
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&blue_led_pin &green_led_pin>;
+
+		blue_led: led-0 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio0 RK_PD6 GPIO_ACTIVE_HIGH>;
+		};
+
+		green_led: led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
+			function = LED_FUNCTION_POWER;
+			gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
+		};
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
+
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_host";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		regulator-always-on;
+	};
+};
+
+&gmac0 {
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "input";
+	phy-handle = <&rgmii_phy0>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_rgmii_bus>;
+	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 20ms, 100ms for rtl8211f */
+	snps,reset-delays-us = <0 20000 100000>;
+	tx_delay = <0x3c>;
+	rx_delay = <0x2f>;
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
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>;
+
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+		/* 1: rst regs (default in codes), 0: rst the pmic */
+		pmic-reset-func = <0>;
+
+		rockchip,system-power-controller;
+		vcc1-supply = <&vcc3v3_sys>;
+		vcc2-supply = <&vcc3v3_sys>;
+		vcc3-supply = <&vcc3v3_sys>;
+		vcc4-supply = <&vcc3v3_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+		wakeup-source;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-init-microvolt = <900000>;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_gpu: DCDC_REG2 {
+				regulator-name = "vdd_gpu";
+				regulator-init-microvolt = <900000>;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vdd_npu: DCDC_REG4 {
+				regulator-name = "vdd_npu";
+				regulator-init-microvolt = <900000>;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG5 {
+				regulator-name = "vcc_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_image: LDO_REG1 {
+				regulator-name = "vdda0v9_image";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v9: LDO_REG2 {
+				regulator-name = "vdda_0v9";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_pmu: LDO_REG3 {
+				regulator-name = "vdda0v9_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vccio_acodec: LDO_REG4 {
+				regulator-name = "vccio_acodec";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-name = "vcc3v3_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcca_1v8: LDO_REG7 {
+				regulator-name = "vcca_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pmu: LDO_REG8 {
+				regulator-name = "vcca1v8_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcca1v8_image: LDO_REG9 {
+				regulator-name = "vcca1v8_image";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v3: SWITCH_REG1 {
+				regulator-name = "vcc_3v3";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: SWITCH_REG2 {
+				regulator-name = "vcc3v3_sd";
+				regulator-always-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&i2c5 {
+	/* pin 3 (SDA) + 4 (SCL) of header con2 */
+	status = "disabled";
+};
+
+&mdio0 {
+	rgmii_phy0: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
+	};
+};
+
+&pinctrl {
+	leds {
+		blue_led_pin: blue-led-pin {
+			rockchip,pins = <0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+		green_led_pin: green-led-pin {
+			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int: pmic_int {
+			rockchip,pins =
+				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+	};
+
+	usb {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm8 {
+	/* fan 5v - gnd - pwm */
+	status = "okay";
+};
+
+&pwm10 {
+	/* pin 7 of header con2 */
+	status = "disabled";
+};
+
+&pwm11 {
+	/* pin 15 of header con2 */
+	status = "disabled";
+};
+
+&pwm12 {
+	/* pin 21 of header con2 */
+	/* shared with uart9 + spi3 */
+	pinctrl-0 = <&pwm12m1_pins>;
+	status = "disabled";
+};
+
+&pwm13 {
+	/* pin 24 of header con2 */
+	/* shared with uart9 */
+	pinctrl-0 = <&pwm13m1_pins>;
+	status = "disabled";
+};
+
+&pwm14 {
+	/* pin 23 of header con2 */
+	/* shared with spi3 */
+	pinctrl-0 = <&pwm14m1_pins>;
+	status = "disabled";
+};
+
+&pwm15 {
+	/* pin 19 of header con2 */
+	/* shared with spi3 */
+	pinctrl-0 = <&pwm15m1_pins>;
+	status = "disabled";
+};
+
+&saradc {
+	vref-supply = <&vcca_1v8>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	no-sd;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
+	status = "okay";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_emmc: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x0 0x408000 0x0 0x8000>;
+		};
+	};
+};
+
+&sdmmc0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	max-frequency = <150000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_sd: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x0 0x408000 0x0 0x8000>;
+		};
+	};
+};
+
+&spi3 {
+	/* pin 19 (MO) + 21 (MI) + 23 (CK) of header con2 */
+	/* shared with pwm12/14/15 and uart9 */
+	pinctrl-0 = <&spi3m1_pins>;
+	status = "disabled";
+};
+
+&tsadc {
+	status = "okay";
+};
+
+&uart0 {
+	/* pin 8 (TX) + 10 (RX) (RTS:16, CTS:18) of header con2 */
+	status = "disabled";
+};
+
+&uart2 {
+	/* debug-uart */
+	status = "okay";
+};
+
+&uart7 {
+	/* pin 11 (TX) + 13 (RX) of header con2 */
+	pinctrl-0 = <&uart7m1_xfer>;
+	status = "disabled";
+};
+
+&uart9 {
+	/* pin 21 (TX) + 24 (RX) of header con2 */
+	/* shared with pwm13 and pwm12/spi3 */
+	pinctrl-0 = <&uart9m1_xfer>;
+	status = "disabled";
+};
+
+&u2phy0_host {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
+&u2phy0_otg {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
+&u2phy1_host {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
+&u2phy1_otg {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy1 {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usbdrd_dwc3 {
+	dr_mode = "host";
+	extcon = <&usb2phy0>;
+};
+
+&usbdrd30 {
+	status = "okay";
+};
+
+&usbhost30 {
+	status = "okay";
+};
+
+&combphy0_us {
+	status = "okay";
+};
+
+&combphy1_usq {
+	status = "okay";
+};
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 3c6b3dd9b531..ffd3aa8a4e77 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -68,6 +68,12 @@ config MACH_RK3568_EVB
 	help
 	  Say Y here if you are using a RK3568 EVB
 
+config MACH_RK3568_BPI_R2PRO
+	select ARCH_RK3568
+	bool "RK3568 BPI R2PRO"
+	help
+	  Say Y here if you are using a RK3568 Bananpi R2 Pro
+
 config MACH_PINE64_QUARTZ64
 	select ARCH_RK3568
 	bool "Pine64 Quartz64"
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 0a485cad24d1..cdc7772c2e3d 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -14,6 +14,9 @@ image-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += barebox-rk3288-phycore-som.img
 pblb-$(CONFIG_MACH_RK3568_EVB) += start_rk3568_evb
 image-$(CONFIG_MACH_RK3568_EVB) += barebox-rk3568-evb.img
 
+pblb-$(CONFIG_MACH_RK3568_BPI_R2PRO) += start_rk3568_bpi_r2pro
+image-$(CONFIG_MACH_RK3568_BPI_R2PRO) += barebox-rk3568-bpi-r2pro.img
+
 pblb-$(CONFIG_MACH_PINE64_QUARTZ64) += start_quartz64a
 image-$(CONFIG_MACH_PINE64_QUARTZ64) += barebox-quartz64a.img
 
@@ -24,6 +27,10 @@ $(obj)/barebox-rk3568-evb.img: $(obj)/start_rk3568_evb.pblb \
                 $(board)/rockchip-rk3568-evb/sdram-init.bin
 	$(call if_changed,rkimg_image)
 
+$(obj)/barebox-rk3568-bpi-r2pro.img: $(obj)/start_rk3568_bpi_r2pro.pblb \
+                $(board)/rockchip-rk3568-bpi-r2pro/sdram-init.bin
+	$(call if_changed,rkimg_image)
+
 $(obj)/barebox-quartz64a.img: $(obj)/start_quartz64a.pblb \
                 $(board)/pine64-quartz64/sdram-init.bin
 	$(call if_changed,rkimg_image)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

