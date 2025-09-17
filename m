Delivery-date: Wed, 17 Sep 2025 15:54:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysbx-0045mx-0J
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 15:54:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysbv-0006hp-CW
	for lore@pengutronix.de; Wed, 17 Sep 2025 15:54:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TUGHSrBdYSse1aqVEAglCCoU083KLB9zLeSXQ+30vVU=; b=eq6pWq2SJU2Xyma0wU3rhID5Le
	YoL+DiVfMmG2VoTomZoUDroriueUo3raseMiTn629CAi/QiYQ7NiaUYEp4WpzUhiEvnmG5YvfDY1i
	pCNqYhbFE+y2xDePrJZQL/ZqToeJ0iSW4WA0c5a1q+WSJzJuF/gb+w2JXsHsM0K2uIKaXIkeiInGg
	zP8EMxQ6wGuz8LLZfe8mUb3bfPhnBRWY4IOWokDvTihi20Is0P+BeWlsigq4C7xawxxV8J4AkL1wY
	WGl48z3CYfyo4QKV/CrmxB2O2CpHtnfCkKry590iVJz3tXL37UPwut8Zp0vBZpOPYWc4nCLp883mj
	AFh8IHIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbQ-0000000BstB-0IMH;
	Wed, 17 Sep 2025 13:53:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbK-0000000BslY-3pGB
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 13:53:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbB-0006Ad-Bx; Wed, 17 Sep 2025 15:53:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-001luT-2j;
	Wed, 17 Sep 2025 15:53:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-2zjq;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250917-security-policies-v2-8-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=8491;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=c9XlT7NDDZI7Ycs5bl50rsOgGFUYqgiqzqr4b25rufE=;
 b=yayYTUBUMqVW2+uEK3D+xcydyux9CiNIYnmQOPRySGSXTpoE3N+T3Dnz3WQ79NjMRaBvIkbhD
 zRDLyFBpNf9CTNpY0PclsjBjHy+kB0TKqmznPUp81S3k7wmHenTzKWS
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_065339_113025_AAB334F9 
X-CRM114-Status: GOOD (  21.19  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/24] commands: implement sconfig command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The sconfig command provides a convenient interface to test the new
security policy support. It allows inspecting available policies
and optionally switching between them and enabling/disabling them
piecewise for interactive testing of code that is gated behind these
security options.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de
Co-developed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig          |  23 +++++
 commands/Makefile         |   1 +
 commands/sconfig.c        | 227 ++++++++++++++++++++++++++++++++++++++++++++++
 include/security/policy.h |   4 +
 4 files changed, 255 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index 1626912c30bd688d8a900738b40acf6def70d9df..d28f8a6c75054d9b231b88d6be15d90092b8cbd2 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2288,6 +2288,29 @@ endmenu
 
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
index d9403b18d582f0fac042cef57c88aa4a49f6c8a3..c1f1162c2fdd15b455a7b2f8a47cc187c17510d6 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -166,4 +166,5 @@ obj-$(CONFIG_CMD_STACKSMASH)	+= stacksmash.o
 obj-$(CONFIG_CMD_PARTED)	+= parted.o
 obj-$(CONFIG_CMD_EFI_HANDLE_DUMP)	+= efi_handle_dump.o
 obj-$(CONFIG_CMD_HOST)		+= host.o
+obj-$(CONFIG_CMD_SCONFIG)	+= sconfig.o
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/sconfig.c b/commands/sconfig.c
new file mode 100644
index 0000000000000000000000000000000000000000..02c3a6b1ed9b75f9e27b096dd5bf27c94b7f7f05
--- /dev/null
+++ b/commands/sconfig.c
@@ -0,0 +1,227 @@
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
+	if (set) {
+		policy = security_policy_get(set);
+		if (!policy) {
+			printf("Policy '%s' not found\n", set);
+			ret = -ENOENT;
+			goto out;
+		}
+
+		ret = security_policy_activate(policy);
+	}
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
+        BAREBOX_CMD_OPTS("[-vlsi] [<+->SCONFIG_*]...")
+        BAREBOX_CMD_GROUP(CMD_GRP_SECURITY)
+        BAREBOX_CMD_HELP(cmd_sconfig_help)
+BAREBOX_CMD_END
diff --git a/include/security/policy.h b/include/security/policy.h
index 6f270793bc80b03966c1b47fe9c44c9bfb9263a5..c41220ef3b96fb78862ae28340e41221f3c97781 100644
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
2.47.3



