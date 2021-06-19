Delivery-date: Sat, 19 Jun 2021 05:33:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRjk-0003KE-J0
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:33:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRjj-0000hP-LH
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:33:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HLwe4SLIyEbvfW8YhFu+8NrmqAnh3jOQw+uyHDjfK4o=; b=P16ccePq4GFuUJ
	vB07Gz0Cb0v5DLQsK0ZvXnBQXtOVR3cFmPABG9CvRea3TvzFyri5YAThkc6UAEIIvDvXU/ZDLUMv0
	+ddv7eFQJoLeJJCbzzaPx6+1Ge6xKYAMFntht0SNkDr91mjbIk+fpV7p8bkzDDIrHkxQukUAGck+c
	bZmrnHmsDg0F8ygazRMotjmPNNVLV1chMaBcJag554KyVOhBulVG/Jvws988NOK5OSRpf7LIk+4Ge
	j2iAhD0bG4o/AAba2w5vwadExUqNusInLpKBFbhAPRB5W9Esama8F0iPoxBF1oxvR1X3C0BOpOp/B
	AWWDd5s7a0Ev8oK75VvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRib-00G8Rg-Hq; Sat, 19 Jun 2021 03:32:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRiU-00G8Qh-27
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:32:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRiQ-0000cB-1d; Sat, 19 Jun 2021 05:32:14 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRiP-0000tW-PP; Sat, 19 Jun 2021 05:32:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Jun 2021 05:32:11 +0200
Message-Id: <20210619033212.3391-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_203218_142102_191D5775 
X-CRM114-Status: GOOD (  11.53  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] nvmem: regmap: fix use of uninitialized space with
 nvmem_regmap_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Looking through all instances of struct nvmem_config in the tree shows
that only the new nvmem_regmap_register failed to initialize all
members, e.g. config::read_only was uninitialized. Fix this up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/regmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
index 346d2516f3c3..641e6413ba0b 100644
--- a/drivers/nvmem/regmap.c
+++ b/drivers/nvmem/regmap.c
@@ -60,7 +60,7 @@ static struct nvmem_bus nvmem_regmap_bus = {
 
 struct nvmem_device *nvmem_regmap_register(struct regmap *map, const char *name)
 {
-	struct nvmem_config config;
+	struct nvmem_config config = {};
 
 	/* Can be retrofitted if needed */
 	if (regmap_get_reg_stride(map) != regmap_get_val_bytes(map))
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

