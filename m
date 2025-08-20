Delivery-date: Wed, 20 Aug 2025 16:32:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrh-002eIm-22
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:32:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrf-0006ae-K5
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:32:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a1grTOaIcuLBNd1eahNrtIVahd7yrN1hxV8XPCapCy0=; b=dWKTiqqGRv2A/s1PA6TVvpWwlY
	/UYw6EyhoxtPZ2/mSn9K9NvPAAPYHb3XCwVv1QPS5jaoHsN/TZQ8ZiPUCpnbGyuWI15lt5VqQHFWm
	j9cQfTlmg6qtX11W0+hBNnjcV/OuqKbn/Ot6SSCPiGwZl4COq3ZQ0gu1AUKK5CWLKT4p3hIikeh/y
	AKn7TIt9UOWbTz6OitEZHebe53ho9goMIFPfSJR9oy5UaXnSTo0RA2yEXqQWL1eLqjX0RFkm2iU+k
	YbQQkiZ9y14hDcJWl1DFXX4mBSQWWbjWZXWmkK62+Q6UHBpELowTnxCxXUeVk2/5DdVKEgsv5nTRq
	oe65O7yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojr3-0000000E4aY-1tpB;
	Wed, 20 Aug 2025 14:31:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixX-0000000Donf-0ZBJ
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 13:34:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=a1grTOaIcuLBNd1eahNrtIVahd7yrN1hxV8XPCapCy0=; b=FHRLvegU6kzOYMfvLbuO24GtHP
	LjFEt+Em4mjXhP2iIiSwu2tIscBFk4TUoazDRaq98uQtjMMahnUlmrx6u3AG2+tEGWog44pCQcR8L
	Ewpvk9gseX1sYC/izRB8h7qtsD1lZ88Rv/Y5u8fY10Ex8zxSTuupRYQ5omtrEYVjSSYMNEESoFe1E
	I0mb+mS556bu8PXkpiF7jOPH7/e+vuVaGj5sN0b2SnZr3bz9K1wkVQbflvjUydCLknvhuuPKsGqsy
	eYi4W63jtRYXwa1coIw7Twolhv4DFOAMpD8bY/eOoOXoUOAebSc22HL9wL1zCiFSkOVYCWCwQUl8y
	WWWSOBqw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixQ-00000000KmR-0vjd
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:34:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixH-0003Eb-MT; Wed, 20 Aug 2025 15:34:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixH-001FrN-1Y;
	Wed, 20 Aug 2025 15:34:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1t;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:18:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-21-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=5147;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iuwPg7YsQWeyyH9xnm8e1Xw4mTJiJK5UEABrklL3mPI=;
 b=IJvQbxerIUTZp+KrgqtPEdBUC+3Klmkrans9IivDomKah7urkHgcfWYTHD+f+Si3wYH68nfBc
 29w7PsZS/KoACKFHjFvAiwt1pa04e4Hsm7rWntpErUsD32UTrFkHxmN
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_143428_500872_26050C92 
X-CRM114-Status: GOOD (  14.36  )
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
Subject: [PATCH 21/24] security: shell: add policy for executing the shell
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
 common/console.c        |  5 +++++
 common/console_simple.c |  5 +++++
 common/hush.c           | 13 +++++++++++++
 common/parser.c         |  7 +++++++
 5 files changed, 48 insertions(+)

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
index 65e4f1f852243fa15d19e68d724cf340b950df06..ee498fadf3700376b6325be10911b2081ff1ebb3 100644
--- a/common/console.c
+++ b/common/console.c
@@ -25,6 +25,7 @@
 #include <linux/list.h>
 #include <linux/stringify.h>
 #include <debug_ll.h>
+#include <security/config.h>
 
 LIST_HEAD(console_list);
 EXPORT_SYMBOL(console_list);
@@ -673,6 +674,10 @@ EXPORT_SYMBOL(ctrlc_non_interruptible);
 int ctrlc(void)
 {
 	resched();
+
+	if (!IS_ALLOWED(SCONFIG_SHELL_INTERACTIVE))
+		return 0;
+
 	return ctrlc_non_interruptible();
 }
 EXPORT_SYMBOL(ctrlc);
diff --git a/common/console_simple.c b/common/console_simple.c
index 702087bd23d75c3c7d3d0aec25c97f0e88064ef1..f00fd567ed5d1ec7b0a8f00179953c08dda49de3 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -6,6 +6,7 @@
 #include <errno.h>
 #include <debug_ll.h>
 #include <console.h>
+#include <security/config.h>
 
 LIST_HEAD(console_list);
 EXPORT_SYMBOL(console_list);
@@ -70,6 +71,10 @@ EXPORT_SYMBOL(console_flush);
 int ctrlc (void)
 {
 	int ret = 0;
+
+	if (!IS_ALLOWED(SCONFIG_SHELL_INTERACTIVE))
+		return 0;
+
 #ifdef CONFIG_ARCH_HAS_CTRLC
 	ret = arch_ctrlc();
 #else
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
2.39.5



