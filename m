Delivery-date: Fri, 13 Dec 2024 15:07:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tM6Jy-007bzr-0S
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 15:07:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tM6Jx-0007Rk-L2
	for lore@pengutronix.de; Fri, 13 Dec 2024 15:07:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZBKAxxLC0MaG+YEu8FBy+CSPvocVpqZ5mdYhz0lkEaw=; b=dhMaA7VXKlI3UuG6wPNssb4LlV
	f3gNnkgQhs9auQ/SRax3Ac9w5jM85Z3GHjuKLDh1Sh/9M14J9aS0McZTxboTMg/LyQZBbl2vsDq5x
	YdFZZAH+8fEmcfCGyuBn0fdg0UHan1r41mKMO66dLSNanVV0BCCFNVrrA4gv97lFm6Cik9BFL65Fc
	vX+H0GYhswDCdl7kKI3OJqH86zoDoYU5W6ZkwjS2yoKYe8B+622JJlV3MWD4WW+dJgqLAGPKSn229
	FZgK+BmOL+OysuUkScBwLUGXWFvdj+hG1O0lsms+swUs7EsyCO0X2ZMIO3MCWXKoi12Kdx57FEEH6
	e9V5cXvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM6JX-00000003wvJ-0gPj;
	Fri, 13 Dec 2024 14:06:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM6JU-00000003wub-2rOS
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 14:06:41 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tM6JT-0007IE-Hc; Fri, 13 Dec 2024 15:06:39 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 13 Dec 2024 15:06:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-mx6-remove-mac-v1-1-e2b9fd8c2b06@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAGs/XGcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDI0Nj3dwKM92i1Nz8slTd3MRk3USLpJRk00QzU/M0cyWgpoKi1LTMCrC
 B0bG1tQDV7la6YAAAAA==
X-Change-ID: 20241213-mx6-remove-mac-a8bdc5a657f7
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=9912; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=idJwb/iF4Z8vAtwzMa9zGu5DV3XJTtx5HeRo+P8un94=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkiPsc9vM1y+7dgOrUPszVbHC7LOfOr9tTu5tkh9UqajG
 9e9wnXzO0pZGMQ4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABPxPMDwVyTOUlzAdv7fpO9Z
 Uj3nyvkXHPJQU9OPP7B68ukp8k3GaQz/LGzmTa5Z0/cgV++E9eL/ectyiv/eDHlcc+fkB4vnFx+
 LcAEA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_060640_878296_29796DBC 
X-CRM114-Status: UNSURE (   8.72  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: i.MX6: drop OCOTP MAC address provider
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that the MAC address can be read properly through the NVMEM
framework, there is no need for the custom Barebox MAC address provider
anymore. As <0x20 0x6> is defined in the nvmem-layout for imx6 to hold
the mac, the definitions in the legacy format can safely be dropped.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm/dts/imx6dl-advantech-rom-7421.dts   | 4 ----
 arch/arm/dts/imx6dl-hummingboard.dts         | 4 ----
 arch/arm/dts/imx6dl-hummingboard2.dts        | 4 ----
 arch/arm/dts/imx6dl-wandboard.dts            | 4 ----
 arch/arm/dts/imx6q-h100.dts                  | 4 ----
 arch/arm/dts/imx6q-hummingboard.dts          | 4 ----
 arch/arm/dts/imx6q-hummingboard2.dts         | 4 ----
 arch/arm/dts/imx6q-wandboard.dts             | 4 ----
 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi      | 4 ----
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi         | 4 ----
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi      | 4 ----
 arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi | 4 ----
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ----
 arch/arm/dts/imx6qdl-sabrelite.dtsi          | 4 ----
 arch/arm/dts/imx6qdl-sabresd.dtsi            | 4 ----
 arch/arm/dts/imx6qdl-tqma6x.dtsi             | 4 ----
 arch/arm/dts/imx6qdl-tx6x.dtsi               | 4 ----
 arch/arm/dts/imx6s-riotboard.dts             | 4 ----
 18 files changed, 72 deletions(-)

diff --git a/arch/arm/dts/imx6dl-advantech-rom-7421.dts b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
index 9a1f3a2bf8cf8e6eeed8ce378a4d0e7e251340d9..9bb17441ae6e58ae1d2009af90f4126ec9927c7b 100755
--- a/arch/arm/dts/imx6dl-advantech-rom-7421.dts
+++ b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
@@ -86,10 +86,6 @@ &i2c1 {
 	status = "okay";
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
index a0e8ac84c630752f765dc2cc957e3bbcd4c4eccd..d3de326273554a523c80c685bef60d27c79bca42 100644
--- a/arch/arm/dts/imx6dl-hummingboard.dts
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -19,10 +19,6 @@ environment {
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usdhc2 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx6dl-hummingboard2.dts b/arch/arm/dts/imx6dl-hummingboard2.dts
index c8ac4cb8eb0bff963ae78c9e3336870abb4b5f1c..2530a8da602c550b38aaee6c7d9692f77a54e3d9 100644
--- a/arch/arm/dts/imx6dl-hummingboard2.dts
+++ b/arch/arm/dts/imx6dl-hummingboard2.dts
@@ -51,10 +51,6 @@ / {
 	compatible = "solidrun,hummingboard2/dl", "fsl,imx6dl";
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usdhc3 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx6dl-wandboard.dts b/arch/arm/dts/imx6dl-wandboard.dts
index e8d4a9003261ecdd53c6a046fa30f339a45c4ee3..391d118869b88536b629d7521ffe0b896079085b 100644
--- a/arch/arm/dts/imx6dl-wandboard.dts
+++ b/arch/arm/dts/imx6dl-wandboard.dts
@@ -17,10 +17,6 @@ environment {
 	reg = <0x10000000 0x0>;
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usdhc3 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx6q-h100.dts b/arch/arm/dts/imx6q-h100.dts
index 7fda9f1222485f4dd6d77ccc2990f390ecf0b832..2cf8fb23d067357441658ff5b2ba4adc806db5a9 100644
--- a/arch/arm/dts/imx6q-h100.dts
+++ b/arch/arm/dts/imx6q-h100.dts
@@ -50,10 +50,6 @@ environment {
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usdhc2 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx6q-hummingboard.dts b/arch/arm/dts/imx6q-hummingboard.dts
index 0bb4a6b48e3bfad024890fbede0dba7088a2f45e..e4d8cab6d834cca23b34540f19a48d5487e8364e 100644
--- a/arch/arm/dts/imx6q-hummingboard.dts
+++ b/arch/arm/dts/imx6q-hummingboard.dts
@@ -19,10 +19,6 @@ environment {
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usdhc2 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx6q-hummingboard2.dts b/arch/arm/dts/imx6q-hummingboard2.dts
index 6ef7f935e30e3cd16f1b28473bf9a0b2371f7b75..5144395094ced99d5801f87c42e38ce4a9ae695c 100644
--- a/arch/arm/dts/imx6q-hummingboard2.dts
+++ b/arch/arm/dts/imx6q-hummingboard2.dts
@@ -67,10 +67,6 @@ &sata {
 	fsl,no-spread-spectrum;
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usdhc3 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx6q-wandboard.dts b/arch/arm/dts/imx6q-wandboard.dts
index 2cbaa8d8308173e82e0a44bd318cbf57f08f0338..77b1cf63cd577925efd7ee8b9bd6dff8e4e8b722 100644
--- a/arch/arm/dts/imx6q-wandboard.dts
+++ b/arch/arm/dts/imx6q-wandboard.dts
@@ -17,10 +17,6 @@ environment {
 	reg = <0x10000000 0x0>;
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usdhc3 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
index 3ce8d0a5347c56e007f8c0f17df093c52fc1249a..0b46f2a9f3b24d91a36f6d2556d6539348a13c1a 100644
--- a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
+++ b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
@@ -11,10 +11,6 @@ environment-emmc {
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usbh1 {
 	phy_type = "utmi";
 	dr_mode = "host";
diff --git a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
index 4411e89dedf6be0116944620eb27f9bd94beb70a..3b71a80a98faac4a748878c5f10122f24049ded4 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
@@ -41,10 +41,6 @@ env_nor: partition@e0000 {
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usbh1 {
 	phy_type = "utmi";
 	dr_mode = "host";
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 56b42cd1ef49e4b414ccad31eb04453613915756..4ba6d90de0d58a6416c26827bf1074456488748a 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -103,10 +103,6 @@ MX6QDL_PAD_SD4_DAT7__GPIO2_IO15	0x80000000
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &som_eeprom {
 	pagesize = <32>;
 };
diff --git a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
index 5d287258bb6c491a500ac7ba5137e3dd7c744b04..6cdf82e2cdbf94e7259b8f48499f357de9a6f121 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
@@ -144,10 +144,6 @@ MX6QDL_PAD_CSI0_DAT4__GPIO5_IO22	0x80000000 /* CD */
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &uart3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart3>;
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index c66a6a529dad5e40f40cb3456e6b2625cc5f0297..f244a82270f07bc2f6b506a2b59dc9cd15421154 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -107,10 +107,6 @@ partition@140000 {
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usdhc4 {
 	partitions {
 		compatible = "fixed-partitions";
diff --git a/arch/arm/dts/imx6qdl-sabrelite.dtsi b/arch/arm/dts/imx6qdl-sabrelite.dtsi
index 07e3879d85f1639fd523db09dada95e8d2750d5a..b01fbf9e1758284b1dc63f8f727a82f98c5ced55 100644
--- a/arch/arm/dts/imx6qdl-sabrelite.dtsi
+++ b/arch/arm/dts/imx6qdl-sabrelite.dtsi
@@ -40,10 +40,6 @@ env_nor: partition@e0000 {
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usbh1 {
 	phy_type = "utmi";
 	dr_mode = "host";
diff --git a/arch/arm/dts/imx6qdl-sabresd.dtsi b/arch/arm/dts/imx6qdl-sabresd.dtsi
index 4e3366f4feedd5b0fdea2b982f11aed85d6f3f42..b536a16db26b14d61780fc98172e96f6ccea3160 100644
--- a/arch/arm/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
@@ -12,10 +12,6 @@
 
 #include <arm/nxp/imx/imx6qdl-sabresd.dtsi>
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usbh1 {
 	phy_type = "utmi";
 	dr_mode = "host";
diff --git a/arch/arm/dts/imx6qdl-tqma6x.dtsi b/arch/arm/dts/imx6qdl-tqma6x.dtsi
index 3bcd7ebf29df8ba132c41a46b2fda8166bb1b8c4..4e9a9c02882cda63f10cdce6d878fd5e370543b4 100644
--- a/arch/arm/dts/imx6qdl-tqma6x.dtsi
+++ b/arch/arm/dts/imx6qdl-tqma6x.dtsi
@@ -91,10 +91,6 @@ MX6QDL_PAD_SD3_DAT7__SD3_DATA7		0x17059
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &i2c1 {
 	status = "okay";
 	clock-frequency = <100000>;
diff --git a/arch/arm/dts/imx6qdl-tx6x.dtsi b/arch/arm/dts/imx6qdl-tx6x.dtsi
index 139b735b6d4cfee75371311f237968e0b90f54e0..02dfc645c9140ed2f75f3413da46c4a5d1a2f16a 100644
--- a/arch/arm/dts/imx6qdl-tx6x.dtsi
+++ b/arch/arm/dts/imx6qdl-tx6x.dtsi
@@ -79,10 +79,6 @@ MX6QDL_PAD_NANDF_ALE__SD4_RESET		0x0b0b1
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usdhc4 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc4>;
diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index 5ddd30fb96d6a44bdc9295a5c955f5d3bbd609d6..57817c1197a71497abdf3c4b2024d12d6fe7a551 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -38,10 +38,6 @@ environment_usdhc4: partition@e0000 {
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &clks {
 	fsl,pmic-stby-poweroff;
 };

---
base-commit: a7ae043343c89e8b75904a41174b9b4cf2df35a0
change-id: 20241213-mx6-remove-mac-a8bdc5a657f7

Best regards,
-- 
Jonas Rebmann <jre@pengutronix.de>



