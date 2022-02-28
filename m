Delivery-date: Mon, 28 Feb 2022 15:58:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOhTP-00DKoa-PV
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 15:58:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOhTO-0000ZT-Ay
	for lore@pengutronix.de; Mon, 28 Feb 2022 15:58:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=keonGJL9/NsIHpGgvF5WkwvLTuCcq/B8PWoovRTpvHY=; b=u2SvZFHY5O/CA5
	boN1oBGCg9FK2hsUEFDSn9b1IbnTP5Vj+rmv1vDKVNmIFbgfxjwCO4TLr7fux2MKKzj1ifxXXTBx7
	GYeq9IruYIkaje3ny0aALn9q6PyCALVrlY3QqH0tDrDYWW2bH0gO+jo8aLIZZQNUTcRm/kZERF042
	7rqqA5FB654rhRAGZ8yfSS2IsiEFx2GXXteCKD3B1EpGeNpcqE06pMngbf4gCx9WCUjHP9tROZwob
	tVjEEJxVWMiWOJT+oy/VtiE22HhNVVq3yTo8cSP0PbcTYOqGuS11hBiQHkj08AOd7/16WmdD/3k4L
	0Tmcz628qHkFyuetgEIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOhRo-00D3iX-S2; Mon, 28 Feb 2022 14:56:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOhRh-00D3gp-2S
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 14:56:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nOhRe-0000NC-2M; Mon, 28 Feb 2022 15:56:14 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nOhRd-003dZx-JE; Mon, 28 Feb 2022 15:56:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Feb 2022 15:56:12 +0100
Message-Id: <20220228145612.867073-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_065617_143975_B54B0C76 
X-CRM114-Status: GOOD (  10.51  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] regulator: fix enabling of always-on regulators
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We need to enable on either case, not if both are given.

Fixes: 9f542bd73948 ("regulator: respect "regulator-always-on" property")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 997b986d5f07..ecee4203187c 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -130,7 +130,7 @@ static struct regulator_internal * __regulator_register(struct regulator_dev *rd
 	if (name)
 		ri->name = xstrdup(name);
 
-	if (rd->boot_on && rd->always_on) {
+	if (rd->boot_on || rd->always_on) {
 		ret = regulator_enable_internal(ri);
 		if (ret && ret != -ENOSYS)
 			goto err;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

