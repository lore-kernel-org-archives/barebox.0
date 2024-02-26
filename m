Delivery-date: Mon, 26 Feb 2024 16:32:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1recxc-008E1j-0O
	for lore@lore.pengutronix.de;
	Mon, 26 Feb 2024 16:32:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1recxb-0006AF-Fb
	for lore@pengutronix.de; Mon, 26 Feb 2024 16:32:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jNZ3UHYJfJ2XGtH9nZQbnbr/+0ztIqgAAkVQVw9ZA6k=; b=EEFOK8FBRM3y7grDasYnvYiT5z
	Z5rhF3NV1qY/ecPY77Ge808R7mV2vsLx/cWFENhRMD4v4v0iZ9hIEAZiFsLoCGGVJg93f2NILnHoD
	d6i01eMF7P1h6crARcThcJ93mnhwGDXcq7mBdgbQ0I78zSfPdSOcFvhsLv1ezF+aVpLHnCa9MgKtP
	Ic7Wj5AELnQWsXdwNL+amfqWYmnlgee7W6mXhOwfkupK872JGOKpZcrrHb4QS481Guj+C4nwOIqZv
	ifLakdIwGJatiOA8xd+1b2I6ZOice4hJodKqwRHISaHv3sjKXZ25WAXPYBudQq0xKiFao5zVNbKNa
	P7KrUIdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1recwv-00000001RgU-2JBA;
	Mon, 26 Feb 2024 15:31:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1recws-00000001Rfo-2VaD
	for barebox@lists.infradead.org;
	Mon, 26 Feb 2024 15:31:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1recwo-0005yx-Tv; Mon, 26 Feb 2024 16:31:18 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1recwo-0031TF-HL; Mon, 26 Feb 2024 16:31:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1recwo-0037K9-1O;
	Mon, 26 Feb 2024 16:31:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 26 Feb 2024 16:31:17 +0100
Message-Id: <20240226153117.743128-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_073122_655839_83DA7B6F 
X-CRM114-Status: GOOD (  12.56  )
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
Subject: [PATCH] ARM: i.MX: move barebox,bootsource-mmc aliases to chosen node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox,bootsource-* properties are looked for in /chosen, not in
/aliases. Move the properties to the correct node.

Fixes: 7eedf79ba9 ("ARM: i.MX: add barebox,bootsource-mmc aliases")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx51.dtsi   | 3 +++
 arch/arm/dts/imx53.dtsi   | 3 +++
 arch/arm/dts/imx6qdl.dtsi | 3 +++
 arch/arm/dts/imx8mm.dtsi  | 3 +++
 arch/arm/dts/imx8mn.dtsi  | 3 +++
 arch/arm/dts/imx8mp.dtsi  | 3 +++
 arch/arm/dts/imx8mq.dtsi  | 2 +-
 arch/arm/dts/imx93.dtsi   | 2 +-
 8 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx51.dtsi b/arch/arm/dts/imx51.dtsi
index 2be6b955e2..521f182d20 100644
--- a/arch/arm/dts/imx51.dtsi
+++ b/arch/arm/dts/imx51.dtsi
@@ -2,6 +2,9 @@ /{
 	aliases {
 		pwm0 = &pwm1;
 		pwm1 = &pwm2;
+	};
+
+	chosen {
 		barebox,bootsource-mmc0 = &esdhc1;
 		barebox,bootsource-mmc1 = &esdhc2;
 		barebox,bootsource-mmc2 = &esdhc3;
diff --git a/arch/arm/dts/imx53.dtsi b/arch/arm/dts/imx53.dtsi
index 5be1d7a53f..0fd05f9b51 100644
--- a/arch/arm/dts/imx53.dtsi
+++ b/arch/arm/dts/imx53.dtsi
@@ -3,6 +3,9 @@ aliases {
 		pwm0 = &pwm1;
 		pwm1 = &pwm2;
 		ipu0 = &ipu;
+	};
+
+	chosen {
 		barebox,bootsource-mmc0 = &esdhc1;
 		barebox,bootsource-mmc1 = &esdhc2;
 		barebox,bootsource-mmc2 = &esdhc3;
diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
index 5afb772a84..6f58804ed3 100644
--- a/arch/arm/dts/imx6qdl.dtsi
+++ b/arch/arm/dts/imx6qdl.dtsi
@@ -7,6 +7,9 @@ aliases {
 		pwm3 = &pwm4;
 		ipu0 = &ipu1;
 		gpr.reboot_mode = &reboot_mode_gpr;
+	};
+
+	chosen {
 		barebox,bootsource-mmc0 = &usdhc1;
 		barebox,bootsource-mmc1 = &usdhc2;
 		barebox,bootsource-mmc2 = &usdhc3;
diff --git a/arch/arm/dts/imx8mm.dtsi b/arch/arm/dts/imx8mm.dtsi
index d3d0129421..01f74c1074 100644
--- a/arch/arm/dts/imx8mm.dtsi
+++ b/arch/arm/dts/imx8mm.dtsi
@@ -9,6 +9,9 @@ aliases {
 		pwm1 = &pwm2;
 		pwm2 = &pwm3;
 		pwm3 = &pwm4;
+	};
+
+	chosen {
 		barebox,bootsource-mmc0 = &usdhc1;
 		barebox,bootsource-mmc1 = &usdhc2;
 		barebox,bootsource-mmc2 = &usdhc3;
diff --git a/arch/arm/dts/imx8mn.dtsi b/arch/arm/dts/imx8mn.dtsi
index 6f3f943548..9aa787ea25 100644
--- a/arch/arm/dts/imx8mn.dtsi
+++ b/arch/arm/dts/imx8mn.dtsi
@@ -8,6 +8,9 @@ aliases {
 		pwm1 = &pwm2;
 		pwm2 = &pwm3;
 		pwm3 = &pwm4;
+	};
+
+	chosen {
 		barebox,bootsource-mmc0 = &usdhc1;
 		barebox,bootsource-mmc1 = &usdhc2;
 		barebox,bootsource-mmc2 = &usdhc3;
diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index 6c84cfb211..4d1f1bf588 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -14,6 +14,9 @@ aliases {
 		pwm1 = &pwm2;
 		pwm2 = &pwm3;
 		pwm3 = &pwm4;
+	};
+
+	chosen {
 		barebox,bootsource-mmc0 = &usdhc1;
 		barebox,bootsource-mmc1 = &usdhc2;
 		barebox,bootsource-mmc2 = &usdhc3;
diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
index d90afbe628..7cdbafcffe 100644
--- a/arch/arm/dts/imx8mq.dtsi
+++ b/arch/arm/dts/imx8mq.dtsi
@@ -5,7 +5,7 @@
  */
 
 / {
-	aliases {
+	chosen {
 		barebox,bootsource-mmc0 = &usdhc1;
 		barebox,bootsource-mmc1 = &usdhc2;
 	};
diff --git a/arch/arm/dts/imx93.dtsi b/arch/arm/dts/imx93.dtsi
index dd24c732d3..b931586d74 100644
--- a/arch/arm/dts/imx93.dtsi
+++ b/arch/arm/dts/imx93.dtsi
@@ -1,5 +1,5 @@
 /{
-	aliases {
+	chosen {
 		barebox,bootsource-mmc0 = &usdhc1;
 		barebox,bootsource-mmc1 = &usdhc2;
 		barebox,bootsource-mmc2 = &usdhc3;
-- 
2.39.2



