Delivery-date: Fri, 17 Feb 2023 18:32:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4ap-00AI2c-Gv
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:32:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4ao-0004i6-20
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:32:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PQNdDSCfpt2bfpLwZEToJR4E7oxvEWBq3mi/Ni3o5kI=; b=whZVf8WXhO1bR+ZlLHjI+O6moB
	IAPBroNZxwWdYgsCPgTYeir/9dmSWHVAWaE3XA1s80fli37Nzx9+bw9PZDiVCwXt6kQCZLhTyM0LF
	jezrOZBrqOirvvPviXYPyNnNJfiao/Jc6xohRLKcywHG9x/5avJldXxuhdyCJNS1CxKdR+8fRqFsi
	CezI+yAKObdWWn0m1LJahidh8kLBi1vOxakLf9pVf1l7g90bBFI1Hyxew5i6UvDaP88r1zvljkvj5
	+/CLudx9UjfMFt5ySPMpUciEhWo09f3zfnnM3CpvbVEJ1TrT/ZU0nJbBlSY2M/ndDxSJ9A7AvEEqZ
	ycu6mBFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zz-00FFRk-BD; Fri, 17 Feb 2023 17:31:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Za-00FFFf-Ol
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZZ-0004Ab-8M; Fri, 17 Feb 2023 18:31:01 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZX-005dTI-6S; Fri, 17 Feb 2023 18:31:00 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZW-007iyE-3t; Fri, 17 Feb 2023 18:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:55 +0100
Message-Id: <20230217173057.1839835-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_093102_869006_3B87B617 
X-CRM114-Status: UNSURE (   9.18  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 18/20] ARM: dts: socfpga: cut down on NAND node duplication
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Compared with the upstream DT, we have a lot of duplicated properties,
so let's drop them from the barebox override.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/socfpga_cyclone5_socdk.dts    | 20 +------
 arch/arm/dts/socfpga_cyclone5_socrates.dts | 69 +++++++++-------------
 2 files changed, 30 insertions(+), 59 deletions(-)

diff --git a/arch/arm/dts/socfpga_cyclone5_socdk.dts b/arch/arm/dts/socfpga_cyclone5_socdk.dts
index f0a6ae98edf3..0dfd5ebaed6e 100644
--- a/arch/arm/dts/socfpga_cyclone5_socdk.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socdk.dts
@@ -31,22 +31,6 @@
 	};
 };
 
-&qspi {
-	status = "okay";
-
-	flash: flash@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "n25q00";
-		reg = <0>;
-		spi-max-frequency = <108000000>;
-		m25p,fast-read;
-		cdns,page-size = <256>;
-		cdns,block-size = <16>;
-		cdns,read-delay = <4>;
-		cdns,tshsl-ns = <50>;
-		cdns,tsd2d-ns = <50>;
-		cdns,tchsh-ns = <4>;
-		cdns,tslch-ns = <4>;
-	};
+&flash0 {
+	compatible = "n25q00";
 };
diff --git a/arch/arm/dts/socfpga_cyclone5_socrates.dts b/arch/arm/dts/socfpga_cyclone5_socrates.dts
index e731b55a6c8b..dd45140cbab5 100644
--- a/arch/arm/dts/socfpga_cyclone5_socrates.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socrates.dts
@@ -34,52 +34,39 @@
 	};
 };
 
-&qspi {
-	status = "okay";
+&flash {
+	compatible = "n25q00";
+	cdns,page-size = <256>;
+	cdns,block-size = <16>;
+	cdns,read-delay = <4>;
 
-	flash: flash@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "n25q00";
-		reg = <0>;
-		spi-max-frequency = <100000000>;
-		m25p,fast-read;
-		cdns,page-size = <256>;
-		cdns,block-size = <16>;
-		cdns,read-delay = <4>;
-		cdns,tshsl-ns = <50>;
-		cdns,tsd2d-ns = <50>;
-		cdns,tchsh-ns = <4>;
-		cdns,tslch-ns = <4>;
-
-		partition@0 {
-			label = "prebootloader0";
-			reg = <0x00000 0x10000>;
-		};
+	partition@0 {
+		label = "prebootloader0";
+		reg = <0x00000 0x10000>;
+	};
 
-		partition@1 {
-			label = "prebootloader1";
-			reg = <0x10000 0x10000>;
-		};
+	partition@1 {
+		label = "prebootloader1";
+		reg = <0x10000 0x10000>;
+	};
 
-		partition@2 {
-			label = "prebootloader2";
-			reg = <0x20000 0x10000>;
-		};
+	partition@2 {
+		label = "prebootloader2";
+		reg = <0x20000 0x10000>;
+	};
 
-		partition@3 {
-			label = "prebootloader3";
-			reg = <0x30000 0x10000>;
-		};
+	partition@3 {
+		label = "prebootloader3";
+		reg = <0x30000 0x10000>;
+	};
 
-		partition@4 {
-			label = "barebox";
-			reg = <0x40000 0x80000>;
-		};
+	partition@4 {
+		label = "barebox";
+		reg = <0x40000 0x80000>;
+	};
 
-		partition@5 {
-			label = "data";
-			reg = <0xc0000 0x1f40000>;
-		};
+	partition@5 {
+		label = "data";
+		reg = <0xc0000 0x1f40000>;
 	};
 };
-- 
2.30.2



