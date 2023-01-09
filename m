Delivery-date: Mon, 09 Jan 2023 19:02:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEwU0-006uVr-15
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 19:02:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEwTx-0003jS-Rj
	for lore@pengutronix.de; Mon, 09 Jan 2023 19:02:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ldHUGjIDNoJyP49zoLSDy3aqwtRh5AocxBMWWRa1An8=; b=3CsUjMfXHeNaBJEnHRGmRWLQdY
	xvOH6JMc0rCGcUFGQWI6WnPWE+jCg5uhxNF77LPGYmUoYgGfPfBvGs8HxbXfeU7L0SNSucn3Kctsm
	RMhvvuogqrsIcSDvgij/uqsEHt0dzUtIukHDelal+48SNeh5j7jvpvbMHHfwmuPI2e/GQoKcQ2Fxs
	WQVKHG6mBQYZbXEmHlKoAQ1z2u8Xb1URyv6k4XknmkWCVnaiMSB7lGkyImK9vJmh8RtBmHoDxqE/T
	kOa0ME4r92XDGwL7NEuWu2m9AEcVOsa9b+RuIlq6rSC6uHuWf4aPPYdKRnsLXo1fl0Qu2zkZ9CZcE
	1frqwc8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEwS2-0035nk-HY; Mon, 09 Jan 2023 18:00:51 +0000
Received: from relay11.mail.gandi.net ([2001:4b98:dc4:8::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEwQY-0035Eu-JE
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 17:59:20 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 53A71100006;
	Mon,  9 Jan 2023 17:59:13 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  9 Jan 2023 18:59:09 +0100
Message-Id: <20230109175909.2018186-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_095918_817022_24A3A5B9 
X-CRM114-Status: UNSURE (   7.62  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] regulator: rk808: simplify one error branch with dev_err_probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This has the added benefit of recording the error message.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/regulator/rk808-regulator.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index 3da6cca294ae..8c96b99c9be5 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -783,10 +783,9 @@ static int rk808_regulator_register(struct rk808 *rk808, int id,
 	cfg->rdev.regmap = rk808->regmap;
 
 	ret = of_regulator_register(&cfg->rdev, match->of_node);
-	if (ret) {
-		dev_err(dev, "failed to register %s regulator\n", match->name);
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register %s regulator\n",
+				     match->name);
 
 	dev_dbg(dev, "registered %s\n", match->name);
 
-- 
2.38.1



