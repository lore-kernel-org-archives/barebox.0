Delivery-date: Fri, 03 May 2024 12:37:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qIc-00H8Bb-0Z
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:37:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qIb-0002Fh-B0
	for lore@pengutronix.de; Fri, 03 May 2024 12:37:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PEkQwjuXDwxNlp0g8oY1EHoT9yOobdoXVBpvzwMUHHs=; b=TnLtRxAP9TIpzy51wSol72ld75
	x1hUSL4FYrLmDSKjV/WM65hLII84TGHp2gq7mgMN3VOjxmiaHDhPYxjLWETxC8JOFUmwoBmPIcLvQ
	gzHp3neZo3FyfTwWCz7ftzUxgOGyL1PFkgSXivLbrezFOuh2sIjVGpps81WEqC6LWjL85whYQwwRd
	dOFaJDCRNu5jnh/19DcyLGuAtuQaH9Py0Wm7+2Ghx5UsCC+k5HEUxUmYw8K+XaYBZgQ9GlpNRXHLq
	NhCoQC/RfpZcMULwHygsZPGDwFEIyCordJovc1+SIBOGFPSC9kj2Ycnw0E+a3jMGG79ECSYpoJQuy
	1I/mcuYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qIB-0000000G4vP-1ctM;
	Fri, 03 May 2024 10:37:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qI5-0000000G4s7-0f8k
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:37:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-0001wX-TT; Fri, 03 May 2024 12:37:19 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-00FgXq-Gi; Fri, 03 May 2024 12:37:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-005kc5-1N;
	Fri, 03 May 2024 12:37:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 May 2024 12:37:17 +0200
Message-Id: <20240503103717.1370636-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503103717.1370636-1-a.fatoum@pengutronix.de>
References: <20240503103717.1370636-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_033721_257104_6578F598 
X-CRM114-Status: GOOD (  13.52  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/5] ARM: dts: i.MX8MP: Add optional nominal drive mode DTSI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike the i.MX8MM and i.MX8MN SoCs added earlier, the device tree for
the i.MX8MP configures some clocks at frequencies that are only
validated for overdrive mode, i.e. when VDD_SOC is 950 mV.

Boards may want to run their SoC at the lower voltage of 850 mV though
to reduce heat generation and power usage. For this to work, clock rates
need to adhere to the limits of the nominal drive mode.

Add an optional DTSI file which can be included by various boards to run
in this mode.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - use PLL3 as GPU parent instead of GPU PLL (Lucas)
---
 arch/arm/dts/imx8mp-nominal.dtsi | 49 ++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 arch/arm/dts/imx8mp-nominal.dtsi

diff --git a/arch/arm/dts/imx8mp-nominal.dtsi b/arch/arm/dts/imx8mp-nominal.dtsi
new file mode 100644
index 000000000000..d675d1e5486e
--- /dev/null
+++ b/arch/arm/dts/imx8mp-nominal.dtsi
@@ -0,0 +1,49 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+&clk {
+	assigned-clocks = <&clk IMX8MP_CLK_A53_SRC>,
+			  <&clk IMX8MP_CLK_A53_CORE>,
+			  <&clk IMX8MP_SYS_PLL3>,
+			  <&clk IMX8MP_CLK_NOC>,
+			  <&clk IMX8MP_CLK_NOC_IO>,
+			  <&clk IMX8MP_CLK_GIC>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
+				 <&clk IMX8MP_ARM_PLL_OUT>,
+				 <0>,
+				 <&clk IMX8MP_SYS_PLL1_800M>,
+				 <&clk IMX8MP_SYS_PLL3_OUT>,
+				 <&clk IMX8MP_SYS_PLL1_800M>;
+	assigned-clock-rates = <0>, <0>,
+			       <600000000>,
+			       <800000000>,
+			       <600000000>,
+			       <400000000>;
+};
+
+&pgc_hsiomix {
+	assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>;
+	assigned-clock-rates = <400000000>;
+};
+
+&pgc_gpumix {
+	assigned-clocks = <&clk IMX8MP_CLK_GPU_AXI>,
+			  <&clk IMX8MP_CLK_GPU_AHB>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL3_OUT>,
+				 <&clk IMX8MP_SYS_PLL3_OUT>;
+	assigned-clock-rates = <600000000>, <300000000>;
+};
+
+&media_blk_ctrl {
+	assigned-clocks = <&clk IMX8MP_CLK_MEDIA_AXI>,
+			  <&clk IMX8MP_CLK_MEDIA_APB>,
+			  <&clk IMX8MP_CLK_MEDIA_DISP1_PIX>,
+			  <&clk IMX8MP_CLK_MEDIA_DISP2_PIX>,
+			  <&clk IMX8MP_VIDEO_PLL1>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
+				 <&clk IMX8MP_SYS_PLL1_800M>,
+				 <&clk IMX8MP_VIDEO_PLL1_OUT>,
+				 <&clk IMX8MP_VIDEO_PLL1_OUT>;
+	assigned-clock-rates = <400000000>, <200000000>,
+			       <0>, <0>, <1039500000>;
+};
-- 
2.39.2



