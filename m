Delivery-date: Thu, 04 May 2023 10:19:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBN-004LMD-1S
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBK-0001xx-9y
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Zkui8Yc6pSVASfG5PEoVbDbM5m4Qmb0kdZWXKHyt0A=; b=NgFIL8nuIZJuekrbsijXNXP/vL
	WJPxzTLZqKICbVMCmkeAZO4hii4SYMs32O8mTfo34c7au8BEq/+0jGM+Oh3X4FVP5b4csjnXsF3oV
	WMEpzn3R/9fzPIsKljFqgQ5wwSlBJdJk/ojZK40aIuQiWwFn+dc4LfMgciR2bXD7oXn4h/YpqVWQ8
	fzk2iQfo+XjdYIeW1IScKARhzG2/ZpJQWe5xhUCNhULXI/0QC0CL3aDC7rNT8VzuHv0vKWZcBcwZz
	9paxNk6jssS2kkyRiiodegcWghbTo6LWwTzlleb234vsC5E738ID5U51/aPIU8189RXi5C1WRQ195
	HxSrCLuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUA8-0074b9-1T;
	Thu, 04 May 2023 08:18:04 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUA3-0074Xm-0w
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:18:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9u-0001H1-2x; Thu, 04 May 2023 10:17:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9t-0011F5-CT; Thu, 04 May 2023 10:17:49 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9r-001Hc2-Gy; Thu, 04 May 2023 10:17:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:45 +0200
Message-Id: <20230504081745.305841-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504081745.305841-1-s.hauer@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_011759_513121_0B8440B3 
X-CRM114-Status: GOOD (  20.17  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 18/18] ARM: rockchip: Add Radxa ROCK 5B support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add support for the Radxa ROCK 5B board.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile               |   1 +
 arch/arm/boards/radxa-rock5/.gitignore |   1 +
 arch/arm/boards/radxa-rock5/Makefile   |   3 +
 arch/arm/boards/radxa-rock5/board.c    |  55 +++++++++++++
 arch/arm/boards/radxa-rock5/lowlevel.c |  25 ++++++
 arch/arm/dts/Makefile                  |   1 +
 arch/arm/dts/rk3588-rock-5b.dts        | 110 +++++++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig         |   6 ++
 images/Makefile.rockchip               |   7 ++
 9 files changed, 209 insertions(+)
 create mode 100644 arch/arm/boards/radxa-rock5/.gitignore
 create mode 100644 arch/arm/boards/radxa-rock5/Makefile
 create mode 100644 arch/arm/boards/radxa-rock5/board.c
 create mode 100644 arch/arm/boards/radxa-rock5/lowlevel.c
 create mode 100644 arch/arm/dts/rk3588-rock-5b.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index b204c257f6..2877debad5 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -189,5 +189,6 @@ obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
 obj-$(CONFIG_MACH_RK3568_BPI_R2PRO)			+= rockchip-rk3568-bpi-r2pro/
 obj-$(CONFIG_MACH_PINE64_QUARTZ64)		+= pine64-quartz64/
 obj-$(CONFIG_MACH_RADXA_ROCK3)			+= radxa-rock3/
+obj-$(CONFIG_MACH_RADXA_ROCK5)			+= radxa-rock5/
 obj-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP)	+= variscite-dt8mcustomboard-imx8mp/
 obj-$(CONFIG_MACH_RADXA_CM3)			+= radxa-cm3/
diff --git a/arch/arm/boards/radxa-rock5/.gitignore b/arch/arm/boards/radxa-rock5/.gitignore
new file mode 100644
index 0000000000..f458f794b5
--- /dev/null
+++ b/arch/arm/boards/radxa-rock5/.gitignore
@@ -0,0 +1 @@
+sdram-init.bin
diff --git a/arch/arm/boards/radxa-rock5/Makefile b/arch/arm/boards/radxa-rock5/Makefile
new file mode 100644
index 0000000000..b37b6c870b
--- /dev/null
+++ b/arch/arm/boards/radxa-rock5/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/radxa-rock5/board.c b/arch/arm/boards/radxa-rock5/board.c
new file mode 100644
index 0000000000..369e73834d
--- /dev/null
+++ b/arch/arm/boards/radxa-rock5/board.c
@@ -0,0 +1,55 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <bootsource.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <init.h>
+#include <mach/rockchip/bbu.h>
+
+struct rock5_model {
+	const char *name;
+	const char *shortname;
+};
+
+static int rock5_probe(struct device *dev)
+{
+	enum bootsource bootsource = bootsource_get();
+	int instance = bootsource_get_instance();
+	const struct rock5_model *model;
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
+	return 0;
+}
+
+static const struct rock5_model rock5b = {
+	.name = "Radxa ROCK5 Model B",
+	.shortname = "rock5b",
+};
+
+static const struct of_device_id rock5_of_match[] = {
+	{
+		.compatible = "radxa,rock-5b",
+		.data = &rock5b,
+	},
+	{ /* sentinel */ },
+};
+
+static struct driver rock5_board_driver = {
+	.name = "board-rock5",
+	.probe = rock5_probe,
+	.of_compatible = rock5_of_match,
+};
+coredevice_platform_driver(rock5_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(rock5_of_match);
diff --git a/arch/arm/boards/radxa-rock5/lowlevel.c b/arch/arm/boards/radxa-rock5/lowlevel.c
new file mode 100644
index 0000000000..6f0ac732cc
--- /dev/null
+++ b/arch/arm/boards/radxa-rock5/lowlevel.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
+#include <debug_ll.h>
+#include <mach/rockchip/rockchip.h>
+
+extern char __dtb_rk3588_rock_5b_start[];
+
+ENTRY_FUNCTION(start_rock5b, r0, r1, r2)
+{
+	putc_ll('>');
+
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3588_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3588_barebox_entry(__dtb_rk3588_rock_5b_start);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 220e1617e3..98f4c4e019 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -109,6 +109,7 @@ lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 	stm32mp151-prtt1s.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK3) += rk3568-rock-3a.dtb.o
+lwl-$(CONFIG_MACH_RADXA_ROCK5) += rk3588-rock-5b.dtb.o
 lwl-$(CONFIG_MACH_RADXA_CM3) += rk3566-cm3-io.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
 lwl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
diff --git a/arch/arm/dts/rk3588-rock-5b.dts b/arch/arm/dts/rk3588-rock-5b.dts
new file mode 100644
index 0000000000..737498df3d
--- /dev/null
+++ b/arch/arm/dts/rk3588-rock-5b.dts
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <arm64/rockchip/rk3588-rock-5b.dts>
+#include "rk3588.dtsi"
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	aliases {
+		mmc1 = &sdmmc;
+	};
+
+	chosen: chosen {
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+			status = "disabled";
+		};
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &environment_sd;
+			status = "disabled";
+		};
+	};
+
+	vcc3v3_pcie2x1l2: vcc3v3-pcie2x1l2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie2x1l2";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+	};
+
+	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie2x1l0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		regulator-boot-on;
+		regulator-always-on;
+		gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_pcie30: vcc3v3-pcie30 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie30";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&combphy0_ps {
+	status = "okay";
+};
+
+&pcie2x1l2 {
+	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
+	status = "okay";
+};
+
+/* Not yet working in barebox */
+&sdhci {
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
+/* Not yet working in barebox */
+&sdmmc {
+	max-frequency = <200000000>;
+	no-sdio;
+	no-mmc;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	sd-uhs-sdr104;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
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
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 7d540974f5..26b23b3214 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -97,6 +97,12 @@ config MACH_RADXA_ROCK3
        help
 	  Say Y here if you are using a Radxa ROCK3
 
+config MACH_RADXA_ROCK5
+       select ARCH_RK3588
+       bool "Radxa ROCK5"
+       help
+	  Say Y here if you are using a Radxa ROCK5
+
 config MACH_RADXA_CM3
 	select ARCH_RK3568
 	bool "Radxa CM3"
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 490e1ddb4d..47779a7d35 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -23,6 +23,9 @@ image-$(CONFIG_MACH_PINE64_QUARTZ64) += barebox-quartz64a.img
 pblb-$(CONFIG_MACH_RADXA_ROCK3) += start_rock3a
 image-$(CONFIG_MACH_RADXA_ROCK3) += barebox-rock3a.img
 
+pblb-$(CONFIG_MACH_RADXA_ROCK5) += start_rock5b
+image-$(CONFIG_MACH_RADXA_ROCK5) += barebox-rock5b.img
+
 pblb-$(CONFIG_MACH_RADXA_CM3) += start_radxa-cm3-io.img
 image-$(CONFIG_MACH_RADXA_CM3) += barebox-radxa-cm3-io.img
 
@@ -45,6 +48,10 @@ $(obj)/barebox-rock3a.img: $(obj)/start_rock3a.pblb \
                 $(board)/radxa-rock3/sdram-init.bin
 	$(call if_changed,rkimg_image)
 
+$(obj)/barebox-rock5b.img: $(obj)/start_rock5b.pblb \
+                $(board)/radxa-rock5/sdram-init.bin
+	$(call if_changed,rkimg_image)
+
 $(obj)/barebox-radxa-cm3-io.img: $(obj)/start_radxa_cm3_io.pblb \
                 $(board)/radxa-cm3/sdram-init.bin
 	$(call if_changed,rkimg_image)
-- 
2.39.2



