Delivery-date: Thu, 05 Jun 2025 15:15:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNARZ-0041gd-1m
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:15:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNARY-00032J-N2
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:15:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z+IfwZPwgpsxvaP3am38tBuslTU6kqU3XQA2dB/I7fg=; b=2aY3+Qstg1DLO+WF1FCXvRWND5
	rLL4Hb6P4qevNetW6xX7CjU8y+m7INeOnBHlQLV8rKXMmFtVKD+uWB20p7hoIeIlKb1/nX1D1PY9v
	TnvIMPIT6iMk+yFm8EYbUwZmP1QOFxyI5IssYTdMFFBREvpZJR8dclQYdq5WcFIFJo62XAybCqQVD
	+CvDp1meMd86W588L9cU6bKcK0sFIAGFKqmvvLORBs3JCBWY1P5sZbi3Q8CPbKb7415sKqM88aCQ+
	k2v55eWGdhs78uEaFBQVynpIKoXIekqHqC2J7TlE1FisK2SXS8L4JAplhDmmYK5yPKPTNddYDHpi1
	s27d+rJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNARC-0000000FaPA-0ms4;
	Thu, 05 Jun 2025 13:15:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFN-0000000FXxF-2wYv
	for barebox@bombadil.infradead.org;
	Thu, 05 Jun 2025 13:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Z+IfwZPwgpsxvaP3am38tBuslTU6kqU3XQA2dB/I7fg=; b=OQK+VtYAznSeEwI0DvxNWvEbE4
	JY8uk1iR2kyd9TN37yxmlRCyQ0jjoyobIsuh8cv+5QbyJ/NhJvKXw0CvH7gOB/Nz1XDtDISSWAMn1
	Nolh7O7ybxU7BbrGmkOOclQ2VVSe1LkHC2hcMtn2vPLbrwn3/r2w/aTXCr8Yi8uzSv35Aw9ga+mmt
	+xIuiTBLApwFDebKPfVJa68tzTc1YAfkZANrISbdDmKB3i+Td/cTJv9EfuFce16/dVtIMdb+FMV76
	miOXU4jLABHtoLWF7953ux/C8uCP8Iwx7HLfDhtkX++dDSGw5kZAjyl3EYZgrsnbA0gPat72vwkfA
	hrJm4AtQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFH-00000001AJs-28EK
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:03:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-00013a-9x; Thu, 05 Jun 2025 15:02:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-001xjw-0N;
	Thu, 05 Jun 2025 15:02:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1i;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-19-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=4210;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=AXNvJLDq6qP3hK4OSje3hWYIfwtVKXHpr0RuGy7Iwcw=;
 b=IJd9ny7fkOVLMf4K2j/88koralTrcM/tPeWfy/3IS/4NmfI+iO6AozwiQtCHNudUxzjFwF7Xb
 szFXuq1uMTBBlfPdgFvv9gQiwOzTzjFrLrEQ3jgHNbwJKoww0PyK5dl
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140259_620384_C52E9239 
X-CRM114-Status: GOOD (  10.32  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 19/33] ARM: dts: am62l: Add ethernet ports
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The AM62l device trees are based on the upstream submission which
currently lack the ethernet ports. Add them from the downstream Linux
repository.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-main.dtsi | 95 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 95 insertions(+)

diff --git a/arch/arm/dts/k3-am62l-main.dtsi b/arch/arm/dts/k3-am62l-main.dtsi
index d161df3215c35a2d3de67e8ca021b9a9a89edb80..95d387afd14e4f85df022673b8100830cbc6c410 100644
--- a/arch/arm/dts/k3-am62l-main.dtsi
+++ b/arch/arm/dts/k3-am62l-main.dtsi
@@ -670,4 +670,99 @@ scmi_shmem: sram@0 {
 			reg = <0x0 0x100>;
 		};
 	};
+
+	main_pktdma: dma-controller@485c0000 {
+		compatible = "ti,am62l-dmss-pktdma";
+		reg = <0x00 0x485c0000 0x00 0x4000>,
+			<0x00 0x48900000 0x00 0x80000>,
+			<0x00 0x47200000 0x00 0x100000>;
+		reg-names = "gcfg", "chanrt", "ringrt";
+		#address-cells = <2>;
+		#dma-cells = <2>;
+		#interrupt-cells = <1>;
+		interrupt-map = <0 0 0 &gic500 0 0 GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 1 &gic500 0 0 GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 2 &gic500 0 0 GIC_SPI 358 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 3 &gic500 0 0 GIC_SPI 359 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 4 &gic500 0 0 GIC_SPI 362 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 5 &gic500 0 0 GIC_SPI 363 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 6 &gic500 0 0 GIC_SPI 366 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 7 &gic500 0 0 GIC_SPI 367 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 8 &gic500 0 0 GIC_SPI 370 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 9 &gic500 0 0 GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 10 &gic500 0 0 GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 11 &gic500 0 0 GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 12 &gic500 0 0 GIC_SPI 378 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 13 &gic500 0 0 GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 64 &gic500 0 0 GIC_SPI 500 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 65 &gic500 0 0 GIC_SPI 501 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 66 &gic500 0 0 GIC_SPI 502 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 67 &gic500 0 0 GIC_SPI 503 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 68 &gic500 0 0 GIC_SPI 504 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 69 &gic500 0 0 GIC_SPI 505 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 70 &gic500 0 0 GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 71 &gic500 0 0 GIC_SPI 507 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 72 &gic500 0 0 GIC_SPI 508 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 73 &gic500 0 0 GIC_SPI 509 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 74 &gic500 0 0 GIC_SPI 510 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 75 &gic500 0 0 GIC_SPI 511 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 76 &gic500 0 0 GIC_SPI 512 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 77 &gic500 0 0 GIC_SPI 513 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 78 &gic500 0 0 GIC_SPI 514 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 79 &gic500 0 0 GIC_SPI 515 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 96 &gic500 0 0 GIC_SPI 484 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	cpsw3g: ethernet@8000000 {
+		compatible = "ti,am642-cpsw-nuss";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		reg = <0x00 0x08000000 0x00 0x200000>;
+		reg-names = "cpsw_nuss";
+		ranges = <0x00 0x00 0x00 0x08000000 0x00 0x200000>;
+		clocks = <&scmi_clk 9>;
+		clock-names = "fck";
+		power-domains = <&scmi_pds 3>;
+		dmas = <&main_pktdma 0xc600 15>,
+			   <&main_pktdma 0xc601 15>,
+			   <&main_pktdma 0xc602 15>,
+			   <&main_pktdma 0xc603 15>,
+			   <&main_pktdma 0xc604 15>,
+			   <&main_pktdma 0xc605 15>,
+			   <&main_pktdma 0xc606 15>,
+			   <&main_pktdma 0xc607 15>,
+			   <&main_pktdma 0x4600 15>;
+		dma-names = "tx0", "tx1", "tx2", "tx3", "tx4", "tx5", "tx6",
+					"tx7", "rx";
+
+		ethernet-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cpsw_port1: port@1 {
+				reg = <1>;
+				ti,mac-only;
+				label = "port1";
+				phys = <&phy_gmii_sel 1>;
+			};
+
+			cpsw_port2: port@2 {
+				reg = <2>;
+				ti,mac-only;
+				label = "port2";
+				phys = <&phy_gmii_sel 2>;
+			};
+		};
+
+		cpsw3g_mdio: mdio@f00 {
+			compatible = "ti,cpsw-mdio","ti,davinci_mdio";
+			reg = <0x00 0xf00 0x00 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&scmi_clk 13 0>;
+			clock-names = "fck";
+			bus_freq = <1000000>;
+			status = "disabled";
+		};
+	};
 };

-- 
2.39.5



