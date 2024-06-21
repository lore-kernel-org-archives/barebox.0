Delivery-date: Fri, 21 Jun 2024 14:26:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKdLZ-009ogc-0t
	for lore@lore.pengutronix.de;
	Fri, 21 Jun 2024 14:26:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKdLY-0003QI-6H
	for lore@pengutronix.de; Fri, 21 Jun 2024 14:26:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4gqBeamm+IaHM2fu8AO4HCUZ1guKnn+JIunykn2YIrk=; b=WxCKQPLCAD0AIa1aRkU5e9qYd4
	LX7dtlpAxa9M+ku5vLlbzX1H78mgh09+Qi2BfMDB/hh+h2o2JepycLfeg4mqjVoRFoOn2jxn34HRi
	lifOFDscKppGgYJ/JAAVJs3ANtMvYpy3hZdFEl69+SZhcruXyLmoI3/CZq2F+N4gMOrzWNh9kSOFB
	PGNB4b7MP+A50O+3z3uJWJ2dbiZfipBAce3wWMYl3oIWYCiPTmFFk3CLqpL7eu27wXdEoohG99vRK
	0jdEJG/IzRswChQiN529b94w9xp/qkyNf2mA7TAF2GA5ud5prHiSjSfIZPdVL36lBObm51bxDZJFY
	QCgQiqhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKdKo-0000000974m-1Iet;
	Fri, 21 Jun 2024 12:25:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKdKk-00000009748-41Vb
	for barebox@lists.infradead.org;
	Fri, 21 Jun 2024 12:25:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sKdKi-0003HY-0v; Fri, 21 Jun 2024 14:25:36 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sKdKh-003wKu-KX; Fri, 21 Jun 2024 14:25:35 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sKdKh-005NO8-1t;
	Fri, 21 Jun 2024 14:25:35 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 21 Jun 2024 14:25:34 +0200
Message-Id: <20240621122534.1281524-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_052539_182914_877E3144 
X-CRM114-Status: GOOD (  25.20  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] ARM: at91: microchip-sama5d3-eds: implement MDIO extension board detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Detect extension boards managed over MDIO bus. For now following
extension boards are supported:
- EVB-VSC8541-EDS
- EVB-LAN8841

If supported board is detected, the board code will apply devicetree
overlay on the barebox and fixup kernel DT too.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../arm/boards/microchip-sama5d3-eds/Makefile |   1 +
 arch/arm/boards/microchip-sama5d3-eds/board.c | 183 ++++++++++++++++++
 arch/arm/dts/Makefile                         |   2 +
 arch/arm/dts/at91-microchip-sama5d3-eds.dts   |  27 +++
 arch/arm/dts/sama5d3_eds_rgmii_phy.dtso       |  52 +++++
 arch/arm/mach-at91/Kconfig                    |   1 +
 6 files changed, 266 insertions(+)
 create mode 100644 arch/arm/boards/microchip-sama5d3-eds/board.c
 create mode 100644 arch/arm/dts/sama5d3_eds_rgmii_phy.dtso

diff --git a/arch/arm/boards/microchip-sama5d3-eds/Makefile b/arch/arm/boards/microchip-sama5d3-eds/Makefile
index 458f520900..da63d2625f 100644
--- a/arch/arm/boards/microchip-sama5d3-eds/Makefile
+++ b/arch/arm/boards/microchip-sama5d3-eds/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/microchip-sama5d3-eds/board.c b/arch/arm/boards/microchip-sama5d3-eds/board.c
new file mode 100644
index 0000000000..460b5c376d
--- /dev/null
+++ b/arch/arm/boards/microchip-sama5d3-eds/board.c
@@ -0,0 +1,183 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2024 Oleksij Rempel <o.rempel@pengutronix.de>
+
+#include <common.h>
+#include <environment.h>
+#include <envfs.h>
+#include <gpio.h>
+#include <init.h>
+#include <deep-probe.h>
+#include <linux/phy.h>
+
+extern char __dtbo_sama5d3_eds_rgmii_phy_start[];
+
+struct microchip_sama5d3_eds_ext_board {
+	int mdio_bus_idx;
+	int phy_addr;
+	int phy_id1;
+	int phy_id2;
+	char board_name[32];
+	const void *overlay;
+};
+
+static const struct
+microchip_sama5d3_eds_ext_board microchip_sama5d3_eds_ext_boards[] = {
+	{
+		.mdio_bus_idx = 0,
+		.phy_addr = 3,
+		.phy_id1 = 0x0007,
+		.phy_id2 = 0x0772,
+		.board_name = "EVB-VSC8541-EDS",
+		.overlay = __dtbo_sama5d3_eds_rgmii_phy_start,
+	},
+	{
+		.mdio_bus_idx = 0,
+		.phy_addr = 3,
+		.phy_id1 = 0x0022,
+		.phy_id2 = 0x1652,
+		.board_name = "EVB-LAN8841",
+		.overlay = __dtbo_sama5d3_eds_rgmii_phy_start,
+	},
+};
+
+static void microchip_sama5d3_eds_apply_overly(struct device *dev,
+			const struct microchip_sama5d3_eds_ext_board *board)
+{
+	struct device_node *overlay;
+	int ret;
+
+	overlay = of_unflatten_dtb(board->overlay, INT_MAX);
+	ret = of_overlay_apply_tree(dev->of_node, overlay);
+	if (ret)
+		dev_warn(dev, "Failed to apply overlay: %pe\n", ERR_PTR(ret));
+
+	ret = of_register_overlay(overlay);
+	if (ret)
+		dev_warn(dev, "Failed to register overlay: %pe\n",
+			 ERR_PTR(ret));
+
+}
+
+static int scan_phy_bus(struct mii_bus *bus, int *phy_addr, int *phy_id1,
+			int *phy_id2)
+{
+	int i, reg2, reg3;
+
+	for (i = 0; i < PHY_MAX_ADDR; i++) {
+		reg2 = mdiobus_read(bus, i, MII_PHYSID1);
+		if (reg2 < 0)
+			return reg2;
+
+		if (reg2 == 0xffff || reg2 == 0x0)
+			continue;
+
+		reg3 = mdiobus_read(bus, i, MII_PHYSID2);
+		if (reg3 < 0)
+			return reg3;
+
+		*phy_addr = i;
+		*phy_id1 = reg2;
+		*phy_id2 = reg3;
+
+		return 1;
+	}
+
+	return 0;
+}
+
+static int microchip_sama5d3_eds_scan_mdio_bus(struct device *dev,
+					       int mdio_bus_idx)
+{
+	struct device_node *eth_node, *mdio_node;
+	char eth_alias[] = "ethernetX";
+	char mdio_alias[] = "mdioX";
+	struct mii_bus *mdio_bus;
+	int phy_addr, phy_id1, phy_id2;
+	int ret;
+
+	snprintf(eth_alias, sizeof(eth_alias), "ethernet%d", mdio_bus_idx);
+	snprintf(mdio_alias, sizeof(mdio_alias), "mdio%d", mdio_bus_idx);
+
+	eth_node = of_find_node_by_alias(NULL, eth_alias);
+	if (!eth_node)
+		return -ENODEV;
+
+	of_device_ensure_probed(eth_node);
+
+	mdio_node = of_find_node_by_alias(NULL, mdio_alias);
+	if (!mdio_node)
+		return -ENODEV;
+
+	of_device_ensure_probed(mdio_node);
+
+	mdio_bus = of_mdio_find_bus(mdio_node);
+	if (!mdio_bus)
+		return -ENODEV;
+
+	ret = scan_phy_bus(mdio_bus, &phy_addr, &phy_id1, &phy_id2);
+	if (ret < 0) {
+		dev_warn(dev, "Failed to scan mdio%d bus: %d\n", mdio_bus_idx,
+			 ret);
+		return ret;
+	} else if (!ret) {
+		/* No PHY found */
+		return 0;
+	}
+
+	dev_info(dev, "Found PHY at bus %d, address %d: %04x:%04x\n",
+		 mdio_bus_idx, phy_addr, phy_id1, phy_id2);
+
+	for (int i = 0; i < ARRAY_SIZE(microchip_sama5d3_eds_ext_boards); i++) {
+		const struct microchip_sama5d3_eds_ext_board *board =
+			&microchip_sama5d3_eds_ext_boards[i];
+
+		if (board->mdio_bus_idx != mdio_bus_idx)
+			continue;
+
+		if (board->phy_addr == phy_addr &&
+		    board->phy_id1 == phy_id1 &&
+		    board->phy_id2 == phy_id2) {
+			char base_board_name[100] = "Microchip SAMA5D3 EDS";
+
+			dev_info(dev, "Found extension board: %s\n",
+				 board->board_name);
+
+			snprintf(base_board_name, sizeof(base_board_name),
+				 "%s with %s",
+				 base_board_name, board->board_name);
+			barebox_set_model(base_board_name);
+
+			if (board->overlay)
+				microchip_sama5d3_eds_apply_overly(dev, board);
+			break;
+		}
+	}
+
+	return 0;
+}
+
+static int microchip_sama5d3_eds_probe(struct device *dev)
+{
+	int ret, i;
+
+	for (i = 0; i < 2; i++) {
+		ret = microchip_sama5d3_eds_scan_mdio_bus(dev, i);
+		if (ret)
+			dev_warn(dev, "Failed to scan mdio%d bus\n", i);
+	}
+
+	return 0;
+}
+
+static const struct of_device_id microchip_sama5d3_eds_of_match[] = {
+	{ .compatible = "microchip,sama5d3-eds"},
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(microchip_sama5d3_eds_of_match);
+
+static struct driver microchip_sama5d3_eds_board_driver = {
+	.name = "board-microchip-sama5d3-eds",
+	.probe = microchip_sama5d3_eds_probe,
+	.of_compatible = DRV_OF_COMPAT(microchip_sama5d3_eds_of_match),
+};
+device_platform_driver(microchip_sama5d3_eds_board_driver);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 68585e1e4b..627f6e7afb 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -230,6 +230,8 @@ lwl-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += imx8mp-var-dart-dt8mcusto
 lwl-$(CONFIG_MACH_TQMA93XX) += imx93-tqma9352-mba93xxca.dtb.o \
 			       imx93-tqma9352-mba93xxla.dtb.o
 
+obj-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS) += sama5d3_eds_rgmii_phy.dtbo.o
+
 obj-$(CONFIG_MACH_WOLFVISION_PF5) += rk3568-wolfvision-pf5-io-expander.dtbo.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/arm/dts/at91-microchip-sama5d3-eds.dts b/arch/arm/dts/at91-microchip-sama5d3-eds.dts
index d35c8c3c6e..30f86b144d 100644
--- a/arch/arm/dts/at91-microchip-sama5d3-eds.dts
+++ b/arch/arm/dts/at91-microchip-sama5d3-eds.dts
@@ -11,4 +11,31 @@ environment {
 			file-path = "barebox.env";
 		};
 	};
+
+	aliases {
+		ethernet0 = &macb0;
+		ethernet1 = &macb1;
+		mdio0 = &mdio0;
+		mdio1 = &mdio1;
+	};
+};
+
+&macb0 {
+	phy-mode = "rgmii-id";
+	status = "okay";
+
+	mdio0: mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+};
+
+&macb1 {
+	phy-mode = "rmii";
+	status = "okay";
+
+	mdio1: mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
 };
diff --git a/arch/arm/dts/sama5d3_eds_rgmii_phy.dtso b/arch/arm/dts/sama5d3_eds_rgmii_phy.dtso
new file mode 100644
index 0000000000..5d7e1ee54c
--- /dev/null
+++ b/arch/arm/dts/sama5d3_eds_rgmii_phy.dtso
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for SAMA5D3 EDS board
+ *
+ * Copyright (C) 2023 Microchip Technology Inc. and its subsidiaries
+ *
+ * Author: Jerry Ray <jerry.ray@microchip.com>
+ *
+ * Supported extension boards:
+ * - EVB-LAN8841 - https://www.microchip.com/en-us/development-tool/EV19G28A
+ *   Note: Depopulate R43 (remove RXER signal) to allow this board to
+ *         function properly with the SAMA5D3-EDS.
+ * - EVB-VSC8541-EDS - https://www.microchip.com/en-us/development-tool/EV35M06A
+ */
+/dts-v1/;
+/plugin/;
+
+#include "dt-bindings/gpio/gpio.h"
+#include "dt-bindings/interrupt-controller/irq.h"
+#include "dt-bindings/pinctrl/at91.h"
+
+&macb0 {
+	phy-mode = "rgmii-id";
+	phy-handle = <&rgmii_phy>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		rgmii_phy: ethernet-phy@3 {
+			reg = <0x3>;
+			pinctrl-0 = <&pinctrl_rgmii_rstn>;
+			pinctrl-1 = <&pinctrl_spi_irqn>;
+			interrupt-parent = <&pioB>;
+			interrupts = <28 IRQ_TYPE_EDGE_FALLING>;
+			resetb-gpios = <&pioD 18 GPIO_ACTIVE_LOW>;
+			/* LAN8841 - 1us */
+			/* VSC8541 - 100ns */
+			/* take one 1ms to be safe */
+			reset-assert-us = <1000>;
+			/* LAN8841 - 10ms? */
+			/* VSC8541- 15ms */
+			reset-deassert-us = <15000>;
+			status = "okay";
+		};
+	};
+};
+
+&usart0 {
+	status = "disabled";    /* Conflicts with using pioD 18 as GPIO */
+};
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index afcea257c3..3cf40463be 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -612,6 +612,7 @@ config MACH_MICROCHIP_SAMA5D3_EDS
 	select OFDEVICE
 	select MCI_ATMEL_PBL
 	select COMMON_CLK_OF_PROVIDER
+	select OF_OVERLAY
 	help
 	  Select this if you are using Microchip's SAMA5D3 Ethernet Development
 	  System.
-- 
2.39.2



