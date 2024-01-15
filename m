Delivery-date: Mon, 15 Jan 2024 16:57:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPPLT-000KbX-06
	for lore@lore.pengutronix.de;
	Mon, 15 Jan 2024 16:57:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPPLT-0007Q8-PF
	for lore@pengutronix.de; Mon, 15 Jan 2024 16:57:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KNN0he8jH/6JN2sjTtY0f9GvCmyhnoYCF1Dia1ga1/c=; b=Uu3ZwSG14ef6p8/B8wpCrEQe60
	CCKzAuapLiK1iusPoj/mrMfnVWjyxPOvEYup5FJmIqkY7XNAlxwtqRDzyMk3E1kA9xZF4TxokQDos
	6OjojyVMIUeYg/kdZj5WFGHzVkmu5zVwns5ZcBCErtHuDPJJR3c4rigM21FjWHGtKYKxtugzCe14q
	BEvFqrqT3E8ZekkOuTPJpPC1Wb6dDp75lnDVyFr+UUyAOn8pS5nsYVf5E0Uc8wW06Rka20gWgXKhH
	4esjBd18syY9CXUVM3hyGfZaS2khqN5Tgn758PwcOZaqbBz9PB8J/5aiYd/BmEHQcfBW4u0hRilxJ
	mtBtyyew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPK8-009VDC-36;
	Mon, 15 Jan 2024 15:56:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPK5-009V4c-16
	for barebox@lists.infradead.org;
	Mon, 15 Jan 2024 15:56:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPPJy-0007Ex-Lt; Mon, 15 Jan 2024 16:56:18 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPPJx-00032A-CE; Mon, 15 Jan 2024 16:56:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPPJx-0040AY-0q;
	Mon, 15 Jan 2024 16:56:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 15 Jan 2024 16:56:14 +0100
Message-Id: <20240115155615.953954-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_075625_374756_FA9400BA 
X-CRM114-Status: GOOD (  11.03  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] watchdog: imxulp: Fix timeout calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX93 the 32k clock runs at 32768Hz. Together with the /256
prescaler the watchdog timer advances 32768/256 = 128 ticks per
second, not 125.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/imxulp-wdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/imxulp-wdt.c b/drivers/watchdog/imxulp-wdt.c
index 78d1527782..84d558b812 100644
--- a/drivers/watchdog/imxulp-wdt.c
+++ b/drivers/watchdog/imxulp-wdt.c
@@ -50,7 +50,7 @@ struct imxulp_wd {
 #define WDOG_TOVAL		0x8
 
 #define CLK_RATE_1KHZ		1000
-#define CLK_RATE_32KHZ		125
+#define CLK_RATE_32KHZ		128
 
 static int imxulp_watchdog_set_timeout(struct watchdog *wd, unsigned int timeout)
 {
-- 
2.39.2



