Delivery-date: Tue, 26 Nov 2024 16:34:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxaG-000flI-2X
	for lore@lore.pengutronix.de;
	Tue, 26 Nov 2024 16:34:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxaG-0001bp-9c
	for lore@pengutronix.de; Tue, 26 Nov 2024 16:34:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2CWE1fIhwPOKf2aTj0/tOkvRfUAfY2pJjT/xtHIialE=; b=OKkuDJF1S/kSq5wt4BR8D4gHpE
	Of4x6RR2UB/sv+LXS4O369u8MO+GACnuyuoIyOheuWqI3MvoWFKnOdaztR6SfsdbxepRzzBnECq/2
	cXRrafrQiEX0dfcvaMGxbdd053yB1lUu4w57hTs7x9t2sE1oA3tuWJIVmCugPsWmaH5dxib7d1sG6
	BE8YFLzC+CVs73YH0FXgjqrW4ehgbSeQQAN4nUkyBvPpFTfc+uzOIPJiV7tz4by8MPo9e/kKu6QW9
	KuFCHijlj2uZ4Z8ybLemKtjbRNLdoeM1ailUK/q9F40qOrlauq7PdcNTSIfjcjrFyeODu7XI2Ns5l
	uW7Qgnxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxZq-0000000B12K-09fw;
	Tue, 26 Nov 2024 15:34:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxZ5-0000000B0rv-1Coy
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 15:33:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYw-0000wG-11; Tue, 26 Nov 2024 16:33:14 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYv-000GuF-08;
	Tue, 26 Nov 2024 16:33:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYv-00Fme2-0L;
	Tue, 26 Nov 2024 16:33:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Nov 2024 16:33:12 +0100
Message-Id: <20241126153312.3758355-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241126153312.3758355-1-a.fatoum@pengutronix.de>
References: <20241126153312.3758355-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_073323_330912_ACF4DF09 
X-CRM114-Status: UNSURE (   9.58  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] sandbox: switch to new barebox environment binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To have an in-tree user for the barebox environment binding, let's
switch over the sandbox DT to use it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/dts/sandbox.dts | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index cf47513c76fe..ec00301d0980 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -12,13 +12,6 @@ aliases {
 		state = &state;
 	};
 
-	chosen {
-		environment {
-			compatible = "barebox,environment";
-			device-path = &part_env;
-		};
-	};
-
 	memory {
 		device_type = "memory";
 		reg = <0 0 0 0>;
@@ -132,6 +125,7 @@ reboot_mode: reboot-mode@1 {
 			};
 
 			part_env: env@400 {
+				compatible = "barebox,environment";
 				reg = <0x400 0x800>;
 				label = "env";
 			};
-- 
2.39.5



