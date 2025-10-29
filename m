Delivery-date: Wed, 29 Oct 2025 14:19:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE64v-00D3bm-2u
	for lore@lore.pengutronix.de;
	Wed, 29 Oct 2025 14:19:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE64v-0002Ch-5Z
	for lore@pengutronix.de; Wed, 29 Oct 2025 14:19:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HnUwM9XRQx6S1Ik1NZMTGEudjeVrjGU0zFfh4m1SR3E=; b=v/3loOEKzZV8du0CxFc/uqCobf
	oE401k7tdY7ez9YfpNpzVG0n5MCQh35uVDbTJuzpDjPDuqzoh5qDO0zT9VecbqJMvMZfxOb0T5IhE
	94N6H0LisLC403wDFGfjY+de/UnL3jcdvntrqqUyQTOHX97Gxb0siKy8Qb9XnYeLEoa2dqk7NR51i
	8xuVuTLK0Nj4SM4HzeZczz37p/5tnBp+zLaU9xnCbv3auFT1s9PZbUxPi8nsKkU6RRnx7jPhzahu2
	C0fruALnecUAXntbkjWsDV3RCvDH8zHykgaZKiJZy+/L8F9XhX5DdK5Iom/qLwSJFzSqQgUYIheJV
	OsJ1wYzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE64R-00000001KYd-0NNW;
	Wed, 29 Oct 2025 13:18:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE64O-00000001KYH-3ohJ
	for barebox@lists.infradead.org;
	Wed, 29 Oct 2025 13:18:34 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vE64N-00025B-5q; Wed, 29 Oct 2025 14:18:31 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Wed, 29 Oct 2025 14:18:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-dmesg-v2-1-c54c7daef91b@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIACIUAmkC/13MQQ7CIBCF4as0sxbDEFutK+9huqB0oLMQGqikp
 uHuYpcu/5eXb4dEkSnBvdkhUubEwddQpwbMrL0jwVNtUFK1KPEqphclJ2Q79nTpFN00Qv0ukSx
 vh/Mcas+c1hA/B5vxt/4LGQUKbXqj7CgV2u6xkHfvNQbP23kiGEopX2leG2ufAAAA
X-Change-ID: 20251017-dmesg-05b9e462e8a1
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=6029; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=wm1M608zAzkeq0rUmnEfWqSyUbe5c/+T7dnpq5LscUo=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkElHzXMBbxmPgy7K4UfnnrfdWvKaLzTOzz5e62m+0K
 3h06vTKjlIWBjEuBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwERmyTH8j9jg3l2bys/eEGH4
 a0+MAt/7NRx/VtvMiqo1armp8/W2IyPDw/dmR67xS6otXOSolVq+8ET2355Fweame9n/WZ54sHs
 JJwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_061832_958233_D5797381 
X-CRM114-Status: GOOD (  20.86  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] commands: dmesg: clear logbuffer fully if not requested
 otherwise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Previously, `dmesg -c` would clear the logbuffer except for the last 10
lines. This comes with a fair amount of surprise given linux `dmesg -c`
clears the whole logbuffer.

Clear the complete logbuffer given `dmesg -c` but with an optional
argument `dmesg -c [<num>]` to keep <num> lines.

While at it, add documentation for log_print(), and switch it from
ctrlc() to ctrlc_non_interruptible(). This ensures that the complete
execution of the dmesg command has no resched() point so that no other
thread can intermittently modify the logbuffer, and that no message
could arrive from another thread during log_print() and be interleaved
with the dmesg output.

If loglevels are selected using -l or -p in addition to clearing being
selected using -c, then messages of any loglevel are cleared.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Changes in v2:
- Switch from ctrlc() to ctrlc_non_interruptible() instead of clearing
  in log_print() (Thanks, Ahmad)
- Improve documentation
- Always clear all loglevels regardless of -l/-p (Thanks, Sascha)
- Style improvements (Thanks, Ahmad)
- Link to v1: https://lore.barebox.org/barebox/20251017-dmesg-v1-1-ac9c2fb021f6@pengutronix.de
---
 .../migration-guides/migration-2025.11.0.rst       |  9 ++++++++
 commands/dmesg.c                                   | 25 ++++++++++++----------
 common/console_common.c                            | 12 ++++++++++-
 3 files changed, 34 insertions(+), 12 deletions(-)

diff --git a/Documentation/migration-guides/migration-2025.11.0.rst b/Documentation/migration-guides/migration-2025.11.0.rst
index a9c7abb66e..2649923bbc 100644
--- a/Documentation/migration-guides/migration-2025.11.0.rst
+++ b/Documentation/migration-guides/migration-2025.11.0.rst
@@ -18,3 +18,12 @@ Karo TX6X
 The barebox update handler for this SoM no longer unconditionally updates
 /dev/mmc3.boot0, but instead it now updates the inactive boot partition
 on /dev/mmc3 and then sets it as active allowing for power-fail safety.
+
+Shell
+-----
+
+* An optional parameter was added to the `-c` option of `dmesg` allowing
+  configuration of the number of lines to remain in the log buffer after
+  clearing. When no parameter is provided to `-c`, zero is assumed, and no
+  lines are retained. Earlier versions always left 10 lines of logs remain in
+  the log buffer.
diff --git a/commands/dmesg.c b/commands/dmesg.c
index a93ad5b359..0313c8cdea 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -76,15 +76,18 @@ static unsigned dmesg_get_levels(const char *__args)
 
 static int do_dmesg(int argc, char *argv[])
 {
+	int emit = 0;
 	int opt, ret, i;
-	int delete_buf = 0, emit = 0;
-	unsigned flags = 0, levels = 0;
+	unsigned int keep_lines = UINT_MAX;
+	unsigned int flags = 0, levels = 0;
 	char *set = NULL;
 
-	while ((opt = getopt(argc, argv, "ctderl:p:n:")) > 0) {
+	while ((opt = getopt(argc, argv, "c::tderl:p:n:")) > 0) {
 		switch (opt) {
 		case 'c':
-			delete_buf = 1;
+			keep_lines = 0;
+			if (optarg && kstrtouint(optarg, 10, &keep_lines))
+				return COMMAND_ERROR_USAGE;
 			break;
 		case 't':
 			flags |= BAREBOX_LOG_PRINT_TIME;
@@ -159,8 +162,8 @@ static int do_dmesg(int argc, char *argv[])
 	if (ret)
 		return 1;
 
-	if (delete_buf)
-		log_clean(10);
+	if (keep_lines < UINT_MAX)
+		log_clean(keep_lines);
 
 	return 0;
 }
@@ -173,13 +176,13 @@ BAREBOX_CMD_HELP_TEXT("Known debug loglevels are: emerg, alert, crit, err, warn,
 BAREBOX_CMD_HELP_TEXT("vdebug")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-c",		"Delete messages after printing them")
+BAREBOX_CMD_HELP_OPT ("-c [<num>]",	"Delete messages after printing them, optionally keep <num> lines")
 BAREBOX_CMD_HELP_OPT ("-d",		"Show a time delta to the last message")
 BAREBOX_CMD_HELP_OPT ("-e <msg>",	"Emit a log message")
-BAREBOX_CMD_HELP_OPT ("-l <loglevel>", "Restrict output to the given (comma-separated) list of levels")
-BAREBOX_CMD_HELP_OPT ("-p <loglevel>", "Restrict output to specified log level at most")
-BAREBOX_CMD_HELP_OPT ("-n <loglevel>", "Set level at which printing of messages is done to the console")
-BAREBOX_CMD_HELP_OPT ("-r",		"Print timestamp and log-level prefixes.")
+BAREBOX_CMD_HELP_OPT ("-l <loglevel>",	"Restrict output to the given (comma-separated) list of levels")
+BAREBOX_CMD_HELP_OPT ("-p <loglevel>",	"Restrict output to specified log level at most")
+BAREBOX_CMD_HELP_OPT ("-n <loglevel>",	"Set level at which printing of messages is done to the console")
+BAREBOX_CMD_HELP_OPT ("-r",		"Print timestamp and log-level prefixes")
 BAREBOX_CMD_HELP_OPT ("-t",		"Show timestamp informations")
 BAREBOX_CMD_HELP_END
 
diff --git a/common/console_common.c b/common/console_common.c
index 5b7a64c99c..3494a3850f 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -5,6 +5,7 @@
  * (C) Copyright 2000 Paolo Scaffardi, AIRVENT SAM s.p.a -
  * RIMINI(ITALY), arsenio@tin.it
  */
+#include "stdio.h"
 #include <common.h>
 #include <fs.h>
 #include <errno.h>
@@ -210,6 +211,15 @@ int log_writefile(const char *filepath)
 	return ret < 0 ? ret : nbytes;
 }
 
+/**
+ * log_print - print the log buffer
+ *
+ * @flags:	Flags selecting output formatting
+ * @levels:	bitmask of loglevels to print, 0 for all
+ *
+ * This function prints the messages of the selected levels; optionally with
+ * additional information and formatting.
+ */
 int log_print(unsigned flags, unsigned levels)
 {
 	struct log_entry *log;
@@ -221,7 +231,7 @@ int log_print(unsigned flags, unsigned levels)
 
 		if (levels && !(levels & (1 << log->level)))
 			continue;
-		if (ctrlc())
+		if (ctrlc_non_interruptible())
 			return -EINTR;
 
 		if (!(flags & (BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME

---
base-commit: 946cf6bbbe2bdaac56b17185af673a1fa3288635
change-id: 20251017-dmesg-05b9e462e8a1

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



