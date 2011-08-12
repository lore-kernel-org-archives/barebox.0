Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qrs8q-00024w-IF
	for barebox@lists.infradead.org; Fri, 12 Aug 2011 13:51:24 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 2D708FFB210
	for <barebox@lists.infradead.org>;
	Fri, 12 Aug 2011 15:51:27 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 12 Aug 2011 15:32:06 +0200
Message-Id: <1313155927-30300-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] kconfig: sync with linux v3.1-rc1
To: barebox@lists.infradead.org

this will allow to use new introduce IS_BUILTIN, IS_ENABLE and IS_MODULE
macro and drop as much as possible

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile                                 |    2 +-
 scripts/kconfig/Makefile                 |   85 +++-----
 scripts/kconfig/conf.c                   |   50 ++++-
 scripts/kconfig/confdata.c               |  309 +++++++++++++++++++-----------
 scripts/kconfig/expr.c                   |   13 +-
 scripts/kconfig/expr.h                   |    7 -
 scripts/kconfig/gconf.c                  |   50 +----
 scripts/kconfig/kxgettext.c              |    1 -
 scripts/kconfig/lkc.h                    |   18 +--
 scripts/kconfig/lkc_proto.h              |    1 +
 scripts/kconfig/lxdialog/BIG.FAT.WARNING |    2 +-
 scripts/kconfig/mconf.c                  |    2 +-
 scripts/kconfig/menu.c                   |    5 +-
 scripts/kconfig/nconf.c                  |   44 ++---
 scripts/kconfig/qconf.cc                 |   22 ++-
 scripts/kconfig/qconf.h                  |    2 +-
 scripts/kconfig/streamline_config.pl     |   16 +-
 scripts/kconfig/symbol.c                 |   47 +++++-
 scripts/kconfig/util.c                   |    2 +
 scripts/kconfig/zconf.gperf              |    2 +-
 scripts/kconfig/zconf.hash.c_shipped     |  273 +++++++++++++++-----------
 scripts/kconfig/zconf.l                  |   44 +++--
 scripts/kconfig/zconf.tab.c_shipped      |   71 ++++----
 scripts/kconfig/zconf.y                  |   21 +--
 24 files changed, 598 insertions(+), 491 deletions(-)

diff --git a/Makefile b/Makefile
index c100d24..7affa41 100644
--- a/Makefile
+++ b/Makefile
@@ -290,7 +290,7 @@ LINUXINCLUDE    := -Iinclude \
                    $(if $(KBUILD_SRC),-Iinclude2 -I$(srctree)/include) \
 		   -I$(srctree)/arch/$(ARCH)/include \
 		   -I$(objtree)/arch/$(ARCH)/include \
-                   -include include/generated/autoconf.h
+		   -include $(srctree)/include/linux/kconfig.h
 
 CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
 
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index 368ae30..82d2eb2 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -77,14 +77,15 @@ localyesconfig: $(obj)/streamline_config.pl $(obj)/conf
 # The symlink is used to repair a deficiency in arch/um
 update-po-config: $(obj)/kxgettext $(obj)/gconf.glade.h
 	$(Q)echo "  GEN config"
-	$(Q)xgettext --default-domain=linux              \
-	    --add-comments --keyword=_ --keyword=N_      \
-	    --from-code=UTF-8                            \
-	    --files-from=scripts/kconfig/POTFILES.in     \
+	$(Q)xgettext --default-domain=linux                         \
+	    --add-comments --keyword=_ --keyword=N_                 \
+	    --from-code=UTF-8                                       \
+	    --files-from=$(srctree)/scripts/kconfig/POTFILES.in     \
+	    --directory=$(srctree) --directory=$(objtree)           \
 	    --output $(obj)/config.pot
 	$(Q)sed -i s/CHARSET/UTF-8/ $(obj)/config.pot
-	$(Q)ln -fs Kconfig.i386 arch/um/Kconfig.arch
-	$(Q)(for i in `ls arch/*/Kconfig`;               \
+	$(Q)ln -fs Kconfig.x86 arch/um/Kconfig
+	$(Q)(for i in `ls $(srctree)/arch/*/Kconfig`;    \
 	    do                                           \
 		echo "  GEN $$i";                        \
 		$(obj)/kxgettext $$i                     \
@@ -92,7 +93,7 @@ update-po-config: $(obj)/kxgettext $(obj)/gconf.glade.h
 	    done )
 	$(Q)msguniq --sort-by-file --to-code=UTF-8 $(obj)/config.pot \
 	    --output $(obj)/linux.pot
-	$(Q)rm -f arch/um/Kconfig.arch
+	$(Q)rm -f $(srctree)/arch/um/Kconfig
 	$(Q)rm -f $(obj)/config.pot
 
 PHONY += allnoconfig allyesconfig allmodconfig alldefconfig randconfig
@@ -168,8 +169,11 @@ conf-objs	:= conf.o  zconf.tab.o
 mconf-objs     := mconf.o zconf.tab.o $(lxdialog)
 nconf-objs     := nconf.o zconf.tab.o nconf.gui.o
 kxgettext-objs	:= kxgettext.o zconf.tab.o
+qconf-cxxobjs	:= qconf.o
+qconf-objs	:= zconf.tab.o
+gconf-objs	:= gconf.o zconf.tab.o
 
-hostprogs-y := conf qconf gconf kxgettext
+hostprogs-y := conf
 
 ifeq ($(MAKECMDGOALS),nconfig)
 	hostprogs-y += nconf
@@ -179,6 +183,10 @@ ifeq ($(MAKECMDGOALS),menuconfig)
 	hostprogs-y += mconf
 endif
 
+ifeq ($(MAKECMDGOALS),update-po-config)
+	hostprogs-y += kxgettext
+endif
+
 ifeq ($(MAKECMDGOALS),xconfig)
 	qconf-target := 1
 endif
@@ -188,16 +196,15 @@ endif
 
 
 ifeq ($(qconf-target),1)
-qconf-cxxobjs	:= qconf.o
-qconf-objs	:= kconfig_load.o zconf.tab.o
+	hostprogs-y += qconf
 endif
 
 ifeq ($(gconf-target),1)
-gconf-objs	:= gconf.o kconfig_load.o zconf.tab.o
+	hostprogs-y += gconf
 endif
 
-clean-files	:= lkc_defs.h qconf.moc .tmp_qtcheck \
-		   .tmp_gtkcheck zconf.tab.c lex.zconf.c zconf.hash.c gconf.glade.h
+clean-files	:= qconf.moc .tmp_qtcheck .tmp_gtkcheck
+clean-files	+= zconf.tab.c zconf.lex.c zconf.hash.c gconf.glade.h
 clean-files     += mconf qconf gconf nconf
 clean-files     += config.pot linux.pot
 
@@ -213,15 +220,18 @@ always := dochecklxdialog
 HOST_EXTRACFLAGS += $(shell $(CONFIG_SHELL) $(srctree)/$(src)/check.sh $(HOSTCC) $(HOSTCFLAGS))
 
 # generated files seem to need this to find local include files
-HOSTCFLAGS_lex.zconf.o	:= -I$(src)
+HOSTCFLAGS_zconf.lex.o	:= -I$(src)
 HOSTCFLAGS_zconf.tab.o	:= -I$(src)
 
-HOSTLOADLIBES_qconf	= $(KC_QT_LIBS) -ldl
-HOSTCXXFLAGS_qconf.o	= $(KC_QT_CFLAGS) -D LKC_DIRECT_LINK
+LEX_PREFIX_zconf	:= zconf
+YACC_PREFIX_zconf	:= zconf
 
-HOSTLOADLIBES_gconf	= `pkg-config --libs gtk+-2.0 gmodule-2.0 libglade-2.0` -ldl
+HOSTLOADLIBES_qconf	= $(KC_QT_LIBS)
+HOSTCXXFLAGS_qconf.o	= $(KC_QT_CFLAGS)
+
+HOSTLOADLIBES_gconf	= `pkg-config --libs gtk+-2.0 gmodule-2.0 libglade-2.0`
 HOSTCFLAGS_gconf.o	= `pkg-config --cflags gtk+-2.0 gmodule-2.0 libglade-2.0` \
-                          -D LKC_DIRECT_LINK
+                          -Wno-missing-prototypes
 
 HOSTLOADLIBES_mconf   = $(shell $(CONFIG_SHELL) $(check-lxdialog) -ldflags $(HOSTCC))
 
@@ -309,46 +319,15 @@ $(obj)/.tmp_gtkcheck:
 	fi
 endif
 
-$(obj)/zconf.tab.o: $(obj)/lex.zconf.c $(obj)/zconf.hash.c
-
-$(obj)/kconfig_load.o: $(obj)/lkc_defs.h
+$(obj)/zconf.tab.o: $(obj)/zconf.lex.c $(obj)/zconf.hash.c
 
-$(obj)/qconf.o: $(obj)/qconf.moc $(obj)/lkc_defs.h
-
-$(obj)/gconf.o: $(obj)/lkc_defs.h
+$(obj)/qconf.o: $(obj)/qconf.moc
 
 $(obj)/%.moc: $(src)/%.h
 	$(KC_QT_MOC) -i $< -o $@
 
-$(obj)/lkc_defs.h: $(src)/lkc_proto.h
-	sed < $< > $@ 's/P(\([^,]*\),.*/#define \1 (\*\1_p)/'
-
 # Extract gconf menu items for I18N support
 $(obj)/gconf.glade.h: $(obj)/gconf.glade
-	intltool-extract --type=gettext/glade $(obj)/gconf.glade
+	$(Q)intltool-extract --type=gettext/glade --srcdir=$(srctree) \
+	$(obj)/gconf.glade
 
-###
-# The following requires flex/bison/gperf
-# By default we use the _shipped versions, uncomment the following line if
-# you are modifying the flex/bison src.
-# LKC_GENPARSER := 1
-
-ifdef LKC_GENPARSER
-
-$(obj)/zconf.tab.c: $(src)/zconf.y
-$(obj)/lex.zconf.c: $(src)/zconf.l
-$(obj)/zconf.hash.c: $(src)/zconf.gperf
-
-%.tab.c: %.y
-	bison -l -b $* -p $(notdir $*) $<
-	cp $@ $@_shipped
-
-lex.%.c: %.l
-	flex -L -P$(notdir $*) -o$@ $<
-	cp $@ $@_shipped
-
-%.hash.c: %.gperf
-	gperf < $< > $@
-	cp $@ $@_shipped
-
-endif
diff --git a/scripts/kconfig/conf.c b/scripts/kconfig/conf.c
index 659326c..f208f90 100644
--- a/scripts/kconfig/conf.c
+++ b/scripts/kconfig/conf.c
@@ -14,11 +14,11 @@
 #include <sys/stat.h>
 #include <sys/time.h>
 
-#define LKC_DIRECT_LINK
 #include "lkc.h"
 
 static void conf(struct menu *menu);
 static void check_conf(struct menu *menu);
+static void xfgets(char *str, int size, FILE *in);
 
 enum input_mode {
 	oldaskconfig,
@@ -35,8 +35,6 @@ enum input_mode {
 	oldnoconfig,
 } input_mode = oldaskconfig;
 
-char *defconfig_file;
-
 static int indent = 1;
 static int valid_stdin = 1;
 static int sync_kconfig;
@@ -106,6 +104,7 @@ static int conf_askvalue(struct symbol *sym, const char *def)
 			return 0;
 		}
 		check_stdin();
+		/* fall through */
 	case oldaskconfig:
 		fflush(stdout);
 		xfgets(line, 128, stdin);
@@ -150,6 +149,7 @@ static int conf_string(struct menu *menu)
 				def = NULL;
 				break;
 			}
+			/* fall through */
 		default:
 			line[strlen(line)-1] = 0;
 			def = line;
@@ -304,6 +304,7 @@ static int conf_choice(struct menu *menu)
 				break;
 			}
 			check_stdin();
+			/* fall through */
 		case oldaskconfig:
 			fflush(stdout);
 			xfgets(line, 128, stdin);
@@ -332,7 +333,7 @@ static int conf_choice(struct menu *menu)
 		}
 		if (!child)
 			continue;
-		if (line[strlen(line) - 1] == '?') {
+		if (line[0] && line[strlen(line) - 1] == '?') {
 			print_help(child);
 			continue;
 		}
@@ -369,6 +370,7 @@ static void conf(struct menu *menu)
 				check_conf(menu);
 				return;
 			}
+			/* fall through */
 		case P_COMMENT:
 			prompt = menu_get_prompt(menu);
 			if (prompt)
@@ -456,10 +458,30 @@ static struct option long_opts[] = {
 	{NULL, 0, NULL, 0}
 };
 
+static void conf_usage(const char *progname)
+{
+
+	printf("Usage: %s [option] <kconfig-file>\n", progname);
+	printf("[option] is _one_ of the following:\n");
+	printf("  --listnewconfig         List new options\n");
+	printf("  --oldaskconfig          Start a new configuration using a line-oriented program\n");
+	printf("  --oldconfig             Update a configuration using a provided .config as base\n");
+	printf("  --silentoldconfig       Same as oldconfig, but quietly, additionally update deps\n");
+	printf("  --oldnoconfig           Same as silentoldconfig but set new symbols to no\n");
+	printf("  --defconfig <file>      New config with default defined in <file>\n");
+	printf("  --savedefconfig <file>  Save the minimal current configuration to <file>\n");
+	printf("  --allnoconfig           New config where all options are answered with no\n");
+	printf("  --allyesconfig          New config where all options are answered with yes\n");
+	printf("  --allmodconfig          New config where all options are answered with mod\n");
+	printf("  --alldefconfig          New config with all symbols set to default\n");
+	printf("  --randconfig            New config with random answer to all options\n");
+}
+
 int main(int ac, char **av)
 {
+	const char *progname = av[0];
 	int opt;
-	const char *name;
+	const char *name, *defconfig_file = NULL /* gcc uninit */;
 	struct stat tmpstat;
 
 	setlocale(LC_ALL, "");
@@ -491,14 +513,24 @@ int main(int ac, char **av)
 			srand(seed);
 			break;
 		}
+		case oldaskconfig:
+		case oldconfig:
+		case allnoconfig:
+		case allyesconfig:
+		case allmodconfig:
+		case alldefconfig:
+		case listnewconfig:
+		case oldnoconfig:
+			break;
 		case '?':
-			fprintf(stderr, _("See README for usage info\n"));
+			conf_usage(progname);
 			exit(1);
 			break;
 		}
 	}
 	if (ac == optind) {
 		printf(_("%s: Kconfig file missing\n"), av[0]);
+		conf_usage(progname);
 		exit(1);
 	}
 	name = av[optind];
@@ -641,13 +673,11 @@ int main(int ac, char **av)
 	}
 	return 0;
 }
+
 /*
  * Helper function to facilitate fgets() by Jean Sacren.
  */
-void xfgets(str, size, in)
-	char *str;
-	int size;
-	FILE *in;
+void xfgets(char *str, int size, FILE *in)
 {
 	if (fgets(str, size, in) == NULL)
 		fprintf(stderr, "\nError in reading or end of file.\n");
diff --git a/scripts/kconfig/confdata.c b/scripts/kconfig/confdata.c
index 61c35bf..59b667c 100644
--- a/scripts/kconfig/confdata.c
+++ b/scripts/kconfig/confdata.c
@@ -7,13 +7,13 @@
 #include <ctype.h>
 #include <errno.h>
 #include <fcntl.h>
+#include <stdarg.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include <time.h>
 #include <unistd.h>
 
-#define LKC_DIRECT_LINK
 #include "lkc.h"
 
 static void conf_warning(const char *fmt, ...)
@@ -128,6 +128,7 @@ static int conf_set_sym_val(struct symbol *sym, int def, int def_flags, char *p)
 			sym->flags |= def_flags;
 			break;
 		}
+		/* fall through */
 	case S_BOOLEAN:
 		if (p[0] == 'y') {
 			sym->def[def].tri = yes;
@@ -140,7 +141,7 @@ static int conf_set_sym_val(struct symbol *sym, int def, int def_flags, char *p)
 			break;
 		}
 		conf_warning("symbol value '%s' invalid for %s", p, sym->name);
-		break;
+		return 1;
 	case S_OTHER:
 		if (*p != '"') {
 			for (p2 = p; *p2 && !isspace(*p2); p2++)
@@ -148,6 +149,7 @@ static int conf_set_sym_val(struct symbol *sym, int def, int def_flags, char *p)
 			sym->type = S_STRING;
 			goto done;
 		}
+		/* fall through */
 	case S_STRING:
 		if (*p++ != '"')
 			break;
@@ -162,6 +164,7 @@ static int conf_set_sym_val(struct symbol *sym, int def, int def_flags, char *p)
 			conf_warning("invalid string found");
 			return 1;
 		}
+		/* fall through */
 	case S_INT:
 	case S_HEX:
 	done:
@@ -237,6 +240,7 @@ load:
 		case S_STRING:
 			if (sym->def[def].val)
 				free(sym->def[def].val);
+			/* fall through */
 		default:
 			sym->def[def].val = NULL;
 			sym->def[def].tri = no;
@@ -363,6 +367,7 @@ int conf_read(const char *name)
 					break;
 				if (!sym_is_choice(sym))
 					goto sym_ok;
+				/* fall through */
 			default:
 				if (!strcmp(sym->curr.val, sym->def[S_DEF_USER].val))
 					goto sym_ok;
@@ -417,64 +422,202 @@ int conf_read(const char *name)
 	return 0;
 }
 
-/* Write a S_STRING */
-static void conf_write_string(bool headerfile, const char *name,
-                              const char *str, FILE *out)
+/*
+ * Kconfig configuration printer
+ *
+ * This printer is used when generating the resulting configuration after
+ * kconfig invocation and `defconfig' files. Unset symbol might be omitted by
+ * passing a non-NULL argument to the printer.
+ *
+ */
+static void
+kconfig_print_symbol(FILE *fp, struct symbol *sym, const char *value, void *arg)
 {
-	int l;
-	if (headerfile)
-		fprintf(out, "#define %s%s \"", CONFIG_, name);
-	else
-		fprintf(out, "%s%s=\"", CONFIG_, name);
-
-	while (1) {
-		l = strcspn(str, "\"\\");
+
+	switch (sym->type) {
+	case S_BOOLEAN:
+	case S_TRISTATE:
+		if (*value == 'n') {
+			bool skip_unset = (arg != NULL);
+
+			if (!skip_unset)
+				fprintf(fp, "# %s%s is not set\n",
+				    CONFIG_, sym->name);
+			return;
+		}
+		break;
+	default:
+		break;
+	}
+
+	fprintf(fp, "%s%s=%s\n", CONFIG_, sym->name, value);
+}
+
+static void
+kconfig_print_comment(FILE *fp, const char *value, void *arg)
+{
+	const char *p = value;
+	size_t l;
+
+	for (;;) {
+		l = strcspn(p, "\n");
+		fprintf(fp, "#");
 		if (l) {
-			xfwrite(str, l, 1, out);
-			str += l;
+			fprintf(fp, " ");
+			fwrite(p, l, 1, fp);
+			p += l;
 		}
-		if (!*str)
+		fprintf(fp, "\n");
+		if (*p++ == '\0')
 			break;
-		fprintf(out, "\\%c", *str++);
 	}
-	fputs("\"\n", out);
 }
 
-static void conf_write_symbol(struct symbol *sym, FILE *out, bool write_no)
+static struct conf_printer kconfig_printer_cb =
+{
+	.print_symbol = kconfig_print_symbol,
+	.print_comment = kconfig_print_comment,
+};
+
+/*
+ * Header printer
+ *
+ * This printer is used when generating the `include/generated/autoconf.h' file.
+ */
+static void
+header_print_symbol(FILE *fp, struct symbol *sym, const char *value, void *arg)
 {
-	const char *str;
 
 	switch (sym->type) {
 	case S_BOOLEAN:
-	case S_TRISTATE:
-		switch (sym_get_tristate_value(sym)) {
-		case no:
-			if (write_no)
-				fprintf(out, "# %s%s is not set\n",
-				    CONFIG_, sym->name);
-			break;
-		case mod:
-			fprintf(out, "%s%s=m\n", CONFIG_, sym->name);
-			break;
-		case yes:
-			fprintf(out, "%s%s=y\n", CONFIG_, sym->name);
+	case S_TRISTATE: {
+		const char *suffix = "";
+
+		switch (*value) {
+		case 'n':
 			break;
+		case 'm':
+			suffix = "_MODULE";
+			/* fall through */
+		default:
+			fprintf(fp, "#define %s%s%s 1\n",
+			    CONFIG_, sym->name, suffix);
 		}
+		/*
+		 * Generate the __enabled_CONFIG_* and
+		 * __enabled_CONFIG_*_MODULE macros for use by the
+		 * IS_{ENABLED,BUILTIN,MODULE} macros. The _MODULE variant is
+		 * generated even for booleans so that the IS_ENABLED() macro
+		 * works.
+		 */
+		fprintf(fp, "#define __enabled_" CONFIG_ "%s %d\n",
+				sym->name, (*value == 'y'));
+		fprintf(fp, "#define __enabled_" CONFIG_ "%s_MODULE %d\n",
+				sym->name, (*value == 'm'));
 		break;
-	case S_STRING:
-		conf_write_string(false, sym->name, sym_get_string_value(sym), out);
+	}
+	case S_HEX: {
+		const char *prefix = "";
+
+		if (value[0] != '0' || (value[1] != 'x' && value[1] != 'X'))
+			prefix = "0x";
+		fprintf(fp, "#define %s%s %s%s\n",
+		    CONFIG_, sym->name, prefix, value);
 		break;
-	case S_HEX:
+	}
+	case S_STRING:
 	case S_INT:
-		str = sym_get_string_value(sym);
-		fprintf(out, "%s%s=%s\n", CONFIG_, sym->name, str);
+		fprintf(fp, "#define %s%s %s\n",
+		    CONFIG_, sym->name, value);
+		break;
+	default:
 		break;
+	}
+
+}
+
+static void
+header_print_comment(FILE *fp, const char *value, void *arg)
+{
+	const char *p = value;
+	size_t l;
+
+	fprintf(fp, "/*\n");
+	for (;;) {
+		l = strcspn(p, "\n");
+		fprintf(fp, " *");
+		if (l) {
+			fprintf(fp, " ");
+			fwrite(p, l, 1, fp);
+			p += l;
+		}
+		fprintf(fp, "\n");
+		if (*p++ == '\0')
+			break;
+	}
+	fprintf(fp, " */\n");
+}
+
+static struct conf_printer header_printer_cb =
+{
+	.print_symbol = header_print_symbol,
+	.print_comment = header_print_comment,
+};
+
+/*
+ * Tristate printer
+ *
+ * This printer is used when generating the `include/config/tristate.conf' file.
+ */
+static void
+tristate_print_symbol(FILE *fp, struct symbol *sym, const char *value, void *arg)
+{
+
+	if (sym->type == S_TRISTATE && *value != 'n')
+		fprintf(fp, "%s%s=%c\n", CONFIG_, sym->name, (char)toupper(*value));
+}
+
+static struct conf_printer tristate_printer_cb =
+{
+	.print_symbol = tristate_print_symbol,
+	.print_comment = kconfig_print_comment,
+};
+
+static void conf_write_symbol(FILE *fp, struct symbol *sym,
+			      struct conf_printer *printer, void *printer_arg)
+{
+	const char *str;
+
+	switch (sym->type) {
 	case S_OTHER:
 	case S_UNKNOWN:
 		break;
+	case S_STRING:
+		str = sym_get_string_value(sym);
+		str = sym_escape_string_value(str);
+		printer->print_symbol(fp, sym, str, printer_arg);
+		free((void *)str);
+		break;
+	default:
+		str = sym_get_string_value(sym);
+		printer->print_symbol(fp, sym, str, printer_arg);
 	}
 }
 
+static void
+conf_write_heading(FILE *fp, struct conf_printer *printer, void *printer_arg)
+{
+	char buf[256];
+
+	snprintf(buf, sizeof(buf),
+	    "\n"
+	    "Automatically generated file; DO NOT EDIT.\n"
+	    "%s\n",
+	    rootmenu.prompt->text);
+
+	printer->print_comment(fp, buf, printer_arg);
+}
+
 /*
  * Write out a minimal config.
  * All values that has default values are skipped as this is redundant.
@@ -531,7 +674,7 @@ int conf_write_defconfig(const char *filename)
 						goto next_menu;
 				}
 			}
-			conf_write_symbol(sym, out, true);
+			conf_write_symbol(out, sym, &kconfig_printer_cb, NULL);
 		}
 next_menu:
 		if (menu->list != NULL) {
@@ -560,8 +703,6 @@ int conf_write(const char *name)
 	const char *basename;
 	const char *str;
 	char dirname[PATH_MAX+1], tmpname[PATH_MAX+1], newname[PATH_MAX+1];
-	time_t now;
-	int use_timestamp = 1;
 	char *env;
 
 	dirname[0] = 0;
@@ -598,19 +739,7 @@ int conf_write(const char *name)
 	if (!out)
 		return 1;
 
-	time(&now);
-	env = getenv("KCONFIG_NOTIMESTAMP");
-	if (env && *env)
-		use_timestamp = 0;
-
-	fprintf(out, _("#\n"
-		       "# Automatically generated make config: don't edit\n"
-		       "# %s\n"
-		       "%s%s"
-		       "#\n"),
-		     rootmenu.prompt->text,
-		     use_timestamp ? "# " : "",
-		     use_timestamp ? ctime(&now) : "");
+	conf_write_heading(out, &kconfig_printer_cb, NULL);
 
 	if (!conf_get_changed())
 		sym_clear_all_valid();
@@ -631,8 +760,8 @@ int conf_write(const char *name)
 			if (!(sym->flags & SYMBOL_WRITE))
 				goto next;
 			sym->flags &= ~SYMBOL_WRITE;
-			/* Write config symbol to file */
-			conf_write_symbol(sym, out, true);
+
+			conf_write_symbol(out, sym, &kconfig_printer_cb, NULL);
 		}
 
 next:
@@ -781,10 +910,8 @@ out:
 int conf_write_autoconf(void)
 {
 	struct symbol *sym;
-	const char *str;
 	const char *name;
 	FILE *out, *tristate, *out_h;
-	time_t now;
 	int i;
 
 	sym_clear_all_valid();
@@ -811,71 +938,23 @@ int conf_write_autoconf(void)
 		return 1;
 	}
 
-	time(&now);
-	fprintf(out, "#\n"
-		     "# Automatically generated make config: don't edit\n"
-		     "# %s\n"
-		     "# %s"
-		     "#\n",
-		     rootmenu.prompt->text, ctime(&now));
-	fprintf(tristate, "#\n"
-			  "# Automatically generated - do not edit\n"
-			  "\n");
-	fprintf(out_h, "/*\n"
-		       " * Automatically generated C config: don't edit\n"
-		       " * %s\n"
-		       " * %s"
-		       " */\n",
-		       rootmenu.prompt->text, ctime(&now));
+	conf_write_heading(out, &kconfig_printer_cb, NULL);
+
+	conf_write_heading(tristate, &tristate_printer_cb, NULL);
+
+	conf_write_heading(out_h, &header_printer_cb, NULL);
 
 	for_all_symbols(i, sym) {
 		sym_calc_value(sym);
 		if (!(sym->flags & SYMBOL_WRITE) || !sym->name)
 			continue;
 
-		/* write symbol to config file */
-		conf_write_symbol(sym, out, false);
+		/* write symbol to auto.conf, tristate and header files */
+		conf_write_symbol(out, sym, &kconfig_printer_cb, (void *)1);
 
-		/* update autoconf and tristate files */
-		switch (sym->type) {
-		case S_BOOLEAN:
-		case S_TRISTATE:
-			switch (sym_get_tristate_value(sym)) {
-			case no:
-				break;
-			case mod:
-				fprintf(tristate, "%s%s=M\n",
-				    CONFIG_, sym->name);
-				fprintf(out_h, "#define %s%s_MODULE 1\n",
-				    CONFIG_, sym->name);
-				break;
-			case yes:
-				if (sym->type == S_TRISTATE)
-					fprintf(tristate,"%s%s=Y\n",
-					    CONFIG_, sym->name);
-				fprintf(out_h, "#define %s%s 1\n",
-				    CONFIG_, sym->name);
-				break;
-			}
-			break;
-		case S_STRING:
-			conf_write_string(true, sym->name, sym_get_string_value(sym), out_h);
-			break;
-		case S_HEX:
-			str = sym_get_string_value(sym);
-			if (str[0] != '0' || (str[1] != 'x' && str[1] != 'X')) {
-				fprintf(out_h, "#define %s%s 0x%s\n",
-				    CONFIG_, sym->name, str);
-				break;
-			}
-		case S_INT:
-			str = sym_get_string_value(sym);
-			fprintf(out_h, "#define %s%s %s\n",
-			    CONFIG_, sym->name, str);
-			break;
-		default:
-			break;
-		}
+		conf_write_symbol(tristate, sym, &tristate_printer_cb, (void *)1);
+
+		conf_write_symbol(out_h, sym, &header_printer_cb, NULL);
 	}
 	fclose(out);
 	fclose(tristate);
diff --git a/scripts/kconfig/expr.c b/scripts/kconfig/expr.c
index 0010034..290ce41 100644
--- a/scripts/kconfig/expr.c
+++ b/scripts/kconfig/expr.c
@@ -7,15 +7,13 @@
 #include <stdlib.h>
 #include <string.h>
 
-#define LKC_DIRECT_LINK
 #include "lkc.h"
 
 #define DEBUG_EXPR	0
 
 struct expr *expr_alloc_symbol(struct symbol *sym)
 {
-	struct expr *e = malloc(sizeof(*e));
-	memset(e, 0, sizeof(*e));
+	struct expr *e = calloc(1, sizeof(*e));
 	e->type = E_SYMBOL;
 	e->left.sym = sym;
 	return e;
@@ -23,8 +21,7 @@ struct expr *expr_alloc_symbol(struct symbol *sym)
 
 struct expr *expr_alloc_one(enum expr_type type, struct expr *ce)
 {
-	struct expr *e = malloc(sizeof(*e));
-	memset(e, 0, sizeof(*e));
+	struct expr *e = calloc(1, sizeof(*e));
 	e->type = type;
 	e->left.expr = ce;
 	return e;
@@ -32,8 +29,7 @@ struct expr *expr_alloc_one(enum expr_type type, struct expr *ce)
 
 struct expr *expr_alloc_two(enum expr_type type, struct expr *e1, struct expr *e2)
 {
-	struct expr *e = malloc(sizeof(*e));
-	memset(e, 0, sizeof(*e));
+	struct expr *e = calloc(1, sizeof(*e));
 	e->type = type;
 	e->left.expr = e1;
 	e->right.expr = e2;
@@ -42,8 +38,7 @@ struct expr *expr_alloc_two(enum expr_type type, struct expr *e1, struct expr *e
 
 struct expr *expr_alloc_comp(enum expr_type type, struct symbol *s1, struct symbol *s2)
 {
-	struct expr *e = malloc(sizeof(*e));
-	memset(e, 0, sizeof(*e));
+	struct expr *e = calloc(1, sizeof(*e));
 	e->type = type;
 	e->left.sym = s1;
 	e->right.sym = s2;
diff --git a/scripts/kconfig/expr.h b/scripts/kconfig/expr.h
index 3d238db..80fce57 100644
--- a/scripts/kconfig/expr.h
+++ b/scripts/kconfig/expr.h
@@ -20,12 +20,8 @@ struct file {
 	struct file *parent;
 	const char *name;
 	int lineno;
-	int flags;
 };
 
-#define FILE_BUSY		0x0001
-#define FILE_SCANNED		0x0002
-
 typedef enum tristate {
 	no, mod, yes
 } tristate;
@@ -176,8 +172,6 @@ struct menu {
 #define MENU_CHANGED		0x0001
 #define MENU_ROOT		0x0002
 
-#ifndef SWIG
-
 extern struct file *file_list;
 extern struct file *current_file;
 struct file *lookup_file(const char *name);
@@ -222,7 +216,6 @@ static inline int expr_is_no(struct expr *e)
 {
 	return e && (e->type == E_SYMBOL && e->left.sym == &symbol_no);
 }
-#endif
 
 #ifdef __cplusplus
 }
diff --git a/scripts/kconfig/gconf.c b/scripts/kconfig/gconf.c
index 4558961..9f44380 100644
--- a/scripts/kconfig/gconf.c
+++ b/scripts/kconfig/gconf.c
@@ -253,7 +253,7 @@ void init_left_tree(void)
 
 	gtk_tree_view_set_model(view, model1);
 	gtk_tree_view_set_headers_visible(view, TRUE);
-	gtk_tree_view_set_rules_hint(view, FALSE);
+	gtk_tree_view_set_rules_hint(view, TRUE);
 
 	column = gtk_tree_view_column_new();
 	gtk_tree_view_append_column(view, column);
@@ -285,8 +285,6 @@ void init_left_tree(void)
 static void renderer_edited(GtkCellRendererText * cell,
 			    const gchar * path_string,
 			    const gchar * new_text, gpointer user_data);
-static void renderer_toggled(GtkCellRendererToggle * cellrenderertoggle,
-			     gchar * arg1, gpointer user_data);
 
 void init_right_tree(void)
 {
@@ -298,7 +296,7 @@ void init_right_tree(void)
 
 	gtk_tree_view_set_model(view, model2);
 	gtk_tree_view_set_headers_visible(view, TRUE);
-	gtk_tree_view_set_rules_hint(view, FALSE);
+	gtk_tree_view_set_rules_hint(view, TRUE);
 
 	column = gtk_tree_view_column_new();
 	gtk_tree_view_append_column(view, column);
@@ -320,8 +318,6 @@ void init_right_tree(void)
 					    "inconsistent", COL_BTNINC,
 					    "visible", COL_BTNVIS,
 					    "radio", COL_BTNRAD, NULL);
-	/*g_signal_connect(G_OBJECT(renderer), "toggled",
-	   G_CALLBACK(renderer_toggled), NULL); */
 	renderer = gtk_cell_renderer_text_new();
 	gtk_tree_view_column_pack_start(GTK_TREE_VIEW_COLUMN(column),
 					renderer, FALSE);
@@ -756,7 +752,6 @@ void on_load_clicked(GtkButton * button, gpointer user_data)
 void on_single_clicked(GtkButton * button, gpointer user_data)
 {
 	view_mode = SINGLE_VIEW;
-	gtk_paned_set_position(GTK_PANED(hpaned), 0);
 	gtk_widget_hide(tree1_w);
 	current = &rootmenu;
 	display_tree_part();
@@ -782,7 +777,6 @@ void on_split_clicked(GtkButton * button, gpointer user_data)
 void on_full_clicked(GtkButton * button, gpointer user_data)
 {
 	view_mode = FULL_VIEW;
-	gtk_paned_set_position(GTK_PANED(hpaned), 0);
 	gtk_widget_hide(tree1_w);
 	if (tree2)
 		gtk_tree_store_clear(tree2);
@@ -890,35 +884,6 @@ static void toggle_sym_value(struct menu *menu)
 		display_tree_part();	//fixme: keep exp/coll
 }
 
-static void renderer_toggled(GtkCellRendererToggle * cell,
-			     gchar * path_string, gpointer user_data)
-{
-	GtkTreePath *path, *sel_path = NULL;
-	GtkTreeIter iter, sel_iter;
-	GtkTreeSelection *sel;
-	struct menu *menu;
-
-	path = gtk_tree_path_new_from_string(path_string);
-	if (!gtk_tree_model_get_iter(model2, &iter, path))
-		return;
-
-	sel = gtk_tree_view_get_selection(GTK_TREE_VIEW(tree2_w));
-	if (gtk_tree_selection_get_selected(sel, NULL, &sel_iter))
-		sel_path = gtk_tree_model_get_path(model2, &sel_iter);
-	if (!sel_path)
-		goto out1;
-	if (gtk_tree_path_compare(path, sel_path))
-		goto out2;
-
-	gtk_tree_model_get(model2, &iter, COL_MENU, &menu, -1);
-	toggle_sym_value(menu);
-
-      out2:
-	gtk_tree_path_free(sel_path);
-      out1:
-	gtk_tree_path_free(path);
-}
-
 static gint column2index(GtkTreeViewColumn * column)
 {
 	gint i;
@@ -1174,6 +1139,7 @@ static gchar **fill_row(struct menu *menu)
 			row[COL_BTNVIS] = GINT_TO_POINTER(TRUE);
 		if (sym_is_choice(sym))
 			break;
+		/* fall through */
 	case S_TRISTATE:
 		val = sym_get_tristate_value(sym);
 		switch (val) {
@@ -1444,6 +1410,12 @@ static void display_tree(struct menu *menu)
                 if (((menu != &rootmenu) && !(menu->flags & MENU_ROOT))
 		    || (view_mode == FULL_VIEW)
 		    || (view_mode == SPLIT_VIEW))*/
+
+		/* Change paned position if the view is not in 'split mode' */
+		if (view_mode == SINGLE_VIEW || view_mode == FULL_VIEW) {
+			gtk_paned_set_position(GTK_PANED(hpaned), 0);
+		}
+
 		if (((view_mode == SINGLE_VIEW) && (menu->flags & MENU_ROOT))
 		    || (view_mode == FULL_VIEW)
 		    || (view_mode == SPLIT_VIEW)) {
@@ -1502,10 +1474,6 @@ int main(int ac, char *av[])
 	char *env;
 	gchar *glade_file;
 
-#ifndef LKC_DIRECT_LINK
-	kconfig_load();
-#endif
-
 	bindtextdomain(PACKAGE, LOCALEDIR);
 	bind_textdomain_codeset(PACKAGE, "UTF-8");
 	textdomain(PACKAGE);
diff --git a/scripts/kconfig/kxgettext.c b/scripts/kconfig/kxgettext.c
index e9d8e79..2858738 100644
--- a/scripts/kconfig/kxgettext.c
+++ b/scripts/kconfig/kxgettext.c
@@ -7,7 +7,6 @@
 #include <stdlib.h>
 #include <string.h>
 
-#define LKC_DIRECT_LINK
 #include "lkc.h"
 
 static char *escape(const char* text, char *bf, int len)
diff --git a/scripts/kconfig/lkc.h b/scripts/kconfig/lkc.h
index febf0c9..b633bdb 100644
--- a/scripts/kconfig/lkc.h
+++ b/scripts/kconfig/lkc.h
@@ -21,12 +21,7 @@ static inline char *bind_textdomain_codeset(const char *dn, char *c) { return c;
 extern "C" {
 #endif
 
-#ifdef LKC_DIRECT_LINK
 #define P(name,type,arg)	extern type name arg
-#else
-#include "lkc_defs.h"
-#define P(name,type,arg)	extern type (*name ## _p) arg
-#endif
 #include "lkc_proto.h"
 #undef P
 
@@ -68,9 +63,7 @@ struct kconf_id {
 	enum symbol_type stype;
 };
 
-#ifdef YYDEBUG
 extern int zconfdebug;
-#endif
 
 int zconfparse(void);
 void zconfdump(FILE *out);
@@ -81,9 +74,6 @@ void zconf_nextfile(const char *name);
 int zconf_lineno(void);
 const char *zconf_curname(void);
 
-/* conf.c */
-void xfgets(char *str, int size, FILE *in);
-
 /* confdata.c */
 const char *conf_get_configname(void);
 const char *conf_get_autoconfig_name(void);
@@ -92,6 +82,11 @@ void sym_set_change_count(int count);
 void sym_add_change_count(int count);
 void conf_set_all_new_symbols(enum conf_def_mode mode);
 
+struct conf_printer {
+	void (*print_symbol)(FILE *, struct symbol *, const char *, void *);
+	void (*print_comment)(FILE *, const char *, void *);
+};
+
 /* confdata.c and expr.c */
 static inline void xfwrite(const void *str, size_t len, size_t count, FILE *out)
 {
@@ -99,9 +94,6 @@ static inline void xfwrite(const void *str, size_t len, size_t count, FILE *out)
 		fprintf(stderr, "\nError in writing or end of file.\n");
 }
 
-/* kconfig_load.c */
-void kconfig_load(void);
-
 /* menu.c */
 void _menu_init(void);
 void menu_warn(struct menu *menu, const char *fmt, ...);
diff --git a/scripts/kconfig/lkc_proto.h b/scripts/kconfig/lkc_proto.h
index 17342fe..47fe9c3 100644
--- a/scripts/kconfig/lkc_proto.h
+++ b/scripts/kconfig/lkc_proto.h
@@ -31,6 +31,7 @@ P(symbol_hash,struct symbol *,[SYMBOL_HASHSIZE]);
 P(sym_lookup,struct symbol *,(const char *name, int flags));
 P(sym_find,struct symbol *,(const char *name));
 P(sym_expand_string_value,const char *,(const char *in));
+P(sym_escape_string_value, const char *,(const char *in));
 P(sym_re_search,struct symbol **,(const char *pattern));
 P(sym_type_name,const char *,(enum symbol_type type));
 P(sym_calc_value,void,(struct symbol *sym));
diff --git a/scripts/kconfig/lxdialog/BIG.FAT.WARNING b/scripts/kconfig/lxdialog/BIG.FAT.WARNING
index d8601eb..a8999d8 100644
--- a/scripts/kconfig/lxdialog/BIG.FAT.WARNING
+++ b/scripts/kconfig/lxdialog/BIG.FAT.WARNING
@@ -1,4 +1,4 @@
 This is NOT the official version of dialog.  This version has been
 significantly modified from the original.  It is for use by the Linux
-barebox configuration script.  Please do not bother Savio Lam with 
+kernel configuration script.  Please do not bother Savio Lam with 
 questions about this program.
diff --git a/scripts/kconfig/mconf.c b/scripts/kconfig/mconf.c
index d433c7a..820d2b6 100644
--- a/scripts/kconfig/mconf.c
+++ b/scripts/kconfig/mconf.c
@@ -18,7 +18,6 @@
 #include <unistd.h>
 #include <locale.h>
 
-#define LKC_DIRECT_LINK
 #include "lkc.h"
 #include "lxdialog/dialog.h"
 
@@ -845,6 +844,7 @@ int main(int ac, char **av)
 				"\n\n"));
 			return 1;
 		}
+		/* fall through */
 	case -1:
 		printf(_("\n\n"
 			"*** End of the configuration.\n"
diff --git a/scripts/kconfig/menu.c b/scripts/kconfig/menu.c
index 5fdf10d..d660086 100644
--- a/scripts/kconfig/menu.c
+++ b/scripts/kconfig/menu.c
@@ -3,10 +3,11 @@
  * Released under the terms of the GNU GPL v2.0.
  */
 
+#include <ctype.h>
+#include <stdarg.h>
 #include <stdlib.h>
 #include <string.h>
 
-#define LKC_DIRECT_LINK
 #include "lkc.h"
 
 static const char nohelp_text[] = N_(
@@ -350,7 +351,7 @@ void menu_finalize(struct menu *parent)
 			last_menu->next = NULL;
 		}
 
-		sym->dir_dep.expr = parent->dep;
+		sym->dir_dep.expr = expr_alloc_or(sym->dir_dep.expr, parent->dep);
 	}
 	for (menu = parent->list; menu; menu = menu->next) {
 		if (sym && sym_is_choice(sym) &&
diff --git a/scripts/kconfig/nconf.c b/scripts/kconfig/nconf.c
index db56377..39ca1f1 100644
--- a/scripts/kconfig/nconf.c
+++ b/scripts/kconfig/nconf.c
@@ -7,7 +7,7 @@
  */
 #define _GNU_SOURCE
 #include <string.h>
-#define LKC_DIRECT_LINK
+
 #include "lkc.h"
 #include "nconf.h"
 #include <ctype.h>
@@ -373,18 +373,18 @@ static void print_function_line(void)
 	const int skip = 1;
 
 	for (i = 0; i < function_keys_num; i++) {
-		wattrset(main_window, attributes[FUNCTION_HIGHLIGHT]);
+		(void) wattrset(main_window, attributes[FUNCTION_HIGHLIGHT]);
 		mvwprintw(main_window, LINES-3, offset,
 				"%s",
 				function_keys[i].key_str);
-		wattrset(main_window, attributes[FUNCTION_TEXT]);
+		(void) wattrset(main_window, attributes[FUNCTION_TEXT]);
 		offset += strlen(function_keys[i].key_str);
 		mvwprintw(main_window, LINES-3,
 				offset, "%s",
 				function_keys[i].func);
 		offset += strlen(function_keys[i].func) + skip;
 	}
-	wattrset(main_window, attributes[NORMAL]);
+	(void) wattrset(main_window, attributes[NORMAL]);
 }
 
 /* help */
@@ -953,16 +953,16 @@ static void show_menu(const char *prompt, const char *instructions,
 	current_instructions = instructions;
 
 	clear();
-	wattrset(main_window, attributes[NORMAL]);
+	(void) wattrset(main_window, attributes[NORMAL]);
 	print_in_middle(stdscr, 1, 0, COLS,
 			menu_backtitle,
 			attributes[MAIN_HEADING]);
 
-	wattrset(main_window, attributes[MAIN_MENU_BOX]);
+	(void) wattrset(main_window, attributes[MAIN_MENU_BOX]);
 	box(main_window, 0, 0);
-	wattrset(main_window, attributes[MAIN_MENU_HEADING]);
+	(void) wattrset(main_window, attributes[MAIN_MENU_HEADING]);
 	mvwprintw(main_window, 0, 3, " %s ", prompt);
-	wattrset(main_window, attributes[NORMAL]);
+	(void) wattrset(main_window, attributes[NORMAL]);
 
 	set_menu_items(curses_menu, curses_menu_items);
 
@@ -1067,7 +1067,6 @@ static void conf(struct menu *menu)
 	struct menu *submenu = 0;
 	const char *prompt = menu_get_prompt(menu);
 	struct symbol *sym;
-	struct menu *active_menu = NULL;
 	int res;
 	int current_index = 0;
 	int last_top_row = 0;
@@ -1152,13 +1151,9 @@ static void conf(struct menu *menu)
 			continue;
 
 		submenu = (struct menu *) item_data();
-		active_menu = (struct menu *)item_data();
 		if (!submenu || !menu_is_visible(submenu))
 			continue;
-		if (submenu)
-			sym = submenu->sym;
-		else
-			sym = NULL;
+		sym = submenu->sym;
 
 		switch (res) {
 		case ' ':
@@ -1222,20 +1217,13 @@ static void conf_message_callback(const char *fmt, va_list ap)
 
 static void show_help(struct menu *menu)
 {
-	struct gstr help = str_new();
-
-	if (menu && menu->sym && menu_has_help(menu)) {
-		if (menu->sym->name) {
-			str_printf(&help, "%s%s:\n\n", CONFIG_, menu->sym->name);
-			str_append(&help, _(menu_get_help(menu)));
-			str_append(&help, "\n");
-			get_symbol_str(&help, menu->sym);
-		} else {
-			str_append(&help, _(menu_get_help(menu)));
-		}
-	} else {
-		str_append(&help, nohelp_text);
-	}
+	struct gstr help;
+
+	if (!menu)
+		return;
+
+	help = str_new();
+	menu_get_ext_help(menu, &help);
 	show_scroll_win(main_window, _(menu_get_prompt(menu)), str_get(&help));
 	str_free(&help);
 }
diff --git a/scripts/kconfig/qconf.cc b/scripts/kconfig/qconf.cc
index 16b2674..df274fe 100644
--- a/scripts/kconfig/qconf.cc
+++ b/scripts/kconfig/qconf.cc
@@ -1478,10 +1478,13 @@ void ConfigMainWindow::loadConfig(void)
 	ConfigView::updateListAll();
 }
 
-void ConfigMainWindow::saveConfig(void)
+bool ConfigMainWindow::saveConfig(void)
 {
-	if (conf_write(NULL))
+	if (conf_write(NULL)) {
 		QMessageBox::information(this, "qconf", _("Unable to save configuration!"));
+		return false;
+	}
+	return true;
 }
 
 void ConfigMainWindow::saveConfigAs(void)
@@ -1489,8 +1492,7 @@ void ConfigMainWindow::saveConfigAs(void)
 	QString s = Q3FileDialog::getSaveFileName(conf_get_configname(), NULL, this);
 	if (s.isNull())
 		return;
-	if (conf_write(QFile::encodeName(s)))
-		QMessageBox::information(this, "qconf", _("Unable to save configuration!"));
+	saveConfig();
 }
 
 void ConfigMainWindow::searchConfig(void)
@@ -1643,7 +1645,11 @@ void ConfigMainWindow::closeEvent(QCloseEvent* e)
 	mb.setButtonText(QMessageBox::Cancel, _("Cancel Exit"));
 	switch (mb.exec()) {
 	case QMessageBox::Yes:
-		conf_write(NULL);
+		if (saveConfig())
+			e->accept();
+		else
+			e->ignore();
+		break;
 	case QMessageBox::No:
 		e->accept();
 		break;
@@ -1673,7 +1679,7 @@ void ConfigMainWindow::showIntro(void)
 void ConfigMainWindow::showAbout(void)
 {
 	static const QString str = _("qconf is Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>.\n\n"
-		"Bug reports and feature request can also be entered at http://bugzilla.barebox.org/\n");
+		"Bug reports and feature request can also be entered at http://bugzilla.kernel.org/\n");
 
 	QMessageBox::information(this, "qconf", str);
 }
@@ -1746,10 +1752,6 @@ int main(int ac, char** av)
 	bindtextdomain(PACKAGE, LOCALEDIR);
 	textdomain(PACKAGE);
 
-#ifndef LKC_DIRECT_LINK
-	kconfig_load();
-#endif
-
 	progname = av[0];
 	configApp = new QApplication(ac, av);
 	if (ac > 1 && av[1][0] == '-') {
diff --git a/scripts/kconfig/qconf.h b/scripts/kconfig/qconf.h
index 91677d9..3715b3e 100644
--- a/scripts/kconfig/qconf.h
+++ b/scripts/kconfig/qconf.h
@@ -311,7 +311,7 @@ public slots:
 	void listFocusChanged(void);
 	void goBack(void);
 	void loadConfig(void);
-	void saveConfig(void);
+	bool saveConfig(void);
 	void saveConfigAs(void);
 	void searchConfig(void);
 	void showSingleView(void);
diff --git a/scripts/kconfig/streamline_config.pl b/scripts/kconfig/streamline_config.pl
index 4014971..a4fe923 100644
--- a/scripts/kconfig/streamline_config.pl
+++ b/scripts/kconfig/streamline_config.pl
@@ -1,6 +1,6 @@
 #!/usr/bin/perl -w
 #
-# Copywrite 2005-2009 - Steven Rostedt
+# Copyright 2005-2009 - Steven Rostedt
 # Licensed under the terms of the GNU GPL License version 2
 #
 #  It's simple enough to figure out how this works.
@@ -8,7 +8,7 @@
 #
 # What it does?
 #
-#   If you have installed a Linux barebox from a distribution
+#   If you have installed a Linux kernel from a distribution
 #   that turns on way too many modules than you need, and
 #   you only want the modules you use, then this program
 #   is perfect for you.
@@ -18,9 +18,9 @@
 #
 # Howto:
 #
-#  1. Boot up the barebox that you want to stream line the config on.
+#  1. Boot up the kernel that you want to stream line the config on.
 #  2. Change directory to the directory holding the source of the
-#       barebox that you just booted.
+#       kernel that you just booted.
 #  3. Copy the configuraton file to this directory as .config
 #  4. Have all your devices that you need modules for connected and
 #      operational (make sure that their corresponding modules are loaded)
@@ -30,7 +30,7 @@
 #  7. copy the config_strip file to .config
 #  8. Run "make oldconfig"
 #
-#  Now your barebox is ready to be built with only the modules that
+#  Now your kernel is ready to be built with only the modules that
 #  are loaded.
 #
 # Here's what I did with my Debian distribution.
@@ -73,17 +73,17 @@ my @searchconfigs = (
 	    "test" => "scripts/extract-ikconfig",
 	},
 	{
-	    "file" => "/lib/modules/$uname/barebox/barebox/configs.ko",
+	    "file" => "/lib/modules/$uname/kernel/kernel/configs.ko",
 	    "exec" => "scripts/extract-ikconfig",
 	    "test" => "scripts/extract-ikconfig",
 	},
 	{
-	    "file" => "barebox/configs.ko",
+	    "file" => "kernel/configs.ko",
 	    "exec" => "scripts/extract-ikconfig",
 	    "test" => "scripts/extract-ikconfig",
 	},
 	{
-	    "file" => "barebox/configs.o",
+	    "file" => "kernel/configs.o",
 	    "exec" => "scripts/extract-ikconfig",
 	    "test" => "scripts/extract-ikconfig",
 	},
diff --git a/scripts/kconfig/symbol.c b/scripts/kconfig/symbol.c
index a796c95..071f00c 100644
--- a/scripts/kconfig/symbol.c
+++ b/scripts/kconfig/symbol.c
@@ -9,7 +9,6 @@
 #include <regex.h>
 #include <sys/utsname.h>
 
-#define LKC_DIRECT_LINK
 #include "lkc.h"
 
 struct symbol symbol_yes = {
@@ -751,7 +750,8 @@ const char *sym_get_string_value(struct symbol *sym)
 		case no:
 			return "n";
 		case mod:
-			return "m";
+			sym_calc_value(modules_sym);
+			return (modules_sym->curr.tri == no) ? "n" : "m";
 		case yes:
 			return "y";
 		}
@@ -893,6 +893,49 @@ const char *sym_expand_string_value(const char *in)
 	return res;
 }
 
+const char *sym_escape_string_value(const char *in)
+{
+	const char *p;
+	size_t reslen;
+	char *res;
+	size_t l;
+
+	reslen = strlen(in) + strlen("\"\"") + 1;
+
+	p = in;
+	for (;;) {
+		l = strcspn(p, "\"\\");
+		p += l;
+
+		if (p[0] == '\0')
+			break;
+
+		reslen++;
+		p++;
+	}
+
+	res = malloc(reslen);
+	res[0] = '\0';
+
+	strcat(res, "\"");
+
+	p = in;
+	for (;;) {
+		l = strcspn(p, "\"\\");
+		strncat(res, p, l);
+		p += l;
+
+		if (p[0] == '\0')
+			break;
+
+		strcat(res, "\\");
+		strncat(res, p++, 1);
+	}
+
+	strcat(res, "\"");
+	return res;
+}
+
 struct symbol **sym_re_search(const char *pattern)
 {
 	struct symbol *sym, **sym_arr = NULL;
diff --git a/scripts/kconfig/util.c b/scripts/kconfig/util.c
index 6330cc8..d0b8b23 100644
--- a/scripts/kconfig/util.c
+++ b/scripts/kconfig/util.c
@@ -5,6 +5,8 @@
  * Released under the terms of the GNU GPL v2.0.
  */
 
+#include <stdarg.h>
+#include <stdlib.h>
 #include <string.h>
 #include "lkc.h"
 
diff --git a/scripts/kconfig/zconf.gperf b/scripts/kconfig/zconf.gperf
index c9e690e..f14ab41 100644
--- a/scripts/kconfig/zconf.gperf
+++ b/scripts/kconfig/zconf.gperf
@@ -9,7 +9,7 @@
 
 struct kconf_id;
 
-static struct kconf_id *kconf_id_lookup(register const char *str, register unsigned int len);
+static const struct kconf_id *kconf_id_lookup(register const char *str, register unsigned int len);
 
 %%
 mainmenu,	T_MAINMENU,	TF_COMMAND
diff --git a/scripts/kconfig/zconf.hash.c_shipped b/scripts/kconfig/zconf.hash.c_shipped
index 4055d5d..40df000 100644
--- a/scripts/kconfig/zconf.hash.c_shipped
+++ b/scripts/kconfig/zconf.hash.c_shipped
@@ -1,6 +1,5 @@
-/* ANSI-C code produced by gperf version 3.0.3 */
-/* Command-line: gperf  */
-/* Computed positions: -k'1,3' */
+/* ANSI-C code produced by gperf version 3.0.4 */
+/* Command-line: gperf -t --output-file scripts/kconfig/zconf.hash.c_shipped -a -C -E -g -k '1,3,$' -p -t scripts/kconfig/zconf.gperf  */
 
 #if !((' ' == 32) && ('!' == 33) && ('"' == 34) && ('#' == 35) \
       && ('%' == 37) && ('&' == 38) && ('\'' == 39) && ('(' == 40) \
@@ -29,10 +28,11 @@
 #error "gperf generated tables don't work with this execution character set. Please report a bug to <bug-gnu-gperf@gnu.org>."
 #endif
 
+#line 10 "scripts/kconfig/zconf.gperf"
 struct kconf_id;
 
-static struct kconf_id *kconf_id_lookup(register const char *str, register unsigned int len);
-/* maximum key range = 50, duplicates = 0 */
+static const struct kconf_id *kconf_id_lookup(register const char *str, register unsigned int len);
+/* maximum key range = 71, duplicates = 0 */
 
 #ifdef __GNUC__
 __inline
@@ -44,34 +44,34 @@ inline
 static unsigned int
 kconf_id_hash (register const char *str, register unsigned int len)
 {
-  static unsigned char asso_values[] =
+  static const unsigned char asso_values[] =
     {
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 40,  5,
-       0,  0,  5, 52,  0, 20, 52, 52, 10, 20,
-       5,  0, 35, 52,  0, 30,  0, 15,  0, 52,
-      15, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
-      52, 52, 52, 52, 52, 52
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 25, 25,
+       0,  0,  0,  5,  0,  0, 73, 73,  5,  0,
+      10,  5, 45, 73, 20, 20,  0, 15, 15, 73,
+      20, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
+      73, 73, 73, 73, 73, 73
     };
   register int hval = len;
 
@@ -85,87 +85,87 @@ kconf_id_hash (register const char *str, register unsigned int len)
         hval += asso_values[(unsigned char)str[0]];
         break;
     }
-  return hval;
+  return hval + asso_values[(unsigned char)str[len - 1]];
 }
 
 struct kconf_id_strings_t
   {
-    char kconf_id_strings_str2[sizeof("on")];
-    char kconf_id_strings_str3[sizeof("env")];
+    char kconf_id_strings_str2[sizeof("if")];
+    char kconf_id_strings_str3[sizeof("int")];
     char kconf_id_strings_str5[sizeof("endif")];
-    char kconf_id_strings_str6[sizeof("option")];
-    char kconf_id_strings_str7[sizeof("endmenu")];
-    char kconf_id_strings_str8[sizeof("optional")];
+    char kconf_id_strings_str7[sizeof("default")];
+    char kconf_id_strings_str8[sizeof("tristate")];
     char kconf_id_strings_str9[sizeof("endchoice")];
-    char kconf_id_strings_str10[sizeof("range")];
-    char kconf_id_strings_str11[sizeof("choice")];
-    char kconf_id_strings_str12[sizeof("default")];
+    char kconf_id_strings_str12[sizeof("def_tristate")];
     char kconf_id_strings_str13[sizeof("def_bool")];
-    char kconf_id_strings_str14[sizeof("help")];
-    char kconf_id_strings_str16[sizeof("config")];
-    char kconf_id_strings_str17[sizeof("def_tristate")];
-    char kconf_id_strings_str18[sizeof("hex")];
-    char kconf_id_strings_str19[sizeof("defconfig_list")];
-    char kconf_id_strings_str22[sizeof("if")];
-    char kconf_id_strings_str23[sizeof("int")];
+    char kconf_id_strings_str14[sizeof("defconfig_list")];
+    char kconf_id_strings_str17[sizeof("on")];
+    char kconf_id_strings_str18[sizeof("optional")];
+    char kconf_id_strings_str21[sizeof("option")];
+    char kconf_id_strings_str22[sizeof("endmenu")];
+    char kconf_id_strings_str23[sizeof("mainmenu")];
+    char kconf_id_strings_str25[sizeof("menuconfig")];
     char kconf_id_strings_str27[sizeof("modules")];
-    char kconf_id_strings_str28[sizeof("tristate")];
     char kconf_id_strings_str29[sizeof("menu")];
+    char kconf_id_strings_str31[sizeof("select")];
     char kconf_id_strings_str32[sizeof("comment")];
-    char kconf_id_strings_str35[sizeof("menuconfig")];
-    char kconf_id_strings_str36[sizeof("string")];
-    char kconf_id_strings_str37[sizeof("visible")];
-    char kconf_id_strings_str41[sizeof("prompt")];
-    char kconf_id_strings_str42[sizeof("depends")];
-    char kconf_id_strings_str44[sizeof("bool")];
-    char kconf_id_strings_str46[sizeof("select")];
+    char kconf_id_strings_str33[sizeof("env")];
+    char kconf_id_strings_str35[sizeof("range")];
+    char kconf_id_strings_str36[sizeof("choice")];
+    char kconf_id_strings_str39[sizeof("bool")];
+    char kconf_id_strings_str41[sizeof("source")];
+    char kconf_id_strings_str42[sizeof("visible")];
+    char kconf_id_strings_str43[sizeof("hex")];
+    char kconf_id_strings_str46[sizeof("config")];
     char kconf_id_strings_str47[sizeof("boolean")];
-    char kconf_id_strings_str48[sizeof("mainmenu")];
-    char kconf_id_strings_str51[sizeof("source")];
+    char kconf_id_strings_str51[sizeof("string")];
+    char kconf_id_strings_str54[sizeof("help")];
+    char kconf_id_strings_str56[sizeof("prompt")];
+    char kconf_id_strings_str72[sizeof("depends")];
   };
-static struct kconf_id_strings_t kconf_id_strings_contents =
+static const struct kconf_id_strings_t kconf_id_strings_contents =
   {
-    "on",
-    "env",
+    "if",
+    "int",
     "endif",
-    "option",
-    "endmenu",
-    "optional",
-    "endchoice",
-    "range",
-    "choice",
     "default",
-    "def_bool",
-    "help",
-    "config",
+    "tristate",
+    "endchoice",
     "def_tristate",
-    "hex",
+    "def_bool",
     "defconfig_list",
-    "if",
-    "int",
+    "on",
+    "optional",
+    "option",
+    "endmenu",
+    "mainmenu",
+    "menuconfig",
     "modules",
-    "tristate",
     "menu",
+    "select",
     "comment",
-    "menuconfig",
-    "string",
-    "visible",
-    "prompt",
-    "depends",
+    "env",
+    "range",
+    "choice",
     "bool",
-    "select",
+    "source",
+    "visible",
+    "hex",
+    "config",
     "boolean",
-    "mainmenu",
-    "source"
+    "string",
+    "help",
+    "prompt",
+    "depends"
   };
 #define kconf_id_strings ((const char *) &kconf_id_strings_contents)
 #ifdef __GNUC__
 __inline
-#ifdef __GNUC_STDC_INLINE__
+#if defined __GNUC_STDC_INLINE__ || defined __GNUC_GNU_INLINE__
 __attribute__ ((__gnu_inline__))
 #endif
 #endif
-struct kconf_id *
+const struct kconf_id *
 kconf_id_lookup (register const char *str, register unsigned int len)
 {
   enum
@@ -174,54 +174,94 @@ kconf_id_lookup (register const char *str, register unsigned int len)
       MIN_WORD_LENGTH = 2,
       MAX_WORD_LENGTH = 14,
       MIN_HASH_VALUE = 2,
-      MAX_HASH_VALUE = 51
+      MAX_HASH_VALUE = 72
     };
 
-  static struct kconf_id wordlist[] =
+  static const struct kconf_id wordlist[] =
     {
       {-1}, {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str2,		T_ON,		TF_PARAM},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str3,		T_OPT_ENV,	TF_OPTION},
+#line 25 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str2,		T_IF,		TF_COMMAND|TF_PARAM},
+#line 36 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str3,		T_TYPE,		TF_COMMAND, S_INT},
       {-1},
+#line 26 "scripts/kconfig/zconf.gperf"
       {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str5,		T_ENDIF,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str6,		T_OPTION,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str7,	T_ENDMENU,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str8,	T_OPTIONAL,	TF_COMMAND},
+      {-1},
+#line 29 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str7,	T_DEFAULT,	TF_COMMAND, S_UNKNOWN},
+#line 31 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str8,	T_TYPE,		TF_COMMAND, S_TRISTATE},
+#line 20 "scripts/kconfig/zconf.gperf"
       {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str9,	T_ENDCHOICE,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str10,		T_RANGE,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str11,		T_CHOICE,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str12,	T_DEFAULT,	TF_COMMAND, S_UNKNOWN},
+      {-1}, {-1},
+#line 32 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str12,	T_DEFAULT,	TF_COMMAND, S_TRISTATE},
+#line 35 "scripts/kconfig/zconf.gperf"
       {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str13,	T_DEFAULT,	TF_COMMAND, S_BOOLEAN},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str14,		T_HELP,		TF_COMMAND},
-      {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str16,		T_CONFIG,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str17,	T_DEFAULT,	TF_COMMAND, S_TRISTATE},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str18,		T_TYPE,		TF_COMMAND, S_HEX},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str19,	T_OPT_DEFCONFIG_LIST,TF_OPTION},
+#line 45 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str14,	T_OPT_DEFCONFIG_LIST,TF_OPTION},
       {-1}, {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str22,		T_IF,		TF_COMMAND|TF_PARAM},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str23,		T_TYPE,		TF_COMMAND, S_INT},
-      {-1}, {-1}, {-1},
+#line 43 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str17,		T_ON,		TF_PARAM},
+#line 28 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str18,	T_OPTIONAL,	TF_COMMAND},
+      {-1}, {-1},
+#line 42 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str21,		T_OPTION,	TF_COMMAND},
+#line 17 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str22,	T_ENDMENU,	TF_COMMAND},
+#line 15 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str23,	T_MAINMENU,	TF_COMMAND},
+      {-1},
+#line 23 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str25,	T_MENUCONFIG,	TF_COMMAND},
+      {-1},
+#line 44 "scripts/kconfig/zconf.gperf"
       {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str27,	T_OPT_MODULES,	TF_OPTION},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str28,	T_TYPE,		TF_COMMAND, S_TRISTATE},
+      {-1},
+#line 16 "scripts/kconfig/zconf.gperf"
       {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str29,		T_MENU,		TF_COMMAND},
-      {-1}, {-1},
+      {-1},
+#line 39 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str31,		T_SELECT,	TF_COMMAND},
+#line 21 "scripts/kconfig/zconf.gperf"
       {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str32,	T_COMMENT,	TF_COMMAND},
-      {-1}, {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str35,	T_MENUCONFIG,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str36,		T_TYPE,		TF_COMMAND, S_STRING},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str37,	T_VISIBLE,	TF_COMMAND},
-      {-1}, {-1}, {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str41,		T_PROMPT,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str42,	T_DEPENDS,	TF_COMMAND},
+#line 46 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str33,		T_OPT_ENV,	TF_OPTION},
       {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str44,		T_TYPE,		TF_COMMAND, S_BOOLEAN},
+#line 40 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str35,		T_RANGE,	TF_COMMAND},
+#line 19 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str36,		T_CHOICE,	TF_COMMAND},
+      {-1}, {-1},
+#line 33 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str39,		T_TYPE,		TF_COMMAND, S_BOOLEAN},
       {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str46,		T_SELECT,	TF_COMMAND},
+#line 18 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str41,		T_SOURCE,	TF_COMMAND},
+#line 41 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str42,	T_VISIBLE,	TF_COMMAND},
+#line 37 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str43,		T_TYPE,		TF_COMMAND, S_HEX},
+      {-1}, {-1},
+#line 22 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str46,		T_CONFIG,	TF_COMMAND},
+#line 34 "scripts/kconfig/zconf.gperf"
       {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str47,	T_TYPE,		TF_COMMAND, S_BOOLEAN},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str48,	T_MAINMENU,	TF_COMMAND},
+      {-1}, {-1}, {-1},
+#line 38 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str51,		T_TYPE,		TF_COMMAND, S_STRING},
       {-1}, {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str51,		T_SOURCE,	TF_COMMAND}
+#line 24 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str54,		T_HELP,		TF_COMMAND},
+      {-1},
+#line 30 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str56,		T_PROMPT,	TF_COMMAND},
+      {-1}, {-1}, {-1}, {-1}, {-1}, {-1}, {-1}, {-1}, {-1},
+      {-1}, {-1}, {-1}, {-1}, {-1}, {-1},
+#line 27 "scripts/kconfig/zconf.gperf"
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str72,	T_DEPENDS,	TF_COMMAND}
     };
 
   if (len <= MAX_WORD_LENGTH && len >= MIN_WORD_LENGTH)
@@ -242,4 +282,5 @@ kconf_id_lookup (register const char *str, register unsigned int len)
     }
   return 0;
 }
+#line 47 "scripts/kconfig/zconf.gperf"
 
diff --git a/scripts/kconfig/zconf.l b/scripts/kconfig/zconf.l
index 0c25978..00f9d3a 100644
--- a/scripts/kconfig/zconf.l
+++ b/scripts/kconfig/zconf.l
@@ -1,5 +1,5 @@
-%option backup nostdinit noyywrap never-interactive full ecs
-%option 8bit backup nodefault perf-report perf-report
+%option nostdinit noyywrap never-interactive full ecs
+%option 8bit nodefault perf-report perf-report
 %option noinput
 %x COMMAND HELP STRING PARAM
 %{
@@ -14,7 +14,6 @@
 #include <string.h>
 #include <unistd.h>
 
-#define LKC_DIRECT_LINK
 #include "lkc.h"
 
 #define START_STRSIZE	16
@@ -96,7 +95,7 @@ n	[A-Za-z0-9_]
 
 <COMMAND>{
 	{n}+	{
-		struct kconf_id *id = kconf_id_lookup(yytext, yyleng);
+		const struct kconf_id *id = kconf_id_lookup(yytext, yyleng);
 		BEGIN(PARAM);
 		current_pos.file = current_file;
 		current_pos.lineno = current_file->lineno;
@@ -132,7 +131,7 @@ n	[A-Za-z0-9_]
 	\n	BEGIN(INITIAL); current_file->lineno++; return T_EOL;
 	---	/* ignore */
 	({n}|[-/.])+	{
-		struct kconf_id *id = kconf_id_lookup(yytext, yyleng);
+		const struct kconf_id *id = kconf_id_lookup(yytext, yyleng);
 		if (id && id->flags & TF_PARAM) {
 			zconflval.id = id;
 			return id->token;
@@ -262,7 +261,7 @@ static void zconf_endhelp(void)
  * ./name
  * $(srctree)/name
  * The latter is used when srctree is separate from objtree
- * when compiling the barebox.
+ * when compiling the kernel.
  * Return NULL if file is not found.
  */
 FILE *zconf_fopen(const char *name)
@@ -294,11 +293,11 @@ void zconf_initscan(const char *name)
 
 	current_file = file_lookup(name);
 	current_file->lineno = 1;
-	current_file->flags = FILE_BUSY;
 }
 
 void zconf_nextfile(const char *name)
 {
+	struct file *iter;
 	struct file *file = file_lookup(name);
 	struct buffer *buf = malloc(sizeof(*buf));
 	memset(buf, 0, sizeof(*buf));
@@ -314,18 +313,25 @@ void zconf_nextfile(const char *name)
 	buf->parent = current_buf;
 	current_buf = buf;
 
-	if (file->flags & FILE_BUSY) {
-		printf("%s:%d: do not source '%s' from itself\n",
-		       zconf_curname(), zconf_lineno(), name);
-		exit(1);
-	}
-	if (file->flags & FILE_SCANNED) {
-		printf("%s:%d: file '%s' is already sourced from '%s'\n",
-		       zconf_curname(), zconf_lineno(), name,
-		       file->parent->name);
-		exit(1);
+	for (iter = current_file->parent; iter; iter = iter->parent ) {
+		if (!strcmp(current_file->name,iter->name) ) {
+			printf("%s:%d: recursive inclusion detected. "
+			       "Inclusion path:\n  current file : '%s'\n",
+			       zconf_curname(), zconf_lineno(),
+			       zconf_curname());
+			iter = current_file->parent;
+			while (iter && \
+			       strcmp(iter->name,current_file->name)) {
+				printf("  included from: '%s:%d'\n",
+				       iter->name, iter->lineno-1);
+				iter = iter->parent;
+			}
+			if (iter)
+				printf("  included from: '%s:%d'\n",
+				       iter->name, iter->lineno+1);
+			exit(1);
+		}
 	}
-	file->flags |= FILE_BUSY;
 	file->lineno = 1;
 	file->parent = current_file;
 	current_file = file;
@@ -335,8 +341,6 @@ static void zconf_endfile(void)
 {
 	struct buffer *parent;
 
-	current_file->flags |= FILE_SCANNED;
-	current_file->flags &= ~FILE_BUSY;
 	current_file = current_file->parent;
 
 	parent = current_buf->parent;
diff --git a/scripts/kconfig/zconf.tab.c_shipped b/scripts/kconfig/zconf.tab.c_shipped
index 4c5495e..90d8cb0 100644
--- a/scripts/kconfig/zconf.tab.c_shipped
+++ b/scripts/kconfig/zconf.tab.c_shipped
@@ -1,10 +1,9 @@
-
-/* A Bison parser, made by GNU Bison 2.4.1.  */
+/* A Bison parser, made by GNU Bison 2.4.3.  */
 
 /* Skeleton implementation for Bison's Yacc-like parsers in C
    
-      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
-   Free Software Foundation, Inc.
+      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006,
+   2009, 2010 Free Software Foundation, Inc.
    
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
@@ -46,7 +45,7 @@
 #define YYBISON 1
 
 /* Bison version.  */
-#define YYBISON_VERSION "2.4.1"
+#define YYBISON_VERSION "2.4.3"
 
 /* Skeleton name.  */
 #define YYSKELETON_NAME "yacc.c"
@@ -88,7 +87,6 @@
 #include <string.h>
 #include <stdbool.h>
 
-#define LKC_DIRECT_LINK
 #include "lkc.h"
 
 #define printd(mask, fmt...) if (cdebug & (mask)) printf(fmt)
@@ -102,22 +100,18 @@ extern int zconflex(void);
 static void zconfprint(const char *err, ...);
 static void zconf_error(const char *err, ...);
 static void zconferror(const char *err);
-static bool zconf_endtoken(struct kconf_id *id, int starttoken, int endtoken);
+static bool zconf_endtoken(const struct kconf_id *id, int starttoken, int endtoken);
 
 struct symbol *symbol_hash[SYMBOL_HASHSIZE];
 
 static struct menu *current_menu, *current_entry;
 
-#define YYDEBUG 0
-#if YYDEBUG
-#define YYERROR_VERBOSE
-#endif
 
 
 
 /* Enabling traces.  */
 #ifndef YYDEBUG
-# define YYDEBUG 0
+# define YYDEBUG 1
 #endif
 
 /* Enabling verbose error messages.  */
@@ -188,7 +182,7 @@ typedef union YYSTYPE
 	struct symbol *symbol;
 	struct expr *expr;
 	struct menu *menu;
-	struct kconf_id *id;
+	const struct kconf_id *id;
 
 
 
@@ -255,7 +249,7 @@ typedef short int yytype_int16;
 #define YYSIZE_MAXIMUM ((YYSIZE_T) -1)
 
 #ifndef YY_
-# if YYENABLE_NLS
+# if defined YYENABLE_NLS && YYENABLE_NLS
 #  if ENABLE_NLS
 #   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
 #   define YY_(msgid) dgettext ("bison-runtime", msgid)
@@ -535,18 +529,18 @@ static const yytype_int8 yyrhs[] =
 /* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
 static const yytype_uint16 yyrline[] =
 {
-       0,   108,   108,   108,   110,   110,   112,   114,   115,   116,
-     117,   118,   119,   123,   127,   127,   127,   127,   127,   127,
-     127,   127,   131,   132,   133,   134,   135,   136,   140,   141,
-     147,   155,   161,   169,   179,   181,   182,   183,   184,   185,
-     186,   189,   197,   203,   213,   219,   225,   228,   230,   241,
-     242,   247,   256,   261,   269,   272,   274,   275,   276,   277,
-     278,   281,   287,   298,   304,   314,   316,   321,   329,   337,
-     340,   342,   343,   344,   349,   356,   363,   368,   376,   379,
-     381,   382,   383,   386,   394,   401,   408,   414,   421,   423,
-     424,   425,   428,   436,   438,   439,   442,   449,   451,   456,
-     457,   460,   461,   462,   466,   467,   470,   471,   474,   475,
-     476,   477,   478,   479,   480,   483,   484,   487,   488
+       0,   104,   104,   104,   106,   106,   108,   110,   111,   112,
+     113,   114,   115,   119,   123,   123,   123,   123,   123,   123,
+     123,   123,   127,   128,   129,   130,   131,   132,   136,   137,
+     143,   151,   157,   165,   175,   177,   178,   179,   180,   181,
+     182,   185,   193,   199,   209,   215,   221,   224,   226,   237,
+     238,   243,   252,   257,   265,   268,   270,   271,   272,   273,
+     274,   277,   283,   294,   300,   310,   312,   317,   325,   333,
+     336,   338,   339,   340,   345,   352,   359,   364,   372,   375,
+     377,   378,   379,   382,   390,   397,   404,   410,   417,   419,
+     420,   421,   424,   432,   434,   435,   438,   445,   447,   452,
+     453,   456,   457,   458,   462,   463,   466,   467,   470,   471,
+     472,   473,   474,   475,   476,   479,   480,   483,   484
 };
 #endif
 
@@ -806,9 +800,18 @@ static const yytype_uint8 yystos[] =
 
 /* Like YYERROR except do call yyerror.  This remains here temporarily
    to ease the transition to the new meaning of YYERROR, for GCC.
-   Once GCC version 2 has supplanted version 1, this can go.  */
+   Once GCC version 2 has supplanted version 1, this can go.  However,
+   YYFAIL appears to be in use.  Nevertheless, it is formally deprecated
+   in Bison 2.4.2's NEWS entry, where a plan to phase it out is
+   discussed.  */
 
 #define YYFAIL		goto yyerrlab
+#if defined YYFAIL
+  /* This is here to suppress warnings from the GCC cpp's
+     -Wunused-macros.  Normally we don't worry about that warning, but
+     some users do, and we want to make it easy for users to remove
+     YYFAIL uses, which will produce warnings from Bison 2.5.  */
+#endif
 
 #define YYRECOVERING()  (!!yyerrstatus)
 
@@ -865,7 +868,7 @@ while (YYID (0))
    we won't break user code: when these are the locations we know.  */
 
 #ifndef YY_LOCATION_PRINT
-# if YYLTYPE_IS_TRIVIAL
+# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
 #  define YY_LOCATION_PRINT(File, Loc)			\
      fprintf (File, "%d.%d-%d.%d",			\
 	      (Loc).first_line, (Loc).first_column,	\
@@ -1753,7 +1756,7 @@ yyreduce:
   case 48:
 
     {
-	struct kconf_id *id = kconf_id_lookup((yyvsp[(2) - (3)].string), strlen((yyvsp[(2) - (3)].string)));
+	const struct kconf_id *id = kconf_id_lookup((yyvsp[(2) - (3)].string), strlen((yyvsp[(2) - (3)].string)));
 	if (id && id->flags & TF_OPTION)
 		menu_add_option(id->token, (yyvsp[(3) - (3)].string));
 	else
@@ -2256,12 +2259,10 @@ void conf_parse(const char *name)
 	modules_sym = sym_lookup(NULL, 0);
 	modules_sym->type = S_BOOLEAN;
 	modules_sym->flags |= SYMBOL_AUTO;
-	rootmenu.prompt = menu_add_prompt(P_MENU, "Linux Kernel Configuration", NULL);
+	rootmenu.prompt = menu_add_prompt(P_MENU, "Barebox Configuration", NULL);
 
-#if YYDEBUG
 	if (getenv("ZCONF_DEBUG"))
 		zconfdebug = 1;
-#endif
 	zconfparse();
 	if (zconfnerrs)
 		exit(1);
@@ -2300,7 +2301,7 @@ static const char *zconf_tokenname(int token)
 	return "<token>";
 }
 
-static bool zconf_endtoken(struct kconf_id *id, int starttoken, int endtoken)
+static bool zconf_endtoken(const struct kconf_id *id, int starttoken, int endtoken)
 {
 	if (id->token != endtoken) {
 		zconf_error("unexpected '%s' within %s block",
@@ -2345,9 +2346,7 @@ static void zconf_error(const char *err, ...)
 
 static void zconferror(const char *err)
 {
-#if YYDEBUG
 	fprintf(stderr, "%s:%d: %s\n", zconf_curname(), zconf_lineno() + 1, err);
-#endif
 }
 
 static void print_quoted_string(FILE *out, const char *str)
@@ -2496,7 +2495,7 @@ void zconfdump(FILE *out)
 	}
 }
 
-#include "lex.zconf.c"
+#include "zconf.lex.c"
 #include "util.c"
 #include "confdata.c"
 #include "expr.c"
diff --git a/scripts/kconfig/zconf.y b/scripts/kconfig/zconf.y
index 49fb4ab..6a2a2d2 100644
--- a/scripts/kconfig/zconf.y
+++ b/scripts/kconfig/zconf.y
@@ -11,7 +11,6 @@
 #include <string.h>
 #include <stdbool.h>
 
-#define LKC_DIRECT_LINK
 #include "lkc.h"
 
 #define printd(mask, fmt...) if (cdebug & (mask)) printf(fmt)
@@ -25,16 +24,12 @@ extern int zconflex(void);
 static void zconfprint(const char *err, ...);
 static void zconf_error(const char *err, ...);
 static void zconferror(const char *err);
-static bool zconf_endtoken(struct kconf_id *id, int starttoken, int endtoken);
+static bool zconf_endtoken(const struct kconf_id *id, int starttoken, int endtoken);
 
 struct symbol *symbol_hash[SYMBOL_HASHSIZE];
 
 static struct menu *current_menu, *current_entry;
 
-#define YYDEBUG 0
-#if YYDEBUG
-#define YYERROR_VERBOSE
-#endif
 %}
 %expect 30
 
@@ -45,7 +40,7 @@ static struct menu *current_menu, *current_entry;
 	struct symbol *symbol;
 	struct expr *expr;
 	struct menu *menu;
-	struct kconf_id *id;
+	const struct kconf_id *id;
 }
 
 %token <id>T_MAINMENU
@@ -229,7 +224,7 @@ symbol_option_list:
 	  /* empty */
 	| symbol_option_list T_WORD symbol_option_arg
 {
-	struct kconf_id *id = kconf_id_lookup($2, strlen($2));
+	const struct kconf_id *id = kconf_id_lookup($2, strlen($2));
 	if (id && id->flags & TF_OPTION)
 		menu_add_option(id->token, $3);
 	else
@@ -501,12 +496,10 @@ void conf_parse(const char *name)
 	modules_sym = sym_lookup(NULL, 0);
 	modules_sym->type = S_BOOLEAN;
 	modules_sym->flags |= SYMBOL_AUTO;
-	rootmenu.prompt = menu_add_prompt(P_MENU, "Linux Kernel Configuration", NULL);
+	rootmenu.prompt = menu_add_prompt(P_MENU, "Barebox Configuration", NULL);
 
-#if YYDEBUG
 	if (getenv("ZCONF_DEBUG"))
 		zconfdebug = 1;
-#endif
 	zconfparse();
 	if (zconfnerrs)
 		exit(1);
@@ -545,7 +538,7 @@ static const char *zconf_tokenname(int token)
 	return "<token>";
 }
 
-static bool zconf_endtoken(struct kconf_id *id, int starttoken, int endtoken)
+static bool zconf_endtoken(const struct kconf_id *id, int starttoken, int endtoken)
 {
 	if (id->token != endtoken) {
 		zconf_error("unexpected '%s' within %s block",
@@ -590,9 +583,7 @@ static void zconf_error(const char *err, ...)
 
 static void zconferror(const char *err)
 {
-#if YYDEBUG
 	fprintf(stderr, "%s:%d: %s\n", zconf_curname(), zconf_lineno() + 1, err);
-#endif
 }
 
 static void print_quoted_string(FILE *out, const char *str)
@@ -741,7 +732,7 @@ void zconfdump(FILE *out)
 	}
 }
 
-#include "lex.zconf.c"
+#include "zconf.lex.c"
 #include "util.c"
 #include "confdata.c"
 #include "expr.c"
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
