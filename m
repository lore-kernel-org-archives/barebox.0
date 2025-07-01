Delivery-date: Tue, 01 Jul 2025 12:06:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWXsO-00CvLO-14
	for lore@lore.pengutronix.de;
	Tue, 01 Jul 2025 12:06:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWXsN-0007fL-N7
	for lore@pengutronix.de; Tue, 01 Jul 2025 12:06:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kmKDO6WRs181Bk/gWZW0vzqZn56a3c9kL06G27cEbSU=; b=ra+SsZ55rgKA0bC2QlLBDOBiPV
	sWxY/gCCpMAgHuPVGhZDJ0q1JuVFfFi0ftHec4ygBPHCFkoa/w3DJIW8yTv5qUTpEFJfHeTHqQMEm
	6cqNjWwOoxK1S8wD5ksVmWmHcGe5PjacsFUNS6LsIwJn14OyE7BiIiTt7WbbB7tjqVzHUuQM6aKVl
	KqOYpA4FcE/LdhjPf5JrGWBuLQuvtd9pjFAa8NISZU7YQ6nTJYhtcXzN2qhYxpgV0b4qrrEh0wjo4
	g6Fc7NHH4EPlawiF1l2AdCaQnfBePRBXR/dmbaYwSklSNUWpk4dIcPV+8KWH8EZTPPTMKWunBPhcD
	KeLxI0jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWXsA-00000004ghk-3AAU;
	Tue, 01 Jul 2025 10:05:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWWjW-00000004UI8-1Lj0
	for barebox@lists.infradead.org;
	Tue, 01 Jul 2025 08:52:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWWjU-0007yy-QK; Tue, 01 Jul 2025 10:52:52 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWWjU-006F2k-1y;
	Tue, 01 Jul 2025 10:52:52 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWWjU-000cXB-00;
	Tue, 01 Jul 2025 10:52:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Jul 2025 10:52:49 +0200
Message-Id: <20250701085251.148111-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_015254_501745_4D8DFF98 
X-CRM114-Status: GOOD (  14.40  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] commands: sleep: add support for running without pollers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is useful to test how different parts of barebox behave when
pollers are delayed too much.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/sleep.c | 42 +++++++++++++++++++++++++++++++++++-------
 common/console.c | 13 +++++++++----
 include/stdio.h  |  6 ++++++
 3 files changed, 50 insertions(+), 11 deletions(-)

diff --git a/commands/sleep.c b/commands/sleep.c
index 641dbb230ad5..bb9baf079404 100644
--- a/commands/sleep.c
+++ b/commands/sleep.c
@@ -7,15 +7,28 @@
 #include <command.h>
 #include <complete.h>
 #include <clock.h>
+#include <getopt.h>
 
 static int do_sleep(int argc, char *argv[])
 {
 	uint64_t start, delay;
+	bool blocking = false;
+	int opt;
 
-	if (argc != 2)
+	while((opt = getopt(argc, argv, "b")) > 0) {
+		switch(opt) {
+		case 'b':
+			blocking = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (argc - optind != 1)
 		return COMMAND_ERROR_USAGE;
 
-	delay = simple_strtoul(argv[1], NULL, 10);
+	delay = simple_strtoul(argv[optind], NULL, 10);
 
 	if (!strcmp(argv[0], "msleep"))
 		delay *= MSECOND;
@@ -23,9 +36,17 @@ static int do_sleep(int argc, char *argv[])
 		delay *= SECOND;
 
 	start = get_time_ns();
-	while (!is_timeout(start, delay)) {
-		if (ctrlc())
-			return 1;
+
+	if (blocking) {
+		while (!is_timeout_non_interruptible(start, delay)) {
+			if (ctrlc_non_interruptible())
+				return 1;
+		}
+	} else {
+		while (!is_timeout(start, delay)) {
+			if (ctrlc())
+				return 1;
+		}
 	}
 
 	return 0;
@@ -33,11 +54,18 @@ static int do_sleep(int argc, char *argv[])
 
 static const char * const sleep_aliases[] = { "msleep", NULL};
 
+BAREBOX_CMD_HELP_START(sleep)
+BAREBOX_CMD_HELP_TEXT("delay execution for n seconds or n mseconds if invoked as msleep")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-b",  "For development: busy loop while inhibiting pollers from running")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(sleep)
 	.cmd		= do_sleep,
 	.aliases	= sleep_aliases,
-	BAREBOX_CMD_DESC("delay execution for n seconds or n mseconds if invoked as msleep")
-	BAREBOX_CMD_OPTS("SECONDS")
+	BAREBOX_CMD_DESC("delay execution for specified time")
+	BAREBOX_CMD_OPTS("[-b] SECONDS")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_COMPLETE(command_var_complete)
 BAREBOX_CMD_END
diff --git a/common/console.c b/common/console.c
index 424290b6cd10..24f1500a6558 100644
--- a/common/console.c
+++ b/common/console.c
@@ -648,13 +648,10 @@ void ctrlc_handled(void)
 	ctrlc_abort = 0;
 }
 
-/* test if ctrl-c was pressed */
-int ctrlc(void)
+int ctrlc_non_interruptible(void)
 {
 	int ret = 0;
 
-	resched();
-
 	if (!ctrlc_allowed)
 		return 0;
 
@@ -673,6 +670,14 @@ int ctrlc(void)
 
 	return ret;
 }
+EXPORT_SYMBOL(ctrlc_non_interruptible);
+
+/* test if ctrl-c was pressed */
+int ctrlc(void)
+{
+	resched();
+	return ctrlc_non_interruptible();
+}
 EXPORT_SYMBOL(ctrlc);
 
 static int console_ctrlc_init(void)
diff --git a/include/stdio.h b/include/stdio.h
index dcaed71dae05..cec303461ba3 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -59,6 +59,7 @@ void console_flush(void);
 int vprintf(const char *fmt, va_list args);
 
 int ctrlc(void);
+int ctrlc_non_interruptible(void);
 void ctrlc_handled(void);
 #else
 static inline int tstc(void)
@@ -91,6 +92,11 @@ static inline int ctrlc (void)
 	return 0;
 }
 
+int ctrlc_non_interruptible(void)
+{
+	return 0;
+}
+
 static inline void ctrlc_handled(void)
 {
 }
-- 
2.39.5



