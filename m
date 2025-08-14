Delivery-date: Thu, 14 Aug 2025 15:51:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYN6-000We8-06
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:51:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYN4-0005DL-Dr
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:51:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2xlkZKfYrji0TLnb0IcNfLldaPlhW9S7Tuz2iIsEKtk=; b=2Jlb2f5z3xV5QkAupH/ZCvfxU+
	dT5PzgSN2HN0KobakIHsa/nryBem4y+iIjoWATxaWo+RJGoYXnvxshsjVaLi9SPEMFc+8OcC6hEGf
	r9vZawFTl5xavxL5GatNn+zycUE3Lwiik7X1g4rHL8r960oqW9exAQwZH2X+SRKafUVQhxJiqW7iI
	Qpm1n7IG6y4IfaOCWMlRG+Mq3k3EUeUMawQlIdeMcN6qlChWVks1AOr0ZPD7rpDX4N6W9PHf5MsKe
	cM5g/xGn7AGyUw7k09B7Pu66wHpdeBdHS6Dex//I7OvLINB62VBvzGxFxv13dOA/vKetNvtfeXoOo
	Ih6i5lPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYMY-0000000H6if-0Ufl;
	Thu, 14 Aug 2025 13:51:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXfe-0000000GvRl-2Wdy
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:07:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfd-0006HN-23; Thu, 14 Aug 2025 15:07:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-000GH5-1X;
	Thu, 14 Aug 2025 15:07:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-1D;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:06:53 +0200
Message-Id: <20250814130702.4039241-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_060706_802537_9D67AEF7 
X-CRM114-Status: GOOD (  22.46  )
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
Subject: [PATCH RFC 08/17] commands: implement sconfig command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

The sconfig command provides a convenient interface to test the new
security policy support. It allows inspecting available policies
and optionally switching between them and enabling/disabling them
piecewise for interactive testing of code that is gated behind these
security options.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de
Co-developed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig          |  23 ++++
 commands/Makefile         |   1 +
 commands/sconfig.c        | 219 ++++++++++++++++++++++++++++++++++++++
 include/security/policy.h |   4 +
 4 files changed, 247 insertions(+)
 create mode 100644 commands/sconfig.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 16b995cb3b7c..5c17bb4e2516 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2277,6 +2277,29 @@ endmenu
 
 menu "Security"
 
+config CMD_SCONFIG
+	depends on SECURITY_POLICY
+	select SECURITY_POLICY_NAMES
+	default y
+	bool "sconfig"
+	help
+	  Interact with security policies. By default, this only
+	  allows read-access and not selection of new policies
+
+config CMD_SCONFIG_MODIFY
+	depends on CMD_SCONFIG
+	select HAS_INSECURE_DEFAULTS
+	bool "support policy modification"
+	help
+	  Say y here if you are developing and want to extend the sconfig
+	  command to support selecting a different active policy and
+	  modifying it.
+
+	  This is an very priviliged operation and the recommendation is
+	  to hardcode policy transitions in board code and not from scripts.
+
+	  Say n here if unsure.
+
 config CMD_AVB_PVALUE
 	depends on OPTEE_AVB_PERSISTENT_VALUES
 	tristate
diff --git a/commands/Makefile b/commands/Makefile
index 9247287ed53a..a4d0ec7b1410 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -164,4 +164,5 @@ obj-$(CONFIG_CMD_STACKSMASH)	+= stacksmash.o
 obj-$(CONFIG_CMD_PARTED)	+= parted.o
 obj-$(CONFIG_CMD_EFI_HANDLE_DUMP)	+= efi_handle_dump.o
 obj-$(CONFIG_CMD_HOST)		+= host.o
+obj-$(CONFIG_CMD_SCONFIG)	+= sconfig.o
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/sconfig.c b/commands/sconfig.c
new file mode 100644
index 000000000000..bfe8dcbca060
--- /dev/null
+++ b/commands/sconfig.c
@@ -0,0 +1,219 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/kernel.h>
+#include <command.h>
+#include <environment.h>
+#include <getopt.h>
+#include <globalvar.h>
+#include <linux/ctype.h>
+#include <stdio.h>
+
+#include <security/policy.h>
+#include <security/config.h>
+
+#define RED	"\e[1;31m"
+#define GREEN	"\e[1;32m"
+#define YELLOW	"\e[1;33m"
+#define PINK	"\e[1;35m"
+#define CYAN	"\e[1;36m"
+#define NC	"\e[0m"
+
+static struct security_policy *last_override;
+static int debug_iteration;
+static struct notifier_block sconfig_notifier;
+
+static const char *red, *green, *nc;
+
+static void sconfig_print(const struct security_policy *policy)
+{
+	for (int i = 0; i < SCONFIG_NUM; i++) {
+		bool allow = is_allowed(policy, i);
+
+		printf("[%s%s%s] %s\n", allow ? green : red,
+		       allow ? "✓" : "✗", nc, sconfig_names[i]);
+	}
+}
+
+static int sconfig_command_notify(struct notifier_block *nb,
+				  unsigned long opt, void *unused)
+{
+	bool allow = is_allowed(NULL, opt);
+
+	printf("%s%s%s%s\n", allow ? green : red, allow ? "+" : "-", nc,
+	       sconfig_names[opt]);
+
+	return 0;
+}
+
+static int do_sconfig_flags(int argc, char *argv[])
+{
+	const struct security_policy *policy;
+	const char *set = NULL;
+	int ret = 0, opt;
+
+	while ((opt = getopt(argc, argv, "li:vs:")) > 0) {
+		switch (opt) {
+		case 'l':
+			security_policy_list();
+			break;
+		case 'i':
+			policy = security_policy_get(optarg);
+			if (!policy) {
+				ret = -ENOENT;
+				goto out;
+			}
+
+			sconfig_print(policy);
+			break;
+		case 'v':
+			if (!IS_ENABLED(CONFIG_CMD_SCONFIG_MODIFY))
+				return COMMAND_ERROR_USAGE;
+			sconfig_register_handler(&sconfig_notifier,
+						 sconfig_command_notify);
+			break;
+		case 's':
+			if (!IS_ENABLED(CONFIG_CMD_SCONFIG_MODIFY))
+				return COMMAND_ERROR_USAGE;
+			set = optarg;
+			break;
+		default:
+			ret = COMMAND_ERROR_USAGE;
+			goto out;
+		}
+	}
+
+	if (argc != optind) {
+		ret = COMMAND_ERROR_USAGE;
+		goto out;
+	}
+
+	if (set)
+		ret = security_policy_select(set);
+out:
+	if (sconfig_notifier.notifier_call) {
+		sconfig_unregister_handler(&sconfig_notifier);
+		sconfig_notifier.notifier_call = NULL;
+	}
+
+	return ret;
+}
+
+static struct security_policy *alloc_policy(void)
+{
+	struct security_policy *override;
+
+	override = xmalloc(sizeof(*override));
+
+	if (active_policy)
+		memcpy(override->policy, active_policy->policy,
+		       sizeof(override->policy));
+	else
+		memset(override->policy, 0x1, sizeof(override->policy));
+
+	override->name = xasprintf("debug%u", debug_iteration++);
+	override->chained = false;
+
+	return override;
+}
+
+static void free_policy(struct security_policy *policy)
+{
+	security_policy_unregister_one(policy);
+	free(policy);
+}
+
+static int do_sconfig(int argc, char *argv[])
+{
+	struct security_policy *override;
+	bool allow_color;
+	int i, ret;
+
+	allow_color = !streq_ptr(globalvar_get("allow_color"), "0");
+	if (allow_color) {
+		red = RED;
+		green = GREEN;
+		nc = NC;
+	} else {
+		red = green = nc = "";
+	}
+
+	if (argc == 1) {
+		if (active_policy)
+			printf("Active Policy: %s\n\n", active_policy->name);
+		else
+			printf("No Policy is Active\n\n");
+
+		sconfig_print(NULL);
+		return 0;
+	}
+
+	for (i = 1; i < argc; i++) {
+		if ((*argv[i] != '-' && *argv[i] != '+' ) ||
+		    !strstarts(argv[i] + 1, "SCONFIG_"))
+			return do_sconfig_flags(argc, argv);;
+	}
+
+	if (!IS_ENABLED(CONFIG_CMD_SCONFIG_MODIFY)) {
+		printf("Runtime security policy modification disallowed\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	override = alloc_policy();
+
+	for (i = 1; i < argc; i++) {
+		char ch_action = *argv[i];
+		enum security_config_option sopt;
+
+		ret = sconfig_lookup(argv[i] + 1);
+		if (ret < 0) {
+			printf("No such option: %s\n", argv[i] + 1);
+			return ret;
+		}
+
+		sopt = ret;
+
+		switch (ch_action) {
+		case '+':
+			override->policy[sopt] = true;
+			break;
+		case '-':
+			override->policy[sopt] = false;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	__security_policy_register(override);
+
+	ret = security_policy_activate(override);
+	if (ret) {
+		free_policy(override);
+		return ret;
+	}
+
+	free_policy(last_override);
+	last_override = override;
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(sconfig)
+BAREBOX_CMD_HELP_TEXT("Interact with security policies")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-l",  "list registered security policies")
+BAREBOX_CMD_HELP_OPT ("-i POLICY",  "show security options of specified POLICY")
+#ifdef CONFIG_CMD_SCONFIG_MODIFY
+BAREBOX_CMD_HELP_OPT ("-v",  "verbose output: report options as they are modified")
+BAREBOX_CMD_HELP_OPT ("-s POLICY",  "select specified POLICY")
+#endif
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(sconfig)
+        .cmd            = do_sconfig,
+        BAREBOX_CMD_DESC("interact with security policies")
+        BAREBOX_CMD_OPTS("[-vlsi] [<+->CAP]...")
+        BAREBOX_CMD_GROUP(CMD_GRP_SECURITY)
+        BAREBOX_CMD_HELP(cmd_sconfig_help)
+BAREBOX_CMD_END
diff --git a/include/security/policy.h b/include/security/policy.h
index 6f270793bc80..c41220ef3b96 100644
--- a/include/security/policy.h
+++ b/include/security/policy.h
@@ -42,6 +42,10 @@ static inline int __security_policy_register(const struct security_policy policy
 }
 #endif
 
+#ifdef CONFIG_CMD_SCONFIG
+void security_policy_unregister_one(const struct security_policy *policy);
+#endif
+
 #define security_policy_add(name) ({				\
 	extern const struct security_policy __policy_##name[];	\
 	__security_policy_register(__policy_##name);		\
-- 
2.39.5



