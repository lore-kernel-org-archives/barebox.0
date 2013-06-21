Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Upvkj-0002ai-KR
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 07:27:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Jun 2013 09:27:02 +0200
Message-Id: <1371799622-31012-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] kconfig: sync to linux v3.10-rc6
To: barebox@lists.infradead.org

This brings us some new features like directly jumping to search results.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/kconfig/.gitignore                 |    2 -
 scripts/kconfig/Makefile                   |   69 +-
 scripts/kconfig/check.sh                   |    2 +-
 scripts/kconfig/conf.c                     |   66 +-
 scripts/kconfig/confdata.c                 |  188 ++-
 scripts/kconfig/expr.c                     |   10 +-
 scripts/kconfig/expr.h                     |   11 +
 scripts/kconfig/gconf.c                    |   13 +-
 scripts/kconfig/kconfig_load.c             |   35 -
 scripts/kconfig/lex.zconf.c_shipped        | 2430 ----------------------------
 scripts/kconfig/list.h                     |  131 ++
 scripts/kconfig/lkc.h                      |   14 +-
 scripts/kconfig/lkc_proto.h                |    6 +-
 scripts/kconfig/lxdialog/check-lxdialog.sh |   15 +-
 scripts/kconfig/lxdialog/checklist.c       |    4 +
 scripts/kconfig/lxdialog/dialog.h          |   21 +-
 scripts/kconfig/lxdialog/inputbox.c        |  125 +-
 scripts/kconfig/lxdialog/menubox.c         |   33 +-
 scripts/kconfig/lxdialog/textbox.c         |  178 +-
 scripts/kconfig/lxdialog/util.c            |   56 +-
 scripts/kconfig/lxdialog/yesno.c           |    4 +
 scripts/kconfig/mconf.c                    |  270 +++-
 scripts/kconfig/menu.c                     |  103 +-
 scripts/kconfig/merge_config.sh            |  150 ++
 scripts/kconfig/nconf.c                    |  348 ++--
 scripts/kconfig/nconf.gui.c                |   10 +-
 scripts/kconfig/qconf.cc                   |    1 +
 scripts/kconfig/streamline_config.pl       |  293 +++-
 scripts/kconfig/symbol.c                   |   21 +-
 scripts/kconfig/util.c                     |   23 +-
 scripts/kconfig/zconf.l                    |    8 +-
 scripts/kconfig/zconf.lex.c_shipped        |    8 +-
 scripts/kconfig/zconf.tab.c_shipped        |   13 +-
 33 files changed, 1604 insertions(+), 3057 deletions(-)
 delete mode 100644 scripts/kconfig/kconfig_load.c
 delete mode 100644 scripts/kconfig/lex.zconf.c_shipped
 create mode 100644 scripts/kconfig/list.h
 create mode 100755 scripts/kconfig/merge_config.sh

diff --git a/scripts/kconfig/.gitignore b/scripts/kconfig/.gitignore
index 9cd5120..be603c4 100644
--- a/scripts/kconfig/.gitignore
+++ b/scripts/kconfig/.gitignore
@@ -2,13 +2,11 @@
 # Generated files
 #
 config*
-lex.*.c
 *.lex.c
 *.tab.c
 *.tab.h
 zconf.hash.c
 *.moc
-lkc_defs.h
 gconf.glade.h
 *.pot
 *.mo
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index ba573fe..844bc9d 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -11,6 +11,9 @@ else
 Kconfig := Kconfig
 endif
 
+# We need this, in case the user has it in its environment
+unexport CONFIG_
+
 xconfig: $(obj)/qconf
 	$< $(Kconfig)
 
@@ -50,9 +53,8 @@ localyesconfig localmodconfig: $(obj)/streamline_config.pl $(obj)/conf
 
 # Create new linux.pot file
 # Adjust charset to UTF-8 in .po file to accept UTF-8 in Kconfig files
-# The symlink is used to repair a deficiency in arch/um
 update-po-config: $(obj)/kxgettext $(obj)/gconf.glade.h
-	$(Q)echo "  GEN config"
+	$(Q)echo "  GEN     config.pot"
 	$(Q)xgettext --default-domain=linux                         \
 	    --add-comments --keyword=_ --keyword=N_                 \
 	    --from-code=UTF-8                                       \
@@ -60,16 +62,16 @@ update-po-config: $(obj)/kxgettext $(obj)/gconf.glade.h
 	    --directory=$(srctree) --directory=$(objtree)           \
 	    --output $(obj)/config.pot
 	$(Q)sed -i s/CHARSET/UTF-8/ $(obj)/config.pot
-	$(Q)ln -fs Kconfig.x86 arch/um/Kconfig
-	$(Q)(for i in `ls $(srctree)/arch/*/Kconfig`;    \
+	$(Q)(for i in `ls $(srctree)/arch/*/Kconfig      \
+	    $(srctree)/arch/*/um/Kconfig`;               \
 	    do                                           \
-		echo "  GEN $$i";                        \
+		echo "  GEN     $$i";                    \
 		$(obj)/kxgettext $$i                     \
 		     >> $(obj)/config.pot;               \
 	    done )
+	$(Q)echo "  GEN     linux.pot"
 	$(Q)msguniq --sort-by-file --to-code=UTF-8 $(obj)/config.pot \
 	    --output $(obj)/linux.pot
-	$(Q)rm -f $(srctree)/arch/um/Kconfig
 	$(Q)rm -f $(obj)/config.pot
 
 PHONY += allnoconfig allyesconfig allmodconfig alldefconfig randconfig
@@ -77,11 +79,17 @@ PHONY += allnoconfig allyesconfig allmodconfig alldefconfig randconfig
 allnoconfig allyesconfig allmodconfig alldefconfig randconfig: $(obj)/conf
 	$< --$@ $(Kconfig)
 
-PHONY += listnewconfig oldnoconfig savedefconfig defconfig
+PHONY += listnewconfig olddefconfig oldnoconfig savedefconfig defconfig
 
-listnewconfig oldnoconfig: $(obj)/conf
+listnewconfig olddefconfig: $(obj)/conf
 	$< --$@ $(Kconfig)
 
+# oldnoconfig is an alias of olddefconfig, because people already are dependent
+# on its behavior(sets new symbols to their default value but not 'n') with the
+# counter-intuitive name.
+oldnoconfig: $(obj)/conf
+	$< --olddefconfig $(Kconfig)
+
 savedefconfig: $(obj)/conf
 	$< --$@=defconfig $(Kconfig)
 
@@ -115,7 +123,7 @@ help:
 	@echo  '  alldefconfig    - New config with all symbols set to default'
 	@echo  '  randconfig	  - New config with random answer to all options'
 	@echo  '  listnewconfig   - List new options'
-	@echo  '  oldnoconfig     - Same as silentoldconfig but set new symbols to n (unset)'
+	@echo  '  olddefconfig	  - Same as silentoldconfig but sets new symbols to their default value'
 
 # lxdialog stuff
 check-lxdialog  := $(srctree)/$(src)/lxdialog/check-lxdialog.sh
@@ -211,7 +219,9 @@ HOSTCFLAGS_gconf.o	= `pkg-config --cflags gtk+-2.0 gmodule-2.0 libglade-2.0` \
 
 HOSTLOADLIBES_mconf   = $(shell $(CONFIG_SHELL) $(check-lxdialog) -ldflags $(HOSTCC))
 
-HOSTLOADLIBES_nconf	= -lmenu -lpanel -lncurses
+HOSTLOADLIBES_nconf	= $(shell \
+				pkg-config --libs menu panel ncurses 2>/dev/null \
+				|| echo "-lmenu -lpanel -lncurses"  )
 $(obj)/qconf.o: $(obj)/.tmp_qtcheck
 
 ifeq ($(qconf-target),1)
@@ -235,12 +245,12 @@ $(obj)/.tmp_qtcheck:
 	        if [ -f $$d/include/qconfig.h ]; then dir=$$d; break; fi; \
 	      done; \
 	      if [ -z "$$dir" ]; then \
-	        echo "*"; \
-	        echo "* Unable to find any QT installation. Please make sure that"; \
-	        echo "* the QT4 or QT3 development package is correctly installed and"; \
-	        echo "* either qmake can be found or install pkg-config or set"; \
-	        echo "* the QTDIR environment variable to the correct location."; \
-	        echo "*"; \
+	        echo >&2 "*"; \
+	        echo >&2 "* Unable to find any QT installation. Please make sure that"; \
+	        echo >&2 "* the QT4 or QT3 development package is correctly installed and"; \
+	        echo >&2 "* either qmake can be found or install pkg-config or set"; \
+	        echo >&2 "* the QTDIR environment variable to the correct location."; \
+	        echo >&2 "*"; \
 	        false; \
 	      fi; \
 	      libpath=$$dir/lib; lib=qt; osdir=""; \
@@ -261,8 +271,8 @@ $(obj)/.tmp_qtcheck:
 	else \
 	  cflags="\$$(shell pkg-config QtCore QtGui Qt3Support --cflags)"; \
 	  libs="\$$(shell pkg-config QtCore QtGui Qt3Support --libs)"; \
-	  binpath="\$$(shell pkg-config QtCore --variable=prefix)"; \
-	  moc="$$binpath/bin/moc"; \
+	  moc="\$$(shell pkg-config QtCore --variable=moc_location)"; \
+	  [ -n "$$moc" ] || moc="\$$(shell pkg-config QtCore --variable=prefix)/bin/moc"; \
 	fi; \
 	echo "KC_QT_CFLAGS=$$cflags" > $@; \
 	echo "KC_QT_LIBS=$$libs" >> $@; \
@@ -280,17 +290,17 @@ $(obj)/.tmp_gtkcheck:
 		if `pkg-config --atleast-version=2.0.0 gtk+-2.0`; then			\
 			touch $@;								\
 		else									\
-			echo "*"; 							\
-			echo "* GTK+ is present but version >= 2.0.0 is required.";	\
-			echo "*";							\
+			echo >&2 "*"; 							\
+			echo >&2 "* GTK+ is present but version >= 2.0.0 is required.";	\
+			echo >&2 "*";							\
 			false;								\
 		fi									\
 	else										\
-		echo "*"; 								\
-		echo "* Unable to find the GTK+ installation. Please make sure that"; 	\
-		echo "* the GTK+ 2.0 development package is correctly installed..."; 	\
-		echo "* You need gtk+-2.0, glib-2.0 and libglade-2.0."; 		\
-		echo "*"; 								\
+		echo >&2 "*"; 								\
+		echo >&2 "* Unable to find the GTK+ installation. Please make sure that"; 	\
+		echo >&2 "* the GTK+ 2.0 development package is correctly installed..."; 	\
+		echo >&2 "* You need gtk+-2.0, glib-2.0 and libglade-2.0."; 		\
+		echo >&2 "*"; 								\
 		false;									\
 	fi
 endif
@@ -299,8 +309,11 @@ $(obj)/zconf.tab.o: $(obj)/zconf.lex.c $(obj)/zconf.hash.c
 
 $(obj)/qconf.o: $(obj)/qconf.moc
 
-$(obj)/%.moc: $(src)/%.h
-	$(KC_QT_MOC) -i $< -o $@
+quiet_cmd_moc = MOC     $@
+      cmd_moc = $(KC_QT_MOC) -i $< -o $@
+
+$(obj)/%.moc: $(src)/%.h $(obj)/.tmp_qtcheck
+	$(call cmd,moc)
 
 # Extract gconf menu items for I18N support
 $(obj)/gconf.glade.h: $(obj)/gconf.glade
diff --git a/scripts/kconfig/check.sh b/scripts/kconfig/check.sh
index fa59cbf..854d9c7 100755
--- a/scripts/kconfig/check.sh
+++ b/scripts/kconfig/check.sh
@@ -1,6 +1,6 @@
 #!/bin/sh
 # Needed for systems without gettext
-$* -xc -o /dev/null - > /dev/null 2>&1 << EOF
+$* -x c -o /dev/null - > /dev/null 2>&1 << EOF
 #include <libintl.h>
 int main()
 {
diff --git a/scripts/kconfig/conf.c b/scripts/kconfig/conf.c
index f208f90..bde5b95 100644
--- a/scripts/kconfig/conf.c
+++ b/scripts/kconfig/conf.c
@@ -13,6 +13,7 @@
 #include <getopt.h>
 #include <sys/stat.h>
 #include <sys/time.h>
+#include <errno.h>
 
 #include "lkc.h"
 
@@ -32,10 +33,11 @@ enum input_mode {
 	defconfig,
 	savedefconfig,
 	listnewconfig,
-	oldnoconfig,
+	olddefconfig,
 } input_mode = oldaskconfig;
 
 static int indent = 1;
+static int tty_stdio;
 static int valid_stdin = 1;
 static int sync_kconfig;
 static int conf_cnt;
@@ -108,6 +110,8 @@ static int conf_askvalue(struct symbol *sym, const char *def)
 	case oldaskconfig:
 		fflush(stdout);
 		xfgets(line, 128, stdin);
+		if (!tty_stdio)
+			printf("\n");
 		return 1;
 	default:
 		break;
@@ -365,7 +369,7 @@ static void conf(struct menu *menu)
 		case P_MENU:
 			if ((input_mode == silentoldconfig ||
 			     input_mode == listnewconfig ||
-			     input_mode == oldnoconfig) &&
+			     input_mode == olddefconfig) &&
 			    rootEntry != menu) {
 				check_conf(menu);
 				return;
@@ -429,7 +433,7 @@ static void check_conf(struct menu *menu)
 				if (sym->name && !sym_is_choice_value(sym)) {
 					printf("%s%s\n", CONFIG_, sym->name);
 				}
-			} else if (input_mode != oldnoconfig) {
+			} else if (input_mode != olddefconfig) {
 				if (!conf_cnt++)
 					printf(_("*\n* Restart config...\n*\n"));
 				rootEntry = menu_get_parent_menu(menu);
@@ -454,7 +458,13 @@ static struct option long_opts[] = {
 	{"alldefconfig",    no_argument,       NULL, alldefconfig},
 	{"randconfig",      no_argument,       NULL, randconfig},
 	{"listnewconfig",   no_argument,       NULL, listnewconfig},
-	{"oldnoconfig",     no_argument,       NULL, oldnoconfig},
+	{"olddefconfig",    no_argument,       NULL, olddefconfig},
+	/*
+	 * oldnoconfig is an alias of olddefconfig, because people already
+	 * are dependent on its behavior(sets new symbols to their default
+	 * value but not 'n') with the counter-intuitive name.
+	 */
+	{"oldnoconfig",     no_argument,       NULL, olddefconfig},
 	{NULL, 0, NULL, 0}
 };
 
@@ -467,7 +477,8 @@ static void conf_usage(const char *progname)
 	printf("  --oldaskconfig          Start a new configuration using a line-oriented program\n");
 	printf("  --oldconfig             Update a configuration using a provided .config as base\n");
 	printf("  --silentoldconfig       Same as oldconfig, but quietly, additionally update deps\n");
-	printf("  --oldnoconfig           Same as silentoldconfig but set new symbols to no\n");
+	printf("  --olddefconfig          Same as silentoldconfig but sets new symbols to their default value\n");
+	printf("  --oldnoconfig           An alias of olddefconfig\n");
 	printf("  --defconfig <file>      New config with default defined in <file>\n");
 	printf("  --savedefconfig <file>  Save the minimal current configuration to <file>\n");
 	printf("  --allnoconfig           New config where all options are answered with no\n");
@@ -488,6 +499,8 @@ int main(int ac, char **av)
 	bindtextdomain(PACKAGE, LOCALEDIR);
 	textdomain(PACKAGE);
 
+	tty_stdio = isatty(0) && isatty(1) && isatty(2);
+
 	while ((opt = getopt_long(ac, av, "", long_opts, NULL)) != -1) {
 		input_mode = (enum input_mode)opt;
 		switch (opt) {
@@ -502,14 +515,23 @@ int main(int ac, char **av)
 		{
 			struct timeval now;
 			unsigned int seed;
+			char *seed_env;
 
 			/*
 			 * Use microseconds derived seed,
 			 * compensate for systems where it may be zero
 			 */
 			gettimeofday(&now, NULL);
-
 			seed = (unsigned int)((now.tv_sec + 1) * (now.tv_usec + 1));
+
+			seed_env = getenv("KCONFIG_SEED");
+			if( seed_env && *seed_env ) {
+				char *endp;
+				int tmp = (int)strtol(seed_env, &endp, 10);
+				if (*endp == '\0') {
+					seed = tmp;
+				}
+			}
 			srand(seed);
 			break;
 		}
@@ -520,7 +542,7 @@ int main(int ac, char **av)
 		case allmodconfig:
 		case alldefconfig:
 		case listnewconfig:
-		case oldnoconfig:
+		case olddefconfig:
 			break;
 		case '?':
 			conf_usage(progname);
@@ -565,7 +587,7 @@ int main(int ac, char **av)
 	case oldaskconfig:
 	case oldconfig:
 	case listnewconfig:
-	case oldnoconfig:
+	case olddefconfig:
 		conf_read(NULL);
 		break;
 	case allnoconfig:
@@ -574,8 +596,15 @@ int main(int ac, char **av)
 	case alldefconfig:
 	case randconfig:
 		name = getenv("KCONFIG_ALLCONFIG");
-		if (name && !stat(name, &tmpstat)) {
-			conf_read_simple(name, S_DEF_USER);
+		if (!name)
+			break;
+		if ((strcmp(name, "") != 0) && (strcmp(name, "1") != 0)) {
+			if (conf_read_simple(name, S_DEF_USER)) {
+				fprintf(stderr,
+					_("*** Can't read seed configuration \"%s\"!\n"),
+					name);
+				exit(1);
+			}
 			break;
 		}
 		switch (input_mode) {
@@ -586,10 +615,13 @@ int main(int ac, char **av)
 		case randconfig:	name = "allrandom.config"; break;
 		default: break;
 		}
-		if (!stat(name, &tmpstat))
-			conf_read_simple(name, S_DEF_USER);
-		else if (!stat("all.config", &tmpstat))
-			conf_read_simple("all.config", S_DEF_USER);
+		if (conf_read_simple(name, S_DEF_USER) &&
+		    conf_read_simple("all.config", S_DEF_USER)) {
+			fprintf(stderr,
+				_("*** KCONFIG_ALLCONFIG set, but no \"%s\" or \"all.config\" file found\n"),
+				name);
+			exit(1);
+		}
 		break;
 	default:
 		break;
@@ -604,7 +636,7 @@ int main(int ac, char **av)
 				return 1;
 			}
 		}
-		valid_stdin = isatty(0) && isatty(1) && isatty(2);
+		valid_stdin = tty_stdio;
 	}
 
 	switch (input_mode) {
@@ -635,7 +667,7 @@ int main(int ac, char **av)
 		/* fall through */
 	case oldconfig:
 	case listnewconfig:
-	case oldnoconfig:
+	case olddefconfig:
 	case silentoldconfig:
 		/* Update until a loop caused no more changes */
 		do {
@@ -643,7 +675,7 @@ int main(int ac, char **av)
 			check_conf(&rootmenu);
 		} while (conf_cnt &&
 			 (input_mode != listnewconfig &&
-			  input_mode != oldnoconfig));
+			  input_mode != olddefconfig));
 		break;
 	}
 
diff --git a/scripts/kconfig/confdata.c b/scripts/kconfig/confdata.c
index 5a58965..43eda40 100644
--- a/scripts/kconfig/confdata.c
+++ b/scripts/kconfig/confdata.c
@@ -182,10 +182,66 @@ static int conf_set_sym_val(struct symbol *sym, int def, int def_flags, char *p)
 	return 0;
 }
 
+#define LINE_GROWTH 16
+static int add_byte(int c, char **lineptr, size_t slen, size_t *n)
+{
+	char *nline;
+	size_t new_size = slen + 1;
+	if (new_size > *n) {
+		new_size += LINE_GROWTH - 1;
+		new_size *= 2;
+		nline = realloc(*lineptr, new_size);
+		if (!nline)
+			return -1;
+
+		*lineptr = nline;
+		*n = new_size;
+	}
+
+	(*lineptr)[slen] = c;
+
+	return 0;
+}
+
+static ssize_t compat_getline(char **lineptr, size_t *n, FILE *stream)
+{
+	char *line = *lineptr;
+	size_t slen = 0;
+
+	for (;;) {
+		int c = getc(stream);
+
+		switch (c) {
+		case '\n':
+			if (add_byte(c, &line, slen, n) < 0)
+				goto e_out;
+			slen++;
+			/* fall through */
+		case EOF:
+			if (add_byte('\0', &line, slen, n) < 0)
+				goto e_out;
+			*lineptr = line;
+			if (slen == 0)
+				return -1;
+			return slen;
+		default:
+			if (add_byte(c, &line, slen, n) < 0)
+				goto e_out;
+			slen++;
+		}
+	}
+
+e_out:
+	line[slen-1] = '\0';
+	*lineptr = line;
+	return -1;
+}
+
 int conf_read_simple(const char *name, int def)
 {
 	FILE *in = NULL;
-	char line[1024];
+	char   *line = NULL;
+	size_t  line_asize = 0;
 	char *p, *p2;
 	struct symbol *sym;
 	int i, def_flags;
@@ -247,7 +303,7 @@ load:
 		}
 	}
 
-	while (fgets(line, sizeof(line), in)) {
+	while (compat_getline(&line, &line_asize, in) != -1) {
 		conf_lineno++;
 		sym = NULL;
 		if (line[0] == '#') {
@@ -335,6 +391,7 @@ setsym:
 			cs->def[def].tri = EXPR_OR(cs->def[def].tri, sym->def[def].tri);
 		}
 	}
+	free(line);
 	fclose(in);
 
 	if (modules_sym)
@@ -344,10 +401,8 @@ setsym:
 
 int conf_read(const char *name)
 {
-	struct symbol *sym, *choice_sym;
-	struct property *prop;
-	struct expr *e;
-	int i, flags;
+	struct symbol *sym;
+	int i;
 
 	sym_set_change_count(0);
 
@@ -357,7 +412,7 @@ int conf_read(const char *name)
 	for_all_symbols(i, sym) {
 		sym_calc_value(sym);
 		if (sym_is_choice(sym) || (sym->flags & SYMBOL_AUTO))
-			goto sym_ok;
+			continue;
 		if (sym_has_value(sym) && (sym->flags & SYMBOL_WRITE)) {
 			/* check that calculated value agrees with saved value */
 			switch (sym->type) {
@@ -366,30 +421,18 @@ int conf_read(const char *name)
 				if (sym->def[S_DEF_USER].tri != sym_get_tristate_value(sym))
 					break;
 				if (!sym_is_choice(sym))
-					goto sym_ok;
+					continue;
 				/* fall through */
 			default:
 				if (!strcmp(sym->curr.val, sym->def[S_DEF_USER].val))
-					goto sym_ok;
+					continue;
 				break;
 			}
 		} else if (!sym_has_value(sym) && !(sym->flags & SYMBOL_WRITE))
 			/* no previous value and not saved */
-			goto sym_ok;
+			continue;
 		conf_unsaved++;
 		/* maybe print value in verbose mode... */
-	sym_ok:
-		if (!sym_is_choice(sym))
-			continue;
-		/* The choice symbol only has a set value (and thus is not new)
-		 * if all its visible childs have values.
-		 */
-		prop = sym_get_choice_prop(sym);
-		flags = sym->flags;
-		expr_list_for_each_sym(prop->expr, e, choice_sym)
-			if (choice_sym->visible != no)
-				flags &= choice_sym->flags;
-		sym->flags &= flags | ~SYMBOL_DEF_USER;
 	}
 
 	for_all_symbols(i, sym) {
@@ -464,7 +507,7 @@ kconfig_print_comment(FILE *fp, const char *value, void *arg)
 		fprintf(fp, "#");
 		if (l) {
 			fprintf(fp, " ");
-			fwrite(p, l, 1, fp);
+			xfwrite(p, l, 1, fp);
 			p += l;
 		}
 		fprintf(fp, "\n");
@@ -537,7 +580,7 @@ header_print_comment(FILE *fp, const char *value, void *arg)
 		fprintf(fp, " *");
 		if (l) {
 			fprintf(fp, " ");
-			fwrite(p, l, 1, fp);
+			xfwrite(p, l, 1, fp);
 			p += l;
 		}
 		fprintf(fp, "\n");
@@ -554,35 +597,6 @@ static struct conf_printer header_printer_cb =
 };
 
 /*
- * Generate the __enabled_CONFIG_* and __enabled_CONFIG_*_MODULE macros for
- * use by the IS_{ENABLED,BUILTIN,MODULE} macros. The _MODULE variant is
- * generated even for booleans so that the IS_ENABLED() macro works.
- */
-static void
-header_print__enabled_symbol(FILE *fp, struct symbol *sym, const char *value, void *arg)
-{
-
-	switch (sym->type) {
-	case S_BOOLEAN:
-	case S_TRISTATE: {
-		fprintf(fp, "#define __enabled_" CONFIG_ "%s %d\n",
-		    sym->name, (*value == 'y'));
-		fprintf(fp, "#define __enabled_" CONFIG_ "%s_MODULE %d\n",
-		    sym->name, (*value == 'm'));
-		break;
-	}
-	default:
-		break;
-	}
-}
-
-static struct conf_printer header__enabled_printer_cb =
-{
-	.print_symbol = header_print__enabled_symbol,
-	.print_comment = header_print_comment,
-};
-
-/*
  * Tristate printer
  *
  * This printer is used when generating the `include/config/tristate.conf' file.
@@ -963,16 +977,11 @@ int conf_write_autoconf(void)
 	conf_write_heading(out_h, &header_printer_cb, NULL);
 
 	for_all_symbols(i, sym) {
-		if (!sym->name)
-			continue;
-
 		sym_calc_value(sym);
-
-		conf_write_symbol(out_h, sym, &header__enabled_printer_cb, NULL);
-
-		if (!(sym->flags & SYMBOL_WRITE))
+		if (!(sym->flags & SYMBOL_WRITE) || !sym->name)
 			continue;
 
+		/* write symbol to auto.conf, tristate and header files */
 		conf_write_symbol(out, sym, &kconfig_printer_cb, (void *)1);
 
 		conf_write_symbol(tristate, sym, &tristate_printer_cb, (void *)1);
@@ -1097,10 +1106,54 @@ static void set_all_choice_values(struct symbol *csym)
 void conf_set_all_new_symbols(enum conf_def_mode mode)
 {
 	struct symbol *sym, *csym;
-	int i, cnt;
+	int i, cnt, pby, pty, ptm;	/* pby: probability of boolean  = y
+					 * pty: probability of tristate = y
+					 * ptm: probability of tristate = m
+					 */
+
+	pby = 50; pty = ptm = 33; /* can't go as the default in switch-case
+				   * below, otherwise gcc whines about
+				   * -Wmaybe-uninitialized */
+	if (mode == def_random) {
+		int n, p[3];
+		char *env = getenv("KCONFIG_PROBABILITY");
+		n = 0;
+		while( env && *env ) {
+			char *endp;
+			int tmp = strtol( env, &endp, 10 );
+			if( tmp >= 0 && tmp <= 100 ) {
+				p[n++] = tmp;
+			} else {
+				errno = ERANGE;
+				perror( "KCONFIG_PROBABILITY" );
+				exit( 1 );
+			}
+			env = (*endp == ':') ? endp+1 : endp;
+			if( n >=3 ) {
+				break;
+			}
+		}
+		switch( n ) {
+		case 1:
+			pby = p[0]; ptm = pby/2; pty = pby-ptm;
+			break;
+		case 2:
+			pty = p[0]; ptm = p[1]; pby = pty + ptm;
+			break;
+		case 3:
+			pby = p[0]; pty = p[1]; ptm = p[2];
+			break;
+		}
+
+		if( pty+ptm > 100 ) {
+			errno = ERANGE;
+			perror( "KCONFIG_PROBABILITY" );
+			exit( 1 );
+		}
+	}
 
 	for_all_symbols(i, sym) {
-		if (sym_has_value(sym))
+		if (sym_has_value(sym) || (sym->flags & SYMBOL_VALID))
 			continue;
 		switch (sym_get_type(sym)) {
 		case S_BOOLEAN:
@@ -1116,8 +1169,15 @@ void conf_set_all_new_symbols(enum conf_def_mode mode)
 				sym->def[S_DEF_USER].tri = no;
 				break;
 			case def_random:
-				cnt = sym_get_type(sym) == S_TRISTATE ? 3 : 2;
-				sym->def[S_DEF_USER].tri = (tristate)(rand() % cnt);
+				sym->def[S_DEF_USER].tri = no;
+				cnt = rand() % 100;
+				if (sym->type == S_TRISTATE) {
+					if (cnt < pty)
+						sym->def[S_DEF_USER].tri = yes;
+					else if (cnt < (pty+ptm))
+						sym->def[S_DEF_USER].tri = mod;
+				} else if (cnt < pby)
+					sym->def[S_DEF_USER].tri = yes;
 				break;
 			default:
 				continue;
diff --git a/scripts/kconfig/expr.c b/scripts/kconfig/expr.c
index 290ce41..d662652 100644
--- a/scripts/kconfig/expr.c
+++ b/scripts/kconfig/expr.c
@@ -13,7 +13,7 @@
 
 struct expr *expr_alloc_symbol(struct symbol *sym)
 {
-	struct expr *e = calloc(1, sizeof(*e));
+	struct expr *e = xcalloc(1, sizeof(*e));
 	e->type = E_SYMBOL;
 	e->left.sym = sym;
 	return e;
@@ -21,7 +21,7 @@ struct expr *expr_alloc_symbol(struct symbol *sym)
 
 struct expr *expr_alloc_one(enum expr_type type, struct expr *ce)
 {
-	struct expr *e = calloc(1, sizeof(*e));
+	struct expr *e = xcalloc(1, sizeof(*e));
 	e->type = type;
 	e->left.expr = ce;
 	return e;
@@ -29,7 +29,7 @@ struct expr *expr_alloc_one(enum expr_type type, struct expr *ce)
 
 struct expr *expr_alloc_two(enum expr_type type, struct expr *e1, struct expr *e2)
 {
-	struct expr *e = calloc(1, sizeof(*e));
+	struct expr *e = xcalloc(1, sizeof(*e));
 	e->type = type;
 	e->left.expr = e1;
 	e->right.expr = e2;
@@ -38,7 +38,7 @@ struct expr *expr_alloc_two(enum expr_type type, struct expr *e1, struct expr *e
 
 struct expr *expr_alloc_comp(enum expr_type type, struct symbol *s1, struct symbol *s2)
 {
-	struct expr *e = calloc(1, sizeof(*e));
+	struct expr *e = xcalloc(1, sizeof(*e));
 	e->type = type;
 	e->left.sym = s1;
 	e->right.sym = s2;
@@ -66,7 +66,7 @@ struct expr *expr_copy(const struct expr *org)
 	if (!org)
 		return NULL;
 
-	e = malloc(sizeof(*org));
+	e = xmalloc(sizeof(*org));
 	memcpy(e, org, sizeof(*org));
 	switch (org->type) {
 	case E_SYMBOL:
diff --git a/scripts/kconfig/expr.h b/scripts/kconfig/expr.h
index 80fce57..cdd4860 100644
--- a/scripts/kconfig/expr.h
+++ b/scripts/kconfig/expr.h
@@ -10,7 +10,9 @@
 extern "C" {
 #endif
 
+#include <assert.h>
 #include <stdio.h>
+#include "list.h"
 #ifndef __cplusplus
 #include <stdbool.h>
 #endif
@@ -172,6 +174,15 @@ struct menu {
 #define MENU_CHANGED		0x0001
 #define MENU_ROOT		0x0002
 
+struct jump_key {
+	struct list_head entries;
+	size_t offset;
+	struct menu *target;
+	int index;
+};
+
+#define JUMP_NB			9
+
 extern struct file *file_list;
 extern struct file *current_file;
 struct file *lookup_file(const char *name);
diff --git a/scripts/kconfig/gconf.c b/scripts/kconfig/gconf.c
index 9f44380..f2bee70 100644
--- a/scripts/kconfig/gconf.c
+++ b/scripts/kconfig/gconf.c
@@ -10,6 +10,7 @@
 #  include <config.h>
 #endif
 
+#include <stdlib.h>
 #include "lkc.h"
 #include "images.c"
 
@@ -22,7 +23,6 @@
 #include <string.h>
 #include <unistd.h>
 #include <time.h>
-#include <stdlib.h>
 
 //#define DEBUG
 
@@ -683,7 +683,7 @@ void on_introduction1_activate(GtkMenuItem * menuitem, gpointer user_data)
 	dialog = gtk_message_dialog_new(GTK_WINDOW(main_wnd),
 					GTK_DIALOG_DESTROY_WITH_PARENT,
 					GTK_MESSAGE_INFO,
-					GTK_BUTTONS_CLOSE, intro_text);
+					GTK_BUTTONS_CLOSE, "%s", intro_text);
 	g_signal_connect_swapped(GTK_OBJECT(dialog), "response",
 				 G_CALLBACK(gtk_widget_destroy),
 				 GTK_OBJECT(dialog));
@@ -701,7 +701,7 @@ void on_about1_activate(GtkMenuItem * menuitem, gpointer user_data)
 	dialog = gtk_message_dialog_new(GTK_WINDOW(main_wnd),
 					GTK_DIALOG_DESTROY_WITH_PARENT,
 					GTK_MESSAGE_INFO,
-					GTK_BUTTONS_CLOSE, about_text);
+					GTK_BUTTONS_CLOSE, "%s", about_text);
 	g_signal_connect_swapped(GTK_OBJECT(dialog), "response",
 				 G_CALLBACK(gtk_widget_destroy),
 				 GTK_OBJECT(dialog));
@@ -720,7 +720,7 @@ void on_license1_activate(GtkMenuItem * menuitem, gpointer user_data)
 	dialog = gtk_message_dialog_new(GTK_WINDOW(main_wnd),
 					GTK_DIALOG_DESTROY_WITH_PARENT,
 					GTK_MESSAGE_INFO,
-					GTK_BUTTONS_CLOSE, license_text);
+					GTK_BUTTONS_CLOSE, "%s", license_text);
 	g_signal_connect_swapped(GTK_OBJECT(dialog), "response",
 				 G_CALLBACK(gtk_widget_destroy),
 				 GTK_OBJECT(dialog));
@@ -830,7 +830,7 @@ static void renderer_edited(GtkCellRendererText * cell,
 static void change_sym_value(struct menu *menu, gint col)
 {
 	struct symbol *sym = menu->sym;
-	tristate oldval, newval;
+	tristate newval;
 
 	if (!sym)
 		return;
@@ -847,7 +847,6 @@ static void change_sym_value(struct menu *menu, gint col)
 	switch (sym_get_type(sym)) {
 	case S_BOOLEAN:
 	case S_TRISTATE:
-		oldval = sym_get_tristate_value(sym);
 		if (!sym_tristate_within_range(sym, newval))
 			newval = yes;
 		sym_set_tristate_value(sym, newval);
@@ -1278,7 +1277,6 @@ static void update_tree(struct menu *src, GtkTreeIter * dst)
 	gboolean valid;
 	GtkTreeIter *sibling;
 	struct symbol *sym;
-	struct property *prop;
 	struct menu *menu1, *menu2;
 
 	if (src == &rootmenu)
@@ -1287,7 +1285,6 @@ static void update_tree(struct menu *src, GtkTreeIter * dst)
 	valid = gtk_tree_model_iter_children(model2, child2, dst);
 	for (child1 = src->list; child1; child1 = child1->next) {
 
-		prop = child1->prompt;
 		sym = child1->sym;
 
 	      reparse:
diff --git a/scripts/kconfig/kconfig_load.c b/scripts/kconfig/kconfig_load.c
deleted file mode 100644
index dbdcaad..0000000
diff --git a/scripts/kconfig/lex.zconf.c_shipped b/scripts/kconfig/lex.zconf.c_shipped
deleted file mode 100644
index 3c11bed..0000000
diff --git a/scripts/kconfig/list.h b/scripts/kconfig/list.h
new file mode 100644
index 0000000..685d80e
--- /dev/null
+++ b/scripts/kconfig/list.h
@@ -0,0 +1,131 @@
+#ifndef LIST_H
+#define LIST_H
+
+/*
+ * Copied from include/linux/...
+ */
+
+#undef offsetof
+#define offsetof(TYPE, MEMBER) ((size_t) &((TYPE *)0)->MEMBER)
+
+/**
+ * container_of - cast a member of a structure out to the containing structure
+ * @ptr:        the pointer to the member.
+ * @type:       the type of the container struct this is embedded in.
+ * @member:     the name of the member within the struct.
+ *
+ */
+#define container_of(ptr, type, member) ({                      \
+	const typeof( ((type *)0)->member ) *__mptr = (ptr);    \
+	(type *)( (char *)__mptr - offsetof(type,member) );})
+
+
+struct list_head {
+	struct list_head *next, *prev;
+};
+
+
+#define LIST_HEAD_INIT(name) { &(name), &(name) }
+
+#define LIST_HEAD(name) \
+	struct list_head name = LIST_HEAD_INIT(name)
+
+/**
+ * list_entry - get the struct for this entry
+ * @ptr:	the &struct list_head pointer.
+ * @type:	the type of the struct this is embedded in.
+ * @member:	the name of the list_struct within the struct.
+ */
+#define list_entry(ptr, type, member) \
+	container_of(ptr, type, member)
+
+/**
+ * list_for_each_entry	-	iterate over list of given type
+ * @pos:	the type * to use as a loop cursor.
+ * @head:	the head for your list.
+ * @member:	the name of the list_struct within the struct.
+ */
+#define list_for_each_entry(pos, head, member)				\
+	for (pos = list_entry((head)->next, typeof(*pos), member);	\
+	     &pos->member != (head); 	\
+	     pos = list_entry(pos->member.next, typeof(*pos), member))
+
+/**
+ * list_for_each_entry_safe - iterate over list of given type safe against removal of list entry
+ * @pos:	the type * to use as a loop cursor.
+ * @n:		another type * to use as temporary storage
+ * @head:	the head for your list.
+ * @member:	the name of the list_struct within the struct.
+ */
+#define list_for_each_entry_safe(pos, n, head, member)			\
+	for (pos = list_entry((head)->next, typeof(*pos), member),	\
+		n = list_entry(pos->member.next, typeof(*pos), member);	\
+	     &pos->member != (head);					\
+	     pos = n, n = list_entry(n->member.next, typeof(*n), member))
+
+/**
+ * list_empty - tests whether a list is empty
+ * @head: the list to test.
+ */
+static inline int list_empty(const struct list_head *head)
+{
+	return head->next == head;
+}
+
+/*
+ * Insert a new entry between two known consecutive entries.
+ *
+ * This is only for internal list manipulation where we know
+ * the prev/next entries already!
+ */
+static inline void __list_add(struct list_head *_new,
+			      struct list_head *prev,
+			      struct list_head *next)
+{
+	next->prev = _new;
+	_new->next = next;
+	_new->prev = prev;
+	prev->next = _new;
+}
+
+/**
+ * list_add_tail - add a new entry
+ * @new: new entry to be added
+ * @head: list head to add it before
+ *
+ * Insert a new entry before the specified head.
+ * This is useful for implementing queues.
+ */
+static inline void list_add_tail(struct list_head *_new, struct list_head *head)
+{
+	__list_add(_new, head->prev, head);
+}
+
+/*
+ * Delete a list entry by making the prev/next entries
+ * point to each other.
+ *
+ * This is only for internal list manipulation where we know
+ * the prev/next entries already!
+ */
+static inline void __list_del(struct list_head *prev, struct list_head *next)
+{
+	next->prev = prev;
+	prev->next = next;
+}
+
+#define LIST_POISON1  ((void *) 0x00100100)
+#define LIST_POISON2  ((void *) 0x00200200)
+/**
+ * list_del - deletes entry from list.
+ * @entry: the element to delete from the list.
+ * Note: list_empty() on entry does not return true after this, the entry is
+ * in an undefined state.
+ */
+static inline void list_del(struct list_head *entry)
+{
+	__list_del(entry->prev, entry->next);
+	entry->next = (struct list_head*)LIST_POISON1;
+	entry->prev = (struct list_head*)LIST_POISON2;
+}
+#endif
diff --git a/scripts/kconfig/lkc.h b/scripts/kconfig/lkc.h
index b633bdb..f8aee5f 100644
--- a/scripts/kconfig/lkc.h
+++ b/scripts/kconfig/lkc.h
@@ -39,6 +39,12 @@ extern "C" {
 #ifndef CONFIG_
 #define CONFIG_ "CONFIG_"
 #endif
+static inline const char *CONFIG_prefix(void)
+{
+	return getenv( "CONFIG_" ) ?: CONFIG_;
+}
+#undef CONFIG_
+#define CONFIG_ CONFIG_prefix()
 
 #define TF_COMMAND	0x0001
 #define TF_PARAM	0x0002
@@ -90,8 +96,10 @@ struct conf_printer {
 /* confdata.c and expr.c */
 static inline void xfwrite(const void *str, size_t len, size_t count, FILE *out)
 {
-	if (fwrite(str, len, count, out) < count)
-		fprintf(stderr, "\nError in writing or end of file.\n");
+	assert(len != 0);
+
+	if (fwrite(str, len, count, out) != count)
+		fprintf(stderr, "Error in writing or end of file.\n");
 }
 
 /* menu.c */
@@ -114,6 +122,8 @@ void menu_set_type(int type);
 /* util.c */
 struct file *file_lookup(const char *name);
 int file_write_dep(const char *name);
+void *xmalloc(size_t size);
+void *xcalloc(size_t nmemb, size_t size);
 
 struct gstr {
 	size_t len;
diff --git a/scripts/kconfig/lkc_proto.h b/scripts/kconfig/lkc_proto.h
index 47fe9c3..ef1a738 100644
--- a/scripts/kconfig/lkc_proto.h
+++ b/scripts/kconfig/lkc_proto.h
@@ -21,8 +21,10 @@ P(menu_get_root_menu,struct menu *,(struct menu *menu));
 P(menu_get_parent_menu,struct menu *,(struct menu *menu));
 P(menu_has_help,bool,(struct menu *menu));
 P(menu_get_help,const char *,(struct menu *menu));
-P(get_symbol_str, void, (struct gstr *r, struct symbol *sym));
-P(get_relations_str, struct gstr, (struct symbol **sym_arr));
+P(get_symbol_str, void, (struct gstr *r, struct symbol *sym, struct list_head
+			 *head));
+P(get_relations_str, struct gstr, (struct symbol **sym_arr, struct list_head
+				   *head));
 P(menu_get_ext_help,void,(struct menu *menu, struct gstr *help));
 
 /* symbol.c */
diff --git a/scripts/kconfig/lxdialog/check-lxdialog.sh b/scripts/kconfig/lxdialog/check-lxdialog.sh
index 82cc3a8..9d2a4c5 100644
--- a/scripts/kconfig/lxdialog/check-lxdialog.sh
+++ b/scripts/kconfig/lxdialog/check-lxdialog.sh
@@ -4,7 +4,9 @@
 # What library to link
 ldflags()
 {
-	for ext in so a dylib ; do
+	pkg-config --libs ncursesw 2>/dev/null && exit
+	pkg-config --libs ncurses 2>/dev/null && exit
+	for ext in so a dll.a dylib ; do
 		for lib in ncursesw ncurses curses ; do
 			$cc -print-file-name=lib${lib}.${ext} | grep -q /
 			if [ $? -eq 0 ]; then
@@ -19,12 +21,13 @@ ldflags()
 # Where is ncurses.h?
 ccflags()
 {
-	if [ -f /usr/include/ncurses/ncurses.h ]; then
+	if [ -f /usr/include/ncursesw/curses.h ]; then
+		echo '-I/usr/include/ncursesw -DCURSES_LOC="<curses.h>"'
+		echo ' -DNCURSES_WIDECHAR=1'
+	elif [ -f /usr/include/ncurses/ncurses.h ]; then
 		echo '-I/usr/include/ncurses -DCURSES_LOC="<ncurses.h>"'
 	elif [ -f /usr/include/ncurses/curses.h ]; then
-		echo '-I/usr/include/ncurses -DCURSES_LOC="<ncurses/curses.h>"'
-	elif [ -f /usr/include/ncursesw/curses.h ]; then
-		echo '-I/usr/include/ncursesw -DCURSES_LOC="<ncursesw/curses.h>"'
+		echo '-I/usr/include/ncurses -DCURSES_LOC="<curses.h>"'
 	elif [ -f /usr/include/ncurses.h ]; then
 		echo '-DCURSES_LOC="<ncurses.h>"'
 	else
@@ -38,7 +41,7 @@ trap "rm -f $tmp" 0 1 2 3 15
 
 # Check if we can link to ncurses
 check() {
-        $cc -xc - -o $tmp 2>/dev/null <<'EOF'
+        $cc -x c - -o $tmp 2>/dev/null <<'EOF'
 #include CURSES_LOC
 main() {}
 EOF
diff --git a/scripts/kconfig/lxdialog/checklist.c b/scripts/kconfig/lxdialog/checklist.c
index 14bb341..a2eb80f 100644
--- a/scripts/kconfig/lxdialog/checklist.c
+++ b/scripts/kconfig/lxdialog/checklist.c
@@ -15,6 +15,10 @@
  *  but WITHOUT ANY WARRANTY; without even the implied warranty of
  *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  *  GNU General Public License for more details.
+ *
+ *  You should have received a copy of the GNU General Public License
+ *  along with this program; if not, write to the Free Software
+ *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include "dialog.h"
diff --git a/scripts/kconfig/lxdialog/dialog.h b/scripts/kconfig/lxdialog/dialog.h
index 3c61d71..1099337 100644
--- a/scripts/kconfig/lxdialog/dialog.h
+++ b/scripts/kconfig/lxdialog/dialog.h
@@ -12,6 +12,10 @@
  *  but WITHOUT ANY WARRANTY; without even the implied warranty of
  *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  *  GNU General Public License for more details.
+ *
+ *  You should have received a copy of the GNU General Public License
+ *  along with this program; if not, write to the Free Software
+ *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include <sys/types.h>
@@ -102,8 +106,14 @@ struct dialog_color {
 	int hl;		/* highlight this item */
 };
 
+struct subtitle_list {
+	struct subtitle_list *next;
+	const char *text;
+};
+
 struct dialog_info {
 	const char *backtitle;
+	struct subtitle_list *subtitles;
 	struct dialog_color screen;
 	struct dialog_color shadow;
 	struct dialog_color dialog;
@@ -140,6 +150,7 @@ struct dialog_info {
  */
 extern struct dialog_info dlg;
 extern char dialog_input_result[];
+extern int saved_x, saved_y;		/* Needed in signal handler in mconf.c */
 
 /*
  * Function prototypes
@@ -191,6 +202,7 @@ int on_key_resize(void);
 
 int init_dialog(const char *backtitle);
 void set_dialog_backtitle(const char *backtitle);
+void set_dialog_subtitles(struct subtitle_list *subtitles);
 void end_dialog(int x, int y);
 void attr_clear(WINDOW * win, int height, int width, chtype attr);
 void dialog_clear(void);
@@ -205,12 +217,17 @@ int first_alpha(const char *string, const char *exempt);
 int dialog_yesno(const char *title, const char *prompt, int height, int width);
 int dialog_msgbox(const char *title, const char *prompt, int height,
 		  int width, int pause);
-int dialog_textbox(const char *title, const char *file, int height, int width);
+
+
+typedef void (*update_text_fn)(char *buf, size_t start, size_t end, void
+			       *_data);
+int dialog_textbox(const char *title, char *tbuf, int initial_height,
+		   int initial_width, int *keys, int *_vscroll, int *_hscroll,
+		   update_text_fn update_text, void *data);
 int dialog_menu(const char *title, const char *prompt,
 		const void *selected, int *s_scroll);
 int dialog_checklist(const char *title, const char *prompt, int height,
 		     int width, int list_height);
-extern char dialog_input_result[];
 int dialog_inputbox(const char *title, const char *prompt, int height,
 		    int width, const char *init);
 
diff --git a/scripts/kconfig/lxdialog/inputbox.c b/scripts/kconfig/lxdialog/inputbox.c
index 1564a28..21404a0 100644
--- a/scripts/kconfig/lxdialog/inputbox.c
+++ b/scripts/kconfig/lxdialog/inputbox.c
@@ -13,6 +13,10 @@
  *  but WITHOUT ANY WARRANTY; without even the implied warranty of
  *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  *  GNU General Public License for more details.
+ *
+ *  You should have received a copy of the GNU General Public License
+ *  along with this program; if not, write to the Free Software
+ *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include "dialog.h"
@@ -41,7 +45,8 @@ int dialog_inputbox(const char *title, const char *prompt, int height, int width
                     const char *init)
 {
 	int i, x, y, box_y, box_x, box_width;
-	int input_x = 0, scroll = 0, key = 0, button = -1;
+	int input_x = 0, key = 0, button = -1;
+	int show_x, len, pos;
 	char *instr = dialog_input_result;
 	WINDOW *dialog;
 
@@ -93,14 +98,17 @@ do_resize:
 	wmove(dialog, box_y, box_x);
 	wattrset(dialog, dlg.inputbox.atr);
 
-	input_x = strlen(instr);
+	len = strlen(instr);
+	pos = len;
 
-	if (input_x >= box_width) {
-		scroll = input_x - box_width + 1;
+	if (len >= box_width) {
+		show_x = len - box_width + 1;
 		input_x = box_width - 1;
 		for (i = 0; i < box_width - 1; i++)
-			waddch(dialog, instr[scroll + i]);
+			waddch(dialog, instr[show_x + i]);
 	} else {
+		show_x = 0;
+		input_x = len;
 		waddstr(dialog, instr);
 	}
 
@@ -117,45 +125,104 @@ do_resize:
 			case KEY_UP:
 			case KEY_DOWN:
 				break;
-			case KEY_LEFT:
-				continue;
-			case KEY_RIGHT:
-				continue;
 			case KEY_BACKSPACE:
 			case 127:
-				if (input_x || scroll) {
+				if (pos) {
 					wattrset(dialog, dlg.inputbox.atr);
-					if (!input_x) {
-						scroll = scroll < box_width - 1 ? 0 : scroll - (box_width - 1);
-						wmove(dialog, box_y, box_x);
-						for (i = 0; i < box_width; i++)
-							waddch(dialog,
-							       instr[scroll + input_x + i] ?
-							       instr[scroll + input_x + i] : ' ');
-						input_x = strlen(instr) - scroll;
+					if (input_x == 0) {
+						show_x--;
 					} else
 						input_x--;
-					instr[scroll + input_x] = '\0';
-					mvwaddch(dialog, box_y, input_x + box_x, ' ');
+
+					if (pos < len) {
+						for (i = pos - 1; i < len; i++) {
+							instr[i] = instr[i+1];
+						}
+					}
+
+					pos--;
+					len--;
+					instr[len] = '\0';
+					wmove(dialog, box_y, box_x);
+					for (i = 0; i < box_width; i++) {
+						if (!instr[show_x + i]) {
+							waddch(dialog, ' ');
+							break;
+						}
+						waddch(dialog, instr[show_x + i]);
+					}
 					wmove(dialog, box_y, input_x + box_x);
 					wrefresh(dialog);
 				}
 				continue;
+			case KEY_LEFT:
+				if (pos > 0) {
+					if (input_x > 0) {
+						wmove(dialog, box_y, --input_x + box_x);
+					} else if (input_x == 0) {
+						show_x--;
+						wmove(dialog, box_y, box_x);
+						for (i = 0; i < box_width; i++) {
+							if (!instr[show_x + i]) {
+								waddch(dialog, ' ');
+								break;
+							}
+							waddch(dialog, instr[show_x + i]);
+						}
+						wmove(dialog, box_y, box_x);
+					}
+					pos--;
+				}
+				continue;
+			case KEY_RIGHT:
+				if (pos < len) {
+					if (input_x < box_width - 1) {
+						wmove(dialog, box_y, ++input_x + box_x);
+					} else if (input_x == box_width - 1) {
+						show_x++;
+						wmove(dialog, box_y, box_x);
+						for (i = 0; i < box_width; i++) {
+							if (!instr[show_x + i]) {
+								waddch(dialog, ' ');
+								break;
+							}
+							waddch(dialog, instr[show_x + i]);
+						}
+						wmove(dialog, box_y, input_x + box_x);
+					}
+					pos++;
+				}
+				continue;
 			default:
 				if (key < 0x100 && isprint(key)) {
-					if (scroll + input_x < MAX_LEN) {
+					if (len < MAX_LEN) {
 						wattrset(dialog, dlg.inputbox.atr);
-						instr[scroll + input_x] = key;
-						instr[scroll + input_x + 1] = '\0';
+						if (pos < len) {
+							for (i = len; i > pos; i--)
+								instr[i] = instr[i-1];
+							instr[pos] = key;
+						} else {
+							instr[len] = key;
+						}
+						pos++;
+						len++;
+						instr[len] = '\0';
+
 						if (input_x == box_width - 1) {
-							scroll++;
-							wmove(dialog, box_y, box_x);
-							for (i = 0; i < box_width - 1; i++)
-								waddch(dialog, instr [scroll + i]);
+							show_x++;
 						} else {
-							wmove(dialog, box_y, input_x++ + box_x);
-							waddch(dialog, key);
+							input_x++;
+						}
+
+						wmove(dialog, box_y, box_x);
+						for (i = 0; i < box_width; i++) {
+							if (!instr[show_x + i]) {
+								waddch(dialog, ' ');
+								break;
+							}
+							waddch(dialog, instr[show_x + i]);
 						}
+						wmove(dialog, box_y, input_x + box_x);
 						wrefresh(dialog);
 					} else
 						flash();	/* Alarm user about overflow */
diff --git a/scripts/kconfig/lxdialog/menubox.c b/scripts/kconfig/lxdialog/menubox.c
index b0d9a5c..38cd69c 100644
--- a/scripts/kconfig/lxdialog/menubox.c
+++ b/scripts/kconfig/lxdialog/menubox.c
@@ -13,6 +13,10 @@
  *  but WITHOUT ANY WARRANTY; without even the implied warranty of
  *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  *  GNU General Public License for more details.
+ *
+ *  You should have received a copy of the GNU General Public License
+ *  along with this program; if not, write to the Free Software
+ *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 /*
@@ -22,7 +26,7 @@
  *
  *    *)  A bugfix for the Page-Down problem
  *
- *    *)  Formerly when I used Page Down and Page Up, the cursor would be set 
+ *    *)  Formerly when I used Page Down and Page Up, the cursor would be set
  *        to the first position in the menu box.  Now lxdialog is a bit
  *        smarter and works more like other menu systems (just have a look at
  *        it).
@@ -150,12 +154,14 @@ static void print_arrows(WINDOW * win, int item_no, int scroll, int y, int x,
  */
 static void print_buttons(WINDOW * win, int height, int width, int selected)
 {
-	int x = width / 2 - 16;
+	int x = width / 2 - 28;
 	int y = height - 2;
 
 	print_button(win, gettext("Select"), y, x, selected == 0);
 	print_button(win, gettext(" Exit "), y, x + 12, selected == 1);
 	print_button(win, gettext(" Help "), y, x + 24, selected == 2);
+	print_button(win, gettext(" Save "), y, x + 36, selected == 3);
+	print_button(win, gettext(" Load "), y, x + 48, selected == 4);
 
 	wmove(win, y, x + 1 + 12 * selected);
 	wrefresh(win);
@@ -297,10 +303,11 @@ do_resize:
 				}
 		}
 
-		if (i < max_choice ||
-		    key == KEY_UP || key == KEY_DOWN ||
-		    key == '-' || key == '+' ||
-		    key == KEY_PPAGE || key == KEY_NPAGE) {
+		if (item_count() != 0 &&
+		    (i < max_choice ||
+		     key == KEY_UP || key == KEY_DOWN ||
+		     key == '-' || key == '+' ||
+		     key == KEY_PPAGE || key == KEY_NPAGE)) {
 			/* Remove highligt of current item */
 			print_item(scroll + choice, choice, FALSE);
 
@@ -368,7 +375,7 @@ do_resize:
 		case TAB:
 		case KEY_RIGHT:
 			button = ((key == KEY_LEFT ? --button : ++button) < 0)
-			    ? 2 : (button > 2 ? 0 : button);
+			    ? 4 : (button > 4 ? 0 : button);
 
 			print_buttons(dialog, height, width, button);
 			wrefresh(menu);
@@ -395,17 +402,17 @@ do_resize:
 				return 2;
 			case 's':
 			case 'y':
-				return 3;
+				return 5;
 			case 'n':
-				return 4;
+				return 6;
 			case 'm':
-				return 5;
+				return 7;
 			case ' ':
-				return 6;
+				return 8;
 			case '/':
-				return 7;
+				return 9;
 			case 'z':
-				return 8;
+				return 10;
 			case '\n':
 				return button;
 			}
diff --git a/scripts/kconfig/lxdialog/textbox.c b/scripts/kconfig/lxdialog/textbox.c
index 3ef8c4f..a48bb93 100644
--- a/scripts/kconfig/lxdialog/textbox.c
+++ b/scripts/kconfig/lxdialog/textbox.c
@@ -13,28 +13,34 @@
  *  but WITHOUT ANY WARRANTY; without even the implied warranty of
  *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  *  GNU General Public License for more details.
+ *
+ *  You should have received a copy of the GNU General Public License
+ *  along with this program; if not, write to the Free Software
+ *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include "dialog.h"
 
 static void back_lines(int n);
-static void print_page(WINDOW * win, int height, int width);
-static void print_line(WINDOW * win, int row, int width);
+static void print_page(WINDOW *win, int height, int width, update_text_fn
+		       update_text, void *data);
+static void print_line(WINDOW *win, int row, int width);
 static char *get_line(void);
 static void print_position(WINDOW * win);
 
 static int hscroll;
 static int begin_reached, end_reached, page_length;
-static const char *buf;
-static const char *page;
+static char *buf;
+static char *page;
 
 /*
  * refresh window content
  */
 static void refresh_text_box(WINDOW *dialog, WINDOW *box, int boxh, int boxw,
-							  int cur_y, int cur_x)
+			     int cur_y, int cur_x, update_text_fn update_text,
+			     void *data)
 {
-	print_page(box, boxh, boxw);
+	print_page(box, boxh, boxw, update_text, data);
 	print_position(dialog);
 	wmove(dialog, cur_y, cur_x);	/* Restore cursor position */
 	wrefresh(dialog);
@@ -43,14 +49,18 @@ static void refresh_text_box(WINDOW *dialog, WINDOW *box, int boxh, int boxw,
 
 /*
  * Display text from a file in a dialog box.
+ *
+ * keys is a null-terminated array
+ * update_text() may not add or remove any '\n' or '\0' in tbuf
  */
-int dialog_textbox(const char *title, const char *tbuf,
-		   int initial_height, int initial_width)
+int dialog_textbox(const char *title, char *tbuf, int initial_height,
+		   int initial_width, int *keys, int *_vscroll, int *_hscroll,
+		   update_text_fn update_text, void *data)
 {
 	int i, x, y, cur_x, cur_y, key = 0;
 	int height, width, boxh, boxw;
-	int passed_end;
 	WINDOW *dialog, *box;
+	bool done = false;
 
 	begin_reached = 1;
 	end_reached = 0;
@@ -59,6 +69,15 @@ int dialog_textbox(const char *title, const char *tbuf,
 	buf = tbuf;
 	page = buf;	/* page is pointer to start of page to be displayed */
 
+	if (_vscroll && *_vscroll) {
+		begin_reached = 0;
+
+		for (i = 0; i < *_vscroll; i++)
+			get_line();
+	}
+	if (_hscroll)
+		hscroll = *_hscroll;
+
 do_resize:
 	getmaxyx(stdscr, height, width);
 	if (height < 8 || width < 8)
@@ -116,25 +135,28 @@ do_resize:
 
 	/* Print first page of text */
 	attr_clear(box, boxh, boxw, dlg.dialog.atr);
-	refresh_text_box(dialog, box, boxh, boxw, cur_y, cur_x);
+	refresh_text_box(dialog, box, boxh, boxw, cur_y, cur_x, update_text,
+			 data);
 
-	while ((key != KEY_ESC) && (key != '\n')) {
+	while (!done) {
 		key = wgetch(dialog);
 		switch (key) {
 		case 'E':	/* Exit */
 		case 'e':
 		case 'X':
 		case 'x':
-			delwin(box);
-			delwin(dialog);
-			return 0;
+		case 'q':
+		case '\n':
+			done = true;
+			break;
 		case 'g':	/* First page */
 		case KEY_HOME:
 			if (!begin_reached) {
 				begin_reached = 1;
 				page = buf;
 				refresh_text_box(dialog, box, boxh, boxw,
-						 cur_y, cur_x);
+						 cur_y, cur_x, update_text,
+						 data);
 			}
 			break;
 		case 'G':	/* Last page */
@@ -144,78 +166,48 @@ do_resize:
 			/* point to last char in buf */
 			page = buf + strlen(buf);
 			back_lines(boxh);
-			refresh_text_box(dialog, box, boxh, boxw,
-					 cur_y, cur_x);
+			refresh_text_box(dialog, box, boxh, boxw, cur_y,
+					 cur_x, update_text, data);
 			break;
 		case 'K':	/* Previous line */
 		case 'k':
 		case KEY_UP:
-			if (!begin_reached) {
-				back_lines(page_length + 1);
-
-				/* We don't call print_page() here but use
-				 * scrolling to ensure faster screen update.
-				 * However, 'end_reached' and 'page_length'
-				 * should still be updated, and 'page' should
-				 * point to start of next page. This is done
-				 * by calling get_line() in the following
-				 * 'for' loop. */
-				scrollok(box, TRUE);
-				wscrl(box, -1);	/* Scroll box region down one line */
-				scrollok(box, FALSE);
-				page_length = 0;
-				passed_end = 0;
-				for (i = 0; i < boxh; i++) {
-					if (!i) {
-						/* print first line of page */
-						print_line(box, 0, boxw);
-						wnoutrefresh(box);
-					} else
-						/* Called to update 'end_reached' and 'page' */
-						get_line();
-					if (!passed_end)
-						page_length++;
-					if (end_reached && !passed_end)
-						passed_end = 1;
-				}
+			if (begin_reached)
+				break;
 
-				print_position(dialog);
-				wmove(dialog, cur_y, cur_x);	/* Restore cursor position */
-				wrefresh(dialog);
-			}
+			back_lines(page_length + 1);
+			refresh_text_box(dialog, box, boxh, boxw, cur_y,
+					 cur_x, update_text, data);
 			break;
 		case 'B':	/* Previous page */
 		case 'b':
+		case 'u':
 		case KEY_PPAGE:
 			if (begin_reached)
 				break;
 			back_lines(page_length + boxh);
-			refresh_text_box(dialog, box, boxh, boxw,
-					 cur_y, cur_x);
+			refresh_text_box(dialog, box, boxh, boxw, cur_y,
+					 cur_x, update_text, data);
 			break;
 		case 'J':	/* Next line */
 		case 'j':
 		case KEY_DOWN:
-			if (!end_reached) {
-				begin_reached = 0;
-				scrollok(box, TRUE);
-				scroll(box);	/* Scroll box region up one line */
-				scrollok(box, FALSE);
-				print_line(box, boxh - 1, boxw);
-				wnoutrefresh(box);
-				print_position(dialog);
-				wmove(dialog, cur_y, cur_x);	/* Restore cursor position */
-				wrefresh(dialog);
-			}
+			if (end_reached)
+				break;
+
+			back_lines(page_length - 1);
+			refresh_text_box(dialog, box, boxh, boxw, cur_y,
+					 cur_x, update_text, data);
 			break;
 		case KEY_NPAGE:	/* Next page */
 		case ' ':
+		case 'd':
 			if (end_reached)
 				break;
 
 			begin_reached = 0;
-			refresh_text_box(dialog, box, boxh, boxw,
-					 cur_y, cur_x);
+			refresh_text_box(dialog, box, boxh, boxw, cur_y,
+					 cur_x, update_text, data);
 			break;
 		case '0':	/* Beginning of line */
 		case 'H':	/* Scroll left */
@@ -230,8 +222,8 @@ do_resize:
 				hscroll--;
 			/* Reprint current page to scroll horizontally */
 			back_lines(page_length);
-			refresh_text_box(dialog, box, boxh, boxw,
-					 cur_y, cur_x);
+			refresh_text_box(dialog, box, boxh, boxw, cur_y,
+					 cur_x, update_text, data);
 			break;
 		case 'L':	/* Scroll right */
 		case 'l':
@@ -241,11 +233,12 @@ do_resize:
 			hscroll++;
 			/* Reprint current page to scroll horizontally */
 			back_lines(page_length);
-			refresh_text_box(dialog, box, boxh, boxw,
-					 cur_y, cur_x);
+			refresh_text_box(dialog, box, boxh, boxw, cur_y,
+					 cur_x, update_text, data);
 			break;
 		case KEY_ESC:
-			key = on_key_esc(dialog);
+			if (on_key_esc(dialog) == KEY_ESC)
+				done = true;
 			break;
 		case KEY_RESIZE:
 			back_lines(height);
@@ -253,11 +246,31 @@ do_resize:
 			delwin(dialog);
 			on_key_resize();
 			goto do_resize;
+		default:
+			for (i = 0; keys[i]; i++) {
+				if (key == keys[i]) {
+					done = true;
+					break;
+				}
+			}
 		}
 	}
 	delwin(box);
 	delwin(dialog);
-	return key;		/* ESC pressed */
+	if (_vscroll) {
+		const char *s;
+
+		s = buf;
+		*_vscroll = 0;
+		back_lines(page_length);
+		while (s < page && (s = strchr(s, '\n'))) {
+			(*_vscroll)++;
+			s++;
+		}
+	}
+	if (_hscroll)
+		*_hscroll = hscroll;
+	return key;
 }
 
 /*
@@ -294,12 +307,23 @@ static void back_lines(int n)
 }
 
 /*
- * Print a new page of text. Called by dialog_textbox().
+ * Print a new page of text.
  */
-static void print_page(WINDOW * win, int height, int width)
+static void print_page(WINDOW *win, int height, int width, update_text_fn
+		       update_text, void *data)
 {
 	int i, passed_end = 0;
 
+	if (update_text) {
+		char *end;
+
+		for (i = 0; i < height; i++)
+			get_line();
+		end = page;
+		back_lines(height);
+		update_text(buf, page - buf, end - buf, data);
+	}
+
 	page_length = 0;
 	for (i = 0; i < height; i++) {
 		print_line(win, i, width);
@@ -312,7 +336,7 @@ static void print_page(WINDOW * win, int height, int width)
 }
 
 /*
- * Print a new line of text. Called by dialog_textbox() and print_page().
+ * Print a new line of text.
  */
 static void print_line(WINDOW * win, int row, int width)
 {
@@ -350,10 +374,8 @@ static char *get_line(void)
 	end_reached = 0;
 	while (*page != '\n') {
 		if (*page == '\0') {
-			if (!end_reached) {
-				end_reached = 1;
-				break;
-			}
+			end_reached = 1;
+			break;
 		} else if (i < MAX_LEN)
 			line[i++] = *(page++);
 		else {
@@ -366,7 +388,7 @@ static char *get_line(void)
 	if (i <= MAX_LEN)
 		line[i] = '\0';
 	if (!end_reached)
-		page++;		/* move pass '\n' */
+		page++;		/* move past '\n' */
 
 	return line;
 }
diff --git a/scripts/kconfig/lxdialog/util.c b/scripts/kconfig/lxdialog/util.c
index 891d302..a0e97c2 100644
--- a/scripts/kconfig/lxdialog/util.c
+++ b/scripts/kconfig/lxdialog/util.c
@@ -13,12 +13,19 @@
  *  but WITHOUT ANY WARRANTY; without even the implied warranty of
  *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  *  GNU General Public License for more details.
+ *
+ *  You should have received a copy of the GNU General Public License
+ *  along with this program; if not, write to the Free Software
+ *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include <stdarg.h>
 
 #include "dialog.h"
 
+/* Needed in signal handler in mconf.c */
+int saved_x, saved_y;
+
 struct dialog_info dlg;
 
 static void set_mono_theme(void)
@@ -250,12 +257,48 @@ void dialog_clear(void)
 	attr_clear(stdscr, LINES, COLS, dlg.screen.atr);
 	/* Display background title if it exists ... - SLH */
 	if (dlg.backtitle != NULL) {
-		int i;
+		int i, len = 0, skip = 0;
+		struct subtitle_list *pos;
 
 		wattrset(stdscr, dlg.screen.atr);
 		mvwaddstr(stdscr, 0, 1, (char *)dlg.backtitle);
+
+		for (pos = dlg.subtitles; pos != NULL; pos = pos->next) {
+			/* 3 is for the arrow and spaces */
+			len += strlen(pos->text) + 3;
+		}
+
 		wmove(stdscr, 1, 1);
-		for (i = 1; i < COLS - 1; i++)
+		if (len > COLS - 2) {
+			const char *ellipsis = "[...] ";
+			waddstr(stdscr, ellipsis);
+			skip = len - (COLS - 2 - strlen(ellipsis));
+		}
+
+		for (pos = dlg.subtitles; pos != NULL; pos = pos->next) {
+			if (skip == 0)
+				waddch(stdscr, ACS_RARROW);
+			else
+				skip--;
+
+			if (skip == 0)
+				waddch(stdscr, ' ');
+			else
+				skip--;
+
+			if (skip < strlen(pos->text)) {
+				waddstr(stdscr, pos->text + skip);
+				skip = 0;
+			} else
+				skip -= strlen(pos->text);
+
+			if (skip == 0)
+				waddch(stdscr, ' ');
+			else
+				skip--;
+		}
+
+		for (i = len + 1; i < COLS - 1; i++)
 			waddch(stdscr, ACS_HLINE);
 	}
 	wnoutrefresh(stdscr);
@@ -269,6 +312,10 @@ int init_dialog(const char *backtitle)
 	int height, width;
 
 	initscr();		/* Init curses */
+
+	/* Get current cursor position for signal handler in mconf.c */
+	getyx(stdscr, saved_y, saved_x);
+
 	getmaxyx(stdscr, height, width);
 	if (height < 19 || width < 80) {
 		endwin();
@@ -291,6 +338,11 @@ void set_dialog_backtitle(const char *backtitle)
 	dlg.backtitle = backtitle;
 }
 
+void set_dialog_subtitles(struct subtitle_list *subtitles)
+{
+	dlg.subtitles = subtitles;
+}
+
 /*
  * End using dialog functions.
  */
diff --git a/scripts/kconfig/lxdialog/yesno.c b/scripts/kconfig/lxdialog/yesno.c
index adbfcd9..4e6e809 100644
--- a/scripts/kconfig/lxdialog/yesno.c
+++ b/scripts/kconfig/lxdialog/yesno.c
@@ -13,6 +13,10 @@
  *  but WITHOUT ANY WARRANTY; without even the implied warranty of
  *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  *  GNU General Public License for more details.
+ *
+ *  You should have received a copy of the GNU General Public License
+ *  along with this program; if not, write to the Free Software
+ *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include "dialog.h"
diff --git a/scripts/kconfig/mconf.c b/scripts/kconfig/mconf.c
index 19e200d..a69cbd7 100644
--- a/scripts/kconfig/mconf.c
+++ b/scripts/kconfig/mconf.c
@@ -105,10 +105,10 @@ static const char mconf_readme[] = N_(
 "Text Box    (Help Window)\n"
 "--------\n"
 "o  Use the cursor keys to scroll up/down/left/right.  The VI editor\n"
-"   keys h,j,k,l function here as do <SPACE BAR> and <B> for those\n"
-"   who are familiar with less and lynx.\n"
+"   keys h,j,k,l function here as do <u>, <d>, <SPACE BAR> and <B> for \n"
+"   those who are familiar with less and lynx.\n"
 "\n"
-"o  Press <E>, <X>, <Enter> or <Esc><Esc> to exit.\n"
+"o  Press <E>, <X>, <q>, <Enter> or <Esc><Esc> to exit.\n"
 "\n"
 "\n"
 "Alternate Configuration Files\n"
@@ -236,16 +236,19 @@ search_help[] = N_(
 	"Result:\n"
 	"-----------------------------------------------------------------\n"
 	"Symbol: FOO [=m]\n"
+	"Type  : tristate\n"
 	"Prompt: Foo bus is used to drive the bar HW\n"
-	"Defined at drivers/pci/Kconfig:47\n"
-	"Depends on: X86_LOCAL_APIC && X86_IO_APIC || IA64\n"
-	"Location:\n"
-	"  -> Bus options (PCI, PCMCIA, EISA, MCA, ISA)\n"
-	"    -> PCI support (PCI [=y])\n"
-	"      -> PCI access mode (<choice> [=y])\n"
-	"Selects: LIBCRC32\n"
-	"Selected by: BAR\n"
+	"  Defined at drivers/pci/Kconfig:47\n"
+	"  Depends on: X86_LOCAL_APIC && X86_IO_APIC || IA64\n"
+	"  Location:\n"
+	"    -> Bus options (PCI, PCMCIA, EISA, ISA)\n"
+	"      -> PCI support (PCI [=y])\n"
+	"(1)     -> PCI access mode (<choice> [=y])\n"
+	"  Selects: LIBCRC32\n"
+	"  Selected by: BAR\n"
 	"-----------------------------------------------------------------\n"
+	"o The line 'Type:' shows the type of the configuration option for\n"
+	"  this symbol (boolean, tristate, string, ...)\n"
 	"o The line 'Prompt:' shows the text used in the menu structure for\n"
 	"  this symbol\n"
 	"o The 'Defined at' line tell at what file / line number the symbol\n"
@@ -254,8 +257,12 @@ search_help[] = N_(
 	"  this symbol to be visible in the menu (selectable)\n"
 	"o The 'Location:' lines tell where in the menu structure this symbol\n"
 	"  is located\n"
-	"    A location followed by a [=y] indicate that this is a selectable\n"
-	"    menu item - and current value is displayed inside brackets.\n"
+	"    A location followed by a [=y] indicates that this is a\n"
+	"    selectable menu item - and the current value is displayed inside\n"
+	"    brackets.\n"
+	"    Press the key in the (#) prefix to jump directly to that\n"
+	"    location. You will be returned to the current search results\n"
+	"    after exiting this new menu.\n"
 	"o The 'Selects:' line tell what symbol will be automatically\n"
 	"  selected if this symbol is selected (y or m)\n"
 	"o The 'Selected by' line tell what symbol has selected this symbol\n"
@@ -273,13 +280,16 @@ static struct menu *current_menu;
 static int child_count;
 static int single_menu_mode;
 static int show_all_options;
-static int saved_x, saved_y;
+static int save_and_exit;
 
-static void conf(struct menu *menu);
+static void conf(struct menu *menu, struct menu *active_menu);
 static void conf_choice(struct menu *menu);
 static void conf_string(struct menu *menu);
 static void conf_load(void);
 static void conf_save(void);
+static int show_textbox_ext(const char *title, char *text, int r, int c,
+			    int *keys, int *vscroll, int *hscroll,
+			    update_text_fn update_text, void *data);
 static void show_textbox(const char *title, const char *text, int r, int c);
 static void show_helptext(const char *title, const char *text);
 static void show_help(struct menu *menu);
@@ -301,18 +311,103 @@ static void set_config_filename(const char *config_filename)
 		filename[sizeof(filename)-1] = '\0';
 }
 
+struct subtitle_part {
+	struct list_head entries;
+	const char *text;
+};
+static LIST_HEAD(trail);
+
+static struct subtitle_list *subtitles;
+static void set_subtitle(void)
+{
+	struct subtitle_part *sp;
+	struct subtitle_list *pos, *tmp;
+
+	for (pos = subtitles; pos != NULL; pos = tmp) {
+		tmp = pos->next;
+		free(pos);
+	}
+
+	subtitles = NULL;
+	list_for_each_entry(sp, &trail, entries) {
+		if (sp->text) {
+			if (pos) {
+				pos->next = xcalloc(sizeof(*pos), 1);
+				pos = pos->next;
+			} else {
+				subtitles = pos = xcalloc(sizeof(*pos), 1);
+			}
+			pos->text = sp->text;
+		}
+	}
+
+	set_dialog_subtitles(subtitles);
+}
+
+static void reset_subtitle(void)
+{
+	struct subtitle_list *pos, *tmp;
+
+	for (pos = subtitles; pos != NULL; pos = tmp) {
+		tmp = pos->next;
+		free(pos);
+	}
+	subtitles = NULL;
+	set_dialog_subtitles(subtitles);
+}
+
+struct search_data {
+	struct list_head *head;
+	struct menu **targets;
+	int *keys;
+};
+
+static void update_text(char *buf, size_t start, size_t end, void *_data)
+{
+	struct search_data *data = _data;
+	struct jump_key *pos;
+	int k = 0;
+
+	list_for_each_entry(pos, data->head, entries) {
+		if (pos->offset >= start && pos->offset < end) {
+			char header[4];
+
+			if (k < JUMP_NB) {
+				int key = '0' + (pos->index % JUMP_NB) + 1;
+
+				sprintf(header, "(%c)", key);
+				data->keys[k] = key;
+				data->targets[k] = pos->target;
+				k++;
+			} else {
+				sprintf(header, "   ");
+			}
+
+			memcpy(buf + pos->offset, header, sizeof(header) - 1);
+		}
+	}
+	data->keys[k] = 0;
+}
 
 static void search_conf(void)
 {
 	struct symbol **sym_arr;
 	struct gstr res;
+	struct gstr title;
 	char *dialog_input;
-	int dres;
+	int dres, vscroll = 0, hscroll = 0;
+	bool again;
+	struct gstr sttext;
+	struct subtitle_part stpart;
+
+	title = str_new();
+	str_printf( &title, _("Enter %s (sub)string to search for "
+			      "(with or without \"%s\")"), CONFIG_, CONFIG_);
+
 again:
 	dialog_clear();
 	dres = dialog_inputbox(_("Search Configuration Parameter"),
-			      _("Enter " CONFIG_ " (sub)string to search for "
-				"(with or without \"" CONFIG_ "\")"),
+			      str_get(&title),
 			      10, 75, "");
 	switch (dres) {
 	case 0:
@@ -321,6 +416,7 @@ again:
 		show_helptext(_("Search Configuration"), search_help);
 		goto again;
 	default:
+		str_free(&title);
 		return;
 	}
 
@@ -329,11 +425,43 @@ again:
 	if (strncasecmp(dialog_input_result, CONFIG_, strlen(CONFIG_)) == 0)
 		dialog_input += strlen(CONFIG_);
 
+	sttext = str_new();
+	str_printf(&sttext, "Search (%s)", dialog_input_result);
+	stpart.text = str_get(&sttext);
+	list_add_tail(&stpart.entries, &trail);
+
 	sym_arr = sym_re_search(dialog_input);
-	res = get_relations_str(sym_arr);
+	do {
+		LIST_HEAD(head);
+		struct menu *targets[JUMP_NB];
+		int keys[JUMP_NB + 1], i;
+		struct search_data data = {
+			.head = &head,
+			.targets = targets,
+			.keys = keys,
+		};
+		struct jump_key *pos, *tmp;
+
+		res = get_relations_str(sym_arr, &head);
+		set_subtitle();
+		dres = show_textbox_ext(_("Search Results"), (char *)
+					str_get(&res), 0, 0, keys, &vscroll,
+					&hscroll, &update_text, (void *)
+					&data);
+		again = false;
+		for (i = 0; i < JUMP_NB && keys[i]; i++)
+			if (dres == keys[i]) {
+				conf(targets[i]->parent, targets[i]);
+				again = true;
+			}
+		str_free(&res);
+		list_for_each_entry_safe(pos, tmp, &head, entries)
+			free(pos);
+	} while (again);
 	free(sym_arr);
-	show_textbox(_("Search Results"), str_get(&res), 0, 0);
-	str_free(&res);
+	str_free(&title);
+	list_del(trail.prev);
+	str_free(&sttext);
 }
 
 static void build_conf(struct menu *menu)
@@ -514,40 +642,40 @@ conf_childs:
 	indent -= doint;
 }
 
-static void conf(struct menu *menu)
+static void conf(struct menu *menu, struct menu *active_menu)
 {
 	struct menu *submenu;
 	const char *prompt = menu_get_prompt(menu);
+	struct subtitle_part stpart;
 	struct symbol *sym;
-	struct menu *active_menu = NULL;
 	int res;
 	int s_scroll = 0;
 
+	if (menu != &rootmenu)
+		stpart.text = menu_get_prompt(menu);
+	else
+		stpart.text = NULL;
+	list_add_tail(&stpart.entries, &trail);
+
 	while (1) {
 		item_reset();
 		current_menu = menu;
 		build_conf(menu);
 		if (!child_count)
 			break;
-		if (menu == &rootmenu) {
-			item_make("--- ");
-			item_set_tag(':');
-			item_make(_("    Load an Alternate Configuration File"));
-			item_set_tag('L');
-			item_make(_("    Save an Alternate Configuration File"));
-			item_set_tag('S');
-		}
+		set_subtitle();
 		dialog_clear();
 		res = dialog_menu(prompt ? _(prompt) : _("Main Menu"),
 				  _(menu_instructions),
 				  active_menu, &s_scroll);
 		if (res == 1 || res == KEY_ESC || res == -ERRDISPLAYTOOSMALL)
 			break;
-		if (!item_activate_selected())
-			continue;
-		if (!item_tag())
-			continue;
-
+		if (item_count() != 0) {
+			if (!item_activate_selected())
+				continue;
+			if (!item_tag())
+				continue;
+		}
 		submenu = item_data();
 		active_menu = item_data();
 		if (submenu)
@@ -562,32 +690,36 @@ static void conf(struct menu *menu)
 				if (single_menu_mode)
 					submenu->data = (void *) (long) !submenu->data;
 				else
-					conf(submenu);
+					conf(submenu, NULL);
 				break;
 			case 't':
 				if (sym_is_choice(sym) && sym_get_tristate_value(sym) == yes)
 					conf_choice(submenu);
 				else if (submenu->prompt->type == P_MENU)
-					conf(submenu);
+					conf(submenu, NULL);
 				break;
 			case 's':
 				conf_string(submenu);
 				break;
-			case 'L':
-				conf_load();
-				break;
-			case 'S':
-				conf_save();
-				break;
 			}
 			break;
 		case 2:
 			if (sym)
 				show_help(submenu);
-			else
+			else {
+				reset_subtitle();
 				show_helptext(_("README"), _(mconf_readme));
+			}
 			break;
 		case 3:
+			reset_subtitle();
+			conf_save();
+			break;
+		case 4:
+			reset_subtitle();
+			conf_load();
+			break;
+		case 5:
 			if (item_is_tag('t')) {
 				if (sym_set_tristate_value(sym, yes))
 					break;
@@ -595,34 +727,45 @@ static void conf(struct menu *menu)
 					show_textbox(NULL, setmod_text, 6, 74);
 			}
 			break;
-		case 4:
+		case 6:
 			if (item_is_tag('t'))
 				sym_set_tristate_value(sym, no);
 			break;
-		case 5:
+		case 7:
 			if (item_is_tag('t'))
 				sym_set_tristate_value(sym, mod);
 			break;
-		case 6:
+		case 8:
 			if (item_is_tag('t'))
 				sym_toggle_tristate_value(sym);
 			else if (item_is_tag('m'))
-				conf(submenu);
+				conf(submenu, NULL);
 			break;
-		case 7:
+		case 9:
 			search_conf();
 			break;
-		case 8:
+		case 10:
 			show_all_options = !show_all_options;
 			break;
 		}
 	}
+
+	list_del(trail.prev);
 }
 
-static void show_textbox(const char *title, const char *text, int r, int c)
+static int show_textbox_ext(const char *title, char *text, int r, int c, int
+			    *keys, int *vscroll, int *hscroll, update_text_fn
+			    update_text, void *data)
 {
 	dialog_clear();
-	dialog_textbox(title, text, r, c);
+	return dialog_textbox(title, text, r, c, keys, vscroll, hscroll,
+			      update_text, data);
+}
+
+static void show_textbox(const char *title, const char *text, int r, int c)
+{
+	show_textbox_ext(title, (char *) text, r, c, (int []) {0}, NULL, NULL,
+			 NULL, NULL);
 }
 
 static void show_helptext(const char *title, const char *text)
@@ -630,6 +773,17 @@ static void show_helptext(const char *title, const char *text)
 	show_textbox(title, text, 0, 0);
 }
 
+static void conf_message_callback(const char *fmt, va_list ap)
+{
+	char buf[PATH_MAX+1];
+
+	vsnprintf(buf, sizeof(buf), fmt, ap);
+	if (save_and_exit)
+		printf("%s", buf);
+	else
+		show_textbox(NULL, buf, 6, 60);
+}
+
 static void show_help(struct menu *menu)
 {
 	struct gstr help = str_new();
@@ -798,6 +952,8 @@ static int handle_exit(void)
 {
 	int res;
 
+	save_and_exit = 1;
+	reset_subtitle();
 	dialog_clear();
 	if (conf_get_changed())
 		res = dialog_yesno(NULL,
@@ -830,6 +986,8 @@ static int handle_exit(void)
 		fprintf(stderr, _("\n\n"
 				  "Your configuration changes were NOT saved."
 				  "\n\n"));
+		if (res != KEY_ESC)
+			res = 0;
 	}
 
 	return res;
@@ -860,9 +1018,6 @@ int main(int ac, char **av)
 			single_menu_mode = 1;
 	}
 
-	initscr();
-
-	getyx(stdscr, saved_y, saved_x);
 	if (init_dialog(NULL)) {
 		fprintf(stderr, N_("Your display is too small to run Menuconfig!\n"));
 		fprintf(stderr, N_("It must be at least 19 lines by 80 columns.\n"));
@@ -870,8 +1025,9 @@ int main(int ac, char **av)
 	}
 
 	set_config_filename(conf_get_configname());
+	conf_set_message_callback(conf_message_callback);
 	do {
-		conf(&rootmenu);
+		conf(&rootmenu, NULL);
 		res = handle_exit();
 	} while (res == KEY_ESC);
 
diff --git a/scripts/kconfig/menu.c b/scripts/kconfig/menu.c
index 8c2a97e..fd3f018 100644
--- a/scripts/kconfig/menu.c
+++ b/scripts/kconfig/menu.c
@@ -48,7 +48,7 @@ void menu_add_entry(struct symbol *sym)
 {
 	struct menu *menu;
 
-	menu = malloc(sizeof(*menu));
+	menu = xmalloc(sizeof(*menu));
 	memset(menu, 0, sizeof(*menu));
 	menu->sym = sym;
 	menu->parent = current_menu;
@@ -146,11 +146,24 @@ struct property *menu_add_prop(enum prop_type type, char *prompt, struct expr *e
 			struct menu *menu = current_entry;
 
 			while ((menu = menu->parent) != NULL) {
+				struct expr *dup_expr;
+
 				if (!menu->visibility)
 					continue;
+				/*
+				 * Do not add a reference to the
+				 * menu's visibility expression but
+				 * use a copy of it.  Otherwise the
+				 * expression reduction functions
+				 * will modify expressions that have
+				 * multiple references which can
+				 * cause unwanted side effects.
+				 */
+				dup_expr = expr_copy(menu->visibility);
+
 				prop->visible.expr
 					= expr_alloc_and(prop->visible.expr,
-							 menu->visibility);
+							 dup_expr);
 			}
 		}
 
@@ -507,27 +520,53 @@ const char *menu_get_help(struct menu *menu)
 		return "";
 }
 
-static void get_prompt_str(struct gstr *r, struct property *prop)
+static void get_prompt_str(struct gstr *r, struct property *prop,
+			   struct list_head *head)
 {
 	int i, j;
-	struct menu *submenu[8], *menu;
+	struct menu *submenu[8], *menu, *location = NULL;
+	struct jump_key *jump;
 
 	str_printf(r, _("Prompt: %s\n"), _(prop->text));
-	str_printf(r, _("  Defined at %s:%d\n"), prop->menu->file->name,
-		prop->menu->lineno);
-	if (!expr_is_yes(prop->visible.expr)) {
-		str_append(r, _("  Depends on: "));
-		expr_gstr_print(prop->visible.expr, r);
-		str_append(r, "\n");
-	}
 	menu = prop->menu->parent;
-	for (i = 0; menu != &rootmenu && i < 8; menu = menu->parent)
+	for (i = 0; menu != &rootmenu && i < 8; menu = menu->parent) {
+		bool accessible = menu_is_visible(menu);
+
 		submenu[i++] = menu;
+		if (location == NULL && accessible)
+			location = menu;
+	}
+	if (head && location) {
+		jump = xmalloc(sizeof(struct jump_key));
+
+		if (menu_is_visible(prop->menu)) {
+			/*
+			 * There is not enough room to put the hint at the
+			 * beginning of the "Prompt" line. Put the hint on the
+			 * last "Location" line even when it would belong on
+			 * the former.
+			 */
+			jump->target = prop->menu;
+		} else
+			jump->target = location;
+
+		if (list_empty(head))
+			jump->index = 0;
+		else
+			jump->index = list_entry(head->prev, struct jump_key,
+						 entries)->index + 1;
+
+		list_add_tail(&jump->entries, head);
+	}
+
 	if (i > 0) {
 		str_printf(r, _("  Location:\n"));
 		for (j = 4; --i >= 0; j += 2) {
 			menu = submenu[i];
-			str_printf(r, "%*c-> %s", j, ' ', _(menu_get_prompt(menu)));
+			if (head && location && menu == location)
+				jump->offset = r->len - 1;
+			str_printf(r, "%*c-> %s", j, ' ',
+				   _(menu_get_prompt(menu)));
 			if (menu->sym) {
 				str_printf(r, " (%s [=%s])", menu->sym->name ?
 					menu->sym->name : _("<choice>"),
@@ -538,7 +577,23 @@ static void get_prompt_str(struct gstr *r, struct property *prop)
 	}
 }
 
-void get_symbol_str(struct gstr *r, struct symbol *sym)
+/*
+ * get peoperty of type P_SYMBOL
+ */
+static struct property *get_symbol_prop(struct symbol *sym)
+{
+	struct property *prop = NULL;
+
+	for_all_properties(sym, prop, P_SYMBOL)
+		break;
+	return prop;
+}
+
+/*
+ * head is optional and may be NULL
+ */
+void get_symbol_str(struct gstr *r, struct symbol *sym,
+		    struct list_head *head)
 {
 	bool hit;
 	struct property *prop;
@@ -557,7 +612,19 @@ void get_symbol_str(struct gstr *r, struct symbol *sym)
 		}
 	}
 	for_all_prompts(sym, prop)
-		get_prompt_str(r, prop);
+		get_prompt_str(r, prop, head);
+
+	prop = get_symbol_prop(sym);
+	if (prop) {
+		str_printf(r, _("  Defined at %s:%d\n"), prop->menu->file->name,
+			prop->menu->lineno);
+		if (!expr_is_yes(prop->visible.expr)) {
+			str_append(r, _("  Depends on: "));
+			expr_gstr_print(prop->visible.expr, r);
+			str_append(r, "\n");
+		}
+	}
+
 	hit = false;
 	for_all_properties(sym, prop, P_SELECT) {
 		if (!hit) {
@@ -577,14 +644,14 @@ void get_symbol_str(struct gstr *r, struct symbol *sym)
 	str_append(r, "\n\n");
 }
 
-struct gstr get_relations_str(struct symbol **sym_arr)
+struct gstr get_relations_str(struct symbol **sym_arr, struct list_head *head)
 {
 	struct symbol *sym;
 	struct gstr res = str_new();
 	int i;
 
 	for (i = 0; sym_arr && (sym = sym_arr[i]); i++)
-		get_symbol_str(&res, sym);
+		get_symbol_str(&res, sym, head);
 	if (!i)
 		str_append(&res, _("No matches found.\n"));
 	return res;
@@ -603,5 +670,5 @@ void menu_get_ext_help(struct menu *menu, struct gstr *help)
 	}
 	str_printf(help, "%s\n", _(help_text));
 	if (sym)
-		get_symbol_str(help, sym);
+		get_symbol_str(help, sym, NULL);
 }
diff --git a/scripts/kconfig/merge_config.sh b/scripts/kconfig/merge_config.sh
new file mode 100755
index 0000000..81b0c61
--- /dev/null
+++ b/scripts/kconfig/merge_config.sh
@@ -0,0 +1,150 @@
+#!/bin/sh
+#  merge_config.sh - Takes a list of config fragment values, and merges
+#  them one by one. Provides warnings on overridden values, and specified
+#  values that did not make it to the resulting .config file (due to missed
+#  dependencies or config symbol removal).
+#
+#  Portions reused from kconf_check and generate_cfg:
+#  http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-tools/tree/tools/kconf_check
+#  http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-tools/tree/tools/generate_cfg
+#
+#  Copyright (c) 2009-2010 Wind River Systems, Inc.
+#  Copyright 2011 Linaro
+#
+#  This program is free software; you can redistribute it and/or modify
+#  it under the terms of the GNU General Public License version 2 as
+#  published by the Free Software Foundation.
+#
+#  This program is distributed in the hope that it will be useful,
+#  but WITHOUT ANY WARRANTY; without even the implied warranty of
+#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
+#  See the GNU General Public License for more details.
+
+clean_up() {
+	rm -f $TMP_FILE
+	exit
+}
+trap clean_up HUP INT TERM
+
+usage() {
+	echo "Usage: $0 [OPTIONS] [CONFIG [...]]"
+	echo "  -h    display this help text"
+	echo "  -m    only merge the fragments, do not execute the make command"
+	echo "  -n    use allnoconfig instead of alldefconfig"
+	echo "  -r    list redundant entries when merging fragments"
+	echo "  -O    dir to put generated output files"
+}
+
+MAKE=true
+ALLTARGET=alldefconfig
+WARNREDUN=false
+OUTPUT=.
+
+while true; do
+	case $1 in
+	"-n")
+		ALLTARGET=allnoconfig
+		shift
+		continue
+		;;
+	"-m")
+		MAKE=false
+		shift
+		continue
+		;;
+	"-h")
+		usage
+		exit
+		;;
+	"-r")
+		WARNREDUN=true
+		shift
+		continue
+		;;
+	"-O")
+		if [ -d $2 ];then
+			OUTPUT=$(echo $2 | sed 's/\/*$//')
+		else
+			echo "output directory $2 does not exist" 1>&2
+			exit 1
+		fi
+		shift 2
+		continue
+		;;
+	*)
+		break
+		;;
+	esac
+done
+
+INITFILE=$1
+shift;
+
+MERGE_LIST=$*
+SED_CONFIG_EXP="s/^\(# \)\{0,1\}\(CONFIG_[a-zA-Z0-9_]*\)[= ].*/\2/p"
+TMP_FILE=$(mktemp ./.tmp.config.XXXXXXXXXX)
+
+echo "Using $INITFILE as base"
+cat $INITFILE > $TMP_FILE
+
+# Merge files, printing warnings on overrided values
+for MERGE_FILE in $MERGE_LIST ; do
+	echo "Merging $MERGE_FILE"
+	CFG_LIST=$(sed -n "$SED_CONFIG_EXP" $MERGE_FILE)
+
+	for CFG in $CFG_LIST ; do
+		grep -q -w $CFG $TMP_FILE
+		if [ $? -eq 0 ] ; then
+			PREV_VAL=$(grep -w $CFG $TMP_FILE)
+			NEW_VAL=$(grep -w $CFG $MERGE_FILE)
+			if [ "x$PREV_VAL" != "x$NEW_VAL" ] ; then
+			echo Value of $CFG is redefined by fragment $MERGE_FILE:
+			echo Previous  value: $PREV_VAL
+			echo New value:       $NEW_VAL
+			echo
+			elif [ "$WARNREDUN" = "true" ]; then
+			echo Value of $CFG is redundant by fragment $MERGE_FILE:
+			fi
+			sed -i "/$CFG[ =]/d" $TMP_FILE
+		fi
+	done
+	cat $MERGE_FILE >> $TMP_FILE
+done
+
+if [ "$MAKE" = "false" ]; then
+	cp $TMP_FILE $OUTPUT/.config
+	echo "#"
+	echo "# merged configuration written to $OUTPUT/.config (needs make)"
+	echo "#"
+	clean_up
+	exit
+fi
+
+# If we have an output dir, setup the O= argument, otherwise leave
+# it blank, since O=. will create an unnecessary ./source softlink
+OUTPUT_ARG=""
+if [ "$OUTPUT" != "." ] ; then
+	OUTPUT_ARG="O=$OUTPUT"
+fi
+
+
+# Use the merged file as the starting point for:
+# alldefconfig: Fills in any missing symbols with Kconfig default
+# allnoconfig: Fills in any missing symbols with # CONFIG_* is not set
+make KCONFIG_ALLCONFIG=$TMP_FILE $OUTPUT_ARG $ALLTARGET
+
+
+# Check all specified config values took (might have missed-dependency issues)
+for CFG in $(sed -n "$SED_CONFIG_EXP" $TMP_FILE); do
+
+	REQUESTED_VAL=$(grep -w -e "$CFG" $TMP_FILE)
+	ACTUAL_VAL=$(grep -w -e "$CFG" $OUTPUT/.config)
+	if [ "x$REQUESTED_VAL" != "x$ACTUAL_VAL" ] ; then
+		echo "Value requested for $CFG not in final .config"
+		echo "Requested value:  $REQUESTED_VAL"
+		echo "Actual value:     $ACTUAL_VAL"
+		echo ""
+	fi
+done
+
+clean_up
diff --git a/scripts/kconfig/nconf.c b/scripts/kconfig/nconf.c
index 73070cb..dbf31ed 100644
--- a/scripts/kconfig/nconf.c
+++ b/scripts/kconfig/nconf.c
@@ -7,215 +7,208 @@
  */
 #define _GNU_SOURCE
 #include <string.h>
+#include <stdlib.h>
 
 #include "lkc.h"
 #include "nconf.h"
 #include <ctype.h>
 
-static const char nconf_readme[] = N_(
-"Overview\n"
-"--------\n"
-"This interface let you select features and parameters for the build.\n"
-"Features can either be built-in, modularized, or ignored. Parameters\n"
-"must be entered in as decimal or hexadecimal numbers or text.\n"
+static const char nconf_global_help[] = N_(
+"Help windows\n"
+"------------\n"
+"o  Global help:  Unless in a data entry window, pressing <F1> will give \n"
+"   you the global help window, which you are just reading.\n"
 "\n"
-"Menu items beginning with following braces represent features that\n"
-"  [ ] can be built in or removed\n"
-"  < > can be built in, modularized or removed\n"
-"  { } can be built in or modularized (selected by other feature)\n"
-"  - - are selected by other feature,\n"
-"  XXX cannot be selected. Use Symbol Info to find out why,\n"
-"while *, M or whitespace inside braces means to build in, build as\n"
-"a module or to exclude the feature respectively.\n"
+"o  A short version of the global help is available by pressing <F3>.\n"
 "\n"
-"To change any of these features, highlight it with the cursor\n"
-"keys and press <Y> to build it in, <M> to make it a module or\n"
-"<N> to removed it.  You may also press the <Space Bar> to cycle\n"
-"through the available options (ie. Y->N->M->Y).\n"
+"o  Local help:  To get help related to the current menu entry, use any\n"
+"   of <?> <h>, or if in a data entry window then press <F1>.\n"
 "\n"
-"Some additional keyboard hints:\n"
 "\n"
-"Menus\n"
-"----------\n"
-"o  Use the Up/Down arrow keys (cursor keys) to highlight the item\n"
-"   you wish to change use <Enter> or <Space>. Goto submenu by \n"
-"   pressing <Enter> of <right-arrow>. Use <Esc> or <left-arrow> to go back.\n"
-"   Submenus are designated by \"--->\".\n"
-"\n"
-"   Searching: pressing '/' triggers interactive search mode.\n"
-"              nconfig performs a case insensitive search for the string\n"
-"              in the menu prompts (no regex support).\n"
-"              Pressing the up/down keys highlights the previous/next\n"
-"              matching item. Backspace removes one character from the\n"
-"              match string. Pressing either '/' again or ESC exits\n"
-"              search mode. All other keys behave normally.\n"
+"Menu entries\n"
+"------------\n"
+"This interface lets you select features and parameters for the kernel\n"
+"build.  Kernel features can either be built-in, modularized, or removed.\n"
+"Parameters must be entered as text or decimal or hexadecimal numbers.\n"
 "\n"
-"   You may also use the <PAGE UP> and <PAGE DOWN> keys to scroll\n"
-"   unseen options into view.\n"
+"Menu entries beginning with following braces represent features that\n"
+"  [ ]  can be built in or removed\n"
+"  < >  can be built in, modularized or removed\n"
+"  { }  can be built in or modularized, are selected by another feature\n"
+"  - -  are selected by another feature\n"
+"  XXX  cannot be selected.  Symbol Info <F2> tells you why.\n"
+"*, M or whitespace inside braces means to build in, build as a module\n"
+"or to exclude the feature respectively.\n"
 "\n"
-"o  To exit a menu use the just press <ESC> <F5> <F8> or <left-arrow>.\n"
+"To change any of these features, highlight it with the movement keys\n"
+"listed below and press <y> to build it in, <m> to make it a module or\n"
+"<n> to remove it.  You may press the <Space> key to cycle through the\n"
+"available options.\n"
 "\n"
-"o  To get help with an item, press <F1>\n"
-"   Shortcut: Press <h> or <?>.\n"
+"A trailing \"--->\" designates a submenu.\n"
 "\n"
 "\n"
-"Radiolists  (Choice lists)\n"
-"-----------\n"
-"o  Use the cursor keys to select the option you wish to set and press\n"
-"   <S> or the <SPACE BAR>.\n"
+"Menu navigation keys\n"
+"----------------------------------------------------------------------\n"
+"Linewise up                 <Up>\n"
+"Linewise down               <Down>\n"
+"Pagewise up                 <Page Up>\n"
+"Pagewise down               <Page Down>\n"
+"First entry                 <Home>\n"
+"Last entry                  <End>\n"
+"Enter a submenu             <Right>  <Enter>\n"
+"Go back to parent menu      <Left>   <Esc>  <F5>\n"
+"Close a help window         <Enter>  <Esc>  <F5>\n"
+"Close entry window, apply   <Enter>\n"
+"Close entry window, forget  <Esc>  <F5>\n"
+"Start incremental, case-insensitive search for STRING in menu entries,\n"
+"    no regex support, STRING is displayed in upper left corner\n"
+"                            </>STRING\n"
+"    Remove last character   <Backspace>\n"
+"    Jump to next hit        <Down>\n"
+"    Jump to previous hit    <Up>\n"
+"Exit menu search mode       </>  <Esc>\n"
+"Search for configuration variables with or without leading CONFIG_\n"
+"                            <F8>RegExpr<Enter>\n"
+"Verbose search help         <F8><F1>\n"
+"----------------------------------------------------------------------\n"
 "\n"
-"   Shortcut: Press the first letter of the option you wish to set then\n"
-"             press <S> or <SPACE BAR>.\n"
+"Unless in a data entry window, key <1> may be used instead of <F1>,\n"
+"<2> instead of <F2>, etc.\n"
 "\n"
-"o  To see available help for the item, press <F1>\n"
-"   Shortcut: Press <H> or <?>.\n"
 "\n"
+"Radiolist (Choice list)\n"
+"-----------------------\n"
+"Use the movement keys listed above to select the option you wish to set\n"
+"and press <Space>.\n"
 "\n"
-"Data Entry\n"
-"-----------\n"
-"o  Enter the requested information and press <ENTER>\n"
-"   If you are entering hexadecimal values, it is not necessary to\n"
-"   add the '0x' prefix to the entry.\n"
 "\n"
-"o  For help, press <F1>.\n"
+"Data entry\n"
+"----------\n"
+"Enter the requested information and press <Enter>.  Hexadecimal values\n"
+"may be entered without the \"0x\" prefix.\n"
 "\n"
 "\n"
-"Text Box    (Help Window)\n"
-"--------\n"
-"o  Use the cursor keys to scroll up/down/left/right.  The VI editor\n"
-"   keys h,j,k,l function here as do <SPACE BAR> for those\n"
-"   who are familiar with less and lynx.\n"
+"Text Box (Help Window)\n"
+"----------------------\n"
+"Use movement keys as listed in table above.\n"
 "\n"
-"o  Press <Enter>, <F1>, <F5>, <F7> or <Esc> to exit.\n"
+"Press any of <Enter> <Esc> <q> <F5> <F9> to exit.\n"
 "\n"
 "\n"
-"Alternate Configuration Files\n"
+"Alternate configuration files\n"
 "-----------------------------\n"
-"nconfig supports the use of alternate configuration files for\n"
-"those who, for various reasons, find it necessary to switch\n"
-"between different configurations.\n"
+"nconfig supports switching between different configurations.\n"
+"Press <F6> to save your current configuration.  Press <F7> and enter\n"
+"a file name to load a previously saved configuration.\n"
 "\n"
-"At the end of the main menu you will find two options.  One is\n"
-"for saving the current configuration to a file of your choosing.\n"
-"The other option is for loading a previously saved alternate\n"
-"configuration.\n"
 "\n"
-"Even if you don't use alternate configuration files, but you\n"
-"find during a nconfig session that you have completely messed\n"
-"up your settings, you may use the \"Load Alternate...\" option to\n"
-"restore your previously saved settings from \".config\" without\n"
-"restarting nconfig.\n"
+"Terminal configuration\n"
+"----------------------\n"
+"If you use nconfig in a xterm window, make sure your TERM environment\n"
+"variable specifies a terminal configuration which supports at least\n"
+"16 colors.  Otherwise nconfig will look rather bad.\n"
 "\n"
-"Other information\n"
-"-----------------\n"
-"If you use nconfig in an XTERM window make sure you have your\n"
-"$TERM variable set to point to a xterm definition which supports color.\n"
-"Otherwise, nconfig will look rather bad.  nconfig will not\n"
-"display correctly in a RXVT window because rxvt displays only one\n"
-"intensity of color, bright.\n"
+"If the \"stty size\" command reports the current terminalsize correctly,\n"
+"nconfig will adapt to sizes larger than the traditional 80x25 \"standard\"\n"
+"and display longer menus properly.\n"
 "\n"
-"nconfig will display larger menus on screens or xterms which are\n"
-"set to display more than the standard 25 row by 80 column geometry.\n"
-"In order for this to work, the \"stty size\" command must be able to\n"
-"display the screen's current row and column geometry.  I STRONGLY\n"
-"RECOMMEND that you make sure you do NOT have the shell variables\n"
-"LINES and COLUMNS exported into your environment.  Some distributions\n"
-"export those variables via /etc/profile.  Some ncurses programs can\n"
-"become confused when those variables (LINES & COLUMNS) don't reflect\n"
-"the true screen size.\n"
 "\n"
-"Optional personality available\n"
-"------------------------------\n"
-"If you prefer to have all of the options listed in a single menu, rather\n"
-"than the default multimenu hierarchy, run the nconfig with NCONFIG_MODE\n"
-"environment variable set to single_menu. Example:\n"
+"Single menu mode\n"
+"----------------\n"
+"If you prefer to have all of the menu entries listed in a single menu,\n"
+"rather than the default multimenu hierarchy, run nconfig with\n"
+"NCONFIG_MODE environment variable set to single_menu.  Example:\n"
 "\n"
 "make NCONFIG_MODE=single_menu nconfig\n"
 "\n"
-"<Enter> will then unroll the appropriate category, or enfold it if it\n"
-"is already unrolled.\n"
+"<Enter> will then unfold the appropriate category, or fold it if it\n"
+"is already unfolded.  Folded menu entries will be designated by a\n"
+"leading \"++>\" and unfolded entries by a leading \"-->\".\n"
 "\n"
-"Note that this mode can eventually be a little more CPU expensive\n"
-"(especially with a larger number of unrolled categories) than the\n"
-"default mode.\n"
+"Note that this mode can eventually be a little more CPU expensive than\n"
+"the default mode, especially with a larger number of unfolded submenus.\n"
 "\n"),
 menu_no_f_instructions[] = N_(
-" You do not have function keys support. Please follow the\n"
-" following instructions:\n"
-" Arrow keys navigate the menu.\n"
-" <Enter> or <right-arrow> selects submenus --->.\n"
-" Capital Letters are hotkeys.\n"
-" Pressing <Y> includes, <N> excludes, <M> modularizes features.\n"
-" Pressing SpaceBar toggles between the above options.\n"
-" Press <Esc> or <left-arrow> to go back one menu,\n"
-" <?> or <h> for Help, </> for Search.\n"
-" <1> is interchangeable with <F1>, <2> with <F2>, etc.\n"
-" Legend: [*] built-in  [ ] excluded  <M> module  < > module capable.\n"
-" <Esc> always leaves the current window.\n"),
+"Legend:  [*] built-in  [ ] excluded  <M> module  < > module capable.\n"
+"Submenus are designated by a trailing \"--->\".\n"
+"\n"
+"Use the following keys to navigate the menus:\n"
+"Move up or down with <Up> and <Down>.\n"
+"Enter a submenu with <Enter> or <Right>.\n"
+"Exit a submenu to its parent menu with <Esc> or <Left>.\n"
+"Pressing <y> includes, <n> excludes, <m> modularizes features.\n"
+"Pressing <Space> cycles through the available options.\n"
+"To search for menu entries press </>.\n"
+"<Esc> always leaves the current window.\n"
+"\n"
+"You do not have function keys support.\n"
+"Press <1> instead of <F1>, <2> instead of <F2>, etc.\n"
+"For verbose global help use key <1>.\n"
+"For help related to the current menu entry press <?> or <h>.\n"),
 menu_instructions[] = N_(
-" Arrow keys navigate the menu.\n"
-" <Enter> or <right-arrow> selects submenus --->.\n"
-" Capital Letters are hotkeys.\n"
-" Pressing <Y> includes, <N> excludes, <M> modularizes features.\n"
-" Pressing SpaceBar toggles between the above options\n"
-" Press <Esc>, <F5> or <left-arrow> to go back one menu,\n"
-" <?>, <F1> or <h> for Help, </> for Search.\n"
-" <1> is interchangeable with <F1>, <2> with <F2>, etc.\n"
-" Legend: [*] built-in  [ ] excluded  <M> module  < > module capable.\n"
-" <Esc> always leaves the current window\n"),
+"Legend:  [*] built-in  [ ] excluded  <M> module  < > module capable.\n"
+"Submenus are designated by a trailing \"--->\".\n"
+"\n"
+"Use the following keys to navigate the menus:\n"
+"Move up or down with <Up> or <Down>.\n"
+"Enter a submenu with <Enter> or <Right>.\n"
+"Exit a submenu to its parent menu with <Esc> or <Left>.\n"
+"Pressing <y> includes, <n> excludes, <m> modularizes features.\n"
+"Pressing <Space> cycles through the available options.\n"
+"To search for menu entries press </>.\n"
+"<Esc> always leaves the current window.\n"
+"\n"
+"Pressing <1> may be used instead of <F1>, <2> instead of <F2>, etc.\n"
+"For verbose global help press <F1>.\n"
+"For help related to the current menu entry press <?> or <h>.\n"),
 radiolist_instructions[] = N_(
-" Use the arrow keys to navigate this window or\n"
-" press the hotkey of the item you wish to select\n"
-" followed by the <SPACE BAR>.\n"
-" Press <?>, <F1> or <h> for additional information about this option.\n"),
+"Press <Up>, <Down>, <Home> or <End> to navigate a radiolist, select\n"
+"with <Space>.\n"
+"For help related to the current entry press <?> or <h>.\n"
+"For global help press <F1>.\n"),
 inputbox_instructions_int[] = N_(
 "Please enter a decimal value.\n"
 "Fractions will not be accepted.\n"
-"Press <RETURN> to accept, <ESC> to cancel."),
+"Press <Enter> to apply, <Esc> to cancel."),
 inputbox_instructions_hex[] = N_(
 "Please enter a hexadecimal value.\n"
-"Press <RETURN> to accept, <ESC> to cancel."),
+"Press <Enter> to apply, <Esc> to cancel."),
 inputbox_instructions_string[] = N_(
 "Please enter a string value.\n"
-"Press <RETURN> to accept, <ESC> to cancel."),
+"Press <Enter> to apply, <Esc> to cancel."),
 setmod_text[] = N_(
-"This feature depends on another which\n"
-"has been configured as a module.\n"
-"As a result, this feature will be built as a module."),
+"This feature depends on another feature which has been configured as a\n"
+"module.  As a result, the current feature will be built as a module too."),
 load_config_text[] = N_(
 "Enter the name of the configuration file you wish to load.\n"
-"Accept the name shown to restore the configuration you\n"
-"last retrieved.  Leave blank to abort."),
+"Accept the name shown to restore the configuration you last\n"
+"retrieved.  Leave empty to abort."),
 load_config_help[] = N_(
-"\n"
 "For various reasons, one may wish to keep several different\n"
 "configurations available on a single machine.\n"
 "\n"
 "If you have saved a previous configuration in a file other than the\n"
-"default one, entering its name here will allow you to modify that\n"
-"configuration.\n"
+"default one, entering its name here will allow you to load and modify\n"
+"that configuration.\n"
 "\n"
-"If you are uncertain, then you have probably never used alternate\n"
-"configuration files.  You should therefor leave this blank to abort.\n"),
+"Leave empty to abort.\n"),
 save_config_text[] = N_(
 "Enter a filename to which this configuration should be saved\n"
-"as an alternate.  Leave blank to abort."),
+"as an alternate.  Leave empty to abort."),
 save_config_help[] = N_(
-"\n"
-"For various reasons, one may wish to keep different configurations\n"
-"available on a single machine.\n"
+"For various reasons, one may wish to keep several different\n"
+"configurations available on a single machine.\n"
 "\n"
 "Entering a file name here will allow you to later retrieve, modify\n"
 "and use the current configuration as an alternate to whatever\n"
 "configuration options you have selected at that time.\n"
 "\n"
-"If you are uncertain what all this means then you should probably\n"
-"leave this blank.\n"),
+"Leave empty to abort.\n"),
 search_help[] = N_(
-"\n"
-"Search for symbols and display their relations. Regular expressions\n"
-"are allowed.\n"
-"Example: search for \"^FOO\"\n"
+"Search for symbols (configuration variable names CONFIG_*) and display\n"
+"their relations.  Regular expressions are supported.\n"
+"Example:  Search for \"^FOO\".\n"
 "Result:\n"
 "-----------------------------------------------------------------\n"
 "Symbol: FOO [ = m]\n"
@@ -223,32 +216,32 @@ search_help[] = N_(
 "Defined at drivers/pci/Kconfig:47\n"
 "Depends on: X86_LOCAL_APIC && X86_IO_APIC || IA64\n"
 "Location:\n"
-"  -> Bus options (PCI, PCMCIA, EISA, MCA, ISA)\n"
+"  -> Bus options (PCI, PCMCIA, EISA, ISA)\n"
 "    -> PCI support (PCI [ = y])\n"
 "      -> PCI access mode (<choice> [ = y])\n"
 "Selects: LIBCRC32\n"
 "Selected by: BAR\n"
 "-----------------------------------------------------------------\n"
-"o The line 'Prompt:' shows the text used in the menu structure for\n"
-"  this symbol\n"
-"o The 'Defined at' line tell at what file / line number the symbol\n"
-"  is defined\n"
-"o The 'Depends on:' line tell what symbols needs to be defined for\n"
-"  this symbol to be visible in the menu (selectable)\n"
-"o The 'Location:' lines tell where in the menu structure this symbol\n"
-"  is located\n"
-"    A location followed by a [ = y] indicate that this is a selectable\n"
-"    menu item - and current value is displayed inside brackets.\n"
-"o The 'Selects:' line tell what symbol will be automatically\n"
-"  selected if this symbol is selected (y or m)\n"
-"o The 'Selected by' line tell what symbol has selected this symbol\n"
+"o  The line 'Prompt:' shows the text displayed for this symbol in\n"
+"   the menu hierarchy.\n"
+"o  The 'Defined at' line tells at what file / line number the symbol is\n"
+"   defined.\n"
+"o  The 'Depends on:' line lists symbols that need to be defined for\n"
+"   this symbol to be visible and selectable in the menu.\n"
+"o  The 'Location:' lines tell, where in the menu structure this symbol\n"
+"   is located.  A location followed by a [ = y] indicates that this is\n"
+"   a selectable menu item, and the current value is displayed inside\n"
+"   brackets.\n"
+"o  The 'Selects:' line tells, what symbol will be automatically selected\n"
+"   if this symbol is selected (y or m).\n"
+"o  The 'Selected by' line tells what symbol has selected this symbol.\n"
 "\n"
 "Only relevant lines are shown.\n"
 "\n\n"
 "Search examples:\n"
-"Examples: USB  => find all symbols containing USB\n"
-"          ^USB => find all symbols starting with USB\n"
-"          USB$ => find all symbols ending with USB\n"
+"USB  => find all symbols containing USB\n"
+"^USB => find all symbols starting with USB\n"
+"USB$ => find all symbols ending with USB\n"
 "\n");
 
 struct mitem {
@@ -319,19 +312,19 @@ struct function_keys function_keys[] = {
 	},
 	{
 		.key_str = "F2",
-		.func = "Sym Info",
+		.func = "SymInfo",
 		.key = F_SYMBOL,
 		.handler = handle_f2,
 	},
 	{
 		.key_str = "F3",
-		.func = "Insts",
+		.func = "Help 2",
 		.key = F_INSTS,
 		.handler = handle_f3,
 	},
 	{
 		.key_str = "F4",
-		.func = "Config",
+		.func = "ShowAll",
 		.key = F_CONF,
 		.handler = handle_f4,
 	},
@@ -355,7 +348,7 @@ struct function_keys function_keys[] = {
 	},
 	{
 		.key_str = "F8",
-		.func = "Sym Search",
+		.func = "SymSearch",
 		.key = F_SEARCH,
 		.handler = handle_f8,
 	},
@@ -392,7 +385,7 @@ static void print_function_line(void)
 static void handle_f1(int *key, struct menu *current_item)
 {
 	show_scroll_win(main_window,
-			_("README"), _(nconf_readme));
+			_("Global help"), _(nconf_global_help));
 	return;
 }
 
@@ -407,7 +400,7 @@ static void handle_f2(int *key, struct menu *current_item)
 static void handle_f3(int *key, struct menu *current_item)
 {
 	show_scroll_win(main_window,
-			_("Instructions"),
+			_("Short help"),
 			_(current_instructions));
 	return;
 }
@@ -696,13 +689,18 @@ static void search_conf(void)
 {
 	struct symbol **sym_arr;
 	struct gstr res;
+	struct gstr title;
 	char *dialog_input;
 	int dres;
+
+	title = str_new();
+	str_printf( &title, _("Enter %s (sub)string to search for "
+			      "(with or without \"%s\")"), CONFIG_, CONFIG_);
+
 again:
 	dres = dialog_inputbox(main_window,
 			_("Search Configuration Parameter"),
-			_("Enter " CONFIG_ " (sub)string to search for "
-				"(with or without \"" CONFIG_ "\")"),
+			str_get(&title),
 			"", &dialog_input_result, &dialog_input_result_len);
 	switch (dres) {
 	case 0:
@@ -712,6 +710,7 @@ again:
 				_("Search Configuration"), search_help);
 		goto again;
 	default:
+		str_free(&title);
 		return;
 	}
 
@@ -721,11 +720,12 @@ again:
 		dialog_input += strlen(CONFIG_);
 
 	sym_arr = sym_re_search(dialog_input);
-	res = get_relations_str(sym_arr);
+	res = get_relations_str(sym_arr, NULL);
 	free(sym_arr);
 	show_scroll_win(main_window,
 			_("Search Results"), str_get(&res));
 	str_free(&res);
+	str_free(&title);
 }
 
 
@@ -1503,7 +1503,11 @@ int main(int ac, char **av)
 	}
 
 	notimeout(stdscr, FALSE);
+#if NCURSES_REENTRANT
+	set_escdelay(1);
+#else
 	ESCDELAY = 1;
+#endif
 
 	/* set btns menu */
 	curses_menu = new_menu(curses_menu_items);
diff --git a/scripts/kconfig/nconf.gui.c b/scripts/kconfig/nconf.gui.c
index 3b18dd8..9f8c44e 100644
--- a/scripts/kconfig/nconf.gui.c
+++ b/scripts/kconfig/nconf.gui.c
@@ -48,7 +48,7 @@ static void set_normal_colors(void)
 	init_pair(INPUT_FIELD, -1, -1);
 
 	init_pair(FUNCTION_HIGHLIGHT, -1, -1);
-	init_pair(FUNCTION_TEXT, COLOR_BLUE, -1);
+	init_pair(FUNCTION_TEXT, COLOR_YELLOW, -1);
 }
 
 /* available attributes:
@@ -604,9 +604,11 @@ void show_scroll_win(WINDOW *main_window,
 		switch (res) {
 		case KEY_NPAGE:
 		case ' ':
+		case 'd':
 			start_y += text_lines-2;
 			break;
 		case KEY_PPAGE:
+		case 'u':
 			start_y -= text_lines+2;
 			break;
 		case KEY_HOME:
@@ -632,10 +634,10 @@ void show_scroll_win(WINDOW *main_window,
 			start_x++;
 			break;
 		}
-		if (res == 10 || res == 27 || res == 'q'
-		    || res == KEY_F(F_BACK) || res == KEY_F(F_EXIT)) {
+		if (res == 10 || res == 27 || res == 'q' ||
+			res == KEY_F(F_HELP) || res == KEY_F(F_BACK) ||
+			res == KEY_F(F_EXIT))
 			break;
-		}
 		if (start_y < 0)
 			start_y = 0;
 		if (start_y >= total_lines-text_lines)
diff --git a/scripts/kconfig/qconf.cc b/scripts/kconfig/qconf.cc
index df274fe..1500c38 100644
--- a/scripts/kconfig/qconf.cc
+++ b/scripts/kconfig/qconf.cc
@@ -6,6 +6,7 @@
 #include <qglobal.h>
 
 #if QT_VERSION < 0x040000
+#include <stddef.h>
 #include <qmainwindow.h>
 #include <qvbox.h>
 #include <qvaluelist.h>
diff --git a/scripts/kconfig/streamline_config.pl b/scripts/kconfig/streamline_config.pl
index ec7afce..060694f 100644
--- a/scripts/kconfig/streamline_config.pl
+++ b/scripts/kconfig/streamline_config.pl
@@ -45,6 +45,16 @@
 use strict;
 use Getopt::Long;
 
+# set the environment variable LOCALMODCONFIG_DEBUG to get
+# debug output.
+my $debugprint = 0;
+$debugprint = 1 if (defined($ENV{LOCALMODCONFIG_DEBUG}));
+
+sub dprint {
+    return if (!$debugprint);
+    print STDERR @_;
+}
+
 my $config = ".config";
 
 my $uname = `uname -r`;
@@ -90,7 +100,7 @@ my @searchconfigs = (
 	},
 );
 
-sub find_config {
+sub read_config {
     foreach my $conf (@searchconfigs) {
 	my $file = $conf->{"file"};
 
@@ -105,13 +115,15 @@ sub find_config {
 
 	print STDERR "using config: '$file'\n";
 
-	open(CIN, "$exec $file |") || die "Failed to run $exec $file";
-	return;
+	open(my $infile, '-|', "$exec $file") || die "Failed to run $exec $file";
+	my @x = <$infile>;
+	close $infile;
+	return @x;
     }
     die "No config file found";
 }
 
-find_config;
+my @config_file = read_config;
 
 # Parse options
 my $localmodconfig = 0;
@@ -121,7 +133,7 @@ GetOptions("localmodconfig" => \$localmodconfig,
 	   "localyesconfig" => \$localyesconfig);
 
 # Get the build source and top level Kconfig file (passed in)
-my $ksource = $ARGV[0];
+my $ksource = ($ARGV[0] ? $ARGV[0] : '.');
 my $kconfig = $ARGV[1];
 my $lsmod_file = $ENV{'LSMOD'};
 
@@ -144,7 +156,6 @@ sub read_kconfig {
 
     my $state = "NONE";
     my $config;
-    my @kconfigs;
 
     my $cont = 0;
     my $line;
@@ -159,8 +170,8 @@ sub read_kconfig {
 	$source =~ s/\$$env/$ENV{$env}/;
     }
 
-    open(KIN, "$source") || die "Can't open $kconfig";
-    while (<KIN>) {
+    open(my $kinfile, '<', $source) || die "Can't open $kconfig";
+    while (<$kinfile>) {
 	chomp;
 
 	# Make sure that lines ending with \ continue
@@ -178,7 +189,13 @@ sub read_kconfig {
 
 	# collect any Kconfig sources
 	if (/^source\s*"(.*)"/) {
-	    $kconfigs[$#kconfigs+1] = $1;
+	    my $kconfig = $1;
+	    # prevent reading twice.
+	    if (!defined($read_kconfigs{$kconfig})) {
+		$read_kconfigs{$kconfig} = 1;
+		read_kconfig($kconfig);
+	    }
+	    next;
 	}
 
 	# configs found
@@ -186,6 +203,7 @@ sub read_kconfig {
 	    $state = "NEW";
 	    $config = $2;
 
+	    # Add depends for 'if' nesting
 	    for (my $i = 0; $i < $iflevel; $i++) {
 		if ($i) {
 		    $depends{$config} .= " " . $ifdeps[$i];
@@ -204,10 +222,11 @@ sub read_kconfig {
 
 	# Get the configs that select this config
 	} elsif ($state ne "NONE" && /^\s*select\s+(\S+)/) {
-	    if (defined($selects{$1})) {
-		$selects{$1} .= " " . $config;
+	    my $conf = $1;
+	    if (defined($selects{$conf})) {
+		$selects{$conf} .= " " . $config;
 	    } else {
-		$selects{$1} = $config;
+		$selects{$conf} = $config;
 	    }
 
 	# configs without prompts must be selected
@@ -235,48 +254,70 @@ sub read_kconfig {
 	    $state = "NONE";
 	}
     }
-    close(KIN);
-
-    # read in any configs that were found.
-    foreach $kconfig (@kconfigs) {
-	if (!defined($read_kconfigs{$kconfig})) {
-	    $read_kconfigs{$kconfig} = 1;
-	    read_kconfig($kconfig);
-	}
-    }
+    close($kinfile);
 }
 
 if ($kconfig) {
     read_kconfig($kconfig);
 }
 
+# Makefiles can use variables to define their dependencies
+sub convert_vars {
+    my ($line, %vars) = @_;
+
+    my $process = "";
+
+    while ($line =~ s/^(.*?)(\$\((.*?)\))//) {
+	my $start = $1;
+	my $variable = $2;
+	my $var = $3;
+
+	if (defined($vars{$var})) {
+	    $process .= $start . $vars{$var};
+	} else {
+	    $process .= $start . $variable;
+	}
+    }
+
+    $process .= $line;
+
+    return $process;
+}
+
 # Read all Makefiles to map the configs to the objects
 foreach my $makefile (@makefiles) {
 
-    my $cont = 0;
+    my $line = "";
+    my %make_vars;
+
+    open(my $infile, '<', $makefile) || die "Can't open $makefile";
+    while (<$infile>) {
+	# if this line ends with a backslash, continue
+	chomp;
+	if (/^(.*)\\$/) {
+	    $line .= $1;
+	    next;
+	}
+
+	$line .= $_;
+	$_ = $line;
+	$line = "";
 
-    open(MIN,$makefile) || die "Can't open $makefile";
-    while (<MIN>) {
 	my $objs;
 
-	# is this a line after a line with a backslash?
-	if ($cont && /(\S.*)$/) {
-	    $objs = $1;
-	}
-	$cont = 0;
+	# Convert variables in a line (could define configs)
+	$_ = convert_vars($_, %make_vars);
 
 	# collect objects after obj-$(CONFIG_FOO_BAR)
 	if (/obj-\$\((CONFIG_[^\)]*)\)\s*[+:]?=\s*(.*)/) {
 	    $var = $1;
 	    $objs = $2;
+
+	# check if variables are set
+	} elsif (/^\s*(\S+)\s*[:]?=\s*(.*\S)/) {
+	    $make_vars{$1} = $2;
 	}
 	if (defined($objs)) {
-	    # test if the line ends with a backslash
-	    if ($objs =~ m,(.*)\\$,) {
-		$objs = $1;
-		$cont = 1;
-	    }
-
 	    foreach my $obj (split /\s+/,$objs) {
 		$obj =~ s/-/_/g;
 		if ($obj =~ /(.*)\.o$/) {
@@ -297,10 +338,11 @@ foreach my $makefile (@makefiles) {
 	    }
 	}
     }
-    close(MIN);
+    close($infile);
 }
 
 my %modules;
+my $linfile;
 
 if (defined($lsmod_file)) {
     if ( ! -f $lsmod_file) {
@@ -310,13 +352,10 @@ if (defined($lsmod_file)) {
 		die "$lsmod_file not found";
 	}
     }
-    if ( -x $lsmod_file) {
-	# the file is executable, run it
-	open(LIN, "$lsmod_file|");
-    } else {
-	# Just read the contents
-	open(LIN, "$lsmod_file");
-    }
+
+    my $otype = ( -x $lsmod_file) ? '-|' : '<';
+    open($linfile, $otype, $lsmod_file);
+
 } else {
 
     # see what modules are loaded on this system
@@ -333,25 +372,36 @@ if (defined($lsmod_file)) {
 	$lsmod = "lsmod";
     }
 
-    open(LIN,"$lsmod|") || die "Can not call lsmod with $lsmod";
+    open($linfile, '-|', $lsmod) || die "Can not call lsmod with $lsmod";
 }
 
-while (<LIN>) {
+while (<$linfile>) {
 	next if (/^Module/);  # Skip the first line.
 	if (/^(\S+)/) {
 		$modules{$1} = 1;
 	}
 }
-close (LIN);
+close ($linfile);
 
 # add to the configs hash all configs that are needed to enable
-# a loaded module.
+# a loaded module. This is a direct obj-${CONFIG_FOO} += bar.o
+# where we know we need bar.o so we add FOO to the list.
 my %configs;
 foreach my $module (keys(%modules)) {
     if (defined($objects{$module})) {
 	my @arr = @{$objects{$module}};
 	foreach my $conf (@arr) {
 	    $configs{$conf} = $module;
+	    dprint "$conf added by direct ($module)\n";
+	    if ($debugprint) {
+		my $c=$conf;
+		$c =~ s/^CONFIG_//;
+		if (defined($depends{$c})) {
+		    dprint " deps = $depends{$c}\n";
+		} else {
+		    dprint " no deps\n";
+		}
+	    }
 	}
     } else {
 	# Most likely, someone has a custom (binary?) module loaded.
@@ -359,9 +409,24 @@ foreach my $module (keys(%modules)) {
     }
 }
 
+# Read the current config, and see what is enabled. We want to
+# ignore configs that we would not enable anyway.
+
+my %orig_configs;
 my $valid = "A-Za-z_0-9";
+
+foreach my $line (@config_file) {
+    $_ = $line;
+
+    if (/(CONFIG_[$valid]*)=(m|y)/) {
+	$orig_configs{$1} = $2;
+    }
+}
+
 my $repeat = 1;
 
+my $depconfig;
+
 #
 # Note, we do not care about operands (like: &&, ||, !) we want to add any
 # config that is in the depend list of another config. This script does
@@ -370,7 +435,7 @@ my $repeat = 1;
 # to keep on. If A was on in the original config, B would not have been
 # and B would not be turned on by this script.
 #
-sub parse_config_dep_select
+sub parse_config_depends
 {
     my ($p) = @_;
 
@@ -381,10 +446,16 @@ sub parse_config_dep_select
 
 	    $p =~ s/^[^$valid]*[$valid]+//;
 
+	    # We only need to process if the depend config is a module
+	    if (!defined($orig_configs{$conf}) || !$orig_configs{conf} eq "m") {
+		next;
+	    }
+
 	    if (!defined($configs{$conf})) {
 		# We must make sure that this config has its
 		# dependencies met.
 		$repeat = 1; # do again
+		dprint "$conf selected by depend $depconfig\n";
 		$configs{$conf} = 1;
 	    }
 	} else {
@@ -393,31 +464,132 @@ sub parse_config_dep_select
     }
 }
 
-while ($repeat) {
-    $repeat = 0;
+# Select is treated a bit differently than depends. We call this
+# when a config has no prompt and requires another config to be
+# selected. We use to just select all configs that selected this
+# config, but found that that can balloon into enabling hundreds
+# of configs that we do not care about.
+#
+# The idea is we look at all the configs that select it. If one
+# is already in our list of configs to enable, then there's nothing
+# else to do. If there isn't, we pick the first config that was
+# enabled in the orignal config and use that.
+sub parse_config_selects
+{
+    my ($config, $p) = @_;
 
-    foreach my $config (keys %configs) {
-	$config =~ s/^CONFIG_//;
+    my $next_config;
+
+    while ($p =~ /[$valid]/) {
+
+	if ($p =~ /^[^$valid]*([$valid]+)/) {
+	    my $conf = "CONFIG_" . $1;
+
+	    $p =~ s/^[^$valid]*[$valid]+//;
+
+	    # Make sure that this config exists in the current .config file
+	    if (!defined($orig_configs{$conf})) {
+		dprint "$conf not set for $config select\n";
+		next;
+	    }
 
-	if (defined($depends{$config})) {
-	    # This config has dependencies. Make sure they are also included
-	    parse_config_dep_select $depends{$config};
+	    # Check if something other than a module selects this config
+	    if (defined($orig_configs{$conf}) && $orig_configs{$conf} ne "m") {
+		dprint "$conf (non module) selects config, we are good\n";
+		# we are good with this
+		return;
+	    }
+	    if (defined($configs{$conf})) {
+		dprint "$conf selects $config so we are good\n";
+		# A set config selects this config, we are good
+		return;
+	    }
+	    # Set this config to be selected
+	    if (!defined($next_config)) {
+		$next_config = $conf;
+	    }
+	} else {
+	    die "this should never happen";
 	}
+    }
 
-	if (defined($prompts{$config}) || !defined($selects{$config})) {
-	    next;
+    # If no possible config selected this, then something happened.
+    if (!defined($next_config)) {
+	print STDERR "WARNING: $config is required, but nothing in the\n";
+	print STDERR "  current config selects it.\n";
+	return;
+    }
+
+    # If we are here, then we found no config that is set and
+    # selects this config. Repeat.
+    $repeat = 1;
+    # Make this config need to be selected
+    $configs{$next_config} = 1;
+    dprint "$next_config selected by select $config\n";
+}
+
+my %process_selects;
+
+# loop through all configs, select their dependencies.
+sub loop_depend {
+    $repeat = 1;
+
+    while ($repeat) {
+	$repeat = 0;
+
+      forloop:
+	foreach my $config (keys %configs) {
+
+	    # If this config is not a module, we do not need to process it
+	    if (defined($orig_configs{$config}) && $orig_configs{$config} ne "m") {
+		next forloop;
+	    }
+
+	    $config =~ s/^CONFIG_//;
+	    $depconfig = $config;
+
+	    if (defined($depends{$config})) {
+		# This config has dependencies. Make sure they are also included
+		parse_config_depends $depends{$config};
+	    }
+
+	    # If the config has no prompt, then we need to check if a config
+	    # that is enabled selected it. Or if we need to enable one.
+	    if (!defined($prompts{$config}) && defined($selects{$config})) {
+		$process_selects{$config} = 1;
+	    }
 	}
+    }
+}
+
+sub loop_select {
+
+    foreach my $config (keys %process_selects) {
+	$config =~ s/^CONFIG_//;
+
+	dprint "Process select $config\n";
 
 	# config has no prompt and must be selected.
-	parse_config_dep_select $selects{$config};
+	parse_config_selects $config, $selects{$config};
     }
 }
 
+while ($repeat) {
+    # Get the first set of configs and their dependencies.
+    loop_depend;
+
+    $repeat = 0;
+
+    # Now we need to see if we have to check selects;
+    loop_select;
+}
+
 my %setconfigs;
 
 # Finally, read the .config file and turn off any module enabled that
 # we could not find a reason to keep enabled.
-while(<CIN>) {
+foreach my $line (@config_file) {
+    $_ = $line;
 
     if (/CONFIG_IKCONFIG/) {
 	if (/# CONFIG_IKCONFIG is not set/) {
@@ -435,6 +607,8 @@ while(<CIN>) {
 	if (defined($configs{$1})) {
 	    if ($localyesconfig) {
 	        $setconfigs{$1} = 'y';
+		print "$1=y\n";
+		next;
 	    } else {
 	        $setconfigs{$1} = $2;
 	    }
@@ -445,7 +619,6 @@ while(<CIN>) {
     }
     print;
 }
-close(CIN);
 
 # Integrity check, make sure all modules that we want enabled do
 # indeed have their configs set.
diff --git a/scripts/kconfig/symbol.c b/scripts/kconfig/symbol.c
index 071f00c..ecc5aa5 100644
--- a/scripts/kconfig/symbol.c
+++ b/scripts/kconfig/symbol.c
@@ -262,11 +262,18 @@ static struct symbol *sym_calc_choice(struct symbol *sym)
 	struct symbol *def_sym;
 	struct property *prop;
 	struct expr *e;
+	int flags;
 
 	/* first calculate all choice values' visibilities */
+	flags = sym->flags;
 	prop = sym_get_choice_prop(sym);
-	expr_list_for_each_sym(prop->expr, e, def_sym)
+	expr_list_for_each_sym(prop->expr, e, def_sym) {
 		sym_calc_visibility(def_sym);
+		if (def_sym->visible != no)
+			flags &= def_sym->flags;
+	}
+
+	sym->flags &= flags | ~SYMBOL_DEF_USER;
 
 	/* is the user choice visible? */
 	def_sym = sym->def[S_DEF_USER].val;
@@ -649,11 +656,11 @@ bool sym_set_string_value(struct symbol *sym, const char *newval)
 	size = strlen(newval) + 1;
 	if (sym->type == S_HEX && (newval[0] != '0' || (newval[1] != 'x' && newval[1] != 'X'))) {
 		size += 2;
-		sym->def[S_DEF_USER].val = val = malloc(size);
+		sym->def[S_DEF_USER].val = val = xmalloc(size);
 		*val++ = '0';
 		*val++ = 'x';
 	} else if (!oldval || strcmp(oldval, newval))
-		sym->def[S_DEF_USER].val = val = malloc(size);
+		sym->def[S_DEF_USER].val = val = xmalloc(size);
 	else
 		return true;
 
@@ -805,7 +812,7 @@ struct symbol *sym_lookup(const char *name, int flags)
 		hash = 0;
 	}
 
-	symbol = malloc(sizeof(*symbol));
+	symbol = xmalloc(sizeof(*symbol));
 	memset(symbol, 0, sizeof(*symbol));
 	symbol->name = new_name;
 	symbol->type = S_UNKNOWN;
@@ -856,7 +863,7 @@ const char *sym_expand_string_value(const char *in)
 	size_t reslen;
 
 	reslen = strlen(in) + 1;
-	res = malloc(reslen);
+	res = xmalloc(reslen);
 	res[0] = '\0';
 
 	while ((src = strchr(in, '$'))) {
@@ -914,7 +921,7 @@ const char *sym_escape_string_value(const char *in)
 		p++;
 	}
 
-	res = malloc(reslen);
+	res = xmalloc(reslen);
 	res[0] = '\0';
 
 	strcat(res, "\"");
@@ -1221,7 +1228,7 @@ struct property *prop_alloc(enum prop_type type, struct symbol *sym)
 	struct property *prop;
 	struct property **propp;
 
-	prop = malloc(sizeof(*prop));
+	prop = xmalloc(sizeof(*prop));
 	memset(prop, 0, sizeof(*prop));
 	prop->type = type;
 	prop->sym = sym;
diff --git a/scripts/kconfig/util.c b/scripts/kconfig/util.c
index d0b8b23..6e7fbf1 100644
--- a/scripts/kconfig/util.c
+++ b/scripts/kconfig/util.c
@@ -23,7 +23,7 @@ struct file *file_lookup(const char *name)
 		}
 	}
 
-	file = malloc(sizeof(*file));
+	file = xmalloc(sizeof(*file));
 	memset(file, 0, sizeof(*file));
 	file->name = file_name;
 	file->next = file_list;
@@ -81,7 +81,7 @@ int file_write_dep(const char *name)
 struct gstr str_new(void)
 {
 	struct gstr gs;
-	gs.s = malloc(sizeof(char) * 64);
+	gs.s = xmalloc(sizeof(char) * 64);
 	gs.len = 64;
 	gs.max_width = 0;
 	strcpy(gs.s, "\0");
@@ -138,3 +138,22 @@ const char *str_get(struct gstr *gs)
 	return gs->s;
 }
 
+void *xmalloc(size_t size)
+{
+	void *p = malloc(size);
+	if (p)
+		return p;
+	fprintf(stderr, "Out of memory.\n");
+	exit(1);
+}
+
+void *xcalloc(size_t nmemb, size_t size)
+{
+	void *p = calloc(nmemb, size);
+	if (p)
+		return p;
+	fprintf(stderr, "Out of memory.\n");
+	exit(1);
+}
+
+
diff --git a/scripts/kconfig/zconf.l b/scripts/kconfig/zconf.l
index 00f9d3a..6555a47 100644
--- a/scripts/kconfig/zconf.l
+++ b/scripts/kconfig/zconf.l
@@ -40,7 +40,7 @@ static void zconf_endfile(void);
 
 static void new_string(void)
 {
-	text = malloc(START_STRSIZE);
+	text = xmalloc(START_STRSIZE);
 	text_asize = START_STRSIZE;
 	text_size = 0;
 	*text = 0;
@@ -62,7 +62,7 @@ static void append_string(const char *str, int size)
 
 static void alloc_string(const char *str, int size)
 {
-	text = malloc(size + 1);
+	text = xmalloc(size + 1);
 	memcpy(text, str, size);
 	text[size] = 0;
 }
@@ -288,7 +288,7 @@ void zconf_initscan(const char *name)
 		exit(1);
 	}
 
-	current_buf = malloc(sizeof(*current_buf));
+	current_buf = xmalloc(sizeof(*current_buf));
 	memset(current_buf, 0, sizeof(*current_buf));
 
 	current_file = file_lookup(name);
@@ -299,7 +299,7 @@ void zconf_nextfile(const char *name)
 {
 	struct file *iter;
 	struct file *file = file_lookup(name);
-	struct buffer *buf = malloc(sizeof(*buf));
+	struct buffer *buf = xmalloc(sizeof(*buf));
 	memset(buf, 0, sizeof(*buf));
 
 	current_buf->state = YY_CURRENT_BUFFER;
diff --git a/scripts/kconfig/zconf.lex.c_shipped b/scripts/kconfig/zconf.lex.c_shipped
index c32b1a4..a0521aa 100644
--- a/scripts/kconfig/zconf.lex.c_shipped
+++ b/scripts/kconfig/zconf.lex.c_shipped
@@ -802,7 +802,7 @@ static void zconf_endfile(void);
 
 static void new_string(void)
 {
-	text = malloc(START_STRSIZE);
+	text = xmalloc(START_STRSIZE);
 	text_asize = START_STRSIZE;
 	text_size = 0;
 	*text = 0;
@@ -824,7 +824,7 @@ static void append_string(const char *str, int size)
 
 static void alloc_string(const char *str, int size)
 {
-	text = malloc(size + 1);
+	text = xmalloc(size + 1);
 	memcpy(text, str, size);
 	text[size] = 0;
 }
@@ -2343,7 +2343,7 @@ void zconf_initscan(const char *name)
 		exit(1);
 	}
 
-	current_buf = malloc(sizeof(*current_buf));
+	current_buf = xmalloc(sizeof(*current_buf));
 	memset(current_buf, 0, sizeof(*current_buf));
 
 	current_file = file_lookup(name);
@@ -2354,7 +2354,7 @@ void zconf_nextfile(const char *name)
 {
 	struct file *iter;
 	struct file *file = file_lookup(name);
-	struct buffer *buf = malloc(sizeof(*buf));
+	struct buffer *buf = xmalloc(sizeof(*buf));
 	memset(buf, 0, sizeof(*buf));
 
 	current_buf->state = YY_CURRENT_BUFFER;
diff --git a/scripts/kconfig/zconf.tab.c_shipped b/scripts/kconfig/zconf.tab.c_shipped
index 877acaf..aacc199 100644
--- a/scripts/kconfig/zconf.tab.c_shipped
+++ b/scripts/kconfig/zconf.tab.c_shipped
@@ -1,19 +1,22 @@
 /* A Bison parser, made by GNU Bison 2.4.3.  */
 
 /* Skeleton implementation for Bison's Yacc-like parsers in C
-   
+
       Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006,
    2009, 2010 Free Software Foundation, Inc.
-   
+
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
-   
+
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details. */
+   GNU General Public License for more details.
+
+   You should have received a copy of the GNU General Public License
+   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */
 
 /* As a special exception, you may create a larger work that contains
    part or all of the Bison parser skeleton and distribute that work
@@ -24,7 +27,7 @@
    special exception, which will cause the skeleton and the resulting
    Bison output files to be licensed under the GNU General Public
    License without this special exception.
-   
+
    This special exception was added by the Free Software Foundation in
    version 2.2 of Bison.  */
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
