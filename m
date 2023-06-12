Delivery-date: Mon, 12 Jun 2023 14:54:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h4L-003qCU-5y
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:54:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h4I-0006WR-H5
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:54:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5xd9WHybCzserkYmnmCmhOeOd/bBh/Z6hGLImY+Ef+c=; b=sJoSgGQ0y6CjHF+eRIU6YmC2G4
	TsancKKufluikaNrxGiObrpfKHuigHzBe83OT6LA/Q+e7Cp3PJDcApzgcv5grO7lyUuYZZsItCvwR
	gZ5W28Kpz59B0sTE7EH86rjqic0ZHjF13Jt1Hs25Ziemc0mtTz6XoxVmJ4K854cIEmM9y+bWcnunm
	84Kt59uHdg67DGA7HqlCdyaecZmh2x5t4rg8gB0IWrAOUyGMSkkggqhwKH90yafRbvpoG7LPpHUjK
	DoIBFit7lMyJZjNMsWINi6N1l7mFIRSg5XK0VpfIKZmuECkVF/fakoOe1qO8IsDTi9uJI4VKgEDpb
	BIs0r2og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h3G-0045Mj-1R;
	Mon, 12 Jun 2023 12:53:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h39-0045HK-1o
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:53:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h38-0006Bb-Aq; Mon, 12 Jun 2023 14:53:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h37-006tTj-NU; Mon, 12 Jun 2023 14:53:33 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h36-004YHm-7g; Mon, 12 Jun 2023 14:53:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:53:31 +0200
Message-Id: <20230612125331.1085059-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612125331.1085059-1-a.fatoum@pengutronix.de>
References: <20230612125331.1085059-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055335_596447_B3BFB206 
X-CRM114-Status: GOOD (  10.96  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 6/6] regmap-mmio: fix use-after-free
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Once we free ctx, dereferencing it to return ERR_CAST(ctx->clk) is
verboten. Fix this by using an intermediary variable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/regmap-mmio.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/base/regmap/regmap-mmio.c b/drivers/base/regmap/regmap-mmio.c
index 6e6ae5ed54d4..4c6389689cd6 100644
--- a/drivers/base/regmap/regmap-mmio.c
+++ b/drivers/base/regmap/regmap-mmio.c
@@ -289,11 +289,15 @@ struct regmap *regmap_init_mmio_clk(struct device *dev,
 		return ERR_CAST(ctx);
 
 	if (clk_id) {
-		ctx->clk = clk_get(dev, clk_id);
-		if (IS_ERR(ctx->clk)) {
+		struct clk *clk;
+
+		clk = clk_get(dev, clk_id);
+		if (IS_ERR(clk)) {
 			kfree(ctx);
-			return ERR_CAST(ctx->clk);
+			return ERR_CAST(clk);
 		}
+
+		ctx->clk = clk;
 	}
 
 	return regmap_init(dev, &regmap_mmio, ctx, config);
-- 
2.39.2



