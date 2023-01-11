Delivery-date: Wed, 11 Jan 2023 18:42:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf7J-0091bU-EN
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 18:42:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf7H-0005mb-F2
	for lore@pengutronix.de; Wed, 11 Jan 2023 18:42:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nmCOevNFmxgyPIYD+8ZVdOJw7CMQfb0ORG7zlSZVR8I=; b=Svr+IcXk0UFrK3j0p5jJbbx7rz
	PyD7swRCHNh7+RgqlTx4ziIn7Rb6SWwtvEAhmVPuOPYNobrjvI/HYbwP0XpUKjlWHArcAOmURgIS0
	8iW7Sge+IC/ggpStUj7e4qzx5RvmAfqspwULgrFKC2OOAhcpywadz3kdBnPq+b6a3MEXU5AMMCklp
	aUZoQt9CbA5vyZR6XXm59lXDeBCwAeHYk++rGu8d9UxYwR7t1715IQxGA7nMIQnmOBhiKGsTyMsxq
	0v423cDnEjgFP90xc8e/CX/MHJ7lERFb8r2axbePH4G2CxhxJnfdf15jIj8peawVf4yoSmZZ0cODM
	YXp/IaTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf5w-00CTVJ-99; Wed, 11 Jan 2023 17:41:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf5S-00CTHu-Rm
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 17:40:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-00053f-JO; Wed, 11 Jan 2023 18:40:29 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5Q-005M6a-Vn; Wed, 11 Jan 2023 18:40:28 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5O-007DGo-K6; Wed, 11 Jan 2023 18:40:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 18:40:23 +0100
Message-Id: <20230111174023.1719129-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
References: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_094030_970202_9AB1D458 
X-CRM114-Status: GOOD (  10.82  )
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
Subject: [PATCH 15/15] ARM: AT91: sama5d3: always read memory size from controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

No need to hardcode sizes, sama5d3.dtsi has an "atmel,sama5d3-ddramc"
node, which we have a driver for that does dynamic memory size readout.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/at91-microchip-ksz9477-evb.dts | 4 ----
 arch/arm/dts/at91-sama5d3_xplained.dts      | 3 ---
 arch/arm/dts/sama5d3.dtsi                   | 3 +++
 3 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm/dts/at91-microchip-ksz9477-evb.dts b/arch/arm/dts/at91-microchip-ksz9477-evb.dts
index 3762361b5362..60efc77f69bd 100644
--- a/arch/arm/dts/at91-microchip-ksz9477-evb.dts
+++ b/arch/arm/dts/at91-microchip-ksz9477-evb.dts
@@ -13,10 +13,6 @@
 	};
 };
 
-&{/memory@20000000} {
-	reg = <0x20000000 0x10000000>;
-};
-
 &reg_vcc_mmc0 {
 	status = "disabled";
 };
diff --git a/arch/arm/dts/at91-sama5d3_xplained.dts b/arch/arm/dts/at91-sama5d3_xplained.dts
index b734457214eb..1580bd29f814 100644
--- a/arch/arm/dts/at91-sama5d3_xplained.dts
+++ b/arch/arm/dts/at91-sama5d3_xplained.dts
@@ -19,6 +19,3 @@
 		};
 	};
 };
-
-/* Will be automatically read back from HW */
-/delete-node/ &{/memory@20000000};
diff --git a/arch/arm/dts/sama5d3.dtsi b/arch/arm/dts/sama5d3.dtsi
index 84fc1d0ed431..658292792fb7 100644
--- a/arch/arm/dts/sama5d3.dtsi
+++ b/arch/arm/dts/sama5d3.dtsi
@@ -5,3 +5,6 @@
 		mmc1 = &mmc1;
 	};
 };
+
+/* Will be automatically read back from HW */
+/delete-node/ &{/memory@20000000};
-- 
2.30.2



