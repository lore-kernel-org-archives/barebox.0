Delivery-date: Tue, 12 Nov 2024 10:16:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAn0v-000xMA-0E
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 10:16:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAn0u-0006mZ-C4
	for lore@pengutronix.de; Tue, 12 Nov 2024 10:16:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Wi/N9C9Te7+u8ETKIqXA3GwUkrYvt/8VoEbwUbMAv0=; b=y4Z5Ckny5g1Xl6tScYJUHRumVF
	jN6cbrzfkaqdaTDuqePrKmubptFePXArX0bqOtkNpohZvkciJpBHNThWo7jB3TD/iombubLL0NflK
	FDh8seV0L2hf0mvTk2VoefP9rPApKTdnnerm0J9nys0pB1dL0mbqvZck9dzuS1bVj5rHF9Rtzm5CG
	UMRb7CBD7JnkCmDEJ5o9ACfvq0iaKezFbF/qXxpATAk3ZYExSqjrXXyORjFivlCXhiFeWyCv3fyaK
	ucz3oLmqGFbwi9uXucpd59VrX4gBZJe722mqu643gEuZ7EVWmT6vnd+fofsK942jEgMDasEJolu74
	cJETIKtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAn0Q-00000002mf8-4BPs;
	Tue, 12 Nov 2024 09:16:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAn0O-00000002me5-06EO
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 09:16:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn0M-0006P2-PB; Tue, 12 Nov 2024 10:16:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn0M-000O0T-1p;
	Tue, 12 Nov 2024 10:16:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn0M-00GNBa-1c;
	Tue, 12 Nov 2024 10:16:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2024 10:16:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241112-k3-watchdog-v1-2-ceb254779735@pengutronix.de>
References: <20241112-k3-watchdog-v1-0-ceb254779735@pengutronix.de>
In-Reply-To: <20241112-k3-watchdog-v1-0-ceb254779735@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731402970; l=4500;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=WwP5RvIh8QwIx2aleIQFtc418XAtTVBdXw5vYnPpw5A=;
 b=7y7IUdyj9nPDHqJ8bAWk02Ye1AA6FKYxPpzJCY6+iQ9y+WrroNK0y36fY4eaaI8m41yxwDgl3
 unrOhhmhuPVB+uRgBuVyldb9O5HM8NyjC9YpoPmrevQ6uEEzt1FhNdS
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_011612_106386_03BC4641 
X-CRM114-Status: GOOD (  18.48  )
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
Subject: [PATCH 2/3] watchdog: add watchdog ping support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox watchdog API is quite limited. the set_timeout() hook is an
all purpose function for enabling and disabling the watchdog and also to
configure the timeout.
This is not suitable for watchdogs which for example can't change the
timeout anymore once started.
This patch introduces a watchdog_ping() function which hooks into the
drivers with a struct watchdog::ping function. With this the watchdog
can be pinged without caring about the timeout.  The ping hook is
optional. When not implemented watchdog_ping() falls back to call
watchdog_set_timeout() with the current watchdog timeout.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/wd.c              | 17 ++++++++++++++++-
 drivers/watchdog/wd_core.c | 28 ++++++++++++++++++++++++----
 include/watchdog.h         |  7 +++++++
 3 files changed, 47 insertions(+), 5 deletions(-)

diff --git a/commands/wd.c b/commands/wd.c
index 11f888133a..18e8e03378 100644
--- a/commands/wd.c
+++ b/commands/wd.c
@@ -17,14 +17,18 @@ static int do_wd(int argc, char *argv[])
 	struct watchdog *wd = watchdog_get_default();
 	int opt;
 	int rc;
+	bool do_ping = false;
 
-	while ((opt = getopt(argc, argv, "d:x")) > 0) {
+	while ((opt = getopt(argc, argv, "d:xp")) > 0) {
 		switch (opt) {
 		case 'd':
 			wd = watchdog_get_by_name(optarg);
 			break;
 		case 'x':
 			return watchdog_inhibit_all();
+		case 'p':
+			do_ping = true;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -39,6 +43,16 @@ static int do_wd(int argc, char *argv[])
 		}
 	}
 
+	if (do_ping) {
+		rc = watchdog_ping(wd);
+		if (rc) {
+			printf("watchdog ping failed: %pe (%d)\n", ERR_PTR(rc), rc);
+			return COMMAND_ERROR;
+		}
+
+		return 0;
+	}
+
 	rc = watchdog_set_timeout(wd, timeout);
 	if (rc < 0) {
 		switch (rc) {
@@ -68,6 +82,7 @@ BAREBOX_CMD_HELP_TEXT("When TIME is 0, the watchdog gets disabled,")
 BAREBOX_CMD_HELP_TEXT("Without a parameter the watchdog will be re-triggered.")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-d DEVICE\t", "watchdog name (default is highest priority watchdog)")
+BAREBOX_CMD_HELP_OPT("-p\t", "ping watchdog")
 BAREBOX_CMD_HELP_OPT("-x\t", "inhibit all watchdogs (i.e. disable or autopoll if possible)")
 BAREBOX_CMD_HELP_END
 
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 663a6e5c75..27371672f3 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -57,6 +57,29 @@ int watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 }
 EXPORT_SYMBOL(watchdog_set_timeout);
 
+int watchdog_ping(struct watchdog *wd)
+{
+	int ret;
+
+	if (!wd)
+		return -ENODEV;
+
+	if (!watchdog_hw_running(wd))
+		return 0;
+
+	if (wd->ping) {
+		ret = wd->ping(wd);
+		if (!ret)
+			wd->last_ping = get_time_ns();
+	} else {
+		if (!wd->timeout_cur)
+			wd->timeout_cur = wd->timeout_max;
+		ret = watchdog_set_timeout(wd, wd->timeout_cur);
+	}
+
+	return ret;
+}
+
 static int watchdog_set_priority(struct param_d *param, void *priv)
 {
 	struct watchdog *wd = priv;
@@ -78,11 +101,8 @@ static void watchdog_poller_cb(void *priv);
 
 static void watchdog_poller_start(struct watchdog *wd)
 {
-	unsigned int timeout_s;
-
-	timeout_s = wd->timeout_cur ?: wd->timeout_max;
+	watchdog_ping(wd);
 
-	watchdog_set_timeout(wd, timeout_s);
 	poller_call_async(&wd->poller, 500 * MSECOND,
 			watchdog_poller_cb, wd);
 
diff --git a/include/watchdog.h b/include/watchdog.h
index 8084f27596..c70883fbd0 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -17,6 +17,7 @@ struct device_node;
 
 struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
+	int (*ping)(struct watchdog *);
 	const char *name;
 	struct device *hwdev;
 	struct device dev;
@@ -49,6 +50,7 @@ struct watchdog *watchdog_get_default(void);
 struct watchdog *watchdog_get_by_name(const char *name);
 int watchdog_get_alias_id_from(struct watchdog *, struct device_node *);
 int watchdog_set_timeout(struct watchdog*, unsigned);
+int watchdog_ping(struct watchdog *);
 int watchdog_inhibit_all(void);
 #else
 static inline int watchdog_register(struct watchdog *w)
@@ -76,6 +78,11 @@ static inline int watchdog_set_timeout(struct watchdog*w, unsigned t)
 	return 0;
 }
 
+static inline int watchdog_ping(struct watchdog *)
+{
+	return 0;
+}
+
 static inline int watchdog_inhibit_all(void)
 {
 	return -ENOSYS;

-- 
2.39.5



