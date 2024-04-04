Delivery-date: Thu, 04 Apr 2024 13:16:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsL4t-009W7U-1C
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 13:16:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsL4r-00032X-Jn
	for lore@pengutronix.de; Thu, 04 Apr 2024 13:16:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMW6koBABlq72P/ECbMHdlJR0g4ezKBKGstdsl8NtyA=; b=n7KJnM/YwcYWCs
	7OiAADOdFneUWRmAlLLSP8Q57d+/z50HyxdQGDiQVTHBUl1kiQmPt0g8HkvxHd465u2Ln9TrLHsCP
	jQvk+x6vU1+GhCiVOGHluOxT+hJdoxhvIUocURj1ZH07e/3Y/zqLApx//tCW9EQdXrqqyIcMuX2dK
	7MiyN56H/wvvIR5TXggG9NxyatsY/Gcg/b7EUoudP8lyyTcGUjXhhgo9LkmW/xtQDGMfaZUIjkoGw
	KAFe0RR6v2of/vg/SURwL4V01dqmjG1jsoeEgkXOpqkjpmS/19f0s4lgia0ZGQ7Rwt/VqQ6ygQTEB
	WBTrQJ1/fAaKruhmoDNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsL4L-00000002LPb-2yQT;
	Thu, 04 Apr 2024 11:15:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsL4G-00000002LNX-1iVF
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 11:15:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsL4F-0002Ok-4p; Thu, 04 Apr 2024 13:15:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsL4E-00AMOC-MH; Thu, 04 Apr 2024 13:15:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsL4E-008kbY-1t;
	Thu, 04 Apr 2024 13:15:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Apr 2024 13:15:27 +0200
Message-Id: <20240404111527.2083308-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240404111527.2083308-1-s.hauer@pengutronix.de>
References: <20240404111527.2083308-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_041540_817779_DFCA81D2 
X-CRM114-Status: GOOD (  27.51  )
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
Cc: David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] arm: boards: Add support for protonic-mecsbc board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Jander <david@protonic.nl>

MECSBC is a single-board-computer manufactured by Protonic Holland used in
blood analysis machines manufactured by RR-Mechatronics.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v1:
    
    - Use aiochannel_name_get_value() helper
    - some code refactoring

 Documentation/boards/rockchip.rst          |   1 +
 arch/arm/boards/Makefile                   |   1 +
 arch/arm/boards/protonic-mecsbc/Makefile   |   3 +
 arch/arm/boards/protonic-mecsbc/board.c    | 159 +++++
 arch/arm/boards/protonic-mecsbc/lowlevel.c |  33 +
 arch/arm/configs/rockchip_v8_defconfig     |   4 +
 arch/arm/dts/Makefile                      |   1 +
 arch/arm/dts/rk3568-mecsbc-linux.dts       | 704 +++++++++++++++++++++
 arch/arm/dts/rk3568-mecsbc.dts             | 147 +++++
 arch/arm/mach-rockchip/Kconfig             |   6 +
 images/Makefile.rockchip                   |   1 +
 11 files changed, 1060 insertions(+)
 create mode 100644 arch/arm/boards/protonic-mecsbc/Makefile
 create mode 100644 arch/arm/boards/protonic-mecsbc/board.c
 create mode 100644 arch/arm/boards/protonic-mecsbc/lowlevel.c
 create mode 100644 arch/arm/dts/rk3568-mecsbc-linux.dts
 create mode 100644 arch/arm/dts/rk3568-mecsbc.dts

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index 583b4f1720..aa2febc8eb 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -61,6 +61,7 @@ Supported Boards
 - Pine64 Quartz64 Model A
 - Radxa ROCK3 Model A
 - Radxa CM3 (RK3566) IO Board
+- Protonic MECSBC
 
 The steps described in the following target the RK3568 and the RK3568 EVB but
 generally apply to both SoCs and all boards.
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 05fbcca175..84e777092d 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -109,6 +109,7 @@ obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
 obj-$(CONFIG_MACH_POLYHEX_DEBIX)		+= polyhex-debix/
 obj-$(CONFIG_MACH_PROTONIC_IMX6)		+= protonic-imx6/
 obj-$(CONFIG_MACH_PROTONIC_IMX8M)		+= protonic-imx8m/
+obj-$(CONFIG_MACH_PROTONIC_MECSBC)		+= protonic-mecsbc/
 obj-$(CONFIG_MACH_PROTONIC_STM32MP1)		+= protonic-stm32mp1/
 obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
 obj-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x/
diff --git a/arch/arm/boards/protonic-mecsbc/Makefile b/arch/arm/boards/protonic-mecsbc/Makefile
new file mode 100644
index 0000000000..b37b6c870b
--- /dev/null
+++ b/arch/arm/boards/protonic-mecsbc/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/protonic-mecsbc/board.c b/arch/arm/boards/protonic-mecsbc/board.c
new file mode 100644
index 0000000000..3ba8fb8d1c
--- /dev/null
+++ b/arch/arm/boards/protonic-mecsbc/board.c
@@ -0,0 +1,159 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "MECSBC: " fmt
+
+#include <bootsource.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <init.h>
+#include <mach/rockchip/bbu.h>
+#include <environment.h>
+#include <param.h>
+#include <of_device.h>
+#include <aiodev.h>
+#include <globalvar.h>
+
+struct mecsbc_model {
+	const char *name;
+	const char *shortname;
+};
+
+struct mecsbc_priv {
+	int hw_id;
+	int hw_rev;
+};
+
+static struct mecsbc_priv mecsbc_data;
+
+static int saradc_get_value(const char *chan)
+{
+	int ret, voltage;
+
+	ret = aiochannel_name_get_value(chan, &voltage);
+	if (ret) {
+		pr_warn_once("Cannot read ADC %s: %pe\n", chan, ERR_PTR(ret));
+		return 0;
+	}
+
+	return voltage;
+}
+
+static int mecsbc_get_vin_mv(void)
+{
+	return saradc_get_value("aiodev0.in_value2_mV") * 22;
+}
+
+static bool mecsbc_get_usb_boot(void)
+{
+	return saradc_get_value("aiodev0.in_value0_mV") < 74;
+}
+
+static int mecsbc_adc_id_values[] = {
+	1800, 1662, 1521, 1354, 1214, 1059, 900, 742, 335, 589, 278, 137, 0
+};
+
+static int mecsbc_get_adc_id(const char *chan)
+{
+	int val;
+	unsigned int t;
+
+	val = saradc_get_value(chan) + 74;
+
+	for (t = 0; t < ARRAY_SIZE(mecsbc_adc_id_values); t++) {
+		if (val > mecsbc_adc_id_values[t])
+			return t;
+	}
+
+	return t;
+}
+
+static void mecsbc_process_adc(struct device *dev)
+{
+	mecsbc_data.hw_id = mecsbc_get_adc_id("aiodev0.in_value1_mV");
+	mecsbc_data.hw_rev = mecsbc_get_adc_id("aiodev0.in_value3_mV");
+
+	dev_add_param_uint32_ro(dev, "boardrev", &mecsbc_data.hw_rev, "%u");
+	dev_add_param_uint32_ro(dev, "boardid", &mecsbc_data.hw_id, "%u");
+
+	/* Check if we need to enable the USB gadget instead of booting */
+	if (mecsbc_get_usb_boot()) {
+		globalvar_add_simple("boot.default", "net");
+		globalvar_add_simple("usbgadget.acm", "1");
+		globalvar_add_simple("usbgadget.autostart", "1");
+		globalvar_add_simple("system.partitions", "/dev/mmc0(mmc0)");
+		pr_info("MECSBC: Enter USB recovery\n");
+	} else {
+		globalvar_add_simple("boot.default", "bootchooser");
+	}
+
+	pr_info("Board id: %d, revision %d\n", mecsbc_data.hw_id, mecsbc_data.hw_rev);
+	pr_info("VIN = %d V\n", mecsbc_get_vin_mv() / 1000);
+}
+
+static int mecsbc_of_fixup_hwrev(struct device *dev)
+{
+	const char *compat;
+	char *buf;
+
+	compat = of_device_get_match_compatible(dev);
+
+	buf = xasprintf("%s-m%u-r%u", compat, mecsbc_data.hw_id,
+			mecsbc_data.hw_rev);
+	barebox_set_of_machine_compatible(buf);
+
+	free(buf);
+
+	return 0;
+}
+
+static int mecsbc_probe(struct device *dev)
+{
+	int ret = 0;
+	enum bootsource bootsource = bootsource_get();
+	int instance = bootsource_get_instance();
+	const struct mecsbc_model *model;
+	struct device_node *np;
+
+	np = of_find_node_by_name_address(NULL, "saradc@fe720000");
+	of_device_ensure_probed(np);
+
+	model = device_get_match_data(dev);
+
+	barebox_set_model(model->name);
+	barebox_set_hostname(model->shortname);
+
+	if (bootsource == BOOTSOURCE_MMC && instance == 1)
+		of_device_enable_path("/chosen/environment-sd");
+	else
+		of_device_enable_path("/chosen/environment-emmc");
+
+	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
+	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc1");
+
+	mecsbc_process_adc(dev);
+	mecsbc_of_fixup_hwrev(dev);
+
+	return ret;
+}
+
+static const struct mecsbc_model mecsbc = {
+	.name = "Protonic MECSBC board",
+	.shortname = "mecsbc",
+};
+
+static const struct of_device_id mecsbc_of_match[] = {
+	{
+		.compatible = "prt,mecsbc",
+		.data = &mecsbc,
+	},
+	{ /* sentinel */ },
+};
+
+static struct driver mecsbc_board_driver = {
+	.name = "board-mecsbc",
+	.probe = mecsbc_probe,
+	.of_compatible = mecsbc_of_match,
+};
+coredevice_platform_driver(mecsbc_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(mecsbc_of_match);
diff --git a/arch/arm/boards/protonic-mecsbc/lowlevel.c b/arch/arm/boards/protonic-mecsbc/lowlevel.c
new file mode 100644
index 0000000000..830d708b6e
--- /dev/null
+++ b/arch/arm/boards/protonic-mecsbc/lowlevel.c
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <asm/barebox-arm.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
+#include <debug_ll.h>
+
+extern char __dtb_rk3568_mecsbc_start[];
+
+ENTRY_FUNCTION(start_mecsbc, r0, r1, r2)
+{
+	/*
+	 * MECSBC IO domain voltages are all +3.3V, except VCCIO4 and VCCIO6
+	 * Both GMAC interfaces need this to work properly.
+	 * FIXME: This is done by the io-domain driver as well, but there
+	 * currently is no mechanism to make sure the driver gets probed
+	 * before its consumers. Remove this setup once this issue is
+	 * resolved.
+	 */
+	writel(RK_SETBITS(0x50), 0xfdc20140);
+
+	putc_ll('>');
+
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3568_barebox_entry(__dtb_rk3568_mecsbc_start);
+}
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 35ff8963a7..216a88e824 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_ROCKCHIP=y
 CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_QUARTZ64=y
+CONFIG_MACH_PROTONIC_MECSBC=y
 CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_MACH_RADXA_ROCK5=y
 CONFIG_MACH_RADXA_CM3=y
@@ -91,6 +92,8 @@ CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_AIODEV=y
+CONFIG_ROCKCHIP_SARADC=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP=y
 CONFIG_DRIVER_NET_RTL8169=y
@@ -138,6 +141,7 @@ CONFIG_GENERIC_PHY=y
 CONFIG_USB_NOP_XCEIV=y
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=y
+CONFIG_PHY_ROCKCHIP_SNPS_PCIE3=y
 CONFIG_ROCKCHIP_IODOMAIN=y
 # CONFIG_VIRTIO_MENU is not set
 CONFIG_FS_CRAMFS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 056d4d565b..7671b9e2ad 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -109,6 +109,7 @@ lwl-$(CONFIG_MACH_PROTONIC_IMX6) += \
 	imx6ul-prti6g.dtb.o \
 	imx6ull-jozacp.dtb.o
 lwl-$(CONFIG_MACH_PROTONIC_IMX8M) += imx8mm-prt8mm.dtb.o
+lwl-$(CONFIG_MACH_PROTONIC_MECSBC) += rk3568-mecsbc.dtb.o
 lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 	stm32mp151-prtt1a.dtb.o \
 	stm32mp151-prtt1c.dtb.o \
diff --git a/arch/arm/dts/rk3568-mecsbc-linux.dts b/arch/arm/dts/rk3568-mecsbc-linux.dts
new file mode 100644
index 0000000000..4a36578614
--- /dev/null
+++ b/arch/arm/dts/rk3568-mecsbc-linux.dts
@@ -0,0 +1,704 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include <dt-bindings/pwm/pwm.h>
+#include <arm64/rockchip/rk3568.dtsi>
+
+/ {
+	model = "Protonic MECSBC";
+	compatible = "prt,mecsbc", "rockchip,rk3568";
+
+	aliases {
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+		ethernet2 = &rtl8111;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	tas2562-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "Speaker";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&tas2562>;
+		};
+	};
+
+	vdd_gpu: regulator-vdd-gpu {
+		compatible = "pwm-regulator";
+		pwms = <&pwm1 0 5000 PWM_POLARITY_INVERTED>;
+		pinctrl-names = "default";
+		pinctrl = <&pwm1m0_pins>;
+		regulator-name = "vdd_gpu";
+		regulator-min-microvolt = <915000>;
+		regulator-max-microvolt = <1000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <250>;
+		pwm-dutycycle-range = <0 100>; /* dutycycle inverted 0% => 0.915V */
+	};
+
+	vdd_npu: regulator-vdd-npu {
+		compatible = "pwm-regulator";
+		pwms = <&pwm2 0 5000 PWM_POLARITY_INVERTED>;
+		pinctrl-names = "default";
+		pinctrl = <&pwm2m0_pins>;
+		regulator-name = "vdd_npu";
+		regulator-min-microvolt = <915000>;
+		regulator-max-microvolt = <1000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <250>;
+		pwm-dutycycle-range = <0 100>; /* dutycycle inverted 0% => 0.915V */
+	};
+
+	vcc_sd: bd2204-switch {
+		compatible = "regulator-gpio";
+		enable-gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+		regulator-name = "sdcard-gpio-supply";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		states = <1800000 0x1>, <3300000 0x0>;
+	};
+
+	p3v3: p3v3-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "p3v3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	p1v8: p1v8-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "p1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	portc0: connector_c0 {
+		compatible = "usb-c-connector";
+		label = "USB-C0";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				usb_con_hs0: endpoint {
+					remote-endpoint = <&usb2phy0_host_portc0>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				usb_con_ss0: endpoint {
+					remote-endpoint = <&combphy0_portc0>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+				usb_con_sbu0: endpoint {
+					remote-endpoint = <&edp_out_portc0>;
+				};
+			};
+		};
+	};
+
+	portc1: connector_c1 {
+		compatible = "usb-c-connector";
+		label = "USB-C1";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				usb_con_hs1: endpoint {
+					remote-endpoint = <&usb2phy1_host_portc1>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				usb_con_ss1: endpoint {
+					remote-endpoint = <&combphy1_portc1>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+				usb_con_sbu1: endpoint {
+					remote-endpoint = <&bridge_out_edp>;
+				};
+			};
+		};
+	};
+
+	edp0: edp@fe0c0000 {
+		compatible = "rockchip,rk3568-edp", "rockchip,rk3399-edp";
+		reg = <0x0 0xfe0c0000 0x0 0x10000>;
+		rockchip,grf = <&grf>;
+		interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_EDP_200M>, <&cru PCLK_EDP_CTRL>, <&cru PCLK_EDPPHY_GRF>;
+		clock-names = "dp", "pclk", "grf";
+		power-domains = <&power RK3568_PD_VO>;
+		resets = <&cru SRST_P_EDP_CTRL>;
+		reset-names = "dp";
+		status = "okay";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			edp_in: port@0 {
+				reg = <0>;
+			};
+
+			edp_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+};
+
+&combphy0 {
+	status = "okay";
+	port {
+		combphy0_portc0: endpoint {
+			remote-endpoint = <&usb_con_ss0>;
+		};
+	};
+};
+
+&combphy1 {
+	status = "okay";
+	port {
+		combphy1_portc1: endpoint {
+			remote-endpoint = <&usb_con_ss1>;
+		};
+	};
+};
+
+&combphy2 {
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&gmac0 {
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
+	phy-handle = <&rgmii_phy0>;
+	phy-mode = "rgmii";
+	clock_in_out = "output";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_clkinout
+		     &gmac0_rgmii_bus>;
+	status = "okay";
+	tx_delay = <0x30>;
+	rx_delay = <0x10>;
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+		pause;
+	};
+};
+
+&gmac1 {
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii";
+	clock_in_out = "output";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m1_miim
+		     &gmac1m1_tx_bus2
+		     &gmac1m1_rx_bus2
+		     &gmac1m1_rgmii_clk
+		     &gmac1m1_clkinout
+		     &gmac1m1_rgmii_bus>;
+	status = "okay";
+	tx_delay = <0x30>;
+	rx_delay = <0x10>;
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	vdd_cpu: regulator@60 {
+		compatible = "fcs,fan53555";
+		reg = <0x60>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1150000>;
+		regulator-ramp-delay = <2300>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	usbc_ctrl0: tps65987d@20 {
+		compatible = "ti,tps65987", "ti,tps6598x";
+		reg = <0x20>;
+	};
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c3m0_xfer>;
+	status = "okay";
+
+	tas2562: tas2562@4c {
+		compatible = "ti,tas2562";
+		reg = <0x4c>;
+		#sound-dai-cells = <0>;
+		shutdown-gpios = <&gpio1 RK_PD4 GPIO_ACTIVE_HIGH>;
+		interrupt-parent = <&gpio1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tas2562>;
+		interrupts = <RK_PD1 IRQ_TYPE_LEVEL_LOW>;
+		ti,imon-slot-no = <0>;
+	};
+
+	tc358867: tc358867@68 {
+		compatible = "toshiba,tc358767";
+		reg = <0x68>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tc358867>;
+		reset-gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
+		clocks = <&cru CLK_CIF_OUT>;
+		clock-names = "ref";
+		toshiba,hpd-pin = <0>;
+		assigned-clocks = <&cru USB480M>, <&cru CLK_CIF_OUT>;
+		assigned-clock-parents = <0>, <&cru USB480M>;
+		assigned-clock-rates = <480000000>, <19200000>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				bridge_in: endpoint {
+					remote-endpoint = <&dsi1_out_bridge>;
+					data-lanes = <1 2 3 4>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				bridge_out_aux: endpoint@0 {
+					remote-endpoint = <&panel_in_edp>;
+				};
+
+				bridge_out_edp: endpoint@1 {
+					remote-endpoint = <&usb_con_sbu1>;
+				};
+			};
+		};
+
+		aux-bus {
+			panel {
+				compatible = "edp-panel";
+
+				port {
+					panel_in_edp: endpoint {
+						remote-endpoint = <&bridge_out_aux>;
+					};
+				};
+			};
+		};
+	};
+};
+
+&i2c5 {
+	status = "okay";
+
+	usbc_ctrl1: tps65987d@20 {
+		compatible = "ti,tps65987", "ti,tps6598x";
+		reg = <0x20>;
+	};
+
+	tmp1075n@48 {
+		compatible = "ti,tmp1075";
+		reg = <0x48>;
+	};
+
+	pcf8563: rtc@51 {
+		compatible = "nxp,pcf85363";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-output-names = "rtcic_32kout";
+	};
+};
+
+&i2s1_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0 &i2s1m0_sdo0>;
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
+&mdio0 {
+	rgmii_phy0: ethernet-phy@8 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x8>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&eth_phy0_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio2 RK_PB2 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&mdio1 {
+	rgmii_phy1: ethernet-phy@2 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&eth_phy1_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pcie2x1 {
+	pinctrl-names = "default";
+	/* pinctrl-0 = <&pcie20m1_pins>; */
+	pinctrl-0 = <&pcie_reset_h>;
+	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	pci@0,0 {
+		device_type = "pci";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+
+		reg = <0 0 0 0 0>;
+
+		rtl8111: net@0,0 {
+			reg = <0 0 0 0 0>;
+		};
+	};
+};
+
+&pcie30phy {
+	status = "okay";
+};
+
+&pcie3x2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie30x2m1_pins>;
+	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&p3v3>;
+	status = "okay";
+};
+
+&pinctrl {
+	ethernet {
+		eth_phy0_rst: eth_phy0_rst {
+			rockchip,pins = <2 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		eth_phy1_rst: eth_phy1_rst {
+			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	tc358867 {
+		pinctrl_tc358867: tc358867 {
+			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>,
+					<4 RK_PC0 1 &pcfg_pull_none>,
+					<1 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
+
+		};
+	};
+
+	tas2562 {
+		pinctrl_tas2562: tas2562 {
+			rockchip,pins = <1 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	pcie {
+		pcie_reset_h: pcie-reset-h {
+			rockchip,pins = <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>,
+				/* pcie20_clkreqnm1 */
+				<2 RK_PD0 4 &pcfg_pull_none>,
+				/* pcie20_wakenm1 */
+				<2 RK_PD1 4 &pcfg_pull_none>;
+		};
+	};
+
+};
+
+&pmu_io_domains {
+	pmuio1-supply = <&p3v3>;
+	pmuio2-supply = <&p3v3>;
+	vccio1-supply = <&p1v8>;
+	vccio2-supply = <&p1v8>;
+	/* vccio3-supply = <&vcc_sd>; */
+	vccio3-supply = <&p3v3>;
+	vccio4-supply = <&p1v8>;
+	vccio5-supply = <&p3v3>;
+	vccio6-supply = <&p1v8>;
+	vccio7-supply = <&p3v3>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&p1v8>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
+	vmmc-supply = <&p3v3>;
+	vqmmc-supply = <&p1v8>;
+	supports-emmc;
+	mmc-hs200-1_8v;
+	non-removable;
+	status = "okay";
+};
+
+&sdmmc0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	vmmc-supply = <&p3v3>;
+	vqmmc-supply = <&vcc_sd>;
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
+&uart2 {
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
+&usb_host0_xhci {
+	extcon = <&usb2phy0>;
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
+&usb_host1_xhci {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	status = "okay";
+	port {
+		usb2phy0_host_portc0: endpoint {
+			remote-endpoint = <&usb_con_hs0>;
+		};
+	};
+};
+
+&usb2phy0_otg {
+	status = "okay";
+};
+
+&usb2phy1 {
+	status = "okay";
+};
+
+&usb2phy1_host {
+	status = "okay";
+	port {
+		usb2phy1_host_portc1: endpoint {
+			remote-endpoint = <&usb_con_hs1>;
+		};
+	};
+};
+
+&usb2phy1_otg {
+	status = "okay";
+};
+
+&vop {
+	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
+	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_dsi1: endpoint@ROCKCHIP_VOP2_EP_MIPI1 {
+		reg = <ROCKCHIP_VOP2_EP_MIPI1>;
+		remote-endpoint = <&dsi1_in_vp0>;
+	};
+};
+
+&vp1 {
+	vp1_out_edp0: endpoint@ROCKCHIP_VOP2_EP_EDP0 {
+		reg = <ROCKCHIP_VOP2_EP_EDP0>;
+		remote-endpoint = <&edp_in_vp1>;
+	};
+};
+
+&dsi1 {
+	status = "okay";
+};
+
+&dsi_dphy1 {
+	status = "okay";
+};
+
+&dsi1_in {
+	dsi1_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_dsi1>;
+	};
+};
+
+&dsi1_out {
+	dsi1_out_bridge: endpoint {
+		remote-endpoint = <&bridge_in>;
+	};
+};
+
+&edp_in {
+	edp_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_edp0>;
+	};
+};
+
+&edp_out {
+	edp_out_portc0: endpoint {
+		remote-endpoint = <&usb_con_sbu0>;
+	};
+};
+
+&pwm1 {
+	status = "okay";
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&gpu_opp_table {
+	compatible = "operating-points-v2";
+
+	opp-200000000 {
+		opp-hz = /bits/ 64 <200000000>;
+		opp-microvolt = <915000>;
+	};
+
+	opp-300000000 {
+		opp-hz = /bits/ 64 <300000000>;
+		opp-microvolt = <915000>;
+	};
+
+	opp-400000000 {
+		opp-hz = /bits/ 64 <400000000>;
+		opp-microvolt = <915000>;
+	};
+
+	opp-600000000 {
+		opp-hz = /bits/ 64 <600000000>;
+		opp-microvolt = <920000>;
+	};
+
+	opp-700000000 {
+		opp-hz = /bits/ 64 <700000000>;
+		opp-microvolt = <950000>;
+	};
+
+	opp-800000000 {
+		opp-hz = /bits/ 64 <800000000>;
+		opp-microvolt = <1000000>;
+	};
+};
diff --git a/arch/arm/dts/rk3568-mecsbc.dts b/arch/arm/dts/rk3568-mecsbc.dts
new file mode 100644
index 0000000000..05893b8f72
--- /dev/null
+++ b/arch/arm/dts/rk3568-mecsbc.dts
@@ -0,0 +1,147 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3568-mecsbc-linux.dts"
+#include "rk356x.dtsi"
+
+/ {
+	aliases {
+		state = &state_emmc;
+	};
+
+	chosen: chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &environment_sd;
+			status = "disabled";
+		};
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+			status = "okay";
+		};
+	};
+
+	state_emmc: state {
+		magic = <0x292D3A3C>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&state_backend_emmc>;
+		backend-stridesize = <0x400>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts {
+					reg = <0x0 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <21>;
+				};
+			};
+
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts {
+					reg = <0x10 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority {
+					reg = <0x14 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+
+			last_chosen {
+				reg = <0x20 0x4>;
+				type = "uint32";
+			};
+		};
+
+		blobs {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			data_partitions {
+				reg = <0x26 0x100>;
+				type = "string";
+			};
+		};
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		/* Address will be determined by the bootloader */
+		ramoops {
+			compatible = "ramoops";
+		};
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		/* Address will be determined by the bootloader */
+		ramoops {
+			compatible = "ramoops";
+		};
+	};
+};
+
+&sdhci {
+	no-sd;
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		/* eMMC reserved 8MiB for barebox (2 copies?), env and state */
+		environment_emmc: partition@7b0000 {
+			label = "barebox-environment";
+			reg = <0x0 0x7b0000 0x0 0x10000>;
+		};
+
+		/* eMMC state after barebox and environment */
+		state_backend_emmc: partition@7c0000 {
+			label = "state";
+			reg = <0x0 0x7c0000 0x0 0x40000>;
+		};
+	};
+};
+
+&sdmmc0 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_sd: partition@7b0000 {
+			label = "barebox-environment";
+			reg = <0x0 0x7b0000 0x0 0x10000>;
+		};
+	};
+};
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 8cdf2c28a9..0e2b7810bc 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -91,6 +91,12 @@ config MACH_PINE64_QUARTZ64
 	help
 	  Say Y here if you are using a Pine64 Quartz64
 
+config MACH_PROTONIC_MECSBC
+	select ARCH_RK3568
+	bool "Protonic MECSBC"
+	help
+	  Say Y here if you are using a Protonic MECSBC
+
 config MACH_RADXA_ROCK3
 	select ARCH_RK3568
 	bool "Radxa ROCK3"
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index ea32af4241..ceacfde10d 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -32,6 +32,7 @@ image-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += barebox-rk3288-phycore-som.img
 $(call build_rockchip_image, CONFIG_MACH_RK3568_EVB, start_rk3568_evb, rockchip-rk3568-evb/sdram-init.bin, rk3568-evb)
 $(call build_rockchip_image, CONFIG_MACH_RK3568_BPI_R2PRO, start_rk3568_bpi_r2pro, rockchip-rk3568-bpi-r2pro/sdram-init.bin, rk3568-bpi-r2pro)
 $(call build_rockchip_image, CONFIG_MACH_PINE64_QUARTZ64, start_quartz64a, pine64-quartz64/sdram-init.bin, quartz64a)
+$(call build_rockchip_image, CONFIG_MACH_PROTONIC_MECSBC, start_mecsbc, protonic-mecsbc/sdram-init.bin, mecsbc)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK3, start_rock3a, radxa-rock3/sdram-init.bin, rock3a)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK5, start_rock5b, radxa-rock5/sdram-init.bin, rock5b)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_CM3, start_radxa_cm3_io, radxa-cm3/sdram-init.bin, radxa-cm3-io)
-- 
2.39.2



