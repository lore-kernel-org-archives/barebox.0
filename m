Delivery-date: Tue, 13 Jan 2026 09:43:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfa0A-000p6J-0x
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 09:43:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfa08-0003oy-Rx
	for lore@pengutronix.de; Tue, 13 Jan 2026 09:43:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1LWjIt4d7huEJQInvP4GZXusb5KaSEPA/MktJMZojC0=; b=cQTai4hM/5oEiomNLLGfdNEKPP
	QTwuKPaxYe83dG4D6xPQtiIv/f7gBZ3eUBHJN1+m6jBtovpAobC9W5eADlX26TZibK89sRHh/aQLS
	z7BhKq+f84rLdsrLVXSObPoVpgH1koMzU27GmWjREhzT9NxxR33m/52MaFD4KRqmbBK62ErAm1JMB
	lz+Fr8y26o+yuHbPC91xAJs0O2HN9WeNDEApEt4hGOoliTF5E03a9lf1UXxKUj2Ga5Q+7aaZ6YMx3
	vz3F/pdOuWe9E7HLt4gnNBKtWBIB+NFUrAREGzZk/n0WCureFbne+G7lGc/D3yBnN4B8IBrLRsg+J
	VIv6UFug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZzU-00000006llJ-3XUl;
	Tue, 13 Jan 2026 08:43:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZzR-00000006lk8-3V89
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 08:43:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfZzO-0003dY-A3; Tue, 13 Jan 2026 09:42:58 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfZzO-000OPs-2X;
	Tue, 13 Jan 2026 09:42:58 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfZzN-00000000Omz-4Bdd;
	Tue, 13 Jan 2026 09:42:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Jan 2026 09:42:56 +0100
Message-ID: <20260113084256.94750-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_004302_023255_6BEAC64D 
X-CRM114-Status: UNSURE (   9.71  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: remove barebox,provide-mac-address property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Remove barebox,provide-mac-address property from board files for which
the SoC dtsi already provides nvmem cells in the fec node. These are
all i.MX6qdl, i.MX6UL(L) and i.MX8M[MNPQ] boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6q-marsboard.dts            | 4 ----
 arch/arm/dts/imx6qdl-nitrogen6_max.dtsi     | 4 ----
 arch/arm/dts/imx6qdl-skov-imx6.dtsi         | 4 ----
 arch/arm/dts/imx6ul-phytec-phycore-som.dtsi | 4 ----
 arch/arm/dts/imx6ul-tqma6ul-common.dtsi     | 5 -----
 arch/arm/dts/imx6ul-webasto-ccbv2.dts       | 6 ------
 arch/arm/dts/imx6ul-webasto-marvel.dts      | 4 ----
 arch/arm/dts/imx6ull-14x14-evk.dts          | 4 ----
 arch/arm/dts/imx8mm-evk.dtsi                | 4 ----
 arch/arm/dts/imx8mm-innocomm-wb15-evk.dts   | 4 ----
 arch/arm/dts/imx8mm-phyboard-polis-rdk.dts  | 4 ----
 arch/arm/dts/imx8mn-evk.dtsi                | 4 ----
 arch/arm/dts/imx8mq-evk.dts                 | 4 ----
 arch/arm/dts/imx8mq-mnt-reform2.dts         | 4 ----
 arch/arm/dts/imx8mq-phytec-phycore-som.dts  | 4 ----
 arch/arm/dts/imx8mq-zii-ultra.dtsi          | 4 ----
 16 files changed, 67 deletions(-)

diff --git a/arch/arm/dts/imx6q-marsboard.dts b/arch/arm/dts/imx6q-marsboard.dts
index 440d2bae2b..2dc53e0397 100644
--- a/arch/arm/dts/imx6q-marsboard.dts
+++ b/arch/arm/dts/imx6q-marsboard.dts
@@ -44,7 +44,3 @@ &fec {
 &rgmii_phy {
 	qca,clk-out-frequency = <125000000>;
 };
-
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
diff --git a/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi b/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
index d838549dd9..6e41ccd3ed 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
@@ -65,7 +65,3 @@ env_nor: partition@e0000 {
 		reg = <0xe0000 0x20000>;
 	};
 };
-
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
diff --git a/arch/arm/dts/imx6qdl-skov-imx6.dtsi b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
index 1840c69be5..83c0242f8f 100644
--- a/arch/arm/dts/imx6qdl-skov-imx6.dtsi
+++ b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
@@ -377,7 +377,3 @@ partition@0 {
 		};
 	};
 };
-
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
index 4aea8c1d38..72f0eb176e 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
@@ -240,7 +240,3 @@ MX6UL_PAD_NAND_DATA07__USDHC2_DATA7 	0x17059
 		};
 	};
 };
-
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x620 &fec2 0x632>;
-};
diff --git a/arch/arm/dts/imx6ul-tqma6ul-common.dtsi b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
index 3e5350450d..9db77b3639 100644
--- a/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
+++ b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
@@ -53,8 +53,3 @@ environment_sd: partition@e0000 {
 		};
 	};
 };
-
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x620 &fec2 0x632>;
-};
-
diff --git a/arch/arm/dts/imx6ul-webasto-ccbv2.dts b/arch/arm/dts/imx6ul-webasto-ccbv2.dts
index 6b67530169..cf118151ce 100644
--- a/arch/arm/dts/imx6ul-webasto-ccbv2.dts
+++ b/arch/arm/dts/imx6ul-webasto-ccbv2.dts
@@ -108,9 +108,3 @@ backend_state_emmc: partition@200000 {
 		};
 	};
 };
-
-
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x620>;
-};
-
diff --git a/arch/arm/dts/imx6ul-webasto-marvel.dts b/arch/arm/dts/imx6ul-webasto-marvel.dts
index 58117de62c..97670e94d6 100644
--- a/arch/arm/dts/imx6ul-webasto-marvel.dts
+++ b/arch/arm/dts/imx6ul-webasto-marvel.dts
@@ -460,10 +460,6 @@ &gpio1 {
 		     "", "STATUS_CM_UC_DI", "RST_EMERG_UC_DO", "", "";
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x620>;
-};
-
 &reg_arm {
 	vin-supply = <&vdd_soc_in>;
 	regulator-allow-bypass;
diff --git a/arch/arm/dts/imx6ull-14x14-evk.dts b/arch/arm/dts/imx6ull-14x14-evk.dts
index 013ac78037..a8be1470a6 100644
--- a/arch/arm/dts/imx6ull-14x14-evk.dts
+++ b/arch/arm/dts/imx6ull-14x14-evk.dts
@@ -25,7 +25,3 @@ environment_usdhc2: partition@e0000 {
 		reg = <0xe0000 0x20000>;
 	};
 };
-
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x620 &fec2 0x632>;
-};
diff --git a/arch/arm/dts/imx8mm-evk.dtsi b/arch/arm/dts/imx8mm-evk.dtsi
index a657faa6bc..b7509726d3 100644
--- a/arch/arm/dts/imx8mm-evk.dtsi
+++ b/arch/arm/dts/imx8mm-evk.dtsi
@@ -71,7 +71,3 @@ env_sd3: partition@e0000 {
 		reg = <0xe0000 0x20000>;
 	};
 };
-
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x640>;
-};
diff --git a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
index 30341c8579..0009f69a91 100644
--- a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
+++ b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
@@ -21,10 +21,6 @@ environment-sd {
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x640>;
-};
-
 &usdhc1 {
 	partitions {
 		compatible = "barebox,fixed-partitions";
diff --git a/arch/arm/dts/imx8mm-phyboard-polis-rdk.dts b/arch/arm/dts/imx8mm-phyboard-polis-rdk.dts
index 3e23427c1a..9b7367a429 100644
--- a/arch/arm/dts/imx8mm-phyboard-polis-rdk.dts
+++ b/arch/arm/dts/imx8mm-phyboard-polis-rdk.dts
@@ -92,10 +92,6 @@ last_chosen@10 {
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x640>;
-};
-
 &usdhc2 {
 	partitions {
 		compatible = "barebox,fixed-partitions";
diff --git a/arch/arm/dts/imx8mn-evk.dtsi b/arch/arm/dts/imx8mn-evk.dtsi
index c23075216e..2a004a8bc8 100644
--- a/arch/arm/dts/imx8mn-evk.dtsi
+++ b/arch/arm/dts/imx8mn-evk.dtsi
@@ -70,10 +70,6 @@ env_sd3: partition@e0000 {
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x640>;
-};
-
 &iomuxc {
 	pinctrl_flexspi0: flexspi0grp {
 		fsl,pins = <
diff --git a/arch/arm/dts/imx8mq-evk.dts b/arch/arm/dts/imx8mq-evk.dts
index f7e8292678..b58a112360 100644
--- a/arch/arm/dts/imx8mq-evk.dts
+++ b/arch/arm/dts/imx8mq-evk.dts
@@ -56,7 +56,3 @@ env_sd2: partition@e0000 {
 		reg = <0xe0000 0x20000>;
 	};
 };
-
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x640>;
-};
diff --git a/arch/arm/dts/imx8mq-mnt-reform2.dts b/arch/arm/dts/imx8mq-mnt-reform2.dts
index 547edaf14d..af19cd9c57 100644
--- a/arch/arm/dts/imx8mq-mnt-reform2.dts
+++ b/arch/arm/dts/imx8mq-mnt-reform2.dts
@@ -28,10 +28,6 @@ environment-sd {
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x640>;
-};
-
 &usdhc1 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx8mq-phytec-phycore-som.dts b/arch/arm/dts/imx8mq-phytec-phycore-som.dts
index c28fab0f04..b1dc883381 100644
--- a/arch/arm/dts/imx8mq-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx8mq-phytec-phycore-som.dts
@@ -148,10 +148,6 @@ vgen6_reg: vgen6 {
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x640>;
-};
-
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index 9993ee969e..1f1ef2fce6 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -42,10 +42,6 @@ &fec1 {
 	nvmem-cell-names = "mac-address";
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x640>;
-};
-
 &pcie1 {
 	host@0 {
 		reg = <0 0 0 0 0>;
-- 
2.47.3



