Delivery-date: Thu, 04 May 2023 10:19:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBc-004LOu-3Q
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBX-00027B-OK
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y+sFiqX0qiloyfhFXCUx02Xqf/4EFhXLkOUX5Yt4Otg=; b=TiOuAB88nRLkt3QGhUjoFm+0Sd
	ctEFtp8YimsuxOTE88Y+Yl7bYqWSKagt+GUvd+qvXR9tRPKoOQVjt11aoYO03GXDAKVZ/5uVVDear
	vuPlWjQcFteBSRtPPk0ZgrJEmSDu2r0wZd4vtsXOVWGeqhpOxsWJARPKVqrApAqMTqLUvoGw2OoRA
	241CIyNcL0qkyfLV2ufTY1+oc8BnuT/zBgg56xANt1IzTNJ/CKgufIuM4A4QYOf0qNMSmf/WEoifk
	sn6BE20yjhlH32wtMAnf2nMBrZZOvUQMLCPpPExfSkX5Lt9A22kr6U9BZI8RnYZ1YST2R3iL7sLOh
	zOdtOSIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAM-0074oK-1t;
	Thu, 04 May 2023 08:18:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAJ-0074kV-0x
	for barebox@bombadil.infradead.org;
	Thu, 04 May 2023 08:18:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Y+sFiqX0qiloyfhFXCUx02Xqf/4EFhXLkOUX5Yt4Otg=; b=M8U0zPb4I6A24y4J7I/ECZXA6W
	/tGNnYiFFVMWjkV9uJxT45L3c2S5jtYuPLjxZDveP1UFaa1Eg/uZq17qYHIx26cV3h+sKO4VfuPuY
	PH8WUdVDPNU9Nwh+UHLAKOCnJP/oEilPtdFD0S2NYAkatoaZJl8y2yLRyIj3jzEB1jwTj0TFk77Yc
	7bxkcoXHSdpsrGdlyaiLYOb17jHyco6GQqr3Ej6NhhejrLF7lxrq7K0B+wuPNKab5Bp9c6UP5OvyI
	t2qxsw8YqOslPWMKAT6eLSjQEt+c8005ge3XyktqEqwUaoW1cSlGdTTb2m4+M7vlrUMJTKqBFaBWm
	FvtzoELw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAB-001gZJ-2O
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:18:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9u-0001IG-Ny; Thu, 04 May 2023 10:17:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9u-0011FL-37; Thu, 04 May 2023 10:17:50 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9r-001Hbu-F8; Thu, 04 May 2023 10:17:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:43 +0200
Message-Id: <20230504081745.305841-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504081745.305841-1-s.hauer@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_091809_342940_4365CCD2 
X-CRM114-Status: GOOD (  13.39  )
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
Subject: [PATCH 16/18] ARM: dts: Add rk3588 device trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have upstream device trees in dts/src/arm64/rockchip/rk3588*.dtsi.
This patch adds some pieces not yet in upstream, like PCIe nodes,
DMC node and sdmmc node.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3588.dtsi  | 152 ++++++++++++++++++++++++++++++++++++++
 arch/arm/dts/rk3588s.dtsi | 135 +++++++++++++++++++++++++++++++++
 2 files changed, 287 insertions(+)
 create mode 100644 arch/arm/dts/rk3588.dtsi
 create mode 100644 arch/arm/dts/rk3588s.dtsi

diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
new file mode 100644
index 0000000000..28bcb2f643
--- /dev/null
+++ b/arch/arm/dts/rk3588.dtsi
@@ -0,0 +1,152 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include <dt-bindings/phy/phy.h>
+#include "rk3588s.dtsi"
+
+/ {
+	pcie30_phy_grf: syscon@fd5b8000 {
+		compatible = "rockchip,pcie30-phy-grf", "syscon";
+		reg = <0x0 0xfd5b8000 0x0 0x10000>;
+	};
+
+	pipe_phy0_grf: syscon@fd5bc000 {
+		compatible = "rockchip,pipe-phy-grf", "syscon";
+		reg = <0x0 0xfd5bc000 0x0 0x100>;
+	};
+
+	pipe_phy1_grf: syscon@fd5c0000 {
+		compatible = "rockchip,pipe-phy-grf", "syscon";
+		reg = <0x0 0xfd5c0000 0x0 0x100>;
+	};
+
+	pcie3x4: pcie@fe150000 {
+		compatible = "rockchip,rk3588-pcie", "snps,dw-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x00 0x0f>;
+		clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
+			 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
+			 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk",
+			      "aux", "pipe";
+		device_type = "pci";
+		linux,pci-domain = <0>;
+		num-ib-windows = <16>;
+		num-ob-windows = <16>;
+		num-viewport = <8>;
+		max-link-speed = <3>;
+		num-lanes = <4>;
+		phys = <&pcie30phy>;
+		phy-names = "pcie-phy";
+		power-domains = <&power RK3588_PD_PCIE>;
+		ranges = <0x81000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x100000
+			  0x82000000 0x0 0xf0200000 0x0 0xf0200000 0x0 0xe00000
+			  0xc3000000 0x9 0x00000000 0x9 0x00000000 0x0 0x40000000>;
+		reg = <0x0 0xfe150000 0x0 0x10000>,
+		      <0xa 0x40000000 0x0 0x400000>,
+		      <0x0 0xf0000000 0x0 0x100000>;
+		reg-names = "apb", "dbi", "config";
+		resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
+		reset-names = "pcie", "periph";
+		rockchip,pipe-grf = <&php_grf>;
+		status = "disabled";
+	};
+
+	pcie3x2: pcie@fe160000 {
+		compatible = "rockchip,rk3588-pcie", "snps,dw-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x10 0x1f>;
+		clocks = <&cru ACLK_PCIE_2L_MSTR>, <&cru ACLK_PCIE_2L_SLV>,
+			 <&cru ACLK_PCIE_2L_DBI>, <&cru PCLK_PCIE_2L>,
+			 <&cru CLK_PCIE_AUX1>, <&cru CLK_PCIE2L_PIPE>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk",
+			      "aux", "pipe";
+		device_type = "pci";
+		linux,pci-domain = <1>;
+		num-ib-windows = <16>;
+		num-ob-windows = <16>;
+		num-viewport = <8>;
+		max-link-speed = <3>;
+		num-lanes = <2>;
+		phys = <&pcie30phy>;
+		phy-names = "pcie-phy";
+		power-domains = <&power RK3588_PD_PCIE>;
+		ranges = <0x81000000 0x0 0xf1100000 0x0 0xf1100000 0x0 0x100000
+			  0x82000000 0x0 0xf1200000 0x0 0xf1200000 0x0 0xe00000
+			  0xc3000000 0x9 0x40000000 0x9 0x40000000 0x0 0x40000000>;
+		reg = <0x0 0xfe160000 0x0 0x10000>,
+		      <0xa 0x40400000 0x0 0x400000>,
+		      <0x0 0xf1000000 0x0 0x100000>;
+		reg-names = "apb", "dbi", "config";
+		resets = <&cru SRST_PCIE1_POWER_UP>, <&cru SRST_P_PCIE1>;
+		reset-names = "pcie", "periph";
+		rockchip,pipe-grf = <&php_grf>;
+		status = "disabled";
+	};
+
+	pcie2x1l0: pcie@fe170000 {
+		compatible = "rockchip,rk3588-pcie", "snps,dw-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x20 0x2f>;
+		clocks = <&cru ACLK_PCIE_1L0_MSTR>, <&cru ACLK_PCIE_1L0_SLV>,
+			 <&cru ACLK_PCIE_1L0_DBI>, <&cru PCLK_PCIE_1L0>,
+			 <&cru CLK_PCIE_AUX2>, <&cru CLK_PCIE1L0_PIPE>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk",
+			      "aux", "pipe";
+		device_type = "pci";
+		linux,pci-domain = <2>;
+		num-ib-windows = <8>;
+		num-ob-windows = <8>;
+		num-viewport = <4>;
+		max-link-speed = <2>;
+		num-lanes = <1>;
+		phys = <&combphy1_ps PHY_TYPE_PCIE>;
+		phy-names = "pcie-phy";
+		ranges = <0x81000000 0x0 0xf2100000 0x0 0xf2100000 0x0 0x100000
+			  0x82000000 0x0 0xf2200000 0x0 0xf2200000 0x0 0xe00000
+			  0xc3000000 0x9 0x80000000 0x9 0x80000000 0x0 0x40000000>;
+		reg = <0x0 0xfe170000 0x0 0x10000>,
+		      <0xa 0x40800000 0x0 0x400000>,
+		      <0x0 0xf2000000 0x0 0x100000>;
+		reg-names = "apb", "dbi", "config";
+		resets = <&cru SRST_PCIE2_POWER_UP>, <&cru SRST_P_PCIE2>;
+		reset-names = "pcie", "periph";
+		rockchip,pipe-grf = <&php_grf>;
+		status = "disabled";
+	};
+
+	combphy1_ps: phy@fee10000 {
+		compatible = "rockchip,rk3588-naneng-combphy";
+		reg = <0x0 0xfee10000 0x0 0x100>;
+		#phy-cells = <1>;
+		clocks = <&cru CLK_REF_PIPE_PHY1>, <&cru PCLK_PCIE_COMBO_PIPE_PHY1>,
+			 <&cru PCLK_PHP_ROOT>;
+		clock-names = "refclk", "apbclk", "phpclk";
+		assigned-clocks = <&cru CLK_REF_PIPE_PHY1>;
+		assigned-clock-rates = <100000000>;
+		resets = <&cru SRST_P_PCIE2_PHY1>, <&cru SRST_REF_PIPE_PHY1>;
+		reset-names = "combphy-apb", "combphy";
+		rockchip,pipe-grf = <&php_grf>;
+		rockchip,pipe-phy-grf = <&pipe_phy1_grf>;
+		rockchip,pcie1ln-sel-bits = <0x100 0 0 0>;
+		status = "disabled";
+	};
+
+	pcie30phy: phy@fee80000 {
+		compatible = "rockchip,rk3588-pcie3-phy";
+		reg = <0x0 0xfee80000 0x0 0x20000>;
+		#phy-cells = <0>;
+		clocks = <&cru PCLK_PCIE_COMBO_PIPE_PHY>;
+		clock-names = "pclk";
+		resets = <&cru SRST_PCIE30_PHY>;
+		reset-names = "phy";
+		rockchip,pipe-grf = <&php_grf>;
+		rockchip,phy-grf = <&pcie30_phy_grf>;
+		status = "disabled";
+	};
+};
diff --git a/arch/arm/dts/rk3588s.dtsi b/arch/arm/dts/rk3588s.dtsi
new file mode 100644
index 0000000000..ba6561f97e
--- /dev/null
+++ b/arch/arm/dts/rk3588s.dtsi
@@ -0,0 +1,135 @@
+/ {
+	dmc: memory-controller {
+		compatible = "rockchip,rk3588-dmc";
+		rockchip,pmu = <&pmugrf>;
+	};
+
+	pmugrf: syscon@fd58a000 {
+		compatible = "rockchip,rk3588-pmugrf", "syscon", "simple-mfd";
+		reg = <0x0 0xfd58a000 0x0 0x10000>;
+	};
+
+	pipe_phy2_grf: syscon@fd5c4000 {
+		compatible = "rockchip,pipe-phy-grf", "syscon";
+		reg = <0x0 0xfd5c4000 0x0 0x100>;
+	};
+
+	pcie2x1l1: pcie@fe180000 {
+		compatible = "rockchip,rk3588-pcie", "snps,dw-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x30 0x3f>;
+		clocks = <&cru ACLK_PCIE_1L1_MSTR>, <&cru ACLK_PCIE_1L1_SLV>,
+			 <&cru ACLK_PCIE_1L1_DBI>, <&cru PCLK_PCIE_1L1>,
+			 <&cru CLK_PCIE_AUX3>, <&cru CLK_PCIE1L1_PIPE>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk",
+			      "aux", "pipe";
+		device_type = "pci";
+		linux,pci-domain = <3>;
+		num-ib-windows = <8>;
+		num-ob-windows = <8>;
+		num-viewport = <4>;
+		max-link-speed = <2>;
+		num-lanes = <1>;
+		phys = <&combphy2_psu PHY_TYPE_PCIE>;
+		phy-names = "pcie-phy";
+		ranges = <0x81000000 0x0 0xf3100000 0x0 0xf3100000 0x0 0x100000
+			  0x82000000 0x0 0xf3200000 0x0 0xf3200000 0x0 0xe00000
+			  0xc3000000 0x9 0xc0000000 0x9 0xc0000000 0x0 0x40000000>;
+		reg = <0x0 0xfe180000 0x0 0x10000>,
+		      <0xa 0x40c00000 0x0 0x400000>,
+		      <0x0 0xf3000000 0x0 0x100000>;
+		reg-names = "apb", "dbi", "config";
+		resets = <&cru SRST_PCIE3_POWER_UP>, <&cru SRST_P_PCIE3>;
+		reset-names = "pcie", "periph";
+		rockchip,pipe-grf = <&php_grf>;
+		status = "disabled";
+	};
+
+	pcie2x1l2: pcie@fe190000 {
+		compatible = "rockchip,rk3588-pcie", "snps,dw-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x40 0x4f>;
+		clocks = <&cru ACLK_PCIE_1L2_MSTR>, <&cru ACLK_PCIE_1L2_SLV>,
+			 <&cru ACLK_PCIE_1L2_DBI>, <&cru PCLK_PCIE_1L2>,
+			 <&cru CLK_PCIE_AUX4>, <&cru CLK_PCIE1L2_PIPE>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk",
+			      "aux", "pipe";
+		device_type = "pci";
+		linux,pci-domain = <4>;
+		num-ib-windows = <8>;
+		num-ob-windows = <8>;
+		num-viewport = <4>;
+		max-link-speed = <2>;
+		num-lanes = <1>;
+		phys = <&combphy0_ps PHY_TYPE_PCIE>;
+		phy-names = "pcie-phy";
+		ranges = <0x81000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x100000
+			  0x82000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0xe00000
+			  0xc3000000 0xa 0x00000000 0xa 0x00000000 0x0 0x40000000>;
+		reg = <0x0 0xfe190000 0x0 0x10000>,
+		      <0xa 0x41000000 0x0 0x400000>,
+		      <0x0 0xf4000000 0x0 0x100000>;
+		reg-names = "apb", "dbi", "config";
+		resets = <&cru SRST_PCIE4_POWER_UP>, <&cru SRST_P_PCIE4>;
+		reset-names = "pcie", "periph";
+		rockchip,pipe-grf = <&php_grf>;
+		status = "disabled";
+	};
+
+	sdmmc: mmc@fe2c0000 {
+		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x0 0xfe2c0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 203 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&scmi_clk SCMI_HCLK_SD>, <&scmi_clk SCMI_CCLK_SD>,
+			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <200000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
+		power-domains = <&power RK3588_PD_SDMMC>;
+		status = "disabled";
+	};
+
+	combphy0_ps: phy@fee00000 {
+		compatible = "rockchip,rk3588-naneng-combphy";
+		reg = <0x0 0xfee00000 0x0 0x100>;
+		#phy-cells = <1>;
+		clocks = <&cru CLK_REF_PIPE_PHY0>, <&cru PCLK_PCIE_COMBO_PIPE_PHY0>,
+			 <&cru PCLK_PHP_ROOT>;
+		clock-names = "refclk", "apbclk", "phpclk";
+		assigned-clocks = <&cru CLK_REF_PIPE_PHY0>;
+		assigned-clock-rates = <100000000>;
+		resets = <&cru SRST_P_PCIE2_PHY0>, <&cru SRST_REF_PIPE_PHY0>;
+		reset-names = "combphy-apb", "combphy";
+		rockchip,pipe-grf = <&php_grf>;
+		rockchip,pipe-phy-grf = <&pipe_phy0_grf>;
+		status = "disabled";
+	};
+
+	combphy2_psu: phy@fee20000 {
+		compatible = "rockchip,rk3588-naneng-combphy";
+		reg = <0x0 0xfee20000 0x0 0x100>;
+		#phy-cells = <1>;
+		clocks = <&cru CLK_REF_PIPE_PHY2>, <&cru PCLK_PCIE_COMBO_PIPE_PHY2>,
+			 <&cru PCLK_PHP_ROOT>;
+		clock-names = "refclk", "apbclk", "phpclk";
+		assigned-clocks = <&cru CLK_REF_PIPE_PHY2>;
+		assigned-clock-rates = <100000000>;
+		resets = <&cru SRST_P_PCIE2_PHY2>, <&cru SRST_REF_PIPE_PHY2>;
+		reset-names = "combphy-apb", "combphy";
+		rockchip,pipe-grf = <&php_grf>;
+		rockchip,pipe-phy-grf = <&pipe_phy2_grf>;
+		rockchip,pcie1ln-sel-bits = <0x100 1 1 0>;
+		status = "disabled";
+	};
+};
+
+&scmi_clk {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-rates;
+};
-- 
2.39.2



