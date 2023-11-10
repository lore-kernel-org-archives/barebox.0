Delivery-date: Fri, 10 Nov 2023 13:59:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6c-005rQ8-2G
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6c-00035h-Jc
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=urlZLU0uBYSLw4dA6IDK5SMdWTfLP4eABaSHz0i6mec=; b=FARhaq0fmngfkH7731B/Y/i2Dh
	RHpTUPYbxxhBOXLs470SekaUrak/OmWwbsq9UYdbuvUCbVaegL5fE4PpRWdvLo9UJAdcK7eDgXlV0
	SBwSEsetPqKcoD4A0KFK4zvA55bbYSeIyA2xiJnV0bZy57hoVSDdn0oc1dMoPYEcI1A/CR3Eo/UKE
	1Q+5YSvwzNumLBo1XdAKZuWxmTxWN2iE8vueeFj4VcNP7D4logiaa/c79nPvRU08JtfnU28qt6U4d
	sBGu3VwnHCixuhrn2LaU8b/MGFrZWjk4dxqaz1D3OZ6UqFtb83krUnXEwXIqUejBkmQF+DgifCwAE
	IV5+t2zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5R-008ju9-2X;
	Fri, 10 Nov 2023 12:58:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5J-008joM-33
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-00026a-Ih; Fri, 10 Nov 2023 13:58:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-0081XP-UG; Fri, 10 Nov 2023 13:58:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008s0Y-2k;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:48 +0100
Message-Id: <20231110125800.1901232-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_045805_992616_8E66D449 
X-CRM114-Status: GOOD (  12.50  )
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
Subject: [PATCH 13/25] ARM: Add imx93.dtsi for USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Current upstream i.MX93 dtsi file doesn't have USB support. Add a
local dtsi file for that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx93.dtsi | 62 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 arch/arm/dts/imx93.dtsi

diff --git a/arch/arm/dts/imx93.dtsi b/arch/arm/dts/imx93.dtsi
new file mode 100644
index 0000000000..2d8d4b2b58
--- /dev/null
+++ b/arch/arm/dts/imx93.dtsi
@@ -0,0 +1,62 @@
+/{
+	soc@0 {
+		usbphynop1: usbphynop1 {
+			compatible = "usb-nop-xceiv";
+			clocks = <&clk IMX93_CLK_USB_PHY_BURUNIN>;
+			clock-names = "main_clk";
+		};
+
+		usbotg1: usb@4c100000 {
+			compatible = "fsl,imx8mm-usb", "fsl,imx7d-usb";
+			reg = <0x4c100000 0x200>;
+			interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX93_CLK_USB_CONTROLLER_GATE>,
+				 <&clk IMX93_CLK_HSIO_32K_GATE>;
+			clock-names = "usb_ctrl_root_clk", "usb_wakeup_clk";
+			assigned-clocks = <&clk IMX93_CLK_HSIO>;
+			assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1_DIV2>;
+			assigned-clock-rates = <133000000>;
+			fsl,usbphy = <&usbphynop1>;
+			fsl,usbmisc = <&usbmisc1 0>;
+			status = "disabled";
+		};
+
+		usbmisc1: usbmisc@4c100200 {
+			compatible = "fsl,imx8mm-usbmisc", "fsl,imx7d-usbmisc";
+			#index-cells = <1>;
+			reg = <0x4c100200 0x200>;
+		};
+
+		usbphynop2: usbphynop2 {
+			compatible = "usb-nop-xceiv";
+			clocks = <&clk IMX93_CLK_USB_PHY_BURUNIN>;
+			clock-names = "main_clk";
+		};
+
+		usbotg2: usb@4c200000 {
+			compatible = "fsl,imx8mm-usb", "fsl,imx7d-usb";
+			reg = <0x4c200000 0x200>;
+			interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX93_CLK_USB_CONTROLLER_GATE>,
+				 <&clk IMX93_CLK_HSIO_32K_GATE>;
+			clock-names = "usb_ctrl_root_clk", "usb_wakeup_clk";
+			assigned-clocks = <&clk IMX93_CLK_HSIO>;
+			assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1_DIV2>;
+			assigned-clock-rates = <133000000>;
+			fsl,usbphy = <&usbphynop2>;
+			fsl,usbmisc = <&usbmisc2 0>;
+			status = "disabled";
+		};
+
+		usbmisc2: usbmisc@4c200200 {
+			compatible = "fsl,imx8mm-usbmisc", "fsl,imx7d-usbmisc";
+			#index-cells = <1>;
+			reg = <0x4c200200 0x200>;
+		};
+
+		ddrc: memory-controller@4e300000 {
+			compatible = "fsl,imx93-ddrc";
+			reg = <0x4e300000 0x400000>;
+		};
+	};
+};
-- 
2.39.2



