Delivery-date: Wed, 31 Aug 2022 14:54:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTNEt-002dcy-UN
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 14:54:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTNEu-00070d-2l
	for lore@pengutronix.de; Wed, 31 Aug 2022 14:54:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t4n5OjmJgZPy0BlLwg7kSR2zxcVHpr7/FjUcEuvmh80=; b=q7TU51AdfabxQ20ZPLz0pZ6i4d
	tzhaqX5rCuZaUpL6v0un6TSMgN/upvGDEV2qWJ9EofvDHDBlMiwTSzlQ54gzaZR97M8gBaXW4mgWm
	7gXI26BFvBAIHaImcKp03L8eyzAADMHc/mRnG5ZNywxsj83N2GagsHCLoOpmqFy6Vc7r1+Sfy6v6c
	nHsRLd4GFk1zq/ryHGveOM70QfA93cl1AX4nCY72+yyvO3AC+ISqwLV3KIV3KsCEij7zRme/qdLaH
	uNp+TxENntwGatj61cCmHaS6z8kEPN5mUQUECp1JYjGGEfs87nkj1BOsJQ0ceYL6WOKnSkVChGACL
	qr3v/Q9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTNDJ-00691F-95; Wed, 31 Aug 2022 12:53:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTNDE-0068y8-Lz
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 12:52:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND9-0006Tr-DB; Wed, 31 Aug 2022 14:52:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND8-0034Ov-N4; Wed, 31 Aug 2022 14:52:50 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND7-0091WL-KG; Wed, 31 Aug 2022 14:52:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Aug 2022 14:52:47 +0200
Message-Id: <20220831125248.2105893-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220831125248.2105893-1-s.hauer@pengutronix.de>
References: <20220831125248.2105893-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_055256_782980_F86355F3 
X-CRM114-Status: UNSURE (   8.38  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/6] Revert "ARM: i.MX8MM: assume USBOTG power domains to be powered"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

This was a workaround and the barebox gpcv2 driver has since gained
support for the i.MX8M Mini, so we can drop the device tree level
override again.

This reverts commit e30131c06b2b81bfc458fa9bbaa30b2e3a6dad88.
---
 arch/arm/dts/imx8mm.dtsi | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/dts/imx8mm.dtsi b/arch/arm/dts/imx8mm.dtsi
index cdf2128205..78bbacb2b1 100644
--- a/arch/arm/dts/imx8mm.dtsi
+++ b/arch/arm/dts/imx8mm.dtsi
@@ -5,14 +5,6 @@
 	};
 };
 
-&pgc_otg1 {
-	barebox,allow-dummy;
-};
-
-&pgc_otg2 {
-	barebox,allow-dummy;
-};
-
 &src {
 	compatible = "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon", "simple-mfd";
 
-- 
2.30.2



