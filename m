Delivery-date: Fri, 17 Oct 2025 13:05:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9iGr-008nYQ-2s
	for lore@lore.pengutronix.de;
	Fri, 17 Oct 2025 13:05:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9iGr-0003Eh-86
	for lore@pengutronix.de; Fri, 17 Oct 2025 13:05:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4UtRIyYaVPMdmWl7i6NbmR6AfSZ+in6yptkzIBPgZyQ=; b=VUONkEZFrImY2fvfID5fnUh4aT
	bYws6lW3kFbNc+c3R+MMg5juG1qmxl7m5frlMd9V6bwbilzuDNV5502KEBflRg+g47aKIZ8QwQksF
	MAz3t+BIuZSoDCUea7sieuHEswL5SZepPB3sQrH1dmBuKAJbXx/Tkiog5rDFyQzMi3sZUnd2WaJPh
	1byBV4wc1MZ6+TgEcZA8ZHSPomClrebYCjixHGNzt55OYJ+wt4smzWa2cZRy47r61L5tHJLGpowmT
	nFyl507K+inMbPxZ+bb5EdnR4q734wXoaCcYLBWT8xsPMje8iNV4ZB6McIoXTtOoVTsXeHMES5jKC
	c7akXLkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9iGN-00000007cU0-1U9g;
	Fri, 17 Oct 2025 11:04:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9iGK-00000007cTZ-48F3
	for barebox@lists.infradead.org;
	Fri, 17 Oct 2025 11:04:46 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v9iGI-00037p-Lt; Fri, 17 Oct 2025 13:04:42 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 17 Oct 2025 13:04:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251017-dmesg-v1-1-ac9c2fb021f6@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAMMi8mgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDA0Nz3ZTc1OJ0XQPTJMtUEzOjVItEQyWg2oKi1LTMCrA50bG1tQC2PNv
 yVwAAAA==
X-Change-ID: 20251017-dmesg-05b9e462e8a1
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=3831; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=lcMbuzOR5Xroi//bxQGiydaeSpMS78EvzXZ+0FAdFXI=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsj4pHRk4qqKjcnPJlRnZ5ydsUR3/t8Gljfya7/zMlw9d
 cHppoXTzY5SFgYxLgZZMUWWWDU5BSFj/+tmlXaxMHNYmUCGMHBxCsBElr9m+J/O31zvGvrlRvmF
 9qffkpqXX9a9rXNeIrjQ9+lVVm15p4MM//MM3WbdzvVT9ymbL1pzNetI0aEdRU6yxsvlTWY9O8W
 cxAEA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_040445_026823_47C7A693 
X-CRM114-Status: GOOD (  18.72  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] commands: dmesg: clear logbuffer fully if not requested
 otherwise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Previously, `dmesg -c` would clear the logbuffer except for the last 10
lines. This comes with a fair amount of surprise given linux `dmesg -c`
clears the whole logbuffer.

Clear the complete logbuffer given `dmesg -c` but with an optional
argument `dmesg -c [<num>]` to keep <num> lines.

While at it, move the deleteion of log lines to the log_print function
to prevent a corner case of lost log message if they arrive between the
log_print() and log_clean() in dmesg.

If loglevels are selected using -l or -p in addition to cleaning being
selected using -c, only clean those messages shown by the loglevel
selection.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 commands/dmesg.c        | 17 ++++++++++-------
 common/console_common.c | 20 +++++++++++++++++---
 include/linux/printk.h  |  2 +-
 3 files changed, 28 insertions(+), 11 deletions(-)

diff --git a/commands/dmesg.c b/commands/dmesg.c
index a93ad5b359..6853f3afc9 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -77,14 +77,20 @@ static unsigned dmesg_get_levels(const char *__args)
 static int do_dmesg(int argc, char *argv[])
 {
 	int opt, ret, i;
-	int delete_buf = 0, emit = 0;
+	int delete_buf = -1, emit = 0;
 	unsigned flags = 0, levels = 0;
 	char *set = NULL;
 
-	while ((opt = getopt(argc, argv, "ctderl:p:n:")) > 0) {
+	while ((opt = getopt(argc, argv, "c::tderl:p:n:")) > 0) {
 		switch (opt) {
 		case 'c':
-			delete_buf = 1;
+			if (optarg) {
+				ret = kstrtoint(optarg, 10, &delete_buf);
+				if (ret || delete_buf < 0)
+					return COMMAND_ERROR_USAGE;
+			} else {
+				delete_buf = 0;
+			}
 			break;
 		case 't':
 			flags |= BAREBOX_LOG_PRINT_TIME;
@@ -155,13 +161,10 @@ static int do_dmesg(int argc, char *argv[])
 		return 0;
 	}
 
-	ret = log_print(flags, levels);
+	ret = log_print(flags, levels, delete_buf);
 	if (ret)
 		return 1;
 
-	if (delete_buf)
-		log_clean(10);
-
 	return 0;
 }
 
diff --git a/common/console_common.c b/common/console_common.c
index 5b7a64c99c..23646d8f81 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -210,12 +210,23 @@ int log_writefile(const char *filepath)
 	return ret < 0 ? ret : nbytes;
 }
 
-int log_print(unsigned flags, unsigned levels)
+/**
+ * log_print - print and optionally clear the log buffer
+ *
+ * @flags:	Flags selecting output formatting
+ * @levels:	bitmask of loglevels to print, 0 for all
+ * @delete_buf:	Number of printed lines to keep in the buffer,
+ *		-1 to keep all.
+ *
+ * This function deletes all messages in the logbuf exceeding
+ * the limit.
+ */
+int log_print(unsigned flags, unsigned levels, int delete_buf)
 {
-	struct log_entry *log;
+	struct log_entry *log, *tmp;
 	unsigned long last = 0;
 
-	list_for_each_entry(log, &barebox_logbuf, list) {
+	list_for_each_entry_safe(log, tmp, &barebox_logbuf, list) {
 		uint64_t time_ns = log->timestamp;
 		unsigned long time;
 
@@ -250,6 +261,9 @@ int log_print(unsigned flags, unsigned levels)
 			printf("] ");
 
 		printf("%s", log->msg);
+
+		if (delete_buf >= 0 && barebox_logbuf_num_messages > delete_buf)
+			log_del(log);
 	}
 
 	return 0;
diff --git a/include/linux/printk.h b/include/linux/printk.h
index 0d7180f0eb..78ab3e6d16 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -192,7 +192,7 @@ extern void log_clean(unsigned int limit);
 #define BAREBOX_LOG_PRINT_TIME		BIT(0)
 
 int log_writefile(const char *filepath);
-int log_print(unsigned flags, unsigned levels);
+int log_print(unsigned flags, unsigned levels, int delete_buf);
 
 struct va_format {
 	const char *fmt;

---
base-commit: 8defba1d0ab1aef9dd5d57710e18d0d02e2c48e2
change-id: 20251017-dmesg-05b9e462e8a1

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



