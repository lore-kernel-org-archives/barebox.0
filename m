Delivery-date: Wed, 22 Nov 2023 19:13:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rie-004gHb-0N
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 19:13:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rie-0001Eb-7B
	for lore@pengutronix.de; Wed, 22 Nov 2023 19:13:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9FlXvT0SgWRoYoVIn9j9PUHv7ZXHa8vVzeDMrISqHw0=; b=u8pMOmElq9RHNPveEnIjwVZVtW
	UnfM7lTe7EkcdWptbgJmkRK0WNTvehcYZA1xKI2OEyMrWvl4PsGJ71GB4spdTsUNHgY2iSEtiPKbj
	rhfhOWqHIffEvia/6Ld0qgn3qhg+3KV3LlFa+yG7+aJXZHbBFPMO6H13WLX755SJfJIRNmztCUrS+
	tRsAgA1mmQ4Bxl33LUvuAVZN4mBNPlziGhS+9MJe/fIyUX5f3U0HHuTWCDSHJMzSGMez+lJyF+Uc9
	/s/OLcKxSR/HCph6KKbS+9qyItNbyjqU0dTKdEdToLWxznDlxvaXsbt7C4d0uigl2IsF5rg++3EdE
	zeK68fgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rhE-002lp4-12;
	Wed, 22 Nov 2023 18:11:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rh6-002llv-2u
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 18:11:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh3-0000ah-AO; Wed, 22 Nov 2023 19:11:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh2-00As0y-Tw; Wed, 22 Nov 2023 19:11:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh2-002Wed-2d;
	Wed, 22 Nov 2023 19:11:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 19:11:11 +0100
Message-Id: <20231122181116.591131-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122181116.591131-1-a.fatoum@pengutronix.de>
References: <20231122181116.591131-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_101124_986233_C6FD179A 
X-CRM114-Status: GOOD (  10.69  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/7] ARM: dts: stm32mp: fix model string for stm32mp135f-dk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

STM32MP153 is another SoC. Fix the typo.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp135f-dk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/stm32mp135f-dk.dts b/arch/arm/dts/stm32mp135f-dk.dts
index a4e6614c4a38..f07f7f5536fe 100644
--- a/arch/arm/dts/stm32mp135f-dk.dts
+++ b/arch/arm/dts/stm32mp135f-dk.dts
@@ -4,5 +4,5 @@
 #include "stm32mp131.dtsi"
 
 / {
-	model = "STM32MP153F-DK";
+	model = "STM32MP135F-DK";
 };
-- 
2.39.2



