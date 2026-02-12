Delivery-date: Thu, 12 Feb 2026 23:02:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem3-0012Bu-0D
	for lore@lore.pengutronix.de;
	Thu, 12 Feb 2026 23:02:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem2-0008PG-M6
	for lore@pengutronix.de; Thu, 12 Feb 2026 23:02:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qoCuIhIFd7nN/JY19HKaCKZ1NkJlhU+nhuRw1ROR5o0=; b=MOj6aF/riyz3kdk2DRGiNcBO72
	Np3+hrvDj6wNe8shwm30wHNDJdXWxPC1USvggTbo+RMRUa5iI10rqApr857F40xKBc6FyyS1ICCdr
	15/yQ+iW2jP5rMNyOW+Q42DAmYXQ2Fr8xsG1RzG4FTmvpygaMlGRnXkleNUxsyTJed7Lz/16nVkri
	BPtSWD5VDxVPjytoFk5Q9nR49EmqOx/CPyNszpaXo12FIBbqMJqnWEGwDA4flkRtpfAche/m7Htfd
	rK31dP1iJCRY9ZOxX87RrTrlZGGQjr2zQTLhbdcwZkn9XvzPfJyOm5nme0f8EIZAA/e4oZlRg8kLo
	Lt9NAjAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelN-00000002fwN-3Ud4;
	Thu, 12 Feb 2026 22:02:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelJ-00000002fty-1WFi
	for barebox@lists.infradead.org;
	Thu, 12 Feb 2026 22:02:16 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqelH-000855-3Z; Thu, 12 Feb 2026 23:02:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 12 Feb 2026 23:02:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-vmaster-customers-leicageo-system1600-v2-5-f590b7d5b0e9@pengutronix.de>
References: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
In-Reply-To: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_140213_409431_CBB10BE2 
X-CRM114-Status: GOOD (  14.00  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/7] commands: make run_command variadic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This prepares run_command() to receive a format string and variadic
arguments which can become quite handy for board code. It also ensures
a proper cleanup for the command string and generalizes the error
message printing.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/hush.c     | 23 ++++++++++++++++++++++-
 common/parser.c   | 24 +++++++++++++++++++++++-
 include/command.h |  4 ++--
 3 files changed, 47 insertions(+), 4 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 2e0cc4229d3575dcf045f68ef8db3e943c41eedb..b46a42cc90c863376bb819755afc83271120200f 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1922,7 +1922,7 @@ static char * make_string(char ** inp)
 	return str;
 }
 
-int run_command(const char *cmd)
+static int __run_command(const char *cmd)
 {
 	struct p_context ctx = {};
 	int ret;
@@ -1938,6 +1938,27 @@ int run_command(const char *cmd)
 	return ret;
 }
 
+int run_command(const char *fmt, ...)
+{
+	va_list vargs;
+	char *cmd;
+	int error;
+
+	va_start(vargs, fmt);
+	cmd = xvasprintf(fmt, vargs);
+	va_end(vargs);
+
+	error = __run_command(cmd);
+	if (error) {
+		error_msg("Failed to run CMD: '%s' with %d\n", cmd, error);
+		free(cmd);
+		return error;
+	}
+
+	free(cmd);
+	return 0;
+}
+
 static int execute_script(const char *path, int argc, char *argv[])
 {
 	int ret;
diff --git a/common/parser.c b/common/parser.c
index 16fff052cf63b7a0e237bc2de1188b27af1b9809..c8b247716af9da6e1ccb2b3a915c87784a6d6eda 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -6,6 +6,7 @@
 #include <environment.h>
 #include <shell.h>
 #include <security/config.h>
+#include <stdio.h>
 
 /*
  * not yet supported
@@ -180,7 +181,7 @@ static void process_macros (const char *input, char *output)
  * creates or modifies environment variables (like "bootp" does).
  */
 
-int run_command(const char *cmd)
+static int __run_command(const char *cmd)
 {
 	char cmdbuf[CONFIG_CBSIZE];	/* working copy of cmd		*/
 	char *token;			/* start of token in cmdbuf	*/
@@ -266,6 +267,27 @@ int run_command(const char *cmd)
 	return rc;
 }
 
+int run_command(const char *fmt, ...)
+{
+	va_list vargs;
+	char *cmd;
+	int error;
+
+	va_start(vargs, fmt);
+	cmd = xvasprintf(fmt, vargs);
+	va_end(vargs);
+
+	error = __run_command(cmd);
+	if (error) {
+		pr_err("Failed to run CMD: '%s' with %d\n", cmd, error);
+		free(cmd);
+		return error;
+	}
+
+	free(cmd);
+	return 0;
+}
+
 static char console_buffer[CONFIG_CBSIZE];		/* console I/O buffer	*/
 
 int run_shell(void)
diff --git a/include/command.h b/include/command.h
index fb140cb8e250ab620e3b3284ad2b79520d194dce..5c88a9d611667d81eca105bc7b5ff7c61e0e31e0 100644
--- a/include/command.h
+++ b/include/command.h
@@ -55,13 +55,13 @@ struct command *find_cmd(const char *cmd);
 int cmd_export_val(const char *variable, const char *val);
 int execute_command(int argc, char **argv);
 void barebox_cmd_usage(struct command *cmdtp);
-int run_command(const char *cmd);
+__printf(1, 2) int run_command(const char *fmt, ...);
 #else
 static inline struct command *find_cmd(const char *cmd) { return NULL; }
 static inline int execute_command(int argc, char **argv) { return -ENOSYS; }
 static inline void barebox_cmd_usage(struct command *cmdtp) {}
 static inline int cmd_export_val(const char *variable, const char *val) { return -ENOSYS; }
-static inline int run_command(const char *cmd) { return -ENOSYS; }
+static inline __printf(1, 2) int run_command(const char *fmt, ...) { return -ENOSYS; }
 #endif
 
 #define COMMAND_SUCCESS		0

-- 
2.47.3



