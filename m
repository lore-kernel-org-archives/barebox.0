Delivery-date: Thu, 23 Apr 2026 08:58:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFo1V-00FOxR-1u
	for lore@lore.pengutronix.de;
	Thu, 23 Apr 2026 08:58:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFo1V-00043a-01
	for lore@pengutronix.de; Thu, 23 Apr 2026 08:58:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xzqSQck2v9tWqXadXDvONPXGASyY2YnG+v72/eZrRRs=; b=c+uzflOwnA0IPWDRpxCnpHfsXh
	pp3TnwGI9AiuWhpc8G7vmL7j/b+zKF2wjxoXeXFsowjkkkV/wmBph0Fc0lJ/hLBesACF6BTZsbuTf
	WWOLt1FvWvAHKX59vViO38hl2MIPwadEkL66FUTGIe5OYKbco+FSEpZJxGxqCVPBKCy7uaz4FsnG/
	Tco61/phswwMkJ11qIwGujN/ZrgV15IItVzSEr6tmCod83MXmcaqEZsr87HC8iwbMLBD9CVFWXLcH
	8675YjTTKSONBiriuR5Pvw4lV6AFGcKntfznznP4Bc67HdUzAkSwtej4iOkKnHNcKUXGp7rvNmL3r
	TOair7kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFo0x-0000000B84g-0Pz4;
	Thu, 23 Apr 2026 06:58:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFo0s-0000000B83O-1TRy
	for barebox@lists.infradead.org;
	Thu, 23 Apr 2026 06:58:17 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wFo0q-0003qQ-Ae; Thu, 23 Apr 2026 08:58:12 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 23 Apr 2026 08:58:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260423-socfpga-agilex5-dwmac-binding-v1-2-19b4b0cddbee@pengutronix.de>
References: <20260423-socfpga-agilex5-dwmac-binding-v1-0-19b4b0cddbee@pengutronix.de>
In-Reply-To: <20260423-socfpga-agilex5-dwmac-binding-v1-0-19b4b0cddbee@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_235816_117399_4D70C980 
X-CRM114-Status: UNSURE (   8.96  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: socfpga: remove obsolete gmac device tree nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The nodes for the gmacs are already defined in the imported Linux device
tree of the Agilex 5. The device tree nodes defined by barebox are no
longer in use.

Remove them.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/dts/socfpga_agilex5.dtsi           | 51 -----------------------------
 arch/arm/dts/socfpga_agilex5_axe5_eagle.dts |  1 -
 2 files changed, 52 deletions(-)

diff --git a/arch/arm/dts/socfpga_agilex5.dtsi b/arch/arm/dts/socfpga_agilex5.dtsi
deleted file mode 100644
index 96039a1f36c5..000000000000
--- a/arch/arm/dts/socfpga_agilex5.dtsi
+++ /dev/null
@@ -1,51 +0,0 @@
-// SPDX-License-Identifier:     GPL-2.0
-/*
- * Copyright (C) 2019-2023 Intel Corporation <www.intel.com>
- */
-
-&soc {
-	gmac0: ethernet@10810000 {
-		compatible = "intel,socfpga-dwxgmac", "snps,dwxgmac-2.10", "snps,dwxgmac";
-		reg = <0x10810000 0x3500>;
-		interrupts = <0 190 4>;
-		interrupt-names = "macirq";
-		resets = <&rst EMAC0_RESET>, <&rst EMAC0_OCP_RESET>;
-		reset-names = "stmmaceth", "stmmaceth-ocp";
-		tx-fifo-depth = <32768>;
-		rx-fifo-depth = <16384>;
-		altr,sysmgr-syscon = <&sysmgr 0x44 0>;
-		clocks = <&clkmgr AGILEX5_EMAC0_CLK>;
-		clock-names = "stmmaceth";
-		status = "disabled";
-	};
-
-	gmac1: ethernet@10820000 {
-		compatible = "intel,socfpga-dwxgmac", "snps,dwxgmac-2.10", "snps,dwxgmac";
-		reg = <0x10820000 0x3500>;
-		interrupts = <0 207 4>;
-		interrupt-names = "macirq";
-		resets = <&rst EMAC1_RESET>, <&rst EMAC1_OCP_RESET>;
-		reset-names = "stmmaceth", "stmmaceth-ocp";
-		tx-fifo-depth = <32768>;
-		rx-fifo-depth = <16384>;
-		altr,sysmgr-syscon = <&sysmgr 0x48 0>;
-		clocks = <&clkmgr AGILEX5_EMAC1_CLK>;
-		clock-names = "stmmaceth";
-		status = "disabled";
-	};
-
-	gmac2: ethernet@10830000 {
-		compatible = "intel,socfpga-dwxgmac", "snps,dwxgmac-2.10", "snps,dwxgmac";
-		reg = <0x10830000 0x3500>;
-		interrupts = <0 224 4>;
-		interrupt-names = "macirq";
-		resets = <&rst EMAC2_RESET>, <&rst EMAC2_OCP_RESET>;
-		reset-names = "stmmaceth", "stmmaceth-ocp";
-		tx-fifo-depth = <32768>;
-		rx-fifo-depth = <16384>;
-		altr,sysmgr-syscon = <&sysmgr 0x4c 0>;
-		clocks = <&clkmgr AGILEX5_EMAC2_CLK>;
-		clock-names = "stmmaceth";
-		status = "disabled";
-	};
-};
diff --git a/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts b/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
index f67b974f2adc..16491323da6c 100644
--- a/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
+++ b/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
@@ -4,7 +4,6 @@
  */
 
 #include <arm64/intel/socfpga_agilex5.dtsi>
-#include "socfpga_agilex5.dtsi"
 
 / {
 	model = "SoCFPGA Agilex5 AXE5-Eagle";

-- 
2.47.3



