Delivery-date: Tue, 16 Jul 2024 13:57:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgoT-005Qrv-2I
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 13:57:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgoS-0001Ba-Vp
	for lore@pengutronix.de; Tue, 16 Jul 2024 13:57:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rCem3++WhxvdZie/a5VJedyN6rYh0qHx6eeJsW1HD9o=; b=1hC0Fl/nxVHs4hlwR47SHNkNZ1
	n6VrtUR3JmJpZDrKxjpCN/YFQhWvXopooqpdFDMw9rKALN9uj3lJZdxqxg+/LW+KYmsQy1TZ3Nchk
	ImS6lv7bliM+R+WXm1yFLekO0yS/wxOLF9lgsDv84TGFjQwkV4MQQYm9YybKKIqba8zqRovulw7er
	ny395DCNGr+OiNoMA7Y8Uhf6z1FOem/rCjqaRU4FelnD0uE+QC22OyULFneWHFSLod+wNTKvY7Ygj
	zNIurRgTI58rInSfUpJ13S1TJ5Pir3RBoyJ+1bSrZkME+54eesirK+5Tt5lfjt9G6mU0OVJKi4OZw
	itlFGaQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgo3-0000000AKFr-2Lbq;
	Tue, 16 Jul 2024 11:57:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgny-0000000AKCx-2xv3
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 11:57:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgnx-0000wn-FG; Tue, 16 Jul 2024 13:57:13 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgnx-0007Yh-1h; Tue, 16 Jul 2024 13:57:13 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgnw-008DFD-37;
	Tue, 16 Jul 2024 13:57:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 13:57:10 +0200
Message-Id: <20240716115711.1956907-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240716115711.1956907-1-a.fatoum@pengutronix.de>
References: <20240716115711.1956907-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_045714_805956_DDFFE20E 
X-CRM114-Status: GOOD (  13.66  )
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
Subject: [PATCH 3/4] watchdog: remove needless error checking for device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Poller and device parameter are attached to the class device, either
directly or by name. It's thus not really possible for them to fail,
because of a naming conflict, which only leaves the -ENOMEM case as
possible failure.

So far, we failed the watchdog registration, but ultimately device
parameters are optional: If barebox can still limp along in this
low-memory situation, the user is better served by a barebox that can
control the watchdog via the wd command than one that has no watchdog at
all.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 54 +++++++-------------------------------
 1 file changed, 10 insertions(+), 44 deletions(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 90ae233b0f9e..44f2b6da8cf2 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -111,19 +111,12 @@ static int watchdog_set_poller(struct param_d *param, void *priv)
 	return 0;
 }
 
-static int watchdog_register_poller(struct watchdog *wd)
+static void watchdog_register_poller(struct watchdog *wd)
 {
-	struct param_d *p;
-	int ret;
+	poller_async_register(&wd->poller, dev_name(&wd->dev));
 
-	ret = poller_async_register(&wd->poller, dev_name(&wd->dev));
-	if (ret)
-		return ret;
-
-	p = dev_add_param_bool(&wd->dev, "autoping", watchdog_set_poller,
-			NULL, &wd->poller_enable, wd);
-
-	return PTR_ERR_OR_ZERO(p);
+	dev_add_param_bool(&wd->dev, "autoping", watchdog_set_poller,
+			   NULL, &wd->poller_enable, wd);
 }
 
 static int watchdog_register_dev(struct watchdog *wd, const char *name, int id)
@@ -194,7 +187,6 @@ static struct restart_handler restart_handler = {
 
 int watchdog_register(struct watchdog *wd)
 {
-	struct param_d *p;
 	const char *alias = NULL;
 	int ret = 0;
 
@@ -210,57 +202,35 @@ int watchdog_register(struct watchdog *wd)
 	if (ret)
 		return ret;
 
-	p = dev_add_param_tristate_ro(&wd->dev, "running", &wd->running);
-	if (IS_ERR(p)) {
-		ret = PTR_ERR(p);
-		goto error_unregister;
-	}
+	dev_add_param_tristate_ro(&wd->dev, "running", &wd->running);
 
 	if (!wd->priority)
 		wd->priority = dev_get_watchdog_priority(wd->hwdev);
 
-	p = dev_add_param_uint32(&wd->dev, "priority",
+	dev_add_param_uint32(&wd->dev, "priority",
 				 watchdog_set_priority, NULL,
 				 &wd->priority, "%u", wd);
-	if (IS_ERR(p)) {
-		ret = PTR_ERR(p);
-		goto error_unregister;
-	}
 
 	/* set some default sane value */
 	if (!wd->timeout_max)
 		wd->timeout_max = 60 * 60 * 24;
 
-	p = dev_add_param_uint32_ro(&wd->dev, "timeout_max",
+	dev_add_param_uint32_ro(&wd->dev, "timeout_max",
 			&wd->timeout_max, "%u");
-	if (IS_ERR(p)) {
-		ret = PTR_ERR(p);
-		goto error_unregister;
-	}
 
 	if (IS_ENABLED(CONFIG_WATCHDOG_POLLER)) {
 		if (!wd->poller_timeout_cur ||
 		    wd->poller_timeout_cur > wd->timeout_max)
 			wd->poller_timeout_cur = wd->timeout_max;
 
-		p = dev_add_param_uint32(&wd->dev, "timeout_cur", watchdog_set_cur,
+		dev_add_param_uint32(&wd->dev, "timeout_cur", watchdog_set_cur,
 				NULL, &wd->poller_timeout_cur, "%u", wd);
-		if (IS_ERR(p)) {
-			ret = PTR_ERR(p);
-			goto error_unregister;
-		}
 
-		ret = watchdog_register_poller(wd);
-		if (ret)
-			goto error_unregister;
+		watchdog_register_poller(wd);
 	}
 
-	p = dev_add_param_uint32(&wd->dev, "seconds_to_expire", param_set_readonly,
+	dev_add_param_uint32(&wd->dev, "seconds_to_expire", param_set_readonly,
 			seconds_to_expire_get, &wd->seconds_to_expire, "%d", wd);
-	if (IS_ERR(p)) {
-		ret = PTR_ERR(p);
-		goto error_unregister;
-	}
 
 	if (!restart_handler.priority) {
 		restart_handler.priority = 10; /* don't override others */
@@ -275,10 +245,6 @@ int watchdog_register(struct watchdog *wd)
 			wd->priority);
 
 	return 0;
-
-error_unregister:
-	unregister_device(&wd->dev);
-	return ret;
 }
 EXPORT_SYMBOL(watchdog_register);
 
-- 
2.39.2



