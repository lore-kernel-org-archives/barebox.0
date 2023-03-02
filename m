Delivery-date: Thu, 02 Mar 2023 11:41:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNW-006TS0-Cr
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 11:41:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNW-0003Gw-79
	for lore@pengutronix.de; Thu, 02 Mar 2023 11:41:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C2IAZk3Zc0zvmMtCtLsMRf3yjpAJV/6VskxmfrlfATg=; b=vmUgZGOgfzN00ZX3x0Qug5MlwN
	bYqMw40+Z9mz5AQrfaZEN6asITYyMndJk40SSF0wRw52q692F1csol3elZ1i94yRHVSLEbYxwn8XP
	SDrYTesQ9Y9K3wuALypYjcHUz7kAJmk5k6OJgqfWZ00HfO8Y10VTbkJChM9yyoguPY3H43OzJiwPT
	lycZ7xyd9ST/6qA5O4gAwGAP9r4WVqL8h+ruywNKAEZNLZMBPHUNSA+94wgtGgoNoUKWnZsYEoGp4
	QqiBb3oD9eBKr/xjLsKPWxIBhKrCcIdxB+7z2sJipVOM06ZlItgCRAdsSqzuTczLk1MEAzuOUZtMp
	WYTbAzQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgM7-001hIz-8L; Thu, 02 Mar 2023 10:40:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgLr-001hE7-OA
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 10:39:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLk-0002W2-9E; Thu, 02 Mar 2023 11:39:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLh-001J5L-Ps; Thu, 02 Mar 2023 11:39:45 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLg-003wZ9-IL; Thu, 02 Mar 2023 11:39:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 11:39:40 +0100
Message-Id: <20230302103943.939422-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302103943.939422-1-s.hauer@pengutronix.de>
References: <20230302103943.939422-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_023955_844471_E414B93C 
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] ARM: dts: Fix dtc warnings in barebox,environment nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some environment nodes have a unit name, but no reg property. Remove
the unit name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6qdl-prti6q-emmc.dtsi | 2 +-
 arch/arm/dts/imx6ul-prti6g.dts        | 2 +-
 arch/arm/dts/imx6ull-jozacp.dts       | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi b/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
index 581ff349a4..c9c75a9ade 100644
--- a/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
+++ b/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
@@ -8,7 +8,7 @@
 	chosen {
 		stdout-path = &uart4;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &env_sd3;
 		};
diff --git a/arch/arm/dts/imx6ul-prti6g.dts b/arch/arm/dts/imx6ul-prti6g.dts
index 3efbf357f1..23fafa0dce 100644
--- a/arch/arm/dts/imx6ul-prti6g.dts
+++ b/arch/arm/dts/imx6ul-prti6g.dts
@@ -7,7 +7,7 @@
 	chosen {
 		stdout-path = &uart4;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &env_sd2;
 		};
diff --git a/arch/arm/dts/imx6ull-jozacp.dts b/arch/arm/dts/imx6ull-jozacp.dts
index c30ba759ee..612dac67ca 100644
--- a/arch/arm/dts/imx6ull-jozacp.dts
+++ b/arch/arm/dts/imx6ull-jozacp.dts
@@ -7,7 +7,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &env_sd1;
 		};
-- 
2.30.2



