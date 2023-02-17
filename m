Delivery-date: Fri, 17 Feb 2023 18:33:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4cC-00AI7x-3B
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:33:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4cA-0005Nn-4H
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:33:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M9AdkAhlMMhq4+ihnz3qDI5SwSuo7GRrrVd9ZXvSJk0=; b=kAdDgrpYKMU/c/0TT65YbdmUmA
	wkbNzWsvT6ew/nx8cWNqh+JKlLVAT5G17/inPIhh0cZAidAHAtlUtmw+j/sfC3W4+yuxzBUUTjSwh
	F9wm4LRLEIxK2s1svRCLzW/PvhgbLmSrmVtwoar+FnYp4MX6weprCM2bWfdM/RebzHNU48F/L5qcL
	opbCKLEryACzlYFGTpqz12ItVPnBzb4OgQbZ19AbnOxt6AJGqWM7Zg5KQPF07GRY2eohOUxGPJgTf
	MR5DTyeL6u7zXIHhUQV+Oe/jDQEikIOK4Rl68BpFwaDsq6fgzU10FpqynmQRJ0Vw4dvNclBypLXCC
	lld+fyuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4b9-00FGAG-8S; Fri, 17 Feb 2023 17:32:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zc-00FFH0-FO
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Zb-0004EZ-3P; Fri, 17 Feb 2023 18:31:03 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZZ-005dUB-9T; Fri, 17 Feb 2023 18:31:02 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZV-007ixY-Vh; Fri, 17 Feb 2023 18:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:41 +0100
Message-Id: <20230217173057.1839835-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_093104_555692_A16D9F28 
X-CRM114-Status: GOOD (  12.35  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 04/20] ARM: dts: use DT labels instead of paths where possible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A number of things, where we use paths have labels already in the
upstream DT, so switch to that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/armada-370-mirabox-bb.dts         | 2 +-
 arch/arm/dts/armada-370-rn104-bb.dts           | 2 +-
 arch/arm/dts/armada-385-turris-omnia-bb.dts    | 2 +-
 arch/arm/dts/armada-xp-db-bb.dts               | 2 +-
 arch/arm/dts/armada-xp-gp-bb.dts               | 2 +-
 arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts | 2 +-
 arch/arm/dts/armada-xp-rn2120-bb.dts           | 2 +-
 arch/arm/dts/at91sam9263ek.dts                 | 2 +-
 arch/arm/dts/fsl-ls1046a-rdb.dts               | 6 +++---
 arch/arm/dts/imx50.dtsi                        | 2 +-
 arch/arm/dts/imx51-genesi-efika-sb.dts         | 7 ++++---
 arch/arm/dts/socfpga_arria10_achilles.dts      | 8 ++++----
 arch/arm/dts/socfpga_arria10_mercury_aa1.dts   | 8 ++++----
 13 files changed, 24 insertions(+), 23 deletions(-)

diff --git a/arch/arm/dts/armada-370-mirabox-bb.dts b/arch/arm/dts/armada-370-mirabox-bb.dts
index 99263d485446..cdbce4af30fa 100644
--- a/arch/arm/dts/armada-370-mirabox-bb.dts
+++ b/arch/arm/dts/armada-370-mirabox-bb.dts
@@ -7,7 +7,7 @@
 
 / {
 	chosen {
-		stdout-path = "/soc/internal-regs/serial@12000";
+		stdout-path = &uart0;
 	};
 };
 
diff --git a/arch/arm/dts/armada-370-rn104-bb.dts b/arch/arm/dts/armada-370-rn104-bb.dts
index 32f961e5292e..d19b4c70ee70 100644
--- a/arch/arm/dts/armada-370-rn104-bb.dts
+++ b/arch/arm/dts/armada-370-rn104-bb.dts
@@ -6,6 +6,6 @@
 
 / {
 	chosen {
-		stdout-path = "/soc/internal-regs/serial@12000";
+		stdout-path = &uart0;
 	};
 };
diff --git a/arch/arm/dts/armada-385-turris-omnia-bb.dts b/arch/arm/dts/armada-385-turris-omnia-bb.dts
index 53bef01af758..5cfc57b3113b 100644
--- a/arch/arm/dts/armada-385-turris-omnia-bb.dts
+++ b/arch/arm/dts/armada-385-turris-omnia-bb.dts
@@ -2,6 +2,6 @@
 
 / {
 	chosen {
-		stdout-path = "/soc/internal-regs/serial@12000";
+		stdout-path = &uart0;
 	};
 };
diff --git a/arch/arm/dts/armada-xp-db-bb.dts b/arch/arm/dts/armada-xp-db-bb.dts
index 7201f4aaa12e..d1b9fd2b452a 100644
--- a/arch/arm/dts/armada-xp-db-bb.dts
+++ b/arch/arm/dts/armada-xp-db-bb.dts
@@ -7,6 +7,6 @@
 
 / {
 	chosen {
-		stdout-path = "/soc/internal-regs/serial@12000";
+		stdout-path = &uart0;
 	};
 };
diff --git a/arch/arm/dts/armada-xp-gp-bb.dts b/arch/arm/dts/armada-xp-gp-bb.dts
index 3836016425b9..9c115db78ee1 100644
--- a/arch/arm/dts/armada-xp-gp-bb.dts
+++ b/arch/arm/dts/armada-xp-gp-bb.dts
@@ -7,6 +7,6 @@
 
 / {
 	chosen {
-		stdout-path = "/soc/internal-regs/serial@12000";
+		stdout-path = &uart0;
 	};
 };
diff --git a/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts b/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
index e57cd8f0ce4b..38a206e47a3f 100644
--- a/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
+++ b/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
@@ -7,6 +7,6 @@
 
 / {
 	chosen {
-		stdout-path = "/soc/internal-regs/serial@12000";
+		stdout-path = &uart0;
 	};
 };
diff --git a/arch/arm/dts/armada-xp-rn2120-bb.dts b/arch/arm/dts/armada-xp-rn2120-bb.dts
index 969136b336fc..98458893ce57 100644
--- a/arch/arm/dts/armada-xp-rn2120-bb.dts
+++ b/arch/arm/dts/armada-xp-rn2120-bb.dts
@@ -6,6 +6,6 @@
 
 / {
 	chosen {
-		stdout-path = "/soc/internal-regs/serial@12000";
+		stdout-path = &uart0;
 	};
 };
diff --git a/arch/arm/dts/at91sam9263ek.dts b/arch/arm/dts/at91sam9263ek.dts
index 29a615f4823e..cce137e39422 100644
--- a/arch/arm/dts/at91sam9263ek.dts
+++ b/arch/arm/dts/at91sam9263ek.dts
@@ -41,7 +41,7 @@
 	};
 };
 
-&{/ahb/apb/mmc@fff84000} {
+&mmc1 {
 	pinctrl-0 = <
 		&pinctrl_board_mmc1
 		&pinctrl_mmc1_clk
diff --git a/arch/arm/dts/fsl-ls1046a-rdb.dts b/arch/arm/dts/fsl-ls1046a-rdb.dts
index d842387fa0da..10f716a974c0 100644
--- a/arch/arm/dts/fsl-ls1046a-rdb.dts
+++ b/arch/arm/dts/fsl-ls1046a-rdb.dts
@@ -120,14 +120,14 @@
 	dr_mode = "host";
 };
 
-&{/soc/pcie@3400000} {
+&pcie1 {
 	status = "okay";
 };
 
-&{/soc/pcie@3500000} {
+&pcie2 {
 	status = "okay";
 };
 
-&{/soc/pcie@3600000} {
+&pcie3 {
 	status = "okay";
 };
diff --git a/arch/arm/dts/imx50.dtsi b/arch/arm/dts/imx50.dtsi
index b5def2e4f67f..7ad8cea5a830 100644
--- a/arch/arm/dts/imx50.dtsi
+++ b/arch/arm/dts/imx50.dtsi
@@ -1,6 +1,6 @@
 #include <arm/imx50.dtsi>
 
-&{/soc/bus@50000000} { /* AIPS1 */
+&aips1 {
 	usbphy1: usbphy@1 {
 		compatible = "usb-nop-xceiv";
 		clocks = <&clks IMX5_CLK_USB_PHY2_GATE>;
diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
index 9afb670edffe..cf53da888043 100644
--- a/arch/arm/dts/imx51-genesi-efika-sb.dts
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -394,9 +394,10 @@
 
 &ipu_di1 {
 	interface-pix-fmt = "rgb565";
-	endpoint {
-		remote-endpoint = <&mtl017_in>;
-	};
+};
+
+&ipu_di1_disp2 {
+	remote-endpoint = <&mtl017_in>;
 };
 
 &esdhc1 {
diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index 6071dbfb49ee..4eafa8176ea4 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -108,19 +108,19 @@
 	};
 };
 
-&{/soc/clkmgr@ffd04000/clocks/osc1} {
+&osc1 {
 	clock-frequency = <25000000>;
 };
 
-&{/soc/clkmgr@ffd04000/clocks/cb_intosc_hs_div2_clk} {
+&cb_intosc_hs_div2_clk {
 	clock-frequency = <0>;
 };
 
-&{/soc/clkmgr@ffd04000/clocks/cb_intosc_ls_clk} {
+&cb_intosc_ls_clk {
 	clock-frequency = <60000000>;
 };
 
-&{/soc/clkmgr@ffd04000/clocks/f2s_free_clk} {
+&f2s_free_clk {
 	clock-frequency = <200000000>;
 };
 
diff --git a/arch/arm/dts/socfpga_arria10_mercury_aa1.dts b/arch/arm/dts/socfpga_arria10_mercury_aa1.dts
index 53ca8fd82c4b..7c6385329270 100644
--- a/arch/arm/dts/socfpga_arria10_mercury_aa1.dts
+++ b/arch/arm/dts/socfpga_arria10_mercury_aa1.dts
@@ -20,20 +20,20 @@
 };
 
 // provide reset-names until fixed in the upstream dts. Binding prescribes this property.
-&{/soc/mmc@ff808000} {
+&mmc {
 	reset-names = "reset";
 };
 
 // This clock is unused, but fixed-clocks need to have a clock-frequency set
-&{/soc/clkmgr@ffd04000/clocks/cb_intosc_hs_div2_clk} {
+&cb_intosc_hs_div2_clk {
 	clock-frequency = <0>;
 };
 
-&{/soc/clkmgr@ffd04000/clocks/cb_intosc_ls_clk} {
+&cb_intosc_ls_clk {
 	clock-frequency = <60000000>;
 };
 
-&{/soc/clkmgr@ffd04000/clocks/f2s_free_clk} {
+&f2s_free_clk {
 	clock-frequency = <200000000>;
 };
 
-- 
2.30.2



