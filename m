Delivery-date: Tue, 22 Jun 2021 20:25:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvl5P-0008F8-E3
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 20:25:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvl5O-00029Q-KZ
	for lore@pengutronix.de; Tue, 22 Jun 2021 20:25:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/erY5uo998oSgMJnuGlfvsPmygWZsnzBonJo0+PHm1M=; b=fWOBwH+hGD2tn3
	8g27e18mk/sVV//Q9L6mjilU8WrBIS4mmKyQJ8cFAhkMT4PffN+UfI+tQeiWY/RIfseDpatCgStGp
	OLLXJ2nAr45V3KkcqnDIaTl4ndZM4iXQb7rYk9OylDT/wPjULyyTDmZi6gSAx4BY8tc6yi9iC/JEc
	mkX7t4kk+tQ9N6igeW8nyJ/Grq6Z1rcDgpkZzpNY3Ybkz0J6Psrw02DKbmMNlwuGe++OeHTQWNjQV
	qiO0vbt7awO7o29VPUZolCTqFjD0IL+TWS/Can3An/pKHSq1Jrbpq4Hzy9rNIrqstSLDQdxxjv76R
	5DZDKYR6shSUKKhfzQRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvl3w-0088AA-Ey; Tue, 22 Jun 2021 18:23:52 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvl3r-008891-O9
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 18:23:49 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id D0E28C0002;
 Tue, 22 Jun 2021 18:23:42 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 22 Jun 2021 20:23:32 +0200
Message-Id: <20210622182332.1089832-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_112347_963050_23AFF7A9 
X-CRM114-Status: UNSURE (   8.52  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] reset: stm32: remove implicit sizeof(long) == 4 expectation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is no relation between sizeof(long) and the size of the register
of the reset controller on STM32 CPUs. They just happen to be both 32-bit
in the current configuration. U-Boot already removed the BITS_PER_LONG,
so do likewise.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/reset/reset-stm32.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/reset/reset-stm32.c b/drivers/reset/reset-stm32.c
index a4498f573bb6..2ef00859c48b 100644
--- a/drivers/reset/reset-stm32.c
+++ b/drivers/reset/reset-stm32.c
@@ -81,8 +81,8 @@ static u32 stm32_reset_status(struct stm32_reset *priv, unsigned long bank)
 
 static void stm32_reset(struct stm32_reset *priv, unsigned long id, bool assert)
 {
-	int bank = (id / BITS_PER_LONG) * 4;
-	int offset = id % BITS_PER_LONG;
+	int bank = (id / 32) * 4;
+	int offset = id % 32;
 
 	priv->ops->reset(priv->base + bank, offset, assert);
 }
-- 
2.32.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

