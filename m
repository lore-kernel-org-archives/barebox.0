Delivery-date: Mon, 04 Jul 2022 18:50:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8PHX-005hdd-D7
	for lore@lore.pengutronix.de; Mon, 04 Jul 2022 18:50:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8PHZ-0001mt-Cw
	for lore@pengutronix.de; Mon, 04 Jul 2022 18:50:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Iwl9XCfIhq5YQ8y7nnsiRP0fRpDpT66toNbnz2+YDqw=; b=gAMNRQsLYEjNXhjhlqrk45P+Qy
	a7YTsKaMV3R6GEIsymqa/+c8qe8Z7iTnBy5RepP/yqYhZHk2RepxfdW703TBu43FWy8Ybcvzqut3m
	WcUHVni2jpUltcvurVvu6pJJ6LWCSIXsQzLXTsGT38Yr8v6UEmPm7tl20we+G/3L1J2tm7ReoldWg
	wIU6h1VXdSNZWRWnixvAhEtNvoEd5I8z9sRGmZgSpm1X6rJjiQq0Q0cTQattDGIjqrcfO92loFMxm
	NmfCkEKPYHEbEmiA2gQLjTNu/Rob7U/yTM6CiMCFei6RADtce+4+s57Pjx2ORGCoucaR6CkjdGa66
	ahWRultw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8PFr-00A78Y-J8; Mon, 04 Jul 2022 16:48:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8PFm-00A778-Ai
	for barebox@lists.infradead.org; Mon, 04 Jul 2022 16:48:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o8PFh-0001XC-OM
	for barebox@lists.infradead.org; Mon, 04 Jul 2022 18:48:49 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o8PFd-004PDg-HJ
	for barebox@lists.infradead.org; Mon, 04 Jul 2022 18:48:49 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o8PFg-002TKf-7O
	for barebox@lists.infradead.org; Mon, 04 Jul 2022 18:48:48 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  4 Jul 2022 18:48:46 +0200
Message-Id: <20220704164846.589359-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_094854_402231_4F7E3735 
X-CRM114-Status: UNSURE (   8.49  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX8MN: fix phy-reset gpio
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Drop the Barebox local 'phy-reset-gpios' property since the
upstream/linux device-tree is handling it now within the ethernet-phy
node and we get an error:

gpiolib: _gpio_request: gpio-118 (ethernet-phy@0) status -16
miibus0: failed to request reset gpio for: ethernet-phy@0

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx8mn-evk.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/dts/imx8mn-evk.dts b/arch/arm/dts/imx8mn-evk.dts
index b8e7e1acf5..8a0e92b299 100644
--- a/arch/arm/dts/imx8mn-evk.dts
+++ b/arch/arm/dts/imx8mn-evk.dts
@@ -23,10 +23,6 @@
 	};
 };
 
-&fec1 {
-	phy-reset-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
-};
-
 &usdhc2 {
 	#address-cells = <1>;
 	#size-cells = <1>;
-- 
2.30.2



