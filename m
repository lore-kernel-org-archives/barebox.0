Delivery-date: Sun, 30 May 2021 17:01:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnMwt-0006KB-AD
	for lore@lore.pengutronix.de; Sun, 30 May 2021 17:01:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnMwn-0004jD-5W
	for lore@pengutronix.de; Sun, 30 May 2021 17:01:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QrHOWKo9KFwj0CfePy+NcWfPiLnDVO4V9SF1GsVELM=; b=lpWI9/JfpXuHnM
	vP2IcGdaU59/ATYSCxHnZpnAl47HkQ0NNv0f/tkS22MXO5NJ3O/0mBG1u7JVZNMmH+uG2LURvClgh
	XMbtNHCENTt13OkR5rrYxSYz86YfldAg6s6kODbZbUF2Q4Cqmgy1ALgZy5CAOmU/oheXcEXcy6QXn
	KxBxsH6AcFKNUetjiB4vFullQ3eU6AIoSeJO4cxnns9gQmWFVZE3V8yOTEwo9scbcK6hq+6GIlVf8
	mUKoSsuyXHlSo0UgFALR7uE7iVr5mvZBp9hGF+USVwD+dqUwV3y7M9eWRMJILF7gadRa3VLN7VntA
	ArRQndUOh4VJfJZq7dgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnMuf-009loO-9d; Sun, 30 May 2021 14:59:37 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnMuW-009lnl-Q2
 for barebox@lists.infradead.org; Sun, 30 May 2021 14:59:33 +0000
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp
 [133.32.232.101]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id 14UEwi65030387;
 Sun, 30 May 2021 23:58:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 14UEwi65030387
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1622386725;
 bh=s1xaz22cmd+d3onTNhmdmRDaQdg+mFGS4rmItNEnE0c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=euT3ufJx+vU3h7mHt1J08BfEHHkubybw0kfeYiOFAspVFsfitkMQNhb5Ok5xLHoVZ
 z8fg0JpI5Rolbxv13Z+T35TdU77KbpYv8n7KnUKrMEpDZqFkkRFCga67br7Ez5Oa68
 Cg843IKmqMTF/yYCdcD5tHvDjCvK8QIFFshq425fdLpiEChxI1JGOxQzLT6JTmbgng
 4g+DwOFi3iKSOnomlVbI6jjCMQ3GpXA58+QPsLJWQHPnHrpvAA21qvOeJC0+3CcMTr
 Otvph3Wyax8cT7ap10ytrBfhicKokxaX0dbOh/2kDbH8E8iBSR7Q4LGK7uDtFdA43y
 GJm2P2FcXcNnA==
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 30 May 2021 23:58:42 +0900
Message-Id: <20210530145842.2610109-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210530145842.2610109-1-masahiroy@kernel.org>
References: <20210530145842.2610109-1-masahiroy@kernel.org>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_SBL,
	URIBL_SBL_A,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] kconfig: update to Linux 5.13-rc1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The previous sync was Linux 5.9-rc2.

Resync scripts/kconfig/ with Linux 5.13-rc1.

Highlights:

 - make header names in include/config/ and CONFIG symbols match
   (scripts/basic/fixdep.c was adjusted)

 - remove all 'option' syntax
   (common/Kconfig was adjusted)

 - introduce KCONFIG_DEFCONFIG_LIST instead of 'option defconfig_list'

 - bug fixes and cleanups of nconfig

 - drop Qt4 support from xconfig

 - bug fixes, improvements, cleanups of xconfig

 - print a short log for syncconfig

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile                                      |  13 +-
 common/Kconfig                                |   7 +-
 scripts/basic/.gitignore                      |   2 +-
 scripts/basic/fixdep.c                        |  45 +-
 scripts/kconfig/.gitignore                    |  13 +-
 scripts/kconfig/Makefile                      |  73 ++-
 scripts/kconfig/conf.c                        | 440 +++++++++++----
 scripts/kconfig/confdata.c                    | 278 ++--------
 scripts/kconfig/expr.h                        |   6 -
 scripts/kconfig/gconf.c                       |  15 +-
 scripts/kconfig/internal.h                    |   9 +
 scripts/kconfig/lexer.l                       |   4 -
 scripts/kconfig/lkc.h                         |  66 ++-
 scripts/kconfig/lkc_proto.h                   |  15 +-
 scripts/kconfig/lxdialog/util.c               |   4 +-
 scripts/kconfig/mconf-cfg.sh                  |   4 +-
 scripts/kconfig/mconf.c                       |  15 +-
 scripts/kconfig/menu.c                        |  23 +-
 scripts/kconfig/nconf.c                       |  59 +-
 scripts/kconfig/nconf.gui.c                   | 284 ++++------
 scripts/kconfig/nconf.h                       |  51 +-
 scripts/kconfig/parser.y                      |  27 +-
 scripts/kconfig/preprocess.c                  |   2 +-
 scripts/kconfig/qconf-cfg.sh                  |  14 +-
 scripts/kconfig/qconf.cc                      | 517 ++++++++----------
 scripts/kconfig/qconf.h                       |  77 +--
 scripts/kconfig/streamline_config.pl          |   9 +-
 scripts/kconfig/symbol.c                      |   5 +-
 scripts/kconfig/tests/choice/Kconfig          |   2 +-
 .../tests/choice_value_with_m_dep/Kconfig     |   2 +-
 scripts/kconfig/tests/conftest.py             |   4 +
 scripts/kconfig/tests/inter_choice/Kconfig    |   2 +-
 32 files changed, 932 insertions(+), 1155 deletions(-)
 create mode 100644 scripts/kconfig/internal.h

diff --git a/Makefile b/Makefile
index ec1770042..2ac804f07 100644
--- a/Makefile
+++ b/Makefile
@@ -352,9 +352,6 @@ KCONFIG_CONFIG	?= .config
 
 export KCONFIG_CONFIG
 
-# Default file for 'make defconfig'. This may be overridden by arch-Makefile.
-export KBUILD_DEFCONFIG := defconfig
-
 # SHELL used by kbuild
 CONFIG_SHELL := $(shell if [ -x "$$BASH" ]; then echo $$BASH; \
 	  else if [ -x /bin/bash ]; then echo /bin/bash; \
@@ -596,8 +593,11 @@ $(KCONFIG_CONFIG):
 # This exploits the 'multi-target pattern rule' trick.
 # The syncconfig should be executed only once to make all the targets.
 # (Note: use the grouped target '&:' when we bump to GNU Make 4.3)
-%/auto.conf %/auto.conf.cmd: $(KCONFIG_CONFIG)
-	$(Q)$(MAKE) -f $(srctree)/Makefile syncconfig
+quiet_cmd_syncconfig = SYNC    $@
+      cmd_syncconfig = $(MAKE) -f $(srctree)/Makefile syncconfig
+
+%/config/auto.conf %/config/auto.conf.cmd %/generated/autoconf.h: $(KCONFIG_CONFIG)
+	+$(call cmd,syncconfig)
 else # !may-sync-config
 # External modules and some install targets need include/generated/autoconf.h
 # and include/config/auto.conf but do not care if they are up-to-date.
@@ -941,7 +941,8 @@ scripts: scripts_basic
 PHONY += prepare archprepare prepare0
 
 archprepare: outputmakefile scripts_basic include/config/kernel.release \
-	$(version_h) include/generated/utsrelease.h include/config.h
+	$(version_h) include/generated/utsrelease.h include/config.h \
+	include/generated/autoconf.h
 
 prepare0: archprepare FORCE
 ifneq ($(KBUILD_MODULES),)
diff --git a/common/Kconfig b/common/Kconfig
index db7cc6713..b18975850 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1,8 +1,3 @@
-config DEFCONFIG_LIST
-	string
-	option defconfig_list
-	default "arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)"
-
 config GREGORIAN_CALENDER
 	bool
 
@@ -333,7 +328,7 @@ config MODULES
 	depends on HAS_MODULES
 	depends on EXPERIMENTAL
 	bool "module support"
-	option modules
+	modules
 	help
 	  This option enables support for loadable modules via insmod. Module
 	  support is quite experimental at the moment. There is no convenient
diff --git a/scripts/basic/.gitignore b/scripts/basic/.gitignore
index 98ae1f509..961c91c8a 100644
--- a/scripts/basic/.gitignore
+++ b/scripts/basic/.gitignore
@@ -1,2 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
-fixdep
+/fixdep
diff --git a/scripts/basic/fixdep.c b/scripts/basic/fixdep.c
index 877ca2c88..44e887cff 100644
--- a/scripts/basic/fixdep.c
+++ b/scripts/basic/fixdep.c
@@ -34,7 +34,7 @@
  * the config symbols are rebuilt.
  *
  * So if the user changes his CONFIG_HIS_DRIVER option, only the objects
- * which depend on "include/config/his/driver.h" will be rebuilt,
+ * which depend on "include/config/HIS_DRIVER" will be rebuilt,
  * so most likely only his driver ;-)
  *
  * The idea above dates, by the way, back to Michael E Chastain, AFAIK.
@@ -74,7 +74,7 @@
  *
  * and then basically copies the .<target>.d file to stdout, in the
  * process filtering out the dependency on autoconf.h and adding
- * dependencies on include/config/my/option.h for every
+ * dependencies on include/config/MY_OPTION for every
  * CONFIG_MY_OPTION encountered in any of the prerequisites.
  *
  * We don't even try to really parse the header files, but
@@ -107,8 +107,8 @@ static void usage(void)
 
 /*
  * In the intended usage of this program, the stdout is redirected to .*.cmd
- * files. The return value of printf() and putchar() must be checked to catch
- * any error, e.g. "No space left on device".
+ * files. The return value of printf() must be checked to catch any error,
+ * e.g. "No space left on device".
  */
 static void xprintf(const char *format, ...)
 {
@@ -124,43 +124,11 @@ static void xprintf(const char *format, ...)
 	va_end(ap);
 }
 
-static void xputchar(int c)
-{
-	int ret;
-
-	ret = putchar(c);
-	if (ret == EOF) {
-		perror("fixdep");
-		exit(1);
-	}
-}
-
-/*
- * Print out a dependency path from a symbol name
- */
-static void print_dep(const char *m, int slen, const char *dir)
-{
-	int c, prev_c = '/', i;
-
-	xprintf("    $(wildcard %s/", dir);
-	for (i = 0; i < slen; i++) {
-		c = m[i];
-		if (c == '_')
-			c = '/';
-		else
-			c = tolower(c);
-		if (c != '/' || prev_c != '/')
-			xputchar(c);
-		prev_c = c;
-	}
-	xprintf(".h) \\\n");
-}
-
 struct item {
 	struct item	*next;
 	unsigned int	len;
 	unsigned int	hash;
-	char		name[0];
+	char		name[];
 };
 
 #define HASHSZ 256
@@ -220,7 +188,8 @@ static void use_config(const char *m, int slen)
 	    return;
 
 	define_config(m, slen, hash);
-	print_dep(m, slen, "include/config");
+	/* Print out a dependency path from a symbol name. */
+	xprintf("    $(wildcard include/config/%.*s) \\\n", slen, m);
 }
 
 /* test if s ends in sub */
diff --git a/scripts/kconfig/.gitignore b/scripts/kconfig/.gitignore
index c3d537cd0..500e7424b 100644
--- a/scripts/kconfig/.gitignore
+++ b/scripts/kconfig/.gitignore
@@ -1,12 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
+/conf
+/[gmnq]conf
+/[gmnq]conf-cfg
 /qconf-moc.cc
-*conf-cfg
-
-#
-# configuration programs
-#
-conf
-mconf
-nconf
-qconf
-gconf
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index 52b59bf9e..5a215880b 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -3,45 +3,51 @@
 # Kernel configuration targets
 # These targets are used from top-level makefile
 
-PHONY += xconfig gconfig menuconfig config localmodconfig localyesconfig \
-	build_menuconfig build_nconfig build_gconfig build_xconfig
-
 ifdef KBUILD_KCONFIG
 Kconfig := $(KBUILD_KCONFIG)
 else
 Kconfig := Kconfig
 endif
 
+ifndef KBUILD_DEFCONFIG
+KBUILD_DEFCONFIG := defconfig
+endif
+
 ifeq ($(quiet),silent_)
 silent := -s
 endif
 
+export KCONFIG_DEFCONFIG_LIST :=
+ifndef cross_compiling
+kernel-release := $(shell uname -r)
+KCONFIG_DEFCONFIG_LIST += \
+	/lib/modules/$(kernel-release)/.config \
+	/etc/kernel-config \
+	/boot/config-$(kernel-release)
+endif
+KCONFIG_DEFCONFIG_LIST += arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)
+
 # We need this, in case the user has it in its environment
 unexport CONFIG_
 
-xconfig: $(obj)/qconf
-	$< $(silent) $(Kconfig)
-
-gconfig: $(obj)/gconf
-	$< $(silent) $(Kconfig)
+config-prog	:= conf
+menuconfig-prog	:= mconf
+nconfig-prog	:= nconf
+gconfig-prog	:= gconf
+xconfig-prog	:= qconf
 
-menuconfig: $(obj)/mconf
-	$< $(silent) $(Kconfig)
+define config_rule
+PHONY += $(1)
+$(1): $(obj)/$($(1)-prog)
+	$(Q)$$< $(silent) $(Kconfig)
 
-config: $(obj)/conf
-	$< $(silent) --oldaskconfig $(Kconfig)
+PHONY += build_$(1)
+build_$(1): $(obj)/$($(1)-prog)
+endef
 
-nconfig: $(obj)/nconf
-	$< $(silent) $(Kconfig)
-
-build_menuconfig: $(obj)/mconf
-
-build_nconfig: $(obj)/nconf
-
-build_gconfig: $(obj)/gconf
-
-build_xconfig: $(obj)/qconf
+$(foreach c, config menuconfig nconfig gconfig xconfig, $(eval $(call config_rule,$(c))))
 
+PHONY += localmodconfig localyesconfig
 localyesconfig localmodconfig: $(obj)/conf
 	$(Q)$(PERL) $(srctree)/$(src)/streamline_config.pl --$@ $(srctree) $(Kconfig) > .tmp.config
 	$(Q)if [ -f .config ]; then 				\
@@ -68,12 +74,12 @@ simple-targets := oldconfig allnoconfig allyesconfig allmodconfig \
 PHONY += $(simple-targets)
 
 $(simple-targets): $(obj)/conf
-	$< $(silent) --$@ $(Kconfig)
+	$(Q)$< $(silent) --$@ $(Kconfig)
 
 PHONY += savedefconfig defconfig
 
 savedefconfig: $(obj)/conf
-	$< $(silent) --$@=defconfig $(Kconfig)
+	$(Q)$< $(silent) --$@=defconfig $(Kconfig)
 
 defconfig: $(obj)/conf
 ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)),)
@@ -94,24 +100,15 @@ configfiles=$(wildcard $(srctree)/kernel/configs/$@ $(srctree)/arch/$(SRCARCH)/c
 	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh -m .config $(configfiles)
 	$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
 
-PHONY += kvmconfig
-kvmconfig: kvm_guest.config
-	@echo >&2 "WARNING: 'make $@' will be removed after Linux 5.10"
-	@echo >&2 "         Please use 'make $<' instead."
-
-PHONY += xenconfig
-xenconfig: xen.config
-	@echo >&2 "WARNING: 'make $@' will be removed after Linux 5.10"
-	@echo >&2 "         Please use 'make $<' instead."
-
 PHONY += tinyconfig
 tinyconfig:
-	$(Q)$(MAKE) -f $(srctree)/Makefile allnoconfig tiny.config
+	$(Q)KCONFIG_ALLCONFIG=kernel/configs/tiny-base.config $(MAKE) -f $(srctree)/Makefile allnoconfig
+	$(Q)$(MAKE) -f $(srctree)/Makefile tiny.config
 
 # CHECK: -o cache_dir=<path> working?
 PHONY += testconfig
 testconfig: $(obj)/conf
-	$(PYTHON3) -B -m pytest $(srctree)/$(src)/tests \
+	$(Q)$(PYTHON3) -B -m pytest $(srctree)/$(src)/tests \
 	-o cache_dir=$(abspath $(obj)/tests/.cache) \
 	$(if $(findstring 1,$(KBUILD_VERBOSE)),--capture=no)
 clean-files += tests/.cache
@@ -146,8 +143,8 @@ help:
 
 # ===========================================================================
 # object files used by all kconfig flavours
-common-objs	:= confdata.o expr.o lexer.lex.o parser.tab.o preprocess.o \
-		   symbol.o util.o
+common-objs	:= confdata.o expr.o lexer.lex.o menu.o parser.tab.o \
+		   preprocess.o symbol.o util.o
 
 $(obj)/lexer.lex.o: $(obj)/parser.tab.h
 HOSTCFLAGS_lexer.lex.o	:= -I $(srctree)/$(src)
diff --git a/scripts/kconfig/conf.c b/scripts/kconfig/conf.c
index f6e548b8f..bfa1ea8f5 100644
--- a/scripts/kconfig/conf.c
+++ b/scripts/kconfig/conf.c
@@ -11,7 +11,6 @@
 #include <time.h>
 #include <unistd.h>
 #include <getopt.h>
-#include <sys/stat.h>
 #include <sys/time.h>
 #include <errno.h>
 
@@ -38,7 +37,7 @@ enum input_mode {
 	mod2yesconfig,
 };
 static enum input_mode input_mode = oldaskconfig;
-
+static int input_mode_opt;
 static int indent = 1;
 static int tty_stdio;
 static int sync_kconfig;
@@ -83,10 +82,243 @@ static void xfgets(char *str, int size, FILE *in)
 		printf("%s", str);
 }
 
-static int conf_askvalue(struct symbol *sym, const char *def)
+static void set_randconfig_seed(void)
+{
+	unsigned int seed;
+	char *env;
+	bool seed_set = false;
+
+	env = getenv("KCONFIG_SEED");
+	if (env && *env) {
+		char *endp;
+
+		seed = strtol(env, &endp, 0);
+		if (*endp == '\0')
+			seed_set = true;
+	}
+
+	if (!seed_set) {
+		struct timeval now;
+
+		/*
+		 * Use microseconds derived seed, compensate for systems where it may
+		 * be zero.
+		 */
+		gettimeofday(&now, NULL);
+		seed = (now.tv_sec + 1) * (now.tv_usec + 1);
+	}
+
+	printf("KCONFIG_SEED=0x%X\n", seed);
+	srand(seed);
+}
+
+static bool randomize_choice_values(struct symbol *csym)
 {
-	enum symbol_type type = sym_get_type(sym);
+	struct property *prop;
+	struct symbol *sym;
+	struct expr *e;
+	int cnt, def;
+
+	/*
+	 * If choice is mod then we may have more items selected
+	 * and if no then no-one.
+	 * In both cases stop.
+	 */
+	if (csym->curr.tri != yes)
+		return false;
+
+	prop = sym_get_choice_prop(csym);
+
+	/* count entries in choice block */
+	cnt = 0;
+	expr_list_for_each_sym(prop->expr, e, sym)
+		cnt++;
+
+	/*
+	 * find a random value and set it to yes,
+	 * set the rest to no so we have only one set
+	 */
+	def = rand() % cnt;
+
+	cnt = 0;
+	expr_list_for_each_sym(prop->expr, e, sym) {
+		if (def == cnt++) {
+			sym->def[S_DEF_USER].tri = yes;
+			csym->def[S_DEF_USER].val = sym;
+		} else {
+			sym->def[S_DEF_USER].tri = no;
+		}
+		sym->flags |= SYMBOL_DEF_USER;
+		/* clear VALID to get value calculated */
+		sym->flags &= ~SYMBOL_VALID;
+	}
+	csym->flags |= SYMBOL_DEF_USER;
+	/* clear VALID to get value calculated */
+	csym->flags &= ~SYMBOL_VALID;
+
+	return true;
+}
+
+enum conf_def_mode {
+	def_default,
+	def_yes,
+	def_mod,
+	def_y2m,
+	def_m2y,
+	def_no,
+	def_random
+};
+
+static bool conf_set_all_new_symbols(enum conf_def_mode mode)
+{
+	struct symbol *sym, *csym;
+	int i, cnt;
+	/*
+	 * can't go as the default in switch-case below, otherwise gcc whines
+	 * about -Wmaybe-uninitialized
+	 */
+	int pby = 50; /* probability of bool     = y */
+	int pty = 33; /* probability of tristate = y */
+	int ptm = 33; /* probability of tristate = m */
+	bool has_changed = false;
+
+	if (mode == def_random) {
+		int n, p[3];
+		char *env = getenv("KCONFIG_PROBABILITY");
+
+		n = 0;
+		while (env && *env) {
+			char *endp;
+			int tmp = strtol(env, &endp, 10);
+
+			if (tmp >= 0 && tmp <= 100) {
+				p[n++] = tmp;
+			} else {
+				errno = ERANGE;
+				perror("KCONFIG_PROBABILITY");
+				exit(1);
+			}
+			env = (*endp == ':') ? endp + 1 : endp;
+			if (n >= 3)
+				break;
+		}
+		switch (n) {
+		case 1:
+			pby = p[0];
+			ptm = pby / 2;
+			pty = pby - ptm;
+			break;
+		case 2:
+			pty = p[0];
+			ptm = p[1];
+			pby = pty + ptm;
+			break;
+		case 3:
+			pby = p[0];
+			pty = p[1];
+			ptm = p[2];
+			break;
+		}
+
+		if (pty + ptm > 100) {
+			errno = ERANGE;
+			perror("KCONFIG_PROBABILITY");
+			exit(1);
+		}
+	}
+
+	for_all_symbols(i, sym) {
+		if (sym_has_value(sym) || sym->flags & SYMBOL_VALID)
+			continue;
+		switch (sym_get_type(sym)) {
+		case S_BOOLEAN:
+		case S_TRISTATE:
+			has_changed = true;
+			switch (mode) {
+			case def_yes:
+				sym->def[S_DEF_USER].tri = yes;
+				break;
+			case def_mod:
+				sym->def[S_DEF_USER].tri = mod;
+				break;
+			case def_no:
+				sym->def[S_DEF_USER].tri = no;
+				break;
+			case def_random:
+				sym->def[S_DEF_USER].tri = no;
+				cnt = rand() % 100;
+				if (sym->type == S_TRISTATE) {
+					if (cnt < pty)
+						sym->def[S_DEF_USER].tri = yes;
+					else if (cnt < pty + ptm)
+						sym->def[S_DEF_USER].tri = mod;
+				} else if (cnt < pby)
+					sym->def[S_DEF_USER].tri = yes;
+				break;
+			default:
+				continue;
+			}
+			if (!(sym_is_choice(sym) && mode == def_random))
+				sym->flags |= SYMBOL_DEF_USER;
+			break;
+		default:
+			break;
+		}
+
+	}
+
+	sym_clear_all_valid();
+
+	/*
+	 * We have different type of choice blocks.
+	 * If curr.tri equals to mod then we can select several
+	 * choice symbols in one block.
+	 * In this case we do nothing.
+	 * If curr.tri equals yes then only one symbol can be
+	 * selected in a choice block and we set it to yes,
+	 * and the rest to no.
+	 */
+	if (mode != def_random) {
+		for_all_symbols(i, csym) {
+			if ((sym_is_choice(csym) && !sym_has_value(csym)) ||
+			    sym_is_choice_value(csym))
+				csym->flags |= SYMBOL_NEED_SET_CHOICE_VALUES;
+		}
+	}
+
+	for_all_symbols(i, csym) {
+		if (sym_has_value(csym) || !sym_is_choice(csym))
+			continue;
+
+		sym_calc_value(csym);
+		if (mode == def_random)
+			has_changed |= randomize_choice_values(csym);
+		else {
+			set_all_choice_values(csym);
+			has_changed = true;
+		}
+	}
+
+	return has_changed;
+}
 
+static void conf_rewrite_mod_or_yes(enum conf_def_mode mode)
+{
+	struct symbol *sym;
+	int i;
+	tristate old_val = (mode == def_y2m) ? yes : mod;
+	tristate new_val = (mode == def_y2m) ? mod : yes;
+
+	for_all_symbols(i, sym) {
+		if (sym_get_type(sym) == S_TRISTATE &&
+		    sym->def[S_DEF_USER].tri == old_val)
+			sym->def[S_DEF_USER].tri = new_val;
+	}
+	sym_clear_all_valid();
+}
+
+static int conf_askvalue(struct symbol *sym, const char *def)
+{
 	if (!sym_has_value(sym))
 		printf("(NEW) ");
 
@@ -108,24 +340,12 @@ static int conf_askvalue(struct symbol *sym, const char *def)
 			return 0;
 		}
 		/* fall through */
-	case oldaskconfig:
+	default:
 		fflush(stdout);
 		xfgets(line, sizeof(line), stdin);
-		return 1;
-	default:
 		break;
 	}
 
-	switch (type) {
-	case S_INT:
-	case S_HEX:
-	case S_STRING:
-		printf("%s\n", def);
-		return 1;
-	default:
-		;
-	}
-	printf("%s", line);
 	return 1;
 }
 
@@ -138,7 +358,7 @@ static int conf_string(struct menu *menu)
 		printf("%*s%s ", indent - 1, "", menu->prompt->text);
 		printf("(%s) ", sym->name);
 		def = sym_get_string_value(sym);
-		if (sym_get_string_value(sym))
+		if (def)
 			printf("[%s] ", def);
 		if (!conf_askvalue(sym, def))
 			return 0;
@@ -420,34 +640,37 @@ static void check_conf(struct menu *menu)
 		return;
 
 	sym = menu->sym;
-	if (sym && !sym_has_value(sym)) {
-		if (sym_is_changeable(sym) ||
-		    (sym_is_choice(sym) && sym_get_tristate_value(sym) == yes)) {
-			if (input_mode == listnewconfig) {
-				if (sym->name) {
-					const char *str;
-
-					if (sym->type == S_STRING) {
-						str = sym_get_string_value(sym);
-						str = sym_escape_string_value(str);
-						printf("%s%s=%s\n", CONFIG_, sym->name, str);
-						free((void *)str);
-					} else {
-						str = sym_get_string_value(sym);
-						printf("%s%s=%s\n", CONFIG_, sym->name, str);
-					}
-				}
-			} else if (input_mode == helpnewconfig) {
-				printf("-----\n");
-				print_help(menu);
-				printf("-----\n");
+	if (sym && !sym_has_value(sym) &&
+	    (sym_is_changeable(sym) ||
+	     (sym_is_choice(sym) && sym_get_tristate_value(sym) == yes))) {
 
-			} else {
-				if (!conf_cnt++)
-					printf("*\n* Restart config...\n*\n");
-				rootEntry = menu_get_parent_menu(menu);
-				conf(rootEntry);
+		switch (input_mode) {
+		case listnewconfig:
+			if (sym->name) {
+				const char *str;
+
+				if (sym->type == S_STRING) {
+					str = sym_get_string_value(sym);
+					str = sym_escape_string_value(str);
+					printf("%s%s=%s\n", CONFIG_, sym->name, str);
+					free((void *)str);
+				} else {
+					str = sym_get_string_value(sym);
+					printf("%s%s=%s\n", CONFIG_, sym->name, str);
+				}
 			}
+			break;
+		case helpnewconfig:
+			printf("-----\n");
+			print_help(menu);
+			printf("-----\n");
+			break;
+		default:
+			if (!conf_cnt++)
+				printf("*\n* Restart config...\n*\n");
+			rootEntry = menu_get_parent_menu(menu);
+			conf(rootEntry);
+			break;
 		}
 	}
 
@@ -456,29 +679,35 @@ static void check_conf(struct menu *menu)
 }
 
 static struct option long_opts[] = {
-	{"oldaskconfig",    no_argument,       NULL, oldaskconfig},
-	{"oldconfig",       no_argument,       NULL, oldconfig},
-	{"syncconfig",      no_argument,       NULL, syncconfig},
-	{"defconfig",       required_argument, NULL, defconfig},
-	{"savedefconfig",   required_argument, NULL, savedefconfig},
-	{"allnoconfig",     no_argument,       NULL, allnoconfig},
-	{"allyesconfig",    no_argument,       NULL, allyesconfig},
-	{"allmodconfig",    no_argument,       NULL, allmodconfig},
-	{"alldefconfig",    no_argument,       NULL, alldefconfig},
-	{"randconfig",      no_argument,       NULL, randconfig},
-	{"listnewconfig",   no_argument,       NULL, listnewconfig},
-	{"helpnewconfig",   no_argument,       NULL, helpnewconfig},
-	{"olddefconfig",    no_argument,       NULL, olddefconfig},
-	{"yes2modconfig",   no_argument,       NULL, yes2modconfig},
-	{"mod2yesconfig",   no_argument,       NULL, mod2yesconfig},
+	{"help",          no_argument,       NULL,            'h'},
+	{"silent",        no_argument,       NULL,            's'},
+	{"oldaskconfig",  no_argument,       &input_mode_opt, oldaskconfig},
+	{"oldconfig",     no_argument,       &input_mode_opt, oldconfig},
+	{"syncconfig",    no_argument,       &input_mode_opt, syncconfig},
+	{"defconfig",     required_argument, &input_mode_opt, defconfig},
+	{"savedefconfig", required_argument, &input_mode_opt, savedefconfig},
+	{"allnoconfig",   no_argument,       &input_mode_opt, allnoconfig},
+	{"allyesconfig",  no_argument,       &input_mode_opt, allyesconfig},
+	{"allmodconfig",  no_argument,       &input_mode_opt, allmodconfig},
+	{"alldefconfig",  no_argument,       &input_mode_opt, alldefconfig},
+	{"randconfig",    no_argument,       &input_mode_opt, randconfig},
+	{"listnewconfig", no_argument,       &input_mode_opt, listnewconfig},
+	{"helpnewconfig", no_argument,       &input_mode_opt, helpnewconfig},
+	{"olddefconfig",  no_argument,       &input_mode_opt, olddefconfig},
+	{"yes2modconfig", no_argument,       &input_mode_opt, yes2modconfig},
+	{"mod2yesconfig", no_argument,       &input_mode_opt, mod2yesconfig},
 	{NULL, 0, NULL, 0}
 };
 
 static void conf_usage(const char *progname)
 {
-
-	printf("Usage: %s [-s] [option] <kconfig-file>\n", progname);
-	printf("[option] is _one_ of the following:\n");
+	printf("Usage: %s [options] <kconfig-file>\n", progname);
+	printf("\n");
+	printf("Generic options:\n");
+	printf("  -h, --help              Print this message and exit.\n");
+	printf("  -s, --silent            Do not print log.\n");
+	printf("\n");
+	printf("Mode options:\n");
 	printf("  --listnewconfig         List new options\n");
 	printf("  --helpnewconfig         List new options and help text\n");
 	printf("  --oldaskconfig          Start a new configuration using a line-oriented program\n");
@@ -495,6 +724,7 @@ static void conf_usage(const char *progname)
 	printf("  --randconfig            New config with random answer to all options\n");
 	printf("  --yes2modconfig         Change answers from yes to mod if possible\n");
 	printf("  --mod2yesconfig         Change answers from mod to yes if possible\n");
+	printf("  (If none of the above is given, --oldaskconfig is the default)\n");
 }
 
 int main(int ac, char **av)
@@ -506,65 +736,38 @@ int main(int ac, char **av)
 
 	tty_stdio = isatty(0) && isatty(1);
 
-	while ((opt = getopt_long(ac, av, "s", long_opts, NULL)) != -1) {
-		if (opt == 's') {
-			conf_set_message_callback(NULL);
-			continue;
-		}
-		input_mode = (enum input_mode)opt;
+	while ((opt = getopt_long(ac, av, "hs", long_opts, NULL)) != -1) {
 		switch (opt) {
-		case syncconfig:
-			/*
-			 * syncconfig is invoked during the build stage.
-			 * Suppress distracting "configuration written to ..."
-			 */
-			conf_set_message_callback(NULL);
-			sync_kconfig = 1;
+		case 'h':
+			conf_usage(progname);
+			exit(1);
 			break;
-		case defconfig:
-		case savedefconfig:
-			defconfig_file = optarg;
+		case 's':
+			conf_set_message_callback(NULL);
 			break;
-		case randconfig:
-		{
-			struct timeval now;
-			unsigned int seed;
-			char *seed_env;
-
-			/*
-			 * Use microseconds derived seed,
-			 * compensate for systems where it may be zero
-			 */
-			gettimeofday(&now, NULL);
-			seed = (unsigned int)((now.tv_sec + 1) * (now.tv_usec + 1));
-
-			seed_env = getenv("KCONFIG_SEED");
-			if( seed_env && *seed_env ) {
-				char *endp;
-				int tmp = (int)strtol(seed_env, &endp, 0);
-				if (*endp == '\0') {
-					seed = tmp;
-				}
+		case 0:
+			input_mode = input_mode_opt;
+			switch (input_mode) {
+			case syncconfig:
+				/*
+				 * syncconfig is invoked during the build stage.
+				 * Suppress distracting
+				 *   "configuration written to ..."
+				 */
+				conf_set_message_callback(NULL);
+				sync_kconfig = 1;
+				break;
+			case defconfig:
+			case savedefconfig:
+				defconfig_file = optarg;
+				break;
+			case randconfig:
+				set_randconfig_seed();
+				break;
+			default:
+				break;
 			}
-			fprintf( stderr, "KCONFIG_SEED=0x%X\n", seed );
-			srand(seed);
-			break;
-		}
-		case oldaskconfig:
-		case oldconfig:
-		case allnoconfig:
-		case allyesconfig:
-		case allmodconfig:
-		case alldefconfig:
-		case listnewconfig:
-		case helpnewconfig:
-		case olddefconfig:
-		case yes2modconfig:
-		case mod2yesconfig:
-			break;
-		case '?':
-			conf_usage(progname);
-			exit(1);
+		default:
 			break;
 		}
 	}
@@ -573,8 +776,7 @@ int main(int ac, char **av)
 		conf_usage(progname);
 		exit(1);
 	}
-	name = av[optind];
-	conf_parse(name);
+	conf_parse(av[optind]);
 	//zconfdump(stdout);
 
 	switch (input_mode) {
diff --git a/scripts/kconfig/confdata.c b/scripts/kconfig/confdata.c
index a39d93e3c..cf72680cd 100644
--- a/scripts/kconfig/confdata.c
+++ b/scripts/kconfig/confdata.c
@@ -5,6 +5,7 @@
 
 #include <sys/mman.h>
 #include <sys/stat.h>
+#include <sys/types.h>
 #include <ctype.h>
 #include <errno.h>
 #include <fcntl.h>
@@ -32,7 +33,7 @@ static bool is_dir(const char *path)
 	struct stat st;
 
 	if (stat(path, &st))
-		return 0;
+		return false;
 
 	return S_ISDIR(st.st_mode);
 }
@@ -129,19 +130,14 @@ static size_t depfile_prefix_len;
 static int conf_touch_dep(const char *name)
 {
 	int fd, ret;
-	const char *s;
-	char *d, c;
+	char *d;
 
-	/* check overflow: prefix + name + ".h" + '\0' must fit in buffer. */
-	if (depfile_prefix_len + strlen(name) + 3 > sizeof(depfile_path))
+	/* check overflow: prefix + name + '\0' must fit in buffer. */
+	if (depfile_prefix_len + strlen(name) + 1 > sizeof(depfile_path))
 		return -1;
 
 	d = depfile_path + depfile_prefix_len;
-	s = name;
-
-	while ((c = *s++))
-		*d++ = (c == '_') ? '/' : tolower(c);
-	strcpy(d, ".h");
+	strcpy(d, name);
 
 	/* Assume directory path already exists. */
 	fd = open(depfile_path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
@@ -359,28 +355,46 @@ int conf_read_simple(const char *name, int def)
 	if (name) {
 		in = zconf_fopen(name);
 	} else {
-		struct property *prop;
+		char *env;
 
 		name = conf_get_configname();
 		in = zconf_fopen(name);
 		if (in)
 			goto load;
-		sym_add_change_count(1);
-		if (!sym_defconfig_list)
+		conf_set_changed(true);
+
+		env = getenv("KCONFIG_DEFCONFIG_LIST");
+		if (!env)
 			return 1;
 
-		for_all_defaults(sym_defconfig_list, prop) {
-			if (expr_calc_value(prop->visible.expr) == no ||
-			    prop->expr->type != E_SYMBOL)
-				continue;
-			sym_calc_value(prop->expr->left.sym);
-			name = sym_get_string_value(prop->expr->left.sym);
-			in = zconf_fopen(name);
+		while (1) {
+			bool is_last;
+
+			while (isspace(*env))
+				env++;
+
+			if (!*env)
+				break;
+
+			p = env;
+			while (*p && !isspace(*p))
+				p++;
+
+			is_last = (*p == '\0');
+
+			*p = '\0';
+
+			in = zconf_fopen(env);
 			if (in) {
 				conf_message("using defaults found in %s",
-					 name);
+					     env);
 				goto load;
 			}
+
+			if (is_last)
+				break;
+
+			env = p + 1;
 		}
 	}
 	if (!in)
@@ -425,7 +439,7 @@ load:
 			if (def == S_DEF_USER) {
 				sym = sym_find(line + 2 + strlen(CONFIG_));
 				if (!sym) {
-					sym_add_change_count(1);
+					conf_set_changed(true);
 					continue;
 				}
 			} else {
@@ -464,11 +478,11 @@ load:
 					 * Reading from include/config/auto.conf
 					 * If CONFIG_FOO previously existed in
 					 * auto.conf but it is missing now,
-					 * include/config/foo.h must be touched.
+					 * include/config/FOO must be touched.
 					 */
 					conf_touch_dep(line + strlen(CONFIG_));
 				else
-					sym_add_change_count(1);
+					conf_set_changed(true);
 				continue;
 			}
 
@@ -516,7 +530,7 @@ int conf_read(const char *name)
 	int conf_unsaved = 0;
 	int i;
 
-	sym_set_change_count(0);
+	conf_set_changed(false);
 
 	if (conf_read_simple(name, S_DEF_USER)) {
 		sym_calc_value(modules_sym);
@@ -574,7 +588,8 @@ int conf_read(const char *name)
 		}
 	}
 
-	sym_add_change_count(conf_warnings || conf_unsaved);
+	if (conf_warnings || conf_unsaved)
+		conf_set_changed(true);
 
 	return 0;
 }
@@ -919,7 +934,7 @@ next:
 		if (is_same(name, tmpname)) {
 			conf_message("No change to %s", name);
 			unlink(tmpname);
-			sym_set_change_count(0);
+			conf_set_changed(false);
 			return 0;
 		}
 
@@ -931,7 +946,7 @@ next:
 
 	conf_message("configuration written to %s", name);
 
-	sym_set_change_count(0);
+	conf_set_changed(false);
 
 	return 0;
 }
@@ -1099,26 +1114,20 @@ int conf_write_autoconf(int overwrite)
 	return 0;
 }
 
-static int sym_change_count;
+static bool conf_changed;
 static void (*conf_changed_callback)(void);
 
-void sym_set_change_count(int count)
+void conf_set_changed(bool val)
 {
-	int _sym_change_count = sym_change_count;
-	sym_change_count = count;
-	if (conf_changed_callback &&
-	    (bool)_sym_change_count != (bool)count)
+	if (conf_changed_callback && conf_changed != val)
 		conf_changed_callback();
-}
 
-void sym_add_change_count(int count)
-{
-	sym_set_change_count(count + sym_change_count);
+	conf_changed = val;
 }
 
 bool conf_get_changed(void)
 {
-	return sym_change_count;
+	return conf_changed;
 }
 
 void conf_set_changed_callback(void (*fn)(void))
@@ -1126,54 +1135,6 @@ void conf_set_changed_callback(void (*fn)(void))
 	conf_changed_callback = fn;
 }
 
-static bool randomize_choice_values(struct symbol *csym)
-{
-	struct property *prop;
-	struct symbol *sym;
-	struct expr *e;
-	int cnt, def;
-
-	/*
-	 * If choice is mod then we may have more items selected
-	 * and if no then no-one.
-	 * In both cases stop.
-	 */
-	if (csym->curr.tri != yes)
-		return false;
-
-	prop = sym_get_choice_prop(csym);
-
-	/* count entries in choice block */
-	cnt = 0;
-	expr_list_for_each_sym(prop->expr, e, sym)
-		cnt++;
-
-	/*
-	 * find a random value and set it to yes,
-	 * set the rest to no so we have only one set
-	 */
-	def = (rand() % cnt);
-
-	cnt = 0;
-	expr_list_for_each_sym(prop->expr, e, sym) {
-		if (def == cnt++) {
-			sym->def[S_DEF_USER].tri = yes;
-			csym->def[S_DEF_USER].val = sym;
-		}
-		else {
-			sym->def[S_DEF_USER].tri = no;
-		}
-		sym->flags |= SYMBOL_DEF_USER;
-		/* clear VALID to get value calculated */
-		sym->flags &= ~SYMBOL_VALID;
-	}
-	csym->flags |= SYMBOL_DEF_USER;
-	/* clear VALID to get value calculated */
-	csym->flags &= ~(SYMBOL_VALID);
-
-	return true;
-}
-
 void set_all_choice_values(struct symbol *csym)
 {
 	struct property *prop;
@@ -1193,146 +1154,3 @@ void set_all_choice_values(struct symbol *csym)
 	/* clear VALID to get value calculated */
 	csym->flags &= ~(SYMBOL_VALID | SYMBOL_NEED_SET_CHOICE_VALUES);
 }
-
-bool conf_set_all_new_symbols(enum conf_def_mode mode)
-{
-	struct symbol *sym, *csym;
-	int i, cnt, pby, pty, ptm;	/* pby: probability of bool     = y
-					 * pty: probability of tristate = y
-					 * ptm: probability of tristate = m
-					 */
-
-	pby = 50; pty = ptm = 33; /* can't go as the default in switch-case
-				   * below, otherwise gcc whines about
-				   * -Wmaybe-uninitialized */
-	if (mode == def_random) {
-		int n, p[3];
-		char *env = getenv("KCONFIG_PROBABILITY");
-		n = 0;
-		while( env && *env ) {
-			char *endp;
-			int tmp = strtol( env, &endp, 10 );
-			if( tmp >= 0 && tmp <= 100 ) {
-				p[n++] = tmp;
-			} else {
-				errno = ERANGE;
-				perror( "KCONFIG_PROBABILITY" );
-				exit( 1 );
-			}
-			env = (*endp == ':') ? endp+1 : endp;
-			if( n >=3 ) {
-				break;
-			}
-		}
-		switch( n ) {
-		case 1:
-			pby = p[0]; ptm = pby/2; pty = pby-ptm;
-			break;
-		case 2:
-			pty = p[0]; ptm = p[1]; pby = pty + ptm;
-			break;
-		case 3:
-			pby = p[0]; pty = p[1]; ptm = p[2];
-			break;
-		}
-
-		if( pty+ptm > 100 ) {
-			errno = ERANGE;
-			perror( "KCONFIG_PROBABILITY" );
-			exit( 1 );
-		}
-	}
-	bool has_changed = false;
-
-	for_all_symbols(i, sym) {
-		if (sym_has_value(sym) || (sym->flags & SYMBOL_VALID))
-			continue;
-		switch (sym_get_type(sym)) {
-		case S_BOOLEAN:
-		case S_TRISTATE:
-			has_changed = true;
-			switch (mode) {
-			case def_yes:
-				sym->def[S_DEF_USER].tri = yes;
-				break;
-			case def_mod:
-				sym->def[S_DEF_USER].tri = mod;
-				break;
-			case def_no:
-				if (sym->flags & SYMBOL_ALLNOCONFIG_Y)
-					sym->def[S_DEF_USER].tri = yes;
-				else
-					sym->def[S_DEF_USER].tri = no;
-				break;
-			case def_random:
-				sym->def[S_DEF_USER].tri = no;
-				cnt = rand() % 100;
-				if (sym->type == S_TRISTATE) {
-					if (cnt < pty)
-						sym->def[S_DEF_USER].tri = yes;
-					else if (cnt < (pty+ptm))
-						sym->def[S_DEF_USER].tri = mod;
-				} else if (cnt < pby)
-					sym->def[S_DEF_USER].tri = yes;
-				break;
-			default:
-				continue;
-			}
-			if (!(sym_is_choice(sym) && mode == def_random))
-				sym->flags |= SYMBOL_DEF_USER;
-			break;
-		default:
-			break;
-		}
-
-	}
-
-	sym_clear_all_valid();
-
-	/*
-	 * We have different type of choice blocks.
-	 * If curr.tri equals to mod then we can select several
-	 * choice symbols in one block.
-	 * In this case we do nothing.
-	 * If curr.tri equals yes then only one symbol can be
-	 * selected in a choice block and we set it to yes,
-	 * and the rest to no.
-	 */
-	if (mode != def_random) {
-		for_all_symbols(i, csym) {
-			if ((sym_is_choice(csym) && !sym_has_value(csym)) ||
-			    sym_is_choice_value(csym))
-				csym->flags |= SYMBOL_NEED_SET_CHOICE_VALUES;
-		}
-	}
-
-	for_all_symbols(i, csym) {
-		if (sym_has_value(csym) || !sym_is_choice(csym))
-			continue;
-
-		sym_calc_value(csym);
-		if (mode == def_random)
-			has_changed |= randomize_choice_values(csym);
-		else {
-			set_all_choice_values(csym);
-			has_changed = true;
-		}
-	}
-
-	return has_changed;
-}
-
-void conf_rewrite_mod_or_yes(enum conf_def_mode mode)
-{
-	struct symbol *sym;
-	int i;
-	tristate old_val = (mode == def_y2m) ? yes : mod;
-	tristate new_val = (mode == def_y2m) ? mod : yes;
-
-	for_all_symbols(i, sym) {
-		if (sym_get_type(sym) == S_TRISTATE &&
-		    sym->def[S_DEF_USER].tri == old_val)
-			sym->def[S_DEF_USER].tri = new_val;
-	}
-	sym_clear_all_valid();
-}
diff --git a/scripts/kconfig/expr.h b/scripts/kconfig/expr.h
index 5c3443692..9c9caca5b 100644
--- a/scripts/kconfig/expr.h
+++ b/scripts/kconfig/expr.h
@@ -156,9 +156,6 @@ struct symbol {
 /* choice values need to be set before calculating this symbol value */
 #define SYMBOL_NEED_SET_CHOICE_VALUES  0x100000
 
-/* Set symbol to y if allnoconfig; used for symbols that hide others */
-#define SYMBOL_ALLNOCONFIG_Y 0x200000
-
 #define SYMBOL_MAXLENGTH	256
 #define SYMBOL_HASHSIZE		9973
 
@@ -281,15 +278,12 @@ struct jump_key {
 	int index;
 };
 
-#define JUMP_NB			9
-
 extern struct file *file_list;
 extern struct file *current_file;
 struct file *lookup_file(const char *name);
 
 extern struct symbol symbol_yes, symbol_no, symbol_mod;
 extern struct symbol *modules_sym;
-extern struct symbol *sym_defconfig_list;
 extern int cdebug;
 struct expr *expr_alloc_symbol(struct symbol *sym);
 struct expr *expr_alloc_one(enum expr_type type, struct expr *ce);
diff --git a/scripts/kconfig/gconf.c b/scripts/kconfig/gconf.c
index 5527482c3..17adabfd6 100644
--- a/scripts/kconfig/gconf.c
+++ b/scripts/kconfig/gconf.c
@@ -3,10 +3,6 @@
  * Copyright (C) 2002-2003 Romain Lievin <roms@tilp.info>
  */
 
-#ifdef HAVE_CONFIG_H
-#  include <config.h>
-#endif
-
 #include <stdlib.h>
 #include "lkc.h"
 #include "images.h"
@@ -1048,8 +1044,13 @@ static gchar **fill_row(struct menu *menu)
 		g_free(row[i]);
 	bzero(row, sizeof(row));
 
+	ptype = menu->prompt ? menu->prompt->type : P_UNKNOWN;
+
 	row[COL_OPTION] =
-	    g_strdup_printf("%s %s", menu_get_prompt(menu),
+	    g_strdup_printf("%s %s %s %s",
+			    ptype == P_COMMENT ? "***" : "",
+			    menu_get_prompt(menu),
+			    ptype == P_COMMENT ? "***" : "",
 			    sym && !sym_has_value(sym) ? "(NEW)" : "");
 
 	if (opt_mode == OPT_ALL && !menu_is_visible(menu))
@@ -1060,7 +1061,6 @@ static gchar **fill_row(struct menu *menu)
 	else
 		row[COL_COLOR] = g_strdup("Black");
 
-	ptype = menu->prompt ? menu->prompt->type : P_UNKNOWN;
 	switch (ptype) {
 	case P_MENU:
 		row[COL_PIXBUF] = (gchar *) xpm_menu;
@@ -1452,9 +1452,6 @@ int main(int ac, char *av[])
 	gtk_init(&ac, &av);
 	glade_init();
 
-	//add_pixmap_directory (PACKAGE_DATA_DIR "/" PACKAGE "/pixmaps");
-	//add_pixmap_directory (PACKAGE_SOURCE_DIR "/pixmaps");
-
 	/* Determine GUI path */
 	env = getenv(SRCTREE);
 	if (env)
diff --git a/scripts/kconfig/internal.h b/scripts/kconfig/internal.h
new file mode 100644
index 000000000..2f7298c21
--- /dev/null
+++ b/scripts/kconfig/internal.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef INTERNAL_H
+#define INTERNAL_H
+
+struct menu;
+
+extern struct menu *current_menu, *current_entry;
+
+#endif /* INTERNAL_H */
diff --git a/scripts/kconfig/lexer.l b/scripts/kconfig/lexer.l
index 240109f96..312cbad2d 100644
--- a/scripts/kconfig/lexer.l
+++ b/scripts/kconfig/lexer.l
@@ -12,7 +12,6 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
-#include <unistd.h>
 
 #include "lkc.h"
 #include "parser.tab.h"
@@ -92,7 +91,6 @@ n	[A-Za-z0-9_-]
 [ \t]*			/* whitespaces */
 \\\n			/* escaped new line */
 \n			return T_EOL;
-"allnoconfig_y"		return T_ALLNOCONFIG_Y;
 "bool"			return T_BOOL;
 "choice"		return T_CHOICE;
 "comment"		return T_COMMENT;
@@ -100,7 +98,6 @@ n	[A-Za-z0-9_-]
 "def_bool"		return T_DEF_BOOL;
 "def_tristate"		return T_DEF_TRISTATE;
 "default"		return T_DEFAULT;
-"defconfig_list"	return T_DEFCONFIG_LIST;
 "depends"		return T_DEPENDS;
 "endchoice"		return T_ENDCHOICE;
 "endif"			return T_ENDIF;
@@ -115,7 +112,6 @@ n	[A-Za-z0-9_-]
 "menuconfig"		return T_MENUCONFIG;
 "modules"		return T_MODULES;
 "on"			return T_ON;
-"option"		return T_OPTION;
 "optional"		return T_OPTIONAL;
 "prompt"		return T_PROMPT;
 "range"			return T_RANGE;
diff --git a/scripts/kconfig/lkc.h b/scripts/kconfig/lkc.h
index d4ca82973..fa8c010aa 100644
--- a/scripts/kconfig/lkc.h
+++ b/scripts/kconfig/lkc.h
@@ -6,6 +6,10 @@
 #ifndef LKC_H
 #define LKC_H
 
+#include <assert.h>
+#include <stdio.h>
+#include <stdlib.h>
+
 #include "expr.h"
 
 #ifdef __cplusplus
@@ -16,10 +20,6 @@ extern "C" {
 
 #define SRCTREE "srctree"
 
-#ifndef PACKAGE
-#define PACKAGE "linux"
-#endif
-
 #ifndef CONFIG_
 #define CONFIG_ "CONFIG_"
 #endif
@@ -30,16 +30,6 @@ static inline const char *CONFIG_prefix(void)
 #undef CONFIG_
 #define CONFIG_ CONFIG_prefix()
 
-enum conf_def_mode {
-	def_default,
-	def_yes,
-	def_mod,
-	def_y2m,
-	def_m2y,
-	def_no,
-	def_random
-};
-
 extern int yylineno;
 void zconfdump(FILE *out);
 void zconf_starthelp(void);
@@ -51,10 +41,6 @@ const char *zconf_curname(void);
 
 /* confdata.c */
 const char *conf_get_configname(void);
-void sym_set_change_count(int count);
-void sym_add_change_count(int count);
-bool conf_set_all_new_symbols(enum conf_def_mode mode);
-void conf_rewrite_mod_or_yes(enum conf_def_mode mode);
 void set_all_choice_values(struct symbol *csym);
 
 /* confdata.c and expr.c */
@@ -66,23 +52,6 @@ static inline void xfwrite(const void *str, size_t len, size_t count, FILE *out)
 		fprintf(stderr, "Error in writing or end of file.\n");
 }
 
-/* menu.c */
-void _menu_init(void);
-void menu_warn(struct menu *menu, const char *fmt, ...);
-struct menu *menu_add_menu(void);
-void menu_end_menu(void);
-void menu_add_entry(struct symbol *sym);
-void menu_add_dep(struct expr *dep);
-void menu_add_visibility(struct expr *dep);
-struct property *menu_add_prompt(enum prop_type type, char *prompt, struct expr *dep);
-void menu_add_expr(enum prop_type type, struct expr *expr, struct expr *dep);
-void menu_add_symbol(enum prop_type type, struct symbol *sym, struct expr *dep);
-void menu_add_option_modules(void);
-void menu_add_option_defconfig_list(void);
-void menu_add_option_allnoconfig_y(void);
-void menu_finalize(struct menu *parent);
-void menu_set_type(int type);
-
 /* util.c */
 struct file *file_lookup(const char *name);
 void *xmalloc(size_t size);
@@ -109,6 +78,33 @@ void str_append(struct gstr *gs, const char *s);
 void str_printf(struct gstr *gs, const char *fmt, ...);
 const char *str_get(struct gstr *gs);
 
+/* menu.c */
+void _menu_init(void);
+void menu_warn(struct menu *menu, const char *fmt, ...);
+struct menu *menu_add_menu(void);
+void menu_end_menu(void);
+void menu_add_entry(struct symbol *sym);
+void menu_add_dep(struct expr *dep);
+void menu_add_visibility(struct expr *dep);
+struct property *menu_add_prompt(enum prop_type type, char *prompt, struct expr *dep);
+void menu_add_expr(enum prop_type type, struct expr *expr, struct expr *dep);
+void menu_add_symbol(enum prop_type type, struct symbol *sym, struct expr *dep);
+void menu_finalize(struct menu *parent);
+void menu_set_type(int type);
+
+extern struct menu rootmenu;
+
+bool menu_is_empty(struct menu *menu);
+bool menu_is_visible(struct menu *menu);
+bool menu_has_prompt(struct menu *menu);
+const char *menu_get_prompt(struct menu *menu);
+struct menu *menu_get_root_menu(struct menu *menu);
+struct menu *menu_get_parent_menu(struct menu *menu);
+bool menu_has_help(struct menu *menu);
+const char *menu_get_help(struct menu *menu);
+struct gstr get_relations_str(struct symbol **sym_arr, struct list_head *head);
+void menu_get_ext_help(struct menu *menu, struct gstr *help);
+
 /* symbol.c */
 void sym_clear_all_valid(void);
 struct symbol *sym_choice_default(struct symbol *sym);
diff --git a/scripts/kconfig/lkc_proto.h b/scripts/kconfig/lkc_proto.h
index f9ab98238..a11626bdc 100644
--- a/scripts/kconfig/lkc_proto.h
+++ b/scripts/kconfig/lkc_proto.h
@@ -8,24 +8,11 @@ int conf_read_simple(const char *name, int);
 int conf_write_defconfig(const char *name);
 int conf_write(const char *name);
 int conf_write_autoconf(int overwrite);
+void conf_set_changed(bool val);
 bool conf_get_changed(void);
 void conf_set_changed_callback(void (*fn)(void));
 void conf_set_message_callback(void (*fn)(const char *s));
 
-/* menu.c */
-extern struct menu rootmenu;
-
-bool menu_is_empty(struct menu *menu);
-bool menu_is_visible(struct menu *menu);
-bool menu_has_prompt(struct menu *menu);
-const char * menu_get_prompt(struct menu *menu);
-struct menu * menu_get_root_menu(struct menu *menu);
-struct menu * menu_get_parent_menu(struct menu *menu);
-bool menu_has_help(struct menu *menu);
-const char * menu_get_help(struct menu *menu);
-struct gstr get_relations_str(struct symbol **sym_arr, struct list_head *head);
-void menu_get_ext_help(struct menu *menu, struct gstr *help);
-
 /* symbol.c */
 extern struct symbol * symbol_hash[SYMBOL_HASHSIZE];
 
diff --git a/scripts/kconfig/lxdialog/util.c b/scripts/kconfig/lxdialog/util.c
index 1b490d4af..3f78fb265 100644
--- a/scripts/kconfig/lxdialog/util.c
+++ b/scripts/kconfig/lxdialog/util.c
@@ -363,7 +363,7 @@ void print_title(WINDOW *dialog, const char *title, int width)
 /*
  * Print a string of text in a window, automatically wrap around to the
  * next line if the string is too long to fit on one line. Newline
- * characters '\n' are propperly processed.  We start on a new line
+ * characters '\n' are properly processed.  We start on a new line
  * if there is no room for at least 4 nonblanks following a double-space.
  */
 void print_autowrap(WINDOW * win, const char *prompt, int width, int y, int x)
@@ -541,7 +541,7 @@ int first_alpha(const char *string, const char *exempt)
  * lxdialog suggest <ESC> <ESC> which is correctly translated to two
  * times esc. But then we need to ignore the second esc to avoid stepping
  * out one menu too much. Filter away all escaped key sequences since
- * keypad(FALSE) turn off ncurses support for escape sequences - and thats
+ * keypad(FALSE) turn off ncurses support for escape sequences - and that's
  * needed to make notimeout() do as expected.
  */
 int on_key_esc(WINDOW *win)
diff --git a/scripts/kconfig/mconf-cfg.sh b/scripts/kconfig/mconf-cfg.sh
index aa68ec956..b520e407a 100755
--- a/scripts/kconfig/mconf-cfg.sh
+++ b/scripts/kconfig/mconf-cfg.sh
@@ -33,7 +33,9 @@ if [ -f /usr/include/ncurses/ncurses.h ]; then
 	exit 0
 fi
 
-if [ -f /usr/include/ncurses.h ]; then
+# As a final fallback before giving up, check if $HOSTCC knows of a default
+# ncurses installation (e.g. from a vendor-specific sysroot).
+if echo '#include <ncurses.h>' | ${HOSTCC} -E - >/dev/null 2>&1; then
 	echo cflags=\"-D_GNU_SOURCE\"
 	echo libs=\"-lncurses\"
 	exit 0
diff --git a/scripts/kconfig/mconf.c b/scripts/kconfig/mconf.c
index 4063dbc1b..9d3cf5105 100644
--- a/scripts/kconfig/mconf.c
+++ b/scripts/kconfig/mconf.c
@@ -22,6 +22,8 @@
 #include "lkc.h"
 #include "lxdialog/dialog.h"
 
+#define JUMP_NB			9
+
 static const char mconf_readme[] =
 "Overview\n"
 "--------\n"
@@ -297,17 +299,12 @@ static char filename[PATH_MAX+1];
 static void set_config_filename(const char *config_filename)
 {
 	static char menu_backtitle[PATH_MAX+128];
-	int size;
 
-	size = snprintf(menu_backtitle, sizeof(menu_backtitle),
-			"%s - %s", config_filename, rootmenu.prompt->text);
-	if (size >= sizeof(menu_backtitle))
-		menu_backtitle[sizeof(menu_backtitle)-1] = '\0';
+	snprintf(menu_backtitle, sizeof(menu_backtitle), "%s - %s",
+		 config_filename, rootmenu.prompt->text);
 	set_dialog_backtitle(menu_backtitle);
 
-	size = snprintf(filename, sizeof(filename), "%s", config_filename);
-	if (size >= sizeof(filename))
-		filename[sizeof(filename)-1] = '\0';
+	snprintf(filename, sizeof(filename), "%s", config_filename);
 }
 
 struct subtitle_part {
@@ -908,7 +905,7 @@ static void conf_load(void)
 				return;
 			if (!conf_read(dialog_input_result)) {
 				set_config_filename(dialog_input_result);
-				sym_set_change_count(1);
+				conf_set_changed(true);
 				return;
 			}
 			show_textbox(NULL, "File does not exist!", 5, 38);
diff --git a/scripts/kconfig/menu.c b/scripts/kconfig/menu.c
index a5fbd6ccc..606ba8a63 100644
--- a/scripts/kconfig/menu.c
+++ b/scripts/kconfig/menu.c
@@ -9,6 +9,7 @@
 #include <string.h>
 
 #include "lkc.h"
+#include "internal.h"
 
 static const char nohelp_text[] = "There is no help available for this option.";
 
@@ -211,28 +212,6 @@ void menu_add_symbol(enum prop_type type, struct symbol *sym, struct expr *dep)
 	menu_add_prop(type, expr_alloc_symbol(sym), dep);
 }
 
-void menu_add_option_modules(void)
-{
-	if (modules_sym)
-		zconf_error("symbol '%s' redefines option 'modules' already defined by symbol '%s'",
-			    current_entry->sym->name, modules_sym->name);
-	modules_sym = current_entry->sym;
-}
-
-void menu_add_option_defconfig_list(void)
-{
-	if (!sym_defconfig_list)
-		sym_defconfig_list = current_entry->sym;
-	else if (sym_defconfig_list != current_entry->sym)
-		zconf_error("trying to redefine defconfig symbol");
-	sym_defconfig_list->flags |= SYMBOL_NO_WRITE;
-}
-
-void menu_add_option_allnoconfig_y(void)
-{
-	current_entry->sym->flags |= SYMBOL_ALLNOCONFIG_Y;
-}
-
 static int menu_validate_number(struct symbol *sym, struct symbol *sym2)
 {
 	return sym2->type == S_INT || sym2->type == S_HEX ||
diff --git a/scripts/kconfig/nconf.c b/scripts/kconfig/nconf.c
index daf1c1506..7b371bd7f 100644
--- a/scripts/kconfig/nconf.c
+++ b/scripts/kconfig/nconf.c
@@ -268,7 +268,7 @@ static int mwin_max_cols;
 static MENU *curses_menu;
 static ITEM *curses_menu_items[MAX_MENU_ITEMS];
 static struct mitem k_menu_items[MAX_MENU_ITEMS];
-static int items_num;
+static unsigned int items_num;
 static int global_exit;
 /* the currently selected button */
 static const char *current_instructions = menu_instructions;
@@ -370,18 +370,18 @@ static void print_function_line(void)
 	int lines = getmaxy(stdscr);
 
 	for (i = 0; i < function_keys_num; i++) {
-		(void) wattrset(main_window, attributes[FUNCTION_HIGHLIGHT]);
+		wattrset(main_window, attr_function_highlight);
 		mvwprintw(main_window, lines-3, offset,
 				"%s",
 				function_keys[i].key_str);
-		(void) wattrset(main_window, attributes[FUNCTION_TEXT]);
+		wattrset(main_window, attr_function_text);
 		offset += strlen(function_keys[i].key_str);
 		mvwprintw(main_window, lines-3,
 				offset, "%s",
 				function_keys[i].func);
 		offset += strlen(function_keys[i].func) + skip;
 	}
-	(void) wattrset(main_window, attributes[NORMAL]);
+	wattrset(main_window, attr_normal);
 }
 
 /* help */
@@ -496,16 +496,20 @@ typedef enum {MATCH_TINKER_PATTERN_UP, MATCH_TINKER_PATTERN_DOWN,
 /* return the index of the matched item, or -1 if no such item exists */
 static int get_mext_match(const char *match_str, match_f flag)
 {
-	int match_start = item_index(current_item(curses_menu));
-	int index;
+	int match_start, index;
+
+	/* Do not search if the menu is empty (i.e. items_num == 0) */
+	match_start = item_index(current_item(curses_menu));
+	if (match_start == ERR)
+		return -1;
 
 	if (flag == FIND_NEXT_MATCH_DOWN)
 		++match_start;
 	else if (flag == FIND_NEXT_MATCH_UP)
 		--match_start;
 
+	match_start = (match_start + items_num) % items_num;
 	index = match_start;
-	index = (index + items_num) % items_num;
 	while (true) {
 		char *str = k_menu_items[index].str;
 		if (strcasestr(str, match_str) != NULL)
@@ -627,19 +631,12 @@ static int item_is_tag(char tag)
 
 static char filename[PATH_MAX+1];
 static char menu_backtitle[PATH_MAX+128];
-static const char *set_config_filename(const char *config_filename)
+static void set_config_filename(const char *config_filename)
 {
-	int size;
+	snprintf(menu_backtitle, sizeof(menu_backtitle), "%s - %s",
+		 config_filename, rootmenu.prompt->text);
 
-	size = snprintf(menu_backtitle, sizeof(menu_backtitle),
-			"%s - %s", config_filename, rootmenu.prompt->text);
-	if (size >= sizeof(menu_backtitle))
-		menu_backtitle[sizeof(menu_backtitle)-1] = '\0';
-
-	size = snprintf(filename, sizeof(filename), "%s", config_filename);
-	if (size >= sizeof(filename))
-		filename[sizeof(filename)-1] = '\0';
-	return menu_backtitle;
+	snprintf(filename, sizeof(filename), "%s", config_filename);
 }
 
 /* return = 0 means we are successful.
@@ -755,7 +752,6 @@ static void build_conf(struct menu *menu)
 			switch (ptype) {
 			case P_MENU:
 				child_count++;
-				prompt = prompt;
 				if (single_menu_mode) {
 					item_make(menu, 'm',
 						"%s%*c%s",
@@ -957,16 +953,15 @@ static void show_menu(const char *prompt, const char *instructions,
 	current_instructions = instructions;
 
 	clear();
-	(void) wattrset(main_window, attributes[NORMAL]);
-	print_in_middle(stdscr, 1, 0, getmaxx(stdscr),
+	print_in_middle(stdscr, 1, getmaxx(stdscr),
 			menu_backtitle,
-			attributes[MAIN_HEADING]);
+			attr_main_heading);
 
-	(void) wattrset(main_window, attributes[MAIN_MENU_BOX]);
+	wattrset(main_window, attr_main_menu_box);
 	box(main_window, 0, 0);
-	(void) wattrset(main_window, attributes[MAIN_MENU_HEADING]);
+	wattrset(main_window, attr_main_menu_heading);
 	mvwprintw(main_window, 0, 3, " %s ", prompt);
-	(void) wattrset(main_window, attributes[NORMAL]);
+	wattrset(main_window, attr_normal);
 
 	set_menu_items(curses_menu, curses_menu_items);
 
@@ -1069,7 +1064,6 @@ static int do_match(int key, struct match_state *state, int *ans)
 static void conf(struct menu *menu)
 {
 	struct menu *submenu = NULL;
-	const char *prompt = menu_get_prompt(menu);
 	struct symbol *sym;
 	int res;
 	int current_index = 0;
@@ -1087,9 +1081,8 @@ static void conf(struct menu *menu)
 		if (!child_count)
 			break;
 
-		show_menu(prompt ? prompt : "Main Menu",
-				menu_instructions,
-				current_index, &last_top_row);
+		show_menu(menu_get_prompt(menu), menu_instructions,
+			  current_index, &last_top_row);
 		keypad((menu_win(curses_menu)), TRUE);
 		while (!global_exit) {
 			if (match_state.in_search) {
@@ -1405,7 +1398,7 @@ static void conf_load(void)
 				return;
 			if (!conf_read(dialog_input_result)) {
 				set_config_filename(dialog_input_result);
-				sym_set_change_count(1);
+				conf_set_changed(true);
 				return;
 			}
 			btn_dialog(main_window, "File does not exist!", 0);
@@ -1524,9 +1517,9 @@ int main(int ac, char **av)
 	menu_opts_on(curses_menu, O_NONCYCLIC);
 	menu_opts_on(curses_menu, O_IGNORECASE);
 	set_menu_mark(curses_menu, " ");
-	set_menu_fore(curses_menu, attributes[MAIN_MENU_FORE]);
-	set_menu_back(curses_menu, attributes[MAIN_MENU_BACK]);
-	set_menu_grey(curses_menu, attributes[MAIN_MENU_GREY]);
+	set_menu_fore(curses_menu, attr_main_menu_fore);
+	set_menu_back(curses_menu, attr_main_menu_back);
+	set_menu_grey(curses_menu, attr_main_menu_grey);
 
 	set_config_filename(conf_get_configname());
 	setup_windows();
diff --git a/scripts/kconfig/nconf.gui.c b/scripts/kconfig/nconf.gui.c
index 77f525a86..9aedf40f1 100644
--- a/scripts/kconfig/nconf.gui.c
+++ b/scripts/kconfig/nconf.gui.c
@@ -7,169 +7,120 @@
 #include "nconf.h"
 #include "lkc.h"
 
-/* a list of all the different widgets we use */
-attributes_t attributes[ATTR_MAX+1] = {0};
-
-/* available colors:
-   COLOR_BLACK   0
-   COLOR_RED     1
-   COLOR_GREEN   2
-   COLOR_YELLOW  3
-   COLOR_BLUE    4
-   COLOR_MAGENTA 5
-   COLOR_CYAN    6
-   COLOR_WHITE   7
-   */
-static void set_normal_colors(void)
-{
-	init_pair(NORMAL, -1, -1);
-	init_pair(MAIN_HEADING, COLOR_MAGENTA, -1);
-
-	/* FORE is for the selected item */
-	init_pair(MAIN_MENU_FORE, -1, -1);
-	/* BACK for all the rest */
-	init_pair(MAIN_MENU_BACK, -1, -1);
-	init_pair(MAIN_MENU_GREY, -1, -1);
-	init_pair(MAIN_MENU_HEADING, COLOR_GREEN, -1);
-	init_pair(MAIN_MENU_BOX, COLOR_YELLOW, -1);
-
-	init_pair(SCROLLWIN_TEXT, -1, -1);
-	init_pair(SCROLLWIN_HEADING, COLOR_GREEN, -1);
-	init_pair(SCROLLWIN_BOX, COLOR_YELLOW, -1);
-
-	init_pair(DIALOG_TEXT, -1, -1);
-	init_pair(DIALOG_BOX, COLOR_YELLOW, -1);
-	init_pair(DIALOG_MENU_BACK, COLOR_YELLOW, -1);
-	init_pair(DIALOG_MENU_FORE, COLOR_RED, -1);
-
-	init_pair(INPUT_BOX, COLOR_YELLOW, -1);
-	init_pair(INPUT_HEADING, COLOR_GREEN, -1);
-	init_pair(INPUT_TEXT, -1, -1);
-	init_pair(INPUT_FIELD, -1, -1);
-
-	init_pair(FUNCTION_HIGHLIGHT, -1, -1);
-	init_pair(FUNCTION_TEXT, COLOR_YELLOW, -1);
-}
-
-/* available attributes:
-   A_NORMAL        Normal display (no highlight)
-   A_STANDOUT      Best highlighting mode of the terminal.
-   A_UNDERLINE     Underlining
-   A_REVERSE       Reverse video
-   A_BLINK         Blinking
-   A_DIM           Half bright
-   A_BOLD          Extra bright or bold
-   A_PROTECT       Protected mode
-   A_INVIS         Invisible or blank mode
-   A_ALTCHARSET    Alternate character set
-   A_CHARTEXT      Bit-mask to extract a character
-   COLOR_PAIR(n)   Color-pair number n
-   */
-static void normal_color_theme(void)
-{
-	/* automatically add color... */
-#define mkattr(name, attr) do { \
-attributes[name] = attr | COLOR_PAIR(name); } while (0)
-	mkattr(NORMAL, NORMAL);
-	mkattr(MAIN_HEADING, A_BOLD | A_UNDERLINE);
-
-	mkattr(MAIN_MENU_FORE, A_REVERSE);
-	mkattr(MAIN_MENU_BACK, A_NORMAL);
-	mkattr(MAIN_MENU_GREY, A_NORMAL);
-	mkattr(MAIN_MENU_HEADING, A_BOLD);
-	mkattr(MAIN_MENU_BOX, A_NORMAL);
-
-	mkattr(SCROLLWIN_TEXT, A_NORMAL);
-	mkattr(SCROLLWIN_HEADING, A_BOLD);
-	mkattr(SCROLLWIN_BOX, A_BOLD);
-
-	mkattr(DIALOG_TEXT, A_BOLD);
-	mkattr(DIALOG_BOX, A_BOLD);
-	mkattr(DIALOG_MENU_FORE, A_STANDOUT);
-	mkattr(DIALOG_MENU_BACK, A_NORMAL);
-
-	mkattr(INPUT_BOX, A_NORMAL);
-	mkattr(INPUT_HEADING, A_BOLD);
-	mkattr(INPUT_TEXT, A_NORMAL);
-	mkattr(INPUT_FIELD, A_UNDERLINE);
-
-	mkattr(FUNCTION_HIGHLIGHT, A_BOLD);
-	mkattr(FUNCTION_TEXT, A_REVERSE);
-}
-
-static void no_colors_theme(void)
-{
-	/* automatically add highlight, no color */
-#define mkattrn(name, attr) { attributes[name] = attr; }
-
-	mkattrn(NORMAL, NORMAL);
-	mkattrn(MAIN_HEADING, A_BOLD | A_UNDERLINE);
-
-	mkattrn(MAIN_MENU_FORE, A_STANDOUT);
-	mkattrn(MAIN_MENU_BACK, A_NORMAL);
-	mkattrn(MAIN_MENU_GREY, A_NORMAL);
-	mkattrn(MAIN_MENU_HEADING, A_BOLD);
-	mkattrn(MAIN_MENU_BOX, A_NORMAL);
-
-	mkattrn(SCROLLWIN_TEXT, A_NORMAL);
-	mkattrn(SCROLLWIN_HEADING, A_BOLD);
-	mkattrn(SCROLLWIN_BOX, A_BOLD);
-
-	mkattrn(DIALOG_TEXT, A_NORMAL);
-	mkattrn(DIALOG_BOX, A_BOLD);
-	mkattrn(DIALOG_MENU_FORE, A_STANDOUT);
-	mkattrn(DIALOG_MENU_BACK, A_NORMAL);
-
-	mkattrn(INPUT_BOX, A_BOLD);
-	mkattrn(INPUT_HEADING, A_BOLD);
-	mkattrn(INPUT_TEXT, A_NORMAL);
-	mkattrn(INPUT_FIELD, A_UNDERLINE);
-
-	mkattrn(FUNCTION_HIGHLIGHT, A_BOLD);
-	mkattrn(FUNCTION_TEXT, A_REVERSE);
-}
+int attr_normal;
+int attr_main_heading;
+int attr_main_menu_box;
+int attr_main_menu_fore;
+int attr_main_menu_back;
+int attr_main_menu_grey;
+int attr_main_menu_heading;
+int attr_scrollwin_text;
+int attr_scrollwin_heading;
+int attr_scrollwin_box;
+int attr_dialog_text;
+int attr_dialog_menu_fore;
+int attr_dialog_menu_back;
+int attr_dialog_box;
+int attr_input_box;
+int attr_input_heading;
+int attr_input_text;
+int attr_input_field;
+int attr_function_text;
+int attr_function_highlight;
+
+#define COLOR_ATTR(_at, _fg, _bg, _hl) \
+	{ .attr = &(_at), .has_color = true, .color_fg = _fg, .color_bg = _bg, .highlight = _hl }
+#define NO_COLOR_ATTR(_at, _hl) \
+	{ .attr = &(_at), .has_color = false, .highlight = _hl }
+#define COLOR_DEFAULT		-1
+
+struct nconf_attr_param {
+	int *attr;
+	bool has_color;
+	int color_fg;
+	int color_bg;
+	int highlight;
+};
+
+static const struct nconf_attr_param color_theme_params[] = {
+	COLOR_ATTR(attr_normal,			COLOR_DEFAULT,	COLOR_DEFAULT,	A_NORMAL),
+	COLOR_ATTR(attr_main_heading,		COLOR_MAGENTA,	COLOR_DEFAULT,	A_BOLD | A_UNDERLINE),
+	COLOR_ATTR(attr_main_menu_box,		COLOR_YELLOW,	COLOR_DEFAULT,	A_NORMAL),
+	COLOR_ATTR(attr_main_menu_fore,		COLOR_DEFAULT,	COLOR_DEFAULT,	A_REVERSE),
+	COLOR_ATTR(attr_main_menu_back,		COLOR_DEFAULT,	COLOR_DEFAULT,	A_NORMAL),
+	COLOR_ATTR(attr_main_menu_grey,		COLOR_DEFAULT,	COLOR_DEFAULT,	A_NORMAL),
+	COLOR_ATTR(attr_main_menu_heading,	COLOR_GREEN,	COLOR_DEFAULT,	A_BOLD),
+	COLOR_ATTR(attr_scrollwin_text,		COLOR_DEFAULT,	COLOR_DEFAULT,	A_NORMAL),
+	COLOR_ATTR(attr_scrollwin_heading,	COLOR_GREEN,	COLOR_DEFAULT,	A_BOLD),
+	COLOR_ATTR(attr_scrollwin_box,		COLOR_YELLOW,	COLOR_DEFAULT,	A_BOLD),
+	COLOR_ATTR(attr_dialog_text,		COLOR_DEFAULT,	COLOR_DEFAULT,	A_BOLD),
+	COLOR_ATTR(attr_dialog_menu_fore,	COLOR_RED,	COLOR_DEFAULT,	A_STANDOUT),
+	COLOR_ATTR(attr_dialog_menu_back,	COLOR_YELLOW,	COLOR_DEFAULT,	A_NORMAL),
+	COLOR_ATTR(attr_dialog_box,		COLOR_YELLOW,	COLOR_DEFAULT,	A_BOLD),
+	COLOR_ATTR(attr_input_box,		COLOR_YELLOW,	COLOR_DEFAULT,	A_NORMAL),
+	COLOR_ATTR(attr_input_heading,		COLOR_GREEN,	COLOR_DEFAULT,	A_BOLD),
+	COLOR_ATTR(attr_input_text,		COLOR_DEFAULT,	COLOR_DEFAULT,	A_NORMAL),
+	COLOR_ATTR(attr_input_field,		COLOR_DEFAULT,	COLOR_DEFAULT,	A_UNDERLINE),
+	COLOR_ATTR(attr_function_text,		COLOR_YELLOW,	COLOR_DEFAULT,	A_REVERSE),
+	COLOR_ATTR(attr_function_highlight,	COLOR_DEFAULT,	COLOR_DEFAULT,	A_BOLD),
+	{ /* sentinel */ }
+};
+
+static const struct nconf_attr_param no_color_theme_params[] = {
+	NO_COLOR_ATTR(attr_normal,		A_NORMAL),
+	NO_COLOR_ATTR(attr_main_heading,	A_BOLD | A_UNDERLINE),
+	NO_COLOR_ATTR(attr_main_menu_box,	A_NORMAL),
+	NO_COLOR_ATTR(attr_main_menu_fore,	A_STANDOUT),
+	NO_COLOR_ATTR(attr_main_menu_back,	A_NORMAL),
+	NO_COLOR_ATTR(attr_main_menu_grey,	A_NORMAL),
+	NO_COLOR_ATTR(attr_main_menu_heading,	A_BOLD),
+	NO_COLOR_ATTR(attr_scrollwin_text,	A_NORMAL),
+	NO_COLOR_ATTR(attr_scrollwin_heading,	A_BOLD),
+	NO_COLOR_ATTR(attr_scrollwin_box,	A_BOLD),
+	NO_COLOR_ATTR(attr_dialog_text,		A_NORMAL),
+	NO_COLOR_ATTR(attr_dialog_menu_fore,	A_STANDOUT),
+	NO_COLOR_ATTR(attr_dialog_menu_back,	A_NORMAL),
+	NO_COLOR_ATTR(attr_dialog_box,		A_BOLD),
+	NO_COLOR_ATTR(attr_input_box,		A_BOLD),
+	NO_COLOR_ATTR(attr_input_heading,	A_BOLD),
+	NO_COLOR_ATTR(attr_input_text,		A_NORMAL),
+	NO_COLOR_ATTR(attr_input_field,		A_UNDERLINE),
+	NO_COLOR_ATTR(attr_function_text,	A_REVERSE),
+	NO_COLOR_ATTR(attr_function_highlight,	A_BOLD),
+	{ /* sentinel */ }
+};
 
 void set_colors(void)
 {
-	start_color();
-	use_default_colors();
-	set_normal_colors();
+	const struct nconf_attr_param *p;
+	int pair = 0;
+
 	if (has_colors()) {
-		normal_color_theme();
+		start_color();
+		use_default_colors();
+		p = color_theme_params;
 	} else {
-		/* give defaults */
-		no_colors_theme();
+		p = no_color_theme_params;
 	}
-}
 
+	for (; p->attr; p++) {
+		int attr = p->highlight;
+
+		if (p->has_color) {
+			pair++;
+			init_pair(pair, p->color_fg, p->color_bg);
+			attr |= COLOR_PAIR(pair);
+		}
+
+		*p->attr = attr;
+	}
+}
 
 /* this changes the windows attributes !!! */
-void print_in_middle(WINDOW *win,
-		int starty,
-		int startx,
-		int width,
-		const char *string,
-		chtype color)
-{      int length, x, y;
-	float temp;
-
-
-	if (win == NULL)
-		win = stdscr;
-	getyx(win, y, x);
-	if (startx != 0)
-		x = startx;
-	if (starty != 0)
-		y = starty;
-	if (width == 0)
-		width = 80;
-
-	length = strlen(string);
-	temp = (width - length) / 2;
-	x = startx + (int)temp;
-	(void) wattrset(win, color);
-	mvwprintw(win, y, x, "%s", string);
-	refresh();
+void print_in_middle(WINDOW *win, int y, int width, const char *str, int attrs)
+{
+	wattrset(win, attrs);
+	mvwprintw(win, y, (width - strlen(str)) / 2, "%s", str);
 }
 
 int get_line_no(const char *text)
@@ -294,14 +245,14 @@ int btn_dialog(WINDOW *main_window, const char *msg, int btn_num, ...)
 	msg_win = derwin(win, win_rows-2, msg_width, 1,
 			1+(total_width+2-msg_width)/2);
 
-	set_menu_fore(menu, attributes[DIALOG_MENU_FORE]);
-	set_menu_back(menu, attributes[DIALOG_MENU_BACK]);
+	set_menu_fore(menu, attr_dialog_menu_fore);
+	set_menu_back(menu, attr_dialog_menu_back);
 
-	(void) wattrset(win, attributes[DIALOG_BOX]);
+	wattrset(win, attr_dialog_box);
 	box(win, 0, 0);
 
 	/* print message */
-	(void) wattrset(msg_win, attributes[DIALOG_TEXT]);
+	wattrset(msg_win, attr_dialog_text);
 	fill_window(msg_win, msg);
 
 	set_menu_win(menu, win);
@@ -405,16 +356,16 @@ int dialog_inputbox(WINDOW *main_window,
 	form_win = derwin(win, 1, prompt_width, prompt_lines+3, 2);
 	keypad(form_win, TRUE);
 
-	(void) wattrset(form_win, attributes[INPUT_FIELD]);
+	wattrset(form_win, attr_input_field);
 
-	(void) wattrset(win, attributes[INPUT_BOX]);
+	wattrset(win, attr_input_box);
 	box(win, 0, 0);
-	(void) wattrset(win, attributes[INPUT_HEADING]);
+	wattrset(win, attr_input_heading);
 	if (title)
 		mvwprintw(win, 0, 3, "%s", title);
 
 	/* print message */
-	(void) wattrset(prompt_win, attributes[INPUT_TEXT]);
+	wattrset(prompt_win, attr_input_text);
 	fill_window(prompt_win, prompt);
 
 	mvwprintw(form_win, 0, 0, "%*s", prompt_width, " ");
@@ -576,7 +527,7 @@ void show_scroll_win(WINDOW *main_window,
 
 	/* create the pad */
 	pad = newpad(total_lines+10, total_cols+10);
-	(void) wattrset(pad, attributes[SCROLLWIN_TEXT]);
+	wattrset(pad, attr_scrollwin_text);
 	fill_window(pad, text);
 
 	win_lines = min(total_lines+4, lines-2);
@@ -591,9 +542,9 @@ void show_scroll_win(WINDOW *main_window,
 	win = newwin(win_lines, win_cols, y, x);
 	keypad(win, TRUE);
 	/* show the help in the help window, and show the help panel */
-	(void) wattrset(win, attributes[SCROLLWIN_BOX]);
+	wattrset(win, attr_scrollwin_box);
 	box(win, 0, 0);
-	(void) wattrset(win, attributes[SCROLLWIN_HEADING]);
+	wattrset(win, attr_scrollwin_heading);
 	mvwprintw(win, 0, 3, " %s ", title);
 	panel = new_panel(win);
 
@@ -604,10 +555,9 @@ void show_scroll_win(WINDOW *main_window,
 				text_cols, 0);
 		print_in_middle(win,
 				text_lines+2,
-				0,
 				text_cols,
 				"<OK>",
-				attributes[DIALOG_MENU_FORE]);
+				attr_dialog_menu_fore);
 		wrefresh(win);
 
 		res = wgetch(win);
diff --git a/scripts/kconfig/nconf.h b/scripts/kconfig/nconf.h
index fa5245eb9..6f925bc74 100644
--- a/scripts/kconfig/nconf.h
+++ b/scripts/kconfig/nconf.h
@@ -32,30 +32,26 @@
 		typeof(b) _b = b;\
 		_a < _b ? _a : _b; })
 
-typedef enum {
-	NORMAL = 1,
-	MAIN_HEADING,
-	MAIN_MENU_BOX,
-	MAIN_MENU_FORE,
-	MAIN_MENU_BACK,
-	MAIN_MENU_GREY,
-	MAIN_MENU_HEADING,
-	SCROLLWIN_TEXT,
-	SCROLLWIN_HEADING,
-	SCROLLWIN_BOX,
-	DIALOG_TEXT,
-	DIALOG_MENU_FORE,
-	DIALOG_MENU_BACK,
-	DIALOG_BOX,
-	INPUT_BOX,
-	INPUT_HEADING,
-	INPUT_TEXT,
-	INPUT_FIELD,
-	FUNCTION_TEXT,
-	FUNCTION_HIGHLIGHT,
-	ATTR_MAX
-} attributes_t;
-extern attributes_t attributes[];
+extern int attr_normal;
+extern int attr_main_heading;
+extern int attr_main_menu_box;
+extern int attr_main_menu_fore;
+extern int attr_main_menu_back;
+extern int attr_main_menu_grey;
+extern int attr_main_menu_heading;
+extern int attr_scrollwin_text;
+extern int attr_scrollwin_heading;
+extern int attr_scrollwin_box;
+extern int attr_dialog_text;
+extern int attr_dialog_menu_fore;
+extern int attr_dialog_menu_back;
+extern int attr_dialog_box;
+extern int attr_input_box;
+extern int attr_input_heading;
+extern int attr_input_text;
+extern int attr_input_field;
+extern int attr_function_text;
+extern int attr_function_highlight;
 
 typedef enum {
 	F_HELP = 1,
@@ -72,12 +68,7 @@ typedef enum {
 void set_colors(void);
 
 /* this changes the windows attributes !!! */
-void print_in_middle(WINDOW *win,
-		int starty,
-		int startx,
-		int width,
-		const char *string,
-		chtype color);
+void print_in_middle(WINDOW *win, int y, int width, const char *str, int attrs);
 int get_line_length(const char *line);
 int get_line_no(const char *text);
 const char *get_line(const char *text, int line_no);
diff --git a/scripts/kconfig/parser.y b/scripts/kconfig/parser.y
index 190f1117f..2af7ce4e1 100644
--- a/scripts/kconfig/parser.y
+++ b/scripts/kconfig/parser.y
@@ -12,6 +12,7 @@
 #include <stdbool.h>
 
 #include "lkc.h"
+#include "internal.h"
 
 #define printd(mask, fmt...) if (cdebug & (mask)) printf(fmt)
 
@@ -28,7 +29,7 @@ static bool zconf_endtoken(const char *tokenname,
 
 struct symbol *symbol_hash[SYMBOL_HASHSIZE];
 
-static struct menu *current_menu, *current_entry;
+struct menu *current_menu, *current_entry;
 
 %}
 
@@ -45,7 +46,6 @@ static struct menu *current_menu, *current_entry;
 %token <string> T_HELPTEXT
 %token <string> T_WORD
 %token <string> T_WORD_QUOTE
-%token T_ALLNOCONFIG_Y
 %token T_BOOL
 %token T_CHOICE
 %token T_CLOSE_PAREN
@@ -53,7 +53,6 @@ static struct menu *current_menu, *current_entry;
 %token T_COMMENT
 %token T_CONFIG
 %token T_DEFAULT
-%token T_DEFCONFIG_LIST
 %token T_DEF_BOOL
 %token T_DEF_TRISTATE
 %token T_DEPENDS
@@ -71,7 +70,6 @@ static struct menu *current_menu, *current_entry;
 %token T_MODULES
 %token T_ON
 %token T_OPEN_PAREN
-%token T_OPTION
 %token T_OPTIONAL
 %token T_PLUS_EQUAL
 %token T_PROMPT
@@ -218,19 +216,12 @@ config_option: T_RANGE symbol symbol if_expr T_EOL
 	printd(DEBUG_PARSE, "%s:%d:range\n", zconf_curname(), zconf_lineno());
 };
 
-config_option: T_OPTION T_MODULES T_EOL
+config_option: T_MODULES T_EOL
 {
-	menu_add_option_modules();
-};
-
-config_option: T_OPTION T_DEFCONFIG_LIST T_EOL
-{
-	menu_add_option_defconfig_list();
-};
-
-config_option: T_OPTION T_ALLNOCONFIG_Y T_EOL
-{
-	menu_add_option_allnoconfig_y();
+	if (modules_sym)
+		zconf_error("symbol '%s' redefines option 'modules' already defined by symbol '%s'",
+			    current_entry->sym->name, modules_sym->name);
+	modules_sym = current_entry->sym;
 };
 
 /* choice entry */
@@ -517,7 +508,7 @@ void conf_parse(const char *name)
 	}
 	if (yynerrs)
 		exit(1);
-	sym_set_change_count(1);
+	conf_set_changed(true);
 }
 
 static bool zconf_endtoken(const char *tokenname,
@@ -723,5 +714,3 @@ void zconfdump(FILE *out)
 		}
 	}
 }
-
-#include "menu.c"
diff --git a/scripts/kconfig/preprocess.c b/scripts/kconfig/preprocess.c
index 0243086fb..0590f86df 100644
--- a/scripts/kconfig/preprocess.c
+++ b/scripts/kconfig/preprocess.c
@@ -114,7 +114,7 @@ static char *do_error_if(int argc, char *argv[])
 	if (!strcmp(argv[0], "y"))
 		pperror("%s", argv[1]);
 
-	return NULL;
+	return xstrdup("");
 }
 
 static char *do_filename(int argc, char *argv[])
diff --git a/scripts/kconfig/qconf-cfg.sh b/scripts/kconfig/qconf-cfg.sh
index 02ccc0ae1..fa564cd79 100755
--- a/scripts/kconfig/qconf-cfg.sh
+++ b/scripts/kconfig/qconf-cfg.sh
@@ -2,7 +2,6 @@
 # SPDX-License-Identifier: GPL-2.0
 
 PKG="Qt5Core Qt5Gui Qt5Widgets"
-PKG2="QtCore QtGui"
 
 if [ -z "$(command -v pkg-config)" ]; then
 	echo >&2 "*"
@@ -12,21 +11,14 @@ if [ -z "$(command -v pkg-config)" ]; then
 fi
 
 if pkg-config --exists $PKG; then
-	echo cflags=\"-std=c++11 -fPIC $(pkg-config --cflags Qt5Core Qt5Gui Qt5Widgets)\"
+	echo cflags=\"-std=c++11 -fPIC $(pkg-config --cflags $PKG)\"
 	echo libs=\"$(pkg-config --libs $PKG)\"
 	echo moc=\"$(pkg-config --variable=host_bins Qt5Core)/moc\"
 	exit 0
 fi
 
-if pkg-config --exists $PKG2; then
-	echo cflags=\"$(pkg-config --cflags $PKG2)\"
-	echo libs=\"$(pkg-config --libs $PKG2)\"
-	echo moc=\"$(pkg-config --variable=moc_location QtCore)\"
-	exit 0
-fi
-
 echo >&2 "*"
-echo >&2 "* Could not find Qt via pkg-config."
-echo >&2 "* Please install either Qt 4.8 or 5.x. and make sure it's in PKG_CONFIG_PATH"
+echo >&2 "* Could not find Qt5 via pkg-config."
+echo >&2 "* Please install Qt5 and make sure it's in PKG_CONFIG_PATH"
 echo >&2 "*"
 exit 1
diff --git a/scripts/kconfig/qconf.cc b/scripts/kconfig/qconf.cc
index 863878532..78087b2d9 100644
--- a/scripts/kconfig/qconf.cc
+++ b/scripts/kconfig/qconf.cc
@@ -82,14 +82,6 @@ QIcon ConfigItem::choiceNoIcon;
 QIcon ConfigItem::menuIcon;
 QIcon ConfigItem::menubackIcon;
 
-/*
- * set the new data
- * TODO check the value
- */
-void ConfigItem::okRename(int col)
-{
-}
-
 /*
  * update the displayed of a menu entry
  */
@@ -130,6 +122,7 @@ void ConfigItem::updateMenu(void)
 		goto set_prompt;
 	case P_COMMENT:
 		setIcon(promptColIdx, QIcon());
+		prompt = "*** " + prompt + " ***";
 		goto set_prompt;
 	default:
 		;
@@ -147,9 +140,6 @@ void ConfigItem::updateMenu(void)
 
 		if (!sym_is_changeable(sym) && list->optMode == normalOpt) {
 			setIcon(promptColIdx, QIcon());
-			setText(noColIdx, QString());
-			setText(modColIdx, QString());
-			setText(yesColIdx, QString());
 			break;
 		}
 		expr = sym_get_tristate_value(sym);
@@ -159,12 +149,10 @@ void ConfigItem::updateMenu(void)
 				setIcon(promptColIdx, choiceYesIcon);
 			else
 				setIcon(promptColIdx, symbolYesIcon);
-			setText(yesColIdx, "Y");
 			ch = 'Y';
 			break;
 		case mod:
 			setIcon(promptColIdx, symbolModIcon);
-			setText(modColIdx, "M");
 			ch = 'M';
 			break;
 		default:
@@ -172,31 +160,16 @@ void ConfigItem::updateMenu(void)
 				setIcon(promptColIdx, choiceNoIcon);
 			else
 				setIcon(promptColIdx, symbolNoIcon);
-			setText(noColIdx, "N");
 			ch = 'N';
 			break;
 		}
-		if (expr != no)
-			setText(noColIdx, sym_tristate_within_range(sym, no) ? "_" : 0);
-		if (expr != mod)
-			setText(modColIdx, sym_tristate_within_range(sym, mod) ? "_" : 0);
-		if (expr != yes)
-			setText(yesColIdx, sym_tristate_within_range(sym, yes) ? "_" : 0);
 
 		setText(dataColIdx, QChar(ch));
 		break;
 	case S_INT:
 	case S_HEX:
 	case S_STRING:
-		const char* data;
-
-		data = sym_get_string_value(sym);
-
-		setText(dataColIdx, data);
-		if (type == S_STRING)
-			prompt = QString("%1: %2").arg(prompt).arg(data);
-		else
-			prompt = QString("(%2) %1").arg(prompt).arg(data);
+		setText(dataColIdx, sym_get_string_value(sym));
 		break;
 	}
 	if (!sym_has_value(sym) && visible)
@@ -237,6 +210,17 @@ void ConfigItem::init(void)
 		if (list->mode != fullMode)
 			setExpanded(true);
 		sym_calc_value(menu->sym);
+
+		if (menu->sym) {
+			enum symbol_type type = menu->sym->type;
+
+			// Allow to edit "int", "hex", and "string" in-place in
+			// the data column. Unfortunately, you cannot specify
+			// the flags per column. Set ItemIsEditable for all
+			// columns here, and check the column in createEditor().
+			if (type == S_INT || type == S_HEX || type == S_STRING)
+				setFlags(flags() | Qt::ItemIsEditable);
+		}
 	}
 	updateMenu();
 }
@@ -257,46 +241,65 @@ ConfigItem::~ConfigItem(void)
 	}
 }
 
-ConfigLineEdit::ConfigLineEdit(ConfigView* parent)
-	: Parent(parent)
+QWidget *ConfigItemDelegate::createEditor(QWidget *parent,
+					  const QStyleOptionViewItem &option,
+					  const QModelIndex &index) const
 {
-	connect(this, SIGNAL(editingFinished()), SLOT(hide()));
-}
+	ConfigItem *item;
 
-void ConfigLineEdit::show(ConfigItem* i)
-{
-	item = i;
-	if (sym_get_string_value(item->menu->sym))
-		setText(sym_get_string_value(item->menu->sym));
-	else
-		setText(QString());
-	Parent::show();
-	setFocus();
+	// Only the data column is editable
+	if (index.column() != dataColIdx)
+		return nullptr;
+
+	// You cannot edit invisible menus
+	item = static_cast<ConfigItem *>(index.internalPointer());
+	if (!item || !item->menu || !menu_is_visible(item->menu))
+		return nullptr;
+
+	return QStyledItemDelegate::createEditor(parent, option, index);
 }
 
-void ConfigLineEdit::keyPressEvent(QKeyEvent* e)
+void ConfigItemDelegate::setModelData(QWidget *editor,
+				      QAbstractItemModel *model,
+				      const QModelIndex &index) const
 {
-	switch (e->key()) {
-	case Qt::Key_Escape:
-		break;
-	case Qt::Key_Return:
-	case Qt::Key_Enter:
-		sym_set_string_value(item->menu->sym, text().toLatin1());
-		parent()->updateList();
-		break;
-	default:
-		Parent::keyPressEvent(e);
-		return;
+	QLineEdit *lineEdit;
+	ConfigItem *item;
+	struct symbol *sym;
+	bool success;
+
+	lineEdit = qobject_cast<QLineEdit *>(editor);
+	// If this is not a QLineEdit, use the parent's default.
+	// (does this happen?)
+	if (!lineEdit)
+		goto parent;
+
+	item = static_cast<ConfigItem *>(index.internalPointer());
+	if (!item || !item->menu)
+		goto parent;
+
+	sym = item->menu->sym;
+	if (!sym)
+		goto parent;
+
+	success = sym_set_string_value(sym, lineEdit->text().toUtf8().data());
+	if (success) {
+		ConfigList::updateListForAll();
+	} else {
+		QMessageBox::information(editor, "qconf",
+			"Cannot set the data (maybe due to out of range).\n"
+			"Setting the old value.");
+		lineEdit->setText(sym_get_string_value(sym));
 	}
-	e->accept();
-	parent()->list->setFocus();
-	hide();
+
+parent:
+	QStyledItemDelegate::setModelData(editor, model, index);
 }
 
-ConfigList::ConfigList(ConfigView* p, const char *name)
-	: Parent(p),
+ConfigList::ConfigList(QWidget *parent, const char *name)
+	: QTreeWidget(parent),
 	  updateAll(false),
-	  showName(false), showRange(false), showData(false), mode(singleMode), optMode(normalOpt),
+	  showName(false), mode(singleMode), optMode(normalOpt),
 	  rootEntry(0), headerPopup(0)
 {
 	setObjectName(name);
@@ -306,26 +309,34 @@ ConfigList::ConfigList(ConfigView* p, const char *name)
 	setVerticalScrollMode(ScrollPerPixel);
 	setHorizontalScrollMode(ScrollPerPixel);
 
-	setHeaderLabels(QStringList() << "Option" << "Name" << "N" << "M" << "Y" << "Value");
+	setHeaderLabels(QStringList() << "Option" << "Name" << "Value");
 
-	connect(this, SIGNAL(itemSelectionChanged(void)),
-		SLOT(updateSelection(void)));
+	connect(this, &ConfigList::itemSelectionChanged,
+		this, &ConfigList::updateSelection);
 
 	if (name) {
 		configSettings->beginGroup(name);
 		showName = configSettings->value("/showName", false).toBool();
-		showRange = configSettings->value("/showRange", false).toBool();
-		showData = configSettings->value("/showData", false).toBool();
 		optMode = (enum optionMode)configSettings->value("/optionMode", 0).toInt();
 		configSettings->endGroup();
-		connect(configApp, SIGNAL(aboutToQuit()), SLOT(saveSettings()));
+		connect(configApp, &QApplication::aboutToQuit,
+			this, &ConfigList::saveSettings);
 	}
 
 	showColumn(promptColIdx);
 
+	setItemDelegate(new ConfigItemDelegate(this));
+
+	allLists.append(this);
+
 	reinit();
 }
 
+ConfigList::~ConfigList()
+{
+	allLists.removeOne(this);
+}
+
 bool ConfigList::menuSkip(struct menu *menu)
 {
 	if (optMode == normalOpt && menu_is_visible(menu))
@@ -339,21 +350,10 @@ bool ConfigList::menuSkip(struct menu *menu)
 
 void ConfigList::reinit(void)
 {
-	hideColumn(dataColIdx);
-	hideColumn(yesColIdx);
-	hideColumn(modColIdx);
-	hideColumn(noColIdx);
 	hideColumn(nameColIdx);
 
 	if (showName)
 		showColumn(nameColIdx);
-	if (showRange) {
-		showColumn(noColIdx);
-		showColumn(modColIdx);
-		showColumn(yesColIdx);
-	}
-	if (showData)
-		showColumn(dataColIdx);
 
 	updateListAll();
 }
@@ -375,8 +375,6 @@ void ConfigList::saveSettings(void)
 	if (!objectName().isEmpty()) {
 		configSettings->beginGroup(objectName());
 		configSettings->setValue("/showName", showName);
-		configSettings->setValue("/showRange", showRange);
-		configSettings->setValue("/showData", showData);
 		configSettings->setValue("/optionMode", (int)optMode);
 		configSettings->endGroup();
 	}
@@ -462,6 +460,28 @@ update:
 	resizeColumnToContents(0);
 }
 
+void ConfigList::updateListForAll()
+{
+	QListIterator<ConfigList *> it(allLists);
+
+	while (it.hasNext()) {
+		ConfigList *list = it.next();
+
+		list->updateList();
+	}
+}
+
+void ConfigList::updateListAllForAll()
+{
+	QListIterator<ConfigList *> it(allLists);
+
+	while (it.hasNext()) {
+		ConfigList *list = it.next();
+
+		list->updateList();
+	}
+}
+
 void ConfigList::setValue(ConfigItem* item, tristate val)
 {
 	struct symbol* sym;
@@ -482,7 +502,7 @@ void ConfigList::setValue(ConfigItem* item, tristate val)
 			return;
 		if (oldval == no && item->menu->list)
 			item->setExpanded(true);
-		parent()->updateList();
+		ConfigList::updateListForAll();
 		break;
 	}
 }
@@ -516,12 +536,9 @@ void ConfigList::changeValue(ConfigItem* item)
 				item->setExpanded(true);
 		}
 		if (oldexpr != newexpr)
-			parent()->updateList();
+			ConfigList::updateListForAll();
 		break;
-	case S_INT:
-	case S_HEX:
-	case S_STRING:
-		parent()->lineEdit->show(item);
+	default:
 		break;
 	}
 }
@@ -804,15 +821,6 @@ void ConfigList::mouseReleaseEvent(QMouseEvent* e)
 			}
 		}
 		break;
-	case noColIdx:
-		setValue(item, no);
-		break;
-	case modColIdx:
-		setValue(item, mod);
-		break;
-	case yesColIdx:
-		setValue(item, yes);
-		break;
 	case dataColIdx:
 		changeValue(item);
 		break;
@@ -882,96 +890,32 @@ void ConfigList::contextMenuEvent(QContextMenuEvent *e)
 		headerPopup = new QMenu(this);
 		action = new QAction("Show Name", this);
 		action->setCheckable(true);
-		connect(action, SIGNAL(toggled(bool)),
-			parent(), SLOT(setShowName(bool)));
-		connect(parent(), SIGNAL(showNameChanged(bool)),
-			action, SLOT(setChecked(bool)));
+		connect(action, &QAction::toggled,
+			this, &ConfigList::setShowName);
+		connect(this, &ConfigList::showNameChanged,
+			action, &QAction::setChecked);
 		action->setChecked(showName);
 		headerPopup->addAction(action);
-
-		action = new QAction("Show Range", this);
-		action->setCheckable(true);
-		connect(action, SIGNAL(toggled(bool)),
-			parent(), SLOT(setShowRange(bool)));
-		connect(parent(), SIGNAL(showRangeChanged(bool)),
-			action, SLOT(setChecked(bool)));
-		action->setChecked(showRange);
-		headerPopup->addAction(action);
-
-		action = new QAction("Show Data", this);
-		action->setCheckable(true);
-		connect(action, SIGNAL(toggled(bool)),
-			parent(), SLOT(setShowData(bool)));
-		connect(parent(), SIGNAL(showDataChanged(bool)),
-			action, SLOT(setChecked(bool)));
-		action->setChecked(showData);
-		headerPopup->addAction(action);
 	}
 
 	headerPopup->exec(e->globalPos());
 	e->accept();
 }
 
-ConfigView*ConfigView::viewList;
-QAction *ConfigList::showNormalAction;
-QAction *ConfigList::showAllAction;
-QAction *ConfigList::showPromptAction;
-
-ConfigView::ConfigView(QWidget* parent, const char *name)
-	: Parent(parent)
-{
-	setObjectName(name);
-	QVBoxLayout *verticalLayout = new QVBoxLayout(this);
-	verticalLayout->setContentsMargins(0, 0, 0, 0);
-
-	list = new ConfigList(this);
-	verticalLayout->addWidget(list);
-	lineEdit = new ConfigLineEdit(this);
-	lineEdit->hide();
-	verticalLayout->addWidget(lineEdit);
-
-	this->nextView = viewList;
-	viewList = this;
-}
-
-ConfigView::~ConfigView(void)
-{
-	ConfigView** vp;
-
-	for (vp = &viewList; *vp; vp = &(*vp)->nextView) {
-		if (*vp == this) {
-			*vp = nextView;
-			break;
-		}
-	}
-}
-
-void ConfigView::setShowName(bool b)
+void ConfigList::setShowName(bool on)
 {
-	if (list->showName != b) {
-		list->showName = b;
-		list->reinit();
-		emit showNameChanged(b);
-	}
-}
+	if (showName == on)
+		return;
 
-void ConfigView::setShowRange(bool b)
-{
-	if (list->showRange != b) {
-		list->showRange = b;
-		list->reinit();
-		emit showRangeChanged(b);
-	}
+	showName = on;
+	reinit();
+	emit showNameChanged(on);
 }
 
-void ConfigView::setShowData(bool b)
-{
-	if (list->showData != b) {
-		list->showData = b;
-		list->reinit();
-		emit showDataChanged(b);
-	}
-}
+QList<ConfigList *> ConfigList::allLists;
+QAction *ConfigList::showNormalAction;
+QAction *ConfigList::showAllAction;
+QAction *ConfigList::showPromptAction;
 
 void ConfigList::setAllOpen(bool open)
 {
@@ -984,22 +928,6 @@ void ConfigList::setAllOpen(bool open)
 	}
 }
 
-void ConfigView::updateList()
-{
-	ConfigView* v;
-
-	for (v = viewList; v; v = v->nextView)
-		v->list->updateList();
-}
-
-void ConfigView::updateListAll(void)
-{
-	ConfigView* v;
-
-	for (v = viewList; v; v = v->nextView)
-		v->list->updateListAll();
-}
-
 ConfigInfoView::ConfigInfoView(QWidget* parent, const char *name)
 	: Parent(parent), sym(0), _menu(0)
 {
@@ -1010,15 +938,18 @@ ConfigInfoView::ConfigInfoView(QWidget* parent, const char *name)
 		configSettings->beginGroup(objectName());
 		setShowDebug(configSettings->value("/showDebug", false).toBool());
 		configSettings->endGroup();
-		connect(configApp, SIGNAL(aboutToQuit()), SLOT(saveSettings()));
+		connect(configApp, &QApplication::aboutToQuit,
+			this, &ConfigInfoView::saveSettings);
 	}
 
 	contextMenu = createStandardContextMenu();
 	QAction *action = new QAction("Show Debug Info", contextMenu);
 
 	action->setCheckable(true);
-	connect(action, SIGNAL(toggled(bool)), SLOT(setShowDebug(bool)));
-	connect(this, SIGNAL(showDebugChanged(bool)), action, SLOT(setChecked(bool)));
+	connect(action, &QAction::toggled,
+		this, &ConfigInfoView::setShowDebug);
+	connect(this, &ConfigInfoView::showDebugChanged,
+		action, &QAction::setChecked);
 	action->setChecked(showDebug());
 	contextMenu->addSeparator();
 	contextMenu->addAction(action);
@@ -1108,6 +1039,11 @@ void ConfigInfoView::menuInfo(void)
 		if (showDebug())
 			stream << debug_info(sym);
 
+		struct gstr help_gstr = str_new();
+
+		menu_get_ext_help(_menu, &help_gstr);
+		stream << print_filter(str_get(&help_gstr));
+		str_free(&help_gstr);
 	} else if (_menu->prompt) {
 		stream << "<big><b>";
 		stream << print_filter(_menu->prompt->text);
@@ -1119,11 +1055,11 @@ void ConfigInfoView::menuInfo(void)
 					   expr_print_help, &stream, E_NONE);
 				stream << "<br><br>";
 			}
+
+			stream << "defined at " << _menu->file->name << ":"
+			       << _menu->lineno << "<br><br>";
 		}
 	}
-	if (showDebug())
-		stream << "defined at " << _menu->file->name << ":"
-		       << _menu->lineno << "<br><br>";
 
 	setText(info);
 }
@@ -1276,7 +1212,7 @@ void ConfigInfoView::clicked(const QUrl &url)
 	}
 
 	free(result);
-	delete data;
+	delete[] data;
 }
 
 void ConfigInfoView::contextMenuEvent(QContextMenuEvent *event)
@@ -1300,23 +1236,25 @@ ConfigSearchWindow::ConfigSearchWindow(ConfigMainWindow *parent)
 	layout2->setSpacing(6);
 	layout2->addWidget(new QLabel("Find:", this));
 	editField = new QLineEdit(this);
-	connect(editField, SIGNAL(returnPressed()), SLOT(search()));
+	connect(editField, &QLineEdit::returnPressed,
+		this, &ConfigSearchWindow::search);
 	layout2->addWidget(editField);
 	searchButton = new QPushButton("Search", this);
 	searchButton->setAutoDefault(false);
-	connect(searchButton, SIGNAL(clicked()), SLOT(search()));
+	connect(searchButton, &QPushButton::clicked,
+		this, &ConfigSearchWindow::search);
 	layout2->addWidget(searchButton);
 	layout1->addLayout(layout2);
 
 	split = new QSplitter(this);
 	split->setOrientation(Qt::Vertical);
-	list = new ConfigView(split, "search");
-	list->list->mode = listMode;
+	list = new ConfigList(split, "search");
+	list->mode = listMode;
 	info = new ConfigInfoView(split, "search");
-	connect(list->list, SIGNAL(menuChanged(struct menu *)),
-		info, SLOT(setInfo(struct menu *)));
-	connect(list->list, SIGNAL(menuChanged(struct menu *)),
-		parent, SLOT(setMenuLink(struct menu *)));
+	connect(list, &ConfigList::menuChanged,
+		info, &ConfigInfoView::setInfo);
+	connect(list, &ConfigList::menuChanged,
+		parent, &ConfigMainWindow::setMenuLink);
 
 	layout1->addWidget(split);
 
@@ -1336,7 +1274,8 @@ ConfigSearchWindow::ConfigSearchWindow(ConfigMainWindow *parent)
 	if (ok)
 		split->setSizes(sizes);
 	configSettings->endGroup();
-	connect(configApp, SIGNAL(aboutToQuit()), SLOT(saveSettings()));
+	connect(configApp, &QApplication::aboutToQuit,
+		this, &ConfigSearchWindow::saveSettings);
 }
 
 void ConfigSearchWindow::saveSettings(void)
@@ -1359,7 +1298,7 @@ void ConfigSearchWindow::search(void)
 	ConfigItem *lastItem = NULL;
 
 	free(result);
-	list->list->clear();
+	list->clear();
 	info->clear();
 
 	result = sym_re_search(editField->text().toLatin1());
@@ -1367,7 +1306,7 @@ void ConfigSearchWindow::search(void)
 		return;
 	for (p = result; *p; p++) {
 		for_all_prompts((*p), prop)
-			lastItem = new ConfigItem(list->list, lastItem, prop->menu,
+			lastItem = new ConfigItem(list, lastItem, prop->menu,
 						  menu_is_visible(prop->menu));
 	}
 }
@@ -1415,42 +1354,44 @@ ConfigMainWindow::ConfigMainWindow(void)
 	split1->setOrientation(Qt::Horizontal);
 	split1->setChildrenCollapsible(false);
 
-	menuView = new ConfigView(widget, "menu");
-	menuList = menuView->list;
+	menuList = new ConfigList(widget, "menu");
 
 	split2 = new QSplitter(widget);
 	split2->setChildrenCollapsible(false);
 	split2->setOrientation(Qt::Vertical);
 
 	// create config tree
-	configView = new ConfigView(widget, "config");
-	configList = configView->list;
+	configList = new ConfigList(widget, "config");
 
 	helpText = new ConfigInfoView(widget, "help");
 
 	layout->addWidget(split2);
 	split2->addWidget(split1);
-	split1->addWidget(configView);
-	split1->addWidget(menuView);
+	split1->addWidget(configList);
+	split1->addWidget(menuList);
 	split2->addWidget(helpText);
 
 	setTabOrder(configList, helpText);
 	configList->setFocus();
 
 	backAction = new QAction(QPixmap(xpm_back), "Back", this);
-	connect(backAction, SIGNAL(triggered(bool)), SLOT(goBack()));
+	connect(backAction, &QAction::triggered,
+		this, &ConfigMainWindow::goBack);
 
 	QAction *quitAction = new QAction("&Quit", this);
 	quitAction->setShortcut(Qt::CTRL + Qt::Key_Q);
-	connect(quitAction, SIGNAL(triggered(bool)), SLOT(close()));
+	connect(quitAction, &QAction::triggered,
+		this, &ConfigMainWindow::close);
 
 	QAction *loadAction = new QAction(QPixmap(xpm_load), "&Load", this);
 	loadAction->setShortcut(Qt::CTRL + Qt::Key_L);
-	connect(loadAction, SIGNAL(triggered(bool)), SLOT(loadConfig()));
+	connect(loadAction, &QAction::triggered,
+		this, &ConfigMainWindow::loadConfig);
 
 	saveAction = new QAction(QPixmap(xpm_save), "&Save", this);
 	saveAction->setShortcut(Qt::CTRL + Qt::Key_S);
-	connect(saveAction, SIGNAL(triggered(bool)), SLOT(saveConfig()));
+	connect(saveAction, &QAction::triggered,
+		this, &ConfigMainWindow::saveConfig);
 
 	conf_set_changed_callback(conf_changed);
 
@@ -1459,37 +1400,37 @@ ConfigMainWindow::ConfigMainWindow(void)
 	configname = xstrdup(conf_get_configname());
 
 	QAction *saveAsAction = new QAction("Save &As...", this);
-	  connect(saveAsAction, SIGNAL(triggered(bool)), SLOT(saveConfigAs()));
+	connect(saveAsAction, &QAction::triggered,
+		this, &ConfigMainWindow::saveConfigAs);
 	QAction *searchAction = new QAction("&Find", this);
 	searchAction->setShortcut(Qt::CTRL + Qt::Key_F);
-	  connect(searchAction, SIGNAL(triggered(bool)), SLOT(searchConfig()));
+	connect(searchAction, &QAction::triggered,
+		this, &ConfigMainWindow::searchConfig);
 	singleViewAction = new QAction(QPixmap(xpm_single_view), "Single View", this);
 	singleViewAction->setCheckable(true);
-	  connect(singleViewAction, SIGNAL(triggered(bool)), SLOT(showSingleView()));
+	connect(singleViewAction, &QAction::triggered,
+		this, &ConfigMainWindow::showSingleView);
 	splitViewAction = new QAction(QPixmap(xpm_split_view), "Split View", this);
 	splitViewAction->setCheckable(true);
-	  connect(splitViewAction, SIGNAL(triggered(bool)), SLOT(showSplitView()));
+	connect(splitViewAction, &QAction::triggered,
+		this, &ConfigMainWindow::showSplitView);
 	fullViewAction = new QAction(QPixmap(xpm_tree_view), "Full View", this);
 	fullViewAction->setCheckable(true);
-	  connect(fullViewAction, SIGNAL(triggered(bool)), SLOT(showFullView()));
+	connect(fullViewAction, &QAction::triggered,
+		this, &ConfigMainWindow::showFullView);
 
 	QAction *showNameAction = new QAction("Show Name", this);
 	  showNameAction->setCheckable(true);
-	  connect(showNameAction, SIGNAL(toggled(bool)), configView, SLOT(setShowName(bool)));
-	  showNameAction->setChecked(configView->showName());
-	QAction *showRangeAction = new QAction("Show Range", this);
-	  showRangeAction->setCheckable(true);
-	  connect(showRangeAction, SIGNAL(toggled(bool)), configView, SLOT(setShowRange(bool)));
-	QAction *showDataAction = new QAction("Show Data", this);
-	  showDataAction->setCheckable(true);
-	  connect(showDataAction, SIGNAL(toggled(bool)), configView, SLOT(setShowData(bool)));
+	connect(showNameAction, &QAction::toggled,
+		configList, &ConfigList::setShowName);
+	showNameAction->setChecked(configList->showName);
 
 	QActionGroup *optGroup = new QActionGroup(this);
 	optGroup->setExclusive(true);
-	connect(optGroup, SIGNAL(triggered(QAction*)), configList,
-		SLOT(setOptionMode(QAction *)));
-	connect(optGroup, SIGNAL(triggered(QAction *)), menuList,
-		SLOT(setOptionMode(QAction *)));
+	connect(optGroup, &QActionGroup::triggered,
+		configList, &ConfigList::setOptionMode);
+	connect(optGroup, &QActionGroup::triggered,
+		menuList, &ConfigList::setOptionMode);
 
 	ConfigList::showNormalAction = new QAction("Show Normal Options", optGroup);
 	ConfigList::showNormalAction->setCheckable(true);
@@ -1500,13 +1441,16 @@ ConfigMainWindow::ConfigMainWindow(void)
 
 	QAction *showDebugAction = new QAction("Show Debug Info", this);
 	  showDebugAction->setCheckable(true);
-	  connect(showDebugAction, SIGNAL(toggled(bool)), helpText, SLOT(setShowDebug(bool)));
+	connect(showDebugAction, &QAction::toggled,
+		helpText, &ConfigInfoView::setShowDebug);
 	  showDebugAction->setChecked(helpText->showDebug());
 
 	QAction *showIntroAction = new QAction("Introduction", this);
-	  connect(showIntroAction, SIGNAL(triggered(bool)), SLOT(showIntro()));
+	connect(showIntroAction, &QAction::triggered,
+		this, &ConfigMainWindow::showIntro);
 	QAction *showAboutAction = new QAction("About", this);
-	  connect(showAboutAction, SIGNAL(triggered(bool)), SLOT(showAbout()));
+	connect(showAboutAction, &QAction::triggered,
+		this, &ConfigMainWindow::showAbout);
 
 	// init tool bar
 	QToolBar *toolBar = addToolBar("Tools");
@@ -1534,8 +1478,6 @@ ConfigMainWindow::ConfigMainWindow(void)
 	// create options menu
 	menu = menuBar()->addMenu("&Option");
 	menu->addAction(showNameAction);
-	menu->addAction(showRangeAction);
-	menu->addAction(showDataAction);
 	menu->addSeparator();
 	menu->addActions(optGroup->actions());
 	menu->addSeparator();
@@ -1546,30 +1488,30 @@ ConfigMainWindow::ConfigMainWindow(void)
 	menu->addAction(showIntroAction);
 	menu->addAction(showAboutAction);
 
-	connect (helpText, SIGNAL (anchorClicked (const QUrl &)),
-		 helpText, SLOT (clicked (const QUrl &)) );
-
-	connect(configList, SIGNAL(menuChanged(struct menu *)),
-		helpText, SLOT(setInfo(struct menu *)));
-	connect(configList, SIGNAL(menuSelected(struct menu *)),
-		SLOT(changeMenu(struct menu *)));
-	connect(configList, SIGNAL(itemSelected(struct menu *)),
-		SLOT(changeItens(struct menu *)));
-	connect(configList, SIGNAL(parentSelected()),
-		SLOT(goBack()));
-	connect(menuList, SIGNAL(menuChanged(struct menu *)),
-		helpText, SLOT(setInfo(struct menu *)));
-	connect(menuList, SIGNAL(menuSelected(struct menu *)),
-		SLOT(changeMenu(struct menu *)));
-
-	connect(configList, SIGNAL(gotFocus(struct menu *)),
-		helpText, SLOT(setInfo(struct menu *)));
-	connect(menuList, SIGNAL(gotFocus(struct menu *)),
-		helpText, SLOT(setInfo(struct menu *)));
-	connect(menuList, SIGNAL(gotFocus(struct menu *)),
-		SLOT(listFocusChanged(void)));
-	connect(helpText, SIGNAL(menuSelected(struct menu *)),
-		SLOT(setMenuLink(struct menu *)));
+	connect(helpText, &ConfigInfoView::anchorClicked,
+		helpText, &ConfigInfoView::clicked);
+
+	connect(configList, &ConfigList::menuChanged,
+		helpText, &ConfigInfoView::setInfo);
+	connect(configList, &ConfigList::menuSelected,
+		this, &ConfigMainWindow::changeMenu);
+	connect(configList, &ConfigList::itemSelected,
+		this, &ConfigMainWindow::changeItens);
+	connect(configList, &ConfigList::parentSelected,
+		this, &ConfigMainWindow::goBack);
+	connect(menuList, &ConfigList::menuChanged,
+		helpText, &ConfigInfoView::setInfo);
+	connect(menuList, &ConfigList::menuSelected,
+		this, &ConfigMainWindow::changeMenu);
+
+	connect(configList, &ConfigList::gotFocus,
+		helpText, &ConfigInfoView::setInfo);
+	connect(menuList, &ConfigList::gotFocus,
+		helpText, &ConfigInfoView::setInfo);
+	connect(menuList, &ConfigList::gotFocus,
+		this, &ConfigMainWindow::listFocusChanged);
+	connect(helpText, &ConfigInfoView::menuSelected,
+		this, &ConfigMainWindow::setMenuLink);
 
 	QString listMode = configSettings->value("/listMode", "symbol").toString();
 	if (listMode == "single")
@@ -1608,7 +1550,7 @@ void ConfigMainWindow::loadConfig(void)
 	free(configname);
 	configname = xstrdup(name);
 
-	ConfigView::updateListAll();
+	ConfigList::updateListAllForAll();
 }
 
 bool ConfigMainWindow::saveConfig(void)
@@ -1743,7 +1685,7 @@ void ConfigMainWindow::showSingleView(void)
 
 	backAction->setEnabled(true);
 
-	menuView->hide();
+	menuList->hide();
 	menuList->setRootMenu(0);
 	configList->mode = singleMode;
 	if (configList->rootEntry == &rootmenu)
@@ -1774,7 +1716,7 @@ void ConfigMainWindow::showSplitView(void)
 	menuList->mode = symbolMode;
 	menuList->setRootMenu(&rootmenu);
 	menuList->setAllOpen(true);
-	menuView->show();
+	menuList->show();
 	menuList->setFocus();
 }
 
@@ -1789,7 +1731,7 @@ void ConfigMainWindow::showFullView(void)
 
 	backAction->setEnabled(false);
 
-	menuView->hide();
+	menuList->hide();
 	menuList->setRootMenu(0);
 	configList->mode = fullMode;
 	if (configList->rootEntry == &rootmenu)
@@ -1831,17 +1773,26 @@ void ConfigMainWindow::closeEvent(QCloseEvent* e)
 
 void ConfigMainWindow::showIntro(void)
 {
-	static const QString str = "Welcome to the qconf graphical configuration tool.\n\n"
-		"For each option, a blank box indicates the feature is disabled, a check\n"
-		"indicates it is enabled, and a dot indicates that it is to be compiled\n"
-		"as a module.  Clicking on the box will cycle through the three states.\n\n"
-		"If you do not see an option (e.g., a device driver) that you believe\n"
-		"should be present, try turning on Show All Options under the Options menu.\n"
-		"Although there is no cross reference yet to help you figure out what other\n"
-		"options must be enabled to support the option you are interested in, you can\n"
-		"still view the help of a grayed-out option.\n\n"
-		"Toggling Show Debug Info under the Options menu will show the dependencies,\n"
-		"which you can then match by examining other options.\n\n";
+	static const QString str =
+		"Welcome to the qconf graphical configuration tool.\n"
+		"\n"
+		"For bool and tristate options, a blank box indicates the "
+		"feature is disabled, a check indicates it is enabled, and a "
+		"dot indicates that it is to be compiled as a module. Clicking "
+		"on the box will cycle through the three states. For int, hex, "
+		"and string options, double-clicking or pressing F2 on the "
+		"Value cell will allow you to edit the value.\n"
+		"\n"
+		"If you do not see an option (e.g., a device driver) that you "
+		"believe should be present, try turning on Show All Options "
+		"under the Options menu. Enabling Show Debug Info will help you"
+		"figure out what other options must be enabled to support the "
+		"option you are interested in, and hyperlinks will navigate to "
+		"them.\n"
+		"\n"
+		"Toggling Show Debug Info under the Options menu will show the "
+		"dependencies, which you can then match by examining other "
+		"options.\n";
 
 	QMessageBox::information(this, "qconf", str);
 }
@@ -1849,10 +1800,13 @@ void ConfigMainWindow::showIntro(void)
 void ConfigMainWindow::showAbout(void)
 {
 	static const QString str = "qconf is Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>.\n"
-		"Copyright (C) 2015 Boris Barbulovski <bbarbulovski@gmail.com>.\n\n"
-		"Bug reports and feature request can also be entered at http://bugzilla.kernel.org/\n";
+		"Copyright (C) 2015 Boris Barbulovski <bbarbulovski@gmail.com>.\n"
+		"\n"
+		"Bug reports and feature request can also be entered at http://bugzilla.kernel.org/\n"
+		"\n"
+		"Qt Version: ";
 
-	QMessageBox::information(this, "qconf", str);
+	QMessageBox::information(this, "qconf", str + qVersion());
 }
 
 void ConfigMainWindow::saveSettings(void)
@@ -1921,7 +1875,6 @@ int main(int ac, char** av)
 	const char *name;
 
 	progname = av[0];
-	configApp = new QApplication(ac, av);
 	if (ac > 1 && av[1][0] == '-') {
 		switch (av[1][1]) {
 		case 's':
@@ -1942,6 +1895,8 @@ int main(int ac, char** av)
 	conf_read(NULL);
 	//zconfdump(stdout);
 
+	configApp = new QApplication(ac, av);
+
 	configSettings = new ConfigSettings();
 	configSettings->beginGroup("/kconfig/qconf");
 	v = new ConfigMainWindow();
diff --git a/scripts/kconfig/qconf.h b/scripts/kconfig/qconf.h
index f97376a81..78b0a1dfc 100644
--- a/scripts/kconfig/qconf.h
+++ b/scripts/kconfig/qconf.h
@@ -11,15 +11,14 @@
 #include <QPushButton>
 #include <QSettings>
 #include <QSplitter>
+#include <QStyledItemDelegate>
 #include <QTextBrowser>
 #include <QTreeWidget>
 
 #include "expr.h"
 
-class ConfigView;
 class ConfigList;
 class ConfigItem;
-class ConfigLineEdit;
 class ConfigMainWindow;
 
 class ConfigSettings : public QSettings {
@@ -30,7 +29,7 @@ public:
 };
 
 enum colIdx {
-	promptColIdx, nameColIdx, noColIdx, modColIdx, yesColIdx, dataColIdx
+	promptColIdx, nameColIdx, dataColIdx
 };
 enum listMode {
 	singleMode, menuMode, symbolMode, fullMode, listMode
@@ -43,13 +42,10 @@ class ConfigList : public QTreeWidget {
 	Q_OBJECT
 	typedef class QTreeWidget Parent;
 public:
-	ConfigList(ConfigView* p, const char *name = 0);
+	ConfigList(QWidget *parent, const char *name = 0);
+	~ConfigList();
 	void reinit(void);
 	ConfigItem* findConfigItem(struct menu *);
-	ConfigView* parent(void) const
-	{
-		return (ConfigView*)Parent::parent();
-	}
 	void setSelected(QTreeWidgetItem *item, bool enable) {
 		for (int i = 0; i < selectedItems().size(); i++)
 			selectedItems().at(i)->setSelected(false);
@@ -75,6 +71,7 @@ public slots:
 	void updateSelection(void);
 	void saveSettings(void);
 	void setOptionMode(QAction *action);
+	void setShowName(bool on);
 
 signals:
 	void menuChanged(struct menu *menu);
@@ -82,6 +79,7 @@ signals:
 	void itemSelected(struct menu *menu);
 	void parentSelected(void);
 	void gotFocus(struct menu *);
+	void showNameChanged(bool on);
 
 public:
 	void updateListAll(void)
@@ -100,7 +98,7 @@ public:
 
 	bool updateAll;
 
-	bool showName, showRange, showData;
+	bool showName;
 	enum listMode mode;
 	enum optionMode optMode;
 	struct menu *rootEntry;
@@ -108,6 +106,10 @@ public:
 	QPalette inactivedColorGroup;
 	QMenu* headerPopup;
 
+	static QList<ConfigList *> allLists;
+	static void updateListForAll();
+	static void updateListAllForAll();
+
 	static QAction *showNormalAction, *showAllAction, *showPromptAction;
 };
 
@@ -131,7 +133,6 @@ public:
 	}
 	~ConfigItem(void);
 	void init(void);
-	void okRename(int col);
 	void updateMenu(void);
 	void testUpdateMenu(bool v);
 	ConfigList* listView() const
@@ -168,48 +169,18 @@ public:
 	static QIcon menuIcon, menubackIcon;
 };
 
-class ConfigLineEdit : public QLineEdit {
-	Q_OBJECT
-	typedef class QLineEdit Parent;
-public:
-	ConfigLineEdit(ConfigView* parent);
-	ConfigView* parent(void) const
-	{
-		return (ConfigView*)Parent::parent();
-	}
-	void show(ConfigItem *i);
-	void keyPressEvent(QKeyEvent *e);
-
-public:
-	ConfigItem *item;
-};
-
-class ConfigView : public QWidget {
-	Q_OBJECT
-	typedef class QWidget Parent;
-public:
-	ConfigView(QWidget* parent, const char *name = 0);
-	~ConfigView(void);
-	static void updateList();
-	static void updateListAll(void);
-
-	bool showName(void) const { return list->showName; }
-	bool showRange(void) const { return list->showRange; }
-	bool showData(void) const { return list->showData; }
-public slots:
-	void setShowName(bool);
-	void setShowRange(bool);
-	void setShowData(bool);
-signals:
-	void showNameChanged(bool);
-	void showRangeChanged(bool);
-	void showDataChanged(bool);
+class ConfigItemDelegate : public QStyledItemDelegate
+{
+private:
+	struct menu *menu;
 public:
-	ConfigList* list;
-	ConfigLineEdit* lineEdit;
-
-	static ConfigView* viewList;
-	ConfigView* nextView;
+	ConfigItemDelegate(QObject *parent = nullptr)
+		: QStyledItemDelegate(parent) {}
+	QWidget *createEditor(QWidget *parent,
+			      const QStyleOptionViewItem &option,
+			      const QModelIndex &index) const override;
+	void setModelData(QWidget *editor, QAbstractItemModel *model,
+			  const QModelIndex &index) const override;
 };
 
 class ConfigInfoView : public QTextBrowser {
@@ -257,7 +228,7 @@ protected:
 	QLineEdit* editField;
 	QPushButton* searchButton;
 	QSplitter* split;
-	ConfigView* list;
+	ConfigList *list;
 	ConfigInfoView* info;
 
 	struct symbol **result;
@@ -292,9 +263,7 @@ protected:
 	void closeEvent(QCloseEvent *e);
 
 	ConfigSearchWindow *searchWindow;
-	ConfigView *menuView;
 	ConfigList *menuList;
-	ConfigView *configView;
 	ConfigList *configList;
 	ConfigInfoView *helpText;
 	QAction *backAction;
diff --git a/scripts/kconfig/streamline_config.pl b/scripts/kconfig/streamline_config.pl
index 19857d18d..911c72a2d 100755
--- a/scripts/kconfig/streamline_config.pl
+++ b/scripts/kconfig/streamline_config.pl
@@ -21,7 +21,7 @@
 #  1. Boot up the kernel that you want to stream line the config on.
 #  2. Change directory to the directory holding the source of the
 #       kernel that you just booted.
-#  3. Copy the configuraton file to this directory as .config
+#  3. Copy the configuration file to this directory as .config
 #  4. Have all your devices that you need modules for connected and
 #      operational (make sure that their corresponding modules are loaded)
 #  5. Run this script redirecting the output to some other file
@@ -481,7 +481,7 @@ sub parse_config_depends
 # The idea is we look at all the configs that select it. If one
 # is already in our list of configs to enable, then there's nothing
 # else to do. If there isn't, we pick the first config that was
-# enabled in the orignal config and use that.
+# enabled in the original config and use that.
 sub parse_config_selects
 {
     my ($config, $p) = @_;
@@ -593,7 +593,10 @@ while ($repeat) {
 }
 
 my %setconfigs;
-my @preserved_kconfigs = split(/:/,$ENV{LMC_KEEP});
+my @preserved_kconfigs;
+if (defined($ENV{'LMC_KEEP'})) {
+	@preserved_kconfigs = split(/:/,$ENV{LMC_KEEP});
+}
 
 sub in_preserved_kconfigs {
     my $kconfig = $config2kfile{$_[0]};
diff --git a/scripts/kconfig/symbol.c b/scripts/kconfig/symbol.c
index ffa3ec65c..5844d636d 100644
--- a/scripts/kconfig/symbol.c
+++ b/scripts/kconfig/symbol.c
@@ -3,11 +3,11 @@
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
  */
 
+#include <sys/types.h>
 #include <ctype.h>
 #include <stdlib.h>
 #include <string.h>
 #include <regex.h>
-#include <sys/utsname.h>
 
 #include "lkc.h"
 
@@ -35,7 +35,6 @@ static struct symbol symbol_empty = {
 	.flags = SYMBOL_VALID,
 };
 
-struct symbol *sym_defconfig_list;
 struct symbol *modules_sym;
 static tristate modules_val;
 
@@ -473,7 +472,7 @@ void sym_clear_all_valid(void)
 
 	for_all_symbols(i, sym)
 		sym->flags &= ~SYMBOL_VALID;
-	sym_add_change_count(1);
+	conf_set_changed(true);
 	sym_calc_value(modules_sym);
 }
 
diff --git a/scripts/kconfig/tests/choice/Kconfig b/scripts/kconfig/tests/choice/Kconfig
index a412205b1..0930eb65e 100644
--- a/scripts/kconfig/tests/choice/Kconfig
+++ b/scripts/kconfig/tests/choice/Kconfig
@@ -2,7 +2,7 @@
 
 config MODULES
 	bool "Enable loadable module support"
-	option modules
+	modules
 	default y
 
 choice
diff --git a/scripts/kconfig/tests/choice_value_with_m_dep/Kconfig b/scripts/kconfig/tests/choice_value_with_m_dep/Kconfig
index 7106c26bb..bd970cec0 100644
--- a/scripts/kconfig/tests/choice_value_with_m_dep/Kconfig
+++ b/scripts/kconfig/tests/choice_value_with_m_dep/Kconfig
@@ -2,7 +2,7 @@
 
 config MODULES
 	def_bool y
-	option modules
+	modules
 
 config DEP
 	tristate
diff --git a/scripts/kconfig/tests/conftest.py b/scripts/kconfig/tests/conftest.py
index 0345ef6e3..af8774a56 100644
--- a/scripts/kconfig/tests/conftest.py
+++ b/scripts/kconfig/tests/conftest.py
@@ -53,6 +53,10 @@ class Conf:
         # Override 'srctree' environment to make the test as the top directory
         extra_env['srctree'] = self._test_dir
 
+        # Clear KCONFIG_DEFCONFIG_LIST to keep unit tests from being affected
+        # by the user's environment.
+        extra_env['KCONFIG_DEFCONFIG_LIST'] = ''
+
         # Run Kconfig in a temporary directory.
         # This directory is automatically removed when done.
         with tempfile.TemporaryDirectory() as temp_dir:
diff --git a/scripts/kconfig/tests/inter_choice/Kconfig b/scripts/kconfig/tests/inter_choice/Kconfig
index 5698a4018..26c25f686 100644
--- a/scripts/kconfig/tests/inter_choice/Kconfig
+++ b/scripts/kconfig/tests/inter_choice/Kconfig
@@ -2,7 +2,7 @@
 
 config MODULES
 	def_bool y
-	option modules
+	modules
 
 choice
 	prompt "Choice"
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

