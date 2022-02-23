Delivery-date: Wed, 23 Feb 2022 12:12:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMpZB-007ZqS-Jv
	for lore@lore.pengutronix.de; Wed, 23 Feb 2022 12:12:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMpZ9-0006VM-CT
	for lore@pengutronix.de; Wed, 23 Feb 2022 12:12:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z8xIX6J5a4m+E23v8lqaxlPHkh9eIxzhfWyGU2imLF8=; b=QSKpOX0FBz75dI
	R06+aX7n+FS9RqMyaJucXXLMarBROUDQ+cOBj+qMw5vSMQLvBhyxH5DoJ6b95n2z5Y2onXoZPvq5w
	nfPbF+AuljrFYLMKF//alV9hDAwrLlWITRWpx5pe9BvBdytnvxZXOoDlFdRcG5BD1X16EMP26s+y2
	ymdSCGm+R2N9RjAiBw02uOQS2bXtI7PdiLJIfrm0yjUKIi9GSTHhoLkwLB54b4PYC5GN0c7eLTi5u
	wtPaDCPwFRNcH5YJbNA1nI4p0UX6tnmS5x6Sm4/M0g1+Vq5jzALpeLAJa1sbkwkgUQxlwzcz96IGj
	EFZJiGVPde0bxth6H7aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMpXj-00DoyD-JA; Wed, 23 Feb 2022 11:10:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMpXd-00DowH-3I
 for barebox@lists.infradead.org; Wed, 23 Feb 2022 11:10:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nMpXZ-00060g-Uo; Wed, 23 Feb 2022 12:10:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nMpXZ-00CdVp-FI; Wed, 23 Feb 2022 12:10:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 23 Feb 2022 12:10:36 +0100
Message-Id: <20220223111036.3011774-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_031041_521166_C3F26DD5 
X-CRM114-Status: GOOD (  18.52  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: stm32: add support for PHYTEC phyCORE stm32mp1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Import DT[1] and add the boilerplate to have barebox generate a SSBL
for the board.

[1]: git://git.phytec.de/tf-a-stm32mp

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   1 +
 .../boards/phytec-phycore-stm32mp1/Makefile   |   3 +
 .../boards/phytec-phycore-stm32mp1/board.c    |  28 ++
 .../boards/phytec-phycore-stm32mp1/lowlevel.c |  19 +
 arch/arm/dts/Makefile                         |   1 +
 .../dts/stm32mp157c-phycore-stm32mp1-3.dts    |  58 +++
 ...stm32mp157c-phycore-stm32mp15-pinctrl.dtsi |  92 +++++
 .../stm32mp157c-phycore-stm32mp15-som.dtsi    | 337 ++++++++++++++++++
 arch/arm/mach-stm32mp/Kconfig                 |   7 +
 images/Makefile.stm32mp                       |   2 +
 10 files changed, 548 insertions(+)
 create mode 100644 arch/arm/boards/phytec-phycore-stm32mp1/Makefile
 create mode 100644 arch/arm/boards/phytec-phycore-stm32mp1/board.c
 create mode 100644 arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
 create mode 100644 arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts
 create mode 100644 arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
 create mode 100644 arch/arm/dts/stm32mp157c-phycore-stm32mp15-som.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 8557e1dca8c6..75e15cbda4df 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -101,6 +101,7 @@ obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
 obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
 obj-$(CONFIG_MACH_PHYTEC_SOM_IMX6)		+= phytec-som-imx6/
 obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7)		+= phytec-phycore-imx7/
+obj-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1)	+= phytec-phycore-stm32mp1/
 obj-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ)		+= phytec-som-imx8mq/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/Makefile b/arch/arm/boards/phytec-phycore-stm32mp1/Makefile
new file mode 100644
index 000000000000..1d052d28c9fc
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-stm32mp1/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/board.c b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
new file mode 100644
index 000000000000..eb6147785ff0
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
@@ -0,0 +1,28 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+#include <common.h>
+#include <driver.h>
+#include <bootsource.h>
+
+static int phycore_stm32mp1_probe(struct device_d *dev)
+{
+	if (bootsource_get_instance() == 0)
+		of_device_enable_path("/chosen/environment-sd");
+	else
+		of_device_enable_path("/chosen/environment-emmc");
+
+	barebox_set_hostname("phyCORE-STM32MP1");
+
+	return 0;
+}
+
+static const struct of_device_id phycore_stm32mp1_of_match[] = {
+	{ .compatible = "phytec,phycore-stm32mp1-3" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d phycore_stm32mp1_board_driver = {
+	.name = "board-phycore-stm32mp1",
+	.probe = phycore_stm32mp1_probe,
+	.of_compatible = phycore_stm32mp1_of_match,
+};
+device_platform_driver(phycore_stm32mp1_board_driver);
diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c b/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
new file mode 100644
index 000000000000..f76bad86a10a
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <mach/entry.h>
+#include <debug_ll.h>
+
+extern char __dtb_z_stm32mp157c_phycore_stm32mp1_3_start[];
+
+ENTRY_FUNCTION(start_phycore_stm32mp1_3, r0, r1, r2)
+{
+	void *fdt;
+
+	stm32mp_cpu_lowlevel_init();
+
+	putc_ll('>');
+
+	fdt = __dtb_z_stm32mp157c_phycore_stm32mp1_3_start + get_runtime_offset();
+
+	stm32mp1_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index e0bb66580f38..925ac12aa52a 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -75,6 +75,7 @@ lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-phycard.dtb.o \
 				imx6ull-phytec-phycore-som-nand.dtb.o \
 				imx6ull-phytec-phycore-som-emmc.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
+lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1) += stm32mp157c-phycore-stm32mp1-3.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
 lwl-$(CONFIG_MACH_PINE64_QUARTZ64) += rk3566-quartz64-a.dtb.o
 lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
diff --git a/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts b/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts
new file mode 100644
index 000000000000..351067c9f110
--- /dev/null
+++ b/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts
@@ -0,0 +1,58 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
+/*
+ * Copyright (C) Phytec GmbH 2019-2020 - All Rights Reserved
+ * Author: Dom VOVARD <dom.vovard@linrt.com>.
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <arm/stm32mp157.dtsi>
+#include <arm/stm32mp15xc.dtsi>
+#include <arm/stm32mp15-pinctrl.dtsi>
+#include <arm/stm32mp15xxac-pinctrl.dtsi>
+#include "stm32mp151.dtsi"
+#include "stm32mp157c-phycore-stm32mp15-som.dtsi"
+
+/ {
+	model = "PHYTEC phyCORE-STM32MP1-3 SOM";
+	compatible = "phytec,phycore-stm32mp1-3", "st,stm32mp157";
+
+	chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &sdmmc1, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &sdmmc2, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+};
+
+&rtc {
+        status = "okay";
+};
+
+&fmc {
+        status = "disabled";
+};
+
+&qspi {
+        status = "okay";
+};
+
+&sdmmc1 {
+        status = "okay";
+};
+
+&sdmmc2 {
+        status = "okay";
+};
+
+&cryp1 {
+        status = "okay";
+};
diff --git a/arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi b/arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
new file mode 100644
index 000000000000..011d73ec3f1a
--- /dev/null
+++ b/arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
+/*
+ * Copyright (C) Phytec GmbH 2019-2020 - All Rights Reserved
+ * Author: Dom VOVARD <dom.vovard@linrt.com>.
+ */
+#include <arm/stm32mp15-pinctrl.dtsi>
+
+&ethernet0_rgmii_pins_a {
+	pins1 {
+		pinmux = <STM32_PINMUX('G', 4, AF11)>,	/* ETH_RGMII_GTX_CLK */
+			 <STM32_PINMUX('G', 13, AF11)>, /* ETH_RGMII_TXD0 */
+			 <STM32_PINMUX('G', 14, AF11)>, /* ETH_RGMII_TXD1 */
+			 <STM32_PINMUX('C', 2, AF11)>,	/* ETH_RGMII_TXD2 */
+			 <STM32_PINMUX('E', 2, AF11)>,	/* ETH_RGMII_TXD3 */
+			 <STM32_PINMUX('B', 11, AF11)>, /* ETH_RGMII_TX_CTL */
+			 <STM32_PINMUX('A', 2, AF11)>,	/* ETH_MDIO */
+			 <STM32_PINMUX('C', 1, AF11)>;	/* ETH_MDC */
+		bias-disable;
+		drive-push-pull;
+		slew-rate = <2>;
+	};
+	pins2 {
+		pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RGMII_RXD0 */
+			 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RGMII_RXD1 */
+			 <STM32_PINMUX('H', 6, AF11)>, /* ETH_RGMII_RXD2 */
+			 <STM32_PINMUX('B', 1, AF11)>, /* ETH_RGMII_RXD3 */
+			 <STM32_PINMUX('A', 1, AF11)>, /* ETH_RGMII_RX_CLK */
+			 <STM32_PINMUX('A', 7, AF11)>; /* ETH_RGMII_RX_CTL */
+		bias-disable;
+	};
+};
+
+&pinctrl {
+	sdmmc1_dir_pins_b: sdmmc1-dir-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('E', 12, AF8)>, /* SDMMC1_D0DIR */
+				 <STM32_PINMUX('E', 14, AF11)>, /* SDMMC1_D123DIR */
+				 <STM32_PINMUX('B', 9, AF11)>; /* SDMMC1_CDIR */
+			slew-rate = <3>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 4, AF8)>; /* SDMMC1_CKIN */
+			bias-pull-up;
+		};
+	};
+};
+
+&sdmmc1_b4_pins_a {
+	pins1 {
+		pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1_D0 */
+			 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1_D1 */
+			 <STM32_PINMUX('E', 6, AF8)>, /* SDMMC1_D2 */
+			 <STM32_PINMUX('C', 11, AF12)>, /* SDMMC1_D3 */
+			 <STM32_PINMUX('D', 2, AF12)>; /* SDMMC1_CMD */
+		slew-rate = <1>;
+		drive-push-pull;
+		bias-disable;
+	};
+	pins2 {
+		pinmux = <STM32_PINMUX('C', 12, AF12)>; /* SDMMC1_CK */
+		slew-rate = <2>;
+		drive-push-pull;
+		bias-disable;
+	};
+};
+
+&sdmmc2_d47_pins_a {
+	pins {
+		pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
+			 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
+			 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
+			 <STM32_PINMUX('D', 3, AF9)>; /* SDMMC2_D7 */
+		slew-rate = <1>;
+		drive-push-pull;
+		bias-pull-up;
+	};
+};
+
+&uart4_pins_a {
+	pins1 {
+		pinmux = <STM32_PINMUX('B', 9, AF8)>; /* UART4_TX */
+		bias-disable;
+		drive-push-pull;
+		slew-rate = <0>;
+	};
+	pins2 {
+		pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
+		bias-disable;
+	};
+};
diff --git a/arch/arm/dts/stm32mp157c-phycore-stm32mp15-som.dtsi b/arch/arm/dts/stm32mp157c-phycore-stm32mp15-som.dtsi
new file mode 100644
index 000000000000..bbcff8cde905
--- /dev/null
+++ b/arch/arm/dts/stm32mp157c-phycore-stm32mp15-som.dtsi
@@ -0,0 +1,337 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
+/*
+ * Copyright (C) Phytec GmbH 2019-2020 - All Rights Reserved
+ * Author: Dom VOVARD <dom.vovard@linrt.com>.
+ */
+
+#include "stm32mp157c-phycore-stm32mp15-pinctrl.dtsi"
+#include <dt-bindings/net/ti-dp83867.h>
+
+/ {
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	aliases {
+		serial0 = &uart4;
+		serial1 = &usart3;
+	};
+
+	vin: vin {
+		compatible = "regulator-fixed";
+		regulator-name = "vin";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	pwr_irq: pwr@50001020 {
+		compatible = "st,stm32mp1-pwr";
+		reg = <0x50001020 0x100>;
+		interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-controller;
+		#interrupt-cells = <3>;
+	};
+
+	sram: sram@10000000 {
+		compatible = "mmio-sram";
+		reg = <0x10000000 0x60000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x10000000 0x60000>;
+	};
+};
+
+&bsec {
+	board_id: board_id@ec {
+		reg = <0xec 0x4>;
+		st,non-secure-otp;
+	};
+};
+
+&clk_hse {
+	st,digbypass;
+};
+
+&cpu0{
+	cpu-supply = <&vddcore>;
+};
+
+&cpu1{
+	cpu-supply = <&vddcore>;
+};
+
+&dma1 {
+	sram = <&dma_pool>;
+};
+
+&dma2 {
+	sram = <&dma_pool>;
+};
+
+&ethernet0 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
+	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_a>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy>;
+	max-speed = <1000>;
+	st,eth-clk-sel;
+	status = "okay";
+
+	mdio0 {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy: ethernet-phy@1 {
+			reg = <1>;
+		};
+	};
+};
+
+&hash1 {
+	status = "okay";
+};
+
+&i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c4_pins_a>;
+	i2c-scl-rising-time-ns = <185>;
+	i2c-scl-falling-time-ns = <20>;
+	status = "okay";
+	/delete-property/dmas;
+	/delete-property/dma-names;
+
+	pmic: stpmic@33 {
+		compatible = "st,stpmic1";
+		reg = <0x33>;
+		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		status = "okay";
+
+		regulators {
+			compatible = "st,stpmic1-regulators";
+			buck1-supply = <&vin>;
+			buck2-supply = <&vin>;
+			buck3-supply = <&vin>;
+			buck4-supply = <&vin>;
+			ldo1-supply = <&v3v3>;
+			ldo2-supply = <&v3v3>;
+			ldo3-supply = <&vdd_ddr>;
+			ldo4-supply = <&vin>;
+			ldo5-supply = <&v3v3>;
+			ldo6-supply = <&v3v3>;
+			vref_ddr-supply = <&vin>;
+			boost-supply = <&vin>;
+			pwr_sw1-supply = <&bst_out>;
+			pwr_sw2-supply = <&bst_out>;
+
+			vddcore: buck1 {
+				regulator-name = "vddcore";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			vdd_ddr: buck2 {
+				regulator-name = "vdd_ddr";
+				regulator-min-microvolt = <1350000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			vdd: buck3 {
+				regulator-name = "vdd";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				st,mask-reset;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			v3v3: buck4 {
+				regulator-name = "v3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-over-current-protection;
+				regulator-initial-mode = <0>;
+			};
+
+			v1v8_audio: ldo1 {
+				regulator-name = "v1v8_audio";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+			};
+
+			vdd_eth_2v5: ldo2 {
+				regulator-name = "vdd_eth_2v5";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-always-on;
+			};
+
+			vtt_ddr: ldo3 {
+				regulator-name = "vtt_ddr";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <750000>;
+				regulator-always-on;
+				regulator-over-current-protection;
+			};
+
+			vdd_usb: ldo4 {
+				regulator-name = "vdd_usb";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vdda: ldo5 {
+				regulator-name = "vdda";
+				regulator-min-microvolt = <2900000>;
+				regulator-max-microvolt = <2900000>;
+				regulator-boot-on;
+			};
+
+			vdd_eth_1v0: ldo6 {
+				regulator-name = "vdd_eth_1v0";
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-always-on;
+			};
+
+			vref_ddr: vref_ddr {
+				regulator-name = "vref_ddr";
+				regulator-always-on;
+				regulator-over-current-protection;
+			};
+
+			bst_out: boost {
+				regulator-name = "bst_out";
+			};
+
+			vbus_otg: pwr_sw1 {
+				regulator-name = "vbus_otg";
+			};
+
+			vbus_sw: pwr_sw2 {
+				regulator-name = "vbus_sw";
+				regulator-active-discharge = <1>;
+			};
+		};
+	};
+};
+
+&iwdg2 {
+	timeout-sec = <32>;
+	status = "okay";
+};
+
+&pwr_regulators {
+	vdd-supply = <&vdd>;
+	vdd_3v3_usbfs-supply = <&vdd_usb>;
+};
+
+&rng1 {
+	status = "okay";
+};
+
+&rtc {
+	status = "okay";
+};
+
+&qspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a &qspi_bk2_pins_a>;
+	reg = <0x58003000 0x1000>, <0x70000000 0x4000000>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "disabled";
+
+	flash0: n25q128@0 {
+		compatible = "micron,n25q128a13", "jedec,spi-nor";
+		reg = <0>;
+		spi-rx-bus-width = <4>;
+		spi-max-frequency = <50000000>;
+		m25p,fast-read;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
+
+&sdmmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_b4_pins_a>;
+	disable-wp;
+	st,neg-edge;
+	bus-width = <4>;
+	max-frequency = <10000000>;
+	vmmc-supply = <&v3v3>;
+	status = "disabled";
+};
+
+&sdmmc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	st,neg-edge;
+	bus-width = <8>;
+	vmmc-supply = <&v3v3>;
+	vqmmc-supply = <&v3v3>;
+	mmc-ddr-3_3v;
+	status = "disabled";
+};
+
+&sram {
+	dma_pool: dma_pool@0 {
+		reg = <0x50000 0x10000>;
+		pool;
+	};
+};
+
+&timers12 {
+	st,hsi-cal-input = <1>;
+	st,csi-cal-input = <2>;
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4_pins_a>;
+	status = "okay";
+};
+
+&usart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&usart3_pins_a>;
+	status = "disabled";
+};
+
+&usbotg_hs {
+	phys = <&usbphyc_port1 0>;
+	phy-names = "usb2-phy";
+	usb-role-switch;
+	status = "okay";
+};
+
+&usbphyc {
+	status = "okay";
+};
+
+&usbphyc_port0 {
+	phy-supply = <&vdd_usb>;
+};
+
+&usbphyc_port1 {
+	phy-supply = <&vdd_usb>;
+};
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index 57c1691591e7..bc0a48d64c82 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -48,4 +48,11 @@ config MACH_PROTONIC_STM32MP1
 	  Builds all barebox-prtt1*.stm32 that can be deployed as SSBL
 	  on the respective PRTT1L family board
 
+config MACH_PHYTEC_PHYCORE_STM32MP1
+	select ARCH_STM32MP157
+	bool "phyCORE-STM32MP1"
+	help
+	  builds an additional barebox-phytec-phycore.stm32
+	  that can be deployed as SSBL on the phyCORE-STM32MP1
+
 endif
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index abe70a6a5037..59d65722078d 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -41,3 +41,5 @@ $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1s, prtt1s)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1c, prtt1c)
 
 $(call build_stm32mp_image, CONFIG_MACH_SEEED_ODYSSEY, start_stm32mp157c_seeed_odyssey, stm32mp157c-seeed-odyssey)
+
+$(call build_stm32mp_image, CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1, start_phycore_stm32mp1_3, phycore-stm32mp1)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

