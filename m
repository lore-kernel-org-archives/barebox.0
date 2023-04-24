Delivery-date: Mon, 24 Apr 2023 14:00:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqurx-00FXOs-KE
	for lore@lore.pengutronix.de; Mon, 24 Apr 2023 14:00:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqurx-0001Hx-DC
	for lore@pengutronix.de; Mon, 24 Apr 2023 14:00:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IwixwWfJCmmL+IlrLts5ssdOwD69Uqn40AWZvRnYDns=; b=QkmXrAGC86o1pBJxOH//QIZ6OG
	B/IoKrZ0grYldkPtZMfiwwVfoWeE1uMfauGSfqLNJDdg91BqMPchhJX+qmxoF5tC52oofwZqwtMn7
	lsFPKoptaySxWvgo+fVGYEFSBBA5YNWYJwR9ehvqhJ9F0x+Ive7vrq/Xq3rarzNFEMpCKdF73OmbF
	/Bic86PrxkHZzodBSq9R2eBHP6uIWGWwFkOaEONr6YjlWA8DfgYKR7VUq1dWRxs2MwoYqTv1sWMBN
	glK1yYnn207jC4wMcms849NHORHtpFAxZlA3H0WkovzPvrde2+C0p7SJKguG5eDrRkFpduGm7T+T8
	n6jwvkbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pquqr-00GFTg-2W;
	Mon, 24 Apr 2023 11:59:25 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pquqo-00GFSt-1E
	for barebox@lists.infradead.org;
	Mon, 24 Apr 2023 11:59:23 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 4AF674000F;
	Mon, 24 Apr 2023 11:59:16 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Apr 2023 13:59:07 +0200
Message-Id: <20230424115908.115474-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_045922_558064_113E3F35 
X-CRM114-Status: UNSURE (   7.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] regulator: core: add debug print for regulator_resolve_supply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Starting with commit 324bd9bbe7e8 ("regulator: recursively enable/disable
regulator dependency tree"), regulator operations may affect more than
just the one regulator being enabled. Place a debug print, so it's
easier to follow the dependency chain.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/regulator/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 3eb4746fb757..97f359d6d29f 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -141,6 +141,8 @@ static int regulator_resolve_supply(struct regulator_dev *rdev)
 	if (!supply_name)
 		return 0;
 
+	dev_dbg(rdev->dev, "resolving %s\n", supply_name);
+
 	supply = regulator_get(rdev->dev, supply_name);
 	if (IS_ERR(supply)) {
 		if (deep_probe_is_supported())
-- 
2.38.4



