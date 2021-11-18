Delivery-date: Thu, 18 Nov 2021 14:43:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnhgz-0006Wr-KB
	for lore@lore.pengutronix.de; Thu, 18 Nov 2021 14:43:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnhgx-0007Ez-RZ
	for lore@pengutronix.de; Thu, 18 Nov 2021 14:43:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iKDxaHpd3WmdM1s7ImXp7aLHFbz2oOgtQtiRG6vEc8o=; b=fiiNctZfgn0SBJ
	p6vsxWrG6rEkK13XvgR8G8LxK5ippFxCJXQUqK/cC6Va5KuXetZkzMU88KpcwKa8ALGW59fzTXRNs
	2G4BD+yqC888PavBy7tF2KujtuF4LlQQGhwc2IyCMca6MA2xsVrIQ+BRhjmV1HP45/ocx6vxoCAK8
	CP7uccAEIViuDqDINDoSm7aj7A0UKjBFJFvu1Sb0C1re2arFMFM8D9lAPEpJoaHfZQR2sDq0/fkoe
	aSNIf1WOlggE/ZHcHhJIce9T+cyxSrgqnO724w9Eof9sjPW0AcWK3Tj5Ddw1s5HWtIrZ3EkovOM6M
	eSFxXnBLo60UcycEkuXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnhfX-007wL6-0l; Thu, 18 Nov 2021 13:41:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnhfQ-007wK1-6Y
 for barebox@lists.infradead.org; Thu, 18 Nov 2021 13:41:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mnhfM-00070A-AL; Thu, 18 Nov 2021 14:41:28 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1mnhfK-001iOt-Su; Thu, 18 Nov 2021 14:41:26 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: David Jander <david@protonic.nl>, Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 18 Nov 2021 14:41:24 +0100
Message-Id: <20211118134125.408959-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_054132_745297_30BC0AFE 
X-CRM114-Status: GOOD (  25.16  )
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
Subject: [PATCH v2 1/2] arm: boards: Add support for PRTT1x STM32MP151 based
 boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: David Jander <david@protonic.nl>

- PRTT1A is a very simple 10Base-T1L Ethernet to 0-10V output converter
  module.
- PRTT1S is a CO2- and RH measurement module with 10Base-T1L and PoDL power
  sink.
- PRTT1C is a "white box switch" device, meant to control the other members
  of the PRTT1L family of devices, connected via 10Base-T1L and PoDL power.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/Makefile                     |   1 +
 arch/arm/boards/protonic-stm32mp1/Makefile   |   2 +
 arch/arm/boards/protonic-stm32mp1/board.c    | 127 +++++++++++++++++++
 arch/arm/boards/protonic-stm32mp1/lowlevel.c |  58 +++++++++
 arch/arm/dts/Makefile                        |   4 +
 arch/arm/dts/stm32mp151-prtt1a.dts           |  20 +++
 arch/arm/dts/stm32mp151-prtt1c.dts           |  89 +++++++++++++
 arch/arm/dts/stm32mp151-prtt1l-net.dtsi      |  36 ++++++
 arch/arm/dts/stm32mp151-prtt1l.dtsi          | 109 ++++++++++++++++
 arch/arm/dts/stm32mp151-prtt1s.dts           |  20 +++
 arch/arm/mach-stm32mp/Kconfig                |   7 +
 images/Makefile.stm32mp                      |   9 ++
 12 files changed, 482 insertions(+)
 create mode 100644 arch/arm/boards/protonic-stm32mp1/Makefile
 create mode 100644 arch/arm/boards/protonic-stm32mp1/board.c
 create mode 100644 arch/arm/boards/protonic-stm32mp1/lowlevel.c
 create mode 100644 arch/arm/dts/stm32mp151-prtt1a.dts
 create mode 100644 arch/arm/dts/stm32mp151-prtt1c.dts
 create mode 100644 arch/arm/dts/stm32mp151-prtt1l-net.dtsi
 create mode 100644 arch/arm/dts/stm32mp151-prtt1l.dtsi
 create mode 100644 arch/arm/dts/stm32mp151-prtt1s.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index b7a72d5ba0..08815d79ec 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -107,6 +107,7 @@ obj-$(CONFIG_MACH_PM9263)			+= pm9263/
 obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
 obj-$(CONFIG_MACH_PROTONIC_IMX6)		+= protonic-imx6/
 obj-$(CONFIG_MACH_PROTONIC_IMX8M)		+= protonic-imx8m/
+obj-$(CONFIG_MACH_PROTONIC_STM32MP1)		+= protonic-stm32mp1/
 obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
 obj-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x/
 obj-$(CONFIG_MACH_RADXA_ROCK)			+= radxa-rock/
diff --git a/arch/arm/boards/protonic-stm32mp1/Makefile b/arch/arm/boards/protonic-stm32mp1/Makefile
new file mode 100644
index 0000000000..092c31d6b2
--- /dev/null
+++ b/arch/arm/boards/protonic-stm32mp1/Makefile
@@ -0,0 +1,2 @@
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
new file mode 100644
index 0000000000..84a3d8eabc
--- /dev/null
+++ b/arch/arm/boards/protonic-stm32mp1/board.c
@@ -0,0 +1,127 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2021 David Jander, Protonic Holland
+// SPDX-FileCopyrightText: 2021 Oleksij Rempel, Pengutronix
+
+#include <bootsource.h>
+#include <common.h>
+#include <init.h>
+#include <mach/bbu.h>
+#include <of_device.h>
+
+/* board specific flags */
+#define PRT_STM32_BOOTSRC_SD		BIT(2)
+#define PRT_STM32_BOOTSRC_EMMC		BIT(1)
+#define PRT_STM32_BOOTSRC_SPI_NOR	BIT(0)
+
+struct prt_stm32_machine_data {
+	u32 flags;
+};
+
+struct prt_stm32_boot_dev {
+	char *name;
+	char *env;
+	char *dev;
+	int flags;
+	int boot_idx;
+	enum bootsource boot_src;
+};
+
+static const struct prt_stm32_boot_dev prt_stm32_boot_devs[] = {
+	{
+		.name = "emmc",
+		.env = "/chosen/environment-emmc",
+		.dev = "/dev/mmc1.ssbl",
+		.flags = PRT_STM32_BOOTSRC_EMMC,
+		.boot_src = BOOTSOURCE_MMC,
+		.boot_idx = 1,
+	}, {
+		.name = "qspi",
+		.env = "/chosen/environment-qspi",
+		.dev = "/dev/flash.ssbl",
+		.flags = PRT_STM32_BOOTSRC_SPI_NOR,
+		.boot_src = BOOTSOURCE_SPI_NOR,
+		.boot_idx = -1,
+	}, {
+		/* SD is optional boot source and should be last device in the
+		 * list. */
+		.name = "sd",
+		.env = "/chosen/environment-sd",
+		.dev = "/dev/mmc0.ssbl",
+		.flags = PRT_STM32_BOOTSRC_SD,
+		.boot_src = BOOTSOURCE_MMC,
+		.boot_idx = 0,
+	},
+};
+
+static int prt_stm32_probe(struct device_d *dev)
+{
+	const struct prt_stm32_machine_data *dcfg;
+	char *env_path_back = NULL, *env_path = NULL;
+	int ret, i;
+
+	dcfg = of_device_get_match_data(dev);
+	if (!dcfg) {
+		ret = -EINVAL;
+		goto exit_get_dcfg;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(prt_stm32_boot_devs); i++) {
+		const struct prt_stm32_boot_dev *bd = &prt_stm32_boot_devs[i];
+		int bbu_flags = 0;
+
+		/* skip not supported boot sources */
+		if (!(bd->flags & dcfg->flags))
+			continue;
+
+		/* first device is build-in device */
+		if (!env_path_back)
+			env_path_back = bd->env;
+
+		if (bd->boot_src == bootsource_get() && (bd->boot_idx == -1 ||
+		    bd->boot_idx  == bootsource_get_instance())) {
+			bbu_flags = BBU_HANDLER_FLAG_DEFAULT;
+			env_path = bd->env;
+		}
+
+		ret = stm32mp_bbu_mmc_register_handler(bd->name, bd->dev,
+						       bbu_flags);
+		if (ret < 0)
+			dev_warn(dev, "Failed to enable %s bbu (%pe)\n",
+				 bd->name, ERR_PTR(ret));
+	}
+
+	if (!env_path)
+		env_path = env_path_back;
+	ret = of_device_enable_path(env_path);
+	if (ret < 0)
+		dev_warn(dev, "Failed to enable environment partition '%s' (%pe)\n",
+			 env_path, ERR_PTR(ret));
+
+	return 0;
+
+exit_get_dcfg:
+	dev_err(dev, "Failed to get dcfg: %pe\n", ERR_PTR(ret));
+	return ret;
+}
+
+static const struct prt_stm32_machine_data prt_stm32_prtt1a = {
+	.flags = PRT_STM32_BOOTSRC_SD | PRT_STM32_BOOTSRC_SPI_NOR,
+};
+
+static const struct prt_stm32_machine_data prt_stm32_prtt1c = {
+	.flags = PRT_STM32_BOOTSRC_SD | PRT_STM32_BOOTSRC_EMMC,
+};
+
+static const struct of_device_id prt_stm32_of_match[] = {
+	{ .compatible = "prt,prtt1a", .data = &prt_stm32_prtt1a },
+	{ .compatible = "prt,prtt1c", .data = &prt_stm32_prtt1c },
+	{ .compatible = "prt,prtt1s", .data = &prt_stm32_prtt1a },
+	{ /* sentinel */ },
+};
+
+static struct driver_d prt_stm32_board_driver = {
+	.name = "board-protonic-stm32",
+	.probe = prt_stm32_probe,
+	.of_compatible = prt_stm32_of_match,
+};
+postcore_platform_driver(prt_stm32_board_driver);
diff --git a/arch/arm/boards/protonic-stm32mp1/lowlevel.c b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
new file mode 100644
index 0000000000..583f72dfe7
--- /dev/null
+++ b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
@@ -0,0 +1,58 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2021 David Jander, Protonic Holland
+
+#include <common.h>
+#include <debug_ll.h>
+#include <mach/entry.h>
+
+extern char __dtb_z_stm32mp151_prtt1a_start[];
+extern char __dtb_z_stm32mp151_prtt1c_start[];
+extern char __dtb_z_stm32mp151_prtt1s_start[];
+
+static void setup_uart(void)
+{
+	/* first stage has set up the UART, so nothing to do here */
+	putc_ll('>');
+}
+
+ENTRY_FUNCTION(start_prtt1a, r0, r1, r2)
+{
+	void *fdt;
+
+	stm32mp_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_z_stm32mp151_prtt1a_start + get_runtime_offset();
+
+	stm32mp1_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_prtt1c, r0, r1, r2)
+{
+	void *fdt;
+
+	stm32mp_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_z_stm32mp151_prtt1c_start + get_runtime_offset();
+
+	stm32mp1_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_prtt1s, r0, r1, r2)
+{
+	void *fdt;
+
+	stm32mp_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_z_stm32mp151_prtt1s_start + get_runtime_offset();
+
+	stm32mp1_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 7da366bda0..76c96752cd 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -95,6 +95,10 @@ lwl-$(CONFIG_MACH_PROTONIC_IMX6) += \
 	imx6ul-prti6g.dtb.o \
 	imx6ull-jozacp.dtb.o
 lwl-$(CONFIG_MACH_PROTONIC_IMX8M) += imx8mm-prt8mm.dtb.o
+lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
+	stm32mp151-prtt1a.dtb.o \
+	stm32mp151-prtt1c.dtb.o \
+	stm32mp151-prtt1s.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
 lwl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
diff --git a/arch/arm/dts/stm32mp151-prtt1a.dts b/arch/arm/dts/stm32mp151-prtt1a.dts
new file mode 100644
index 0000000000..0f3c50f3e9
--- /dev/null
+++ b/arch/arm/dts/stm32mp151-prtt1a.dts
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
+// SPDX-FileCopyrightText: 2021 David Jander, Protonic Holland
+// SPDX-FileCopyrightText: 2021 Oleksij Rempel, Pengutronix
+/dts-v1/;
+
+#include "stm32mp151-prtt1l.dtsi"
+#include "stm32mp151-prtt1l-net.dtsi"
+
+/ {
+	model = "Protonic PRTT1A";
+	compatible = "prt,prtt1a", "st,stm32mp151";
+
+	chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &sdmmc1, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+};
diff --git a/arch/arm/dts/stm32mp151-prtt1c.dts b/arch/arm/dts/stm32mp151-prtt1c.dts
new file mode 100644
index 0000000000..fc411f9719
--- /dev/null
+++ b/arch/arm/dts/stm32mp151-prtt1c.dts
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
+// SPDX-FileCopyrightText: 2021 David Jander, Protonic Holland
+// SPDX-FileCopyrightText: 2021 Oleksij Rempel, Pengutronix
+/dts-v1/;
+
+#include "stm32mp151-prtt1l.dtsi"
+
+/ {
+	model = "Protonic PRTT1C";
+	compatible = "prt,prtt1c", "st,stm32mp151";
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
+&ethernet0 {
+	pinctrl-0 = <&ethernet0_rmii_pins_a>;
+	pinctrl-names = "default";
+	phy-mode = "rmii";
+	phy-reset-gpios = <&gpioa 3 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	fixed-link {
+		speed = <100>;
+		full-duplex;
+	};
+};
+
+&sdmmc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
+	disable-wp;
+	disable-cd;
+	no-removable;
+	no-sd;
+	no-sdio;
+	no-1-8-v;
+	st,neg-edge;
+	bus-width = <8>;
+	vmmc-supply = <&v3v3>;
+	vqmmc-supply = <&v3v3>;
+	status = "okay";
+};
+
+&ethernet0_rmii_pins_a {
+	pins1 {
+		pinmux = <STM32_PINMUX('B', 12, AF11)>, /* ETH1_RMII_TXD0 */
+			 <STM32_PINMUX('B', 13, AF11)>, /* ETH1_RMII_TXD1 */
+			 <STM32_PINMUX('B', 11, AF11)>, /* ETH1_RMII_TX_EN */
+			 <STM32_PINMUX('A', 2, AF11)>,  /* ETH1_MDIO */
+			 <STM32_PINMUX('C', 1, AF11)>;  /* ETH1_MDC */
+	};
+	pins2 {
+		pinmux = <STM32_PINMUX('C', 4, AF11)>,  /* ETH1_RMII_RXD0 */
+			 <STM32_PINMUX('C', 5, AF11)>,  /* ETH1_RMII_RXD1 */
+			 <STM32_PINMUX('A', 1, AF11)>,  /* ETH1_RMII_REF_CLK input */
+			 <STM32_PINMUX('A', 7, AF11)>;  /* ETH1_RMII_CRS_DV */
+	};
+};
+
+&sdmmc2_b4_pins_a {
+	pins1 {
+		pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
+			 <STM32_PINMUX('B', 7, AF10)>, /* SDMMC2_D1 */
+			 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
+			 <STM32_PINMUX('B', 4, AF9)>, /* SDMMC2_D3 */
+			 <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
+	};
+};
+
+&sdmmc2_d47_pins_a {
+	pins {
+		pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
+			 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
+			 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
+			 <STM32_PINMUX('C', 7, AF10)>; /* SDMMC2_D7 */
+	};
+};
diff --git a/arch/arm/dts/stm32mp151-prtt1l-net.dtsi b/arch/arm/dts/stm32mp151-prtt1l-net.dtsi
new file mode 100644
index 0000000000..04f4d64aaa
--- /dev/null
+++ b/arch/arm/dts/stm32mp151-prtt1l-net.dtsi
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
+// SPDX-FileCopyrightText: 2021 David Jander, Protonic Holland
+// SPDX-FileCopyrightText: 2021 Oleksij Rempel, Pengutronix
+
+&ethernet0 {
+	pinctrl-0 = <&ethernet0_rmii_pins_a>;
+	pinctrl-names = "default";
+	phy-mode = "rmii";
+	phy-reset-gpios = <&gpioa 3 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+		phy0: ethernet-phy@0 {
+			reg = <0>;
+		};
+	};
+};
+
+&ethernet0_rmii_pins_a {
+	pins1 {
+		pinmux = <STM32_PINMUX('B', 12, AF11)>, /* ETH1_RMII_TXD0 */
+			 <STM32_PINMUX('B', 13, AF11)>, /* ETH1_RMII_TXD1 */
+			 <STM32_PINMUX('B', 11, AF11)>, /* ETH1_RMII_TX_EN */
+			 <STM32_PINMUX('A', 2, AF11)>,  /* ETH1_MDIO */
+			 <STM32_PINMUX('C', 1, AF11)>;  /* ETH1_MDC */
+	};
+	pins2 {
+		pinmux = <STM32_PINMUX('C', 4, AF11)>,  /* ETH1_RMII_RXD0 */
+			 <STM32_PINMUX('C', 5, AF11)>,  /* ETH1_RMII_RXD1 */
+			 <STM32_PINMUX('A', 1, AF11)>,  /* ETH1_RMII_REF_CLK input */
+			 <STM32_PINMUX('A', 7, AF11)>;  /* ETH1_RMII_CRS_DV */
+	};
+};
diff --git a/arch/arm/dts/stm32mp151-prtt1l.dtsi b/arch/arm/dts/stm32mp151-prtt1l.dtsi
new file mode 100644
index 0000000000..80ae72dee2
--- /dev/null
+++ b/arch/arm/dts/stm32mp151-prtt1l.dtsi
@@ -0,0 +1,109 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
+// SPDX-FileCopyrightText: 2021 David Jander, Protonic Holland
+// SPDX-FileCopyrightText: 2021 Oleksij Rempel, Pengutronix
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <arm/stm32mp151.dtsi>
+#include <arm/stm32mp15-pinctrl.dtsi>
+#include <arm/stm32mp15xxad-pinctrl.dtsi>
+
+#include "stm32mp151.dtsi"
+
+/ {
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	aliases {
+		serial0 = &uart4;
+		ethernet0 = &ethernet0;
+	};
+
+	v3v3: fixed-regulator-v3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "v3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	led {
+		compatible = "gpio-leds";
+
+		led-0 {
+			label = "debug:red";
+			gpios = <&gpioa 13 GPIO_ACTIVE_LOW>;
+		};
+
+		led-1 {
+			label = "debug:green";
+			gpios = <&gpioa 14 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
+
+&usbh_ehci {
+	phys = <&usbphyc_port0>;
+	phy-names = "usb";
+	status = "okay";
+};
+
+&usbotg_hs {
+	dr_mode = "host";
+	pinctrl-0 = <&usbotg_hs_pins_a>;
+	pinctrl-names = "default";
+	phys = <&usbphyc_port1 0>;
+	phy-names = "usb2-phy";
+	status = "okay";
+};
+
+&usbphyc {
+	status = "okay";
+};
+
+&usbphyc_port1 {
+	phy-supply = <&v3v3>;
+};
+
+&sdmmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_b4_pins_a>;
+	st,neg-edge;
+	bus-width = <4>;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-ddr50;
+	vmmc-supply = <&v3v3>;
+	vqmmc-supply = <&v3v3>;
+	status = "okay";
+};
+
+&sdmmc1_b4_pins_a {
+	pins1 {
+		bias-pull-up;
+	};
+	pins2 {
+		bias-pull-up;
+	};
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4_pins_a>;
+	status = "okay";
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
+		bias-pull-up;
+	};
+};
diff --git a/arch/arm/dts/stm32mp151-prtt1s.dts b/arch/arm/dts/stm32mp151-prtt1s.dts
new file mode 100644
index 0000000000..f9093d01ac
--- /dev/null
+++ b/arch/arm/dts/stm32mp151-prtt1s.dts
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
+// SPDX-FileCopyrightText: 2021 David Jander, Protonic Holland
+// SPDX-FileCopyrightText: 2021 Oleksij Rempel, Pengutronix
+/dts-v1/;
+
+#include "stm32mp151-prtt1l.dtsi"
+#include "stm32mp151-prtt1l-net.dtsi"
+
+/ {
+	model = "Protonic PRTT1S";
+	compatible = "prt,prtt1s", "st,stm32mp151";
+
+	chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &sdmmc1, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+};
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index 95d3dc510d..8328eb899a 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -31,4 +31,11 @@ config MACH_STM32MP15X_EV1
 	  as SSBL on any STM32MP15X-EVAL platform, like the
 	  STM32MP157C-EV1
 
+config MACH_PROTONIC_STM32MP1
+	select ARCH_STM32MP157
+	bool "Protonic PRTT1L family of boards"
+	help
+	  Builds all barebox-prtt1*.img that can be deployed as SSBL
+	  on the respective PRTT1L family board
+
 endif
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 3384f5014b..17f03908b0 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -23,6 +23,15 @@ FILE_barebox-stm32mp157c-lxa-mc1.img = start_stm32mp157c_lxa_mc1.pblb.stm32
 OPTS_start_stm32mp157c_lxa_mc1.pblb.stm32 = $(STM32MP1_OPTS)
 image-$(CONFIG_MACH_LXA_MC1) += barebox-stm32mp157c-lxa-mc1.img
 
+pblb-$(CONFIG_MACH_PROTONIC_STM32MP1) += start_prtt1a start_prtt1s start_prtt1c
+FILE_barebox-prtt1a.img = start_prtt1a.pblb.stm32
+FILE_barebox-prtt1c.img = start_prtt1c.pblb.stm32
+FILE_barebox-prtt1s.img = start_prtt1s.pblb.stm32
+OPTS_start_prtt1a.pblb.stm32 = $(STM32MP1_OPTS)
+OPTS_start_prtt1c.pblb.stm32 = $(STM32MP1_OPTS)
+OPTS_start_prtt1s.pblb.stm32 = $(STM32MP1_OPTS)
+image-$(CONFIG_MACH_PROTONIC_STM32MP1) += barebox-prtt1a.img barebox-prtt1s.img barebox-prtt1c.img
+
 pblb-$(CONFIG_MACH_SEEED_ODYSSEY) += start_stm32mp157c_seeed_odyssey
 FILE_barebox-stm32mp157c-seeed-odyssey.img = start_stm32mp157c_seeed_odyssey.pblb.stm32
 OPTS_start_stm32mp157c_seeed_odyssey.pblb.stm32 = $(STM32MP1_OPTS)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

