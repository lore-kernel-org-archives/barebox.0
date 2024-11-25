Delivery-date: Mon, 25 Nov 2024 16:10:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFajK-000FLU-20
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:10:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFajJ-0006xG-IY
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:10:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AQwVe6S8/pBznvlVQMip3kobP6UugBR6hBb3ZCVDRYg=; b=cVrAoG2sbszvrmvel7q19HZKRB
	EHZpKfkMl91z/zdNEqFWsemry+pLoZtj89q0jKLLC5tH6CmCqik5/Ifjg/gcWl+uY6Wljhjygscoa
	gh4ea/ICUz6dGaPBD6LNXC3Qf2w4yUYhnyCSJ3Hr50xvCc3PsoO0xu3tPM3AjmOfVkWA+OziVk/3f
	DMI+ktkGCfNlekMBVo/49HS+uTNDqRlDSkLmTEco/OC+lv5QeEAZhY+vyXbpnOJiWbQAHtqhRsJoV
	clOVB0KpgiX/yJZq5FOU/AyRZ4SnhHJdn3zxQppxth9+94wJdnqYUSVfD6aiW8awpHc5u/3YCPGtT
	0uL0Pzfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFain-00000008P1o-00IZ;
	Mon, 25 Nov 2024 15:09:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaih-00000008Oxy-2zcS
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:09:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaig-0006ct-GW; Mon, 25 Nov 2024 16:09:46 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaif-00069p-1l;
	Mon, 25 Nov 2024 16:09:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaif-001HUO-1u;
	Mon, 25 Nov 2024 16:09:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:09:44 +0100
Message-Id: <20241125150945.166979-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125150945.166979-1-a.fatoum@pengutronix.de>
References: <20241125150945.166979-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_070948_059602_D8BF4514 
X-CRM114-Status: GOOD (  42.93  )
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
Subject: [PATCH 3/4] fixdep: sync with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's been quite a while since we updated fixdep, but we don't have any
barebox-specifics in fixdep, so let's sync now with Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                 |   4 +-
 scripts/Kbuild.include   |  31 ++--
 scripts/Makefile.build   |   8 +-
 scripts/basic/Makefile   |   2 +
 scripts/basic/fixdep.c   | 297 ++++++++++++++++++++++++---------------
 scripts/compiler.h       |  20 +--
 scripts/include/xalloc.h |  34 +++++
 scripts/mod/sumversion.c |  19 ++-
 8 files changed, 265 insertions(+), 150 deletions(-)
 create mode 100644 scripts/include/xalloc.h

diff --git a/Makefile b/Makefile
index 991e11bd0dee..b17452ed2cb1 100644
--- a/Makefile
+++ b/Makefile
@@ -846,7 +846,7 @@ quiet_cmd_sysmap = SYSMAP  System.map
 define rule_barebox__
 	$(if $(CONFIG_KALLSYMS),,+$(call cmd,barebox_version))
 	$(call cmd,barebox__)
-	$(Q)echo 'cmd_$@ := $(cmd_barebox__)' > $(@D)/.$(@F).cmd
+	$(Q)echo 'savedcmd_$@ := $(cmd_barebox__)' > $(@D)/.$(@F).cmd
 	$(call cmd,prelink__)
 	$(call cmd,sysmap)
 endef
@@ -893,7 +893,7 @@ cmd_ksym_ld = $(cmd_barebox__)
 define rule_ksym_ld
 	+$(call cmd,barebox_version)
 	$(call cmd,barebox__)
-	$(Q)echo 'cmd_$@ := $(cmd_barebox__)' > $(@D)/.$(@F).cmd
+	$(Q)echo 'savedcmd_$@ := $(cmd_barebox__)' > $(@D)/.$(@F).cmd
 endef
 
 # Generate .S file with all kernel symbols
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index eeb459f8fad3..315e50a2f709 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -183,10 +183,14 @@ cmd = @set -e; $(echo-cmd) $(cmd_$(1))
 ifneq ($(KBUILD_NOCMDDEP),1)
 # Check if both commands are the same including their order. Result is empty
 # string if equal. User may override this check using make KBUILD_NOCMDDEP=1
-cmd-check = $(filter-out $(subst $(space),$(space_escape),$(strip $(cmd_$@))), \
+# If the target does not exist, the *.cmd file should not be included so
+# $(savedcmd_$@) gets empty. Then, target will be built even if $(newer-prereqs)
+# happens to become empty.
+cmd-check = $(filter-out $(subst $(space),$(space_escape),$(strip $(savedcmd_$@))), \
                          $(subst $(space),$(space_escape),$(strip $(cmd_$1))))
 else
-cmd-check = $(if $(strip $(cmd_$@)),,1)
+# We still need to detect missing targets.
+cmd-check = $(if $(strip $(savedcmd_$@)),,1)
 endif
 
 # Replace >$< with >$$< to preserve $ when reloading the .cmd file
@@ -198,19 +202,26 @@ endif
 make-cmd = $(call escsq,$(subst $(pound),$$(pound),$(subst $$,$$$$,$(cmd_$(1)))))
 
 # Find any prerequisites that are newer than target or that do not exist.
-# (This is not true for now; $? should contain any non-existent prerequisites,
-# but it does not work as expected when .SECONDARY is present. This seems a bug
-# of GNU Make.)
 # PHONY targets skipped in both cases.
+# If there is no prerequisite other than phony targets, $(newer-prereqs) becomes
+# empty even if the target does not exist. cmd-check saves this corner case.
 newer-prereqs = $(filter-out $(PHONY),$?)
 
+# It is a typical mistake to forget the FORCE prerequisite. Check it here so
+# no more breakage will slip in.
+check-FORCE = $(if $(filter FORCE, $^),,$(warning FORCE prerequisite is missing))
+
+if-changed-cond = $(newer-prereqs)$(cmd-check)$(check-FORCE)
+
 # Execute command if command has changed or prerequisite(s) are updated.
-if_changed = $(if $(newer-prereqs)$(cmd-check),                              \
+if_changed = $(if $(if-changed-cond),$(cmd_and_savecmd),@:)
+
+cmd_and_savecmd =                                                            \
 	$(cmd);                                                              \
-	printf '%s\n' 'cmd_$@ := $(make-cmd)' > $(dot-target).cmd, @:)
+	printf '%s\n' 'savedcmd_$@ := $(make-cmd)' > $(dot-target).cmd
 
 # Execute the command and also postprocess generated .d dependencies file.
-if_changed_dep = $(if $(newer-prereqs)$(cmd-check),$(cmd_and_fixdep),@:)
+if_changed_dep = $(if $(if-changed-cond),$(cmd_and_fixdep),@:)
 
 cmd_and_fixdep =                                                             \
 	$(cmd);                                                              \
@@ -220,7 +231,7 @@ cmd_and_fixdep =                                                             \
 # Usage: $(call if_changed_rule,foo)
 # Will check if $(cmd_foo) or any of the prerequisites changed,
 # and if so will execute $(rule_foo).
-if_changed_rule = $(if $(newer-prereqs)$(cmd-check),$(rule_$(1)),@:)
+if_changed_rule = $(if $(if-changed-cond),$(rule_$(1)),@:)
 
 ###
 # why - tell why a target got built
@@ -247,7 +258,7 @@ why =                                                                        \
         $(if $(wildcard $@),                                                 \
             $(if $(newer-prereqs),- due to: $(newer-prereqs),                \
                 $(if $(cmd-check),                                           \
-                    $(if $(cmd_$@),- due to command line change,             \
+                    $(if $(savedcmd_$@),- due to command line change,        \
                         $(if $(filter $@, $(targets)),                       \
                             - due to missing .cmd file,                      \
                             - due to $(notdir $@) not in $$(targets)         \
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 25347eee0108..6b67ad17634b 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -130,6 +130,10 @@ define rule_cc_o_c
 	$(call cmd_and_fixdep,cc_o_c)
 endef
 
+define rule_as_o_S
+	$(call cmd_and_fixdep,as_o_S)
+endef
+
 # Built-in and composite module parts
 
 %.pbl.o: %.c FORCE
@@ -168,10 +172,10 @@ quiet_cmd_as_o_S = AS $(quiet_modtag)  $@
 cmd_as_o_S       = $(CC) $(a_flags) -c -o $@ $<
 
 %.pbl.o: %.S FORCE
-	$(call if_changed_dep,as_o_S)
+	$(call if_changed_rule,as_o_S)
 
 %.o: %.S FORCE
-	$(call if_changed_dep,as_o_S)
+	$(call if_changed_rule,as_o_S)
 
 targets += $(filter-out $(subdir-obj-y), $(real-obj-y)) $(real-obj-m) $(lib-y)
 targets += $(pbl-y)
diff --git a/scripts/basic/Makefile b/scripts/basic/Makefile
index eeb6a38c5551..e48754e29924 100644
--- a/scripts/basic/Makefile
+++ b/scripts/basic/Makefile
@@ -3,3 +3,5 @@
 # fixdep: used to generate dependency information during build process
 
 hostprogs-always-y	+= fixdep
+
+KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
diff --git a/scripts/basic/fixdep.c b/scripts/basic/fixdep.c
index 44e887cff49b..cdd5da7e009b 100644
--- a/scripts/basic/fixdep.c
+++ b/scripts/basic/fixdep.c
@@ -70,7 +70,7 @@
  *
  * It first generates a line
  *
- *   cmd_<target> = <cmdline>
+ *   savedcmd_<target> = <cmdline>
  *
  * and then basically copies the .<target>.d file to stdout, in the
  * process filtering out the dependency on autoconf.h and adding
@@ -94,36 +94,19 @@
 #include <unistd.h>
 #include <fcntl.h>
 #include <string.h>
-#include <stdarg.h>
+#include <stdbool.h>
 #include <stdlib.h>
 #include <stdio.h>
 #include <ctype.h>
 
+#include <xalloc.h>
+
 static void usage(void)
 {
 	fprintf(stderr, "Usage: fixdep <depfile> <target> <cmdline>\n");
 	exit(1);
 }
 
-/*
- * In the intended usage of this program, the stdout is redirected to .*.cmd
- * files. The return value of printf() must be checked to catch any error,
- * e.g. "No space left on device".
- */
-static void xprintf(const char *format, ...)
-{
-	va_list ap;
-	int ret;
-
-	va_start(ap, format);
-	ret = vprintf(format, ap);
-	if (ret < 0) {
-		perror("fixdep");
-		exit(1);
-	}
-	va_end(ap);
-}
-
 struct item {
 	struct item	*next;
 	unsigned int	len;
@@ -132,7 +115,7 @@ struct item {
 };
 
 #define HASHSZ 256
-static struct item *hashtab[HASHSZ];
+static struct item *config_hashtab[HASHSZ], *file_hashtab[HASHSZ];
 
 static unsigned int strhash(const char *str, unsigned int sz)
 {
@@ -145,31 +128,14 @@ static unsigned int strhash(const char *str, unsigned int sz)
 }
 
 /*
- * Lookup a value in the configuration string.
+ * Add a new value to the configuration string.
  */
-static int is_defined_config(const char *name, int len, unsigned int hash)
+static void add_to_hashtable(const char *name, int len, unsigned int hash,
+			     struct item *hashtab[])
 {
 	struct item *aux;
 
-	for (aux = hashtab[hash % HASHSZ]; aux; aux = aux->next) {
-		if (aux->hash == hash && aux->len == len &&
-		    memcmp(aux->name, name, len) == 0)
-			return 1;
-	}
-	return 0;
-}
-
-/*
- * Add a new value to the configuration string.
- */
-static void define_config(const char *name, int len, unsigned int hash)
-{
-	struct item *aux = malloc(sizeof(*aux) + len);
-
-	if (!aux) {
-		perror("fixdep:malloc");
-		exit(1);
-	}
+	aux = xmalloc(sizeof(*aux) + len);
 	memcpy(aux->name, name, len);
 	aux->len = len;
 	aux->hash = hash;
@@ -177,19 +143,36 @@ static void define_config(const char *name, int len, unsigned int hash)
 	hashtab[hash % HASHSZ] = aux;
 }
 
+/*
+ * Lookup a string in the hash table. If found, just return true.
+ * If not, add it to the hashtable and return false.
+ */
+static bool in_hashtable(const char *name, int len, struct item *hashtab[])
+{
+	struct item *aux;
+	unsigned int hash = strhash(name, len);
+
+	for (aux = hashtab[hash % HASHSZ]; aux; aux = aux->next) {
+		if (aux->hash == hash && aux->len == len &&
+		    memcmp(aux->name, name, len) == 0)
+			return true;
+	}
+
+	add_to_hashtable(name, len, hash, hashtab);
+
+	return false;
+}
+
 /*
  * Record the use of a CONFIG_* word.
  */
 static void use_config(const char *m, int slen)
 {
-	unsigned int hash = strhash(m, slen);
+	if (in_hashtable(m, slen, config_hashtab))
+		return;
 
-	if (is_defined_config(m, slen, hash))
-	    return;
-
-	define_config(m, slen, hash);
 	/* Print out a dependency path from a symbol name. */
-	xprintf("    $(wildcard include/config/%.*s) \\\n", slen, m);
+	printf("    $(wildcard include/config/%.*s) \\\n", slen, m);
 }
 
 /* test if s ends in sub */
@@ -244,11 +227,7 @@ static void *read_file(const char *filename)
 		perror(filename);
 		exit(2);
 	}
-	buf = malloc(st.st_size + 1);
-	if (!buf) {
-		perror("fixdep: malloc");
-		exit(2);
-	}
+	buf = xmalloc(st.st_size + 1);
 	if (read(fd, buf, st.st_size) != st.st_size) {
 		perror("fixdep: read");
 		exit(2);
@@ -262,8 +241,16 @@ static void *read_file(const char *filename)
 /* Ignore certain dependencies */
 static int is_ignored_file(const char *s, int len)
 {
-	return str_ends_with(s, len, "include/generated/autoconf.h") ||
-	       str_ends_with(s, len, "include/generated/autoksyms.h");
+	return str_ends_with(s, len, "include/generated/autoconf.h");
+}
+
+/* Do not parse these files */
+static int is_no_parse_file(const char *s, int len)
+{
+	/* rustc may list binary files in dep-info */
+	return str_ends_with(s, len, ".rlib") ||
+	       str_ends_with(s, len, ".rmeta") ||
+	       str_ends_with(s, len, ".so");
 }
 
 /*
@@ -271,75 +258,144 @@ static int is_ignored_file(const char *s, int len)
  * assignments are parsed not only by make, but also by the rather simple
  * parser in scripts/mod/sumversion.c.
  */
-static void parse_dep_file(char *m, const char *target)
+static void parse_dep_file(char *p, const char *target)
 {
-	char *p;
-	int is_last, is_target;
-	int saw_any_target = 0;
-	int is_first_dep = 0;
-	void *buf;
-
-	while (1) {
-		/* Skip any "white space" */
-		while (*m == ' ' || *m == '\\' || *m == '\n')
-			m++;
-
-		if (!*m)
-			break;
-
-		/* Find next "white space" */
-		p = m;
-		while (*p && *p != ' ' && *p != '\\' && *p != '\n')
-			p++;
-		is_last = (*p == '\0');
-		/* Is the token we found a target name? */
-		is_target = (*(p-1) == ':');
-		/* Don't write any target names into the dependency file */
-		if (is_target) {
-			/* The /next/ file is the first dependency */
-			is_first_dep = 1;
-		} else if (!is_ignored_file(m, p - m)) {
-			*p = '\0';
+	bool saw_any_target = false;
+	bool is_target = true;
+	bool is_source = false;
+	bool need_parse;
+	char *q, saved_c;
 
+	while (*p) {
+		/* handle some special characters first. */
+		switch (*p) {
+		case '#':
 			/*
-			 * Do not list the source file as dependency, so that
-			 * kbuild is not confused if a .c file is rewritten
-			 * into .S or vice versa. Storing it in source_* is
-			 * needed for modpost to compute srcversions.
+			 * skip comments.
+			 * rustc may emit comments to dep-info.
 			 */
-			if (is_first_dep) {
+			p++;
+			while (*p != '\0' && *p != '\n') {
 				/*
-				 * If processing the concatenation of multiple
-				 * dependency files, only process the first
-				 * target name, which will be the original
-				 * source name, and ignore any other target
-				 * names, which will be intermediate temporary
-				 * files.
+				 * escaped newlines continue the comment across
+				 * multiple lines.
 				 */
-				if (!saw_any_target) {
-					saw_any_target = 1;
-					xprintf("source_%s := %s\n\n",
-						target, m);
-					xprintf("deps_%s := \\\n", target);
+				if (*p == '\\')
+					p++;
+				p++;
+			}
+			continue;
+		case ' ':
+		case '\t':
+			/* skip whitespaces */
+			p++;
+			continue;
+		case '\\':
+			/*
+			 * backslash/newline combinations continue the
+			 * statement. Skip it just like a whitespace.
+			 */
+			if (*(p + 1) == '\n') {
+				p += 2;
+				continue;
+			}
+			break;
+		case '\n':
+			/*
+			 * Makefiles use a line-based syntax, where the newline
+			 * is the end of a statement. After seeing a newline,
+			 * we expect the next token is a target.
+			 */
+			p++;
+			is_target = true;
+			continue;
+		case ':':
+			/*
+			 * assume the first dependency after a colon as the
+			 * source file.
+			 */
+			p++;
+			is_target = false;
+			is_source = true;
+			continue;
+		}
+
+		/* find the end of the token */
+		q = p;
+		while (*q != ' ' && *q != '\t' && *q != '\n' && *q != '#' && *q != ':') {
+			if (*q == '\\') {
+				/*
+				 * backslash/newline combinations work like as
+				 * a whitespace, so this is the end of token.
+				 */
+				if (*(q + 1) == '\n')
+					break;
+
+				/* escaped special characters */
+				if (*(q + 1) == '#' || *(q + 1) == ':') {
+					memmove(p + 1, p, q - p);
+					p++;
 				}
-				is_first_dep = 0;
-			} else {
-				xprintf("  %s \\\n", m);
+
+				q++;
 			}
 
-			buf = read_file(m);
+			if (*q == '\0')
+				break;
+			q++;
+		}
+
+		/* Just discard the target */
+		if (is_target) {
+			p = q;
+			continue;
+		}
+
+		saved_c = *q;
+		*q = '\0';
+		need_parse = false;
+
+		/*
+		 * Do not list the source file as dependency, so that kbuild is
+		 * not confused if a .c file is rewritten into .S or vice versa.
+		 * Storing it in source_* is needed for modpost to compute
+		 * srcversions.
+		 */
+		if (is_source) {
+			/*
+			 * The DT build rule concatenates multiple dep files.
+			 * When processing them, only process the first source
+			 * name, which will be the original one, and ignore any
+			 * other source names, which will be intermediate
+			 * temporary files.
+			 *
+			 * rustc emits the same dependency list for each
+			 * emission type. It is enough to list the source name
+			 * just once.
+			 */
+			if (!saw_any_target) {
+				saw_any_target = true;
+				printf("source_%s := %s\n\n", target, p);
+				printf("deps_%s := \\\n", target);
+				need_parse = true;
+			}
+		} else if (!is_ignored_file(p, q - p) &&
+			   !in_hashtable(p, q - p, file_hashtab)) {
+			printf("  %s \\\n", p);
+			need_parse = true;
+		}
+
+		if (need_parse && !is_no_parse_file(p, q - p)) {
+			void *buf;
+
+			buf = read_file(p);
 			parse_config_file(buf);
 			free(buf);
 		}
 
-		if (is_last)
-			break;
-
-		/*
-		 * Start searching for next token immediately after the first
-		 * "whitespace" character that follows this token.
-		 */
-		m = p + 1;
+		is_source = false;
+		*q = saved_c;
+		p = q;
 	}
 
 	if (!saw_any_target) {
@@ -347,8 +403,8 @@ static void parse_dep_file(char *m, const char *target)
 		exit(1);
 	}
 
-	xprintf("\n%s: $(deps_%s)\n\n", target, target);
-	xprintf("$(deps_%s):\n", target);
+	printf("\n%s: $(deps_%s)\n\n", target, target);
+	printf("$(deps_%s):\n", target);
 }
 
 int main(int argc, char *argv[])
@@ -363,11 +419,22 @@ int main(int argc, char *argv[])
 	target = argv[2];
 	cmdline = argv[3];
 
-	xprintf("cmd_%s := %s\n\n", target, cmdline);
+	printf("savedcmd_%s := %s\n\n", target, cmdline);
 
 	buf = read_file(depfile);
 	parse_dep_file(buf, target);
 	free(buf);
 
+	fflush(stdout);
+
+	/*
+	 * In the intended usage, the stdout is redirected to .*.cmd files.
+	 * Call ferror() to catch errors such as "No space left on device".
+	 */
+	if (ferror(stdout)) {
+		fprintf(stderr, "fixdep: not all data was written to the output\n");
+		exit(1);
+	}
+
 	return 0;
 }
diff --git a/scripts/compiler.h b/scripts/compiler.h
index 925cad21b6cf..d8d0e1b906df 100644
--- a/scripts/compiler.h
+++ b/scripts/compiler.h
@@ -6,6 +6,7 @@
 #define __COMPILER_H__
 
 #include <stddef.h>
+#include <xalloc.h>
 
 #if defined(__BEOS__)	 || \
     defined(__NetBSD__)  || \
@@ -167,23 +168,4 @@ typedef uint32_t __u32;
 	_min1 < _min2 ? _min1 : _min2; })
 #endif
 
-static inline void *xmalloc(size_t size)
-{
-	void *p = NULL;
-
-	if (!(p = malloc(size))) {
-		printf("ERROR: out of memory\n");
-		exit(1);
-	}
-
-	return p;
-}
-
-static inline void *xzalloc(size_t size)
-{
-	void *p = xmalloc(size);
-	memset(p, 0, size);
-	return p;
-}
-
 #endif
diff --git a/scripts/include/xalloc.h b/scripts/include/xalloc.h
new file mode 100644
index 000000000000..597d81ee2f6f
--- /dev/null
+++ b/scripts/include/xalloc.h
@@ -0,0 +1,34 @@
+/*
+ * Keep all the ugly #ifdef for system stuff here
+ */
+
+#ifndef __XALLOC_H__
+#define __XALLOC_H__
+
+#include <stddef.h>
+#include <stdlib.h>
+#include <stdio.h>
+#include <string.h>
+
+__attribute__ ((__returns_nonnull__))
+static inline void *xmalloc(size_t size)
+{
+	void *p = NULL;
+
+	if (!(p = malloc(size))) {
+		printf("ERROR: out of memory\n");
+		exit(1);
+	}
+
+	return p;
+}
+
+__attribute__ ((__returns_nonnull__))
+static inline void *xzalloc(size_t size)
+{
+	void *p = xmalloc(size);
+	memset(p, 0, size);
+	return p;
+}
+
+#endif
diff --git a/scripts/mod/sumversion.c b/scripts/mod/sumversion.c
index b5f1824a6934..20b6ee2aefe6 100644
--- a/scripts/mod/sumversion.c
+++ b/scripts/mod/sumversion.c
@@ -287,8 +287,8 @@ static int parse_file(const char *fname, struct md4_ctx *md)
 	return 1;
 }
 
-/* We have dir/file.o.  Open dir/.file.o.cmd, look for deps_ line to
- * figure out source file. */
+/* We have dir/file.o.  Open dir/.file.o.cmd, look for source_ and deps_ line
+ * to figure out source file. */
 static int parse_source_files(const char *objfile, struct md4_ctx *md)
 {
 	char *cmd, *file, *line, *dir;
@@ -329,6 +329,21 @@ static int parse_source_files(const char *objfile, struct md4_ctx *md)
 	*/
 	while ((line = get_next_line(&pos, file, flen)) != NULL) {
 		char* p = line;
+
+		if (strncmp(line, "source_", sizeof("source_")-1) == 0) {
+			p = strrchr(line, ' ');
+			if (!p) {
+				warn("malformed line: %s\n", line);
+				goto out_file;
+			}
+			p++;
+			if (!parse_file(p, md)) {
+				warn("could not open %s: %s\n",
+				     p, strerror(errno));
+				goto out_file;
+			}
+			continue;
+		}
 		if (strncmp(line, "deps_", sizeof("deps_")-1) == 0) {
 			check_files = 1;
 			continue;
-- 
2.39.5



