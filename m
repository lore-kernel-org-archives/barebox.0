Delivery-date: Wed, 19 Oct 2022 12:42:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol6X9-000abq-Lb
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 12:42:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol6X5-0006uP-5X
	for lore@pengutronix.de; Wed, 19 Oct 2022 12:42:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jbtzZRFBUqsiOxKH1FilH8N3YCViynvS9oqGXOaas3c=; b=eLYjulqqNfeOE5esBXlwKR+LE0
	rvxlibc6yVkQK8e+mLrvNDILBynX6MdjCTMyfZbZGGKmkSKP0Tc7/VPLK4Dr/hMKxKlV8lMG3vXEu
	v9MmclcpNxXGUKYt+0mTMVmjhVBnMRXdGiQ/ot+ltxeOveN+MAiP9T+P14G+yEWFz6wYX8bMuGLaK
	RSX6AJk0eZA0kIchkHyjYiZHYSDJZJFx/IGXUmNHyrlWLQrO0f2az44RD5nTXmMJgSdySapB52JtY
	NCSgr8l0EPgkfxMkkyo31OdPI1GfGAueQFeYX91cJXUB69eT9YvOqCQEUz4XA6mKJQelzv/uOgNy/
	r9c2mlhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol6V8-000O4r-Dg; Wed, 19 Oct 2022 10:40:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol6Uy-000NmU-4i
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 10:40:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ol6Ur-0006Xg-Cg; Wed, 19 Oct 2022 12:40:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ol6Uq-0006GG-Nn; Wed, 19 Oct 2022 12:40:24 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ol6Up-00AmFT-SR; Wed, 19 Oct 2022 12:40:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 19 Oct 2022 12:40:22 +0200
Message-Id: <20221019104022.2568647-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221019104022.2568647-1-s.hauer@pengutronix.de>
References: <20221019104022.2568647-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_034032_712353_637F4648 
X-CRM114-Status: GOOD (  14.90  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] Treewide: Reference environment partitions by phandle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Where possible reference the environment partitions directly by phandle
instead of referencing the physical device and describing the partition
by "partname:xxx".

This is one step to deprecate the "partname:xxx" binding.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/am335x-phytec-phycard-som.dtsi      |  4 ++--
 arch/arm/dts/am335x-phytec-phycore-som.dtsi      |  8 ++++----
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi      |  8 ++++----
 arch/arm/dts/ep7212-clep7212.dts                 |  4 ++--
 arch/arm/dts/imx25-karo-tx25.dts                 |  4 ++--
 arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts   |  4 ++--
 arch/arm/dts/imx28-evk.dts                       |  4 ++--
 arch/arm/dts/imx51-ccxmx51.dts                   |  4 ++--
 arch/arm/dts/imx51-genesi-efika-sb.dts           |  8 ++++----
 arch/arm/dts/imx51-zii-rdu1.dts                  |  4 ++--
 arch/arm/dts/imx53-ccxmx53.dtsi                  |  4 ++--
 arch/arm/dts/imx53-mba53.dts                     |  4 ++--
 arch/arm/dts/imx53-voipac-dmm-668.dtsi           |  4 ++--
 arch/arm/dts/imx6dl-advantech-rom-7421.dts       | 12 ++++++------
 arch/arm/dts/imx6dl-hummingboard.dts             |  4 ++--
 arch/arm/dts/imx6q-dmo-edmqmx6.dts               | 14 ++++++++------
 arch/arm/dts/imx6q-h100.dts                      |  4 ++--
 arch/arm/dts/imx6q-hummingboard.dts              |  4 ++--
 arch/arm/dts/imx6q-hummingboard2.dts             |  4 ++--
 arch/arm/dts/imx6qdl-gw54xx.dtsi                 |  4 ++--
 arch/arm/dts/imx6qdl-nitrogen6_max.dtsi          |  6 +++---
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi             |  4 ++--
 arch/arm/dts/imx6qdl-phytec-mira.dtsi            |  2 +-
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi          | 12 ++++++------
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi     | 14 +++++++-------
 arch/arm/dts/imx6qdl-prti6q-emmc.dtsi            |  4 ++--
 arch/arm/dts/imx6qdl-sabrelite.dtsi              |  4 ++--
 arch/arm/dts/imx6qdl-tx6x.dtsi                   |  4 ++--
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi               |  4 ++--
 arch/arm/dts/imx6sx-sdb.dts                      |  4 ++--
 arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts           |  4 ++--
 arch/arm/dts/imx6ul-phytec-phycore-som.dtsi      | 12 ++++++------
 arch/arm/dts/imx6ul-prti6g.dts                   |  4 ++--
 arch/arm/dts/imx6ull-jozacp.dts                  |  4 ++--
 arch/arm/dts/imx8mm-evk.dts                      |  8 ++++----
 arch/arm/dts/imx8mm-innocomm-wb15-evk.dts        |  8 ++++----
 arch/arm/dts/imx8mn-evk.dts                      |  8 ++++----
 arch/arm/dts/imx8mn-evk.dtsi                     |  8 ++++----
 arch/arm/dts/imx8mp-evk.dts                      |  8 ++++----
 arch/arm/dts/imx8mq-evk.dts                      |  8 ++++----
 arch/arm/dts/imx8mq-mnt-reform2.dts              |  8 ++++----
 arch/arm/dts/imx8mq-zii-ultra.dtsi               |  8 ++++----
 arch/arm/dts/rk3188-radxarock.dts                |  6 +++---
 arch/arm/dts/rk3288-phycore-som.dts              |  8 ++++----
 arch/mips/dts/ar9331-dptechnics-dpt-module.dts   |  4 ++--
 arch/mips/dts/ar9331-okud-max9331.dts            |  4 ++--
 arch/mips/dts/ar9331-openembed-som9331-board.dts |  4 ++--
 arch/mips/dts/ar9331_tl_mr3020.dts               |  4 ++--
 arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts         |  4 ++--
 arch/mips/dts/qca4531-8devices-lima.dts          |  4 ++--
 arch/mips/dts/qemu-malta.dts                     |  4 ++--
 51 files changed, 150 insertions(+), 148 deletions(-)

diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dtsi b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
index e459824a77..a80f92f22c 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
@@ -4,7 +4,7 @@
 
 		environment-nand {
 			compatible = "barebox,environment";
-			device-path = &nand, "partname:bareboxenv";
+			device-path = &env_nand;
 			status = "disabled";
 		};
 	};
@@ -211,7 +211,7 @@
 			reg = <0x100000 0x80000>;
 		};
 
-		partition@180000 {
+		env_nand: partition@180000 {
 			label = "bareboxenv";
 			reg = <0x180000 0x40000>;
 		};
diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
index 4b2ff9b2ea..275e146fce 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
@@ -4,13 +4,13 @@
 
 		environment-spi {
 			compatible = "barebox,environment";
-			device-path = &flash, "partname:bareboxenv";
+			device-path = &env_nor;
 			status = "disabled";
 		};
 
 		environment-nand {
 			compatible = "barebox,environment";
-			device-path = &nand, "partname:bareboxenv";
+			device-path = &env_nand;
 			status = "disabled";
 		};
 	};
@@ -217,7 +217,7 @@
 			reg = <0x20000 0x80000>;
 		};
 
-		partition@a0000 {
+		env_nor: partition@a0000 {
 			label = "bareboxenv";
 			reg = <0xa0000 0x20000>;
 		};
@@ -333,7 +333,7 @@
 			reg = <0x100000 0x80000>;
 		};
 
-		partition@180000 {
+		env_nand: partition@180000 {
 			label = "bareboxenv";
 			reg = <0x180000 0x40000>;
 		};
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
index 29776f4556..2de89f6058 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
@@ -4,13 +4,13 @@
 
 		environment-spi {
 			compatible = "barebox,environment";
-			device-path = &flash, "partname:bareboxenv";
+			device-path = &env_nor;
 			status = "disabled";
 		};
 
 		environment-nand {
 			compatible = "barebox,environment";
-			device-path = &nand, "partname:bareboxenv";
+			device-path = &env_nand;
 			status = "disabled";
 		};
 	};
@@ -170,7 +170,7 @@
 			reg = <0x20000 0x80000>;
 		};
 
-		partition@a0000 {
+		env_nor: partition@a0000 {
 			label = "bareboxenv";
 			reg = <0xa0000 0x20000>;
 		};
@@ -312,7 +312,7 @@
 			reg = <0x100000 0x80000>;
 		};
 
-		partition@180000 {
+		env_nand: partition@180000 {
 			label = "bareboxenv";
 			reg = <0x180000 0x40000>;
 		};
diff --git a/arch/arm/dts/ep7212-clep7212.dts b/arch/arm/dts/ep7212-clep7212.dts
index 84c5e79548..701bc20bd8 100644
--- a/arch/arm/dts/ep7212-clep7212.dts
+++ b/arch/arm/dts/ep7212-clep7212.dts
@@ -17,7 +17,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &flash, "partname:env";
+			device-path = &env_nor;
 		};
 	};
 };
@@ -45,7 +45,7 @@
 				reg = <0x00000 0x80000>;
 			};
 
-			partition@80000 {
+			env_nor: partition@80000 {
 				label = "env";
 				reg = <0x80000 0x40000>;
 			};
diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
index 2785a3c91a..7036c11f97 100644
--- a/arch/arm/dts/imx25-karo-tx25.dts
+++ b/arch/arm/dts/imx25-karo-tx25.dts
@@ -16,7 +16,7 @@
 	chosen {
 		environment {
 			compatible = "barebox,environment";
-			device-path = &nfc, "partname:environment";
+			device-path = &env_nand;
 		};
 	};
 };
@@ -34,7 +34,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@80000 {
+	env_nand: partition@80000 {
 		label = "environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
index abfbd5061e..ee8a0cd9e7 100644
--- a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
+++ b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
@@ -10,7 +10,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &nfc, "partname:environment";
+			device-path = &env_nand;
 		};
 	};
 };
@@ -21,7 +21,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_nand: partition@e0000 {
 		label = "environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx28-evk.dts b/arch/arm/dts/imx28-evk.dts
index c82dfa4d8c..c9ce8dc8b8 100644
--- a/arch/arm/dts/imx28-evk.dts
+++ b/arch/arm/dts/imx28-evk.dts
@@ -6,7 +6,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &gpmi, "partname:environment";
+			device-path = &env_nand;
 		};
 	};
 };
@@ -21,7 +21,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@80000 {
+	env_nand: partition@80000 {
 		label = "environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx51-ccxmx51.dts b/arch/arm/dts/imx51-ccxmx51.dts
index efe5dbf631..cd67e23b46 100644
--- a/arch/arm/dts/imx51-ccxmx51.dts
+++ b/arch/arm/dts/imx51-ccxmx51.dts
@@ -9,7 +9,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &nfc, "partname:env";
+			device-path = &env_nand;
 		};
 	};
 };
@@ -24,7 +24,7 @@
 		reg = <0x00000 0x80000>;
 	};
 
-	partition@80000 {
+	env_nand: partition@80000 {
 		label = "env";
 		reg = <0x80000 0x40000>;
 	};
diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
index 7e3017f981..9afb670edf 100644
--- a/arch/arm/dts/imx51-genesi-efika-sb.dts
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -24,13 +24,13 @@
 
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &esdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 			status = "disabled";
 		};
 
 		environment-spi {
 			compatible = "barebox,environment";
-			device-path = &flash, "partname:barebox-environment";
+			device-path = &env_nor;
 			status = "disabled";
 		};
 	};
@@ -416,7 +416,7 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -534,7 +534,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		partition@e0000 {
+		env_nor: partition@e0000 {
 			label = "barebox-environment";
 			reg = <0xe0000 0x20000>;
 		};
diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
index 857c9ad96c..7f6a2962b4 100644
--- a/arch/arm/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -21,7 +21,7 @@
 
 		environment-spi {
 			compatible = "barebox,environment";
-			device-path = &spinor, "partname:barebox-environment";
+			device-path = &env_spinor;
 		};
 
 		ubootenv {
@@ -76,7 +76,7 @@
 			reg = <0x400 0xdfc00>;
 		};
 
-		partition@e0000 {
+		env_spinor: partition@e0000 {
 			label = "barebox-environment";
 			reg = <0xe0000 0x20000>;
 		};
diff --git a/arch/arm/dts/imx53-ccxmx53.dtsi b/arch/arm/dts/imx53-ccxmx53.dtsi
index d925ba44d7..243b5b15e6 100644
--- a/arch/arm/dts/imx53-ccxmx53.dtsi
+++ b/arch/arm/dts/imx53-ccxmx53.dtsi
@@ -20,7 +20,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &nfc, "partname:environment";
+			device-path = &env_nand;
 		};
 	};
 };
@@ -236,7 +236,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_nand: partition@e0000 {
 		label = "environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx53-mba53.dts b/arch/arm/dts/imx53-mba53.dts
index 53b98e30cf..c87db2e55a 100644
--- a/arch/arm/dts/imx53-mba53.dts
+++ b/arch/arm/dts/imx53-mba53.dts
@@ -20,7 +20,7 @@
 
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &esdhc2, "partname:environment";
+			device-path = &env_sd2;
 			status = "disabled";
 		};
 	};
@@ -30,7 +30,7 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx53-voipac-dmm-668.dtsi b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
index c4c17c2e8e..16ab865d68 100644
--- a/arch/arm/dts/imx53-voipac-dmm-668.dtsi
+++ b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
@@ -4,7 +4,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &nfc, "partname:environment";
+			device-path = &env_nand;
 		};
 	};
 };
@@ -18,7 +18,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_nand: partition@e0000 {
 		label = "environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6dl-advantech-rom-7421.dts b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
index f0e3f4aa1f..f414f4f448 100755
--- a/arch/arm/dts/imx6dl-advantech-rom-7421.dts
+++ b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
@@ -24,19 +24,19 @@
 
 		environment-sd2 {			/* Micro SD */
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 			status = "disabled";
 		};
 
 		environment-sd4 {			/* eMMC */
 			compatible = "barebox,environment";
-			device-path = &usdhc4, "partname:barebox-environment";
+			device-path = &env_sd4;
 			status = "disabled";
 		};
 
 		environment-spi {			/* spi nor */
 			compatible = "barebox,environment";
-			device-path = &ecspi1, "partname:barebox-environment";
+			device-path = &env_nor;
 			status = "disabled";
 		};
 	};
@@ -63,7 +63,7 @@
 			reg = <0x0 0xe0000>;
 		};
 
-		partition@e0000 {
+		env_nor: partition@e0000 {
 			label = "barebox-environment";
 			reg = <0xe0000 0x20000>;
 		};
@@ -115,7 +115,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -147,7 +147,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd4: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
index 5bfa4704b2..4e8856b6b1 100644
--- a/arch/arm/dts/imx6dl-hummingboard.dts
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -14,7 +14,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 		};
 	};
 };
@@ -32,7 +32,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6q-dmo-edmqmx6.dts b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
index fcf8ad8993..7e61a2208a 100644
--- a/arch/arm/dts/imx6q-dmo-edmqmx6.dts
+++ b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
@@ -19,19 +19,19 @@
 
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &usdhc3, "partname:barebox-environment";
+			device-path = &env_sd3;
 			status = "disabled";
 		};
 
 		environment-emmc {
 			compatible = "barebox,environment";
-			device-path = &usdhc4, "partname:barebox-environment";
+			device-path = &env_sd4;
 			status = "disabled";
 		};
 
 		environment-spi {
 			compatible = "barebox,environment";
-			device-path = &flash, "partname:barebox-environment";
+			device-path = &env_nor;
 			status = "disabled";
 		};
 	};
@@ -46,7 +46,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_nor: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -77,7 +77,8 @@
 		label = "barebox";
 		reg = <0x0 0xe0000>;
 	};
-	partition@e0000 {
+
+	env_sd3: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -91,7 +92,8 @@
 		label = "barebox";
 		reg = <0x0 0xe0000>;
 	};
-	partition@e0000 {
+
+	env_sd4: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6q-h100.dts b/arch/arm/dts/imx6q-h100.dts
index bfee186f28..d1398a2bd5 100644
--- a/arch/arm/dts/imx6q-h100.dts
+++ b/arch/arm/dts/imx6q-h100.dts
@@ -45,7 +45,7 @@
 	chosen {
 		environment {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 		};
 	};
 };
@@ -63,7 +63,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6q-hummingboard.dts b/arch/arm/dts/imx6q-hummingboard.dts
index b10acf2cbb..84b43d1237 100644
--- a/arch/arm/dts/imx6q-hummingboard.dts
+++ b/arch/arm/dts/imx6q-hummingboard.dts
@@ -14,7 +14,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 		};
 	};
 };
@@ -32,7 +32,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6q-hummingboard2.dts b/arch/arm/dts/imx6q-hummingboard2.dts
index 6c41ab7396..4a5d0e2554 100644
--- a/arch/arm/dts/imx6q-hummingboard2.dts
+++ b/arch/arm/dts/imx6q-hummingboard2.dts
@@ -54,7 +54,7 @@
 	chosen {
 		environment {
 			compatible = "barebox,environment";
-			device-path = &usdhc3, "partname:barebox-environment";
+			device-path = &env_sd3;
 		};
 	};
 };
@@ -80,7 +80,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd3: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-gw54xx.dtsi b/arch/arm/dts/imx6qdl-gw54xx.dtsi
index 23e08f7d92..14a4f7011c 100644
--- a/arch/arm/dts/imx6qdl-gw54xx.dtsi
+++ b/arch/arm/dts/imx6qdl-gw54xx.dtsi
@@ -17,7 +17,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &gpmi, "partname:barebox-environment";
+			device-path = &env_nand;
 		};
 	};
 };
@@ -31,7 +31,7 @@
 		reg = <0x0 0x400000>;
 	};
 
-	partition@400000 {
+	env_nand: partition@400000 {
 		label = "barebox-environment";
 		reg = <0x400000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi b/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
index 19fe7881b3..5d301289f3 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
@@ -44,7 +44,7 @@
 	chosen {
 		environment {
 			compatible = "barebox,environment";
-			device-path = &flash, "partname:barebox-environment";
+			device-path = &env_nor;
 		};
 	};
 };
@@ -58,7 +58,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_nor: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -66,4 +66,4 @@
 
 &ocotp {
 	barebox,provide-mac-address = <&fec 0x620>;
-};
\ No newline at end of file
+};
diff --git a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
index 5c43b16ab1..1c7fbf6ed8 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
@@ -18,7 +18,7 @@
 	chosen {
 		environment {
 			compatible = "barebox,environment";
-			device-path = &flash, "partname:barebox-environment";
+			device-path = &env_nor;
 		};
 	};
 };
@@ -35,7 +35,7 @@
 	/delete-node/ partition@c0000;
 	/delete-node/ partition@c2000;
 
-	partition@e0000 {
+	env_nor: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-phytec-mira.dtsi b/arch/arm/dts/imx6qdl-phytec-mira.dtsi
index 49cbd25fc3..bcf832ddc7 100644
--- a/arch/arm/dts/imx6qdl-phytec-mira.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-mira.dtsi
@@ -36,7 +36,7 @@
                         reg = <0x0 0xe0000>;
                 };
 
-                partition@e0000 {
+                env_sd1: partition@e0000 {
                         label = "barebox-environment";
                         reg = <0xe0000 0x20000>;
                 };
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 7d6bd387fa..4b41c301d4 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -15,19 +15,19 @@
 	chosen {
 		environment-nand {
 			compatible = "barebox,environment";
-			device-path = &gpmi, "partname:barebox-environment";
+			device-path = &env_nand;
 			status = "disabled";
 		};
 
 		environment-spinor {
 			compatible = "barebox,environment";
-			device-path = &som_flash, "partname:barebox-environment";
+			device-path = &env_nor;
 			status = "disabled";
 		};
 
 		environment-sd3 {
 			compatible = "barebox,environment";
-			device-path = &usdhc3, "partname:barebox-environment";
+			device-path = &env_sd3;
 			status = "disabled";
 		};
 	};
@@ -46,7 +46,7 @@
 			reg = <0x0 0x100000>;
 		};
 
-		partition@100000 {
+		env_nor: partition@100000 {
 			label = "barebox-environment";
 			reg = <0x100000 0x20000>;
 		};
@@ -74,7 +74,7 @@
 			reg = <0x0 0x1000000>;
 		};
 
-		partition@1000000 {
+		env_nand: partition@1000000 {
 			label = "barebox-environment";
 			reg = <0x1000000 0x100000>;
 		};
@@ -120,7 +120,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd3: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 2c333ce8fe..c1920623d2 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -11,25 +11,25 @@
 	chosen {
 		environment-sd1 {
 			compatible = "barebox,environment";
-			device-path = &usdhc1, "partname:barebox-environment";
+			device-path = &env_sd1;
 			status = "disabled";
 		};
 
 		environment-sd4 {
 			compatible = "barebox,environment";
-			device-path = &usdhc4, "partname:barebox-environment";
+			device-path = &env_sd4;
 			status = "disabled";
 		};
 
 		environment-nand {
 			compatible = "barebox,environment";
-			device-path = &gpmi, "partname:barebox-environment";
+			device-path = &env_nand;
 			status = "disabled";
 		};
 
 		environment-spinor {
 			compatible = "barebox,environment";
-			device-path = &m25p80, "partname:barebox-environment";
+			device-path = &env_nor;
 			status = "disabled";
 		};
 	};
@@ -53,7 +53,7 @@
 			reg = <0x0 0x1000000>;
 		};
 
-		partition@400000 {
+		env_nand: partition@400000 {
 			label = "barebox-environment";
 			reg = <0x1000000 0x100000>;
 		};
@@ -90,7 +90,7 @@
 			reg = <0x0 0x100000>;
 		};
 
-		partition@100000 {
+		env_nor: partition@100000 {
 			label = "barebox-environment";
 			reg = <0x100000 0x20000>;
 		};
@@ -122,7 +122,7 @@
 			reg = <0x0 0xe0000>;
 		};
 
-		partition@e0000 {
+		env_sd4: partition@e0000 {
 			label = "barebox-environment";
 			reg = <0xe0000 0x20000>;
 		};
diff --git a/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi b/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
index 094b0b09d7..453bf80ea1 100644
--- a/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
+++ b/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
@@ -10,7 +10,7 @@
 
 		environment@0 {
 			compatible = "barebox,environment";
-			device-path = &usdhc3, "partname:barebox-environment";
+			device-path = &env_sd3;
 		};
 	};
 
@@ -105,7 +105,7 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	partition@40000 {
+	env_sd3: partition@40000 {
 		label = "barebox-environment";
 		reg = <0x40000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-sabrelite.dtsi b/arch/arm/dts/imx6qdl-sabrelite.dtsi
index ec3d364bde..3f26a327e7 100644
--- a/arch/arm/dts/imx6qdl-sabrelite.dtsi
+++ b/arch/arm/dts/imx6qdl-sabrelite.dtsi
@@ -20,7 +20,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &flash, "partname:barebox-environment";
+			device-path = &env_nor;
 		};
 	};
 };
@@ -34,7 +34,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_nor: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-tx6x.dtsi b/arch/arm/dts/imx6qdl-tx6x.dtsi
index 13102168f7..2d7a4f8330 100644
--- a/arch/arm/dts/imx6qdl-tx6x.dtsi
+++ b/arch/arm/dts/imx6qdl-tx6x.dtsi
@@ -5,7 +5,7 @@
 		environment-nand {
 			status = "disabled";
 			compatible = "barebox,environment";
-			device-path = &gpmi, "partname:barebox-environment";
+			device-path = &env_nand;
 		};
 
 		environment-emmc {
@@ -34,7 +34,7 @@
 		reg = <0x0 0x400000>;
 	};
 
-	partition@400000 {
+	env_nand: partition@400000 {
 		label = "barebox-environment";
 		reg = <0x400000 0x100000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index 714ba8e755..994e43b53b 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -45,7 +45,7 @@
 	chosen {
 		environment {
 			compatible = "barebox,environment";
-			device-path = &nor_flash, "partname:barebox-environment";
+			device-path = &env_nor;
 		};
 
 		ubootenv {
@@ -219,7 +219,7 @@
 			reg = <0x0 0xc0000>;
 		};
 
-		partition@c0000 {
+		env_nor: partition@c0000 {
 			label = "barebox-environment";
 			reg = <0xc0000 0x40000>;
 		};
diff --git a/arch/arm/dts/imx6sx-sdb.dts b/arch/arm/dts/imx6sx-sdb.dts
index 8cf412a39f..20a56a3dde 100644
--- a/arch/arm/dts/imx6sx-sdb.dts
+++ b/arch/arm/dts/imx6sx-sdb.dts
@@ -14,7 +14,7 @@
 	chosen {
 		environment {
 			compatible = "barebox,environment";
-			device-path = &usdhc4, "partname:barebox-environment";
+			device-path = &env_sd4;
 		};
 	};
 };
@@ -31,7 +31,7 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	partition@e0000 {
+	env_sd4: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts b/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts
index 1139c4b7d6..eb5a156c96 100644
--- a/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts
+++ b/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts
@@ -6,7 +6,7 @@
 
 		environment-nand {
 			compatible = "barebox,environment";
-			device-path = &gpmi, "partname:barebox-environment";
+			device-path = &env_nand;
 			status = "okay";
 		};
 	};
@@ -28,7 +28,7 @@
 			reg = <0x0 0x400000>;
 		};
 
-		partition@400000 {
+		env_nand: partition@400000 {
 			label = "barebox-environment";
 			reg = <0x400000 0x100000>;
 		};
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
index c7c657bcd4..4aea8c1d38 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
@@ -16,19 +16,19 @@
 
 		environment-nand {
 			compatible = "barebox,environment";
-			device-path = &gpmi, "partname:barebox-environment";
+			device-path = &env_nand;
 			status = "disabled";
 		};
 
 		environment-sd1 {
 			compatible = "barebox,environment";
-			device-path = &usdhc1, "partname:barebox-environment";
+			device-path = &env_sd1;
 			status = "disabled";
 		};
 
 		environment-sd2 {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 			status = "disabled";
 		};
 	};
@@ -67,7 +67,7 @@
 			reg = <0x0 0x400000>;
 		};
 
-		partition@400000 {
+		env_nand: partition@400000 {
 			label = "barebox-environment";
 			reg = <0x400000 0x100000>;
 		};
@@ -125,7 +125,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd1: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -146,7 +146,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6ul-prti6g.dts b/arch/arm/dts/imx6ul-prti6g.dts
index f720a2518c..8f17ad976f 100644
--- a/arch/arm/dts/imx6ul-prti6g.dts
+++ b/arch/arm/dts/imx6ul-prti6g.dts
@@ -9,7 +9,7 @@
 
 		environment@0 {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 		};
 	};
 
@@ -52,7 +52,7 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	partition@40000 {
+	env_sd2: partition@40000 {
 		label = "barebox-environment";
 		reg = <0x40000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6ull-jozacp.dts b/arch/arm/dts/imx6ull-jozacp.dts
index f41028455a..c7f05f12e8 100644
--- a/arch/arm/dts/imx6ull-jozacp.dts
+++ b/arch/arm/dts/imx6ull-jozacp.dts
@@ -9,7 +9,7 @@
 
 		environment@0 {
 			compatible = "barebox,environment";
-			device-path = &usdhc1, "partname:barebox-environment";
+			device-path = &env_sd1;
 		};
 	};
 
@@ -40,7 +40,7 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	partition@40000 {
+	env_sd1: partition@40000 {
 		label = "barebox-environment";
 		reg = <0x40000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx8mm-evk.dts b/arch/arm/dts/imx8mm-evk.dts
index 6c06ad7e47..3ced5a934c 100644
--- a/arch/arm/dts/imx8mm-evk.dts
+++ b/arch/arm/dts/imx8mm-evk.dts
@@ -13,12 +13,12 @@
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 			status = "disabled";
 		};
 		environment-emmc {
 			compatible = "barebox,environment";
-			device-path = &usdhc3, "partname:barebox-environment";
+			device-path = &env_sd3;
 			status = "disabled";
 		};
 	};
@@ -37,7 +37,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -52,7 +52,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd3: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
index e5c3fc1587..8808441b60 100644
--- a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
+++ b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
@@ -8,12 +8,12 @@
 	chosen {
 		environment-emmc {
 			compatible = "barebox,environment";
-			device-path = &usdhc1, "partname:barebox-environment";
+			device-path = &env_sd1;
 			status = "disabled";
 		};
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 			status = "disabled";
 		};
 	};
@@ -34,7 +34,7 @@
 			reg = <0x0 0x0 0x0 0x100000>;
 		};
 
-		partition@e0000 {
+		env_sd1: partition@e0000 {
 			label = "barebox-environment";
 			reg = <0x0 0x100000 0x0 0x100000>;
 		};
@@ -52,7 +52,7 @@
 			reg = <0x0 0x0 0x0 0x100000>;
 		};
 
-		partition@e0000 {
+		env_sd2: partition@e0000 {
 			label = "barebox-environment";
 			reg = <0x0 0x100000 0x0 0x100000>;
 		};
diff --git a/arch/arm/dts/imx8mn-evk.dts b/arch/arm/dts/imx8mn-evk.dts
index cbb8b8874c..fb2e40ed89 100644
--- a/arch/arm/dts/imx8mn-evk.dts
+++ b/arch/arm/dts/imx8mn-evk.dts
@@ -10,12 +10,12 @@
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 			status = "disabled";
 		};
 		environment-emmc {
 			compatible = "barebox,environment";
-			device-path = &usdhc3, "partname:barebox-environment";
+			device-path = &env_sd3;
 			status = "disabled";
 		};
 	};
@@ -34,7 +34,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -49,7 +49,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd3: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx8mn-evk.dtsi b/arch/arm/dts/imx8mn-evk.dtsi
index ceeb5f8b93..1d376f5d55 100644
--- a/arch/arm/dts/imx8mn-evk.dtsi
+++ b/arch/arm/dts/imx8mn-evk.dtsi
@@ -8,12 +8,12 @@
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 			status = "disabled";
 		};
 		environment-emmc {
 			compatible = "barebox,environment";
-			device-path = &usdhc3, "partname:barebox-environment";
+			device-path = &env_sd3;
 			status = "disabled";
 		};
 	};
@@ -28,7 +28,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -43,7 +43,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd3: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
index 3264ade4b8..9b20cc642d 100644
--- a/arch/arm/dts/imx8mp-evk.dts
+++ b/arch/arm/dts/imx8mp-evk.dts
@@ -13,12 +13,12 @@
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 			status = "disabled";
 		};
 		environment-emmc {
 			compatible = "barebox,environment";
-			device-path = &usdhc3, "partname:barebox-environment";
+			device-path = &env_sd3;
 			status = "disabled";
 		};
 	};
@@ -44,7 +44,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -59,7 +59,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd3: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx8mq-evk.dts b/arch/arm/dts/imx8mq-evk.dts
index 8ef2c984ac..2e753aeb0f 100644
--- a/arch/arm/dts/imx8mq-evk.dts
+++ b/arch/arm/dts/imx8mq-evk.dts
@@ -14,12 +14,12 @@
 	chosen {
 		environment-emmc {
 			compatible = "barebox,environment";
-			device-path = &usdhc1, "partname:barebox-environment";
+			device-path = &env_sd1;
 			status = "disabled";
 		};
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 			status = "disabled";
 		};
 	};
@@ -34,7 +34,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd1: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -49,7 +49,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx8mq-mnt-reform2.dts b/arch/arm/dts/imx8mq-mnt-reform2.dts
index deb31abe54..b048faa2b1 100644
--- a/arch/arm/dts/imx8mq-mnt-reform2.dts
+++ b/arch/arm/dts/imx8mq-mnt-reform2.dts
@@ -14,13 +14,13 @@
 	chosen {
 		environment-emmc {
 			compatible = "barebox,environment";
-			device-path = &usdhc1, "partname:barebox-environment";
+			device-path = &env_sd1;
 			status = "disabled";
 		};
 
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 			status = "disabled";
 		};
 	};
@@ -39,7 +39,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd1: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -54,7 +54,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index 896993a0e2..dc6d743f29 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -10,12 +10,12 @@
 	chosen {
 		environment-emmc {
 			compatible = "barebox,environment";
-			device-path = &usdhc1, "partname:barebox-environment";
+			device-path = &env_sd1;
 			status = "disabled";
 		};
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 			status = "disabled";
 		};
 	};
@@ -101,7 +101,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd1: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -116,7 +116,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
diff --git a/arch/arm/dts/rk3188-radxarock.dts b/arch/arm/dts/rk3188-radxarock.dts
index daa75b831f..3546c4a149 100644
--- a/arch/arm/dts/rk3188-radxarock.dts
+++ b/arch/arm/dts/rk3188-radxarock.dts
@@ -20,8 +20,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &mmc0, "partname:barebox-environment";
-			status = "okay";
+			device-path = &env_mmc0;
 		};
 	};
 };
@@ -34,7 +33,8 @@
 		label = "barebox";
 		reg = <0x0 0x80000>;
 	};
-	partition@80000 {
+
+	env_mmc0: partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/rk3288-phycore-som.dts b/arch/arm/dts/rk3288-phycore-som.dts
index 67073b2d83..f81acc229c 100644
--- a/arch/arm/dts/rk3288-phycore-som.dts
+++ b/arch/arm/dts/rk3288-phycore-som.dts
@@ -49,13 +49,13 @@
 
 		environment-emmc {
 			compatible = "barebox,environment";
-			device-path = &emmc, "partname:barebox-environment";
+			device-path = &env_emmc;
 			status = "disabled";
 		};
 
 		environment-sdmmc {
 			compatible = "barebox,environment";
-			device-path = &sdmmc, "partname:barebox-environment";
+			device-path = &env_sdmmc;
 			status = "disabled";
 		};
 	};
@@ -100,7 +100,7 @@
 		reg = <0x20000 0x80000>;
 	};
 
-	partition@a0000 {
+	env_emmc: partition@a0000 {
 		label = "barebox-environment";
 		reg = <0xa0000 0x20000>;
 	};
@@ -131,7 +131,7 @@
 		reg = <0x20000 0x80000>;
 	};
 
-	partition@a0000 {
+	env_sdmmc: partition@a0000 {
 		label = "barebox-environment";
 		reg = <0xa0000 0x20000>;
 	};
diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
index 24ce0d0d67..8a0ae9caf7 100644
--- a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
+++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
@@ -11,7 +11,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &spiflash, "partname:barebox-environment";
+			device-path = &env_nor;
 		};
 
 		art@0 {
@@ -40,7 +40,7 @@
 		reg = <0 0x80000>;
 	};
 
-	partition@80000 {
+	env_nor: partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x10000>;
 	};
diff --git a/arch/mips/dts/ar9331-okud-max9331.dts b/arch/mips/dts/ar9331-okud-max9331.dts
index 3b93bee93b..f65272905b 100644
--- a/arch/mips/dts/ar9331-okud-max9331.dts
+++ b/arch/mips/dts/ar9331-okud-max9331.dts
@@ -21,7 +21,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &spiflash, "partname:barebox-environment";
+			device-path = &env_nor;
 		};
 
 		art@0 {
@@ -120,7 +120,7 @@
 		reg = <0 0x10000>;
 	};
 
-	partition@10000 {
+	env_nor: partition@10000 {
 		label = "barebox-environment";
 		reg = <0x10000 0x10000>;
 	};
diff --git a/arch/mips/dts/ar9331-openembed-som9331-board.dts b/arch/mips/dts/ar9331-openembed-som9331-board.dts
index 4736332f8f..78f5ef1ea2 100644
--- a/arch/mips/dts/ar9331-openembed-som9331-board.dts
+++ b/arch/mips/dts/ar9331-openembed-som9331-board.dts
@@ -37,7 +37,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &spiflash, "partname:barebox-environment";
+			device-path = &env_nor;
 		};
 
 		art@0 {
@@ -95,7 +95,7 @@
 		reg = <0 0x80000>;
 	};
 
-	partition@80000 {
+	env_nor: partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x10000>;
 	};
diff --git a/arch/mips/dts/ar9331_tl_mr3020.dts b/arch/mips/dts/ar9331_tl_mr3020.dts
index c6ae154f4f..66587912c4 100644
--- a/arch/mips/dts/ar9331_tl_mr3020.dts
+++ b/arch/mips/dts/ar9331_tl_mr3020.dts
@@ -11,7 +11,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &spiflash, "partname:barebox-environment";
+			device-path = &env_nor;
 		};
 	};
 };
@@ -22,7 +22,7 @@
 		reg = <0 0x80000>;
 	};
 
-	partition@80000 {
+	env_nor: partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x10000>;
 	};
diff --git a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
index 82daabbdd4..d788b5ed63 100644
--- a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
+++ b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
@@ -24,7 +24,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &spiflash, "partname:barebox-environment";
+			device-path = &env_nor;
 		};
 
 		art@0 {
@@ -65,7 +65,7 @@
 			reg = <0 0x80000>;
 		};
 
-		partition@80000 {
+		env_nor: partition@80000 {
 			label = "barebox-environment";
 			reg = <0x80000 0x10000>;
 		};
diff --git a/arch/mips/dts/qca4531-8devices-lima.dts b/arch/mips/dts/qca4531-8devices-lima.dts
index 4b960e12bf..bb3e5247dc 100644
--- a/arch/mips/dts/qca4531-8devices-lima.dts
+++ b/arch/mips/dts/qca4531-8devices-lima.dts
@@ -24,7 +24,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &spiflash, "partname:barebox-environment";
+			device-path = &env_nor;
 		};
 	};
 };
@@ -59,7 +59,7 @@
 			reg = <0 0x80000>;
 		};
 
-		partition@80000 {
+		env_nor: partition@80000 {
 			label = "barebox-environment";
 			reg = <0x80000 0x10000>;
 		};
diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index 2d6f4a0ca3..f08832735f 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -10,7 +10,7 @@
 	chosen {
 		environment {
 			compatible = "barebox,environment";
-			device-path = &nor0, "partname:barebox-environment";
+			device-path = &env_nor;
 		};
 	};
 
@@ -79,7 +79,7 @@
 			read-only;
 		};
 
-		partition@80000 {
+		env_nor: partition@80000 {
 			label = "barebox-environment";
 			reg = <0x80000 0x10000>;
 		};
-- 
2.30.2



