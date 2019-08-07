Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOTF-0006kK-KJ
 for barebox@lists.infradead.org; Wed, 07 Aug 2019 16:07:28 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu,  8 Aug 2019 01:06:48 +0900
Message-Id: <20190807160648.536-1-yamada.masahiro@socionext.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] kconfig: update to Linux 5.3-rc3
To: barebox@lists.infradead.org

Recently, Linux merged some important fixes.

Commit 8e2442a5f86e ("kconfig: fix missing choice values in auto.conf")
Commit 0c5b6c28ed68 ("kconfig: Clear "written" flag to avoid data loss")

Barebox must import them.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---
 scripts/kconfig/Makefile                      | 10 +++---
 scripts/kconfig/conf.c                        | 10 +++---
 scripts/kconfig/confdata.c                    | 36 ++++++-------------
 scripts/kconfig/expr.h                        |  1 +
 scripts/kconfig/lkc.h                         |  1 -
 scripts/kconfig/lkc_proto.h                   |  3 +-
 scripts/kconfig/mconf.c                       | 10 +++---
 scripts/kconfig/nconf.c                       | 10 +++---
 scripts/kconfig/preprocess.c                  |  3 +-
 scripts/kconfig/qconf.cc                      |  2 +-
 scripts/kconfig/symbol.c                      |  4 +--
 .../tests/err_recursive_dep/expected_stderr   | 14 ++++----
 12 files changed, 44 insertions(+), 60 deletions(-)

diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index 3f327e21f6..7656e1137b 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -12,6 +12,10 @@ else
 Kconfig := Kconfig
 endif
 
+ifndef KBUILD_DEFCONFIG
+KBUILD_DEFCONFIG := defconfig
+endif
+
 ifeq ($(quiet),silent_)
 silent := -s
 endif
@@ -74,9 +78,7 @@ savedefconfig: $(obj)/conf
 	$< $(silent) --$@=defconfig $(Kconfig)
 
 defconfig: $(obj)/conf
-ifeq ($(KBUILD_DEFCONFIG),)
-	$< $(silent) --defconfig $(Kconfig)
-else ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)),)
+ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)),)
 	@$(kecho) "*** Default configuration is based on '$(KBUILD_DEFCONFIG)'"
 	$(Q)$< $(silent) --defconfig=arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG) $(Kconfig)
 else
@@ -92,7 +94,7 @@ configfiles=$(wildcard $(srctree)/kernel/configs/$@ $(srctree)/arch/$(SRCARCH)/c
 %.config: $(obj)/conf
 	$(if $(call configfiles),, $(error No configuration exists for this target on this architecture))
 	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh -m .config $(configfiles)
-	+$(Q)yes "" | $(MAKE) -f $(srctree)/Makefile oldconfig
+	$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
 
 PHONY += kvmconfig
 kvmconfig: kvm_guest.config
diff --git a/scripts/kconfig/conf.c b/scripts/kconfig/conf.c
index ef3678c24b..40e16e871a 100644
--- a/scripts/kconfig/conf.c
+++ b/scripts/kconfig/conf.c
@@ -90,7 +90,7 @@ static int conf_askvalue(struct symbol *sym, const char *def)
 	line[0] = '\n';
 	line[1] = 0;
 
-	if (!sym_is_changable(sym)) {
+	if (!sym_is_changeable(sym)) {
 		printf("%s\n", def);
 		line[0] = '\n';
 		line[1] = 0;
@@ -234,7 +234,7 @@ static int conf_choice(struct menu *menu)
 
 	sym = menu->sym;
 	is_new = !sym_has_value(sym);
-	if (sym_is_changable(sym)) {
+	if (sym_is_changeable(sym)) {
 		conf_sym(menu);
 		sym_calc_value(sym);
 		switch (sym_get_tristate_value(sym)) {
@@ -418,7 +418,7 @@ static void check_conf(struct menu *menu)
 
 	sym = menu->sym;
 	if (sym && !sym_has_value(sym)) {
-		if (sym_is_changable(sym) ||
+		if (sym_is_changeable(sym) ||
 		    (sym_is_choice(sym) && sym_get_tristate_value(sym) == yes)) {
 			if (input_mode == listnewconfig) {
 				if (sym->name) {
@@ -451,7 +451,7 @@ static struct option long_opts[] = {
 	{"oldaskconfig",    no_argument,       NULL, oldaskconfig},
 	{"oldconfig",       no_argument,       NULL, oldconfig},
 	{"syncconfig",      no_argument,       NULL, syncconfig},
-	{"defconfig",       optional_argument, NULL, defconfig},
+	{"defconfig",       required_argument, NULL, defconfig},
 	{"savedefconfig",   required_argument, NULL, savedefconfig},
 	{"allnoconfig",     no_argument,       NULL, allnoconfig},
 	{"allyesconfig",    no_argument,       NULL, allyesconfig},
@@ -562,8 +562,6 @@ int main(int ac, char **av)
 
 	switch (input_mode) {
 	case defconfig:
-		if (!defconfig_file)
-			defconfig_file = conf_get_default_confname();
 		if (conf_read(defconfig_file)) {
 			fprintf(stderr,
 				"***\n"
diff --git a/scripts/kconfig/confdata.c b/scripts/kconfig/confdata.c
index 6006154d36..3569d2dec3 100644
--- a/scripts/kconfig/confdata.c
+++ b/scripts/kconfig/confdata.c
@@ -177,8 +177,6 @@ static void conf_message(const char *fmt, ...)
 static const char *conf_filename;
 static int conf_lineno, conf_warnings;
 
-const char conf_defname[] = "arch/$(ARCH)/defconfig";
-
 static void conf_warning(const char *fmt, ...)
 {
 	va_list ap;
@@ -233,21 +231,6 @@ static const char *conf_get_autoconfig_name(void)
 	return name ? name : "include/config/auto.conf";
 }
 
-char *conf_get_default_confname(void)
-{
-	static char fullname[PATH_MAX+1];
-	char *env, *name;
-
-	name = expand_string(conf_defname);
-	env = getenv(SRCTREE);
-	if (env) {
-		snprintf(fullname, sizeof(fullname), "%s/%s", env, name);
-		if (is_present(fullname))
-			return fullname;
-	}
-	return name;
-}
-
 static int conf_set_sym_val(struct symbol *sym, int def, int def_flags, char *p)
 {
 	char *p2;
@@ -551,11 +534,9 @@ int conf_read(const char *name)
 			switch (sym->type) {
 			case S_BOOLEAN:
 			case S_TRISTATE:
-				if (sym->def[S_DEF_USER].tri != sym_get_tristate_value(sym))
-					break;
-				if (!sym_is_choice(sym))
+				if (sym->def[S_DEF_USER].tri == sym_get_tristate_value(sym))
 					continue;
-				/* fall through */
+				break;
 			default:
 				if (!strcmp(sym->curr.val, sym->def[S_DEF_USER].val))
 					continue;
@@ -813,7 +794,7 @@ int conf_write_defconfig(const char *filename)
 				goto next_menu;
 			sym->flags &= ~SYMBOL_WRITE;
 			/* If we cannot change the symbol - skip */
-			if (!sym_is_changable(sym))
+			if (!sym_is_changeable(sym))
 				goto next_menu;
 			/* If symbol equals to default value - skip */
 			if (strcmp(sym_get_string_value(sym), sym_get_string_default(sym)) == 0)
@@ -867,6 +848,7 @@ int conf_write(const char *name)
 	const char *str;
 	char tmpname[PATH_MAX + 1], oldname[PATH_MAX + 1];
 	char *env;
+	int i;
 	bool need_newline = false;
 
 	if (!name)
@@ -914,7 +896,8 @@ int conf_write(const char *name)
 				     "# %s\n"
 				     "#\n", str);
 			need_newline = false;
-		} else if (!(sym->flags & SYMBOL_CHOICE)) {
+		} else if (!(sym->flags & SYMBOL_CHOICE) &&
+			   !(sym->flags & SYMBOL_WRITTEN)) {
 			sym_calc_value(sym);
 			if (!(sym->flags & SYMBOL_WRITE))
 				goto next;
@@ -922,7 +905,7 @@ int conf_write(const char *name)
 				fprintf(out, "\n");
 				need_newline = false;
 			}
-			sym->flags &= ~SYMBOL_WRITE;
+			sym->flags |= SYMBOL_WRITTEN;
 			conf_write_symbol(out, sym, &kconfig_printer_cb, NULL);
 		}
 
@@ -948,6 +931,9 @@ next:
 	}
 	fclose(out);
 
+	for_all_symbols(i, sym)
+		sym->flags &= ~SYMBOL_WRITTEN;
+
 	if (*tmpname) {
 		if (is_same(name, tmpname)) {
 			conf_message("No change to %s", name);
@@ -1082,8 +1068,6 @@ int conf_write_autoconf(int overwrite)
 	if (!overwrite && is_present(autoconf_name))
 		return 0;
 
-	sym_clear_all_valid();
-
 	conf_write_dep("include/config/auto.conf.cmd");
 
 	if (conf_touch_deps())
diff --git a/scripts/kconfig/expr.h b/scripts/kconfig/expr.h
index 8dde65bc31..017843c9a4 100644
--- a/scripts/kconfig/expr.h
+++ b/scripts/kconfig/expr.h
@@ -141,6 +141,7 @@ struct symbol {
 #define SYMBOL_OPTIONAL   0x0100  /* choice is optional - values can be 'n' */
 #define SYMBOL_WRITE      0x0200  /* write symbol to file (KCONFIG_CONFIG) */
 #define SYMBOL_CHANGED    0x0400  /* ? */
+#define SYMBOL_WRITTEN    0x0800  /* track info to avoid double-write to .config */
 #define SYMBOL_NO_WRITE   0x1000  /* Symbol for internal use only; it will not be written */
 #define SYMBOL_CHECKED    0x2000  /* used during dependency checking */
 #define SYMBOL_WARNED     0x8000  /* warning has been issued */
diff --git a/scripts/kconfig/lkc.h b/scripts/kconfig/lkc.h
index cbc7658ee2..4fb16f3166 100644
--- a/scripts/kconfig/lkc.h
+++ b/scripts/kconfig/lkc.h
@@ -49,7 +49,6 @@ const char *zconf_curname(void);
 
 /* confdata.c */
 const char *conf_get_configname(void);
-char *conf_get_default_confname(void);
 void sym_set_change_count(int count);
 void sym_add_change_count(int count);
 bool conf_set_all_new_symbols(enum conf_def_mode mode);
diff --git a/scripts/kconfig/lkc_proto.h b/scripts/kconfig/lkc_proto.h
index 86c267540c..f9ab98238a 100644
--- a/scripts/kconfig/lkc_proto.h
+++ b/scripts/kconfig/lkc_proto.h
@@ -42,7 +42,7 @@ tristate sym_toggle_tristate_value(struct symbol *sym);
 bool sym_string_valid(struct symbol *sym, const char *newval);
 bool sym_string_within_range(struct symbol *sym, const char *str);
 bool sym_set_string_value(struct symbol *sym, const char *newval);
-bool sym_is_changable(struct symbol *sym);
+bool sym_is_changeable(struct symbol *sym);
 struct property * sym_get_choice_prop(struct symbol *sym);
 const char * sym_get_string_value(struct symbol *sym);
 
@@ -58,7 +58,6 @@ void env_write_dep(FILE *f, const char *auto_conf_name);
 void variable_add(const char *name, const char *value,
 		  enum variable_flavor flavor);
 void variable_all_del(void);
-char *expand_string(const char *in);
 char *expand_dollar(const char **str);
 char *expand_one_token(const char **str);
 
diff --git a/scripts/kconfig/mconf.c b/scripts/kconfig/mconf.c
index 694091f3ef..49c26ea9dd 100644
--- a/scripts/kconfig/mconf.c
+++ b/scripts/kconfig/mconf.c
@@ -536,7 +536,7 @@ static void build_conf(struct menu *menu)
 		}
 
 		val = sym_get_tristate_value(sym);
-		if (sym_is_changable(sym)) {
+		if (sym_is_changeable(sym)) {
 			switch (type) {
 			case S_BOOLEAN:
 				item_make("[%c]", val == no ? ' ' : '*');
@@ -587,7 +587,7 @@ static void build_conf(struct menu *menu)
 		} else {
 			switch (type) {
 			case S_BOOLEAN:
-				if (sym_is_changable(sym))
+				if (sym_is_changeable(sym))
 					item_make("[%c]", val == no ? ' ' : '*');
 				else
 					item_make("-%c-", val == no ? ' ' : '*');
@@ -600,7 +600,7 @@ static void build_conf(struct menu *menu)
 				case mod: ch = 'M'; break;
 				default:  ch = ' '; break;
 				}
-				if (sym_is_changable(sym)) {
+				if (sym_is_changeable(sym)) {
 					if (sym->rev_dep.tri == mod)
 						item_make("{%c}", ch);
 					else
@@ -617,7 +617,7 @@ static void build_conf(struct menu *menu)
 				if (tmp < 0)
 					tmp = 0;
 				item_add_str("%*c%s%s", tmp, ' ', menu_get_prompt(menu),
-					     (sym_has_value(sym) || !sym_is_changable(sym)) ?
+					     (sym_has_value(sym) || !sym_is_changeable(sym)) ?
 					     "" : " (NEW)");
 				item_set_tag('s');
 				item_set_data(menu);
@@ -625,7 +625,7 @@ static void build_conf(struct menu *menu)
 			}
 		}
 		item_add_str("%*c%s%s", indent + 1, ' ', menu_get_prompt(menu),
-			  (sym_has_value(sym) || !sym_is_changable(sym)) ?
+			  (sym_has_value(sym) || !sym_is_changeable(sym)) ?
 			  "" : " (NEW)");
 		if (menu->prompt->type == P_MENU) {
 			item_add_str("  %s", menu_is_empty(menu) ? "----" : "--->");
diff --git a/scripts/kconfig/nconf.c b/scripts/kconfig/nconf.c
index cbafe3bf08..b7c1ef7571 100644
--- a/scripts/kconfig/nconf.c
+++ b/scripts/kconfig/nconf.c
@@ -803,7 +803,7 @@ static void build_conf(struct menu *menu)
 		}
 
 		val = sym_get_tristate_value(sym);
-		if (sym_is_changable(sym)) {
+		if (sym_is_changeable(sym)) {
 			switch (type) {
 			case S_BOOLEAN:
 				item_make(menu, 't', "[%c]",
@@ -857,7 +857,7 @@ static void build_conf(struct menu *menu)
 		} else {
 			switch (type) {
 			case S_BOOLEAN:
-				if (sym_is_changable(sym))
+				if (sym_is_changeable(sym))
 					item_make(menu, 't', "[%c]",
 						val == no ? ' ' : '*');
 				else
@@ -876,7 +876,7 @@ static void build_conf(struct menu *menu)
 					ch = ' ';
 					break;
 				}
-				if (sym_is_changable(sym)) {
+				if (sym_is_changeable(sym)) {
 					if (sym->rev_dep.tri == mod)
 						item_make(menu,
 							't', "{%c}", ch);
@@ -896,14 +896,14 @@ static void build_conf(struct menu *menu)
 				item_add_str("%*c%s%s", tmp, ' ',
 						menu_get_prompt(menu),
 						(sym_has_value(sym) ||
-						 !sym_is_changable(sym)) ? "" :
+						 !sym_is_changeable(sym)) ? "" :
 						" (NEW)");
 				goto conf_childs;
 			}
 		}
 		item_add_str("%*c%s%s", indent + 1, ' ',
 				menu_get_prompt(menu),
-				(sym_has_value(sym) || !sym_is_changable(sym)) ?
+				(sym_has_value(sym) || !sym_is_changeable(sym)) ?
 				"" : " (NEW)");
 		if (menu->prompt && menu->prompt->type == P_MENU) {
 			item_add_str("  %s", menu_is_empty(menu) ? "----" : "--->");
diff --git a/scripts/kconfig/preprocess.c b/scripts/kconfig/preprocess.c
index 592dfbfa9f..0243086fb1 100644
--- a/scripts/kconfig/preprocess.c
+++ b/scripts/kconfig/preprocess.c
@@ -15,6 +15,7 @@
 #define ARRAY_SIZE(arr)		(sizeof(arr) / sizeof((arr)[0]))
 
 static char *expand_string_with_args(const char *in, int argc, char *argv[]);
+static char *expand_string(const char *in);
 
 static void __attribute__((noreturn)) pperror(const char *format, ...)
 {
@@ -550,7 +551,7 @@ static char *expand_string_with_args(const char *in, int argc, char *argv[])
 	return __expand_string(&in, is_end_of_str, argc, argv);
 }
 
-char *expand_string(const char *in)
+static char *expand_string(const char *in)
 {
 	return expand_string_with_args(in, 0, NULL);
 }
diff --git a/scripts/kconfig/qconf.cc b/scripts/kconfig/qconf.cc
index ce7fc87a49..82773cc35d 100644
--- a/scripts/kconfig/qconf.cc
+++ b/scripts/kconfig/qconf.cc
@@ -152,7 +152,7 @@ void ConfigItem::updateMenu(void)
 	case S_TRISTATE:
 		char ch;
 
-		if (!sym_is_changable(sym) && list->optMode == normalOpt) {
+		if (!sym_is_changeable(sym) && list->optMode == normalOpt) {
 			setPixmap(promptColIdx, QIcon());
 			setText(noColIdx, QString::null);
 			setText(modColIdx, QString::null);
diff --git a/scripts/kconfig/symbol.c b/scripts/kconfig/symbol.c
index 1f9266dade..f56eec5ea4 100644
--- a/scripts/kconfig/symbol.c
+++ b/scripts/kconfig/symbol.c
@@ -785,7 +785,7 @@ const char *sym_get_string_value(struct symbol *sym)
 	return (const char *)sym->curr.val;
 }
 
-bool sym_is_changable(struct symbol *sym)
+bool sym_is_changeable(struct symbol *sym)
 {
 	return sym->visible > sym->rev_dep.tri;
 }
@@ -1114,7 +1114,7 @@ static void sym_check_print_recursive(struct symbol *last_sym)
 	}
 
 	fprintf(stderr,
-		"For a resolution refer to Documentation/kbuild/kconfig-language.txt\n"
+		"For a resolution refer to Documentation/kbuild/kconfig-language.rst\n"
 		"subsection \"Kconfig recursive dependency limitations\"\n"
 		"\n");
 
diff --git a/scripts/kconfig/tests/err_recursive_dep/expected_stderr b/scripts/kconfig/tests/err_recursive_dep/expected_stderr
index 84679b1046..c9f4abf9a7 100644
--- a/scripts/kconfig/tests/err_recursive_dep/expected_stderr
+++ b/scripts/kconfig/tests/err_recursive_dep/expected_stderr
@@ -1,38 +1,38 @@
 Kconfig:11:error: recursive dependency detected!
 Kconfig:11:	symbol B is selected by B
-For a resolution refer to Documentation/kbuild/kconfig-language.txt
+For a resolution refer to Documentation/kbuild/kconfig-language.rst
 subsection "Kconfig recursive dependency limitations"
 
 Kconfig:5:error: recursive dependency detected!
 Kconfig:5:	symbol A depends on A
-For a resolution refer to Documentation/kbuild/kconfig-language.txt
+For a resolution refer to Documentation/kbuild/kconfig-language.rst
 subsection "Kconfig recursive dependency limitations"
 
 Kconfig:17:error: recursive dependency detected!
 Kconfig:17:	symbol C1 depends on C2
 Kconfig:21:	symbol C2 depends on C1
-For a resolution refer to Documentation/kbuild/kconfig-language.txt
+For a resolution refer to Documentation/kbuild/kconfig-language.rst
 subsection "Kconfig recursive dependency limitations"
 
 Kconfig:32:error: recursive dependency detected!
 Kconfig:32:	symbol D2 is selected by D1
 Kconfig:27:	symbol D1 depends on D2
-For a resolution refer to Documentation/kbuild/kconfig-language.txt
+For a resolution refer to Documentation/kbuild/kconfig-language.rst
 subsection "Kconfig recursive dependency limitations"
 
 Kconfig:37:error: recursive dependency detected!
 Kconfig:37:	symbol E1 depends on E2
 Kconfig:42:	symbol E2 is implied by E1
-For a resolution refer to Documentation/kbuild/kconfig-language.txt
+For a resolution refer to Documentation/kbuild/kconfig-language.rst
 subsection "Kconfig recursive dependency limitations"
 
 Kconfig:60:error: recursive dependency detected!
 Kconfig:60:	symbol G depends on G
-For a resolution refer to Documentation/kbuild/kconfig-language.txt
+For a resolution refer to Documentation/kbuild/kconfig-language.rst
 subsection "Kconfig recursive dependency limitations"
 
 Kconfig:51:error: recursive dependency detected!
 Kconfig:51:	symbol F2 depends on F1
 Kconfig:49:	symbol F1 default value contains F2
-For a resolution refer to Documentation/kbuild/kconfig-language.txt
+For a resolution refer to Documentation/kbuild/kconfig-language.rst
 subsection "Kconfig recursive dependency limitations"
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
