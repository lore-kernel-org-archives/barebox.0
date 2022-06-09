Delivery-date: Thu, 09 Jun 2022 23:56:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzQ8c-009EiQ-11
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 23:56:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzQ8a-0004Sh-3W
	for lore@pengutronix.de; Thu, 09 Jun 2022 23:56:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zf5BKIxbnlQGYZHHSUAC0AiTxdFcSGOvVJ4tUAdAsfw=; b=jDS+m+LaPJCTcP
	bYmxwrRvjxVDM6WOv/A1IRBXkZsD7gjyrYD1H/c5PBsZo6MzF8u3hK5DjFHbYCbFFEAJyiP65HAL+
	c9BvhYIi8ddNvhk9AbhguejQ7kR9ZgvHYqhz5Rss6IGqfyG5q+RGxoumYCyYvX9mQybZ2j4A+UStW
	XMsCqjsj2tb6Am5hgGLSEca6pWNsJtxujr721lY0/iVpXo5EFsKndZoUiPkoqkwk8iTEmOKKvEE/Q
	2dbHqJf1AQcaiyATj3UjMsqTMuQzkOeY3E9nQMEfjVHZs6zBiS2EbEoARDnXi26uxQv4tS3X8kpcS
	DcIA/NCd2A/95BA5txVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzQ73-004Iep-46; Thu, 09 Jun 2022 21:54:45 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzQ6u-004Ib6-HI
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 21:54:40 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 73C5BE74011; Thu,  9 Jun 2022 23:43:37 +0200 (CEST)
Received: from astat.fritz.box (a89-183-89-185.net-htp.de [89.183.89.185])
	by lynxeye.de (Postfix) with ESMTPA id 80A5BE7400A
	for <barebox@lists.infradead.org>; Thu,  9 Jun 2022 23:43:35 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Thu,  9 Jun 2022 23:43:30 +0200
Message-Id: <20220609214330.1443541-2-dev@lynxeye.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220609214330.1443541-1-dev@lynxeye.de>
References: <20220609214330.1443541-1-dev@lynxeye.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_145436_890561_2F46DD16 
X-CRM114-Status: GOOD (  10.05  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: mnt-reform: switch to upstream DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that all the necessary bits are upstream, we drop most of
the Barebox DT for this board.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx8mq-mnt-reform2.dts | 164 +---------------------------
 1 file changed, 1 insertion(+), 163 deletions(-)

diff --git a/arch/arm/dts/imx8mq-mnt-reform2.dts b/arch/arm/dts/imx8mq-mnt-reform2.dts
index 5a65324b3c75..deb31abe5414 100644
--- a/arch/arm/dts/imx8mq-mnt-reform2.dts
+++ b/arch/arm/dts/imx8mq-mnt-reform2.dts
@@ -6,17 +6,12 @@
 
 /dts-v1/;
 
-#include <arm64/freescale/imx8mq.dtsi>
+#include <arm64/freescale/imx8mq-mnt-reform2.dts>
 #include "imx8mq.dtsi"
 #include "imx8mq-ddrc.dtsi"
 
 / {
-	model = "MNT Reform2";
-	compatible = "mntre,reform2", "fsl,imx8mq";
-
 	chosen {
-		stdout-path = &uart1;
-
 		environment-emmc {
 			compatible = "barebox,environment";
 			device-path = &usdhc1, "partname:barebox-environment";
@@ -29,86 +24,13 @@
 			status = "disabled";
 		};
 	};
-
-	pcie1_refclk: pcie1-refclk {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <100000000>;
-	};
-};
-
-&fec1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_fec1>;
-	phy-mode = "rgmii-id";
-	phy-handle = <&ethphy0>;
-	status = "okay";
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ethphy0: ethernet-phy@4 {
-			compatible = "ethernet-phy-ieee802.3-c22";
-			reg = <4>;
-			interrupts = <&gpio1 11 IRQ_TYPE_LEVEL_LOW>;
-			reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
-		};
-	};
 };
 
 &ocotp {
 	barebox,provide-mac-address = <&fec1 0x640>;
 };
 
-&pcie1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_pcie1>;
-	reset-gpio = <&gpio3 23 GPIO_ACTIVE_LOW>;
-	clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
-		 <&clk IMX8MQ_CLK_PCIE2_AUX>,
-		 <&clk IMX8MQ_CLK_PCIE2_PHY>,
-		 <&pcie1_refclk>;
-	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
-	status = "okay";
-};
-
-&uart1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1>;
-	status = "okay";
-};
-
-&usb3_phy0 {
-	status = "okay";
-};
-
-&usb3_phy1 {
-	status = "okay";
-};
-
-&usb_dwc3_0 {
-	status = "okay";
-	dr_mode = "host";
-};
-
-&usb_dwc3_1 {
-	status = "okay";
-	dr_mode = "host";
-};
-
 &usdhc1 {
-	assigned-clocks = <&clk IMX8MQ_CLK_USDHC1>;
-	assigned-clock-rates = <400000000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc1>;
-	bus-width = <8>;
-	no-mmc-hs400;
-	non-removable;
-	no-sd;
-	no-sdio;
-	status = "okay";
-
 	#address-cells = <1>;
 	#size-cells = <1>;
 
@@ -124,14 +46,6 @@
 };
 
 &usdhc2 {
-	assigned-clocks = <&clk IMX8MQ_CLK_USDHC2>;
-	assigned-clock-rates = <200000000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc2>;
-	bus-width = <4>;
-	no-1-8-v;
-	status = "okay";
-
 	#address-cells = <1>;
 	#size-cells = <1>;
 
@@ -145,79 +59,3 @@
 		reg = <0xe0000 0x20000>;
 	};
 };
-
-&wdog1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_wdog>;
-	fsl,ext-reset-output;
-	status = "okay";
-};
-
-&iomuxc {
-	pinctrl_fec1: fec1grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC			0x3
-			MX8MQ_IOMUXC_ENET_MDIO_ENET1_MDIO		0x23
-			MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
-			MX8MQ_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
-			MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
-			MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
-			MX8MQ_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
-			MX8MQ_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
-			MX8MQ_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
-			MX8MQ_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0xd1
-			MX8MQ_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
-			MX8MQ_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
-			MX8MQ_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
-			MX8MQ_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0xd1
-			MX8MQ_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x1
-			MX8MQ_IOMUXC_GPIO1_IO11_GPIO1_IO11		0x1
-		>;
-	};
-
-	pinctrl_pcie1: pcie1grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_SAI5_RXD2_GPIO3_IO23		0x16
-		>;
-	};
-
-	pinctrl_uart1: uart1grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX		0x45
-			MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX		0x45
-		>;
-	};
-
-	pinctrl_usdhc1: usdhc1grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x83
-			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc3
-			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc3
-			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc3
-			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc3
-			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc3
-			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc3
-			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc3
-			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc3
-			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc3
-			MX8MQ_IOMUXC_SD1_RESET_B_GPIO2_IO10		0x41
-		>;
-	};
-
-	pinctrl_usdhc2: usdhc2grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x03
-			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc3
-			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc3
-			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc3
-			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc3
-			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc
-		>;
-	};
-
-	pinctrl_wdog: wdog1grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0xc6
-		>;
-	};
-};
-- 
2.36.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

