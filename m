Delivery-date: Thu, 16 Jun 2022 16:06:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1q96-003yyr-QB
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 16:06:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1q96-0002su-Ga
	for lore@pengutronix.de; Thu, 16 Jun 2022 16:06:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=M1qq+CjKno7hIE6bVR1nAXPhNrMKIjkm9TI6f5XDLxs=; b=uIUAjBd2IONq0i0PJVoRS7UkIg
	h0Qq4QBSHkxy8HgowNt6cwTjEhMyIhrDDuhn0wOEHfdTrhsU6/zurnNFg/5hk8jyB93ydDDm2H22E
	xOlu7UuT9rDDt7+byJzC1lovrHa9TyhODQ06eO6F3BsbuAyKikPAE5FVxs2rUdAIYY2Cvv0+DMEZh
	n2Fz2hRvWp/muw9R4oSaHPIqbKIxwiNCDsDcgTiGp3LgLbUcfysWKQPr009nLYn119+2CMfL8E1Gw
	G7kdlK7kFcqqWjPVzEw7MobF210oTC4akQ31oaXYUx9IQgL6Vc/HaOfXiJVYRgiVtrdMdhWSn64Rr
	hYpGUO8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1q7m-002hr7-Fv; Thu, 16 Jun 2022 14:05:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1q5F-002gdk-5g
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 14:02:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o1q5C-0001hb-6f
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 16:02:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o1q59-000sfx-B3
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 16:02:48 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o1q59-009G6j-UP
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 16:02:47 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 16:02:45 +0200
Message-Id: <20220616140246.2191569-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_070253_239687_9BDB552E 
X-CRM114-Status: UNSURE (   7.92  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX8MM: fix phy-reset gpio
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Drop the Barebox local property since the upstream/linux device-tree is
handling it now within the phy and we get an error:

   ERROR: gpiolib: _gpio_request: gpio-118 (ethernet-phy@0) status -16
   ERROR: miibus0: failed to request reset gpio for: ethernet-phy@0

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx8mm-evk.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/dts/imx8mm-evk.dts b/arch/arm/dts/imx8mm-evk.dts
index 304f150307..854e9db869 100644
--- a/arch/arm/dts/imx8mm-evk.dts
+++ b/arch/arm/dts/imx8mm-evk.dts
@@ -24,10 +24,6 @@
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



