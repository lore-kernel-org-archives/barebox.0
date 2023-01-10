Delivery-date: Tue, 10 Jan 2023 16:52:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGvL-007uhJ-72
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 16:52:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGvJ-00017k-Cw
	for lore@pengutronix.de; Tue, 10 Jan 2023 16:52:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t118/SAuvKTVnahHyX9B5rF3Cihrr2KH8uK/ATqHNz0=; b=sv0qif0evqck5ttcSlvurc2TE4
	nCvgu3ru+jxoBHyMvMbcz3cFFJGEN6/g3sV2ntO9jRAe7oDt2a662WiJrzkEECKGZDQ7oZRwzxOaT
	ljRilAaIfSwRkqZC3QSez9td8YdjkSNzdJIaNr4covKQdHcH+L3IuZ6Idw0HZAMd3Kxt5HhEX7rRH
	38mIdIW/7eiVLo8HJ1s35HAHjB8Jglr89FNOOGpgyrXjHgxew6ZmQzPQoZzh4inyS9jFRSYNdnRCi
	fsTZxMR5uVz1d1/4OuDKp54zYZ1GLEsBvLgefOgHGX0lo5Q53l+yboW02VmrtOmCmgYhaG82j+Uoy
	yPK/XdNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGtv-007eqm-J8; Tue, 10 Jan 2023 15:50:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGtm-007eow-4Y
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 15:50:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFGti-0000ni-6K; Tue, 10 Jan 2023 16:50:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pFGth-0056o6-Ii; Tue, 10 Jan 2023 16:50:45 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pFGtg-008Zhf-J0; Tue, 10 Jan 2023 16:50:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 10 Jan 2023 16:50:39 +0100
Message-Id: <20230110155039.2039341-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230110155039.2039341-1-s.hauer@pengutronix.de>
References: <20230110155039.2039341-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_075050_212032_FF178D90 
X-CRM114-Status: GOOD (  12.16  )
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
Subject: [PATCH 3/3] ARM: dts: rpi3: Enable sdhci controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We disabled the sdhci controller in the devicetree because trying
to detect the attached SDIO resulted in annoying error messages.
As we can now gracefully detect SDIO cards we can enable the
controller. This has the advantage that Linux gains WiFi support
when the kernel is started with the barebox live tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/bcm2837-rpi-3.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/dts/bcm2837-rpi-3.dts b/arch/arm/dts/bcm2837-rpi-3.dts
index e82d518fa5..38d673aec4 100644
--- a/arch/arm/dts/bcm2837-rpi-3.dts
+++ b/arch/arm/dts/bcm2837-rpi-3.dts
@@ -3,7 +3,3 @@
 &{/memory@0} {
 	reg = <0x0 0x0>;
 };
-
-&sdhci {
-	status = "disabled";
-};
-- 
2.30.2



