Delivery-date: Mon, 27 May 2024 11:51:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBX0t-000eYm-1U
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 11:51:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBX0s-0001HH-St
	for lore@pengutronix.de; Mon, 27 May 2024 11:51:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cMooh6O3erTtOYtdQEfvnBWTall3IzKeed2mthMoMD0=; b=h3rhH3qD7lrk40E7MghTYB5MEB
	wNyRoRlFgA2gmSEifXxar5lPfhmymYorc9MFFb/Qf3oW9N6PwWRgAhvgy8R/CKaCknz4dfZzwjqpu
	UQteMrAijXAda2uaFkCJ5kIqzBfaDFkI5L5/QaPdUMyn3rCOHKuup3qobMiFmHY0W+Z6F3Ov8Vuub
	7tIjXXZe7qqrAc2b6vfr1CdSHrU4FOnTkIbm1CDhuAWrg4lES++X1fJBVQ0y1XMwaXhR1KsI8o8Va
	WaLivDrQ1LPuSigUoSrFjcvT0oPTbFApucJbOqQxxhIObYPO2pqjlTe8rEGZWSfaGZzMs2sWO4xqa
	6U19cVuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBX0R-0000000EVJq-0o7y;
	Mon, 27 May 2024 09:51:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBX0O-0000000EVIk-2QQX
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 09:51:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBX0N-0001AO-5j; Mon, 27 May 2024 11:50:59 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBX0M-003AcL-PI; Mon, 27 May 2024 11:50:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBX0M-00ELIF-2C;
	Mon, 27 May 2024 11:50:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 27 May 2024 11:50:57 +0200
Message-Id: <20240527095057.3418435-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240527095057.3418435-1-s.hauer@pengutronix.de>
References: <20240527095057.3418435-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_025100_638809_5381A9C1 
X-CRM114-Status: GOOD (  12.67  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] watchdog: fix watchdog restart handler when autoping is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When the watchdog autoping feature is enabled it will ping the watchdog
every 0.5s. This becomes a problem when the fallback restart handler is
called to reset the CPU. It will then set the watchdog to trigger in one
second and waits for CPU reset using mdelay(). During the mdelay() the
autoping poller will continue to feed the watchdog, so we never actually
reset the CPU.

Use mdelay_non_interruptible() instead so that no poller can run in the
background.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index f39a8f4522..42cbd7b72c 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -178,7 +178,8 @@ static void __noreturn watchdog_restart_handle(struct restart_handler *this)
 		ret = watchdog_set_timeout(wd, 1);
 
 	BUG_ON(ret);
-	mdelay(2000);
+
+	mdelay_non_interruptible(2000);
 
 	pr_emerg("Watchdog failed to reset the machine\n");
 	hang();
-- 
2.39.2



