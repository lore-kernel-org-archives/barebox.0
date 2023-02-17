Delivery-date: Fri, 17 Feb 2023 18:34:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4ce-00AI8j-5U
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:34:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4cb-0005Uq-Ta
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:34:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=84/pduI92cIsrTd1VjKW4oG4M8OZAcgTlCAQSg++XjU=; b=xwyX+tWii0QqhhfSK/OyAgeY50
	uBVum+FowDklhooDBy2my1ZMeeUpxZwueknafwOS+W2yprPDNkkzy5sDeDqCbTlEPBIzmnPp1hGd2
	/7R1YQ0AGAyuyuH1qKEKrL3LhqElb6W9qXLd/bdeCEvp1g2E9OuINVjppRy1cqYJQ5iZ6fhjaonC5
	r1wuBQkHwAlS1iPlYXoyAH9DwtvAP+NCNJG18HMzA6Z3nhyrgtJefZu7aYcCHlIz0GWb68do8q5dv
	lO2TR/V1EfCFeEWgwI9O07ZN5dabI4mYB+TRumwCWmxn+dtmk8TySJS9fWYIJJ6/P37nxYPt/D7ZR
	zf0PANXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4bZ-00FGVQ-HK; Fri, 17 Feb 2023 17:33:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zk-00FFM4-BQ
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Za-0004E8-T3; Fri, 17 Feb 2023 18:31:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZZ-005dTv-0f; Fri, 17 Feb 2023 18:31:02 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZW-007ixt-2A; Fri, 17 Feb 2023 18:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:48 +0100
Message-Id: <20230217173057.1839835-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_093112_448285_8F694A53 
X-CRM114-Status: GOOD (  12.04  )
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
Subject: [PATCH v1 11/20] ARM: dts: AT91: use label-relative paths for extending nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We now have fancy new syntax for having label references be
both short and trigger an error if non-existent. Let's make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/at91-sama5d27_som1.dtsi   |  2 +-
 arch/arm/dts/at91-sama5d27_som1_ek.dts |  3 +-
 arch/arm/dts/at91-skov-arm9cpu.dts     |  8 ++---
 arch/arm/dts/at91sam9263ek.dts         | 44 ++++++++++++--------------
 4 files changed, 26 insertions(+), 31 deletions(-)

diff --git a/arch/arm/dts/at91-sama5d27_som1.dtsi b/arch/arm/dts/at91-sama5d27_som1.dtsi
index 0d84c45f9263..357f46e3097e 100644
--- a/arch/arm/dts/at91-sama5d27_som1.dtsi
+++ b/arch/arm/dts/at91-sama5d27_som1.dtsi
@@ -7,7 +7,7 @@
 	nvmem-cell-names = "mac-address";
 };
 
-&{/ahb/apb/i2c@f8028000/at24@50} {
+&{i2c0/at24@50} {
 	#address-cells = <1>;
 	#size-cells = <1>;
 
diff --git a/arch/arm/dts/at91-sama5d27_som1_ek.dts b/arch/arm/dts/at91-sama5d27_som1_ek.dts
index 1a704b42680f..a879c17cfcf9 100644
--- a/arch/arm/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/dts/at91-sama5d27_som1_ek.dts
@@ -30,9 +30,8 @@
 	};
 };
 
+/delete-node/ &{qspi1/flash@0};
 &qspi1 {
-	/delete-node/ flash@0;
-
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
diff --git a/arch/arm/dts/at91-skov-arm9cpu.dts b/arch/arm/dts/at91-skov-arm9cpu.dts
index 8e4fddfd3fa1..35988eff0652 100644
--- a/arch/arm/dts/at91-skov-arm9cpu.dts
+++ b/arch/arm/dts/at91-skov-arm9cpu.dts
@@ -204,13 +204,11 @@
 	};
 };
 
-&{/ahb/apb} {
-	pinctrl: pinctrl@fffff200 {
-	};
+pinctrl: &{/ahb/apb/pinctrl@fffff200} {
+};
 
-	watchdog@fffffd40 {
+&{/ahb/apb/watchdog@fffffd40} {
 		status = "okay";
-	};
 };
 
 &dbgu {
diff --git a/arch/arm/dts/at91sam9263ek.dts b/arch/arm/dts/at91sam9263ek.dts
index cce137e39422..522252d54f9b 100644
--- a/arch/arm/dts/at91sam9263ek.dts
+++ b/arch/arm/dts/at91sam9263ek.dts
@@ -9,34 +9,32 @@
 
 };
 
-&nand_controller {
-	nand@3 {
-		/delete-node/ partitions;
+&{nand_controller/nand@3} {
+	/delete-node/ partitions;
 
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
 
-			at91bootstrap@0 {
-				label = "at91bootstrap";
-				reg = <0x0 0x20000>;
-			};
+		at91bootstrap@0 {
+			label = "at91bootstrap";
+			reg = <0x0 0x20000>;
+		};
 
-			barebox@20000 {
-				label = "barebox";
-				reg = <0x20000 0x100000>;
-			};
+		barebox@20000 {
+			label = "barebox";
+			reg = <0x20000 0x100000>;
+		};
 
-			environment_nand: bareboxenv@120000 {
-				label = "barebox-environment";
-				reg = <0x120000 0x20000>;
-			};
+		environment_nand: bareboxenv@120000 {
+			label = "barebox-environment";
+			reg = <0x120000 0x20000>;
+		};
 
-			rootfs@140000 {
-				label = "root";
-				reg = <0x140000 0x0>;
-			};
+		rootfs@140000 {
+			label = "root";
+			reg = <0x140000 0x0>;
 		};
 	};
 };
-- 
2.30.2



