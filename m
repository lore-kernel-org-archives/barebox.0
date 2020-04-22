Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR98u-0007Mv-Jb
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 06:46:00 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 22 Apr 2020 15:45:18 +0900
Message-Id: <20200422064519.1586324-1-masahiroy@kernel.org>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] kconfig: update to Linux 5.7-rc2
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

The previous sync was Linux 5.5. This updates Kconfig to Linux 5.7-rc2.

Highlights:

 - add yes2modconfig and mod2yesconfig, which are useful for coping with
   syzbot configs in Linux

 - remove include/config/tristate.conf

 - show more precise help

 - fix various issues of 'make xconfig'

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile                             |   6 +-
 scripts/kconfig/.gitignore           |   4 +-
 scripts/kconfig/Makefile             |  38 +++---
 scripts/kconfig/conf.c               |  16 +++
 scripts/kconfig/confdata.c           |  62 +++------
 scripts/kconfig/expr.c               |   3 +-
 scripts/kconfig/expr.h               |   2 +-
 scripts/kconfig/gconf.c              |   1 +
 scripts/kconfig/lkc.h                |   4 +-
 scripts/kconfig/mconf.c              |   1 +
 scripts/kconfig/menu.c               | 185 ++++++++++++++++-----------
 scripts/kconfig/nconf.c              |   1 +
 scripts/kconfig/parser.y             |  21 ++-
 scripts/kconfig/qconf.cc             |  92 +++++++++----
 scripts/kconfig/qconf.h              |   2 +
 scripts/kconfig/streamline_config.pl |   4 +-
 scripts/kconfig/symbol.c             |  31 +----
 17 files changed, 253 insertions(+), 220 deletions(-)

diff --git a/Makefile b/Makefile
index 6fc822da4..626318624 100644
--- a/Makefile
+++ b/Makefile
@@ -176,6 +176,9 @@ SRCARCH 	:= $(ARCH)
 
 KCONFIG_CONFIG	?= .config
 
+# Default file for 'make defconfig'. This may be overridden by arch-Makefile.
+export KBUILD_DEFCONFIG := defconfig
+
 # SHELL used by kbuild
 CONFIG_SHELL := $(shell if [ -x "$$BASH" ]; then echo $$BASH; \
 	  else if [ -x /bin/bash ]; then echo /bin/bash; \
@@ -468,7 +471,8 @@ $(KCONFIG_CONFIG):
 #
 # This exploits the 'multi-target pattern rule' trick.
 # The syncconfig should be executed only once to make all the targets.
-%/auto.conf %/auto.conf.cmd %/tristate.conf: $(KCONFIG_CONFIG)
+# (Note: use the grouped target '&:' when we bump to GNU Make 4.3)
+%/auto.conf %/auto.conf.cmd: $(KCONFIG_CONFIG)
 	$(Q)$(MAKE) -f $(srctree)/Makefile syncconfig
 endif # $(dot-config)
 
diff --git a/scripts/kconfig/.gitignore b/scripts/kconfig/.gitignore
index b5bf92f66..12a67fdab 100644
--- a/scripts/kconfig/.gitignore
+++ b/scripts/kconfig/.gitignore
@@ -1,6 +1,4 @@
-#
-# Generated files
-#
+# SPDX-License-Identifier: GPL-2.0-only
 *.moc
 *conf-cfg
 
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index 2f1a59fa5..c9d0a4a8e 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -12,10 +12,6 @@ else
 Kconfig := Kconfig
 endif
 
-ifndef KBUILD_DEFCONFIG
-KBUILD_DEFCONFIG := defconfig
-endif
-
 ifeq ($(quiet),silent_)
 silent := -s
 endif
@@ -47,16 +43,16 @@ build_gconfig: $(obj)/gconf
 build_xconfig: $(obj)/qconf
 
 localyesconfig localmodconfig: $(obj)/conf
-	$(Q)perl $(srctree)/$(src)/streamline_config.pl --$@ $(srctree) $(Kconfig) > .tmp.config
-	$(Q)if [ -f .config ]; then 					\
-			cmp -s .tmp.config .config ||			\
-			(mv -f .config .config.old.1;			\
-			 mv -f .tmp.config .config;			\
-			 $< $(silent) --oldconfig $(Kconfig);		\
-			 mv -f .config.old.1 .config.old)		\
-	else								\
-			mv -f .tmp.config .config;			\
-			$< $(silent) --oldconfig $(Kconfig);		\
+	$(Q)$(PERL) $(srctree)/$(src)/streamline_config.pl --$@ $(srctree) $(Kconfig) > .tmp.config
+	$(Q)if [ -f .config ]; then 				\
+		cmp -s .tmp.config .config ||			\
+		(mv -f .config .config.old.1;			\
+		 mv -f .tmp.config .config;			\
+		 $< $(silent) --oldconfig $(Kconfig);		\
+		 mv -f .config.old.1 .config.old)		\
+	else							\
+		mv -f .tmp.config .config;			\
+		$< $(silent) --oldconfig $(Kconfig);		\
 	fi
 	$(Q)rm -f .tmp.config
 
@@ -67,7 +63,7 @@ localyesconfig localmodconfig: $(obj)/conf
 #  deprecated for external use
 simple-targets := oldconfig allnoconfig allyesconfig allmodconfig \
 	alldefconfig randconfig listnewconfig olddefconfig syncconfig \
-	helpnewconfig
+	helpnewconfig yes2modconfig mod2yesconfig
 
 PHONY += $(simple-targets)
 
@@ -135,6 +131,8 @@ help:
 	@echo  '  allmodconfig	  - New config selecting modules when possible'
 	@echo  '  alldefconfig    - New config with all symbols set to default'
 	@echo  '  randconfig	  - New config with random answer to all options'
+	@echo  '  yes2modconfig	  - Change answers from yes to mod if possible'
+	@echo  '  mod2yesconfig	  - Change answers from mod to yes if possible'
 	@echo  '  listnewconfig   - List new options'
 	@echo  '  helpnewconfig   - List new options and help text'
 	@echo  '  olddefconfig	  - Same as oldconfig but sets new symbols to their'
@@ -155,11 +153,11 @@ HOSTCFLAGS_lexer.lex.o	:= -I $(srctree)/$(src)
 HOSTCFLAGS_parser.tab.o	:= -I $(srctree)/$(src)
 
 # conf: Used for defconfig, oldconfig and related targets
-hostprogs-y	+= conf
+hostprogs	+= conf
 conf-objs	:= conf.o $(common-objs)
 
 # nconf: Used for the nconfig target based on ncurses
-hostprogs-y	+= nconf
+hostprogs	+= nconf
 nconf-objs	:= nconf.o nconf.gui.o $(common-objs)
 
 HOSTLDLIBS_nconf	= $(shell . $(obj)/nconf-cfg && echo $$libs)
@@ -169,7 +167,7 @@ HOSTCFLAGS_nconf.gui.o	= $(shell . $(obj)/nconf-cfg && echo $$cflags)
 $(obj)/nconf.o $(obj)/nconf.gui.o: $(obj)/nconf-cfg
 
 # mconf: Used for the menuconfig target based on lxdialog
-hostprogs-y	+= mconf
+hostprogs	+= mconf
 lxdialog	:= $(addprefix lxdialog/, \
 		     checklist.o inputbox.o menubox.o textbox.o util.o yesno.o)
 mconf-objs	:= mconf.o $(lxdialog) $(common-objs)
@@ -181,7 +179,7 @@ $(foreach f, mconf.o $(lxdialog), \
 $(addprefix $(obj)/, mconf.o $(lxdialog)): $(obj)/mconf-cfg
 
 # qconf: Used for the xconfig target based on Qt
-hostprogs-y	+= qconf
+hostprogs	+= qconf
 qconf-cxxobjs	:= qconf.o
 qconf-objs	:= images.o $(common-objs)
 
@@ -197,7 +195,7 @@ $(obj)/%.moc: $(src)/%.h $(obj)/qconf-cfg
 	$(call cmd,moc)
 
 # gconf: Used for the gconfig target based on GTK+
-hostprogs-y	+= gconf
+hostprogs	+= gconf
 gconf-objs	:= gconf.o images.o $(common-objs)
 
 HOSTLDLIBS_gconf    = $(shell . $(obj)/gconf-cfg && echo $$libs)
diff --git a/scripts/kconfig/conf.c b/scripts/kconfig/conf.c
index 1f89bf155..f6e548b8f 100644
--- a/scripts/kconfig/conf.c
+++ b/scripts/kconfig/conf.c
@@ -34,6 +34,8 @@ enum input_mode {
 	listnewconfig,
 	helpnewconfig,
 	olddefconfig,
+	yes2modconfig,
+	mod2yesconfig,
 };
 static enum input_mode input_mode = oldaskconfig;
 
@@ -467,6 +469,8 @@ static struct option long_opts[] = {
 	{"listnewconfig",   no_argument,       NULL, listnewconfig},
 	{"helpnewconfig",   no_argument,       NULL, helpnewconfig},
 	{"olddefconfig",    no_argument,       NULL, olddefconfig},
+	{"yes2modconfig",   no_argument,       NULL, yes2modconfig},
+	{"mod2yesconfig",   no_argument,       NULL, mod2yesconfig},
 	{NULL, 0, NULL, 0}
 };
 
@@ -489,6 +493,8 @@ static void conf_usage(const char *progname)
 	printf("  --allmodconfig          New config where all options are answered with mod\n");
 	printf("  --alldefconfig          New config with all symbols set to default\n");
 	printf("  --randconfig            New config with random answer to all options\n");
+	printf("  --yes2modconfig         Change answers from yes to mod if possible\n");
+	printf("  --mod2yesconfig         Change answers from mod to yes if possible\n");
 }
 
 int main(int ac, char **av)
@@ -553,6 +559,8 @@ int main(int ac, char **av)
 		case listnewconfig:
 		case helpnewconfig:
 		case olddefconfig:
+		case yes2modconfig:
+		case mod2yesconfig:
 			break;
 		case '?':
 			conf_usage(progname);
@@ -587,6 +595,8 @@ int main(int ac, char **av)
 	case listnewconfig:
 	case helpnewconfig:
 	case olddefconfig:
+	case yes2modconfig:
+	case mod2yesconfig:
 		conf_read(NULL);
 		break;
 	case allnoconfig:
@@ -660,6 +670,12 @@ int main(int ac, char **av)
 		break;
 	case savedefconfig:
 		break;
+	case yes2modconfig:
+		conf_rewrite_mod_or_yes(def_y2m);
+		break;
+	case mod2yesconfig:
+		conf_rewrite_mod_or_yes(def_m2y);
+		break;
 	case oldaskconfig:
 		rootEntry = &rootmenu;
 		conf(&rootmenu);
diff --git a/scripts/kconfig/confdata.c b/scripts/kconfig/confdata.c
index 3569d2dec..a39d93e3c 100644
--- a/scripts/kconfig/confdata.c
+++ b/scripts/kconfig/confdata.c
@@ -710,25 +710,6 @@ static struct conf_printer header_printer_cb =
 	.print_comment = header_print_comment,
 };
 
-/*
- * Tristate printer
- *
- * This printer is used when generating the `include/config/tristate.conf' file.
- */
-static void
-tristate_print_symbol(FILE *fp, struct symbol *sym, const char *value, void *arg)
-{
-
-	if (sym->type == S_TRISTATE && *value != 'n')
-		fprintf(fp, "%s%s=%c\n", CONFIG_, sym->name, (char)toupper(*value));
-}
-
-static struct conf_printer tristate_printer_cb =
-{
-	.print_symbol = tristate_print_symbol,
-	.print_comment = kconfig_print_comment,
-};
-
 static void conf_write_symbol(FILE *fp, struct symbol *sym,
 			      struct conf_printer *printer, void *printer_arg)
 {
@@ -1062,7 +1043,7 @@ int conf_write_autoconf(int overwrite)
 	struct symbol *sym;
 	const char *name;
 	const char *autoconf_name = conf_get_autoconfig_name();
-	FILE *out, *tristate, *out_h;
+	FILE *out, *out_h;
 	int i;
 
 	if (!overwrite && is_present(autoconf_name))
@@ -1077,23 +1058,13 @@ int conf_write_autoconf(int overwrite)
 	if (!out)
 		return 1;
 
-	tristate = fopen(".tmpconfig_tristate", "w");
-	if (!tristate) {
-		fclose(out);
-		return 1;
-	}
-
 	out_h = fopen(".tmpconfig.h", "w");
 	if (!out_h) {
 		fclose(out);
-		fclose(tristate);
 		return 1;
 	}
 
 	conf_write_heading(out, &kconfig_printer_cb, NULL);
-
-	conf_write_heading(tristate, &tristate_printer_cb, NULL);
-
 	conf_write_heading(out_h, &header_printer_cb, NULL);
 
 	for_all_symbols(i, sym) {
@@ -1101,15 +1072,11 @@ int conf_write_autoconf(int overwrite)
 		if (!(sym->flags & SYMBOL_WRITE) || !sym->name)
 			continue;
 
-		/* write symbol to auto.conf, tristate and header files */
+		/* write symbols to auto.conf and autoconf.h */
 		conf_write_symbol(out, sym, &kconfig_printer_cb, (void *)1);
-
-		conf_write_symbol(tristate, sym, &tristate_printer_cb, (void *)1);
-
 		conf_write_symbol(out_h, sym, &header_printer_cb, NULL);
 	}
 	fclose(out);
-	fclose(tristate);
 	fclose(out_h);
 
 	name = getenv("KCONFIG_AUTOHEADER");
@@ -1120,14 +1087,6 @@ int conf_write_autoconf(int overwrite)
 	if (rename(".tmpconfig.h", name))
 		return 1;
 
-	name = getenv("KCONFIG_TRISTATE");
-	if (!name)
-		name = "include/config/tristate.conf";
-	if (make_parent_dir(name))
-		return 1;
-	if (rename(".tmpconfig_tristate", name))
-		return 1;
-
 	if (make_parent_dir(autoconf_name))
 		return 1;
 	/*
@@ -1353,7 +1312,7 @@ bool conf_set_all_new_symbols(enum conf_def_mode mode)
 
 		sym_calc_value(csym);
 		if (mode == def_random)
-			has_changed = randomize_choice_values(csym);
+			has_changed |= randomize_choice_values(csym);
 		else {
 			set_all_choice_values(csym);
 			has_changed = true;
@@ -1362,3 +1321,18 @@ bool conf_set_all_new_symbols(enum conf_def_mode mode)
 
 	return has_changed;
 }
+
+void conf_rewrite_mod_or_yes(enum conf_def_mode mode)
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
diff --git a/scripts/kconfig/expr.c b/scripts/kconfig/expr.c
index 9f1de58e9..81ebf8108 100644
--- a/scripts/kconfig/expr.c
+++ b/scripts/kconfig/expr.c
@@ -13,7 +13,6 @@
 
 #define DEBUG_EXPR	0
 
-static int expr_eq(struct expr *e1, struct expr *e2);
 static struct expr *expr_eliminate_yn(struct expr *e);
 
 struct expr *expr_alloc_symbol(struct symbol *sym)
@@ -250,7 +249,7 @@ void expr_eliminate_eq(struct expr **ep1, struct expr **ep2)
  * equals some operand in the other (operands do not need to appear in the same
  * order), recursively.
  */
-static int expr_eq(struct expr *e1, struct expr *e2)
+int expr_eq(struct expr *e1, struct expr *e2)
 {
 	int res, old_count;
 
diff --git a/scripts/kconfig/expr.h b/scripts/kconfig/expr.h
index 017843c9a..5c3443692 100644
--- a/scripts/kconfig/expr.h
+++ b/scripts/kconfig/expr.h
@@ -191,7 +191,6 @@ enum prop_type {
 
 struct property {
 	struct property *next;     /* next property - null if last */
-	struct symbol *sym;        /* the symbol for which the property is associated */
 	enum prop_type type;       /* type of property */
 	const char *text;          /* the prompt value - P_PROMPT, P_MENU, P_COMMENT */
 	struct expr_value visible;
@@ -301,6 +300,7 @@ struct expr *expr_alloc_or(struct expr *e1, struct expr *e2);
 struct expr *expr_copy(const struct expr *org);
 void expr_free(struct expr *e);
 void expr_eliminate_eq(struct expr **ep1, struct expr **ep2);
+int expr_eq(struct expr *e1, struct expr *e2);
 tristate expr_calc_value(struct expr *e);
 struct expr *expr_trans_bool(struct expr *e);
 struct expr *expr_eliminate_dups(struct expr *e);
diff --git a/scripts/kconfig/gconf.c b/scripts/kconfig/gconf.c
index e36b342f1..5527482c3 100644
--- a/scripts/kconfig/gconf.c
+++ b/scripts/kconfig/gconf.c
@@ -18,6 +18,7 @@
 
 #include <stdio.h>
 #include <string.h>
+#include <strings.h>
 #include <unistd.h>
 #include <time.h>
 
diff --git a/scripts/kconfig/lkc.h b/scripts/kconfig/lkc.h
index 4fb16f316..d4ca82973 100644
--- a/scripts/kconfig/lkc.h
+++ b/scripts/kconfig/lkc.h
@@ -34,6 +34,8 @@ enum conf_def_mode {
 	def_default,
 	def_yes,
 	def_mod,
+	def_y2m,
+	def_m2y,
 	def_no,
 	def_random
 };
@@ -52,6 +54,7 @@ const char *conf_get_configname(void);
 void sym_set_change_count(int count);
 void sym_add_change_count(int count);
 bool conf_set_all_new_symbols(enum conf_def_mode mode);
+void conf_rewrite_mod_or_yes(enum conf_def_mode mode);
 void set_all_choice_values(struct symbol *csym);
 
 /* confdata.c and expr.c */
@@ -112,7 +115,6 @@ struct symbol *sym_choice_default(struct symbol *sym);
 struct property *sym_get_range_prop(struct symbol *sym);
 const char *sym_get_string_default(struct symbol *sym);
 struct symbol *sym_check_deps(struct symbol *sym);
-struct property *prop_alloc(enum prop_type type, struct symbol *sym);
 struct symbol *prop_get_symbol(struct property *prop);
 
 static inline tristate sym_get_tristate_value(struct symbol *sym)
diff --git a/scripts/kconfig/mconf.c b/scripts/kconfig/mconf.c
index 49c26ea9d..4063dbc1b 100644
--- a/scripts/kconfig/mconf.c
+++ b/scripts/kconfig/mconf.c
@@ -15,6 +15,7 @@
 #include <stdarg.h>
 #include <stdlib.h>
 #include <string.h>
+#include <strings.h>
 #include <signal.h>
 #include <unistd.h>
 
diff --git a/scripts/kconfig/menu.c b/scripts/kconfig/menu.c
index d9d164698..e436ba44c 100644
--- a/scripts/kconfig/menu.c
+++ b/scripts/kconfig/menu.c
@@ -124,61 +124,76 @@ void menu_set_type(int type)
 		sym_type_name(sym->type), sym_type_name(type));
 }
 
-static struct property *menu_add_prop(enum prop_type type, char *prompt, struct expr *expr, struct expr *dep)
+static struct property *menu_add_prop(enum prop_type type, struct expr *expr,
+				      struct expr *dep)
 {
-	struct property *prop = prop_alloc(type, current_entry->sym);
+	struct property *prop;
 
+	prop = xmalloc(sizeof(*prop));
+	memset(prop, 0, sizeof(*prop));
+	prop->type = type;
+	prop->file = current_file;
+	prop->lineno = zconf_lineno();
 	prop->menu = current_entry;
 	prop->expr = expr;
 	prop->visible.expr = dep;
 
-	if (prompt) {
-		if (isspace(*prompt)) {
-			prop_warn(prop, "leading whitespace ignored");
-			while (isspace(*prompt))
-				prompt++;
-		}
-		if (current_entry->prompt && current_entry != &rootmenu)
-			prop_warn(prop, "prompt redefined");
+	/* append property to the prop list of symbol */
+	if (current_entry->sym) {
+		struct property **propp;
 
-		/* Apply all upper menus' visibilities to actual prompts. */
-		if(type == P_PROMPT) {
-			struct menu *menu = current_entry;
+		for (propp = &current_entry->sym->prop;
+		     *propp;
+		     propp = &(*propp)->next)
+			;
+		*propp = prop;
+	}
 
-			while ((menu = menu->parent) != NULL) {
-				struct expr *dup_expr;
+	return prop;
+}
 
-				if (!menu->visibility)
-					continue;
-				/*
-				 * Do not add a reference to the
-				 * menu's visibility expression but
-				 * use a copy of it.  Otherwise the
-				 * expression reduction functions
-				 * will modify expressions that have
-				 * multiple references which can
-				 * cause unwanted side effects.
-				 */
-				dup_expr = expr_copy(menu->visibility);
+struct property *menu_add_prompt(enum prop_type type, char *prompt,
+				 struct expr *dep)
+{
+	struct property *prop = menu_add_prop(type, NULL, dep);
 
-				prop->visible.expr
-					= expr_alloc_and(prop->visible.expr,
-							 dup_expr);
-			}
-		}
+	if (isspace(*prompt)) {
+		prop_warn(prop, "leading whitespace ignored");
+		while (isspace(*prompt))
+			prompt++;
+	}
+	if (current_entry->prompt)
+		prop_warn(prop, "prompt redefined");
 
-		current_entry->prompt = prop;
+	/* Apply all upper menus' visibilities to actual prompts. */
+	if (type == P_PROMPT) {
+		struct menu *menu = current_entry;
+
+		while ((menu = menu->parent) != NULL) {
+			struct expr *dup_expr;
+
+			if (!menu->visibility)
+				continue;
+			/*
+			 * Do not add a reference to the menu's visibility
+			 * expression but use a copy of it. Otherwise the
+			 * expression reduction functions will modify
+			 * expressions that have multiple references which
+			 * can cause unwanted side effects.
+			 */
+			dup_expr = expr_copy(menu->visibility);
+
+			prop->visible.expr = expr_alloc_and(prop->visible.expr,
+							    dup_expr);
+		}
 	}
+
+	current_entry->prompt = prop;
 	prop->text = prompt;
 
 	return prop;
 }
 
-struct property *menu_add_prompt(enum prop_type type, char *prompt, struct expr *dep)
-{
-	return menu_add_prop(type, prompt, NULL, dep);
-}
-
 void menu_add_visibility(struct expr *expr)
 {
 	current_entry->visibility = expr_alloc_and(current_entry->visibility,
@@ -187,12 +202,12 @@ void menu_add_visibility(struct expr *expr)
 
 void menu_add_expr(enum prop_type type, struct expr *expr, struct expr *dep)
 {
-	menu_add_prop(type, NULL, expr, dep);
+	menu_add_prop(type, expr, dep);
 }
 
 void menu_add_symbol(enum prop_type type, struct symbol *sym, struct expr *dep)
 {
-	menu_add_prop(type, NULL, expr_alloc_symbol(sym), dep);
+	menu_add_prop(type, expr_alloc_symbol(sym), dep);
 }
 
 void menu_add_option_modules(void)
@@ -326,12 +341,10 @@ void menu_finalize(struct menu *parent)
 			 * choice value symbols.
 			 */
 			parentdep = expr_alloc_symbol(sym);
-		} else if (parent->prompt)
-			/* Menu node for 'menu' */
-			parentdep = parent->prompt->visible.expr;
-		else
-			/* Menu node for 'if' */
+		} else {
+			/* Menu node for 'menu', 'if' */
 			parentdep = parent->dep;
+		}
 
 		/* For each child menu node... */
 		for (menu = parent->list; menu; menu = menu->next) {
@@ -698,6 +711,21 @@ const char *menu_get_help(struct menu *menu)
 		return "";
 }
 
+static void get_def_str(struct gstr *r, struct menu *menu)
+{
+	str_printf(r, "Defined at %s:%d\n",
+		   menu->file->name, menu->lineno);
+}
+
+static void get_dep_str(struct gstr *r, struct expr *expr, const char *prefix)
+{
+	if (!expr_is_yes(expr)) {
+		str_append(r, prefix);
+		expr_gstr_print(expr, r);
+		str_append(r, "\n");
+	}
+}
+
 static void get_prompt_str(struct gstr *r, struct property *prop,
 			   struct list_head *head)
 {
@@ -705,7 +733,20 @@ static void get_prompt_str(struct gstr *r, struct property *prop,
 	struct menu *submenu[8], *menu, *location = NULL;
 	struct jump_key *jump = NULL;
 
-	str_printf(r, "Prompt: %s\n", prop->text);
+	str_printf(r, "  Prompt: %s\n", prop->text);
+
+	get_dep_str(r, prop->menu->dep, "  Depends on: ");
+	/*
+	 * Most prompts in Linux have visibility that exactly matches their
+	 * dependencies. For these, we print only the dependencies to improve
+	 * readability. However, prompts with inline "if" expressions and
+	 * prompts with a parent that has a "visible if" expression have
+	 * differing dependencies and visibility. In these rare cases, we
+	 * print both.
+	 */
+	if (!expr_eq(prop->menu->dep, prop->visible.expr))
+		get_dep_str(r, prop->visible.expr, "  Visible if: ");
+
 	menu = prop->menu->parent;
 	for (i = 0; menu != &rootmenu && i < 8; menu = menu->parent) {
 		bool accessible = menu_is_visible(menu);
@@ -755,18 +796,6 @@ static void get_prompt_str(struct gstr *r, struct property *prop,
 	}
 }
 
-/*
- * get property of type P_SYMBOL
- */
-static struct property *get_symbol_prop(struct symbol *sym)
-{
-	struct property *prop = NULL;
-
-	for_all_properties(sym, prop, P_SYMBOL)
-		break;
-	return prop;
-}
-
 static void get_symbol_props_str(struct gstr *r, struct symbol *sym,
 				 enum prop_type tok, const char *prefix)
 {
@@ -806,32 +835,34 @@ static void get_symbol_str(struct gstr *r, struct symbol *sym,
 			}
 		}
 	}
-	for_all_prompts(sym, prop)
-		get_prompt_str(r, prop, head);
-
-	prop = get_symbol_prop(sym);
-	if (prop) {
-		str_printf(r, "  Defined at %s:%d\n", prop->menu->file->name,
-			prop->menu->lineno);
-		if (!expr_is_yes(prop->visible.expr)) {
-			str_append(r, "  Depends on: ");
-			expr_gstr_print(prop->visible.expr, r);
-			str_append(r, "\n");
+
+	/* Print the definitions with prompts before the ones without */
+	for_all_properties(sym, prop, P_SYMBOL) {
+		if (prop->menu->prompt) {
+			get_def_str(r, prop->menu);
+			get_prompt_str(r, prop->menu->prompt, head);
+		}
+	}
+
+	for_all_properties(sym, prop, P_SYMBOL) {
+		if (!prop->menu->prompt) {
+			get_def_str(r, prop->menu);
+			get_dep_str(r, prop->menu->dep, "  Depends on: ");
 		}
 	}
 
-	get_symbol_props_str(r, sym, P_SELECT, "  Selects: ");
+	get_symbol_props_str(r, sym, P_SELECT, "Selects: ");
 	if (sym->rev_dep.expr) {
-		expr_gstr_print_revdep(sym->rev_dep.expr, r, yes, "  Selected by [y]:\n");
-		expr_gstr_print_revdep(sym->rev_dep.expr, r, mod, "  Selected by [m]:\n");
-		expr_gstr_print_revdep(sym->rev_dep.expr, r, no, "  Selected by [n]:\n");
+		expr_gstr_print_revdep(sym->rev_dep.expr, r, yes, "Selected by [y]:\n");
+		expr_gstr_print_revdep(sym->rev_dep.expr, r, mod, "Selected by [m]:\n");
+		expr_gstr_print_revdep(sym->rev_dep.expr, r, no, "Selected by [n]:\n");
 	}
 
-	get_symbol_props_str(r, sym, P_IMPLY, "  Implies: ");
+	get_symbol_props_str(r, sym, P_IMPLY, "Implies: ");
 	if (sym->implied.expr) {
-		expr_gstr_print_revdep(sym->implied.expr, r, yes, "  Implied by [y]:\n");
-		expr_gstr_print_revdep(sym->implied.expr, r, mod, "  Implied by [m]:\n");
-		expr_gstr_print_revdep(sym->implied.expr, r, no, "  Implied by [n]:\n");
+		expr_gstr_print_revdep(sym->implied.expr, r, yes, "Implied by [y]:\n");
+		expr_gstr_print_revdep(sym->implied.expr, r, mod, "Implied by [m]:\n");
+		expr_gstr_print_revdep(sym->implied.expr, r, no, "Implied by [n]:\n");
 	}
 
 	str_append(r, "\n\n");
diff --git a/scripts/kconfig/nconf.c b/scripts/kconfig/nconf.c
index b7c1ef757..daf1c1506 100644
--- a/scripts/kconfig/nconf.c
+++ b/scripts/kconfig/nconf.c
@@ -8,6 +8,7 @@
 #define _GNU_SOURCE
 #endif
 #include <string.h>
+#include <strings.h>
 #include <stdlib.h>
 
 #include "lkc.h"
diff --git a/scripts/kconfig/parser.y b/scripts/kconfig/parser.y
index b3eff9613..708b6c4b1 100644
--- a/scripts/kconfig/parser.y
+++ b/scripts/kconfig/parser.y
@@ -90,7 +90,6 @@ static struct menu *current_menu, *current_entry;
 %left T_LESS T_LESS_EQUAL T_GREATER T_GREATER_EQUAL
 %nonassoc T_NOT
 
-%type <string> prompt
 %type <symbol> nonconst_symbol
 %type <symbol> symbol
 %type <type> type logic_type default
@@ -113,7 +112,7 @@ input: mainmenu_stmt stmt_list | stmt_list;
 
 /* mainmenu entry */
 
-mainmenu_stmt: T_MAINMENU prompt T_EOL
+mainmenu_stmt: T_MAINMENU T_WORD_QUOTE T_EOL
 {
 	menu_add_prompt(P_MENU, $2, NULL);
 };
@@ -181,7 +180,7 @@ config_option: type prompt_stmt_opt T_EOL
 		$1);
 };
 
-config_option: T_PROMPT prompt if_expr T_EOL
+config_option: T_PROMPT T_WORD_QUOTE if_expr T_EOL
 {
 	menu_add_prompt(P_PROMPT, $2, $3);
 	printd(DEBUG_PARSE, "%s:%d:prompt\n", zconf_curname(), zconf_lineno());
@@ -265,7 +264,7 @@ choice_option_list:
 	| choice_option_list help
 ;
 
-choice_option: T_PROMPT prompt if_expr T_EOL
+choice_option: T_PROMPT T_WORD_QUOTE if_expr T_EOL
 {
 	menu_add_prompt(P_PROMPT, $2, $3);
 	printd(DEBUG_PARSE, "%s:%d:prompt\n", zconf_curname(), zconf_lineno());
@@ -334,7 +333,7 @@ if_stmt: if_entry stmt_list if_end
 
 /* menu entry */
 
-menu: T_MENU prompt T_EOL
+menu: T_MENU T_WORD_QUOTE T_EOL
 {
 	menu_add_entry(NULL);
 	menu_add_prompt(P_MENU, $2, NULL);
@@ -363,7 +362,7 @@ menu_option_list:
 	| menu_option_list depends
 ;
 
-source_stmt: T_SOURCE prompt T_EOL
+source_stmt: T_SOURCE T_WORD_QUOTE T_EOL
 {
 	printd(DEBUG_PARSE, "%s:%d:source %s\n", zconf_curname(), zconf_lineno(), $2);
 	zconf_nextfile($2);
@@ -372,7 +371,7 @@ source_stmt: T_SOURCE prompt T_EOL
 
 /* comment entry */
 
-comment: T_COMMENT prompt T_EOL
+comment: T_COMMENT T_WORD_QUOTE T_EOL
 {
 	menu_add_entry(NULL);
 	menu_add_prompt(P_COMMENT, $2, NULL);
@@ -429,15 +428,11 @@ visible: T_VISIBLE if_expr T_EOL
 
 prompt_stmt_opt:
 	  /* empty */
-	| prompt if_expr
+	| T_WORD_QUOTE if_expr
 {
 	menu_add_prompt(P_PROMPT, $1, $2);
 };
 
-prompt:	  T_WORD
-	| T_WORD_QUOTE
-;
-
 end:	  T_ENDMENU T_EOL	{ $$ = "menu"; }
 	| T_ENDCHOICE T_EOL	{ $$ = "choice"; }
 	| T_ENDIF T_EOL		{ $$ = "if"; }
@@ -665,7 +660,7 @@ static void print_symbol(FILE *out, struct menu *menu)
 			break;
 		case P_SYMBOL:
 			fputs( "  symbol ", out);
-			fprintf(out, "%s\n", prop->sym->name);
+			fprintf(out, "%s\n", prop->menu->sym->name);
 			break;
 		default:
 			fprintf(out, "  unknown prop %d!\n", prop->type);
diff --git a/scripts/kconfig/qconf.cc b/scripts/kconfig/qconf.cc
index 82773cc35..c0ac8f7b5 100644
--- a/scripts/kconfig/qconf.cc
+++ b/scripts/kconfig/qconf.cc
@@ -154,9 +154,9 @@ void ConfigItem::updateMenu(void)
 
 		if (!sym_is_changeable(sym) && list->optMode == normalOpt) {
 			setPixmap(promptColIdx, QIcon());
-			setText(noColIdx, QString::null);
-			setText(modColIdx, QString::null);
-			setText(yesColIdx, QString::null);
+			setText(noColIdx, QString());
+			setText(modColIdx, QString());
+			setText(yesColIdx, QString());
 			break;
 		}
 		expr = sym_get_tristate_value(sym);
@@ -276,7 +276,7 @@ void ConfigLineEdit::show(ConfigItem* i)
 	if (sym_get_string_value(item->menu->sym))
 		setText(QString::fromLocal8Bit(sym_get_string_value(item->menu->sym)));
 	else
-		setText(QString::null);
+		setText(QString());
 	Parent::show();
 	setFocus();
 }
@@ -309,8 +309,6 @@ ConfigList::ConfigList(ConfigView* p, const char *name)
 	  showName(false), showRange(false), showData(false), mode(singleMode), optMode(normalOpt),
 	  rootEntry(0), headerPopup(0)
 {
-	int i;
-
 	setObjectName(name);
 	setSortingEnabled(false);
 	setRootIsDecorated(true);
@@ -318,7 +316,10 @@ ConfigList::ConfigList(ConfigView* p, const char *name)
 	setVerticalScrollMode(ScrollPerPixel);
 	setHorizontalScrollMode(ScrollPerPixel);
 
-	setHeaderLabels(QStringList() << "Option" << "Name" << "N" << "M" << "Y" << "Value");
+	if (mode == symbolMode)
+		setHeaderLabels(QStringList() << "Item" << "Name" << "N" << "M" << "Y" << "Value");
+	else
+		setHeaderLabels(QStringList() << "Option" << "Name" << "N" << "M" << "Y" << "Value");
 
 	connect(this, SIGNAL(itemSelectionChanged(void)),
 		SLOT(updateSelection(void)));
@@ -399,6 +400,11 @@ void ConfigList::updateSelection(void)
 	struct menu *menu;
 	enum prop_type type;
 
+	if (mode == symbolMode)
+		setHeaderLabels(QStringList() << "Item" << "Name" << "N" << "M" << "Y" << "Value");
+	else
+		setHeaderLabels(QStringList() << "Option" << "Name" << "N" << "M" << "Y" << "Value");
+
 	if (selectedItems().count() == 0)
 		return;
 
@@ -627,7 +633,7 @@ void ConfigList::updateMenuList(ConfigItem *parent, struct menu* menu)
 			last = item;
 			continue;
 		}
-	hide:
+hide:
 		if (item && item->menu == child) {
 			last = parent->firstChild();
 			if (last == item)
@@ -692,7 +698,7 @@ void ConfigList::updateMenuList(ConfigList *parent, struct menu* menu)
 			last = item;
 			continue;
 		}
-	hide:
+hide:
 		if (item && item->menu == child) {
 			last = (ConfigItem*)parent->topLevelItem(0);
 			if (last == item)
@@ -736,7 +742,10 @@ void ConfigList::keyPressEvent(QKeyEvent* ev)
 		type = menu->prompt ? menu->prompt->type : P_UNKNOWN;
 		if (type == P_MENU && rootEntry != menu &&
 		    mode != fullMode && mode != menuMode) {
-			emit menuSelected(menu);
+			if (mode == menuMode)
+				emit menuSelected(menu);
+			else
+				emit itemSelected(menu);
 			break;
 		}
 	case Qt::Key_Space:
@@ -828,7 +837,7 @@ void ConfigList::mouseMoveEvent(QMouseEvent* e)
 
 void ConfigList::mouseDoubleClickEvent(QMouseEvent* e)
 {
-	QPoint p = e->pos(); // TODO: Check if this works(was contentsToViewport).
+	QPoint p = e->pos();
 	ConfigItem* item = (ConfigItem*)itemAt(p);
 	struct menu *menu;
 	enum prop_type ptype;
@@ -843,9 +852,12 @@ void ConfigList::mouseDoubleClickEvent(QMouseEvent* e)
 	if (!menu)
 		goto skip;
 	ptype = menu->prompt ? menu->prompt->type : P_UNKNOWN;
-	if (ptype == P_MENU && (mode == singleMode || mode == symbolMode))
-		emit menuSelected(menu);
-	else if (menu->sym)
+	if (ptype == P_MENU) {
+		if (mode == singleMode)
+			emit itemSelected(menu);
+		else if (mode == symbolMode)
+			emit menuSelected(menu);
+	} else if (menu->sym)
 		changeValue(item);
 
 skip:
@@ -1225,10 +1237,11 @@ QMenu* ConfigInfoView::createStandardContextMenu(const QPoint & pos)
 {
 	QMenu* popup = Parent::createStandardContextMenu(pos);
 	QAction* action = new QAction("Show Debug Info", popup);
-	  action->setCheckable(true);
-	  connect(action, SIGNAL(toggled(bool)), SLOT(setShowDebug(bool)));
-	  connect(this, SIGNAL(showDebugChanged(bool)), action, SLOT(setOn(bool)));
-	  action->setChecked(showDebug());
+
+	action->setCheckable(true);
+	connect(action, SIGNAL(toggled(bool)), SLOT(setShowDebug(bool)));
+	connect(this, SIGNAL(showDebugChanged(bool)), action, SLOT(setOn(bool)));
+	action->setChecked(showDebug());
 	popup->addSeparator();
 	popup->addAction(action);
 	return popup;
@@ -1354,21 +1367,32 @@ ConfigMainWindow::ConfigMainWindow(void)
 	if ((x.isValid())&&(y.isValid()))
 		move(x.toInt(), y.toInt());
 
-	split1 = new QSplitter(this);
+	QWidget *widget = new QWidget(this);
+	QVBoxLayout *layout = new QVBoxLayout(widget);
+	setCentralWidget(widget);
+
+	split1 = new QSplitter(widget);
 	split1->setOrientation(Qt::Horizontal);
-	setCentralWidget(split1);
+	split1->setChildrenCollapsible(false);
 
-	menuView = new ConfigView(split1, "menu");
+	menuView = new ConfigView(widget, "menu");
 	menuList = menuView->list;
 
-	split2 = new QSplitter(split1);
+	split2 = new QSplitter(widget);
+	split2->setChildrenCollapsible(false);
 	split2->setOrientation(Qt::Vertical);
 
 	// create config tree
-	configView = new ConfigView(split2, "config");
+	configView = new ConfigView(widget, "config");
 	configList = configView->list;
 
-	helpText = new ConfigInfoView(split2, "help");
+	helpText = new ConfigInfoView(widget, "help");
+
+	layout->addWidget(split2);
+	split2->addWidget(split1);
+	split1->addWidget(configView);
+	split1->addWidget(menuView);
+	split2->addWidget(helpText);
 
 	setTabOrder(configList, helpText);
 	configList->setFocus();
@@ -1486,6 +1510,8 @@ ConfigMainWindow::ConfigMainWindow(void)
 		helpText, SLOT(setInfo(struct menu *)));
 	connect(configList, SIGNAL(menuSelected(struct menu *)),
 		SLOT(changeMenu(struct menu *)));
+	connect(configList, SIGNAL(itemSelected(struct menu *)),
+		SLOT(changeItens(struct menu *)));
 	connect(configList, SIGNAL(parentSelected()),
 		SLOT(goBack()));
 	connect(menuList, SIGNAL(menuChanged(struct menu *)),
@@ -1582,15 +1608,26 @@ void ConfigMainWindow::searchConfig(void)
 	searchWindow->show();
 }
 
-void ConfigMainWindow::changeMenu(struct menu *menu)
+void ConfigMainWindow::changeItens(struct menu *menu)
 {
 	configList->setRootMenu(menu);
+
 	if (configList->rootEntry->parent == &rootmenu)
 		backAction->setEnabled(false);
 	else
 		backAction->setEnabled(true);
 }
 
+void ConfigMainWindow::changeMenu(struct menu *menu)
+{
+	menuList->setRootMenu(menu);
+
+	if (menuList->rootEntry->parent == &rootmenu)
+		backAction->setEnabled(false);
+	else
+		backAction->setEnabled(true);
+}
+
 void ConfigMainWindow::setMenuLink(struct menu *menu)
 {
 	struct menu *parent;
@@ -1700,14 +1737,14 @@ void ConfigMainWindow::showSplitView(void)
 	fullViewAction->setEnabled(true);
 	fullViewAction->setChecked(false);
 
-	configList->mode = symbolMode;
+	configList->mode = menuMode;
 	if (configList->rootEntry == &rootmenu)
 		configList->updateListAll();
 	else
 		configList->setRootMenu(&rootmenu);
 	configList->setAllOpen(true);
 	configApp->processEvents();
-	menuList->mode = menuMode;
+	menuList->mode = symbolMode;
 	menuList->setRootMenu(&rootmenu);
 	menuList->setAllOpen(true);
 	menuView->show();
@@ -1735,7 +1772,6 @@ void ConfigMainWindow::showFullView(void)
 
 /*
  * ask for saving configuration before quitting
- * TODO ask only when something changed
  */
 void ConfigMainWindow::closeEvent(QCloseEvent* e)
 {
diff --git a/scripts/kconfig/qconf.h b/scripts/kconfig/qconf.h
index 45bfe9b2b..c879d79ce 100644
--- a/scripts/kconfig/qconf.h
+++ b/scripts/kconfig/qconf.h
@@ -71,6 +71,7 @@ public slots:
 signals:
 	void menuChanged(struct menu *menu);
 	void menuSelected(struct menu *menu);
+	void itemSelected(struct menu *menu);
 	void parentSelected(void);
 	void gotFocus(struct menu *);
 
@@ -298,6 +299,7 @@ public:
 	ConfigMainWindow(void);
 public slots:
 	void changeMenu(struct menu *);
+	void changeItens(struct menu *);
 	void setMenuLink(struct menu *);
 	void listFocusChanged(void);
 	void goBack(void);
diff --git a/scripts/kconfig/streamline_config.pl b/scripts/kconfig/streamline_config.pl
index 08d76d7b3..e2f8504f5 100755
--- a/scripts/kconfig/streamline_config.pl
+++ b/scripts/kconfig/streamline_config.pl
@@ -56,8 +56,6 @@ sub dprint {
     print STDERR @_;
 }
 
-my $config = ".config";
-
 my $uname = `uname -r`;
 chomp $uname;
 
@@ -374,7 +372,7 @@ if (defined($lsmod_file)) {
 	    $lsmod = "$dir/lsmod";
 	    last;
 	}
-}
+    }
     if (!defined($lsmod)) {
 	# try just the path
 	$lsmod = "lsmod";
diff --git a/scripts/kconfig/symbol.c b/scripts/kconfig/symbol.c
index f56eec5ea..3dc81397d 100644
--- a/scripts/kconfig/symbol.c
+++ b/scripts/kconfig/symbol.c
@@ -221,7 +221,7 @@ static void sym_calc_visibility(struct symbol *sym)
 		sym_set_changed(sym);
 	}
 	tri = no;
-	if (sym->implied.expr && sym->dir_dep.tri != no)
+	if (sym->implied.expr)
 		tri = expr_calc_value(sym->implied.expr);
 	if (tri == mod && sym_get_type(sym) == S_BOOLEAN)
 		tri = yes;
@@ -394,6 +394,8 @@ void sym_calc_value(struct symbol *sym)
 				if (sym->implied.tri != no) {
 					sym->flags |= SYMBOL_WRITE;
 					newval.tri = EXPR_OR(newval.tri, sym->implied.tri);
+					newval.tri = EXPR_AND(newval.tri,
+							      sym->dir_dep.tri);
 				}
 			}
 		calc_newval:
@@ -401,8 +403,7 @@ void sym_calc_value(struct symbol *sym)
 				sym_warn_unmet_dep(sym);
 			newval.tri = EXPR_OR(newval.tri, sym->rev_dep.tri);
 		}
-		if (newval.tri == mod &&
-		    (sym_get_type(sym) == S_BOOLEAN || sym->implied.tri == yes))
+		if (newval.tri == mod && sym_get_type(sym) == S_BOOLEAN)
 			newval.tri = yes;
 		break;
 	case S_STRING:
@@ -484,8 +485,6 @@ bool sym_tristate_within_range(struct symbol *sym, tristate val)
 		return false;
 	if (sym->visible <= sym->rev_dep.tri)
 		return false;
-	if (sym->implied.tri == yes && val == mod)
-		return false;
 	if (sym_is_choice_value(sym) && sym->visible == yes)
 		return val == yes;
 	return val >= sym->rev_dep.tri && val <= sym->visible;
@@ -1273,28 +1272,6 @@ struct symbol *sym_check_deps(struct symbol *sym)
 	return sym2;
 }
 
-struct property *prop_alloc(enum prop_type type, struct symbol *sym)
-{
-	struct property *prop;
-	struct property **propp;
-
-	prop = xmalloc(sizeof(*prop));
-	memset(prop, 0, sizeof(*prop));
-	prop->type = type;
-	prop->sym = sym;
-	prop->file = current_file;
-	prop->lineno = zconf_lineno();
-
-	/* append property to the prop list of symbol */
-	if (sym) {
-		for (propp = &sym->prop; *propp; propp = &(*propp)->next)
-			;
-		*propp = prop;
-	}
-
-	return prop;
-}
-
 struct symbol *prop_get_symbol(struct property *prop)
 {
 	if (prop->expr && (prop->expr->type == E_SYMBOL ||
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
