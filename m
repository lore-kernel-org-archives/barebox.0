Delivery-date: Tue, 12 Nov 2024 10:16:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAn11-000xMw-1m
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 10:16:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAn10-0006qz-UP
	for lore@pengutronix.de; Tue, 12 Nov 2024 10:16:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kO32yOf0kSBSWPDQa/k2uCoPQ0nmLSpyK71N6PCK8UE=; b=DN5p81/OKuLrSjYn5GDAot3+Rn
	7EFt+ymGobUbLnky4Q9WLXcBgTn3Lgyj410VK/WkUfAR5PAzcVytG3frJ0/AaTAzYY8aID9BuEBaM
	tR5T5e2/XFiK5OUdjyi0OlzMOunGpw39S7LfWTutO8PVShCzixF8VCm1nErfaCMysJnXobUnv9l1V
	Esc99qdU9NewdBu0Sz8hu+1caiJtrl/DG16dAxvbgqXx/v0QDQSJ8DFmTy5Hz1dxc4Fh9jboXT5Jj
	d8LEvh120w14qRRG5Orvjhpjwg7cl35HfQ4W51LuKMK+IvuMtdh297zIhV/6dHTNGA2DYttoczEs5
	kRAhD2LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAn0a-00000002mjo-0ADR;
	Tue, 12 Nov 2024 09:16:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAn0V-00000002mhA-3xKS
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 09:16:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn0M-0006P3-PM; Tue, 12 Nov 2024 10:16:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn0M-000O0S-1o;
	Tue, 12 Nov 2024 10:16:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn0M-00GNBa-1b;
	Tue, 12 Nov 2024 10:16:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2024 10:16:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241112-k3-watchdog-v1-1-ceb254779735@pengutronix.de>
References: <20241112-k3-watchdog-v1-0-ceb254779735@pengutronix.de>
In-Reply-To: <20241112-k3-watchdog-v1-0-ceb254779735@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731402970; l=2860;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=0WOiR/UA0fHtBO8OY7b9Speciv62jwLhR+9jiXrWBYY=;
 b=j7SNdnBz4xOnua67KBn4R4xcsQksiNHjXkXeveph6w7COJC/9JPwie8zijfZx3/oqTbW66pz7
 2/D1HcXnt79Anr/Khxyt2r77XPXi4I/ZaTrq+ia7TPGLKwSZlVU0vHU
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_011620_101256_08D13125 
X-CRM114-Status: GOOD (  17.11  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] watchdog: cleanup timeout_cur parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently a watchdog has a timeout_cur device parameter which has
a slightly confusing behaviour. The parameter has nothing to do with the
currently configured watchdog timeout, instead it is merely used by
the automatic watchdog feeder which configures the watchdog timeout
with that value.

Refine the semantics of the parameter by using it as the watchdog
timeout as the name suggests. When read, it returns the currently
configured timeout. When set, it configures the watchdog timeout
and starts it (unless it's set to 0 in which case the watchdog will
be disabled).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 23 +++++++++++------------
 include/watchdog.h         |  1 -
 2 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index d4de213fa5..663a6e5c75 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -71,17 +71,18 @@ static int watchdog_set_cur(struct param_d *param, void *priv)
 {
 	struct watchdog *wd = priv;
 
-	if (wd->poller_timeout_cur > wd->timeout_max)
-		return -EINVAL;
-
-	return 0;
+	return watchdog_set_timeout(wd, wd->timeout_cur);
 }
 
 static void watchdog_poller_cb(void *priv);
 
 static void watchdog_poller_start(struct watchdog *wd)
 {
-	watchdog_set_timeout(wd, wd->poller_timeout_cur);
+	unsigned int timeout_s;
+
+	timeout_s = wd->timeout_cur ?: wd->timeout_max;
+
+	watchdog_set_timeout(wd, timeout_s);
 	poller_call_async(&wd->poller, 500 * MSECOND,
 			watchdog_poller_cb, wd);
 
@@ -201,16 +202,14 @@ int watchdog_register(struct watchdog *wd)
 	dev_add_param_uint32_ro(&wd->dev, "timeout_max",
 			&wd->timeout_max, "%u");
 
-	if (IS_ENABLED(CONFIG_WATCHDOG_POLLER)) {
-		if (!wd->poller_timeout_cur ||
-		    wd->poller_timeout_cur > wd->timeout_max)
-			wd->poller_timeout_cur = wd->timeout_max;
+	if (wd->timeout_cur > wd->timeout_max)
+		wd->timeout_cur = wd->timeout_max;
 
-		dev_add_param_uint32(&wd->dev, "timeout_cur", watchdog_set_cur,
-				NULL, &wd->poller_timeout_cur, "%u", wd);
+	dev_add_param_uint32(&wd->dev, "timeout_cur", watchdog_set_cur,
+			NULL, &wd->timeout_cur, "%u", wd);
 
+	if (IS_ENABLED(CONFIG_WATCHDOG_POLLER))
 		watchdog_register_poller(wd);
-	}
 
 	dev_add_param_uint32(&wd->dev, "seconds_to_expire", param_set_readonly,
 			seconds_to_expire_get, &wd->seconds_to_expire, "%d", wd);
diff --git a/include/watchdog.h b/include/watchdog.h
index eaea07910c..8084f27596 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -23,7 +23,6 @@ struct watchdog {
 	unsigned int priority;
 	unsigned int timeout_max;
 	unsigned int timeout_cur;
-	unsigned int poller_timeout_cur;
 	unsigned int poller_enable;
 	uint64_t last_ping;
 	int seconds_to_expire;

-- 
2.39.5



