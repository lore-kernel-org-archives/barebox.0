Delivery-date: Wed, 20 Aug 2025 16:08:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojUH-002djk-2s
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:08:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojUE-0001pq-BI
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:08:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a1YLrq2ASnonoPZLFGGL2rTgymjykVk5SCRQZxUBZGM=; b=BbId8EEP+dNh/1cKCCSbPxrc4X
	SQ/Ui/tnWuUBjTOFdaV/DUNprEp7jlIcgPy2xYcUVtOaSkw2vzsifWAYaONSJS8+SSIUGc6vG+CG2
	yJm8fw/DURmVnjHg2xKi3yVHQE7QlkEE6iOp451CXXkfLCC9mHwu7aqw70W7DdUrtZknu7fFAri+9
	2Nfkou8ZqRhRIqYxx6UNF545eI+AJuGqOrdMAlWbdddlsUL9K7h/3zOlioRqesz+WpB4S1E3DvV5Q
	iJ/nt1ZGuKD/7ALizddjR31qdt3w4AbXPs/wIxgIlcksxgB0oYj++frtUGo9I2sxZkrNK2R7MTsOt
	RLFHGHuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojTg-0000000Dwi7-0d3V;
	Wed, 20 Aug 2025 14:07:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoihU-0000000Djtz-0mga
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:18:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-0000ft-TT; Wed, 20 Aug 2025 15:17:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-001Fp9-1t;
	Wed, 20 Aug 2025 15:17:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1S;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:17:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-4-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=49859;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Rmh6xYx7d4rbGJJMsM2Ia/OJ3+/agemGNqy4WFe04Ok=;
 b=PAdfL/2Kv5XYqWQ2KAXNdvlz+UxHCXnn9mHOry9u3rz9Graff8pDHZTKaUfpw6F7BBm1e3I3D
 j0GdFubhwPUD3gHRL47l9JCv0Q7tchDjqjYYGbJZTWP+1YMTnjsJBSq
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_061800_736337_018F1240 
X-CRM114-Status: GOOD (  25.58  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
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
Subject: [PATCH 04/24] Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Security policies are a mechanism for barebox to prevent, when so
desired, security relevant code from being executed.

Security policies are controlled via a second Kconfig menu structure
(called Sconfig) which collects security relevant options.

While the normal Kconfig menu structure is about feature support
enabled at compile time, a security policy determines whether a
feature is allowed or prohibited at runtime with an explicit focus
on security.

Except for a security policy's name, all security options are
boolean and control whether a built-in feature is allowed:

  config FASTBOOT_CMD_BASE
  	bool
  	prompt "Allow fastboot flash/erase commands"
  	depends on $(kconfig-enabled,FASTBOOT_BASE)
  	help
  	  This option enables the fastboot "flash" and "erase" commands.

The depends directive ensures the option is hidden when Fastboot support
isn't compiled in anyway. Otherwise, enabling the option should permit
normal operation as if the security policy support was disabled.

Disabling the option, will have the relevant functions return early,
often with a permission denied error.

Checking the state of a security config option is done with the
IS_ALLOWED macro. The macro evaluates to true if the option is
defined and enabled in the active security policy and false otherwise.

A partial manipulation of the active security policy is not desirable
as it makes security posture at runtime harder to reason about.

It's expected that boards will define a fixed set of policies,
e.g. devel, factory, lockdown and then consult eFuses or JSON web tokens
to determine which policy is to be applied.

Some precautions have been made to make sure the security policies have
been reviewed and changes to the security options do not go through
unnoticed during barebox updates: Automatic config updates are
prohibited, so if new options are not present or the other way round,
the build will just fail. The user is expected to run e.g.
make security_olddefconfig to explicitly sync the configuration and
commit the changes.

Co-developed-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .gitignore                  |   4 +
 Makefile                    |  71 +++++-
 Sconfig                     |   7 +
 include/security/config.h   |  76 +++++++
 include/security/defs.h     |  22 ++
 include/security/policy.h   |  50 ++++
 scripts/Kbuild.include      |  35 +++
 scripts/Makefile.build      |  18 +-
 scripts/Makefile.lib        |  47 ++++
 scripts/Makefile.policy     |  39 ++++
 scripts/Sconfig.include     |   6 +
 scripts/basic/.gitignore    |   1 +
 scripts/basic/Makefile      |   2 +
 scripts/basic/sconfigpost.c | 540 ++++++++++++++++++++++++++++++++++++++++++++
 security/Kconfig            |   2 +
 security/Kconfig.policy     |  86 +++++++
 security/Makefile           |   2 +
 security/Sconfig            |  42 ++++
 security/policy.c           | 243 ++++++++++++++++++++
 security/sconfig_names.c    |  18 ++
 20 files changed, 1305 insertions(+), 6 deletions(-)

diff --git a/.gitignore b/.gitignore
index c37188a9f31519863dd121f31676c1c1b03ca253..98bb4dac891272cfa26a4a3d880fe13ece1a9be1 100644
--- a/.gitignore
+++ b/.gitignore
@@ -30,6 +30,9 @@
 *.patch
 *.pyc
 *.s
+*.sconfig.c
+*.sconfig.old
+*.sconfig.tmp
 *.so
 *.so.dbg
 *.symtypes
@@ -37,6 +40,7 @@
 binary.0
 Module.symvers
 dtbs-list
+policy-list
 *.dtb
 *.dtb.*
 *.dtbo
diff --git a/Makefile b/Makefile
index 209999618e8830e9495e3ff2297b50408ad625ae..a2e5697b09fe219739bf2c4de45db8d54e09fc32 100644
--- a/Makefile
+++ b/Makefile
@@ -278,7 +278,7 @@ ifneq ($(KBUILD_EXTMOD),)
 endif
 
 ifeq ($(KBUILD_EXTMOD),)
-        ifneq ($(filter config %config,$(MAKECMDGOALS)),)
+        ifneq ($(filter config %config,$(filter-out security_%config,$(MAKECMDGOALS))),)
 		config-build := 1
                 ifneq ($(words $(MAKECMDGOALS)),1)
 			mixed-build := 1
@@ -450,6 +450,7 @@ AWK		= awk
 GENKSYMS	= scripts/genksyms/genksyms
 DEPMOD		= /sbin/depmod
 KALLSYMS	= scripts/kallsyms
+SCONFIGPOST	= scripts/basic/sconfigpost
 PERL		= perl
 PYTHON3		= python3
 CHECK		= sparse
@@ -524,7 +525,7 @@ LDFLAGS_elf += $(LDFLAGS_common) --nmagic -s
 export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC CXX
 export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL PYTHON3 UTS_MACHINE
 export LEX YACC PROFDATA COV GENHTML
-export HOSTCXX CHECK CHECKFLAGS MKIMAGE
+export HOSTCXX CHECK CHECKFLAGS MKIMAGE SCONFIGPOST
 export KGZIP KBZIP2 KLZOP LZMA LZ4 XZ
 export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
 export KBUILD_USERCFLAGS KBUILD_USERLDFLAGS
@@ -601,6 +602,8 @@ ifdef config-build
 # *config targets only - make sure prerequisites are updated, and descend
 # in scripts/kconfig to make the *config target
 
+# KCONFIG_CONFIG_ORIG is only set for policy kconfig processing
+ifndef KCONFIG_CONFIG_ORIG
 include $(srctree)/scripts/Makefile.defconf
 
 # Read arch specific Makefile to set KBUILD_DEFCONFIG as needed.
@@ -608,6 +611,7 @@ include $(srctree)/scripts/Makefile.defconf
 # used for 'make defconfig'
 include $(srctree)/arch/$(SRCARCH)/Makefile
 export KBUILD_DEFCONFIG CC_VERSION_TEXT
+endif
 
 config: outputmakefile scripts_basic FORCE
 	$(Q)$(MAKE) $(build)=scripts/kconfig KCONFIG_DEFCONFIG_LIST= $@
@@ -1171,6 +1175,60 @@ include/generated/version.h: FORCE
 include/generated/utsrelease.h: include/config/kernel.release FORCE
 	$(call filechk,utsrelease.h)
 
+# ---------------------------------------------------------------------------
+# Security policies
+
+ifdef CONFIG_SECURITY_POLICY
+
+.security_config: $(KCONFIG_CONFIG) FORCE
+	+$(call cmd,sconfig,allyesconfig,$@.tmp,$@)
+	$(Q)if [ ! -r $@ ] || ! cmp -s $@.tmp $@; then	\
+		mv -f $@.tmp $@;			\
+	else						\
+		rm -f $@.tmp;				\
+	fi
+
+targets	+= .security_config
+targets += include/generated/security_autoconf.h
+targets += include/generated/sconfig_names.h
+
+KPOLICY = $(shell find $(objtree)/ -name policy-list -exec cat {} \;)
+KPOLICY.tmp = $(addsuffix .tmp,$(KPOLICY))
+
+PHONY += collect-policies
+collect-policies: KBUILD_MODULES :=
+collect-policies: KBUILD_BUILTIN :=
+collect-policies: $(barebox-dirs) FORCE
+
+PHONY += security_listconfigs
+security_listconfigs: collect-policies FORCE
+	@echo policies:
+	@$(foreach p, $(KPOLICY), echo $p ;)
+
+PHONY += security_checkconfigs
+security_checkconfigs: collect-policies $(KPOLICY.tmp) FORCE
+	+$(Q)$(foreach p, $(KPOLICY), \
+		$(call loop_cmd,security_checkconfig,$p.tmp))
+
+security_%config: collect-policies $(KPOLICY.tmp) FORCE
+	+$(Q)$(foreach p, $(KPOLICY), $(call loop_cmd,sconfig, \
+		$(@:security_%=%),$p.tmp))
+	+$(Q)$(foreach p, $(KPOLICY), \
+		cp 2>/dev/null $p.tmp $(call resolve-srctree,$p) || true;)
+
+quiet_cmd_sconfigpost = SCONFPP $@
+      cmd_sconfigpost = $(SCONFIGPOST) $2 -D $(depfile) -o $@ $<
+
+include/generated/security_autoconf.h: .security_config scripts_basic FORCE
+	$(call if_changed_dep,sconfigpost,-e)
+
+include/generated/sconfig_names.h: .security_config scripts_basic FORCE
+	$(call if_changed_dep,sconfigpost,-s)
+
+archprepare: include/generated/security_autoconf.h include/generated/sconfig_names.h
+
+endif
+
 # ---------------------------------------------------------------------------
 # Devicetree files
 
@@ -1299,8 +1357,8 @@ CLEAN_FILES +=	scripts/bareboxenv-target scripts/kernel-install-target \
 
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config usr/include include/generated Documentation/commands
-MRPROPER_FILES += .config .config.old .version .old_version \
-                  include/config.h           \
+MRPROPER_FILES += .config .config.old .security_config .version .old_version \
+                  include/config.h *.sconfig.old          \
 		  Module.symvers tags TAGS cscope*
 
 # clean - Delete most, but leave enough to build external modules
@@ -1321,7 +1379,8 @@ clean: archclean $(clean-dirs)
 		\( -name '*.[oas]' -o -name '*.ko' -o -name '.*.cmd' \
 		-o -name '.*.d' -o -name '.*.tmp' -o -name '*.mod.c' \
 		-o -name '*lex.c' -o -name '.tab.[ch]' \
-		-o -name 'dtbs-list' \
+		-o -name 'dtbs-list' -o -name 'policy-list' \
+		-o -name '*.sconfig.tmp' -o -name '*.sconfig.[co]' \
 		-o -name '*.symtypes' -o -name '*.bbenv.*' -o -name "*.bbenv" \) \
 		-type f -print | xargs rm -f
 
@@ -1485,6 +1544,8 @@ target-dir = $(dir $@)
 	$(Q)$(MAKE) $(build)=$(build-dir) $(target-dir)$(notdir $@)
 %.symtypes: %.c prepare scripts FORCE
 	$(Q)$(MAKE) $(build)=$(build-dir) $(target-dir)$(notdir $@)
+%.sconfig.tmp: %.sconfig prepare scripts FORCE
+	$(Q)$(MAKE) $(build)=$(build-dir) $(target-dir)$(notdir $@)
 
 # Modules
 %/: prepare scripts FORCE
diff --git a/Sconfig b/Sconfig
new file mode 100644
index 0000000000000000000000000000000000000000..ee6ddf53bccbdc427227b8b0e8fe9eeefb470047
--- /dev/null
+++ b/Sconfig
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+mainmenu "Barebox/$(ARCH) Security Configuration"
+
+source "scripts/Sconfig.include"
+
+source "security/Sconfig"
diff --git a/include/security/config.h b/include/security/config.h
new file mode 100644
index 0000000000000000000000000000000000000000..b37ef4272c94d955b2d59c4331194c4d02ca27d1
--- /dev/null
+++ b/include/security/config.h
@@ -0,0 +1,76 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __BAREBOX_SECURITY_CONFIG_H
+#define __BAREBOX_SECURITY_CONFIG_H
+
+/*
+ * Security policies is an access control mechanism to control when
+ * security-sensitive code is allowed to run.
+ *
+ * This header is included by security-sensitive code to consult
+ * the policy and enforce it.
+ */
+
+#include <linux/types.h>
+#include <linux/errno.h>
+#include <notifier.h>
+#include <security/defs.h>
+
+extern const char *sconfig_names[SCONFIG_NUM];
+
+int sconfig_lookup(const char *name);
+
+extern struct notifier_head sconfig_notifier_list;
+
+bool is_allowed(const struct security_policy *policy, unsigned option);
+
+#define IF_ALLOWABLE(opt, then, else) \
+	({ __if_defined(opt##_DEFINED, then, else); })
+
+#ifdef CONFIG_SECURITY_POLICY
+#define IS_ALLOWED(opt)		IF_ALLOWABLE(opt, is_allowed(NULL, (opt)), 0)
+#define ALLOWABLE_VALUE(opt)	IF_ALLOWABLE(opt, opt, -1)
+#else
+#define IS_ALLOWED(opt)		1
+#define ALLOWABLE_VALUE(opt)	(-1)
+#endif
+
+static inline int sconfig_register_handler(struct notifier_block *nb,
+					   int (*cb)(struct notifier_block *,
+						     unsigned long, void *))
+{
+	if (!IS_ENABLED(CONFIG_SECURITY_POLICY))
+		return -ENOSYS;
+
+	nb->notifier_call = cb;
+	return notifier_chain_register(&sconfig_notifier_list, nb);
+}
+
+static inline int sconfig_unregister_handler(struct notifier_block *nb)
+{
+	if (!IS_ENABLED(CONFIG_SECURITY_POLICY))
+		return -ENOSYS;
+	return notifier_chain_unregister(&sconfig_notifier_list, nb);
+}
+
+struct sconfig_notifier_block;
+typedef void (*sconfig_notifier_callback_t)(struct sconfig_notifier_block *,
+					    enum security_config_option,
+					    bool val);
+
+struct sconfig_notifier_block {
+	struct notifier_block nb;
+	enum security_config_option opt;
+	sconfig_notifier_callback_t cb_filtered;
+};
+
+int __sconfig_register_handler_filtered(struct sconfig_notifier_block *nb,
+					sconfig_notifier_callback_t cb,
+					enum security_config_option);
+
+#define sconfig_register_handler_filtered(nb, cb, opt) ({ \
+	int __sopt = ALLOWABLE_VALUE(opt); \
+	__sopt != -1	?  __sconfig_register_handler_filtered((nb), (cb), __sopt) \
+			: -ENOSYS; \
+})
+
+#endif /* __BAREBOX_SECURITY_CONFIG_H */
diff --git a/include/security/defs.h b/include/security/defs.h
new file mode 100644
index 0000000000000000000000000000000000000000..5b478039ad9425f4d3635d34ac22b6ef67912a70
--- /dev/null
+++ b/include/security/defs.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __BAREBOX_SECURITY_DEFS_H
+#define __BAREBOX_SECURITY_DEFS_H
+
+#include <linux/types.h>
+
+#ifdef CONFIG_SECURITY_POLICY
+# include <generated/security_autoconf.h>
+#else
+#define SCONFIG_NUM 0
+enum security_config_option { SCONFIG__DUMMY__ };
+#endif
+
+extern const char *sconfig_names[SCONFIG_NUM];
+
+struct security_policy {
+       const char *name;
+       bool chained;
+       unsigned char policy[SCONFIG_NUM];
+};
+
+#endif
diff --git a/include/security/policy.h b/include/security/policy.h
new file mode 100644
index 0000000000000000000000000000000000000000..6f270793bc80b03966c1b47fe9c44c9bfb9263a5
--- /dev/null
+++ b/include/security/policy.h
@@ -0,0 +1,50 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __BAREBOX_SECURITY_POLICY_H
+#define __BAREBOX_SECURITY_POLICY_H
+
+/*
+ * Security policies is an access control mechanism to control when
+ * security-sensitive code is allowed to run.
+ *
+ * This header is included by board code that registers and
+ * selects (activates) these security policies.
+ */
+
+#include <linux/types.h>
+#include <linux/errno.h>
+#include <notifier.h>
+#include <security/defs.h>
+
+/*
+ * It's recommended to use the following names for the
+ * "standard" policies
+ */
+#define POLICY_DEVEL		"devel"
+#define POLICY_FACTORY		"factory"
+#define POLICY_LOCKDOWN		"lockdown"
+#define POLICY_TAMPER		"tamper"
+#define POLICY_FIELD_RETURN	"return"
+
+extern const struct security_policy *active_policy;
+
+const struct security_policy *security_policy_get(const char *name);
+
+int security_policy_activate(const struct security_policy *policy);
+int security_policy_select(const char *name);
+void security_policy_list(void);
+
+#ifdef CONFIG_SECURITY_POLICY
+int __security_policy_register(const struct security_policy policy[]);
+#else
+static inline int __security_policy_register(const struct security_policy policy[])
+{
+	return -ENOSYS;
+}
+#endif
+
+#define security_policy_add(name) ({				\
+	extern const struct security_policy __policy_##name[];	\
+	__security_policy_register(__policy_##name);		\
+})
+
+#endif /* __BAREBOX_SECURITY_POLICY_H */
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index a23d27cba315f51082fcf38d6b3e011a541fabd1..b4c3f92af2ffd74c06217b234a9cfc8dd3d9516a 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -225,6 +225,14 @@ cmd_and_fixdep =                                                             \
 # and if so will execute $(rule_foo).
 if_changed_rule = $(if $(if-changed-cond),$(rule_$(1)),@:)
 
+# Same as newer-prereqs, but allows to exclude specified extra dependencies
+newer_prereqs_except = $(filter-out $(PHONY) $(1),$?)
+
+# Same as if_changed, but allows to exclude specified extra dependencies
+if_changed_except = $(if $(call newer_prereqs_except,$(2))$(cmd-check),      \
+	$(cmd);                                                              \
+	printf '%s\n' 'savedcmd_$@ := $(make-cmd)' > $(dot-target).cmd, @:)
+
 ###
 # why - tell why a target got built
 #       enabled by make V=2
@@ -282,3 +290,30 @@ ifneq ($(and $(filter notintermediate, $(.FEATURES)),$(filter-out 4.4,$(MAKE_VER
 else
 .SECONDARY:
 endif
+
+###############################################################################
+## barebox specifics
+###############################################################################
+
+# File resolution
+# ===========================================================================
+
+# turn an absolute path relative if it's beneath the specified directory
+strip-path = $(patsubst $(2)/%,%,$(1))
+strip-srctree = $(call strip-path,$(1),$(srctree))
+strip-objtree = $(call strip-path,$(1),$(objtree))
+
+# turn a relative path absolute if it exists by prefixing it with the
+# specified directory
+resolve-path = $(strip $(if $(1), $(if $(filter /%,$(1)), $(1), \
+        $(if $(wildcard $(2)/$(1)), $(2)/$(1), $(1) ) ), $(1) ))
+resolve-srctree = $(call resolve-path,$(1),$(srctree))
+resolve-objtree = $(call resolve-path,$(1),$(objtree))
+
+# resolve a relative path first beneath srctree if it exists there
+# and otherwise beneath objtree
+resolve-external = $(call resolve-objtree,$(call resolve-srctree,$(1)))
+
+# Read file in filechk
+# ===========================================================================
+filechk_cat = cat $<
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 591da3d750ec74596a59f57692fbf545a10dd6d7..d6b4f0344a31c0d36f5de352ac49a28d63b9ad8e 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -15,6 +15,7 @@ obj-m :=
 lib-y :=
 lib-m :=
 pbl-y :=
+policy-y :=
 always :=
 always-y :=
 always-m :=
@@ -60,6 +61,12 @@ ifneq ($(need-dtbslist)$(dtb-y)$(dtb-)$(filter %.dtb %.dtb.o %.dtbo.o,$(targets)
 include $(srctree)/scripts/Makefile.dtbs
 endif
 
+ifdef CONFIG_SECURITY_POLICY
+ifneq ($(policy-y)$(policy-)$(filter %.sconfig %.sconfig.tmp %.sconfig.c %.sconfig.o,$(targets)),)
+include $(srctree)/scripts/Makefile.policy
+endif
+endif
+
 ifndef obj
 $(warning kbuild: Makefile.build is included improperly)
 endif
@@ -73,6 +80,13 @@ cmd_gen_order = { $(foreach m, $(real-prereqs), \
 	$(if $(filter %/$(notdir $@), $m), cat $m, echo $m);) :; } \
 	> $@
 
+# This is a list of source files from the current Makefile and its
+# sub-directories. The timestamp should be updated when any of the member files.
+
+cmd_gen_order_src = { $(foreach m, $(patsubst $(srctree)/%,%,$(real-prereqs)), \
+	$(if $(filter %/$(notdir $@), $m), cat $m, echo $m);) :; } \
+	> $@
+
 ifneq ($(strip $(lib-y) $(lib-m) $(lib-n) $(lib-)),)
 lib-target := $(obj)/lib.a
 endif
@@ -278,12 +292,14 @@ intermediate_targets = $(foreach sfx, $(2), \
 # %.dtb.pbl.o <- %.dtb.S <- %.dtb <- %.dts (Barebox only)
 # %.lex.o <- %.lex.c <- %.l
 # %.tab.o <- %.tab.[ch] <- %.y
+# %.sconfig.o <- %.sconfig.c <- %.sconfig.tmp <- %.sconfig
 targets += $(call intermediate_targets, .asn1.o, .asn1.c .asn1.h) \
 	   $(call intermediate_targets, .dtb.o, .dtb.S .dtb.z .dtb) \
 	   $(call intermediate_targets, .dtbo.o, .dtbo.S .dtbo.z .dtbo) \
 	   $(call intermediate_targets, .dtb.pbl.o, .dtb.S .dtb.z .dtb) \
 	   $(call intermediate_targets, .lex.o, .lex.c) \
-	   $(call intermediate_targets, .tab.o, .tab.c .tab.h)
+	   $(call intermediate_targets, .tab.o, .tab.c .tab.h) \
+	   $(call intermediate_targets, .sconfig.o, .sconfig.c .sconfig.tmp)
 
 # Descending
 # ---------------------------------------------------------------------------
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index e6f0e254960a69b7aa3273bdc5469e75c39db977..f84d1456526c1c4dfca837ff0f36c0d542b6ae1e 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -85,6 +85,13 @@ extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX),$(bbenv-y))
 extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).S,$(bbenv-y))
 extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).o,$(bbenv-y))
 
+ifdef CONFIG_SECURITY_POLICY
+obj-y	+= $(addsuffix .o, $(policy-y))
+extra-	+= $(patsubst %,%.c,$(policy-))
+extra-m	+= $(patsubst %,%.c,$(policy-m))
+extra-y	+= $(patsubst %,%.c,$(policy-y))
+endif
+
 # Replace multi-part objects by their individual parts,
 # including built-in.a from subdirectories
 real-obj-y := $(foreach m, $(obj-y), $(if $(strip $($(m:.o=-objs)) $($(m:.o=-y)) $($(m:.o=-))),$($(m:.o=-objs)) $($(m:.o=-y)),$(m)))
@@ -652,3 +659,43 @@ cmd_public_keys = \
 
 %: %.base64
 	$(call cmd,b64dec)
+
+# Security Policy Handling
+# ---------------------------------------------------------------------------
+
+# Process security Kconfig file
+# TODO: set KCONFIG_WARN_UNKNOWN_SYMBOLS & KCONFIG_WERROR once supported
+quiet_cmd_sconfig = SCONFIG $(notdir $(or $(4),$(3)))
+      cmd_sconfig = \
+           KBUILD_KCONFIG=Sconfig			\
+           KCONFIG_CONFIG_ORIG=$(KCONFIG_CONFIG)	\
+           KCONFIG_CONFIG=$(3)				\
+           KCONFIG_CONFIG_=SCONFIG_			\
+           KBUILD_DEFCONFIG=allnoconfig			\
+           KCONFIG_NOSILENTUPDATE=1			\
+           KCONFIG_AUTOCONFIG=/dev/null			\
+           KCONFIG_AUTOHEADER=/dev/null			\
+           $(MAKE) -f $(srctree)/Makefile $(2) quiet=silent_
+
+# Check that a policy is up to date
+# NOTE: With KCONFIG_NOSILENTUPDATE=1, a simpler implementation is
+# possible: $(cmd_sconfig) syncconfig $(2), but it has the downside
+# of a worse error message, so we don't do that here
+quiet_cmd_security_checkconfig = SCONFIG $(notdir $(2))
+      cmd_security_checkconfig =				\
+	trap "rm -f $(2).tmp $(2).tmp.old" EXIT;		\
+	cp $(2) $(2).tmp ;					\
+        $(call noop_cmd,sconfig,olddefconfig,$(2).tmp,$(2)) ;	\
+	if ! cmp -s $(2).tmp $(2); then				\
+		echo >&2 '***'; \
+		echo >&2 '*** Security policy' \
+		         $(notdir $(2)) \
+		         'was not up to date.'; \
+		echo >&2 '***'; \
+		echo >&2 '*** Please run "make security_olddefconfig" or'; \
+		echo >&2 '*** another configurator and commit the results to'; \
+		echo >&2 '*** '$(2); \
+		echo >&2 '***'; \
+		$(if $(Q),,diff -u $(2) $(2).tmp >&2;) \
+		exit 1; \
+	fi ; rm -f $(2).tmp $(2).tmp.old
diff --git a/scripts/Makefile.policy b/scripts/Makefile.policy
new file mode 100644
index 0000000000000000000000000000000000000000..4c71774bbbc98f9de9cf5463e5ef431de60be6ac
--- /dev/null
+++ b/scripts/Makefile.policy
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+real-policy-y   := $(addprefix $(obj)/, $(policy-y))
+
+targets         += $(addsuffix .tmp, $(real-policy-y))
+
+# policy-list
+# ---------------------------------------------------------------------------
+
+subdir-policylist := $(addsuffix /policy-list, $(subdir-ym))
+real-policy-y   += $(subdir-policylist)
+
+ifneq ($(policy-y)$(policy-),)
+always-y        += $(obj)/policy-list
+
+$(subdir-policylist): $(obj)/%/policy-list: $(obj)/% ;
+
+$(obj)/policy-list: $(real-policy-y) FORCE
+	$(call if_changed,gen_order_src)
+endif
+
+# sconfigpost (.sconfig -> .sconfig.c -> .sconfig.o)
+# ---------------------------------------------------------------------------
+
+$(obj)/%.sconfig.tmp: $(src)/%.sconfig FORCE
+	$(call filechk,cat)
+
+quiet_cmd_sconfigpost_c = SCONFPP $@
+      cmd_sconfigpost_c = $(SCONFIGPOST) -o $@ -D$(depfile) $(2)
+
+$(obj)/%.sconfig.c: quiet_cmd_sconfig :=
+$(obj)/%.sconfig.c: $(obj)/%.sconfig.tmp FORCE
+	+$(Q)$(call noop_cmd,security_checkconfig,$<)
+	$(call if_changed_dep,sconfigpost_c,$<)
+
+# targets
+# ---------------------------------------------------------------------------
+
+targets += $(always-y)
diff --git a/scripts/Sconfig.include b/scripts/Sconfig.include
new file mode 100644
index 0000000000000000000000000000000000000000..3f5e4c652d97c62926c7dffbf9340bf753f4ea1c
--- /dev/null
+++ b/scripts/Sconfig.include
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+source "scripts/Kconfig.include"
+
+kconfig-state = $(shell,CONFIG_=CONFIG_ $(srctree)/scripts/config --file "$(KCONFIG_CONFIG_ORIG)" -s "$(1)")
+kconfig-enabled = $(shell,echo $(kconfig-state,$(1)))
diff --git a/scripts/basic/.gitignore b/scripts/basic/.gitignore
index 961c91c8a884614a852e620346b6346ecbd4b1a1..660035252b31cf7e1bf6b19a83ff79c6f000d2d4 100644
--- a/scripts/basic/.gitignore
+++ b/scripts/basic/.gitignore
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 /fixdep
+/sconfigpost
diff --git a/scripts/basic/Makefile b/scripts/basic/Makefile
index eeb6a38c5551516bc3b1539e5f236ff952fea394..cd4d9f321d63d9af7cbea49b51531cd413c44156 100644
--- a/scripts/basic/Makefile
+++ b/scripts/basic/Makefile
@@ -1,5 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 #
 # fixdep: used to generate dependency information during build process
+# sconfigpost: used to postprocess security configs
 
 hostprogs-always-y	+= fixdep
+hostprogs-always-y	+= sconfigpost
diff --git a/scripts/basic/sconfigpost.c b/scripts/basic/sconfigpost.c
new file mode 100644
index 0000000000000000000000000000000000000000..171eb8f43e586c7c2da28bf2254a014c479852e4
--- /dev/null
+++ b/scripts/basic/sconfigpost.c
@@ -0,0 +1,540 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Postprocess Sconfig files
+
+#include <getopt.h>
+#include <stdbool.h>
+#include <string.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <sys/stat.h>
+#include <dirent.h>
+#include <utime.h>
+
+static void usage(int exitcode);
+
+static const char *argv0;
+static char *symbol_name = "untitled";
+static const char *policy_name = "untitled";
+
+#define MAX(x, y) ((x) > (y) ? (x) : (y))
+
+enum print { PRINT_ARRAY, PRINT_ENUM, PRINT_DEFINES, PRINT_STRINGS };
+
+#define panic(fmt, ...) do {                                    \
+	fprintf(stderr, "%s: " fmt, argv0, ##__VA_ARGS__);      \
+	exit(6);                                                \
+} while (0)
+
+#define xasprintf(args...) ({           \
+	char *_buf;                     \
+	if (asprintf(&_buf, args) < 0)  \
+	panic("asprintf: %m\n");        \
+	_buf;                           \
+})
+
+#define xstrdup(args...) nonnull(strdup(args))
+#define xmalloc(args...) nonnull(malloc(args))
+#define xrealloc(args...) nonnull(realloc(args))
+
+#ifdef DEBUG
+#define debug(args...) fprintf(stderr, args)
+#else
+#define debug(args...) (void)0
+#endif
+
+static inline size_t str_has_prefix(const char *str, const char *prefix)
+{
+	size_t len = strlen(prefix);
+	return strncmp(str, prefix, len) == 0 ? len : 0;
+}
+
+static void *nonnull(void *ptr)
+{
+	if (!ptr)
+		exit(2);
+	return ptr;
+}
+
+static FILE *xfopen(const char *path, const char *mode)
+{
+	FILE *fp;
+
+	fp = fopen(path, mode);
+	if (!fp)
+		panic("failed to open \"%s\" with mode '%s': %m\n",
+		      path, mode);
+
+	return fp;
+}
+
+static void print_global_header(FILE *out, enum print print)
+{
+	switch (print) {
+	case PRINT_ARRAY:
+		fprintf(out, "#include <security/defs.h>\n");
+		fprintf(out, "const struct security_policy __policy_%s[] = {\n", symbol_name);
+		break;
+	case PRINT_STRINGS:
+		fprintf(out, "#include <security/defs.h>\n");
+		break;
+	default:
+		break;
+	}
+}
+
+static void print_header(FILE *out, enum print print, bool is_last)
+{
+	switch (print) {
+	case PRINT_ARRAY:
+		fprintf(out, "{\n");
+		fprintf(out, "\t.name = \"%s\",\n", policy_name);
+		fprintf(out, "\t.chained = %d,\n", is_last ? 0 : 1);
+		fprintf(out, "\t.policy = {\n");
+		break;
+	case PRINT_ENUM:
+		fprintf(out, "enum security_config_option {\n");
+		break;
+	case PRINT_STRINGS:
+		fprintf(out, "const char *sconfig_names[SCONFIG_NUM] = {\n");
+		break;
+	default:
+		break;
+	}
+}
+
+static void print_elem(FILE *out, enum print print,
+		       const char *config, bool enable, int i)
+{
+	switch (print) {
+	case PRINT_DEFINES:
+		fprintf(out, "#define %-40s %u\n", config, i);
+		break;
+	case PRINT_ARRAY:
+		fprintf(out, "\t[%-40s] = %s,\n", config,
+			enable ? "1" : "0");
+		break;
+	case PRINT_ENUM:
+		fprintf(out, "\t%s = %i,\n", config, i);
+		break;
+	case PRINT_STRINGS:
+		fprintf(out, "\t[%s] = \"%s\",\n", config, config);
+		break;
+	}
+}
+
+static void print_footer(FILE *out, enum print print, bool is_last, int i)
+{
+	switch (print) {
+	case PRINT_DEFINES:
+		return;
+	case PRINT_ENUM:
+		fprintf(out, "\tSCONFIG_NUM = %i\n};\n", i);
+		break;
+	case PRINT_ARRAY:
+		if (is_last)
+			fprintf(out, "\t}}\n");
+		else
+			fprintf(out, "\t}},\n");
+		break;
+	case PRINT_STRINGS:
+		fprintf(out, "};\n");
+		break;
+	}
+}
+
+static void print_global_footer(FILE *out, enum print print)
+{
+	switch (print) {
+	case PRINT_ARRAY:
+		fprintf(out, "};\n");
+		break;
+	default:
+		break;
+	}
+}
+
+static const char *nextline(char **line, FILE *in)
+{
+	size_t len = 0;
+	ssize_t nread;
+
+	do {
+		nread = getline(line, &len, in);
+		if (nread < 0)
+			return NULL;
+	} while (!nread);
+
+	if (nread > 256)
+		panic("line \"%s\" exceeds maximum length of 256\n", *line);
+
+	if ((*line)[nread - 1] == '\n')
+		(*line)[nread - 1] = '\0';
+
+	return *line;
+}
+
+#define CONFIG_VAL_SKIP		(void *)1
+
+static const char *parse_config_val(char *line, bool *enable)
+{
+	static char config[256];
+	static char name[256];
+	char end[2];
+	int val_offset;
+	int ret;
+
+	if ((ret = sscanf(line, "# %255[A-Za-z0-9_] is not se%1[t]",
+			  config, end)) == 2) {
+		if (str_has_prefix(config, "SCONFIG_POLICY_"))
+			return CONFIG_VAL_SKIP;
+		if (enable)
+			*enable = false;
+	} else if ((ret = sscanf(line, "SCONFIG_POLICY_%255[A-Za-z0-9_]=%255s",
+				 config, name)) == 2) {
+		if (!strcmp(config, "NAME")) {
+			policy_name = name + 1;
+			*strchrnul(policy_name, '"') = '\0';
+		}
+		return CONFIG_VAL_SKIP;
+	} else if ((ret = sscanf(line, "%255[A-Za-z0-9_]=%n", config,
+				 &val_offset)) == 1) {
+		if (strcmp(&line[val_offset], "y"))
+			panic("\"%s\": bool data type expected\n", line);
+
+		if (enable)
+			*enable = true;
+	} else {
+		return NULL;
+	}
+
+	return config;
+}
+
+static void strsanitize(char *str)
+{
+	size_t i;
+
+	while ((i = strcspn(str, "-."))) {
+		switch (str[i]) {
+		case '-':
+			str[i] = '_';
+			break;
+		case '.':
+			str[i] = '\0';
+			/* fallthrough */
+		case '\0':
+			return;
+		}
+
+		str += i + 1;
+	}
+}
+
+static int parse_ext(const struct dirent *dir)
+{
+	const char *ext;
+
+	if (!dir || dir->d_type == DT_DIR)
+		return 0;
+
+	ext = strrchr(dir->d_name, '.');
+	if (!ext || ext == dir->d_name)
+		return 0;
+
+	return strcmp(ext, ".sconfig") == 0;
+}
+
+static time_t newest_mtime;
+
+static void stat_inputfile(const char *path, struct stat *st)
+{
+	if (stat(path, st))
+		panic("Input file '%s' doesn't exist: %m\n", path);
+
+	if (!S_ISDIR(st->st_mode))
+		newest_mtime = MAX(newest_mtime, st->st_mtime);
+}
+
+static char **collect_input(int argc, char *argv[])
+{
+	char **buf;
+	int i = 0;
+
+	argc++;
+	buf = xmalloc(argc * sizeof(*buf));
+
+	for (char **arg = argv; *arg; arg++) {
+		char **newbuf;
+		struct stat st;
+		struct dirent **namelist;
+		int n;
+
+		stat_inputfile(*arg, &st);
+
+		if (!S_ISDIR(st.st_mode)) {
+			buf[i++] = *arg;
+			continue;
+		}
+
+		n = scandir(*arg, &namelist, parse_ext, alphasort);
+		if (n < 0)
+			panic("scandir: %m\n");
+
+		argc += n;
+
+		newbuf = xrealloc(buf, argc * sizeof(*newbuf));
+		buf = newbuf;
+
+		for (int j = 0; j < n; j++) {
+			buf[i + j] = xasprintf("%s/%s", *arg, namelist[j]->d_name);
+			free(namelist[j]);
+
+			/* update newest_times */
+			stat_inputfile(buf[i + j], &st);
+		}
+
+		free(namelist);
+		i += n;
+	}
+
+	buf[i] = NULL;
+	return buf;
+}
+
+static long fsize(FILE *fp)
+{
+	long size;
+
+	fseek(fp, 0, SEEK_END);
+
+	size = ftell(fp);
+	if (size < 0)
+		panic("ftell: %m\n");
+
+	fseek(fp, 0, SEEK_SET);
+
+	return size;
+}
+
+static bool fidentical(FILE *fp1, FILE *fp2)
+{
+	int ch1, ch2;
+	if (fsize(fp1) != fsize(fp2)) {
+		debug("file size mismatch\n");
+		return false;
+	}
+
+	do {
+		ch1 = getc(fp1);
+		ch2 = getc(fp2);
+		if (ch1 != ch2)
+			return false;
+	} while (ch1 != EOF && ch2 != EOF);
+
+	return true;
+}
+
+static char *make_tmp_path(const char *path, FILE **fp)
+{
+
+	const char *filename, *slash;
+	char *tmpfilepath;
+
+	slash = strrchr(path, '/');
+	filename = slash ? slash + 1 : path;
+
+	if (slash)
+		tmpfilepath = xasprintf("%.*s/.%s.tmp", (int)(slash - path), path,
+					filename);
+	else
+		tmpfilepath = xasprintf(".%s.tmp", filename);
+
+	*fp = xfopen(tmpfilepath, "w+");
+
+	return tmpfilepath;
+}
+
+static void append_dependency(FILE *depfile, const char *path)
+{
+	char *abspath;
+
+	if (!depfile)
+		return;
+
+	if (!path) {
+		fprintf(depfile, "\n");
+		return;
+	}
+
+	abspath = nonnull(realpath(path, NULL));
+
+	fprintf(depfile, "\t%s \\\n", abspath);
+
+	free(abspath);
+}
+
+int main(int argc, char *argv[])
+{
+	const char *outfilepath = NULL;
+	char *tmpfilepath = NULL;
+	char **infilepaths;
+	enum print print = PRINT_ARRAY;
+	FILE *in = stdin, *out = stdout, *out_final = NULL, *depfile = NULL;
+	char *line = NULL;
+	int opt;
+
+	argv0 = argv[0];
+
+	while ((opt = getopt(argc, argv, "esdD:o:h")) > 0) {
+		switch (opt) {
+		case 'e':
+			print = PRINT_ENUM;
+			break;
+		case 's':
+			print = PRINT_STRINGS;
+			break;
+		case 'd':
+			print = PRINT_DEFINES;
+			break;
+		case 'D':
+			depfile = xfopen(optarg, "w");
+			break;
+		case 'o':
+			outfilepath = optarg;
+			break;
+		case 'h':
+			usage(0);
+			break;
+		default:
+			usage(1);
+			break;
+		}
+	}
+
+	if (depfile && !outfilepath)
+		panic("can't generate depfile without -o argument\n");
+
+	if (argc - optind > 1 && print != PRINT_ARRAY)
+		panic("processing multiple files at once only possible for array mode\n");
+
+	if (argc == optind && depfile)
+		panic("can't generate depfile while reading stdin\n");
+
+	if (outfilepath) {
+		out_final = fopen(outfilepath, "r+");
+		if (out_final) {
+			tmpfilepath = make_tmp_path(outfilepath, &out);
+		} else if (outfilepath) {
+			out = xfopen(outfilepath, "w");
+		}
+
+		symbol_name = xasprintf("%s", basename(outfilepath));
+		strsanitize(symbol_name);
+	}
+
+	infilepaths = collect_input(argc - optind, &argv[optind]);
+
+	print_global_header(out, print);
+
+	if (depfile)
+		fprintf(depfile, "%s: \\\n", outfilepath);
+
+	for (char **infilepath = infilepaths; *infilepath; infilepath++) {
+		bool is_last = infilepath[1] == NULL;
+		bool hdr_printed = false;
+		const char *comment_prefix = "";
+		int option_idx = 0;
+
+		in = xfopen(*infilepath, "r");
+
+		while (nextline(&line, in)) {
+			const char *config;
+			bool enable;
+
+			config = parse_config_val(line, &enable);
+			if (config == CONFIG_VAL_SKIP)
+				continue;
+			if (!config) {
+				if (line[0] == '#')
+					fprintf(out, "%s// %s\n", comment_prefix, line + 1);
+
+				continue;
+			}
+
+			if (!hdr_printed) {
+				print_header(out, print, is_last);
+				if (print != PRINT_DEFINES)
+					comment_prefix = "\t";
+				hdr_printed = true;
+			}
+
+			print_elem(out, print, config, enable, option_idx++);
+		}
+
+		print_footer(out, print, is_last, option_idx);
+		fputs("\n", out);
+
+		if (print != PRINT_ARRAY) {
+			rewind(in);
+
+			while (nextline(&line, in)) {
+				const char *config = parse_config_val(line, NULL);
+				if (config && config != CONFIG_VAL_SKIP)
+					fprintf(out, "#define\t%s_DEFINED 1\n", config);
+			}
+		}
+
+		free(line);
+		fclose(in);
+
+		append_dependency(depfile, *infilepath);
+	}
+
+	print_global_footer(out, print);
+
+	fflush(out);
+
+	if (out_final) {
+		if (fidentical(out, out_final)) {
+			struct stat st;
+
+			debug("removing %s\n", tmpfilepath);
+			remove(tmpfilepath);
+
+			if (stat(outfilepath, &st))
+				panic("Output file '%s' doesn't exist?? %m\n", outfilepath);
+			if (st.st_mtime <= newest_mtime)
+				utime(outfilepath, NULL);
+		} else {
+			debug("renaming %s to %s\n", tmpfilepath, outfilepath);
+			rename(tmpfilepath, outfilepath);
+		}
+	}
+
+	append_dependency(depfile, "include/generated/autoconf.h");
+	if (print == PRINT_ARRAY || print == PRINT_STRINGS)
+		append_dependency(depfile, "include/generated/security_autoconf.h");
+	append_dependency(depfile, NULL);
+
+	return 0;
+}
+
+static void usage(int exitcode)
+{
+	FILE *fp = exitcode ? stderr : stdout;
+
+	fprintf(fp,
+		"usage: %s [-o FILE] [-d DEPFILE] [-edph] [config]\n"
+		"This script postprocess a barebox Sconfig (Security config)\n"
+		"in the Kconfig .config format for further use inside barebox.\n"
+		"If no positional argument is specified, the script operates on stdin\n"
+		"Options:\n"
+		"  -e             Output policy as C enumeration\n"
+		"  -s             Output policy option names as C array of strings\n"
+		"  -d             Output policy as C preprocessor defines\n"
+		"  -D <depfile>   Write depedencies into <depfile>\n"
+		"  -o <outfile>   Write output into <outfile> instead of stdout\n"
+		"  -h		  This help text\n", argv0);
+
+	exit(exitcode);
+}
diff --git a/security/Kconfig b/security/Kconfig
index 372fd275fde935a9d7e16512b6eb685abe0e6059..de58002f9656f927a33321b1f165538068e723c4 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -17,6 +17,8 @@ config INSECURE
 
 	    - changes the default of global.env.autoprobe to 1
 
+source "security/Kconfig.policy"
+
 config PASSWORD
 	bool
 	prompt "Password Framework"
diff --git a/security/Kconfig.policy b/security/Kconfig.policy
new file mode 100644
index 0000000000000000000000000000000000000000..6c5cb5687c17c5a66f8757191c00d1c3d75a9312
--- /dev/null
+++ b/security/Kconfig.policy
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# barebox Security Policy Support
+
+menuconfig SECURITY_POLICY
+	bool "Security Policy Support"
+	help
+	  A Security policy is a collection of security configuration options
+	  that can be activated together at runtime.
+	  Together, the describe a security state that barebox should operate in.
+
+	  Policies can be registered by board code or supplied by
+	  an external build system. The policy name must be unique across
+	  all registered policies.
+
+	  Policies are selected by name and only one can be active at a given time.
+	  barebox does not mandate any specific behavior for a policy according
+	  to its name. Boards have full freedom to name policies and configure the
+	  options as they deem appropriate.
+
+	  However, we recommend using established terms to make it easier to reason
+	  about the different security states:
+
+	    devel     Security policy should permit everything for
+	              development purposes.
+
+	    factory   System is in a secure boot mode, but policy allows
+	              interactive use for factory bring up purposes.
+	              Board code usually enforces via eFuse that factory
+	              mode can not be re-selected once deselected.
+
+	    lockdown  Factory bring up is done and device is ready for use
+	              in the field with barebox as part of the secure boot
+	              chain. This policy usually disallows booting unsigned
+	              images
+
+	    tamper    Tampering attempt was detected. The security policy would
+	              take steps to protect secrets (up to bricking the device).
+
+	    return    For use in field-return devices, the policy should
+	              take steps to unlock the device for analysis purposes.
+	              Board code should make sure to delete secret and
+	              confidential data before activating this policy.
+
+if SECURITY_POLICY
+
+config SECURITY_POLICY_INIT
+	string
+	prompt "Initial security policy"
+	help
+	  The policy named here will be automatically selected the first
+	  time a security policy is to be consulted.
+	  It's recommended to use a restrictive policy here and remove
+	  the restrictions if needed instead of the other way round.
+
+choice
+	prompt "Initial Security Policy"
+	default SECURITY_POLICY_DEFAULT_PERMISSIVE
+
+config SECURITY_POLICY_DEFAULT_PERMISSIVE
+	bool "Permissive by default"
+	select HAS_INSECURE_DEFAULTS
+	help
+	  In absence of a selected security policy, everything is allowed.
+	  A warning will be printed the first time a security policy would
+	  need to be consulted.
+
+	  This is a development aid and unsuitable for use in the field:
+	  A security policy should always be selected, either early on by
+	  board code or via CONFIG_SECURITY_POLICY_INIT.
+
+config SECURITY_POLICY_DEFAULT_PANIC
+	bool "Panic"
+	help
+	  In absence of a selected security policy, panic on the first
+	  time a security policy is to be consulted.
+
+	  If CONFIG_SECURITY_POLICY_INIT is not set, this expects a
+	  security policy to be selected prior to late_initcall.
+
+endchoice
+
+config SECURITY_POLICY_NAMES
+	bool
+
+endif
diff --git a/security/Makefile b/security/Makefile
index de9778620d282c7f541eb22341d5c02c2dcc44d6..16b328266a1b35861ee263e8026fc8ebd704aedb 100644
--- a/security/Makefile
+++ b/security/Makefile
@@ -1,5 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+obj-$(CONFIG_SECURITY_POLICY)		+= policy.o
+obj-$(CONFIG_SECURITY_POLICY_NAMES)	+= sconfig_names.o
 obj-$(CONFIG_CRYPTO_KEYSTORE)	+= keystore.o
 obj-$(CONFIG_JWT)		+= jwt.o
 obj-pbl-$(CONFIG_HAVE_OPTEE)	+= optee.o
diff --git a/security/Sconfig b/security/Sconfig
new file mode 100644
index 0000000000000000000000000000000000000000..f7bf67e6e05bd77e362b61b82228f68abd64f8bd
--- /dev/null
+++ b/security/Sconfig
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+# Note: Symbols starting with POLICY_ are reserved and handled specially
+config POLICY_NAME
+        string "Policy name"
+	help
+	  Policies are selected by name and only one can be active at a given time.
+	  barebox does not mandate any specific behavior for a policy according
+	  to its name. Boards have full freedom to name policies and configure the
+	  options as they deem appropriate.
+
+	  However, we recommend using established terms to make it easier to reason
+	  about the different security states:
+
+	    devel     Security policy should permit everything for
+	              development purposes.
+
+	    factory   System is in a secure boot mode, but policy allows
+	              interactive use for factory bring up purposes.
+	              Board code usually enforces via eFuse that factory
+	              mode can not be re-selected once deselected.
+
+	    lockdown  Factory bring up is done and device is ready for use
+	              in the field with barebox as part of the secure boot
+	              chain. This policy usually disallows booting unsigned
+	              images
+
+	    tamper    Tampering attempt was detected. The security policy would
+	              take steps to protect secrets (up to bricking the device).
+
+	    return    For use in field-return devices, the policy should
+	              take steps to unlock the device for analysis purposes.
+	              Board code should make sure to delete secret and
+	              confidential data before activating this policy.
+
+config SECURITY_POLICY_SELECT
+	bool "Allow selecting a different security policy"
+	depends on $(kconfig-enabled,SECURITY_POLICY)
+	default y
+	help
+	  Say n here if selecting this policy is final and all subsequent calls
+	  to security_policy_select should be refused.
diff --git a/security/policy.c b/security/policy.c
new file mode 100644
index 0000000000000000000000000000000000000000..10d6148866ab2eba6cc8ff0d78e99025d83ed3e8
--- /dev/null
+++ b/security/policy.c
@@ -0,0 +1,243 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "policy: " fmt
+
+#include <init.h>
+#include <linux/printk.h>
+#include <linux/bitmap.h>
+#include <param.h>
+#include <device.h>
+#include <stdio.h>
+
+#include <security/policy.h>
+#include <security/config.h>
+
+static const char *sconfig_name(unsigned option)
+{
+	static char name[sizeof("4294967295")];
+
+	if (IS_ENABLED(CONFIG_SECURITY_POLICY_NAMES))
+		return sconfig_names[option];
+
+	snprintf(name, sizeof(name), "%u", option);
+	return name;
+}
+
+#define policy_debug(policy, opt, fmt, ...) \
+	pr_debug("(%s) %s: " fmt, \
+		 (policy) ? (policy)->name : "default", \
+		 sconfig_name(opt), ##__VA_ARGS__)
+
+#ifdef CONFIG_SECURITY_POLICY_DEFAULT_PERMISSIVE
+#define policy_err			pr_err
+#define policy_warn_once		pr_warn_once
+#define policy_WARN			WARN
+#else
+#define policy_err(fmt, ...)		panic(pr_fmt(fmt), ##__VA_ARGS__)
+#define policy_warn_once(fmt, ...)	panic(pr_fmt(fmt), ##__VA_ARGS__)
+#define policy_WARN			BUG
+#endif
+
+struct policy_list_entry {
+	const struct security_policy *policy;
+	struct list_head list;
+};
+
+const struct security_policy *active_policy;
+
+static LIST_HEAD(policy_list);
+NOTIFIER_HEAD(sconfig_notifier_list);
+
+static bool __is_allowed(const struct security_policy *policy, unsigned option)
+{
+	if (!policy)
+		return true;
+
+	return policy->policy[option];
+}
+
+bool is_allowed(const struct security_policy *policy, unsigned option)
+{
+	policy = policy ?: active_policy;
+
+	if (WARN(option > SCONFIG_NUM))
+		return false;
+
+	if (!policy && *CONFIG_SECURITY_POLICY_INIT) {
+		security_policy_select(CONFIG_SECURITY_POLICY_INIT);
+		policy = active_policy;
+	}
+
+	if (policy) {
+		bool allow = __is_allowed(policy, option);
+
+		policy_debug(policy, option, "%s for %pS\n",
+			 allow ? "allowed" : "denied", (void *)_RET_IP_);
+
+		return allow;
+	}
+
+	if (IS_ENABLED(CONFIG_SECURITY_POLICY_DEFAULT_PERMISSIVE))
+		pr_warn_once("option %s checked before security policy was set!\n",
+			     sconfig_name(option));
+	else
+		panic(pr_fmt("option %s checked before security policy was set!"),
+		      sconfig_name(option));
+
+	return true;
+}
+
+int security_policy_activate(const struct security_policy *policy)
+{
+	const struct security_policy *old_policy = active_policy;
+
+	if (policy == old_policy)
+		return 0;
+
+	if (old_policy && !IS_ALLOWED(SCONFIG_SECURITY_POLICY_SELECT)) {
+		pr_err("Policy %s is permanent once selected\n",
+		       active_policy->name);
+		return -EPERM;
+	}
+
+	active_policy = policy;
+
+	for (int i = 0; i < SCONFIG_NUM; i++) {
+		if (__is_allowed(policy, i) == __is_allowed(old_policy, i))
+			continue;
+
+		notifier_call_chain(&sconfig_notifier_list, i, NULL);
+	}
+
+	return 0;
+}
+
+const struct security_policy *security_policy_get(const char *name)
+{
+	const struct policy_list_entry *entry;
+
+	list_for_each_entry(entry, &policy_list, list) {
+		if (!strcmp(name, entry->policy->name))
+			return entry->policy;
+	}
+
+	return NULL;
+}
+
+int security_policy_select(const char *name)
+{
+	const struct security_policy *policy;
+
+	policy = security_policy_get(name);
+	if (!policy) {
+		policy_err("Policy '%s' not found!\n", name);
+		return -ENOENT;
+	}
+
+	return security_policy_activate(policy);
+}
+
+int __security_policy_register(const struct security_policy policy[])
+{
+	int ret = 0;
+
+	do {
+		struct policy_list_entry *entry;
+
+		if (security_policy_get(policy->name)) {
+			policy_err("policy '%s' already registered\n", policy->name);
+			ret = -EBUSY;
+			continue;
+		}
+
+		entry = xzalloc(sizeof(*entry));
+		entry->policy = policy;
+		list_add_tail(&entry->list, &policy_list);
+	} while ((policy++)->chained);
+
+	return ret;
+}
+
+#ifdef CONFIG_CMD_SCONFIG
+void security_policy_unregister_one(const struct security_policy *policy)
+{
+	struct policy_list_entry *entry;
+
+	if (!policy)
+		return;
+
+	list_for_each_entry(entry, &policy_list, list) {
+		if (entry->policy == policy) {
+			list_del(&entry->list);
+			return;
+		}
+	}
+}
+#endif
+
+void security_policy_list(void)
+{
+	const struct policy_list_entry *entry;
+
+	list_for_each_entry(entry, &policy_list, list) {
+		printf("%s\n", entry->policy->name);
+	}
+}
+
+static int sconfig_handler_filtered(struct notifier_block *nb,
+				    unsigned long opt, void *data)
+{
+	struct sconfig_notifier_block *snb
+		= container_of(nb, struct sconfig_notifier_block, nb);
+	bool allow;
+
+	if (snb->opt != opt)
+		return NOTIFY_DONE;
+
+	allow = is_allowed(NULL, opt);
+
+	policy_debug(active_policy, opt, "calling %pS to %s\n",
+		     snb->cb_filtered, allow ? "allow" : "deny");
+
+	snb->cb_filtered(snb, opt, is_allowed(NULL, opt));
+	return NOTIFY_OK;
+}
+
+int __sconfig_register_handler_filtered(struct sconfig_notifier_block *snb,
+					sconfig_notifier_callback_t cb,
+					enum security_config_option opt)
+{
+	snb->cb_filtered = cb;
+	snb->opt = opt;
+	return sconfig_register_handler(&snb->nb, sconfig_handler_filtered);
+}
+
+struct device security_device = {
+	.name = "security",
+	.id = DEVICE_ID_SINGLE,
+};
+
+static char *policy_name = "";
+
+static int security_policy_get_name(struct param_d *param, void *priv)
+{
+	if (!active_policy) {
+		policy_name = "";
+		return 0;
+	}
+
+	free_const(policy_name);
+	policy_name = strdup(active_policy->name);
+	return 0;
+}
+
+static int security_init(void)
+{
+	register_device(&security_device);
+
+	dev_add_param_string(&security_device, "policy", param_set_readonly,
+			     security_policy_get_name, &policy_name, NULL);
+
+	return 0;
+}
+pure_initcall(security_init);
diff --git a/security/sconfig_names.c b/security/sconfig_names.c
new file mode 100644
index 0000000000000000000000000000000000000000..c830c4eb389202403e049db6a71b70f0f18b76f5
--- /dev/null
+++ b/security/sconfig_names.c
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <security/config.h>
+#include <string.h>
+#include <errno.h>
+#include <linux/kernel.h>
+
+#include <generated/sconfig_names.h>
+
+int sconfig_lookup(const char *name)
+{
+	for (int i = 0; i < ARRAY_SIZE(sconfig_names); i++) {
+		if (!strcmp(name, sconfig_names[i]))
+			return i;
+	}
+
+	return -ENOENT;
+}

-- 
2.39.5



