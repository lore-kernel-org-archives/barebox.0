Delivery-date: Tue, 05 Dec 2023 08:28:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAPrR-003u65-2c
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 08:28:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAPrR-0006Yh-Bk
	for lore@pengutronix.de; Tue, 05 Dec 2023 08:28:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8GkUA2+u7jbnNPQ0ryZH7HTHLeh/4tApLOPuVmXT9CI=; b=jOPZi9pchCZ9nRtU75/r255WP9
	8abwhaaBRbhfHuzP68Ss2a6N3WyxcC7mp+/v5Sm4VPDVA1swZp43VAcaob4LfYiOPC3TO2dBW9NBD
	V5jaWup7X11/KQz88Fw64zibpIX+tYzE7E3N7XdIW1+MbliaAl1B02YF0IZksBqJwUv+wxj0fKvNz
	cnaIpTaPRemqpuQQjgFIsUReD9Blt7TL7Wpl90NeHGmzivnRm/MizHMJrv6Q+O+1jLZL8t6BZQsq2
	py0VYd66zh39F7LtYBT+Lv37/c/62wf1UKqkvYbIVFIT20nYm7fa1F7fG09efEYJ6sZ8hYtHorHot
	9WFE42xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAPpt-006VFC-00;
	Tue, 05 Dec 2023 07:27:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAPpn-006VDI-0O
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 07:27:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAPpk-0006HG-LH; Tue, 05 Dec 2023 08:27:08 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAPpk-00Dgye-8r; Tue, 05 Dec 2023 08:27:08 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rAPpk-002iTo-0h;
	Tue, 05 Dec 2023 08:27:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  5 Dec 2023 08:27:05 +0100
Message-Id: <20231205072706.647255-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205072706.647255-1-s.hauer@pengutronix.de>
References: <20231205072706.647255-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_232711_316505_E719C97B 
X-CRM114-Status: GOOD (  12.99  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] ARM: rockchip: rk3588: Use upstream dts files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have downstream rk3588 dtsi files containing the PCI controllers
and also the SDMMC controller. Use the now existing upstream nodes
instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3588.dtsi                      | 145 ------------------
 arch/arm/dts/rk3588s.dtsi                     | 126 +--------------
 .../rockchip/phy-rockchip-naneng-combphy.c    |   8 +-
 3 files changed, 5 insertions(+), 274 deletions(-)

diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
index 28bcb2f643..0aef30eaff 100644
--- a/arch/arm/dts/rk3588.dtsi
+++ b/arch/arm/dts/rk3588.dtsi
@@ -4,149 +4,4 @@
 #include "rk3588s.dtsi"
 
 / {
-	pcie30_phy_grf: syscon@fd5b8000 {
-		compatible = "rockchip,pcie30-phy-grf", "syscon";
-		reg = <0x0 0xfd5b8000 0x0 0x10000>;
-	};
-
-	pipe_phy0_grf: syscon@fd5bc000 {
-		compatible = "rockchip,pipe-phy-grf", "syscon";
-		reg = <0x0 0xfd5bc000 0x0 0x100>;
-	};
-
-	pipe_phy1_grf: syscon@fd5c0000 {
-		compatible = "rockchip,pipe-phy-grf", "syscon";
-		reg = <0x0 0xfd5c0000 0x0 0x100>;
-	};
-
-	pcie3x4: pcie@fe150000 {
-		compatible = "rockchip,rk3588-pcie", "snps,dw-pcie";
-		#address-cells = <3>;
-		#size-cells = <2>;
-		bus-range = <0x00 0x0f>;
-		clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
-			 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
-			 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>;
-		clock-names = "aclk_mst", "aclk_slv",
-			      "aclk_dbi", "pclk",
-			      "aux", "pipe";
-		device_type = "pci";
-		linux,pci-domain = <0>;
-		num-ib-windows = <16>;
-		num-ob-windows = <16>;
-		num-viewport = <8>;
-		max-link-speed = <3>;
-		num-lanes = <4>;
-		phys = <&pcie30phy>;
-		phy-names = "pcie-phy";
-		power-domains = <&power RK3588_PD_PCIE>;
-		ranges = <0x81000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x100000
-			  0x82000000 0x0 0xf0200000 0x0 0xf0200000 0x0 0xe00000
-			  0xc3000000 0x9 0x00000000 0x9 0x00000000 0x0 0x40000000>;
-		reg = <0x0 0xfe150000 0x0 0x10000>,
-		      <0xa 0x40000000 0x0 0x400000>,
-		      <0x0 0xf0000000 0x0 0x100000>;
-		reg-names = "apb", "dbi", "config";
-		resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
-		reset-names = "pcie", "periph";
-		rockchip,pipe-grf = <&php_grf>;
-		status = "disabled";
-	};
-
-	pcie3x2: pcie@fe160000 {
-		compatible = "rockchip,rk3588-pcie", "snps,dw-pcie";
-		#address-cells = <3>;
-		#size-cells = <2>;
-		bus-range = <0x10 0x1f>;
-		clocks = <&cru ACLK_PCIE_2L_MSTR>, <&cru ACLK_PCIE_2L_SLV>,
-			 <&cru ACLK_PCIE_2L_DBI>, <&cru PCLK_PCIE_2L>,
-			 <&cru CLK_PCIE_AUX1>, <&cru CLK_PCIE2L_PIPE>;
-		clock-names = "aclk_mst", "aclk_slv",
-			      "aclk_dbi", "pclk",
-			      "aux", "pipe";
-		device_type = "pci";
-		linux,pci-domain = <1>;
-		num-ib-windows = <16>;
-		num-ob-windows = <16>;
-		num-viewport = <8>;
-		max-link-speed = <3>;
-		num-lanes = <2>;
-		phys = <&pcie30phy>;
-		phy-names = "pcie-phy";
-		power-domains = <&power RK3588_PD_PCIE>;
-		ranges = <0x81000000 0x0 0xf1100000 0x0 0xf1100000 0x0 0x100000
-			  0x82000000 0x0 0xf1200000 0x0 0xf1200000 0x0 0xe00000
-			  0xc3000000 0x9 0x40000000 0x9 0x40000000 0x0 0x40000000>;
-		reg = <0x0 0xfe160000 0x0 0x10000>,
-		      <0xa 0x40400000 0x0 0x400000>,
-		      <0x0 0xf1000000 0x0 0x100000>;
-		reg-names = "apb", "dbi", "config";
-		resets = <&cru SRST_PCIE1_POWER_UP>, <&cru SRST_P_PCIE1>;
-		reset-names = "pcie", "periph";
-		rockchip,pipe-grf = <&php_grf>;
-		status = "disabled";
-	};
-
-	pcie2x1l0: pcie@fe170000 {
-		compatible = "rockchip,rk3588-pcie", "snps,dw-pcie";
-		#address-cells = <3>;
-		#size-cells = <2>;
-		bus-range = <0x20 0x2f>;
-		clocks = <&cru ACLK_PCIE_1L0_MSTR>, <&cru ACLK_PCIE_1L0_SLV>,
-			 <&cru ACLK_PCIE_1L0_DBI>, <&cru PCLK_PCIE_1L0>,
-			 <&cru CLK_PCIE_AUX2>, <&cru CLK_PCIE1L0_PIPE>;
-		clock-names = "aclk_mst", "aclk_slv",
-			      "aclk_dbi", "pclk",
-			      "aux", "pipe";
-		device_type = "pci";
-		linux,pci-domain = <2>;
-		num-ib-windows = <8>;
-		num-ob-windows = <8>;
-		num-viewport = <4>;
-		max-link-speed = <2>;
-		num-lanes = <1>;
-		phys = <&combphy1_ps PHY_TYPE_PCIE>;
-		phy-names = "pcie-phy";
-		ranges = <0x81000000 0x0 0xf2100000 0x0 0xf2100000 0x0 0x100000
-			  0x82000000 0x0 0xf2200000 0x0 0xf2200000 0x0 0xe00000
-			  0xc3000000 0x9 0x80000000 0x9 0x80000000 0x0 0x40000000>;
-		reg = <0x0 0xfe170000 0x0 0x10000>,
-		      <0xa 0x40800000 0x0 0x400000>,
-		      <0x0 0xf2000000 0x0 0x100000>;
-		reg-names = "apb", "dbi", "config";
-		resets = <&cru SRST_PCIE2_POWER_UP>, <&cru SRST_P_PCIE2>;
-		reset-names = "pcie", "periph";
-		rockchip,pipe-grf = <&php_grf>;
-		status = "disabled";
-	};
-
-	combphy1_ps: phy@fee10000 {
-		compatible = "rockchip,rk3588-naneng-combphy";
-		reg = <0x0 0xfee10000 0x0 0x100>;
-		#phy-cells = <1>;
-		clocks = <&cru CLK_REF_PIPE_PHY1>, <&cru PCLK_PCIE_COMBO_PIPE_PHY1>,
-			 <&cru PCLK_PHP_ROOT>;
-		clock-names = "refclk", "apbclk", "phpclk";
-		assigned-clocks = <&cru CLK_REF_PIPE_PHY1>;
-		assigned-clock-rates = <100000000>;
-		resets = <&cru SRST_P_PCIE2_PHY1>, <&cru SRST_REF_PIPE_PHY1>;
-		reset-names = "combphy-apb", "combphy";
-		rockchip,pipe-grf = <&php_grf>;
-		rockchip,pipe-phy-grf = <&pipe_phy1_grf>;
-		rockchip,pcie1ln-sel-bits = <0x100 0 0 0>;
-		status = "disabled";
-	};
-
-	pcie30phy: phy@fee80000 {
-		compatible = "rockchip,rk3588-pcie3-phy";
-		reg = <0x0 0xfee80000 0x0 0x20000>;
-		#phy-cells = <0>;
-		clocks = <&cru PCLK_PCIE_COMBO_PIPE_PHY>;
-		clock-names = "pclk";
-		resets = <&cru SRST_PCIE30_PHY>;
-		reset-names = "phy";
-		rockchip,pipe-grf = <&php_grf>;
-		rockchip,phy-grf = <&pcie30_phy_grf>;
-		status = "disabled";
-	};
 };
diff --git a/arch/arm/dts/rk3588s.dtsi b/arch/arm/dts/rk3588s.dtsi
index 6f055d826e..6572588ad6 100644
--- a/arch/arm/dts/rk3588s.dtsi
+++ b/arch/arm/dts/rk3588s.dtsi
@@ -1,131 +1,7 @@
 / {
 	dmc: memory-controller {
 		compatible = "rockchip,rk3588-dmc";
-		rockchip,pmu = <&pmugrf>;
-	};
-
-	pmugrf: syscon@fd58a000 {
-		compatible = "rockchip,rk3588-pmugrf", "syscon", "simple-mfd";
-		reg = <0x0 0xfd58a000 0x0 0x10000>;
-	};
-
-	pipe_phy2_grf: syscon@fd5c4000 {
-		compatible = "rockchip,pipe-phy-grf", "syscon";
-		reg = <0x0 0xfd5c4000 0x0 0x100>;
-	};
-
-	pcie2x1l1: pcie@fe180000 {
-		compatible = "rockchip,rk3588-pcie", "snps,dw-pcie";
-		#address-cells = <3>;
-		#size-cells = <2>;
-		bus-range = <0x30 0x3f>;
-		clocks = <&cru ACLK_PCIE_1L1_MSTR>, <&cru ACLK_PCIE_1L1_SLV>,
-			 <&cru ACLK_PCIE_1L1_DBI>, <&cru PCLK_PCIE_1L1>,
-			 <&cru CLK_PCIE_AUX3>, <&cru CLK_PCIE1L1_PIPE>;
-		clock-names = "aclk_mst", "aclk_slv",
-			      "aclk_dbi", "pclk",
-			      "aux", "pipe";
-		device_type = "pci";
-		linux,pci-domain = <3>;
-		num-ib-windows = <8>;
-		num-ob-windows = <8>;
-		num-viewport = <4>;
-		max-link-speed = <2>;
-		num-lanes = <1>;
-		phys = <&combphy2_psu PHY_TYPE_PCIE>;
-		phy-names = "pcie-phy";
-		ranges = <0x81000000 0x0 0xf3100000 0x0 0xf3100000 0x0 0x100000
-			  0x82000000 0x0 0xf3200000 0x0 0xf3200000 0x0 0xe00000
-			  0xc3000000 0x9 0xc0000000 0x9 0xc0000000 0x0 0x40000000>;
-		reg = <0x0 0xfe180000 0x0 0x10000>,
-		      <0xa 0x40c00000 0x0 0x400000>,
-		      <0x0 0xf3000000 0x0 0x100000>;
-		reg-names = "apb", "dbi", "config";
-		resets = <&cru SRST_PCIE3_POWER_UP>, <&cru SRST_P_PCIE3>;
-		reset-names = "pcie", "periph";
-		rockchip,pipe-grf = <&php_grf>;
-		status = "disabled";
-	};
-
-	pcie2x1l2: pcie@fe190000 {
-		compatible = "rockchip,rk3588-pcie", "snps,dw-pcie";
-		#address-cells = <3>;
-		#size-cells = <2>;
-		bus-range = <0x40 0x4f>;
-		clocks = <&cru ACLK_PCIE_1L2_MSTR>, <&cru ACLK_PCIE_1L2_SLV>,
-			 <&cru ACLK_PCIE_1L2_DBI>, <&cru PCLK_PCIE_1L2>,
-			 <&cru CLK_PCIE_AUX4>, <&cru CLK_PCIE1L2_PIPE>;
-		clock-names = "aclk_mst", "aclk_slv",
-			      "aclk_dbi", "pclk",
-			      "aux", "pipe";
-		device_type = "pci";
-		linux,pci-domain = <4>;
-		num-ib-windows = <8>;
-		num-ob-windows = <8>;
-		num-viewport = <4>;
-		max-link-speed = <2>;
-		num-lanes = <1>;
-		phys = <&combphy0_ps PHY_TYPE_PCIE>;
-		phy-names = "pcie-phy";
-		ranges = <0x81000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x100000
-			  0x82000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0xe00000
-			  0xc3000000 0xa 0x00000000 0xa 0x00000000 0x0 0x40000000>;
-		reg = <0x0 0xfe190000 0x0 0x10000>,
-		      <0xa 0x41000000 0x0 0x400000>,
-		      <0x0 0xf4000000 0x0 0x100000>;
-		reg-names = "apb", "dbi", "config";
-		resets = <&cru SRST_PCIE4_POWER_UP>, <&cru SRST_P_PCIE4>;
-		reset-names = "pcie", "periph";
-		rockchip,pipe-grf = <&php_grf>;
-		status = "disabled";
-	};
-
-	sdmmc: mmc@fe2c0000 {
-		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
-		reg = <0x0 0xfe2c0000 0x0 0x4000>;
-		interrupts = <GIC_SPI 203 IRQ_TYPE_LEVEL_HIGH 0>;
-		clocks = <&scmi_clk SCMI_HCLK_SD>, <&scmi_clk SCMI_CCLK_SD>,
-			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
-		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
-		fifo-depth = <0x100>;
-		max-frequency = <200000000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
-		power-domains = <&power RK3588_PD_SDMMC>;
-		status = "disabled";
-	};
-
-	combphy0_ps: phy@fee00000 {
-		compatible = "rockchip,rk3588-naneng-combphy";
-		reg = <0x0 0xfee00000 0x0 0x100>;
-		#phy-cells = <1>;
-		clocks = <&cru CLK_REF_PIPE_PHY0>, <&cru PCLK_PCIE_COMBO_PIPE_PHY0>,
-			 <&cru PCLK_PHP_ROOT>;
-		clock-names = "refclk", "apbclk", "phpclk";
-		assigned-clocks = <&cru CLK_REF_PIPE_PHY0>;
-		assigned-clock-rates = <100000000>;
-		resets = <&cru SRST_P_PCIE2_PHY0>, <&cru SRST_REF_PIPE_PHY0>;
-		reset-names = "combphy-apb", "combphy";
-		rockchip,pipe-grf = <&php_grf>;
-		rockchip,pipe-phy-grf = <&pipe_phy0_grf>;
-		status = "disabled";
-	};
-
-	combphy2_psu: phy@fee20000 {
-		compatible = "rockchip,rk3588-naneng-combphy";
-		reg = <0x0 0xfee20000 0x0 0x100>;
-		#phy-cells = <1>;
-		clocks = <&cru CLK_REF_PIPE_PHY2>, <&cru PCLK_PCIE_COMBO_PIPE_PHY2>,
-			 <&cru PCLK_PHP_ROOT>;
-		clock-names = "refclk", "apbclk", "phpclk";
-		assigned-clocks = <&cru CLK_REF_PIPE_PHY2>;
-		assigned-clock-rates = <100000000>;
-		resets = <&cru SRST_P_PCIE2_PHY2>, <&cru SRST_REF_PIPE_PHY2>;
-		reset-names = "combphy-apb", "combphy";
-		rockchip,pipe-grf = <&php_grf>;
-		rockchip,pipe-phy-grf = <&pipe_phy2_grf>;
-		rockchip,pcie1ln-sel-bits = <0x100 1 1 0>;
-		status = "disabled";
+		rockchip,pmu = <&pmu1grf>;
 	};
 };
 
diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 9676d8fe99..9e52beed1b 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -594,7 +594,7 @@ static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
 
 	/* Configure PHY reference clock frequency */
 	for (i = 0; i < priv->num_clks; i++) {
-		if (!strncmp(priv->clks[i].id, "refclk", 6)) {
+		if (!strncmp(priv->clks[i].id, "ref", 6)) {
 			refclk = priv->clks[i].clk;
 			break;
 		}
@@ -843,9 +843,9 @@ static const struct rockchip_combphy_grfcfg rk3588_combphy_grfcfgs = {
 
 
 static const struct clk_bulk_data rk3588_clks[] = {
-	{ .id = "refclk" },
-	{ .id = "apbclk" },
-	{ .id = "phpclk" },
+	{ .id = "ref" },
+	{ .id = "apb" },
+	{ .id = "pipe" },
 };
 
 static const struct rockchip_combphy_cfg rk3588_combphy_cfgs = {
-- 
2.39.2



