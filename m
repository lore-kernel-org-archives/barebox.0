Delivery-date: Thu, 05 Dec 2024 09:57:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJ7gF-004GEY-0f
	for lore@lore.pengutronix.de;
	Thu, 05 Dec 2024 09:57:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJ7gF-0002DN-3j
	for lore@pengutronix.de; Thu, 05 Dec 2024 09:57:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GrpTIkASOhuPYzISapfdGXGjUPWb8RujzufmNylGFfY=; b=0tpc52v2a9u6hTRjOIYZ7e/Esp
	lbsiUcErY3J6nm3Y29lIYB+k7XNH1Gjm8ochR1i5yyFJ374Ar1jzpn0yI10BqBqZBH4Bkhlje3fHr
	Hs7ofJfhGx4tt762Jz7uEHkxnjkTth019vo65kdxtxw+gY8S8EhIzzQRDbnLUAhhdZBZTi0le32/M
	7qBXL+QPwPrfPEFq1CV9ChIQ/NryT/X+5SWOlPrvlBF+1KtsVkcJdGpL+RPVI+yO8N5BcrzsCMfye
	4WNDLGouiD5ltLml2n2BOGEDOU0pQuVHLEkkvZ7LiOOs8VOpV47Q7CR4nmXKaxJyL4Q5VggCL9Ml1
	SF2cjCrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ7fd-0000000FFn1-3b7h;
	Thu, 05 Dec 2024 08:57:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ7e7-0000000FFRx-1Ulc
	for barebox@lists.infradead.org;
	Thu, 05 Dec 2024 08:55:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJ7e4-0001vR-4q; Thu, 05 Dec 2024 09:55:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJ7e3-001nI0-0c;
	Thu, 05 Dec 2024 09:55:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJ7e3-00GLtK-2l;
	Thu, 05 Dec 2024 09:55:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  5 Dec 2024 09:55:30 +0100
Message-Id: <20241205085530.3897385-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241205085530.3897385-1-s.hauer@pengutronix.de>
References: <20241205085530.3897385-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_005539_392780_59380458 
X-CRM114-Status: GOOD (  11.63  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: dts: Use upstream eMMC boot partition binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox supports partitioning the eMMC boot partitions via device tree.
Linux recently gained that functionality as well, but with different
node names. Update the node names to the Linux binding.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx50-kindle-common.dtsi | 2 +-
 arch/arm/dts/imx7d-phyboard-zeta.dts  | 2 +-
 arch/arm/dts/imx7s-warp.dts           | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx50-kindle-common.dtsi b/arch/arm/dts/imx50-kindle-common.dtsi
index 92933e6912..c286dcb2e9 100644
--- a/arch/arm/dts/imx50-kindle-common.dtsi
+++ b/arch/arm/dts/imx50-kindle-common.dtsi
@@ -153,7 +153,7 @@ diags_kernel: diags_kernel@e41000 {
 		};
 	};
 
-	boot0-partitions {
+	partitions-boot1 {
 		compatible = "fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm/dts/imx7d-phyboard-zeta.dts b/arch/arm/dts/imx7d-phyboard-zeta.dts
index a34f12f616..211c72604e 100644
--- a/arch/arm/dts/imx7d-phyboard-zeta.dts
+++ b/arch/arm/dts/imx7d-phyboard-zeta.dts
@@ -37,7 +37,7 @@ &fec1 {
 &usdhc3 {
 	status = "okay";
 
-	boot0-partitions {
+	partitions-boot1 {
 		compatible = "fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm/dts/imx7s-warp.dts b/arch/arm/dts/imx7s-warp.dts
index 3cae11b6a2..d84b9ed434 100644
--- a/arch/arm/dts/imx7s-warp.dts
+++ b/arch/arm/dts/imx7s-warp.dts
@@ -21,7 +21,7 @@ environment {
 };
 
 &usdhc3 {
-	boot0-partitions {
+	partitions-boot1 {
 		compatible = "fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.39.5



