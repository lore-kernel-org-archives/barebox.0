Delivery-date: Fri, 04 Aug 2023 10:13:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRpw7-006vs4-Qw
	for lore@lore.pengutronix.de; Fri, 04 Aug 2023 10:13:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRpw6-0006TY-4g
	for lore@pengutronix.de; Fri, 04 Aug 2023 10:13:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jrE87NaOzliwsmlFQS2HXYY+IsIlfzhXYpZ9FmTZXcQ=; b=NDphksnNZdkRZjqPNFKoLMDIoK
	Z2nU7AK5fWATfJSkA1dN6TBpkJIqL0opt9OMB/dvR+buXw3U/BADcxWBilhy6F7PFvHZvgEP1HhD8
	Y4DSr3jqF21Mai9Hd8jbiTfg8h3E8gb14r/gRtU9K+xkfsAKNhb1d3BAZVbvOJLBfDKq3ji+ePBYj
	Cex3q+UurV/gS27bqZ0Vwc+zLHaQkOY/LQuK9GXbF7g8QOPOXhwM8M/HytfPCOns63tQDJhsTrhM0
	7Rrbc2PSdjlLwrPLHwo4k94yx1tHTyPqeqO2rpMKl0TH2yhw0rSg197ZbMqoSy+iN4uFEsCeFYQvq
	bVoNd/2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRpug-00Bqxf-32;
	Fri, 04 Aug 2023 08:11:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRpud-00Bqvs-2L
	for barebox@lists.infradead.org;
	Fri, 04 Aug 2023 08:11:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qRpuZ-0006Le-7z; Fri, 04 Aug 2023 10:11:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qRpuY-0011qt-In; Fri, 04 Aug 2023 10:11:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qRpuY-002ODV-08;
	Fri, 04 Aug 2023 10:11:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Aug 2023 10:11:47 +0200
Message-Id: <20230804081147.559379-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230804081147.559379-1-a.fatoum@pengutronix.de>
References: <20230804081147.559379-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230804_011155_764225_EA1459BD 
X-CRM114-Status: GOOD (  14.64  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] console: allocate only once instead of twice per log message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We do two allocations for each log message, one for the log message
string itself and another for the struct log_entry referencing it.

We could just make the log message directly follow the log entry and
save the space for the pointer and the time to do a second allocation.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console_common.c | 14 +++++++-------
 include/linux/printk.h  |  2 +-
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index 866a7cbf65dc..c78581299248 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -10,6 +10,7 @@
 #include <errno.h>
 #include <console.h>
 #include <init.h>
+#include <string.h>
 #include <environment.h>
 #include <globalvar.h>
 #include <magicvar.h>
@@ -19,6 +20,7 @@
 #include <malloc.h>
 #include <linux/pstore.h>
 #include <linux/math64.h>
+#include <linux/overflow.h>
 
 #ifndef CONFIG_CONSOLE_NONE
 
@@ -39,7 +41,6 @@ static int barebox_log_max_messages = 1000;
 
 static void log_del(struct log_entry *log)
 {
-	free(log->msg);
 	list_del(&log->list);
 	free(log);
 	barebox_logbuf_num_messages--;
@@ -89,15 +90,14 @@ static void pr_puts(int level, const char *str)
 			log_clean(barebox_log_max_messages - 1);
 
 		if (barebox_log_max_messages >= 0) {
-			log = malloc(sizeof(*log));
+			int msglen;
+
+			msglen = strlen(str);
+			log = malloc(struct_size(log, msg, msglen + 1));
 			if (!log)
 				goto nolog;
 
-			log->msg = strdup(str);
-			if (!log->msg) {
-				free(log);
-				goto nolog;
-			}
+			memcpy(log->msg, str, msglen + 1);
 
 			log->timestamp = get_time_ns();
 			log->level = level;
diff --git a/include/linux/printk.h b/include/linux/printk.h
index 76cdb15d5b4c..cd4c3cb68edb 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -148,9 +148,9 @@ int __pr_memory_display(int level, const void *addr, loff_t offs, unsigned nbyte
 
 struct log_entry {
 	struct list_head list;
-	char *msg;
 	uint64_t timestamp;
 	int level;
+	char msg[];
 };
 
 extern struct list_head barebox_logbuf;
-- 
2.39.2



