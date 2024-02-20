Delivery-date: Tue, 20 Feb 2024 08:14:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcKKo-00FhoF-0r
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 08:14:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcKKn-0004Ua-Jt
	for lore@pengutronix.de; Tue, 20 Feb 2024 08:14:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=X10+zsiX9JjZRAtbsv4yEKI/vjdCpOhZtf0lg4EBuq0=; b=azF8Couah0DRE3vAXA6Oe6HHez
	Kfowmh6dDUvjLd22te9Z2UbVZbzE3Z5MPPikmkMMW7cgOzSR2ZAa1UjfNJIgv9sycdxebBXNsoH1m
	6bj9Kqnud1tWPuZoTKYciW7YPZR3R9U8GR6CYmLRnhYJIr7hDoCNnHo+AEY6BWo6MgBoyz+w6WKBI
	geg7S87BJFnaAdciOqp90Il9Fr3ggkZ9lL7rHlQWVIqIZ7SKJlEXOUSXdAXVOcuMS4ZaSq4849mHa
	lr8mkzfmaHQixafgVY6mRufS7CP5ffhdcGQ66f0iOlYvDhH1fN+s4DFQvPjVDrlLv5qrB6RgYyI9P
	uiNbrVJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKK3-0000000DTdn-1dWY;
	Tue, 20 Feb 2024 07:13:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKJy-0000000DTbc-43AZ
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 07:13:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKJw-0004NJ-DI; Tue, 20 Feb 2024 08:13:40 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKJu-001nal-4k; Tue, 20 Feb 2024 08:13:38 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKJu-001PuV-08;
	Tue, 20 Feb 2024 08:13:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 20 Feb 2024 08:13:37 +0100
Message-Id: <20240220071337.337920-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_231343_022904_A441364E 
X-CRM114-Status: GOOD (  11.60  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX: add barebox,bootsource-mmc aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Several boards overwrite the standard mmc aliases to give them a board
specific numbering. This breaks our assumption that the bootsource
instance number matches the mmc alias numbering. barebox supports
barebox,bootsource-mmc aliases to provide a mapping between the
bootsource and the device nodes that provides them. Add these aliases
for the newer i.MX SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx51.dtsi   | 4 ++++
 arch/arm/dts/imx53.dtsi   | 4 ++++
 arch/arm/dts/imx6qdl.dtsi | 4 ++++
 arch/arm/dts/imx8mm.dtsi  | 3 +++
 arch/arm/dts/imx8mn.dtsi  | 3 +++
 arch/arm/dts/imx8mp.dtsi  | 3 +++
 arch/arm/dts/imx8mq.dtsi  | 5 +++++
 arch/arm/dts/imx93.dtsi   | 6 ++++++
 8 files changed, 32 insertions(+)

diff --git a/arch/arm/dts/imx51.dtsi b/arch/arm/dts/imx51.dtsi
index 828a6c2e1b..2be6b955e2 100644
--- a/arch/arm/dts/imx51.dtsi
+++ b/arch/arm/dts/imx51.dtsi
@@ -2,5 +2,9 @@ /{
 	aliases {
 		pwm0 = &pwm1;
 		pwm1 = &pwm2;
+		barebox,bootsource-mmc0 = &esdhc1;
+		barebox,bootsource-mmc1 = &esdhc2;
+		barebox,bootsource-mmc2 = &esdhc3;
+		barebox,bootsource-mmc3 = &esdhc4;
 	};
 };
diff --git a/arch/arm/dts/imx53.dtsi b/arch/arm/dts/imx53.dtsi
index 96fdd73ed0..5be1d7a53f 100644
--- a/arch/arm/dts/imx53.dtsi
+++ b/arch/arm/dts/imx53.dtsi
@@ -3,5 +3,9 @@ aliases {
 		pwm0 = &pwm1;
 		pwm1 = &pwm2;
 		ipu0 = &ipu;
+		barebox,bootsource-mmc0 = &esdhc1;
+		barebox,bootsource-mmc1 = &esdhc2;
+		barebox,bootsource-mmc2 = &esdhc3;
+		barebox,bootsource-mmc3 = &esdhc4;
 	};
 };
diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
index c3e02d2117..5afb772a84 100644
--- a/arch/arm/dts/imx6qdl.dtsi
+++ b/arch/arm/dts/imx6qdl.dtsi
@@ -7,6 +7,10 @@ aliases {
 		pwm3 = &pwm4;
 		ipu0 = &ipu1;
 		gpr.reboot_mode = &reboot_mode_gpr;
+		barebox,bootsource-mmc0 = &usdhc1;
+		barebox,bootsource-mmc1 = &usdhc2;
+		barebox,bootsource-mmc2 = &usdhc3;
+		barebox,bootsource-mmc3 = &usdhc4;
 	};
 };
 
diff --git a/arch/arm/dts/imx8mm.dtsi b/arch/arm/dts/imx8mm.dtsi
index 982174375e..d3d0129421 100644
--- a/arch/arm/dts/imx8mm.dtsi
+++ b/arch/arm/dts/imx8mm.dtsi
@@ -9,6 +9,9 @@ aliases {
 		pwm1 = &pwm2;
 		pwm2 = &pwm3;
 		pwm3 = &pwm4;
+		barebox,bootsource-mmc0 = &usdhc1;
+		barebox,bootsource-mmc1 = &usdhc2;
+		barebox,bootsource-mmc2 = &usdhc3;
 	};
 };
 
diff --git a/arch/arm/dts/imx8mn.dtsi b/arch/arm/dts/imx8mn.dtsi
index 098bf0a367..6f3f943548 100644
--- a/arch/arm/dts/imx8mn.dtsi
+++ b/arch/arm/dts/imx8mn.dtsi
@@ -8,6 +8,9 @@ aliases {
 		pwm1 = &pwm2;
 		pwm2 = &pwm3;
 		pwm3 = &pwm4;
+		barebox,bootsource-mmc0 = &usdhc1;
+		barebox,bootsource-mmc1 = &usdhc2;
+		barebox,bootsource-mmc2 = &usdhc3;
 	};
 };
 
diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index 3eb3c7a5df..9d87ddaea8 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -14,6 +14,9 @@ aliases {
 		pwm1 = &pwm2;
 		pwm2 = &pwm3;
 		pwm3 = &pwm4;
+		barebox,bootsource-mmc0 = &usdhc1;
+		barebox,bootsource-mmc1 = &usdhc2;
+		barebox,bootsource-mmc2 = &usdhc3;
 	};
 };
 
diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
index e56cdfe130..d90afbe628 100644
--- a/arch/arm/dts/imx8mq.dtsi
+++ b/arch/arm/dts/imx8mq.dtsi
@@ -5,6 +5,11 @@
  */
 
 / {
+	aliases {
+		barebox,bootsource-mmc0 = &usdhc1;
+		barebox,bootsource-mmc1 = &usdhc2;
+	};
+
 	remoteproc_cm4: remoteproc-cm4 {
 		compatible = "fsl,imx8mq-cm4";
 		clocks = <&clk IMX8MQ_CLK_M4_CORE>;
diff --git a/arch/arm/dts/imx93.dtsi b/arch/arm/dts/imx93.dtsi
index 7abaabcbd7..dd24c732d3 100644
--- a/arch/arm/dts/imx93.dtsi
+++ b/arch/arm/dts/imx93.dtsi
@@ -1,4 +1,10 @@
 /{
+	aliases {
+		barebox,bootsource-mmc0 = &usdhc1;
+		barebox,bootsource-mmc1 = &usdhc2;
+		barebox,bootsource-mmc2 = &usdhc3;
+	};
+
 	soc@0 {
 		usbphynop1: usbphynop1 {
 			compatible = "usb-nop-xceiv";
-- 
2.39.2



