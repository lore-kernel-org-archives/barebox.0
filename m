Delivery-date: Mon, 23 Jun 2025 19:38:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTl7n-00AL1t-2K
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 19:38:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTl7n-0002Fk-68
	for lore@pengutronix.de; Mon, 23 Jun 2025 19:38:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8iFQOdc+WGFZ/X8VdGMKc2de9Ojo184PLGn40JsU6qg=; b=rxc98BzXW4SOrpWiICcoeiwNx6
	m3nfzyNoMC/n/5AMef2ycOigo0+v3pkdvxD74xlO07eaJW4GePwj+8GauO91gvtHdwooG3k0ERSo+
	flQJ7/BqbUKv1fUZx4LqXbvZQUOn2CH1f/9vc9TT9gVgL1UmoKyEmFeWgFv/xEEKHWWiWOxrp5Uuo
	yZ/mO6/xR7KEZc1chn556G49NIGi8QBsGNKFD1hX71x5wyfgLiRNfWNB65+5b3Mu3FvGH8xq+2G3N
	s8D/ATRJ4PjQoZWT83p37A6T49OiWILg6WA0huQg0vbaQQdppjGhNA/2Jn3Aof37suGGS4lQJSL9S
	bUGqD36g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTl7c-00000003Zwy-07II;
	Mon, 23 Jun 2025 17:38:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTgyz-00000002ptt-3M4s
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 13:13:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uTgyy-0001MI-BE; Mon, 23 Jun 2025 15:13:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uTgyy-004xFg-0W;
	Mon, 23 Jun 2025 15:13:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uTgyy-009972-0C;
	Mon, 23 Jun 2025 15:13:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Lars Schmidt <l.schmidt@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Jun 2025 15:13:06 +0200
Message-Id: <20250623131306.2179862-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_061309_837312_A7B18FDC 
X-CRM114-Status: GOOD (  11.13  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! bootchooser: implement locking of attempts counter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have two code paths with goto err that don't set ret beforehand with
the expectation that the default -EINVAL will be used.

ret is now being reused though and thus the -EINVAL is clobbered. In the
worst case, an error ends up with ERR_PTR(ret) == NULL crashing
bootchooser -i when a state prefix is set, but no targets are defined.

Fix this by always initializing ret explicitly.

Cc: Lars Schmidt <l.schmidt@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootchooser.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 623cb8ce7714..a79eee8ca2c4 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -352,7 +352,7 @@ struct bootchooser *bootchooser_get(void)
 	struct bootchooser *bc;
 	struct bootchooser_target *target;
 	char *targets, *str, *freep = NULL, *delim;
-	int ret = -EINVAL, id = 1;
+	int ret, id = 1;
 	uint32_t last_chosen;
 	static int attempts_resetted;
 	uint32_t locked;
@@ -430,11 +430,13 @@ struct bootchooser *bootchooser_get(void)
 
 	if (id == 1) {
 		pr_err("Target list $global.bootchooser.targets is empty\n");
+		ret = -EINVAL;
 		goto err;
 	}
 
 	if (list_empty(&bc->targets)) {
 		pr_err("No targets could be initialized\n");
+		ret = -EINVAL;
 		goto err;
 	}
 
-- 
2.39.5



