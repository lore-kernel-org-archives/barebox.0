Delivery-date: Mon, 11 Mar 2024 10:11:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbgt-000puN-01
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 10:11:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbgs-0001fF-2y
	for lore@pengutronix.de; Mon, 11 Mar 2024 10:11:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VoJUOWrkixrw1n+3yvPA8tc3hHZ/KJioxzmSug1aL3M=; b=3hnrQQ+/fSRV8BrvRy2TRQDO+b
	Av5Paxzm4+Yz7xN2240aEQIeJpKBac6aU0DJhB3qM/OCCqjZOFMqd1UaV+zcVNduePtqlhXbCOrz/
	mv80C5F6xbYE1rTksLyIvjIKxPc5YAnUHuNbgLFygMU+IWx2bv/bkyqk3SMuyilV9z4sByfJgkXW6
	HbQh43HmU4LaOtp8JwAV3UW29yIaYg9qtEKnDqDQ9T/LdtvFjXkCOwFbYELkr+aYsx8do3hIwL97E
	bDVwCMrlB/NEfdtJSkEZGxCVPlVkD62cqtgCpBOnNCqX7/PlMrcsV+Z4XbZ3x4o9qIEAxuuDQvyQR
	lvgOGXDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbg5-00000000kQh-3sWo;
	Mon, 11 Mar 2024 09:10:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbfz-00000000kMO-3kY0
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 09:10:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfi-0000gT-JT; Mon, 11 Mar 2024 10:10:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfi-005g4C-4A; Mon, 11 Mar 2024 10:10:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfh-00ANLu-1k;
	Mon, 11 Mar 2024 10:10:14 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 11 Mar 2024 10:10:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240311-karo-imx8mp-som-board-upstreaming-v1-5-7c77f9ba02e5@pengutronix.de>
References: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
In-Reply-To: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_021032_253911_042E1CD2 
X-CRM114-Status: GOOD (  10.46  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/6] arm: dts: karo: add karo imx8mp-karo-qsxp-qsbase4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Ka-Ro QSXP-QSBASE4[1] is the offical DK from Ka-Ro for their QSXP
i.MX8M Plus solder down system on module. It comes with an additional
Micrel KSZ9131 gigabit ethernet phy. The devicetree was adapted from the
offical Ka-Ro github[2], commit a49b38ec97854c0cd9cd83a9f4ae3b56e99a58b6.

[1]: https://karo-electronics.github.io/docs/getting-started/qsbase4/quickstart-qsbase4.html
[2]: https://github.com/karo-electronics/meta-karo-nxp.git

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/dts/imx8mp-karo-qsxp-ml81-qsbase4.dts | 86 ++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/arch/arm/dts/imx8mp-karo-qsxp-ml81-qsbase4.dts b/arch/arm/dts/imx8mp-karo-qsxp-ml81-qsbase4.dts
new file mode 100644
index 0000000000..aa70d0aee0
--- /dev/null
+++ b/arch/arm/dts/imx8mp-karo-qsxp-ml81-qsbase4.dts
@@ -0,0 +1,86 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2020 Lothar Waßmann <LW@KARO-electronics.de>
+ *
+ */
+
+/dts-v1/;
+
+#include "imx8mp-karo-qsxp-ml81.dts"
+
+&{/} {
+	model = "Ka-Ro electronics QSXP-ML81-QSBASE4 (NXP i.MX8MP) Board";
+	compatible = "karo,imx8mp-qsxp-ml81-qsbase4", "karo,imx8mp-qsxp-ml81", "fsl,imx8mp";
+};
+
+&eqos {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_eqos>;
+	pinctrl-1 = <&pinctrl_eqos_sleep>;
+	phy-connection-type = "rgmii-id";
+	phy-handle = <&ethphy1>;
+	phy-supply = <&ldo5_reg>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy1: ethernet-phy@7 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <7>;
+			reset-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <100>;
+			reset-deassert-us = <250000>;
+		};
+	};
+};
+
+&usdhc2 {
+	status = "disabled";
+};
+
+&iomuxc {
+	pinctrl_eqos: eqosgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_RXC__GPIO4_IO22 0x140					/* PHY reset */
+			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC 0x142
+			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO 0x142
+			MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK 0x40000016
+			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0 0x016
+			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1 0x016
+			MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2 0x016
+			MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3 0x016
+			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL 0x016
+			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0 0x110				/* MODE0 */
+			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1 0x150				/* MODE1 */
+			MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2 0x150				/* MODE2 */
+			MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3 0x150				/* MODE3 */
+			MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK 0x156		/* PHYAD2 */
+			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL 0x000			/* CLK125_EN */
+			MX8MP_IOMUXC_GPIO1_IO00__CCM_ENET_PHY_REF_CLK_ROOT 0x110		/* LED_MODE */
+		>;
+	};
+
+	pinctrl_eqos_sleep: eqos-sleep-grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_RXC__GPIO4_IO22 0x120
+			MX8MP_IOMUXC_ENET_MDC__GPIO1_IO16 0x120
+			MX8MP_IOMUXC_ENET_MDIO__GPIO1_IO17 0x120
+			MX8MP_IOMUXC_ENET_TXC__GPIO1_IO23 0x120
+			MX8MP_IOMUXC_ENET_TD0__GPIO1_IO21 0x120
+			MX8MP_IOMUXC_ENET_TD1__GPIO1_IO20 0x120
+			MX8MP_IOMUXC_ENET_TD2__GPIO1_IO19 0x120
+			MX8MP_IOMUXC_ENET_TD3__GPIO1_IO18 0x120
+			MX8MP_IOMUXC_ENET_TX_CTL__GPIO1_IO22 0x120
+			MX8MP_IOMUXC_ENET_RD0__GPIO1_IO26 0x120
+			MX8MP_IOMUXC_ENET_RD1__GPIO1_IO27 0x120
+			MX8MP_IOMUXC_ENET_RD2__GPIO1_IO28 0x120
+			MX8MP_IOMUXC_ENET_RD3__GPIO1_IO29 0x120
+			MX8MP_IOMUXC_ENET_RXC__GPIO1_IO25 0x120
+			MX8MP_IOMUXC_ENET_RX_CTL__GPIO1_IO24 0x120
+			MX8MP_IOMUXC_GPIO1_IO00__GPIO1_IO00 0x120
+		>;
+	};
+};

-- 
2.39.2



