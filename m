Delivery-date: Mon, 10 Jun 2024 10:12:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGa9D-003agR-1X
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 10:12:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGa9C-0006MR-Sl
	for lore@pengutronix.de; Mon, 10 Jun 2024 10:12:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HIflmZ+3nKIRjyevZEcPwkyJvTNoeoY4t0oepW/oLS0=; b=Z3YjCLnGQFanfbpfBrKL0yCmmj
	ACixQeY+LBJRclrIM2vuOfna0+sH3Fx2Tz118NQfLfr8i0JV+aZ9yY4D7S/wuhsZyndFx52kDB5iq
	HxF238QaEko7onWJreDkkMXy18ACD+yRlxQ/PlttHccoMkWDa/tPAqpasEnD0QWBytfh0BoQN8sow
	+bv4Xtp92duqKojZ3LY3DwN1kBUn92meFQHNICdRZt0Zwr70qOB1F/Jn3LQSmcZQKLhMtIhjnJ1vD
	bMN3LqcXcJhNm2DtHsd0xhc2lDwd6CWgPA/xIZr8uegVKnI8hL03oJhMvOIGZkJxaRVOesHFjH9At
	1ZD6GEIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGa8f-00000004CAC-2Mth;
	Mon, 10 Jun 2024 08:12:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGa8W-00000004C68-1leX
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 08:12:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGa8V-00066L-7i; Mon, 10 Jun 2024 10:12:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGa8U-001G36-Rb; Mon, 10 Jun 2024 10:12:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGa8U-003h57-2R;
	Mon, 10 Jun 2024 10:12:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 10 Jun 2024 10:12:13 +0200
Message-Id: <20240610081213.858714-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240610081213.858714-1-s.hauer@pengutronix.de>
References: <20240610081213.858714-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_011216_553952_9AE4E463 
X-CRM114-Status: GOOD (  11.87  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] watchdog: register watchdog class
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Register watchdog devices as class devices. This allows us to implement
for_each_watchdog() by iterating over the network class devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 42cbd7b72c..7f3ba083e5 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -11,7 +11,9 @@
 #include <watchdog.h>
 #include <restart.h>
 
-static LIST_HEAD(watchdog_list);
+#define for_each_watchdog(wd) list_for_each_entry(wd, &watchdog_class.devices, dev.class_list)
+
+DECLARE_CLASS(watchdog_class, "watchdog");
 
 static const char *watchdog_name(struct watchdog *wd)
 {
@@ -267,7 +269,7 @@ int watchdog_register(struct watchdog *wd)
 			dev_warn(&wd->dev, "failed to register restart handler\n");
 	}
 
-	list_add_tail(&wd->list, &watchdog_list);
+	class_add_device(&watchdog_class, &wd->dev);
 
 	pr_debug("registering watchdog %s with priority %d\n", watchdog_name(wd),
 			wd->priority);
@@ -287,7 +289,7 @@ int watchdog_deregister(struct watchdog *wd)
 		poller_async_unregister(&wd->poller);
 	}
 
-	unregister_device(&wd->dev);
+	class_remove_device(&watchdog_class, &wd->dev);
 	list_del(&wd->list);
 
 	return 0;
@@ -299,7 +301,7 @@ struct watchdog *watchdog_get_default(void)
 	struct watchdog *tmp, *wd = NULL;
 	int priority = 0;
 
-	list_for_each_entry(tmp, &watchdog_list, list) {
+	for_each_watchdog(tmp) {
 		if (tmp->priority > priority) {
 			priority = tmp->priority;
 			wd = tmp;
@@ -336,7 +338,7 @@ struct watchdog *watchdog_get_by_name(const char *name)
 	if (!dev)
 		return NULL;
 
-	list_for_each_entry(tmp, &watchdog_list, list) {
+	for_each_watchdog(tmp) {
 		if (dev == tmp->hwdev || dev == &tmp->dev)
 			return tmp;
 	}
@@ -350,7 +352,7 @@ int watchdog_inhibit_all(void)
 	struct watchdog *wd;
 	int ret = 0;
 
-	list_for_each_entry(wd, &watchdog_list, list) {
+	for_each_watchdog(wd) {
 		int err;
 		if (!wd->priority || watchdog_hw_running(wd) == false)
 			continue;
-- 
2.39.2



