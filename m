Delivery-date: Tue, 22 Jun 2021 08:48:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvaDT-00056r-LV
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 08:48:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvaDS-00075N-7W
	for lore@pengutronix.de; Tue, 22 Jun 2021 08:48:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fq318cmV/nye7JrvLzf3zbp0VxGT68/3mv4+ur/NODA=; b=xYrfKxtBmPIzGZ
	FnAIwiDKJET/9YCD+/T60KDiK/DrrM7EL6Qp4SoJl/BRSUnA6RDnYc4Atn1GonZJMSgU+HzOZm+zk
	2q+YzWYbhUpRF7asHbPOaAG7pMnSKcUcyNRu97WQDbrbX5NbvpAHaI2lmx5aMSr0ahcH5sufVwlej
	MTfeT9aDPG9vhIt9K7ybUGE69rA/UghXnLruEDWUdjSMu09tbuDH/GfOL5Ptfw5LHQWs+30X4G802
	ebhFge2rjFXanB4pMxErg4ve2NDxU5B4eW3bipio0GuSWbn7Fw5lTKhPwlfMESlQNr9KAjKD8OgWl
	DwxWB00THV5lJPBa1x6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvaC9-005sby-GA; Tue, 22 Jun 2021 06:47:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvaBr-005sXa-GR
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 06:47:22 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvaBn-0006oe-M0; Tue, 22 Jun 2021 08:47:15 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvaBn-0004Nn-7Q; Tue, 22 Jun 2021 08:47:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 22 Jun 2021 08:47:08 +0200
Message-Id: <20210622064711.14058-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210622064711.14058-1-s.hauer@pengutronix.de>
References: <20210622064711.14058-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_234719_731245_F9438FDF 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] ARM: Rockchip: rk3568: Add USB nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The RK3568 has two DWC3 cores and two EHCI/OHCI cores. Add these nodes
to the dtsi file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3568.dtsi | 213 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 213 insertions(+)

diff --git a/arch/arm/dts/rk3568.dtsi b/arch/arm/dts/rk3568.dtsi
index 34d0b8a082..3baaec3a83 100644
--- a/arch/arm/dts/rk3568.dtsi
+++ b/arch/arm/dts/rk3568.dtsi
@@ -198,6 +198,64 @@
 		};
 	};
 
+	usbdrd30: usbdrd {
+		compatible = "rockchip,rk3568-dwc3", "rockchip,rk3399-dwc3";
+		clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,
+			 <&cru ACLK_USB3OTG0>, <&cru PCLK_PIPE>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk", "pipe_clk";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		status = "disabled";
+
+		usbdrd_dwc3: dwc3@fcc00000 {
+			compatible = "snps,dwc3";
+			reg = <0x0 0xfcc00000 0x0 0x400000>;
+			interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
+			dr_mode = "otg";
+			phys = <&u2phy0_otg>, <&combphy0_us PHY_TYPE_USB3>;
+			phy-names = "usb2-phy", "usb3-phy";
+			phy_type = "utmi_wide";
+			resets = <&cru SRST_USB3OTG0>;
+			reset-names = "usb3-otg";
+			snps,dis_enblslpm_quirk;
+			snps,dis-u2-freeclk-exists-quirk;
+			snps,dis-del-phy-power-chg-quirk;
+			snps,dis-tx-ipgap-linecheck-quirk;
+			snps,xhci-trb-ent-quirk;
+		};
+	};
+
+	usbhost30: usbhost {
+		compatible = "rockchip,rk3568-dwc3", "rockchip,rk3399-dwc3";
+		clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
+			 <&cru ACLK_USB3OTG1>, <&cru PCLK_PIPE>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk", "pipe_clk";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		status = "disabled";
+
+		usbhost_dwc3: dwc3@fd000000 {
+			compatible = "snps,dwc3";
+			reg = <0x0 0xfd000000 0x0 0x400000>;
+			interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+			dr_mode = "host";
+			phys = <&u2phy0_host>, <&combphy1_usq PHY_TYPE_USB3>;
+			phy-names = "usb2-phy", "usb3-phy";
+			phy_type = "utmi_wide";
+			resets = <&cru SRST_USB3OTG1>;
+			reset-names = "usb3-host";
+			snps,dis_enblslpm_quirk;
+			snps,dis-u2-freeclk-exists-quirk;
+			snps,dis-del-phy-power-chg-quirk;
+			snps,dis-tx-ipgap-linecheck-quirk;
+			snps,xhci-trb-ent-quirk;
+		};
+	};
+
 	gic: interrupt-controller@fd400000 {
 		compatible = "arm,gic-v3";
 		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
@@ -210,6 +268,161 @@
 		msi-controller;
 	};
 
+	usb_host0_ehci: usb@fd800000 {
+		compatible = "generic-ehci";
+		reg = <0x0 0xfd800000 0x0 0x40000>;
+		interrupts = <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_USB2HOST0>, <&cru HCLK_USB2HOST0_ARB>,
+			 <&cru PCLK_USB>, <&usb2phy1>;
+		clock-names = "usbhost", "arbiter", "pclk", "utmi";
+		phys = <&u2phy1_otg>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
+	usb_host0_ohci: usb@fd840000 {
+		compatible = "generic-ohci";
+		reg = <0x0 0xfd840000 0x0 0x40000>;
+		interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_USB2HOST0>, <&cru HCLK_USB2HOST0_ARB>,
+			 <&cru PCLK_USB>, <&usb2phy1>;
+		clock-names = "usbhost", "arbiter", "pclk", "utmi";
+		phys = <&u2phy1_otg>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
+	usb_host1_ehci: usb@fd880000 {
+		compatible = "generic-ehci";
+		reg = <0x0 0xfd880000 0x0 0x40000>;
+		interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_USB2HOST1>, <&cru HCLK_USB2HOST1_ARB>,
+			 <&cru PCLK_USB>, <&usb2phy1>;
+		clock-names = "usbhost", "arbiter", "pclk", "utmi";
+		phys = <&u2phy1_host>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
+	usb_host1_ohci: usb@fd8c0000 {
+		compatible = "generic-ohci";
+		reg = <0x0 0xfd8c0000 0x0 0x40000>;
+		interrupts = <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_USB2HOST1>, <&cru HCLK_USB2HOST1_ARB>,
+			 <&cru PCLK_USB>, <&usb2phy1>;
+		clock-names = "usbhost", "arbiter", "pclk", "utmi";
+		phys = <&u2phy1_host>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
+	usb2phy0: usb2-phy@fe8a0000 {
+		compatible = "rockchip,rk3568-usb2phy";
+		reg = <0x0 0xfe8a0000 0x0 0x10000>;
+		interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&pmucru CLK_USBPHY0_REF>;
+		clock-names = "phyclk";
+		#clock-cells = <0>;
+		assigned-clocks = <&cru USB480M>;
+		assigned-clock-parents = <&usb2phy0>;
+		clock-output-names = "usb480m_phy";
+		rockchip,usbgrf = <&usb2phy0_grf>;
+		status = "disabled";
+
+		u2phy0_host: host-port {
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		u2phy0_otg: otg-port {
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+	};
+
+	usb2phy1: usb2-phy@fe8b0000 {
+		compatible = "rockchip,rk3568-usb2phy";
+		reg = <0x0 0xfe8b0000 0x0 0x10000>;
+		interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&pmucru CLK_USBPHY1_REF>;
+		clock-names = "phyclk";
+		#clock-cells = <0>;
+		rockchip,usbgrf = <&usb2phy1_grf>;
+		status = "disabled";
+
+		u2phy1_host: host-port {
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		u2phy1_otg: otg-port {
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+	};
+
+	combphy0_us: phy@fe820000 {
+		compatible = "rockchip,rk3568-naneng-combphy";
+		reg = <0x0 0xfe820000 0x0 0x100>;
+		#phy-cells = <1>;
+		clocks = <&pmucru CLK_PCIEPHY0_REF>, <&cru PCLK_PIPEPHY0>,
+			 <&cru PCLK_PIPE>;
+		clock-names = "refclk", "apbclk", "pipe_clk";
+		assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
+		assigned-clock-rates = <24000000>;
+		resets = <&cru SRST_P_PIPEPHY0>, <&cru SRST_PIPEPHY0>;
+		reset-names = "combphy-apb", "combphy";
+		rockchip,pipe-grf = <&pipegrf>;
+		rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
+		status = "disabled";
+	};
+
+	combphy1_usq: phy@fe830000 {
+		compatible = "rockchip,rk3568-naneng-combphy";
+		reg = <0x0 0xfe830000 0x0 0x100>;
+		#phy-cells = <1>;
+		clocks = <&pmucru CLK_PCIEPHY1_REF>, <&cru PCLK_PIPEPHY1>,
+			 <&cru PCLK_PIPE>;
+		clock-names = "refclk", "apbclk", "pipe_clk";
+		assigned-clocks = <&pmucru CLK_PCIEPHY1_REF>;
+		assigned-clock-rates = <24000000>;
+		resets = <&cru SRST_P_PIPEPHY1>, <&cru SRST_PIPEPHY1>;
+		reset-names = "combphy-apb", "combphy";
+		rockchip,pipe-grf = <&pipegrf>;
+		rockchip,pipe-phy-grf = <&pipe_phy_grf1>;
+		status = "disabled";
+	};
+
+	pipe_phy_grf0: syscon@fdc70000 {
+		compatible = "rockchip,pipe-phy-grf", "syscon";
+		reg = <0x0 0xfdc70000 0x0 0x1000>;
+	};
+
+	pipe_phy_grf1: syscon@fdc80000 {
+		compatible = "rockchip,pipe-phy-grf", "syscon";
+		reg = <0x0 0xfdc80000 0x0 0x1000>;
+	};
+
+	pipe_phy_grf2: syscon@fdc90000 {
+		compatible = "rockchip,pipe-phy-grf", "syscon";
+		reg = <0x0 0xfdc90000 0x0 0x1000>;
+	};
+
+	usb2phy0_grf: syscon@fdca0000 {
+		compatible = "rockchip,rk3568-usb2phy-grf", "syscon";
+		reg = <0x0 0xfdca0000 0x0 0x8000>;
+	};
+
+	usb2phy1_grf: syscon@fdca8000 {
+		compatible = "rockchip,rk3568-usb2phy-grf", "syscon";
+		reg = <0x0 0xfdca8000 0x0 0x8000>;
+	};
+
+	pipegrf: syscon@fdc50000 {
+		compatible = "rockchip,rk3568-pipegrf", "syscon";
+		reg = <0x0 0xfdc50000 0x0 0x1000>;
+	};
+
 	pmugrf: syscon@fdc20000 {
 		compatible = "rockchip,rk3568-pmugrf", "syscon", "simple-mfd";
 		reg = <0x0 0xfdc20000 0x0 0x10000>;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

