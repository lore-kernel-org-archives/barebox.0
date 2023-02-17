Delivery-date: Fri, 17 Feb 2023 18:32:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4bI-00AI5Q-U5
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:32:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4bH-00051X-Ax
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:32:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AS8hDNnR5lWErZJjo/r92HvQtdiWaIBWJns8mfESl7Q=; b=2NNVLDaiiwWSkVd6remPwqo22O
	xowF7eqhRqXBypoQe32sY+lzRVTjj6d6TiLUmgiv6WnJT42mI/3rPWEgH7LPAn4WRgHUQCWt449/5
	LFQesiDThFa3OT0QVr3igfcGvUKhVZDAxEjz84exdtgB6MGiZhXKjdmZnA9WB0m6qYzhdLW1FtMf+
	ODVE/T0Do82wOSxBiMXhfJEjjYy5+7nNv5Y6v9BF8WZNCI6uMAdSKoMfEfJCUP0+u+opLwYA+KJwo
	BOzp5yGrVBW7i4l5L7GjlLxt5f2+ru2/CPmpWZ7Nyo9PpATqwwn4O4ESoeApQ27vaeEFx7vNbfMqH
	aGTRVVOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4aQ-00FFjF-J7; Fri, 17 Feb 2023 17:31:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zb-00FFGV-S3
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Za-0004DQ-KL; Fri, 17 Feb 2023 18:31:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZY-005dTn-Nu; Fri, 17 Feb 2023 18:31:01 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZW-007iy8-3P; Fri, 17 Feb 2023 18:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:53 +0100
Message-Id: <20230217173057.1839835-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_093103_945901_22D845F2 
X-CRM114-Status: GOOD (  13.74  )
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
Subject: [PATCH v1 16/20] ARM: dts: i.MX: use label-relative references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We now have fancy new syntax for having label references be
both short and trigger an error if non-existent. Let's make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi  |  6 ++--
 arch/arm/dts/imx6qdl-prti6q-nor.dtsi  | 14 ++++-----
 arch/arm/dts/imx6qdl-skov-imx6.dtsi   | 42 +++++++++++++--------------
 arch/arm/dts/imx6sx-udoo-neo-full.dts |  5 ++--
 arch/arm/dts/imx6ul-prti6g.dts        | 14 ++++-----
 arch/arm/dts/imx8mm-evkb.dts          |  4 +--
 6 files changed, 39 insertions(+), 46 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
index 1c7fbf6ed89c..b083fa0b37de 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
@@ -23,6 +23,9 @@
 	};
 };
 
+/delete-node/ &{flash/partition@c0000};
+/delete-node/ &{flash/partition@c2000};
+
 &flash {
 	#address-cells = <1>;
 	#size-cells = <1>;
@@ -32,9 +35,6 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	/delete-node/ partition@c0000;
-	/delete-node/ partition@c2000;
-
 	env_nor: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
diff --git a/arch/arm/dts/imx6qdl-prti6q-nor.dtsi b/arch/arm/dts/imx6qdl-prti6q-nor.dtsi
index 7a88652b4242..238fc4ca0f9b 100644
--- a/arch/arm/dts/imx6qdl-prti6q-nor.dtsi
+++ b/arch/arm/dts/imx6qdl-prti6q-nor.dtsi
@@ -2,14 +2,12 @@
 
 #include "imx6qdl-prti6q-emmc.dtsi"
 
-&ecspi1 {
-	flash@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
+&{ecspi1/flash@0} {
+	#address-cells = <1>;
+	#size-cells = <1>;
 
-		partition@0 {
-			label = "barebox";
-			reg = <0x0 0x100000>;
-		};
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x100000>;
 	};
 };
diff --git a/arch/arm/dts/imx6qdl-skov-imx6.dtsi b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
index cb4224f1b441..5415bb743aa2 100644
--- a/arch/arm/dts/imx6qdl-skov-imx6.dtsi
+++ b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
@@ -314,32 +314,30 @@
 };
 
 /* spi */
-&ecspi1 {
-	flash@0 {
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
+&{ecspi1/flash@0} {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
 
-			partition@0 {
-				label = "barebox";
-				reg = <0x0 0x100000>;
-			};
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x100000>;
+		};
 
-			/* space left to let barebox grow */
+		/* space left to let barebox grow */
 
-			/* placed near the end of the NOR memory */
-			barebox_env: partition@780000 {
-				label = "barebox-environment";
-				reg = <0x780000 0x40000>;
-			};
+		/* placed near the end of the NOR memory */
+		barebox_env: partition@780000 {
+			label = "barebox-environment";
+			reg = <0x780000 0x40000>;
+		};
 
-			/* placed at the end of the NOR memory */
-			state_storage: partition@7C0000 {
-				label = "barebox-state";
-				/* four times mirrored */
-				reg = <0x7C0000 0x40000>;
-			};
+		/* placed at the end of the NOR memory */
+		state_storage: partition@7C0000 {
+			label = "barebox-state";
+			/* four times mirrored */
+			reg = <0x7C0000 0x40000>;
 		};
 	};
 };
diff --git a/arch/arm/dts/imx6sx-udoo-neo-full.dts b/arch/arm/dts/imx6sx-udoo-neo-full.dts
index 0848574e418e..9623cc4b3d72 100644
--- a/arch/arm/dts/imx6sx-udoo-neo-full.dts
+++ b/arch/arm/dts/imx6sx-udoo-neo-full.dts
@@ -2,9 +2,6 @@
 #include "imx6sx.dtsi"
 
 / {
-
-	/delete-node/ memory@80000000;
-
 	chosen {
 		environment {
 			compatible = "barebox,environment";
@@ -13,6 +10,8 @@
 	};
 };
 
+/delete-node/ &{/memory@80000000};
+
 &usdhc2 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx6ul-prti6g.dts b/arch/arm/dts/imx6ul-prti6g.dts
index 3efbf357f1ac..f0bd1c9684bc 100644
--- a/arch/arm/dts/imx6ul-prti6g.dts
+++ b/arch/arm/dts/imx6ul-prti6g.dts
@@ -25,15 +25,13 @@
 	};
 };
 
-&ecspi1 {
-	flash@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
+&{ecspi1/flash@0} {
+	#address-cells = <1>;
+	#size-cells = <1>;
 
-		partition@0 {
-			label = "barebox";
-			reg = <0x0 0x100000>;
-		};
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x100000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx8mm-evkb.dts b/arch/arm/dts/imx8mm-evkb.dts
index b7d3be7a847a..365427f50df0 100644
--- a/arch/arm/dts/imx8mm-evkb.dts
+++ b/arch/arm/dts/imx8mm-evkb.dts
@@ -16,9 +16,9 @@
 	compatible = "fsl,imx8mm-evkb", "fsl,imx8mm";
 };
 
-&i2c1 {
-	/delete-node/ pmic@4b;
+/delete-node/ &{i2c1/pmic@4b};
 
+&i2c1 {
 	pmic@25 {
 		compatible = "nxp,pca9450a";
 		reg = <0x25>;
-- 
2.30.2



