Delivery-date: Wed, 13 Aug 2025 09:44:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6AA-0006fy-06
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 09:44:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6A7-0005hy-VJ
	for lore@pengutronix.de; Wed, 13 Aug 2025 09:44:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MzXavIN+GfVwHtZW75tLSIUjhVtHmBFgRfI9PNjjXoY=; b=fyn908yXumyX9f
	CrkgmjyexG7bQRlkQQbp3VnnkY2QD8bcZLPP9GFUbq9icB4eDMZG9fuySBBaCRURgeH52OZpa13u0
	dFY1SWTLcTTfxBXkCAnzDB2j2aw4CMCVMXkOI20SAnxaYcnOY4QbLOOIjPZ35HO8P0h0kE4YAlzvU
	nzqZq1BPRWgd93gGgU9lMm1M4v/6xFZ9S10a3KsrbfjwbAvqouKOTRc42t3nWLVa2Ifk7QbEmc1vW
	GNTzdgpMDyuHHvvQ0rp/bpKkpuvrC4MQ4JBb8A29C5S6M07VUIiCM2LSkQoXGZjwCCL+Tt+2vkJCD
	JYcjGv2sNMzUis6GKmeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um69b-0000000CyAJ-1dsQ;
	Wed, 13 Aug 2025 07:44:11 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um5Ui-0000000Crp4-1WBA
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 07:01:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=MzXavIN+GfVwHtZW75tLSIUjhVtHmBFgRfI9PNjjXoY=;
	b=YuTvnpjnbApe3cyWKnqWfiLETolOR1hblNUyppXaNBGJS8K2nzYIvTCvMOm4lsJuGrprzccjRECTX
	 SRtnEUG2cSfqdVBa6czd1bHQDzfEbpzt+j6jGDD8R+Sz8T/GAVWXmSvngzxTho0x/yIkpW0voFYNKz
	 5W4R8Pu0W2mYQeMC71WZ+J41GmVsZdQukn/ZHSQhNdJ3BIRhlZwh8SUukQ/PQ6IKj/2OZ+U6IwOTxX
	 +0VrKW3DuHYqZ8WmMjVHkX3QGKl0p6ZoqrcBjI17fzg2RgelAtF+8ckyGjYoYCcv3YGrPvGwp3rOfJ
	 VPc5HJCgtbQPhqcTjUVbO3oz2xbrmHg==
X-MSG-ID: 64d65336-7813-11f0-9d4d-00505681446f
From: David Jander <david@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed, 13 Aug 2025 09:01:49 +0200
Message-ID: <20250813070149.855341-1-david@protonic.nl>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_000156_693537_58B96313 
X-CRM114-Status: GOOD (  21.45  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arm: boards: Add support for Protonic PRTPUK board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PRTPUK is a credit-card sized ISOBUS virtual terminal, based on the
Rockchip RK3576 SoC, that features a CAN interface and a 100/1000Base-T1
interface for HS-ISOBUS (HSI), as well as a USB-C port for connecting to a
touch-screen monitor.

Signed-off-by: David Jander <david@protonic.nl>
---
 arch/arm/boards/Makefile                   |   1 +
 arch/arm/boards/protonic-prtpuk/Makefile   |   3 +
 arch/arm/boards/protonic-prtpuk/board.c    | 162 ++++++++
 arch/arm/boards/protonic-prtpuk/lowlevel.c |  23 +
 arch/arm/configs/multi_v8_defconfig        |   1 +
 arch/arm/configs/rockchip_v8_defconfig     |   1 +
 arch/arm/dts/Makefile                      |   1 +
 arch/arm/dts/rk3576-prtpuk-linux.dts       | 462 +++++++++++++++++++++
 arch/arm/dts/rk3576-prtpuk.dts             | 124 ++++++
 arch/arm/mach-rockchip/Kconfig             |   6 +
 dts/Bindings/arm/rockchip.yaml             |   5 +
 images/Makefile.rockchip                   |   1 +
 12 files changed, 790 insertions(+)
 create mode 100644 arch/arm/boards/protonic-prtpuk/Makefile
 create mode 100644 arch/arm/boards/protonic-prtpuk/board.c
 create mode 100644 arch/arm/boards/protonic-prtpuk/lowlevel.c
 create mode 100644 arch/arm/dts/rk3576-prtpuk-linux.dts
 create mode 100644 arch/arm/dts/rk3576-prtpuk.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index ac1fa74d4c..01062783b1 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -92,6 +92,7 @@ obj-$(CONFIG_MACH_POLYHEX_DEBIX)		+= polyhex-debix/
 obj-$(CONFIG_MACH_PROTONIC_IMX6)		+= protonic-imx6/
 obj-$(CONFIG_MACH_PROTONIC_IMX8M)		+= protonic-imx8m/
 obj-$(CONFIG_MACH_PROTONIC_MECSBC)		+= protonic-mecsbc/
+obj-$(CONFIG_MACH_PROTONIC_PRTPUK)		+= protonic-prtpuk/
 obj-$(CONFIG_MACH_PROTONIC_STM32MP1)		+= protonic-stm32mp1/
 obj-$(CONFIG_MACH_PROTONIC_STM32MP13)		+= protonic-stm32mp13/
 obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
diff --git a/arch/arm/boards/protonic-prtpuk/Makefile b/arch/arm/boards/protonic-prtpuk/Makefile
new file mode 100644
index 0000000000..b37b6c870b
--- /dev/null
+++ b/arch/arm/boards/protonic-prtpuk/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/protonic-prtpuk/board.c b/arch/arm/boards/protonic-prtpuk/board.c
new file mode 100644
index 0000000000..59ee065aa8
--- /dev/null
+++ b/arch/arm/boards/protonic-prtpuk/board.c
@@ -0,0 +1,162 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "PRTPUK: " fmt
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
+struct prtpuk_model {
+	const char *name;
+	const char *shortname;
+};
+
+struct prtpuk_priv {
+	int hw_id;
+	int hw_rev;
+};
+
+static struct prtpuk_priv prtpuk_data;
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
+static int prtpuk_get_vin_mv(void)
+{
+	return saradc_get_value("aiodev0.in_value4_mV") * 22;
+}
+
+static bool prtpuk_get_usb_boot(void)
+{
+	return saradc_get_value("aiodev0.in_value1_mV") < 74;
+}
+
+static int prtpuk_adc_id_values[] = {
+	1800, 1662, 1521, 1354, 1214, 1059, 900, 742, 335, 589, 278, 137, 0
+};
+
+static int prtpuk_get_adc_id(const char *chan)
+{
+	int val;
+	unsigned int t;
+
+	val = saradc_get_value(chan) + 74;
+
+	for (t = 0; t < ARRAY_SIZE(prtpuk_adc_id_values); t++) {
+		if (val > prtpuk_adc_id_values[t])
+			return t;
+	}
+
+	return t;
+}
+
+static void prtpuk_process_adc(struct device *dev)
+{
+	int vin;
+
+	prtpuk_data.hw_id = prtpuk_get_adc_id("aiodev0.in_value3_mV");
+	prtpuk_data.hw_rev = prtpuk_get_adc_id("aiodev0.in_value2_mV");
+
+	dev_add_param_uint32_ro(dev, "boardrev", &prtpuk_data.hw_rev, "%u");
+	dev_add_param_uint32_ro(dev, "boardid", &prtpuk_data.hw_id, "%u");
+
+	/* Check if we need to enable the USB gadget instead of booting */
+	if (prtpuk_get_usb_boot()) {
+		globalvar_add_simple("boot.default", "net");
+		globalvar_add_simple("usbgadget.acm", "1");
+		globalvar_add_simple("usbgadget.autostart", "1");
+		globalvar_add_simple("system.partitions", "/dev/disk0(mmc0)");
+		pr_info("PRTPUK: Enter USB recovery\n");
+	} else {
+		globalvar_add_simple("boot.default", "bootchooser");
+	}
+
+	pr_info("Board id: %d, revision %d\n", prtpuk_data.hw_id, prtpuk_data.hw_rev);
+	vin = prtpuk_get_vin_mv();
+	pr_info("VIN = %d.%d V\n", vin / 1000, (vin % 1000) / 100);
+}
+
+static int prtpuk_of_fixup_hwrev(struct device *dev)
+{
+	const char *compat;
+	char *buf;
+
+	compat = of_device_get_match_compatible(dev);
+
+	buf = xasprintf("%s-m%u-r%u", compat, prtpuk_data.hw_id,
+			prtpuk_data.hw_rev);
+	barebox_set_of_machine_compatible(buf);
+
+	free(buf);
+
+	return 0;
+}
+
+static int prtpuk_probe(struct device *dev)
+{
+	int ret = 0;
+	enum bootsource bootsource = bootsource_get();
+	int instance = bootsource_get_instance();
+	const struct prtpuk_model *model;
+	struct device_node *np;
+
+	np = of_find_node_by_name_address(NULL, "adc@2ae00000");
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
+	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
+	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc1");
+
+	prtpuk_process_adc(dev);
+	prtpuk_of_fixup_hwrev(dev);
+
+	return ret;
+}
+
+static const struct prtpuk_model prtpuk = {
+	.name = "Protonic PRTPUK board",
+	.shortname = "prtpuk",
+};
+
+static const struct of_device_id prtpuk_of_match[] = {
+	{
+		.compatible = "prt,prtpuk",
+		.data = &prtpuk,
+	},
+	{ /* sentinel */ },
+};
+
+static struct driver prtpuk_board_driver = {
+	.name = "board-prtpuk",
+	.probe = prtpuk_probe,
+	.of_compatible = prtpuk_of_match,
+};
+coredevice_platform_driver(prtpuk_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(prtpuk_of_match);
diff --git a/arch/arm/boards/protonic-prtpuk/lowlevel.c b/arch/arm/boards/protonic-prtpuk/lowlevel.c
new file mode 100644
index 0000000000..08de527bf6
--- /dev/null
+++ b/arch/arm/boards/protonic-prtpuk/lowlevel.c
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <asm/barebox-arm.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
+#include <debug_ll.h>
+
+extern char __dtb_rk3576_prtpuk_start[];
+
+ENTRY_FUNCTION(start_prtpuk, r0, r1, r2)
+{
+	putc_ll('>');
+
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3576_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3576_barebox_entry(__dtb_rk3576_prtpuk_start);
+}
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index a487d331d0..d63899b278 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -37,6 +37,7 @@ CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_PINETAB2=y
 CONFIG_MACH_PINE64_QUARTZ64=y
 CONFIG_MACH_PROTONIC_MECSBC=y
+CONFIG_MACH_PROTONIC_PRTPUK=y
 CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_MACH_RADXA_ROCK5=y
 CONFIG_MACH_RADXA_CM3=y
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 0239f857aa..bd23cadc18 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_PINETAB2=y
 CONFIG_MACH_PINE64_QUARTZ64=y
 CONFIG_MACH_PROTONIC_MECSBC=y
+CONFIG_MACH_PROTONIC_PRTPUK=y
 CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_MACH_RADXA_ROCK5=y
 CONFIG_MACH_RADXA_CM3=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 6612a51452..75d7c1923b 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -112,6 +112,7 @@ lwl-$(CONFIG_MACH_PROTONIC_IMX6) += \
 	imx6ull-jozacp.dtb.o
 lwl-$(CONFIG_MACH_PROTONIC_IMX8M) += imx8mm-prt8mm.dtb.o
 lwl-$(CONFIG_MACH_PROTONIC_MECSBC) += rk3568-mecsbc.dtb.o
+lwl-$(CONFIG_MACH_PROTONIC_PRTPUK) += rk3576-prtpuk.dtb.o
 lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 	stm32mp151-prtt1a.dtb.o \
 	stm32mp151-prtt1c.dtb.o \
diff --git a/arch/arm/dts/rk3576-prtpuk-linux.dts b/arch/arm/dts/rk3576-prtpuk-linux.dts
new file mode 100644
index 0000000000..2085adbaa8
--- /dev/null
+++ b/arch/arm/dts/rk3576-prtpuk-linux.dts
@@ -0,0 +1,462 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include <dt-bindings/usb/pd.h>
+#include <dt-bindings/pwm/pwm.h>
+#include <arm64/rockchip/rk3576.dtsi>
+
+/ {
+	model = "Protonic PRTPUK";
+	compatible = "prt,prtpuk", "rockchip,rk3576";
+
+	aliases {
+		ethernet0 = &gmac0;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial0:1500000n8";
+	};
+
+/* PWM support still missing for RK3576, pwm version 4
+	vdd_gpu: regulator-vdd-gpu {
+		compatible = "pwm-regulator";
+		pwms = <&pwm2 0 5000 PWM_POLARITY_INVERTED>;
+		pinctrl-names = "default";
+		pinctrl = <&pwm2m0_pins>;
+		regulator-name = "vdd_gpu";
+		regulator-min-microvolt = <770000>;
+		regulator-max-microvolt = <850000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <250>;
+		pwm-dutycycle-range = <0 100>; /* dutycycle inverted 0% => 0.915V * /
+	};
+
+	vdd_lit: regulator-vdd-lit {
+		compatible = "pwm-regulator";
+		pwms = <&pwm1 3 5000 PWM_POLARITY_INVERTED>;
+		pinctrl-names = "default";
+		pinctrl = <&pwm1m0_pins>;
+		regulator-name = "vdd_lit";
+		regulator-min-microvolt = <836000>;
+		regulator-max-microvolt = <960000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <250>;
+		pwm-dutycycle-range = <0 100>; /* dutycycle inverted 0% => 0.915V * /
+	};
+*/
+	vdd_gpu: regulator-vdd-gpu {
+		compatible = "regulator-gpio";
+		gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
+		states = <850000 0x0>,
+			 <770000 0x1>;
+		regulator-name = "vdd_gpu";
+		regulator-min-microvolt = <770000>;
+		regulator-max-microvolt = <850000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <250>;
+	};
+
+	vdd_lit: regulator-vdd-lit {
+		compatible = "regulator-gpio";
+		gpios = <&gpio0 RK_PC0 GPIO_ACTIVE_HIGH>;
+		states = <960000 0x0>,
+			 <836000 0x1>;
+		regulator-name = "vdd_lit";
+		regulator-min-microvolt = <836000>;
+		regulator-max-microvolt = <960000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <250>;
+	};
+
+	p12v0: p12v0-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "p12v0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
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
+	vcc_typec0: regulator-vcc-typec0 {
+		compatible = "regulator-gpio";
+		enable-active-high;
+		enable-gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
+		states = <5000000 0x0>,
+			 <15000000 0x1>;
+		regulator-name = "vcc_typec0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <15000000>;
+		vin-supply = <&p12v0>;
+	};
+
+	leds: leds {
+		compatible = "gpio-leds";
+
+		green_led: green-led {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
+
+&combphy1_psu {
+	status = "okay";
+};
+
+&combphy0_ps {
+	status = "okay";
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_big>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_big>;
+};
+
+&cpu_b2 {
+	cpu-supply = <&vdd_big>;
+};
+
+&cpu_b3 {
+	cpu-supply = <&vdd_big>;
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_lit>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_lit>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_lit>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_lit>;
+};
+
+&gmac0 {
+	phy-mode = "rgmii-id";
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&eth0m0_miim
+		     &eth0m0_tx_bus2
+		     &eth0m0_rx_bus2
+		     &eth0m0_rgmii_clk
+		     &eth0m0_rgmii_bus>;
+	status = "okay";
+};
+
+&mdio0 {
+	rgmii_phy0: phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
+		clocks = <&cru REFCLKO25M_GMAC0_OUT>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&eth_phy0_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0m1_xfer>;
+	status = "okay";
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1m1_xfer>;
+	status = "okay";
+
+	vdd_big: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_big";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <750000>;
+		regulator-max-microvolt = <1000000>;
+		regulator-ramp-delay = <2300>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c2m3_xfer>;
+	status = "okay";
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c3m3_xfer>;
+	status = "okay";
+
+	usbc0: typec-portc@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PC7 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usbc0_interrupt>;
+		vbus-supply = <&vcc_typec0>;
+
+		connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			data-role = "dual";
+			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
+			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
+			power-role = "source";
+			source-pdos = <PDO_FIXED(5000, 1500,
+						 PDO_FIXED_USB_COMM | PDO_FIXED_DATA_SWAP)>,
+				      <PDO_FIXED(15000, 1000,
+						 PDO_FIXED_USB_COMM | PDO_FIXED_DATA_SWAP)>;
+
+			altmodes {
+				displayport {
+					svid = /bits/ 16 <0xff01>;
+					vdo = <0xffffffff>;
+				};
+			};
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					usbc0_hs_ep: endpoint {
+						remote-endpoint = <&usb_drd0_hs_ep>;
+					};
+				};
+				port@1 {
+					reg = <1>;
+					usbc0_ss_ep: endpoint {
+						remote-endpoint = <&usb_drd0_ss_ep>;
+					};
+				};
+				port@2 {
+					reg = <2>;
+					usbc0_dp_ep: endpoint {
+						remote-endpoint = <&usbdp_phy_ep>;
+					};
+				};
+			};
+		};
+	};
+
+	pcf8563: rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-output-names = "rtcic_32kout";
+	};
+};
+
+&sai3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sai3m1_lrck
+		     &sai3m1_sclk
+		     &sai3m1_sdi
+		     &sai3m1_sdo>;
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
+&pcie1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset>;
+	reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&p3v3>;
+	status = "okay";
+};
+
+&pinctrl {
+	ethernet {
+		eth_phy0_rst: eth_phy0_rst {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pcie {
+		pcie_reset: pcie-reset {
+			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>,
+				/* pcie1_clkreqnm3 */
+				<4 RK_PC1 5 &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		usbc0_interrupt: usbc0-interrupt {
+			rockchip,pins = <4 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+		usbc0_sbu1: usbc0-sbu1 {
+			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+		usbc0_sbu2: usbc0-sbu2 {
+			rockchip,pins = <2 RK_PA7 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+};
+
+&saradc {
+	vref-supply = <&p1v8>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	full-pwr-cycle-in-suspend;
+	max-frequency = <200000000>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	no-sdio;
+	no-sd;
+	non-removable;
+	status = "okay";
+};
+
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	status = "okay";
+};
+
+/*
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	phy-supply = <&vcc_5v0_usbhost>;
+	status = "okay";
+};
+*/
+
+&uart0 {
+	pinctrl-0 = <&uart0m0_xfer>;
+	status = "okay";
+};
+
+&usb_drd0_dwc3 {
+	usb-role-switch;
+	dr_mode = "otg";
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			usb_drd0_hs_ep: endpoint {
+				remote-endpoint = <&usbc0_hs_ep>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			usb_drd0_ss_ep: endpoint {
+				remote-endpoint = <&usbc0_ss_ep>;
+			};
+		};
+	};
+};
+
+/*
+&usb_drd1_dwc3 {
+	dr_mode = "host";
+	status = "okay";
+};
+*/
+
+&usbdp_phy {
+	mode-switch;
+	orientation-switch;
+	pinctrl-names = "default";
+	pinctrl-0 = <&usbc0_sbu1 &usbc0_sbu2>;
+	sbu1-dc-gpios = <&gpio2 RK_PA6 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio2 RK_PA7 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	port {
+		usbdp_phy_ep: endpoint {
+			remote-endpoint = <&usbc0_dp_ep>;
+		};
+	};
+};
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_dsi1: endpoint@ROCKCHIP_VOP2_EP_DP0 {
+		reg = <ROCKCHIP_VOP2_EP_DP0>;
+		/* remote-endpoint = <...>; ?? */
+	};
+};
+
+/*
+&pwm1 {
+	status = "okay";
+};
+
+&pwm2 {
+	status = "okay";
+};
+*/
diff --git a/arch/arm/dts/rk3576-prtpuk.dts b/arch/arm/dts/rk3576-prtpuk.dts
new file mode 100644
index 0000000000..a66b6f502c
--- /dev/null
+++ b/arch/arm/dts/rk3576-prtpuk.dts
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3576-prtpuk-linux.dts"
+#include "rk3576.dtsi"
+
+/ {
+	barebox,deep-probe;
+
+	aliases {
+		state = &state_emmc;
+	};
+
+	chosen: chosen {
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
+};
+
+&sdhci {
+	no-sd;
+
+	partitions {
+		compatible = "barebox,fixed-partitions";
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
+&u2phy0_otg {
+	dr_mode = "peripheral";
+	status = "okay";
+};
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index d172522c6f..cc9ea304af 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -95,6 +95,12 @@ config MACH_PROTONIC_MECSBC
 	help
 	  Say Y here if you are using a Protonic MECSBC
 
+config MACH_PROTONIC_PRTPUK
+	select ARCH_RK3576
+	bool "Protonic PRTPUK"
+	help
+	  Say Y here if you are using a Protonic PRTPUK
+
 config MACH_RADXA_ROCK3
 	select ARCH_RK3568
 	bool "Radxa ROCK3"
diff --git a/dts/Bindings/arm/rockchip.yaml b/dts/Bindings/arm/rockchip.yaml
index 5772d905f3..93f9c4bb7c 100644
--- a/dts/Bindings/arm/rockchip.yaml
+++ b/dts/Bindings/arm/rockchip.yaml
@@ -828,6 +828,11 @@ properties:
           - const: prt,mecsbc
           - const: rockchip,rk3568
 
+      - description: Protonic PRTPUK board
+        items:
+          - const: prt,prtpuk
+          - const: rockchip,rk3576
+
       - description: QNAP TS-433-4G 4-Bay NAS
         items:
           - const: qnap,ts433
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 761c6b8149..99376b010f 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -35,6 +35,7 @@ $(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2, start_pinetab2_v0, pin
 $(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2, start_pinetab2_v2, pine64-pinetab2/sdram-init.bin, pinetab2-v2)
 $(call build_rockchip_image, CONFIG_MACH_PINE64_QUARTZ64, start_quartz64a, pine64-quartz64/sdram-init.bin, quartz64a)
 $(call build_rockchip_image, CONFIG_MACH_PROTONIC_MECSBC, start_mecsbc, protonic-mecsbc/sdram-init.bin, mecsbc)
+$(call build_rockchip_image, CONFIG_MACH_PROTONIC_PRTPUK, start_prtpuk, protonic-prtpuk/sdram-init.bin, prtpuk)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK3, start_rock3a, radxa-rock3/sdram-init.bin, rock3a)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK5, start_rock5b, radxa-rock5/sdram-init.bin, rock5b)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_CM3, start_radxa_cm3_io, radxa-cm3/sdram-init.bin, radxa-cm3-io)
-- 
2.47.2



