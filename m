Delivery-date: Wed, 17 Sep 2025 16:19:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyt04-0046S3-2r
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:19:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyt02-0003rq-WC
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:19:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2xd1m0YD7HXQoNM/FdPahEGRoUuPsGDpwGU3ZTGdJ2w=; b=EB1eXtrcMSPsE2R2Be/MR/asyA
	Egj8jVv8tkTdYFh5vElTra5UuUo/oD0gAWGx0GDyXtvWf7/59aKoegkBeBF9bu70bez+LfqW+beEZ
	wTOhikCGpAppTfryi4W5VH6eQQEBqmhtr7ujGPcc7lCCmpbCKG8Cumc70AbBHsmTu64H6sfFCnsdL
	a/yXSVE7bBJTVP8oQAbH6ALD7eAp7fhFWOuYc3mVzPtORCwXqEAyg0V/WOghD14OjXZfI74VGKYg9
	uP++pmD2ik1EP+h26vMA2SsEcnYPyUc9iy/F3RuwYuy3vJTcBxiviB1Bp1iXhmnigO1szldjQoRrs
	v+iVbAsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszP-0000000C8LY-2KYl;
	Wed, 17 Sep 2025 14:18:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszH-0000000C87W-0fJ9
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:18:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-000321-PA; Wed, 17 Sep 2025 16:18:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-001mGf-1v;
	Wed, 17 Sep 2025 16:18:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-377d;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-21-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=5301;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=dvIDWAT9fzlbu8o6wSn6J8LYO3ogMpj+5olkg23ZToQ=;
 b=2eHjU51hDxYlCghAd4oLd1d4tc98I+vizZ17F+xplfa1Wpe9DaaT+N4iTKE5QJg6uMT6vlBUK
 fTqwDcX5hcLCu/TP6QNCKzw/LwkfvZCKx3uxTZnksA5TQBiR4+gkYas
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_071823_208410_63E130C3 
X-CRM114-Status: GOOD (  14.53  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 21/24] security: shell: add policy for executing the
 shell
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Executing shell scripts can be dangerous in secure environments, so add
a security policy for it. While shell scripts can be executed securely
if made sure that no scripts from unknown sources are executed,
executing an interactive shell for sure is not desired in secure
environments, so offer two options: One for disabling the shell entirely
and one for disabling interactive shells.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Sconfig          | 18 ++++++++++++++++++
 common/console.c        |  1 +
 common/console_ctrlc.c  |  4 ++++
 common/console_simple.c |  1 +
 common/hush.c           | 13 +++++++++++++
 common/parser.c         |  7 +++++++
 6 files changed, 44 insertions(+)

diff --git a/common/Sconfig b/common/Sconfig
index 9142685a1d3f9846e69b746e545420eab5935661..ac027022e932dffd429f0b34cb8e1a199b0b595b 100644
--- a/common/Sconfig
+++ b/common/Sconfig
@@ -2,6 +2,24 @@
 
 menu "General Settings"
 
+config SHELL
+	bool "Allow executing shell scripts"
+	depends on $(kconfig-enabled,SHELL_HUSH) || $(kconfig-enabled,SHELL_SIMPLE)
+	help
+	  Say y here if you want to allow executing shell scripts. Shell scripts are
+	  potentially dangerous when coming from untrusted sources. Enable this option
+	  only when only trusted scripts can be executed, i.e. ENVIRONMENT_LOAD and
+	  untrusted filesystems are disabled.
+
+config SHELL_INTERACTIVE
+	bool "Allow executing interactive shell"
+	depends on SHELL
+	help
+	  An interactive shell cannot be safely executed in trusted environments. Disable
+	  this option in lockdown security configs.
+
+	  Disabling this option also disables interruption with ctrl-c keystrokes.
+
 config RATP
 	bool "Allow remote control via RATP"
 	depends on $(kconfig-enabled,CONSOLE_RATP)
diff --git a/common/console.c b/common/console.c
index ceecb8730e55422b78eea7204dc9b9a70cf97212..8eff3dba925f6de077dd194651a137f30870989d 100644
--- a/common/console.c
+++ b/common/console.c
@@ -25,6 +25,7 @@
 #include <linux/list.h>
 #include <linux/stringify.h>
 #include <debug_ll.h>
+#include <security/config.h>
 
 LIST_HEAD(console_list);
 EXPORT_SYMBOL(console_list);
diff --git a/common/console_ctrlc.c b/common/console_ctrlc.c
index 0272eec280d1d8f6d4a1827580a3ee1fb4bc8da6..6fbe07252effeb6d78eff1d47c0c2fe998e80bc1 100644
--- a/common/console_ctrlc.c
+++ b/common/console_ctrlc.c
@@ -5,6 +5,7 @@
 #include <sched.h>
 #include <globalvar.h>
 #include <magicvar.h>
+#include <security/config.h>
 
 static int ctrlc_abort;
 static int ctrlc_allowed;
@@ -18,6 +19,9 @@ int ctrlc_non_interruptible(void)
 {
 	int ret = 0;
 
+	if (!IS_ALLOWED(SCONFIG_SHELL_INTERACTIVE))
+		return 0;
+
 	if (!ctrlc_allowed)
 		return 0;
 
diff --git a/common/console_simple.c b/common/console_simple.c
index d2feb58ea3e2ff1c4b382350156ea3d30b88eb95..dc748d8b698140f589598190f75b0ba23892a9a4 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -6,6 +6,7 @@
 #include <errno.h>
 #include <debug_ll.h>
 #include <console.h>
+#include <security/config.h>
 
 LIST_HEAD(console_list);
 EXPORT_SYMBOL(console_list);
diff --git a/common/hush.c b/common/hush.c
index 21348c4b7510f074c9bdf27bc35dce0b17648648..8515e7733828715147fdbfba25844af3cca61e35 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -118,6 +118,7 @@
 #include <binfmt.h>
 #include <init.h>
 #include <shell.h>
+#include <security/config.h>
 
 /*cmd_boot.c*/
 extern int do_bootd(int flag, int argc, char *argv[]);      /* do_bootd */
@@ -1693,6 +1694,9 @@ char *shell_expand(char *str)
 	o_string o = {};
 	char *res, *parsed;
 
+	if (!IS_ALLOWED(SCONFIG_SHELL))
+		return str;
+
 	remove_quotes_in_str(str);
 
 	o.quote = 1;
@@ -1910,6 +1914,9 @@ int run_command(const char *cmd)
 	struct p_context ctx = {};
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_SHELL))
+		return -EPERM;
+
 	initialize_context(&ctx);
 
 	ret = parse_string_outer(&ctx, cmd, FLAG_PARSE_SEMICOLON);
@@ -1922,6 +1929,9 @@ static int execute_script(const char *path, int argc, char *argv[])
 {
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_SHELL))
+		return -EPERM;
+
 	env_push_context();
 	ret = source_script(path, argc, argv);
 	env_pop_context();
@@ -1963,6 +1973,9 @@ int run_shell(void)
 	struct p_context ctx = {};
 	int exit = 0;
 
+	if (!IS_ALLOWED(SCONFIG_SHELL_INTERACTIVE))
+		return -EPERM;
+
 	login();
 
 	do {
diff --git a/common/parser.c b/common/parser.c
index 387cd64c42677419ca12bbde5bb7a811c03fa11d..16fff052cf63b7a0e237bc2de1188b27af1b9809 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -5,6 +5,7 @@
 #include <password.h>
 #include <environment.h>
 #include <shell.h>
+#include <security/config.h>
 
 /*
  * not yet supported
@@ -190,6 +191,9 @@ int run_command(const char *cmd)
 	int argc, inquotes;
 	int rc = 0;
 
+	if (!IS_ALLOWED(SCONFIG_SHELL))
+		return -EPERM;
+
 #ifdef DEBUG
 	pr_debug("[RUN_COMMAND] cmd[%p]=\"", cmd);
 	puts (cmd ? cmd : "NULL");	/* use puts - string may be loooong */
@@ -269,6 +273,9 @@ int run_shell(void)
 	static char lastcommand[CONFIG_CBSIZE] = { 0, };
 	int len;
 
+	if (!IS_ALLOWED(SCONFIG_SHELL_INTERACTIVE))
+		return -EPERM;
+
 	login();
 
 	for (;;) {

-- 
2.47.3



