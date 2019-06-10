Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFxr-0007Kz-Iw
 for barebox@lists.infradead.org; Mon, 10 Jun 2019 08:47:50 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 10 Jun 2019 17:47:04 +0900
Message-Id: <20190610084704.8996-1-yamada.masahiro@socionext.com>
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
Subject: [PATCH] kconfig: update to Linux 5.2-rc4
To: barebox@lists.infradead.org

The previous sync was Linux 4.20. This updates Kconfig to Linux 5.2-rc4.

I adjusted the top Makefile as well because Linux commit 058507195b53
("kbuild: move ".config not found!" message from Kconfig to Makefile")
moved the .config check from Kconfig to Makefile.

I also made auto.conf a mandatory include file, and remove it from the
prerequisites of other targets. We are safe because Make is immediately
terminated when syncconfig fails to generate auto.conf.

Highlights:

 - The parser has no more shift/reduce conflicts

 - The lexer was rewritten more simply

 - The token lookup table was deleted

 - Replace license boilerplates with SPDX

 - Compile C files as separate units

 - Do not overwrite .config when the content was not changed

 - Lots of bug-fixes and cleanups

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 Makefile                                      |  40 ++-
 scripts/kconfig/.gitignore                    |   1 +
 scripts/kconfig/Makefile                      |  72 ++---
 scripts/kconfig/conf.c                        |  15 +-
 scripts/kconfig/confdata.c                    | 270 +++++++++-------
 scripts/kconfig/expr.c                        |  18 +-
 scripts/kconfig/expr.h                        |   8 +-
 scripts/kconfig/gconf.c                       |  30 +-
 scripts/kconfig/images.c                      |  34 +-
 scripts/kconfig/images.h                      |  33 ++
 scripts/kconfig/kconf_id.c                    |  52 ----
 scripts/kconfig/{zconf.l => lexer.l}          | 238 +++++++-------
 scripts/kconfig/lkc.h                         |  26 +-
 scripts/kconfig/lxdialog/.gitignore           |   4 -
 scripts/kconfig/lxdialog/BIG.FAT.WARNING      |   2 +-
 scripts/kconfig/lxdialog/checklist.c          |  15 +-
 scripts/kconfig/lxdialog/dialog.h             |  15 +-
 scripts/kconfig/lxdialog/inputbox.c           |  18 +-
 scripts/kconfig/lxdialog/menubox.c            |  15 +-
 scripts/kconfig/lxdialog/textbox.c            |  15 +-
 scripts/kconfig/lxdialog/util.c               |  15 +-
 scripts/kconfig/lxdialog/yesno.c              |  15 +-
 scripts/kconfig/mconf.c                       |   4 +-
 scripts/kconfig/menu.c                        |  43 ++-
 scripts/kconfig/merge_config.sh               |  48 ++-
 scripts/kconfig/nconf-cfg.sh                  |   0
 scripts/kconfig/nconf.c                       |  10 +-
 scripts/kconfig/nconf.gui.c                   |   8 +-
 scripts/kconfig/nconf.h                       |   5 +-
 scripts/kconfig/{zconf.y => parser.y}         | 291 +++++++-----------
 scripts/kconfig/preprocess.c                  |   5 +-
 scripts/kconfig/qconf.cc                      |  46 ++-
 scripts/kconfig/qconf.h                       |   3 +-
 scripts/kconfig/streamline_config.pl          |   2 +-
 scripts/kconfig/symbol.c                      |   7 +-
 scripts/kconfig/tests/auto_submenu/Kconfig    |   2 +
 .../kconfig/tests/auto_submenu/__init__.py    |   1 +
 scripts/kconfig/tests/choice/Kconfig          |   2 +
 scripts/kconfig/tests/choice/__init__.py      |   1 +
 .../tests/choice_value_with_m_dep/Kconfig     |   2 +
 .../tests/choice_value_with_m_dep/__init__.py |   1 +
 .../kconfig/tests/err_recursive_inc/Kconfig   |   1 +
 .../tests/err_recursive_inc/Kconfig.inc1      |   1 +
 .../tests/err_recursive_inc/Kconfig.inc2      |   1 +
 .../tests/err_recursive_inc/Kconfig.inc3      |   1 +
 .../tests/err_recursive_inc/__init__.py       |   1 +
 .../tests/err_recursive_inc/expected_stderr   |   6 +-
 scripts/kconfig/tests/inter_choice/Kconfig    |   2 +
 .../kconfig/tests/inter_choice/__init__.py    |   1 +
 .../kconfig/tests/new_choice_with_dep/Kconfig |   2 +
 .../tests/new_choice_with_dep/__init__.py     |   1 +
 .../tests/no_write_if_dep_unmet/Kconfig       |   2 +
 .../tests/no_write_if_dep_unmet/__init__.py   |   1 +
 .../kconfig/tests/rand_nested_choice/Kconfig  |   2 +
 .../tests/rand_nested_choice/__init__.py      |   1 +
 scripts/kconfig/util.c                        |   3 +-
 56 files changed, 694 insertions(+), 764 deletions(-)
 create mode 100644 scripts/kconfig/images.h
 delete mode 100644 scripts/kconfig/kconf_id.c
 rename scripts/kconfig/{zconf.l => lexer.l} (67%)
 delete mode 100644 scripts/kconfig/lxdialog/.gitignore
 mode change 100644 => 100755 scripts/kconfig/nconf-cfg.sh
 rename scripts/kconfig/{zconf.y => parser.y} (74%)

diff --git a/Makefile b/Makefile
index 1027ceceb..02e21a65f 100644
--- a/Makefile
+++ b/Makefile
@@ -428,31 +428,37 @@ else
 # Carefully list dependencies so we do not try to build scripts twice
 # in parallel
 PHONY += scripts
-scripts: scripts_basic include/config/auto.conf
+scripts: scripts_basic
 	$(Q)$(MAKE) $(build)=$(@)
 
 # Objects we will link into barebox / subdirs we need to visit
 common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/
 
 ifeq ($(dot-config),1)
-# Read in config
--include include/config/auto.conf
-
-# Read in dependencies to all Kconfig* files, make sure to run
-# oldconfig if changes are detected.
--include include/config/auto.conf.cmd
-
-# To avoid any implicit rule to kick in, define an empty command
-$(KCONFIG_CONFIG) include/config/auto.conf.cmd: ;
+include include/config/auto.conf
+
+# Read in dependencies to all Kconfig* files, make sure to run syncconfig if
+# changes are detected. This should be included after arch/$(SRCARCH)/Makefile
+# because some architectures define CROSS_COMPILE there.
+include include/config/auto.conf.cmd
+
+$(KCONFIG_CONFIG):
+	@echo >&2 '***'
+	@echo >&2 '*** Configuration file "$@" not found!'
+	@echo >&2 '***'
+	@echo >&2 '*** Please run some configurator (e.g. "make oldconfig" or'
+	@echo >&2 '*** "make menuconfig" or "make xconfig").'
+	@echo >&2 '***'
+	@/bin/false
 
 # The actual configuration files used during the build are stored in
 # include/generated/ and include/config/. Update them if .config is newer than
 # include/config/auto.conf (which mirrors .config).
-include/config/%.conf: $(KCONFIG_CONFIG) include/config/auto.conf.cmd
+#
+# This exploits the 'multi-target pattern rule' trick.
+# The syncconfig should be executed only once to make all the targets.
+%/auto.conf %/auto.conf.cmd %/tristate.conf: $(KCONFIG_CONFIG)
 	$(Q)$(MAKE) -f $(srctree)/Makefile syncconfig
-else
-# Dummy target needed, because used as prerequisite
-include/config/auto.conf: ;
 endif # $(dot-config)
 
 include $(srctree)/arch/$(ARCH)/Makefile
@@ -790,7 +796,7 @@ $(barebox-dirs): prepare scripts
 
 # Store (new) KERNELRELASE string in include/config/kernel.release
 localversion = $(shell $(srctree)/scripts/setlocalversion $(srctree))
-include/config/kernel.release: include/config/auto.conf FORCE
+include/config/kernel.release: FORCE
 	$(Q)rm -f $@
 	$(Q)echo $(KERNELVERSION)$(localversion) > $@
 
@@ -823,7 +829,7 @@ endif
 prepare2: prepare3 outputmakefile
 
 prepare1: prepare2 include/generated/version.h include/generated/utsrelease.h \
-                   include/config.h include/config/auto.conf
+                   include/config.h
 
 ifneq ($(KBUILD_MODULES),)
 	$(Q)mkdir -p $(MODVERDIR)
@@ -854,7 +860,7 @@ define symlink-config-h
 	fi
 endef
 
-include/config.h: include/config/auto.conf
+include/config.h:
 	$(Q)$(symlink-config-h)
 
 # Generate some files
diff --git a/scripts/kconfig/.gitignore b/scripts/kconfig/.gitignore
index 0aabc1d6a..b5bf92f66 100644
--- a/scripts/kconfig/.gitignore
+++ b/scripts/kconfig/.gitignore
@@ -2,6 +2,7 @@
 # Generated files
 #
 *.moc
+*conf-cfg
 
 #
 # configuration programs
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index 63b609243..3f327e21f 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -76,15 +76,13 @@ savedefconfig: $(obj)/conf
 defconfig: $(obj)/conf
 ifeq ($(KBUILD_DEFCONFIG),)
 	$< $(silent) --defconfig $(Kconfig)
-else
-ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)),)
+else ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)),)
 	@$(kecho) "*** Default configuration is based on '$(KBUILD_DEFCONFIG)'"
 	$(Q)$< $(silent) --defconfig=arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG) $(Kconfig)
 else
 	@$(kecho) "*** Default configuration is based on target '$(KBUILD_DEFCONFIG)'"
 	$(Q)$(MAKE) -f $(srctree)/Makefile $(KBUILD_DEFCONFIG)
 endif
-endif
 
 %_defconfig: $(obj)/conf
 	$(Q)$< $(silent) --defconfig=arch/$(SRCARCH)/configs/$@ $(Kconfig)
@@ -142,75 +140,69 @@ help:
 	@echo  '  testconfig	  - Run Kconfig unit tests (requires python3 and pytest)'
 
 # ===========================================================================
-# Shared Makefile for the various kconfig executables:
-# conf:	  Used for defconfig, oldconfig and related targets
 # object files used by all kconfig flavours
+common-objs	:= confdata.o expr.o lexer.lex.o parser.tab.o preprocess.o \
+		   symbol.o
 
-conf-objs	:= conf.o  zconf.tab.o
-
-hostprogs-y := conf
+$(obj)/lexer.lex.o: $(obj)/parser.tab.h
+HOSTCFLAGS_lexer.lex.o	:= -I $(srctree)/$(src)
+HOSTCFLAGS_parser.tab.o	:= -I $(srctree)/$(src)
 
-targets		+= zconf.lex.c
-
-# generated files seem to need this to find local include files
-HOSTCFLAGS_zconf.lex.o	:= -I$(src)
-HOSTCFLAGS_zconf.tab.o	:= -I$(src)
+# conf: Used for defconfig, oldconfig and related targets
+hostprogs-y	+= conf
+conf-objs	:= conf.o $(common-objs)
 
 # nconf: Used for the nconfig target based on ncurses
 hostprogs-y	+= nconf
-nconf-objs	:= nconf.o zconf.tab.o nconf.gui.o
+nconf-objs	:= nconf.o nconf.gui.o $(common-objs)
 
-HOSTLDLIBS_nconf	= $(shell . $(obj)/.nconf-cfg && echo $$libs)
-HOSTCFLAGS_nconf.o	= $(shell . $(obj)/.nconf-cfg && echo $$cflags)
-HOSTCFLAGS_nconf.gui.o	= $(shell . $(obj)/.nconf-cfg && echo $$cflags)
+HOSTLDLIBS_nconf	= $(shell . $(obj)/nconf-cfg && echo $$libs)
+HOSTCFLAGS_nconf.o	= $(shell . $(obj)/nconf-cfg && echo $$cflags)
+HOSTCFLAGS_nconf.gui.o	= $(shell . $(obj)/nconf-cfg && echo $$cflags)
 
-$(obj)/nconf.o $(obj)/nconf.gui.o: $(obj)/.nconf-cfg
+$(obj)/nconf.o $(obj)/nconf.gui.o: $(obj)/nconf-cfg
 
 # mconf: Used for the menuconfig target based on lxdialog
 hostprogs-y	+= mconf
 lxdialog	:= checklist.o inputbox.o menubox.o textbox.o util.o yesno.o
-mconf-objs	:= mconf.o zconf.tab.o $(addprefix lxdialog/, $(lxdialog))
+mconf-objs	:= mconf.o $(addprefix lxdialog/, $(lxdialog)) $(common-objs)
 
-HOSTLDLIBS_mconf = $(shell . $(obj)/.mconf-cfg && echo $$libs)
+HOSTLDLIBS_mconf = $(shell . $(obj)/mconf-cfg && echo $$libs)
 $(foreach f, mconf.o $(lxdialog), \
-  $(eval HOSTCFLAGS_$f = $$(shell . $(obj)/.mconf-cfg && echo $$$$cflags)))
+  $(eval HOSTCFLAGS_$f = $$(shell . $(obj)/mconf-cfg && echo $$$$cflags)))
 
-$(obj)/mconf.o: $(obj)/.mconf-cfg
-$(addprefix $(obj)/lxdialog/, $(lxdialog)): $(obj)/.mconf-cfg
+$(obj)/mconf.o: $(obj)/mconf-cfg
+$(addprefix $(obj)/lxdialog/, $(lxdialog)): $(obj)/mconf-cfg
 
 # qconf: Used for the xconfig target based on Qt
 hostprogs-y	+= qconf
 qconf-cxxobjs	:= qconf.o
-qconf-objs	:= zconf.tab.o
+qconf-objs	:= images.o $(common-objs)
 
-HOSTLDLIBS_qconf	= $(shell . $(obj)/.qconf-cfg && echo $$libs)
-HOSTCXXFLAGS_qconf.o	= $(shell . $(obj)/.qconf-cfg && echo $$cflags)
+HOSTLDLIBS_qconf	= $(shell . $(obj)/qconf-cfg && echo $$libs)
+HOSTCXXFLAGS_qconf.o	= $(shell . $(obj)/qconf-cfg && echo $$cflags)
 
-$(obj)/qconf.o: $(obj)/.qconf-cfg $(obj)/qconf.moc
+$(obj)/qconf.o: $(obj)/qconf-cfg $(obj)/qconf.moc
 
 quiet_cmd_moc = MOC     $@
-      cmd_moc = $(shell . $(obj)/.qconf-cfg && echo $$moc) -i $< -o $@
+      cmd_moc = $(shell . $(obj)/qconf-cfg && echo $$moc) -i $< -o $@
 
-$(obj)/%.moc: $(src)/%.h $(obj)/.qconf-cfg
+$(obj)/%.moc: $(src)/%.h $(obj)/qconf-cfg
 	$(call cmd,moc)
 
 # gconf: Used for the gconfig target based on GTK+
 hostprogs-y	+= gconf
-gconf-objs	:= gconf.o zconf.tab.o
-
-HOSTLDLIBS_gconf    = $(shell . $(obj)/.gconf-cfg && echo $$libs)
-HOSTCFLAGS_gconf.o  = $(shell . $(obj)/.gconf-cfg && echo $$cflags)
+gconf-objs	:= gconf.o images.o $(common-objs)
 
-$(obj)/gconf.o: $(obj)/.gconf-cfg
+HOSTLDLIBS_gconf    = $(shell . $(obj)/gconf-cfg && echo $$libs)
+HOSTCFLAGS_gconf.o  = $(shell . $(obj)/gconf-cfg && echo $$cflags)
 
-$(obj)/zconf.tab.o: $(obj)/zconf.lex.c
+$(obj)/gconf.o: $(obj)/gconf-cfg
 
 # check if necessary packages are available, and configure build flags
-define filechk_conf_cfg
-	$(CONFIG_SHELL) $<
-endef
+filechk_conf_cfg = $(CONFIG_SHELL) $<
 
-$(obj)/.%conf-cfg: $(src)/%conf-cfg.sh FORCE
+$(obj)/%conf-cfg: $(src)/%conf-cfg.sh FORCE
 	$(call filechk,conf_cfg)
 
-clean-files += .*conf-cfg
+clean-files += *conf-cfg
diff --git a/scripts/kconfig/conf.c b/scripts/kconfig/conf.c
index 98e0c7a34..ef3678c24 100644
--- a/scripts/kconfig/conf.c
+++ b/scripts/kconfig/conf.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #include <ctype.h>
@@ -488,7 +488,6 @@ int main(int ac, char **av)
 	const char *progname = av[0];
 	int opt;
 	const char *name, *defconfig_file = NULL /* gcc uninit */;
-	struct stat tmpstat;
 	int no_conf_write = 0;
 
 	tty_stdio = isatty(0) && isatty(1);
@@ -560,18 +559,6 @@ int main(int ac, char **av)
 	name = av[optind];
 	conf_parse(name);
 	//zconfdump(stdout);
-	if (sync_kconfig) {
-		name = conf_get_configname();
-		if (stat(name, &tmpstat)) {
-			fprintf(stderr, "***\n"
-				"*** Configuration file \"%s\" not found!\n"
-				"***\n"
-				"*** Please run some configurator (e.g. \"make oldconfig\" or\n"
-				"*** \"make menuconfig\" or \"make xconfig\").\n"
-				"***\n", name);
-			exit(1);
-		}
-	}
 
 	switch (input_mode) {
 	case defconfig:
diff --git a/scripts/kconfig/confdata.c b/scripts/kconfig/confdata.c
index 91d0a5c01..6006154d3 100644
--- a/scripts/kconfig/confdata.c
+++ b/scripts/kconfig/confdata.c
@@ -1,12 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
+#include <sys/mman.h>
 #include <sys/stat.h>
 #include <ctype.h>
 #include <errno.h>
 #include <fcntl.h>
+#include <limits.h>
 #include <stdarg.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -35,6 +37,52 @@ static bool is_dir(const char *path)
 	return S_ISDIR(st.st_mode);
 }
 
+/* return true if the given two files are the same, false otherwise */
+static bool is_same(const char *file1, const char *file2)
+{
+	int fd1, fd2;
+	struct stat st1, st2;
+	void *map1, *map2;
+	bool ret = false;
+
+	fd1 = open(file1, O_RDONLY);
+	if (fd1 < 0)
+		return ret;
+
+	fd2 = open(file2, O_RDONLY);
+	if (fd2 < 0)
+		goto close1;
+
+	ret = fstat(fd1, &st1);
+	if (ret)
+		goto close2;
+	ret = fstat(fd2, &st2);
+	if (ret)
+		goto close2;
+
+	if (st1.st_size != st2.st_size)
+		goto close2;
+
+	map1 = mmap(NULL, st1.st_size, PROT_READ, MAP_PRIVATE, fd1, 0);
+	if (map1 == MAP_FAILED)
+		goto close2;
+
+	map2 = mmap(NULL, st2.st_size, PROT_READ, MAP_PRIVATE, fd2, 0);
+	if (map2 == MAP_FAILED)
+		goto close2;
+
+	if (bcmp(map1, map2, st1.st_size))
+		goto close2;
+
+	ret = true;
+close2:
+	close(fd2);
+close1:
+	close(fd1);
+
+	return ret;
+}
+
 /*
  * Create the parent directory of the given path.
  *
@@ -74,6 +122,47 @@ static int make_parent_dir(const char *path)
 	return 0;
 }
 
+static char depfile_path[PATH_MAX];
+static size_t depfile_prefix_len;
+
+/* touch depfile for symbol 'name' */
+static int conf_touch_dep(const char *name)
+{
+	int fd, ret;
+	const char *s;
+	char *d, c;
+
+	/* check overflow: prefix + name + ".h" + '\0' must fit in buffer. */
+	if (depfile_prefix_len + strlen(name) + 3 > sizeof(depfile_path))
+		return -1;
+
+	d = depfile_path + depfile_prefix_len;
+	s = name;
+
+	while ((c = *s++))
+		*d++ = (c == '_') ? '/' : tolower(c);
+	strcpy(d, ".h");
+
+	/* Assume directory path already exists. */
+	fd = open(depfile_path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
+	if (fd == -1) {
+		if (errno != ENOENT)
+			return -1;
+
+		ret = make_parent_dir(depfile_path);
+		if (ret)
+			return ret;
+
+		/* Try it again. */
+		fd = open(depfile_path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
+		if (fd == -1)
+			return -1;
+	}
+	close(fd);
+
+	return 0;
+}
+
 struct conf_printer {
 	void (*print_symbol)(FILE *, struct symbol *, const char *, void *);
 	void (*print_comment)(FILE *, const char *, void *);
@@ -137,7 +226,7 @@ const char *conf_get_configname(void)
 	return name ? name : ".config";
 }
 
-const char *conf_get_autoconfig_name(void)
+static const char *conf_get_autoconfig_name(void)
 {
 	char *name = getenv("KCONFIG_AUTOCONFIG");
 
@@ -152,7 +241,7 @@ char *conf_get_default_confname(void)
 	name = expand_string(conf_defname);
 	env = getenv(SRCTREE);
 	if (env) {
-		sprintf(fullname, "%s/%s", env, name);
+		snprintf(fullname, sizeof(fullname), "%s/%s", env, name);
 		if (is_present(fullname))
 			return fullname;
 	}
@@ -186,14 +275,6 @@ static int conf_set_sym_val(struct symbol *sym, int def, int def_flags, char *p)
 			conf_warning("symbol value '%s' invalid for %s",
 				     p, sym->name);
 		return 1;
-	case S_OTHER:
-		if (*p != '"') {
-			for (p2 = p; *p2 && !isspace(*p2); p2++)
-				;
-			sym->type = S_STRING;
-			goto done;
-		}
-		/* fall through */
 	case S_STRING:
 		if (*p++ != '"')
 			break;
@@ -212,7 +293,6 @@ static int conf_set_sym_val(struct symbol *sym, int def, int def_flags, char *p)
 		/* fall through */
 	case S_INT:
 	case S_HEX:
-	done:
 		if (sym_string_valid(sym, p)) {
 			sym->def[def].val = xstrdup(p);
 			sym->flags |= def_flags;
@@ -363,7 +443,7 @@ load:
 				sym = sym_find(line + 2 + strlen(CONFIG_));
 				if (!sym) {
 					sym_add_change_count(1);
-					goto setsym;
+					continue;
 				}
 			} else {
 				sym = sym_lookup(line + 2 + strlen(CONFIG_), 0);
@@ -393,17 +473,22 @@ load:
 				if (*p2 == '\r')
 					*p2 = 0;
 			}
-			if (def == S_DEF_USER) {
-				sym = sym_find(line + strlen(CONFIG_));
-				if (!sym) {
+
+			sym = sym_find(line + strlen(CONFIG_));
+			if (!sym) {
+				if (def == S_DEF_AUTO)
+					/*
+					 * Reading from include/config/auto.conf
+					 * If CONFIG_FOO previously existed in
+					 * auto.conf but it is missing now,
+					 * include/config/foo.h must be touched.
+					 */
+					conf_touch_dep(line + strlen(CONFIG_));
+				else
 					sym_add_change_count(1);
-					goto setsym;
-				}
-			} else {
-				sym = sym_lookup(line + strlen(CONFIG_), 0);
-				if (sym->type == S_UNKNOWN)
-					sym->type = S_OTHER;
+				continue;
 			}
+
 			if (sym->flags & def_flags) {
 				conf_warning("override: reassigning to symbol %s", sym->name);
 			}
@@ -416,7 +501,7 @@ load:
 
 			continue;
 		}
-setsym:
+
 		if (sym && sym_is_choice_value(sym)) {
 			struct symbol *cs = prop_get_symbol(sym_get_choice_prop(sym));
 			switch (sym->def[def].tri) {
@@ -669,7 +754,6 @@ static void conf_write_symbol(FILE *fp, struct symbol *sym,
 	const char *str;
 
 	switch (sym->type) {
-	case S_OTHER:
 	case S_UNKNOWN:
 		break;
 	case S_STRING:
@@ -780,40 +864,35 @@ int conf_write(const char *name)
 	FILE *out;
 	struct symbol *sym;
 	struct menu *menu;
-	const char *basename;
 	const char *str;
-	char dirname[PATH_MAX+1], tmpname[PATH_MAX+22], newname[PATH_MAX+8];
+	char tmpname[PATH_MAX + 1], oldname[PATH_MAX + 1];
 	char *env;
+	bool need_newline = false;
+
+	if (!name)
+		name = conf_get_configname();
+
+	if (!*name) {
+		fprintf(stderr, "config name is empty\n");
+		return -1;
+	}
+
+	if (is_dir(name)) {
+		fprintf(stderr, "%s: Is a directory\n", name);
+		return -1;
+	}
+
+	if (make_parent_dir(name))
+		return -1;
 
-	dirname[0] = 0;
-	if (name && name[0]) {
-		char *slash;
-
-		if (is_dir(name)) {
-			strcpy(dirname, name);
-			strcat(dirname, "/");
-			basename = conf_get_configname();
-		} else if ((slash = strrchr(name, '/'))) {
-			int size = slash - name + 1;
-			memcpy(dirname, name, size);
-			dirname[size] = 0;
-			if (slash[1])
-				basename = slash + 1;
-			else
-				basename = conf_get_configname();
-		} else
-			basename = name;
-	} else
-		basename = conf_get_configname();
-
-	sprintf(newname, "%s%s", dirname, basename);
 	env = getenv("KCONFIG_OVERWRITECONFIG");
-	if (!env || !*env) {
-		sprintf(tmpname, "%s.tmpconfig.%d", dirname, (int)getpid());
-		out = fopen(tmpname, "w");
-	} else {
+	if (env && *env) {
 		*tmpname = 0;
-		out = fopen(newname, "w");
+		out = fopen(name, "w");
+	} else {
+		snprintf(tmpname, sizeof(tmpname), "%s.%d.tmp",
+			 name, (int)getpid());
+		out = fopen(tmpname, "w");
 	}
 	if (!out)
 		return 1;
@@ -834,12 +913,16 @@ int conf_write(const char *name)
 				     "#\n"
 				     "# %s\n"
 				     "#\n", str);
+			need_newline = false;
 		} else if (!(sym->flags & SYMBOL_CHOICE)) {
 			sym_calc_value(sym);
 			if (!(sym->flags & SYMBOL_WRITE))
 				goto next;
+			if (need_newline) {
+				fprintf(out, "\n");
+				need_newline = false;
+			}
 			sym->flags &= ~SYMBOL_WRITE;
-
 			conf_write_symbol(out, sym, &kconfig_printer_cb, NULL);
 		}
 
@@ -851,6 +934,12 @@ next:
 		if (menu->next)
 			menu = menu->next;
 		else while ((menu = menu->parent)) {
+			if (!menu->sym && menu_is_visible(menu) &&
+			    menu != &rootmenu) {
+				str = menu_get_prompt(menu);
+				fprintf(out, "# end of %s\n", str);
+				need_newline = true;
+			}
 			if (menu->next) {
 				menu = menu->next;
 				break;
@@ -860,14 +949,20 @@ next:
 	fclose(out);
 
 	if (*tmpname) {
-		strcat(dirname, basename);
-		strcat(dirname, ".old");
-		rename(newname, dirname);
-		if (rename(tmpname, newname))
+		if (is_same(name, tmpname)) {
+			conf_message("No change to %s", name);
+			unlink(tmpname);
+			sym_set_change_count(0);
+			return 0;
+		}
+
+		snprintf(oldname, sizeof(oldname), "%s.old", name);
+		rename(name, oldname);
+		if (rename(tmpname, name))
 			return 1;
 	}
 
-	conf_message("configuration written to %s", newname);
+	conf_message("configuration written to %s", name);
 
 	sym_set_change_count(0);
 
@@ -880,8 +975,6 @@ static int conf_write_dep(const char *name)
 	struct file *file;
 	FILE *out;
 
-	if (!name)
-		name = ".kconfig.d";
 	out = fopen("..config.tmp", "w");
 	if (!out)
 		return 1;
@@ -906,24 +999,19 @@ static int conf_write_dep(const char *name)
 	return 0;
 }
 
-static int conf_split_config(void)
+static int conf_touch_deps(void)
 {
 	const char *name;
-	char path[PATH_MAX+1];
-	char *s, *d, c;
 	struct symbol *sym;
-	int res, i, fd;
+	int res, i;
+
+	strcpy(depfile_path, "include/config/");
+	depfile_prefix_len = strlen(depfile_path);
 
 	name = conf_get_autoconfig_name();
 	conf_read_simple(name, S_DEF_AUTO);
 	sym_calc_value(modules_sym);
 
-	if (make_parent_dir("include/config/foo.h"))
-		return 1;
-	if (chdir("include/config"))
-		return 1;
-
-	res = 0;
 	for_all_symbols(i, sym) {
 		sym_calc_value(sym);
 		if ((sym->flags & SYMBOL_NO_WRITE) || !sym->name)
@@ -975,42 +1063,12 @@ static int conf_split_config(void)
 		 *	different from 'no').
 		 */
 
-		/* Replace all '_' and append ".h" */
-		s = sym->name;
-		d = path;
-		while ((c = *s++)) {
-			c = tolower(c);
-			*d++ = (c == '_') ? '/' : c;
-		}
-		strcpy(d, ".h");
-
-		/* Assume directory path already exists. */
-		fd = open(path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
-		if (fd == -1) {
-			if (errno != ENOENT) {
-				res = 1;
-				break;
-			}
-
-			if (make_parent_dir(path)) {
-				res = 1;
-				goto out;
-			}
-
-			/* Try it again. */
-			fd = open(path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
-			if (fd == -1) {
-				res = 1;
-				break;
-			}
-		}
-		close(fd);
+		res = conf_touch_dep(sym->name);
+		if (res)
+			return res;
 	}
-out:
-	if (chdir("../.."))
-		return 1;
 
-	return res;
+	return 0;
 }
 
 int conf_write_autoconf(int overwrite)
@@ -1028,7 +1086,7 @@ int conf_write_autoconf(int overwrite)
 
 	conf_write_dep("include/config/auto.conf.cmd");
 
-	if (conf_split_config())
+	if (conf_touch_deps())
 		return 1;
 
 	out = fopen(".tmpconfig", "w");
diff --git a/scripts/kconfig/expr.c b/scripts/kconfig/expr.c
index e1a39e908..77ffff3a0 100644
--- a/scripts/kconfig/expr.c
+++ b/scripts/kconfig/expr.c
@@ -1,8 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
+#include <ctype.h>
+#include <errno.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
@@ -980,7 +982,6 @@ enum string_value_kind {
 	k_string,
 	k_signed,
 	k_unsigned,
-	k_invalid
 };
 
 union string_value {
@@ -1011,13 +1012,10 @@ static enum string_value_kind expr_parse_string(const char *str,
 		val->u = strtoull(str, &tail, 16);
 		kind = k_unsigned;
 		break;
-	case S_STRING:
-	case S_UNKNOWN:
+	default:
 		val->s = strtoll(str, &tail, 0);
 		kind = k_signed;
 		break;
-	default:
-		return k_invalid;
 	}
 	return !errno && !*tail && tail > str && isxdigit(tail[-1])
 	       ? kind : k_string;
@@ -1073,13 +1071,7 @@ tristate expr_calc_value(struct expr *e)
 
 	if (k1 == k_string || k2 == k_string)
 		res = strcmp(str1, str2);
-	else if (k1 == k_invalid || k2 == k_invalid) {
-		if (e->type != E_EQUAL && e->type != E_UNEQUAL) {
-			printf("Cannot compare \"%s\" and \"%s\"\n", str1, str2);
-			return no;
-		}
-		res = strcmp(str1, str2);
-	} else if (k1 == k_unsigned || k2 == k_unsigned)
+	else if (k1 == k_unsigned || k2 == k_unsigned)
 		res = (lval.u > rval.u) - (lval.u < rval.u);
 	else /* if (k1 == k_signed && k2 == k_signed) */
 		res = (lval.s > rval.s) - (lval.s < rval.s);
diff --git a/scripts/kconfig/expr.h b/scripts/kconfig/expr.h
index 7c329e179..8dde65bc3 100644
--- a/scripts/kconfig/expr.h
+++ b/scripts/kconfig/expr.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #ifndef EXPR_H
@@ -62,7 +62,7 @@ struct symbol_value {
 };
 
 enum symbol_type {
-	S_UNKNOWN, S_BOOLEAN, S_TRISTATE, S_INT, S_HEX, S_STRING, S_OTHER
+	S_UNKNOWN, S_BOOLEAN, S_TRISTATE, S_INT, S_HEX, S_STRING
 };
 
 /* enum values are used as index to symbol.def[] */
@@ -131,7 +131,7 @@ struct symbol {
 	struct expr_value implied;
 };
 
-#define for_all_symbols(i, sym) for (i = 0; i < SYMBOL_HASHSIZE; i++) for (sym = symbol_hash[i]; sym; sym = sym->next) if (sym->type != S_OTHER)
+#define for_all_symbols(i, sym) for (i = 0; i < SYMBOL_HASHSIZE; i++) for (sym = symbol_hash[i]; sym; sym = sym->next)
 
 #define SYMBOL_CONST      0x0001  /* symbol is const */
 #define SYMBOL_CHECK      0x0008  /* used during dependency checking */
@@ -172,7 +172,7 @@ struct symbol {
  *         int "BAZ Value"
  *         range 1..255
  *
- * Please, also check zconf.y:print_symbol() when modifying the
+ * Please, also check parser.y:print_symbol() when modifying the
  * list of property types!
  */
 enum prop_type {
diff --git a/scripts/kconfig/gconf.c b/scripts/kconfig/gconf.c
index 0ac700bf1..e36b342f1 100644
--- a/scripts/kconfig/gconf.c
+++ b/scripts/kconfig/gconf.c
@@ -1,9 +1,6 @@
-/* Hey EMACS -*- linux-c -*- */
+// SPDX-License-Identifier: GPL-2.0
 /*
- *
  * Copyright (C) 2002-2003 Romain Lievin <roms@tilp.info>
- * Released under the terms of the GNU GPL v2.0.
- *
  */
 
 #ifdef HAVE_CONFIG_H
@@ -12,7 +9,7 @@
 
 #include <stdlib.h>
 #include "lkc.h"
-#include "images.c"
+#include "images.h"
 
 #include <glade/glade.h>
 #include <gtk/gtk.h>
@@ -78,8 +75,8 @@ static gchar **fill_row(struct menu *menu);
 static void conf_changed(void);
 
 /* Helping/Debugging Functions */
-
-const char *dbg_sym_flags(int val)
+#ifdef DEBUG
+static const char *dbg_sym_flags(int val)
 {
 	static char buf[256];
 
@@ -108,9 +105,10 @@ const char *dbg_sym_flags(int val)
 
 	return buf;
 }
+#endif
 
-void replace_button_icon(GladeXML * xml, GdkDrawable * window,
-			 GtkStyle * style, gchar * btn_name, gchar ** xpm)
+static void replace_button_icon(GladeXML *xml, GdkDrawable *window,
+				GtkStyle *style, gchar *btn_name, gchar **xpm)
 {
 	GdkPixmap *pixmap;
 	GdkBitmap *mask;
@@ -128,7 +126,7 @@ void replace_button_icon(GladeXML * xml, GdkDrawable * window,
 }
 
 /* Main Window Initialization */
-void init_main_window(const gchar * glade_file)
+static void init_main_window(const gchar *glade_file)
 {
 	GladeXML *xml;
 	GtkWidget *widget;
@@ -190,7 +188,7 @@ void init_main_window(const gchar * glade_file)
 	gtk_widget_show(main_wnd);
 }
 
-void init_tree_model(void)
+static void init_tree_model(void)
 {
 	gint i;
 
@@ -220,7 +218,7 @@ void init_tree_model(void)
 	model1 = GTK_TREE_MODEL(tree1);
 }
 
-void init_left_tree(void)
+static void init_left_tree(void)
 {
 	GtkTreeView *view = GTK_TREE_VIEW(tree1_w);
 	GtkCellRenderer *renderer;
@@ -262,7 +260,7 @@ static void renderer_edited(GtkCellRendererText * cell,
 			    const gchar * path_string,
 			    const gchar * new_text, gpointer user_data);
 
-void init_right_tree(void)
+static void init_right_tree(void)
 {
 	GtkTreeView *view = GTK_TREE_VIEW(tree2_w);
 	GtkCellRenderer *renderer;
@@ -1212,8 +1210,8 @@ static GtkTreeIter found;
 /*
  * Find a menu in the GtkTree starting at parent.
  */
-GtkTreeIter *gtktree_iter_find_node(GtkTreeIter * parent,
-				    struct menu *tofind)
+static GtkTreeIter *gtktree_iter_find_node(GtkTreeIter *parent,
+					   struct menu *tofind)
 {
 	GtkTreeIter iter;
 	GtkTreeIter *child = &iter;
@@ -1424,7 +1422,7 @@ static void display_list(void)
 	tree = tree2;
 }
 
-void fixup_rootmenu(struct menu *menu)
+static void fixup_rootmenu(struct menu *menu)
 {
 	struct menu *child;
 	static int menu_cnt = 0;
diff --git a/scripts/kconfig/images.c b/scripts/kconfig/images.c
index d4f84bd4a..b4fa0e4a6 100644
--- a/scripts/kconfig/images.c
+++ b/scripts/kconfig/images.c
@@ -1,9 +1,11 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
-static const char *xpm_load[] = {
+#include "images.h"
+
+const char *xpm_load[] = {
 "22 22 5 1",
 ". c None",
 "# c #000000",
@@ -33,7 +35,7 @@ static const char *xpm_load[] = {
 "###############.......",
 "......................"};
 
-static const char *xpm_save[] = {
+const char *xpm_save[] = {
 "22 22 5 1",
 ". c None",
 "# c #000000",
@@ -63,7 +65,7 @@ static const char *xpm_save[] = {
 "..##################..",
 "......................"};
 
-static const char *xpm_back[] = {
+const char *xpm_back[] = {
 "22 22 3 1",
 ". c None",
 "# c #000083",
@@ -91,7 +93,7 @@ static const char *xpm_back[] = {
 "......................",
 "......................"};
 
-static const char *xpm_tree_view[] = {
+const char *xpm_tree_view[] = {
 "22 22 2 1",
 ". c None",
 "# c #000000",
@@ -118,7 +120,7 @@ static const char *xpm_tree_view[] = {
 "......................",
 "......................"};
 
-static const char *xpm_single_view[] = {
+const char *xpm_single_view[] = {
 "22 22 2 1",
 ". c None",
 "# c #000000",
@@ -145,7 +147,7 @@ static const char *xpm_single_view[] = {
 "......................",
 "......................"};
 
-static const char *xpm_split_view[] = {
+const char *xpm_split_view[] = {
 "22 22 2 1",
 ". c None",
 "# c #000000",
@@ -172,7 +174,7 @@ static const char *xpm_split_view[] = {
 "......................",
 "......................"};
 
-static const char *xpm_symbol_no[] = {
+const char *xpm_symbol_no[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -189,7 +191,7 @@ static const char *xpm_symbol_no[] = {
 " .......... ",
 "            "};
 
-static const char *xpm_symbol_mod[] = {
+const char *xpm_symbol_mod[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -206,7 +208,7 @@ static const char *xpm_symbol_mod[] = {
 " .......... ",
 "            "};
 
-static const char *xpm_symbol_yes[] = {
+const char *xpm_symbol_yes[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -223,7 +225,7 @@ static const char *xpm_symbol_yes[] = {
 " .......... ",
 "            "};
 
-static const char *xpm_choice_no[] = {
+const char *xpm_choice_no[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -240,7 +242,7 @@ static const char *xpm_choice_no[] = {
 "    ....    ",
 "            "};
 
-static const char *xpm_choice_yes[] = {
+const char *xpm_choice_yes[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -257,7 +259,7 @@ static const char *xpm_choice_yes[] = {
 "    ....    ",
 "            "};
 
-static const char *xpm_menu[] = {
+const char *xpm_menu[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -274,7 +276,7 @@ static const char *xpm_menu[] = {
 " .......... ",
 "            "};
 
-static const char *xpm_menu_inv[] = {
+const char *xpm_menu_inv[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -291,7 +293,7 @@ static const char *xpm_menu_inv[] = {
 " .......... ",
 "            "};
 
-static const char *xpm_menuback[] = {
+const char *xpm_menuback[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -308,7 +310,7 @@ static const char *xpm_menuback[] = {
 " .......... ",
 "            "};
 
-static const char *xpm_void[] = {
+const char *xpm_void[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
diff --git a/scripts/kconfig/images.h b/scripts/kconfig/images.h
new file mode 100644
index 000000000..d8ff614bd
--- /dev/null
+++ b/scripts/kconfig/images.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
+ */
+
+#ifndef IMAGES_H
+#define IMAGES_H
+
+#ifdef __cplusplus
+extern "C" {
+#endif
+
+extern const char *xpm_load[];
+extern const char *xpm_save[];
+extern const char *xpm_back[];
+extern const char *xpm_tree_view[];
+extern const char *xpm_single_view[];
+extern const char *xpm_split_view[];
+extern const char *xpm_symbol_no[];
+extern const char *xpm_symbol_mod[];
+extern const char *xpm_symbol_yes[];
+extern const char *xpm_choice_no[];
+extern const char *xpm_choice_yes[];
+extern const char *xpm_menu[];
+extern const char *xpm_menu_inv[];
+extern const char *xpm_menuback[];
+extern const char *xpm_void[];
+
+#ifdef __cplusplus
+}
+#endif
+
+#endif /* IMAGES_H */
diff --git a/scripts/kconfig/kconf_id.c b/scripts/kconfig/kconf_id.c
deleted file mode 100644
index b3e0ea0ac..000000000
--- a/scripts/kconfig/kconf_id.c
+++ /dev/null
@@ -1,52 +0,0 @@
-
-static struct kconf_id kconf_id_array[] = {
-	{ "mainmenu",		T_MAINMENU,		TF_COMMAND },
-	{ "menu",		T_MENU,			TF_COMMAND },
-	{ "endmenu",		T_ENDMENU,		TF_COMMAND },
-	{ "source",		T_SOURCE,		TF_COMMAND },
-	{ "choice",		T_CHOICE,		TF_COMMAND },
-	{ "endchoice",		T_ENDCHOICE,		TF_COMMAND },
-	{ "comment",		T_COMMENT,		TF_COMMAND },
-	{ "config",		T_CONFIG,		TF_COMMAND },
-	{ "menuconfig",		T_MENUCONFIG,		TF_COMMAND },
-	{ "help",		T_HELP,			TF_COMMAND },
-	{ "---help---",		T_HELP,			TF_COMMAND },
-	{ "if",			T_IF,			TF_COMMAND|TF_PARAM },
-	{ "endif",		T_ENDIF,		TF_COMMAND },
-	{ "depends",		T_DEPENDS,		TF_COMMAND },
-	{ "optional",		T_OPTIONAL,		TF_COMMAND },
-	{ "default",		T_DEFAULT,		TF_COMMAND, S_UNKNOWN },
-	{ "prompt",		T_PROMPT,		TF_COMMAND },
-	{ "tristate",		T_TYPE,			TF_COMMAND, S_TRISTATE },
-	{ "def_tristate",	T_DEFAULT,		TF_COMMAND, S_TRISTATE },
-	{ "bool",		T_TYPE,			TF_COMMAND, S_BOOLEAN },
-	{ "def_bool",		T_DEFAULT,		TF_COMMAND, S_BOOLEAN },
-	{ "int",		T_TYPE,			TF_COMMAND, S_INT },
-	{ "hex",		T_TYPE,			TF_COMMAND, S_HEX },
-	{ "string",		T_TYPE,			TF_COMMAND, S_STRING },
-	{ "select",		T_SELECT,		TF_COMMAND },
-	{ "imply",		T_IMPLY,		TF_COMMAND },
-	{ "range",		T_RANGE,		TF_COMMAND },
-	{ "visible",		T_VISIBLE,		TF_COMMAND },
-	{ "option",		T_OPTION,		TF_COMMAND },
-	{ "on",			T_ON,			TF_PARAM },
-	{ "modules",		T_OPT_MODULES,		TF_OPTION },
-	{ "defconfig_list",	T_OPT_DEFCONFIG_LIST,	TF_OPTION },
-	{ "allnoconfig_y",	T_OPT_ALLNOCONFIG_Y,	TF_OPTION },
-};
-
-#define KCONF_ID_ARRAY_SIZE (sizeof(kconf_id_array)/sizeof(struct kconf_id))
-
-static const struct kconf_id *kconf_id_lookup(register const char *str, register unsigned int len)
-{
-	int i;
-
-	for (i = 0; i < KCONF_ID_ARRAY_SIZE; i++) {
-		struct kconf_id *id = kconf_id_array+i;
-		int l = strlen(id->name);
-
-		if (len == l && !memcmp(str, id->name, len))
-			return id;
-	}
-	return NULL;
-}
diff --git a/scripts/kconfig/zconf.l b/scripts/kconfig/lexer.l
similarity index 67%
rename from scripts/kconfig/zconf.l
rename to scripts/kconfig/lexer.l
index 25bd2b89f..6354c905b 100644
--- a/scripts/kconfig/zconf.l
+++ b/scripts/kconfig/lexer.l
@@ -1,11 +1,11 @@
-%option nostdinit noyywrap never-interactive full ecs
-%option 8bit nodefault yylineno
-%x COMMAND HELP STRING PARAM ASSIGN_VAL
-%{
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
+%option nostdinit noyywrap never-interactive full ecs
+%option 8bit nodefault yylineno
+%x ASSIGN_VAL HELP STRING
+%{
 
 #include <assert.h>
 #include <limits.h>
@@ -15,6 +15,9 @@
 #include <unistd.h>
 
 #include "lkc.h"
+#include "parser.tab.h"
+
+#define YY_DECL		static int yylex1(void)
 
 #define START_STRSIZE	16
 
@@ -23,6 +26,8 @@ static struct {
 	int lineno;
 } current_pos;
 
+static int prev_prev_token = T_EOL;
+static int prev_token = T_EOL;
 static char *text;
 static int text_size, text_asize;
 
@@ -73,7 +78,7 @@ static void warn_ignored_character(char chr)
 {
 	fprintf(stderr,
 	        "%s:%d:warning: ignoring unsupported character '%c'\n",
-	        zconf_curname(), zconf_lineno(), chr);
+	        current_file->name, yylineno, chr);
 }
 %}
 
@@ -83,54 +88,73 @@ n	[A-Za-z0-9_-]
 	int str = 0;
 	int ts, i;
 
-[ \t]*#.*\n	|
-[ \t]*\n	{
-	return T_EOL;
-}
-[ \t]*#.*
-
-
-[ \t]+	{
-	BEGIN(COMMAND);
-}
-
-.	{
-	unput(yytext[0]);
-	BEGIN(COMMAND);
-}
-
-
-<COMMAND>{
-	{n}+	{
-		const struct kconf_id *id = kconf_id_lookup(yytext, yyleng);
-		current_pos.file = current_file;
-		current_pos.lineno = yylineno;
-		if (id && id->flags & TF_COMMAND) {
-			BEGIN(PARAM);
-			yylval.id = id;
-			return id->token;
-		}
-		alloc_string(yytext, yyleng);
-		yylval.string = text;
-		return T_VARIABLE;
-	}
-	({n}|$)+	{
-		/* this token includes at least one '$' */
-		yylval.string = expand_token(yytext, yyleng);
-		if (strlen(yylval.string))
-			return T_VARIABLE;
-		free(yylval.string);
-	}
-	"="	{ BEGIN(ASSIGN_VAL); yylval.flavor = VAR_RECURSIVE; return T_ASSIGN; }
-	":="	{ BEGIN(ASSIGN_VAL); yylval.flavor = VAR_SIMPLE; return T_ASSIGN; }
-	"+="	{ BEGIN(ASSIGN_VAL); yylval.flavor = VAR_APPEND; return T_ASSIGN; }
-	[[:blank:]]+
-	.	warn_ignored_character(*yytext);
-	\n	{
-		BEGIN(INITIAL);
-		return T_EOL;
-	}
-}
+#.*			/* ignore comment */
+[ \t]*			/* whitespaces */
+\\\n			/* escaped new line */
+\n			return T_EOL;
+"allnoconfig_y"		return T_ALLNOCONFIG_Y;
+"bool"			return T_BOOL;
+"choice"		return T_CHOICE;
+"comment"		return T_COMMENT;
+"config"		return T_CONFIG;
+"def_bool"		return T_DEF_BOOL;
+"def_tristate"		return T_DEF_TRISTATE;
+"default"		return T_DEFAULT;
+"defconfig_list"	return T_DEFCONFIG_LIST;
+"depends"		return T_DEPENDS;
+"endchoice"		return T_ENDCHOICE;
+"endif"			return T_ENDIF;
+"endmenu"		return T_ENDMENU;
+"help"|"---help---"	return T_HELP;
+"hex"			return T_HEX;
+"if"			return T_IF;
+"imply"			return T_IMPLY;
+"int"			return T_INT;
+"mainmenu"		return T_MAINMENU;
+"menu"			return T_MENU;
+"menuconfig"		return T_MENUCONFIG;
+"modules"		return T_MODULES;
+"on"			return T_ON;
+"option"		return T_OPTION;
+"optional"		return T_OPTIONAL;
+"prompt"		return T_PROMPT;
+"range"			return T_RANGE;
+"select"		return T_SELECT;
+"source"		return T_SOURCE;
+"string"		return T_STRING;
+"tristate"		return T_TRISTATE;
+"visible"		return T_VISIBLE;
+"||"			return T_OR;
+"&&"			return T_AND;
+"="			return T_EQUAL;
+"!="			return T_UNEQUAL;
+"<"			return T_LESS;
+"<="			return T_LESS_EQUAL;
+">"			return T_GREATER;
+">="			return T_GREATER_EQUAL;
+"!"			return T_NOT;
+"("			return T_OPEN_PAREN;
+")"			return T_CLOSE_PAREN;
+":="			return T_COLON_EQUAL;
+"+="			return T_PLUS_EQUAL;
+\"|\'			{
+				str = yytext[0];
+				new_string();
+				BEGIN(STRING);
+			}
+{n}+			{
+				alloc_string(yytext, yyleng);
+				yylval.string = text;
+				return T_WORD;
+			}
+({n}|$)+		{
+				/* this token includes at least one '$' */
+				yylval.string = expand_token(yytext, yyleng);
+				if (strlen(yylval.string))
+					return T_WORD;
+				free(yylval.string);
+			}
+.			warn_ignored_character(*yytext);
 
 <ASSIGN_VAL>{
 	[^[:blank:]\n]+.*	{
@@ -142,71 +166,17 @@ n	[A-Za-z0-9_-]
 	.
 }
 
-<PARAM>{
-	"&&"	return T_AND;
-	"||"	return T_OR;
-	"("	return T_OPEN_PAREN;
-	")"	return T_CLOSE_PAREN;
-	"!"	return T_NOT;
-	"="	return T_EQUAL;
-	"!="	return T_UNEQUAL;
-	"<="	return T_LESS_EQUAL;
-	">="	return T_GREATER_EQUAL;
-	"<"	return T_LESS;
-	">"	return T_GREATER;
-	\"|\'	{
-		str = yytext[0];
-		new_string();
-		BEGIN(STRING);
-	}
-	\n	BEGIN(INITIAL); return T_EOL;
-	({n}|[/.])+	{
-		const struct kconf_id *id = kconf_id_lookup(yytext, yyleng);
-		if (id && id->flags & TF_PARAM) {
-			yylval.id = id;
-			return id->token;
-		}
-		alloc_string(yytext, yyleng);
-		yylval.string = text;
-		return T_WORD;
-	}
-	({n}|[/.$])+	{
-		/* this token includes at least one '$' */
-		yylval.string = expand_token(yytext, yyleng);
-		if (strlen(yylval.string))
-			return T_WORD;
-		free(yylval.string);
-	}
-	#.*	/* comment */
-	\\\n	;
-	[[:blank:]]+
-	.	warn_ignored_character(*yytext);
-	<<EOF>> {
-		BEGIN(INITIAL);
-	}
-}
-
 <STRING>{
 	"$".*	append_expanded_string(yytext);
-	[^$'"\\\n]+/\n	{
-		append_string(yytext, yyleng);
-		yylval.string = text;
-		return T_WORD_QUOTE;
-	}
 	[^$'"\\\n]+	{
 		append_string(yytext, yyleng);
 	}
-	\\.?/\n	{
-		append_string(yytext + 1, yyleng - 1);
-		yylval.string = text;
-		return T_WORD_QUOTE;
-	}
 	\\.?	{
 		append_string(yytext + 1, yyleng - 1);
 	}
 	\'|\"	{
 		if (str == yytext[0]) {
-			BEGIN(PARAM);
+			BEGIN(INITIAL);
 			yylval.string = text;
 			return T_WORD_QUOTE;
 		} else
@@ -216,11 +186,15 @@ n	[A-Za-z0-9_-]
 		fprintf(stderr,
 			"%s:%d:warning: multi-line strings not supported\n",
 			zconf_curname(), zconf_lineno());
+		unput('\n');
 		BEGIN(INITIAL);
-		return T_EOL;
+		yylval.string = text;
+		return T_WORD_QUOTE;
 	}
 	<<EOF>>	{
 		BEGIN(INITIAL);
+		yylval.string = text;
+		return T_WORD_QUOTE;
 	}
 }
 
@@ -271,6 +245,12 @@ n	[A-Za-z0-9_-]
 }
 
 <<EOF>>	{
+	BEGIN(INITIAL);
+
+	if (prev_token != T_EOL && prev_token != T_HELPTEXT)
+		fprintf(stderr, "%s:%d:warning: no new line at end of file\n",
+			current_file->name, yylineno);
+
 	if (current_file) {
 		zconf_endfile();
 		return T_EOL;
@@ -280,6 +260,41 @@ n	[A-Za-z0-9_-]
 }
 
 %%
+
+/* second stage lexer */
+int yylex(void)
+{
+	int token;
+
+repeat:
+	token = yylex1();
+
+	if (prev_token == T_EOL || prev_token == T_HELPTEXT) {
+		if (token == T_EOL) {
+			/* Do not pass unneeded T_EOL to the parser. */
+			goto repeat;
+		} else {
+			/*
+			 * For the parser, update file/lineno at the first token
+			 * of each statement. Generally, \n is a statement
+			 * terminator in Kconfig, but it is not always true
+			 * because \n could be escaped by a backslash.
+			 */
+			current_pos.file = current_file;
+			current_pos.lineno = yylineno;
+		}
+	}
+
+	if (prev_prev_token == T_EOL && prev_token == T_WORD &&
+	    (token == T_EQUAL || token == T_COLON_EQUAL || token == T_PLUS_EQUAL))
+		BEGIN(ASSIGN_VAL);
+
+	prev_prev_token = prev_token;
+	prev_token = token;
+
+	return token;
+}
+
 static char *expand_token(const char *in, size_t n)
 {
 	char *out;
@@ -363,7 +378,8 @@ FILE *zconf_fopen(const char *name)
 	if (!f && name != NULL && name[0] != '/') {
 		env = getenv(SRCTREE);
 		if (env) {
-			sprintf(fullname, "%s/%s", env, name);
+			snprintf(fullname, sizeof(fullname),
+				 "%s/%s", env, name);
 			f = fopen(fullname, "r");
 		}
 	}
diff --git a/scripts/kconfig/lkc.h b/scripts/kconfig/lkc.h
index 9eb7c837c..cbc7658ee 100644
--- a/scripts/kconfig/lkc.h
+++ b/scripts/kconfig/lkc.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #ifndef LKC_H
@@ -30,10 +30,6 @@ static inline const char *CONFIG_prefix(void)
 #undef CONFIG_
 #define CONFIG_ CONFIG_prefix()
 
-#define TF_COMMAND	0x0001
-#define TF_PARAM	0x0002
-#define TF_OPTION	0x0004
-
 enum conf_def_mode {
 	def_default,
 	def_yes,
@@ -42,17 +38,6 @@ enum conf_def_mode {
 	def_random
 };
 
-#define T_OPT_MODULES		1
-#define T_OPT_DEFCONFIG_LIST	2
-#define T_OPT_ALLNOCONFIG_Y	4
-
-struct kconf_id {
-	const char *name;
-	int token;
-	unsigned int flags;
-	enum symbol_type stype;
-};
-
 extern int yylineno;
 void zconfdump(FILE *out);
 void zconf_starthelp(void);
@@ -64,7 +49,6 @@ const char *zconf_curname(void);
 
 /* confdata.c */
 const char *conf_get_configname(void);
-const char *conf_get_autoconfig_name(void);
 char *conf_get_default_confname(void);
 void sym_set_change_count(int count);
 void sym_add_change_count(int count);
@@ -91,7 +75,9 @@ void menu_add_visibility(struct expr *dep);
 struct property *menu_add_prompt(enum prop_type type, char *prompt, struct expr *dep);
 void menu_add_expr(enum prop_type type, struct expr *expr, struct expr *dep);
 void menu_add_symbol(enum prop_type type, struct symbol *sym, struct expr *dep);
-void menu_add_option(int token, char *arg);
+void menu_add_option_modules(void);
+void menu_add_option_defconfig_list(void);
+void menu_add_option_allnoconfig_y(void);
 void menu_finalize(struct menu *parent);
 void menu_set_type(int type);
 
@@ -103,6 +89,9 @@ void *xrealloc(void *p, size_t size);
 char *xstrdup(const char *s);
 char *xstrndup(const char *s, size_t n);
 
+/* lexer.l */
+int yylex(void);
+
 struct gstr {
 	size_t len;
 	char  *s;
@@ -121,6 +110,7 @@ const char *str_get(struct gstr *gs);
 /* symbol.c */
 void sym_clear_all_valid(void);
 struct symbol *sym_choice_default(struct symbol *sym);
+struct property *sym_get_range_prop(struct symbol *sym);
 const char *sym_get_string_default(struct symbol *sym);
 struct symbol *sym_check_deps(struct symbol *sym);
 struct property *prop_alloc(enum prop_type type, struct symbol *sym);
diff --git a/scripts/kconfig/lxdialog/.gitignore b/scripts/kconfig/lxdialog/.gitignore
deleted file mode 100644
index 90b08ff02..000000000
--- a/scripts/kconfig/lxdialog/.gitignore
+++ /dev/null
@@ -1,4 +0,0 @@
-#
-# Generated files
-#
-lxdialog
diff --git a/scripts/kconfig/lxdialog/BIG.FAT.WARNING b/scripts/kconfig/lxdialog/BIG.FAT.WARNING
index a8999d82b..7cb5a7ec9 100644
--- a/scripts/kconfig/lxdialog/BIG.FAT.WARNING
+++ b/scripts/kconfig/lxdialog/BIG.FAT.WARNING
@@ -1,4 +1,4 @@
 This is NOT the official version of dialog.  This version has been
 significantly modified from the original.  It is for use by the Linux
-kernel configuration script.  Please do not bother Savio Lam with 
+kernel configuration script.  Please do not bother Savio Lam with
 questions about this program.
diff --git a/scripts/kconfig/lxdialog/checklist.c b/scripts/kconfig/lxdialog/checklist.c
index 2e96323ad..fd161cfff 100644
--- a/scripts/kconfig/lxdialog/checklist.c
+++ b/scripts/kconfig/lxdialog/checklist.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  checklist.c -- implements the checklist box
  *
@@ -5,20 +6,6 @@
  *     Stuart Herbert - S.Herbert@sheffield.ac.uk: radiolist extension
  *     Alessandro Rubini - rubini@ipvvis.unipv.it: merged the two
  *  MODIFIED FOR LINUX KERNEL CONFIG BY: William Roadcap (roadcap@cfw.com)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include "dialog.h"
diff --git a/scripts/kconfig/lxdialog/dialog.h b/scripts/kconfig/lxdialog/dialog.h
index 0b00be5ab..68b565e3c 100644
--- a/scripts/kconfig/lxdialog/dialog.h
+++ b/scripts/kconfig/lxdialog/dialog.h
@@ -1,21 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  *  dialog.h -- common declarations for all dialog modules
  *
  *  AUTHOR: Savio Lam (lam836@cs.cuhk.hk)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include <sys/types.h>
diff --git a/scripts/kconfig/lxdialog/inputbox.c b/scripts/kconfig/lxdialog/inputbox.c
index fe82ff6d7..1dcfb288e 100644
--- a/scripts/kconfig/lxdialog/inputbox.c
+++ b/scripts/kconfig/lxdialog/inputbox.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  inputbox.c -- implements the input box
  *
  *  ORIGINAL AUTHOR: Savio Lam (lam836@cs.cuhk.hk)
  *  MODIFIED FOR LINUX KERNEL CONFIG BY: William Roadcap (roadcap@cfw.com)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include "dialog.h"
@@ -126,7 +113,8 @@ do_resize:
 			case KEY_DOWN:
 				break;
 			case KEY_BACKSPACE:
-			case 127:
+			case 8:   /* ^H */
+			case 127: /* ^? */
 				if (pos) {
 					wattrset(dialog, dlg.inputbox.atr);
 					if (input_x == 0) {
diff --git a/scripts/kconfig/lxdialog/menubox.c b/scripts/kconfig/lxdialog/menubox.c
index d70cab361..58c2f8afe 100644
--- a/scripts/kconfig/lxdialog/menubox.c
+++ b/scripts/kconfig/lxdialog/menubox.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  menubox.c -- implements the menu box
  *
  *  ORIGINAL AUTHOR: Savio Lam (lam836@cs.cuhk.hk)
  *  MODIFIED FOR LINUX KERNEL CONFIG BY: William Roadcap (roadcapw@cfw.com)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 /*
diff --git a/scripts/kconfig/lxdialog/textbox.c b/scripts/kconfig/lxdialog/textbox.c
index 88d2818ed..4e339b126 100644
--- a/scripts/kconfig/lxdialog/textbox.c
+++ b/scripts/kconfig/lxdialog/textbox.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  textbox.c -- implements the text box
  *
  *  ORIGINAL AUTHOR: Savio Lam (lam836@cs.cuhk.hk)
  *  MODIFIED FOR LINUX KERNEL CONFIG BY: William Roadcap (roadcap@cfw.com)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include "dialog.h"
diff --git a/scripts/kconfig/lxdialog/util.c b/scripts/kconfig/lxdialog/util.c
index f7abdeb92..1b490d4af 100644
--- a/scripts/kconfig/lxdialog/util.c
+++ b/scripts/kconfig/lxdialog/util.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  util.c
  *
  *  ORIGINAL AUTHOR: Savio Lam (lam836@cs.cuhk.hk)
  *  MODIFIED FOR LINUX KERNEL CONFIG BY: William Roadcap (roadcap@cfw.com)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include <stdarg.h>
diff --git a/scripts/kconfig/lxdialog/yesno.c b/scripts/kconfig/lxdialog/yesno.c
index cd1223c90..bcaac9b7b 100644
--- a/scripts/kconfig/lxdialog/yesno.c
+++ b/scripts/kconfig/lxdialog/yesno.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  yesno.c -- implements the yes/no box
  *
  *  ORIGINAL AUTHOR: Savio Lam (lam836@cs.cuhk.hk)
  *  MODIFIED FOR LINUX KERNEL CONFIG BY: William Roadcap (roadcap@cfw.com)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include "dialog.h"
diff --git a/scripts/kconfig/mconf.c b/scripts/kconfig/mconf.c
index 143c05fec..694091f3e 100644
--- a/scripts/kconfig/mconf.c
+++ b/scripts/kconfig/mconf.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  *
  * Introduced single menu mode (show all sub-menus in one large tree).
  * 2002-11-06 Petr Baudis <pasky@ucw.cz>
@@ -936,7 +936,7 @@ static void conf_save(void)
 				set_config_filename(dialog_input_result);
 				return;
 			}
-			show_textbox(NULL, "Can't create file!  Probably a nonexistent directory.", 5, 60);
+			show_textbox(NULL, "Can't create file!", 5, 60);
 			break;
 		case 1:
 			show_helptext("Save Alternate Configuration", save_config_help);
diff --git a/scripts/kconfig/menu.c b/scripts/kconfig/menu.c
index 4cf15d449..d9d164698 100644
--- a/scripts/kconfig/menu.c
+++ b/scripts/kconfig/menu.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #include <ctype.h>
@@ -195,29 +195,26 @@ void menu_add_symbol(enum prop_type type, struct symbol *sym, struct expr *dep)
 	menu_add_prop(type, NULL, expr_alloc_symbol(sym), dep);
 }
 
-void menu_add_option(int token, char *arg)
+void menu_add_option_modules(void)
 {
-	switch (token) {
-	case T_OPT_MODULES:
-		if (modules_sym)
-			zconf_error("symbol '%s' redefines option 'modules'"
-				    " already defined by symbol '%s'",
-				    current_entry->sym->name,
-				    modules_sym->name
-				    );
-		modules_sym = current_entry->sym;
-		break;
-	case T_OPT_DEFCONFIG_LIST:
-		if (!sym_defconfig_list)
-			sym_defconfig_list = current_entry->sym;
-		else if (sym_defconfig_list != current_entry->sym)
-			zconf_error("trying to redefine defconfig symbol");
-		sym_defconfig_list->flags |= SYMBOL_NO_WRITE;
-		break;
-	case T_OPT_ALLNOCONFIG_Y:
-		current_entry->sym->flags |= SYMBOL_ALLNOCONFIG_Y;
-		break;
-	}
+	if (modules_sym)
+		zconf_error("symbol '%s' redefines option 'modules' already defined by symbol '%s'",
+			    current_entry->sym->name, modules_sym->name);
+	modules_sym = current_entry->sym;
+}
+
+void menu_add_option_defconfig_list(void)
+{
+	if (!sym_defconfig_list)
+		sym_defconfig_list = current_entry->sym;
+	else if (sym_defconfig_list != current_entry->sym)
+		zconf_error("trying to redefine defconfig symbol");
+	sym_defconfig_list->flags |= SYMBOL_NO_WRITE;
+}
+
+void menu_add_option_allnoconfig_y(void)
+{
+	current_entry->sym->flags |= SYMBOL_ALLNOCONFIG_Y;
 }
 
 static int menu_validate_number(struct symbol *sym, struct symbol *sym2)
diff --git a/scripts/kconfig/merge_config.sh b/scripts/kconfig/merge_config.sh
index 0ef906499..d924c51d2 100755
--- a/scripts/kconfig/merge_config.sh
+++ b/scripts/kconfig/merge_config.sh
@@ -1,4 +1,6 @@
 #!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+#
 #  merge_config.sh - Takes a list of config fragment values, and merges
 #  them one by one. Provides warnings on overridden values, and specified
 #  values that did not make it to the resulting .config file (due to missed
@@ -10,18 +12,10 @@
 #
 #  Copyright (c) 2009-2010 Wind River Systems, Inc.
 #  Copyright 2011 Linaro
-#
-#  This program is free software; you can redistribute it and/or modify
-#  it under the terms of the GNU General Public License version 2 as
-#  published by the Free Software Foundation.
-#
-#  This program is distributed in the hope that it will be useful,
-#  but WITHOUT ANY WARRANTY; without even the implied warranty of
-#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
-#  See the GNU General Public License for more details.
 
 clean_up() {
 	rm -f $TMP_FILE
+	rm -f $MERGE_FILE
 	exit
 }
 trap clean_up HUP INT TERM
@@ -32,6 +26,7 @@ usage() {
 	echo "  -m    only merge the fragments, do not execute the make command"
 	echo "  -n    use allnoconfig instead of alldefconfig"
 	echo "  -r    list redundant entries when merging fragments"
+	echo "  -y    make builtin have precedence over modules"
 	echo "  -O    dir to put generated output files.  Consider setting \$KCONFIG_CONFIG instead."
 	echo
 	echo "Used prefix: '$CONFIG_PREFIX'. You can redefine it with \$CONFIG_ environment variable."
@@ -40,6 +35,7 @@ usage() {
 RUNMAKE=true
 ALLTARGET=alldefconfig
 WARNREDUN=false
+BUILTIN=false
 OUTPUT=.
 CONFIG_PREFIX=${CONFIG_-CONFIG_}
 
@@ -64,6 +60,11 @@ while true; do
 		shift
 		continue
 		;;
+	"-y")
+		BUILTIN=true
+		shift
+		continue
+		;;
 	"-O")
 		if [ -d $2 ];then
 			OUTPUT=$(echo $2 | sed 's/\/*$//')
@@ -106,32 +107,45 @@ SED_CONFIG_EXP1="s/^\(${CONFIG_PREFIX}[a-zA-Z0-9_]*\)=.*/\1/p"
 SED_CONFIG_EXP2="s/^# \(${CONFIG_PREFIX}[a-zA-Z0-9_]*\) is not set$/\1/p"
 
 TMP_FILE=$(mktemp ./.tmp.config.XXXXXXXXXX)
+MERGE_FILE=$(mktemp ./.merge_tmp.config.XXXXXXXXXX)
 
 echo "Using $INITFILE as base"
 cat $INITFILE > $TMP_FILE
 
 # Merge files, printing warnings on overridden values
-for MERGE_FILE in $MERGE_LIST ; do
-	echo "Merging $MERGE_FILE"
-	if [ ! -r "$MERGE_FILE" ]; then
-		echo "The merge file '$MERGE_FILE' does not exist.  Exit." >&2
+for ORIG_MERGE_FILE in $MERGE_LIST ; do
+	echo "Merging $ORIG_MERGE_FILE"
+	if [ ! -r "$ORIG_MERGE_FILE" ]; then
+		echo "The merge file '$ORIG_MERGE_FILE' does not exist.  Exit." >&2
 		exit 1
 	fi
+	cat $ORIG_MERGE_FILE > $MERGE_FILE
 	CFG_LIST=$(sed -n -e "$SED_CONFIG_EXP1" -e "$SED_CONFIG_EXP2" $MERGE_FILE)
 
 	for CFG in $CFG_LIST ; do
 		grep -q -w $CFG $TMP_FILE || continue
 		PREV_VAL=$(grep -w $CFG $TMP_FILE)
 		NEW_VAL=$(grep -w $CFG $MERGE_FILE)
-		if [ "x$PREV_VAL" != "x$NEW_VAL" ] ; then
-			echo Value of $CFG is redefined by fragment $MERGE_FILE:
+		BUILTIN_FLAG=false
+		if [ "$BUILTIN" = "true" ] && [ "${NEW_VAL#CONFIG_*=}" = "m" ] && [ "${PREV_VAL#CONFIG_*=}" = "y" ]; then
+			echo Previous  value: $PREV_VAL
+			echo New value:       $NEW_VAL
+			echo -y passed, will not demote y to m
+			echo
+			BUILTIN_FLAG=true
+		elif [ "x$PREV_VAL" != "x$NEW_VAL" ] ; then
+			echo Value of $CFG is redefined by fragment $ORIG_MERGE_FILE:
 			echo Previous  value: $PREV_VAL
 			echo New value:       $NEW_VAL
 			echo
 		elif [ "$WARNREDUN" = "true" ]; then
-			echo Value of $CFG is redundant by fragment $MERGE_FILE:
+			echo Value of $CFG is redundant by fragment $ORIG_MERGE_FILE:
+		fi
+		if [ "$BUILTIN_FLAG" = "false" ]; then
+			sed -i "/$CFG[ =]/d" $TMP_FILE
+		else
+			sed -i "/$CFG[ =]/d" $MERGE_FILE
 		fi
-		sed -i "/$CFG[ =]/d" $TMP_FILE
 	done
 	cat $MERGE_FILE >> $TMP_FILE
 done
diff --git a/scripts/kconfig/nconf-cfg.sh b/scripts/kconfig/nconf-cfg.sh
old mode 100644
new mode 100755
diff --git a/scripts/kconfig/nconf.c b/scripts/kconfig/nconf.c
index 1ef232ae5..cbafe3bf0 100644
--- a/scripts/kconfig/nconf.c
+++ b/scripts/kconfig/nconf.c
@@ -1,9 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (C) 2008 Nir Tzachar <nir.tzachar@gmail.com?
- * Released under the terms of the GNU GPL v2.0.
+ * Copyright (C) 2008 Nir Tzachar <nir.tzachar@gmail.com>
  *
  * Derived from menuconfig.
- *
  */
 #ifndef _GNU_SOURCE
 #define _GNU_SOURCE
@@ -1049,7 +1048,7 @@ static int do_match(int key, struct match_state *state, int *ans)
 		state->match_direction = FIND_NEXT_MATCH_UP;
 		*ans = get_mext_match(state->pattern,
 				state->match_direction);
-	} else if (key == KEY_BACKSPACE || key == 127) {
+	} else if (key == KEY_BACKSPACE || key == 8 || key == 127) {
 		state->pattern[strlen(state->pattern)-1] = '\0';
 		adj_match_dir(&state->match_direction);
 	} else
@@ -1439,8 +1438,7 @@ static void conf_save(void)
 				set_config_filename(dialog_input_result);
 				return;
 			}
-			btn_dialog(main_window, "Can't create file! "
-				"Probably a nonexistent directory.",
+			btn_dialog(main_window, "Can't create file!",
 				1, "<OK>");
 			break;
 		case 1:
diff --git a/scripts/kconfig/nconf.gui.c b/scripts/kconfig/nconf.gui.c
index 88874acfd..77f525a86 100644
--- a/scripts/kconfig/nconf.gui.c
+++ b/scripts/kconfig/nconf.gui.c
@@ -1,9 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (C) 2008 Nir Tzachar <nir.tzachar@gmail.com?
- * Released under the terms of the GNU GPL v2.0.
+ * Copyright (C) 2008 Nir Tzachar <nir.tzachar@gmail.com>
  *
  * Derived from menuconfig.
- *
  */
 #include "nconf.h"
 #include "lkc.h"
@@ -440,7 +439,8 @@ int dialog_inputbox(WINDOW *main_window,
 		case KEY_F(F_EXIT):
 		case KEY_F(F_BACK):
 			break;
-		case 127:
+		case 8:   /* ^H */
+		case 127: /* ^? */
 		case KEY_BACKSPACE:
 			if (cursor_position > 0) {
 				memmove(&result[cursor_position-1],
diff --git a/scripts/kconfig/nconf.h b/scripts/kconfig/nconf.h
index 2b9e19f60..fa5245eb9 100644
--- a/scripts/kconfig/nconf.h
+++ b/scripts/kconfig/nconf.h
@@ -1,9 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
- * Copyright (C) 2008 Nir Tzachar <nir.tzachar@gmail.com?
- * Released under the terms of the GNU GPL v2.0.
+ * Copyright (C) 2008 Nir Tzachar <nir.tzachar@gmail.com>
  *
  * Derived from menuconfig.
- *
  */
 
 #include <ctype.h>
diff --git a/scripts/kconfig/zconf.y b/scripts/kconfig/parser.y
similarity index 74%
rename from scripts/kconfig/zconf.y
rename to scripts/kconfig/parser.y
index 22fceb264..60936c768 100644
--- a/scripts/kconfig/zconf.y
+++ b/scripts/kconfig/parser.y
@@ -1,8 +1,8 @@
-%{
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
+%{
 
 #include <ctype.h>
 #include <stdarg.h>
@@ -20,66 +20,68 @@
 
 int cdebug = PRINTD;
 
-int yylex(void);
 static void yyerror(const char *err);
 static void zconfprint(const char *err, ...);
 static void zconf_error(const char *err, ...);
-static bool zconf_endtoken(const struct kconf_id *id, int starttoken, int endtoken);
+static bool zconf_endtoken(const char *tokenname,
+			   const char *expected_tokenname);
 
 struct symbol *symbol_hash[SYMBOL_HASHSIZE];
 
 static struct menu *current_menu, *current_entry;
 
 %}
-%expect 30
 
 %union
 {
 	char *string;
-	struct file *file;
 	struct symbol *symbol;
 	struct expr *expr;
 	struct menu *menu;
-	const struct kconf_id *id;
+	enum symbol_type type;
 	enum variable_flavor flavor;
 }
 
-%token <id>T_MAINMENU
-%token <id>T_MENU
-%token <id>T_ENDMENU
-%token <id>T_SOURCE
-%token <id>T_CHOICE
-%token <id>T_ENDCHOICE
-%token <id>T_COMMENT
-%token <id>T_CONFIG
-%token <id>T_MENUCONFIG
-%token <id>T_HELP
 %token <string> T_HELPTEXT
-%token <id>T_IF
-%token <id>T_ENDIF
-%token <id>T_DEPENDS
-%token <id>T_OPTIONAL
-%token <id>T_PROMPT
-%token <id>T_TYPE
-%token <id>T_DEFAULT
-%token <id>T_SELECT
-%token <id>T_IMPLY
-%token <id>T_RANGE
-%token <id>T_VISIBLE
-%token <id>T_OPTION
-%token <id>T_ON
 %token <string> T_WORD
 %token <string> T_WORD_QUOTE
-%token T_UNEQUAL
-%token T_LESS
-%token T_LESS_EQUAL
-%token T_GREATER
-%token T_GREATER_EQUAL
+%token T_ALLNOCONFIG_Y
+%token T_BOOL
+%token T_CHOICE
 %token T_CLOSE_PAREN
+%token T_COLON_EQUAL
+%token T_COMMENT
+%token T_CONFIG
+%token T_DEFAULT
+%token T_DEFCONFIG_LIST
+%token T_DEF_BOOL
+%token T_DEF_TRISTATE
+%token T_DEPENDS
+%token T_ENDCHOICE
+%token T_ENDIF
+%token T_ENDMENU
+%token T_HELP
+%token T_HEX
+%token T_IF
+%token T_IMPLY
+%token T_INT
+%token T_MAINMENU
+%token T_MENU
+%token T_MENUCONFIG
+%token T_MODULES
+%token T_ON
 %token T_OPEN_PAREN
+%token T_OPTION
+%token T_OPTIONAL
+%token T_PLUS_EQUAL
+%token T_PROMPT
+%token T_RANGE
+%token T_SELECT
+%token T_SOURCE
+%token T_STRING
+%token T_TRISTATE
+%token T_VISIBLE
 %token T_EOL
-%token <string> T_VARIABLE
-%token <flavor> T_ASSIGN
 %token <string> T_ASSIGN_VAL
 
 %left T_OR
@@ -91,12 +93,13 @@ static struct menu *current_menu, *current_entry;
 %type <string> prompt
 %type <symbol> nonconst_symbol
 %type <symbol> symbol
+%type <type> type logic_type default
 %type <expr> expr
 %type <expr> if_expr
-%type <id> end
-%type <id> option_name
+%type <string> end
 %type <menu> if_entry menu_entry choice_entry
-%type <string> symbol_option_arg word_opt assign_val
+%type <string> word_opt assign_val
+%type <flavor> assign_op
 
 %destructor {
 	fprintf(stderr, "%s:%d: missing end statement for this entry\n",
@@ -105,15 +108,8 @@ static struct menu *current_menu, *current_entry;
 		menu_end_menu();
 } if_entry menu_entry choice_entry
 
-%{
-/* Include kconf_id.c here so it can see the token constants. */
-#include "kconf_id.c"
-%}
-
 %%
-input: nl start | start;
-
-start: mainmenu_stmt stmt_list | stmt_list;
+input: mainmenu_stmt stmt_list | stmt_list;
 
 /* mainmenu entry */
 
@@ -127,22 +123,12 @@ stmt_list:
 	| stmt_list common_stmt
 	| stmt_list choice_stmt
 	| stmt_list menu_stmt
-	| stmt_list end			{ zconf_error("unexpected end statement"); }
 	| stmt_list T_WORD error T_EOL	{ zconf_error("unknown statement \"%s\"", $2); }
-	| stmt_list option_name error T_EOL
-{
-	zconf_error("unexpected option \"%s\"", $2->name);
-}
 	| stmt_list error T_EOL		{ zconf_error("invalid statement"); }
 ;
 
-option_name:
-	T_DEPENDS | T_PROMPT | T_TYPE | T_SELECT | T_IMPLY | T_OPTIONAL | T_RANGE | T_DEFAULT | T_VISIBLE
-;
-
 common_stmt:
-	  T_EOL
-	| if_stmt
+	  if_stmt
 	| comment_stmt
 	| config_stmt
 	| menuconfig_stmt
@@ -150,12 +136,6 @@ common_stmt:
 	| assignment_stmt
 ;
 
-option_error:
-	  T_WORD error T_EOL		{ zconf_error("unknown option \"%s\"", $1); }
-	| error T_EOL			{ zconf_error("invalid option"); }
-;
-
-
 /* config/menuconfig entry */
 
 config_entry_start: T_CONFIG nonconst_symbol T_EOL
@@ -189,19 +169,16 @@ menuconfig_stmt: menuconfig_entry_start config_option_list
 config_option_list:
 	  /* empty */
 	| config_option_list config_option
-	| config_option_list symbol_option
 	| config_option_list depends
 	| config_option_list help
-	| config_option_list option_error
-	| config_option_list T_EOL
 ;
 
-config_option: T_TYPE prompt_stmt_opt T_EOL
+config_option: type prompt_stmt_opt T_EOL
 {
-	menu_set_type($1->stype);
+	menu_set_type($1);
 	printd(DEBUG_PARSE, "%s:%d:type(%u)\n",
 		zconf_curname(), zconf_lineno(),
-		$1->stype);
+		$1);
 };
 
 config_option: T_PROMPT prompt if_expr T_EOL
@@ -210,14 +187,14 @@ config_option: T_PROMPT prompt if_expr T_EOL
 	printd(DEBUG_PARSE, "%s:%d:prompt\n", zconf_curname(), zconf_lineno());
 };
 
-config_option: T_DEFAULT expr if_expr T_EOL
+config_option: default expr if_expr T_EOL
 {
 	menu_add_expr(P_DEFAULT, $2, $3);
-	if ($1->stype != S_UNKNOWN)
-		menu_set_type($1->stype);
+	if ($1 != S_UNKNOWN)
+		menu_set_type($1);
 	printd(DEBUG_PARSE, "%s:%d:default(%u)\n",
 		zconf_curname(), zconf_lineno(),
-		$1->stype);
+		$1);
 };
 
 config_option: T_SELECT nonconst_symbol if_expr T_EOL
@@ -238,27 +215,20 @@ config_option: T_RANGE symbol symbol if_expr T_EOL
 	printd(DEBUG_PARSE, "%s:%d:range\n", zconf_curname(), zconf_lineno());
 };
 
-symbol_option: T_OPTION symbol_option_list T_EOL
-;
+config_option: T_OPTION T_MODULES T_EOL
+{
+	menu_add_option_modules();
+};
 
-symbol_option_list:
-	  /* empty */
-	| symbol_option_list T_WORD symbol_option_arg
+config_option: T_OPTION T_DEFCONFIG_LIST T_EOL
 {
-	const struct kconf_id *id = kconf_id_lookup($2, strlen($2));
-	if (id && id->flags & TF_OPTION) {
-		menu_add_option(id->token, $3);
-		free($3);
-	}
-	else
-		zconfprint("warning: ignoring unknown option %s", $2);
-	free($2);
+	menu_add_option_defconfig_list();
 };
 
-symbol_option_arg:
-	  /* empty */		{ $$ = NULL; }
-	| T_EQUAL prompt	{ $$ = $2; }
-;
+config_option: T_OPTION T_ALLNOCONFIG_Y T_EOL
+{
+	menu_add_option_allnoconfig_y();
+};
 
 /* choice entry */
 
@@ -279,7 +249,7 @@ choice_entry: choice choice_option_list
 
 choice_end: end
 {
-	if (zconf_endtoken($1, T_CHOICE, T_ENDCHOICE)) {
+	if (zconf_endtoken($1, "choice")) {
 		menu_end_menu();
 		printd(DEBUG_PARSE, "%s:%d:endchoice\n", zconf_curname(), zconf_lineno());
 	}
@@ -293,8 +263,6 @@ choice_option_list:
 	| choice_option_list choice_option
 	| choice_option_list depends
 	| choice_option_list help
-	| choice_option_list T_EOL
-	| choice_option_list option_error
 ;
 
 choice_option: T_PROMPT prompt if_expr T_EOL
@@ -303,15 +271,11 @@ choice_option: T_PROMPT prompt if_expr T_EOL
 	printd(DEBUG_PARSE, "%s:%d:prompt\n", zconf_curname(), zconf_lineno());
 };
 
-choice_option: T_TYPE prompt_stmt_opt T_EOL
+choice_option: logic_type prompt_stmt_opt T_EOL
 {
-	if ($1->stype == S_BOOLEAN || $1->stype == S_TRISTATE) {
-		menu_set_type($1->stype);
-		printd(DEBUG_PARSE, "%s:%d:type(%u)\n",
-			zconf_curname(), zconf_lineno(),
-			$1->stype);
-	} else
-		YYERROR;
+	menu_set_type($1);
+	printd(DEBUG_PARSE, "%s:%d:type(%u)\n",
+	       zconf_curname(), zconf_lineno(), $1);
 };
 
 choice_option: T_OPTIONAL T_EOL
@@ -322,14 +286,26 @@ choice_option: T_OPTIONAL T_EOL
 
 choice_option: T_DEFAULT nonconst_symbol if_expr T_EOL
 {
-	if ($1->stype == S_UNKNOWN) {
-		menu_add_symbol(P_DEFAULT, $2, $3);
-		printd(DEBUG_PARSE, "%s:%d:default\n",
-			zconf_curname(), zconf_lineno());
-	} else
-		YYERROR;
+	menu_add_symbol(P_DEFAULT, $2, $3);
+	printd(DEBUG_PARSE, "%s:%d:default\n",
+	       zconf_curname(), zconf_lineno());
 };
 
+type:
+	  logic_type
+	| T_INT			{ $$ = S_INT; }
+	| T_HEX			{ $$ = S_HEX; }
+	| T_STRING		{ $$ = S_STRING; }
+
+logic_type:
+	  T_BOOL		{ $$ = S_BOOLEAN; }
+	| T_TRISTATE		{ $$ = S_TRISTATE; }
+
+default:
+	  T_DEFAULT		{ $$ = S_UNKNOWN; }
+	| T_DEF_BOOL		{ $$ = S_BOOLEAN; }
+	| T_DEF_TRISTATE	{ $$ = S_TRISTATE; }
+
 choice_block:
 	  /* empty */
 	| choice_block common_stmt
@@ -347,20 +323,13 @@ if_entry: T_IF expr T_EOL
 
 if_end: end
 {
-	if (zconf_endtoken($1, T_IF, T_ENDIF)) {
+	if (zconf_endtoken($1, "if")) {
 		menu_end_menu();
 		printd(DEBUG_PARSE, "%s:%d:endif\n", zconf_curname(), zconf_lineno());
 	}
 };
 
-if_stmt: if_entry if_block if_end
-;
-
-if_block:
-	  /* empty */
-	| if_block common_stmt
-	| if_block menu_stmt
-	| if_block choice_stmt
+if_stmt: if_entry stmt_list if_end
 ;
 
 /* menu entry */
@@ -372,27 +341,26 @@ menu: T_MENU prompt T_EOL
 	printd(DEBUG_PARSE, "%s:%d:menu\n", zconf_curname(), zconf_lineno());
 };
 
-menu_entry: menu visibility_list depends_list
+menu_entry: menu menu_option_list
 {
 	$$ = menu_add_menu();
 };
 
 menu_end: end
 {
-	if (zconf_endtoken($1, T_MENU, T_ENDMENU)) {
+	if (zconf_endtoken($1, "menu")) {
 		menu_end_menu();
 		printd(DEBUG_PARSE, "%s:%d:endmenu\n", zconf_curname(), zconf_lineno());
 	}
 };
 
-menu_stmt: menu_entry menu_block menu_end
+menu_stmt: menu_entry stmt_list menu_end
 ;
 
-menu_block:
+menu_option_list:
 	  /* empty */
-	| menu_block common_stmt
-	| menu_block menu_stmt
-	| menu_block choice_stmt
+	| menu_option_list visible
+	| menu_option_list depends
 ;
 
 source_stmt: T_SOURCE prompt T_EOL
@@ -411,7 +379,12 @@ comment: T_COMMENT prompt T_EOL
 	printd(DEBUG_PARSE, "%s:%d:comment\n", zconf_curname(), zconf_lineno());
 };
 
-comment_stmt: comment depends_list
+comment_stmt: comment comment_option_list
+;
+
+comment_option_list:
+	  /* empty */
+	| comment_option_list depends
 ;
 
 /* help option */
@@ -440,13 +413,6 @@ help: help_start T_HELPTEXT
 
 /* depends option */
 
-depends_list:
-	  /* empty */
-	| depends_list depends
-	| depends_list T_EOL
-	| depends_list option_error
-;
-
 depends: T_DEPENDS T_ON expr T_EOL
 {
 	menu_add_dep($3);
@@ -454,14 +420,7 @@ depends: T_DEPENDS T_ON expr T_EOL
 };
 
 /* visibility option */
-
-visibility_list:
-	  /* empty */
-	| visibility_list visible
-	| visibility_list T_EOL
-;
-
-visible: T_VISIBLE if_expr
+visible: T_VISIBLE if_expr T_EOL
 {
 	menu_add_visibility($2);
 };
@@ -479,14 +438,9 @@ prompt:	  T_WORD
 	| T_WORD_QUOTE
 ;
 
-end:	  T_ENDMENU T_EOL	{ $$ = $1; }
-	| T_ENDCHOICE T_EOL	{ $$ = $1; }
-	| T_ENDIF T_EOL		{ $$ = $1; }
-;
-
-nl:
-	  T_EOL
-	| nl T_EOL
+end:	  T_ENDMENU T_EOL	{ $$ = "menu"; }
+	| T_ENDCHOICE T_EOL	{ $$ = "choice"; }
+	| T_ENDIF T_EOL		{ $$ = "if"; }
 ;
 
 if_expr:  /* empty */			{ $$ = NULL; }
@@ -518,7 +472,13 @@ word_opt: /* empty */			{ $$ = NULL; }
 
 /* assignment statement */
 
-assignment_stmt:  T_VARIABLE T_ASSIGN assign_val T_EOL	{ variable_add($1, $3, $2); free($1); free($3); }
+assignment_stmt:  T_WORD assign_op assign_val T_EOL	{ variable_add($1, $3, $2); free($1); free($3); }
+
+assign_op:
+	  T_EQUAL	{ $$ = VAR_RECURSIVE; }
+	| T_COLON_EQUAL	{ $$ = VAR_SIMPLE; }
+	| T_PLUS_EQUAL	{ $$ = VAR_APPEND; }
+;
 
 assign_val:
 	/* empty */		{ $$ = xstrdup(""); };
@@ -563,35 +523,21 @@ void conf_parse(const char *name)
 	sym_set_change_count(1);
 }
 
-static const char *zconf_tokenname(int token)
-{
-	switch (token) {
-	case T_MENU:		return "menu";
-	case T_ENDMENU:		return "endmenu";
-	case T_CHOICE:		return "choice";
-	case T_ENDCHOICE:	return "endchoice";
-	case T_IF:		return "if";
-	case T_ENDIF:		return "endif";
-	case T_DEPENDS:		return "depends";
-	case T_VISIBLE:		return "visible";
-	}
-	return "<token>";
-}
-
-static bool zconf_endtoken(const struct kconf_id *id, int starttoken, int endtoken)
+static bool zconf_endtoken(const char *tokenname,
+			   const char *expected_tokenname)
 {
-	if (id->token != endtoken) {
+	if (strcmp(tokenname, expected_tokenname)) {
 		zconf_error("unexpected '%s' within %s block",
-			id->name, zconf_tokenname(starttoken));
+			    tokenname, expected_tokenname);
 		yynerrs++;
 		return false;
 	}
 	if (current_menu->file != current_file) {
 		zconf_error("'%s' in different file than '%s'",
-			id->name, zconf_tokenname(starttoken));
+			    tokenname, expected_tokenname);
 		fprintf(stderr, "%s:%d: location of the '%s'\n",
 			current_menu->file->name, current_menu->lineno,
-			zconf_tokenname(starttoken));
+			expected_tokenname);
 		yynerrs++;
 		return false;
 	}
@@ -781,10 +727,5 @@ void zconfdump(FILE *out)
 	}
 }
 
-#include "zconf.lex.c"
 #include "util.c"
-#include "confdata.c"
-#include "expr.c"
-#include "symbol.c"
 #include "menu.c"
-#include "preprocess.c"
diff --git a/scripts/kconfig/preprocess.c b/scripts/kconfig/preprocess.c
index 5ca2df790..592dfbfa9 100644
--- a/scripts/kconfig/preprocess.c
+++ b/scripts/kconfig/preprocess.c
@@ -2,6 +2,7 @@
 //
 // Copyright (C) 2018 Masahiro Yamada <yamada.masahiro@socionext.com>
 
+#include <ctype.h>
 #include <stdarg.h>
 #include <stdbool.h>
 #include <stdio.h>
@@ -9,6 +10,7 @@
 #include <string.h>
 
 #include "list.h"
+#include "lkc.h"
 
 #define ARRAY_SIZE(arr)		(sizeof(arr) / sizeof((arr)[0]))
 
@@ -555,8 +557,7 @@ char *expand_string(const char *in)
 
 static bool is_end_of_token(char c)
 {
-	/* Why are '.' and '/' valid characters for symbols? */
-	return !(isalnum(c) || c == '_' || c == '-' || c == '.' || c == '/');
+	return !(isalnum(c) || c == '_' || c == '-');
 }
 
 /*
diff --git a/scripts/kconfig/qconf.cc b/scripts/kconfig/qconf.cc
index ef4310f25..ce7fc87a4 100644
--- a/scripts/kconfig/qconf.cc
+++ b/scripts/kconfig/qconf.cc
@@ -1,7 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
  * Copyright (C) 2015 Boris Barbulovski <bbarbulovski@gmail.com>
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #include <qglobal.h>
@@ -32,7 +32,7 @@
 #include "qconf.h"
 
 #include "qconf.moc"
-#include "images.c"
+#include "images.h"
 
 
 static QApplication *configApp;
@@ -1392,6 +1392,8 @@ ConfigMainWindow::ConfigMainWindow(void)
 	conf_set_changed_callback(conf_changed);
 	// Set saveAction's initial state
 	conf_changed();
+	configname = xstrdup(conf_get_configname());
+
 	QAction *saveAsAction = new QAction("Save &As...", this);
 	  connect(saveAsAction, SIGNAL(triggered(bool)), SLOT(saveConfigAs()));
 	QAction *searchAction = new QAction("&Find", this);
@@ -1520,17 +1522,29 @@ ConfigMainWindow::ConfigMainWindow(void)
 
 void ConfigMainWindow::loadConfig(void)
 {
-	QString s = QFileDialog::getOpenFileName(this, "", conf_get_configname());
-	if (s.isNull())
+	QString str;
+	QByteArray ba;
+	const char *name;
+
+	str = QFileDialog::getOpenFileName(this, "", configname);
+	if (str.isNull())
 		return;
-	if (conf_read(QFile::encodeName(s)))
+
+	ba = str.toLocal8Bit();
+	name = ba.data();
+
+	if (conf_read(name))
 		QMessageBox::information(this, "qconf", "Unable to load configuration!");
+
+	free(configname);
+	configname = xstrdup(name);
+
 	ConfigView::updateListAll();
 }
 
 bool ConfigMainWindow::saveConfig(void)
 {
-	if (conf_write(NULL)) {
+	if (conf_write(configname)) {
 		QMessageBox::information(this, "qconf", "Unable to save configuration!");
 		return false;
 	}
@@ -1541,10 +1555,24 @@ bool ConfigMainWindow::saveConfig(void)
 
 void ConfigMainWindow::saveConfigAs(void)
 {
-	QString s = QFileDialog::getSaveFileName(this, "", conf_get_configname());
-	if (s.isNull())
+	QString str;
+	QByteArray ba;
+	const char *name;
+
+	str = QFileDialog::getSaveFileName(this, "", configname);
+	if (str.isNull())
 		return;
-	saveConfig();
+
+	ba = str.toLocal8Bit();
+	name = ba.data();
+
+	if (conf_write(name)) {
+		QMessageBox::information(this, "qconf", "Unable to save configuration!");
+	}
+	conf_write_autoconf(0);
+
+	free(configname);
+	configname = xstrdup(name);
 }
 
 void ConfigMainWindow::searchConfig(void)
diff --git a/scripts/kconfig/qconf.h b/scripts/kconfig/qconf.h
index a40036d1b..45bfe9b2b 100644
--- a/scripts/kconfig/qconf.h
+++ b/scripts/kconfig/qconf.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #include <QTextBrowser>
@@ -291,6 +291,7 @@ protected:
 class ConfigMainWindow : public QMainWindow {
 	Q_OBJECT
 
+	char *configname;
 	static QAction *saveAction;
 	static void conf_changed(void);
 public:
diff --git a/scripts/kconfig/streamline_config.pl b/scripts/kconfig/streamline_config.pl
index 4686531e2..08d76d7b3 100755
--- a/scripts/kconfig/streamline_config.pl
+++ b/scripts/kconfig/streamline_config.pl
@@ -1,7 +1,7 @@
 #!/usr/bin/env perl
+# SPDX-License-Identifier: GPL-2.0
 #
 # Copyright 2005-2009 - Steven Rostedt
-# Licensed under the terms of the GNU GPL License version 2
 #
 #  It's simple enough to figure out how this works.
 #  If not, then you can ask me at stripconfig@goodmis.org
diff --git a/scripts/kconfig/symbol.c b/scripts/kconfig/symbol.c
index 703b9b899..1f9266dad 100644
--- a/scripts/kconfig/symbol.c
+++ b/scripts/kconfig/symbol.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #include <ctype.h>
@@ -61,8 +61,6 @@ const char *sym_type_name(enum symbol_type type)
 		return "string";
 	case S_UNKNOWN:
 		return "unknown";
-	case S_OTHER:
-		break;
 	}
 	return "???";
 }
@@ -88,7 +86,7 @@ static struct property *sym_get_default_prop(struct symbol *sym)
 	return NULL;
 }
 
-static struct property *sym_get_range_prop(struct symbol *sym)
+struct property *sym_get_range_prop(struct symbol *sym)
 {
 	struct property *prop;
 
@@ -757,7 +755,6 @@ const char *sym_get_string_default(struct symbol *sym)
 		return str;
 	case S_STRING:
 		return str;
-	case S_OTHER:
 	case S_UNKNOWN:
 		break;
 	}
diff --git a/scripts/kconfig/tests/auto_submenu/Kconfig b/scripts/kconfig/tests/auto_submenu/Kconfig
index c17bf2caa..b20761edc 100644
--- a/scripts/kconfig/tests/auto_submenu/Kconfig
+++ b/scripts/kconfig/tests/auto_submenu/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 config A
 	bool "A"
 	default y
diff --git a/scripts/kconfig/tests/auto_submenu/__init__.py b/scripts/kconfig/tests/auto_submenu/__init__.py
index 32e79b85f..25abd927f 100644
--- a/scripts/kconfig/tests/auto_submenu/__init__.py
+++ b/scripts/kconfig/tests/auto_submenu/__init__.py
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 """
 Create submenu for symbols that depend on the preceding one.
 
diff --git a/scripts/kconfig/tests/choice/Kconfig b/scripts/kconfig/tests/choice/Kconfig
index cc60e9ce2..a412205b1 100644
--- a/scripts/kconfig/tests/choice/Kconfig
+++ b/scripts/kconfig/tests/choice/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 config MODULES
 	bool "Enable loadable module support"
 	option modules
diff --git a/scripts/kconfig/tests/choice/__init__.py b/scripts/kconfig/tests/choice/__init__.py
index 9edcc5262..4318fce05 100644
--- a/scripts/kconfig/tests/choice/__init__.py
+++ b/scripts/kconfig/tests/choice/__init__.py
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 """
 Basic choice tests.
 
diff --git a/scripts/kconfig/tests/choice_value_with_m_dep/Kconfig b/scripts/kconfig/tests/choice_value_with_m_dep/Kconfig
index 11ac25c26..7106c26bb 100644
--- a/scripts/kconfig/tests/choice_value_with_m_dep/Kconfig
+++ b/scripts/kconfig/tests/choice_value_with_m_dep/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 config MODULES
 	def_bool y
 	option modules
diff --git a/scripts/kconfig/tests/choice_value_with_m_dep/__init__.py b/scripts/kconfig/tests/choice_value_with_m_dep/__init__.py
index f8d728c7b..075b4e086 100644
--- a/scripts/kconfig/tests/choice_value_with_m_dep/__init__.py
+++ b/scripts/kconfig/tests/choice_value_with_m_dep/__init__.py
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 """
 Hide tristate choice values with mod dependency in y choice.
 
diff --git a/scripts/kconfig/tests/err_recursive_inc/Kconfig b/scripts/kconfig/tests/err_recursive_inc/Kconfig
index 0e4c8750a..c6f4adec7 100644
--- a/scripts/kconfig/tests/err_recursive_inc/Kconfig
+++ b/scripts/kconfig/tests/err_recursive_inc/Kconfig
@@ -1 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
 source "Kconfig.inc1"
diff --git a/scripts/kconfig/tests/err_recursive_inc/Kconfig.inc1 b/scripts/kconfig/tests/err_recursive_inc/Kconfig.inc1
index 00e408d65..01cbf0d69 100644
--- a/scripts/kconfig/tests/err_recursive_inc/Kconfig.inc1
+++ b/scripts/kconfig/tests/err_recursive_inc/Kconfig.inc1
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 
 
diff --git a/scripts/kconfig/tests/err_recursive_inc/Kconfig.inc2 b/scripts/kconfig/tests/err_recursive_inc/Kconfig.inc2
index 349ea2db1..82351075a 100644
--- a/scripts/kconfig/tests/err_recursive_inc/Kconfig.inc2
+++ b/scripts/kconfig/tests/err_recursive_inc/Kconfig.inc2
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 
 source "Kconfig.inc3"
diff --git a/scripts/kconfig/tests/err_recursive_inc/Kconfig.inc3 b/scripts/kconfig/tests/err_recursive_inc/Kconfig.inc3
index 0e4c8750a..c6f4adec7 100644
--- a/scripts/kconfig/tests/err_recursive_inc/Kconfig.inc3
+++ b/scripts/kconfig/tests/err_recursive_inc/Kconfig.inc3
@@ -1 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
 source "Kconfig.inc1"
diff --git a/scripts/kconfig/tests/err_recursive_inc/__init__.py b/scripts/kconfig/tests/err_recursive_inc/__init__.py
index 0e4c839c5..27aa1895a 100644
--- a/scripts/kconfig/tests/err_recursive_inc/__init__.py
+++ b/scripts/kconfig/tests/err_recursive_inc/__init__.py
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 """
 Detect recursive inclusion error.
 
diff --git a/scripts/kconfig/tests/err_recursive_inc/expected_stderr b/scripts/kconfig/tests/err_recursive_inc/expected_stderr
index 6b582eee2..b070a31fd 100644
--- a/scripts/kconfig/tests/err_recursive_inc/expected_stderr
+++ b/scripts/kconfig/tests/err_recursive_inc/expected_stderr
@@ -1,6 +1,6 @@
 Recursive inclusion detected.
 Inclusion path:
   current file : Kconfig.inc1
-  included from: Kconfig.inc3:1
-  included from: Kconfig.inc2:3
-  included from: Kconfig.inc1:4
+  included from: Kconfig.inc3:2
+  included from: Kconfig.inc2:4
+  included from: Kconfig.inc1:5
diff --git a/scripts/kconfig/tests/inter_choice/Kconfig b/scripts/kconfig/tests/inter_choice/Kconfig
index e44449f07..5698a4018 100644
--- a/scripts/kconfig/tests/inter_choice/Kconfig
+++ b/scripts/kconfig/tests/inter_choice/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 config MODULES
 	def_bool y
 	option modules
diff --git a/scripts/kconfig/tests/inter_choice/__init__.py b/scripts/kconfig/tests/inter_choice/__init__.py
index 5c7fc365e..ffea6b114 100644
--- a/scripts/kconfig/tests/inter_choice/__init__.py
+++ b/scripts/kconfig/tests/inter_choice/__init__.py
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 """
 Do not affect user-assigned choice value by another choice.
 
diff --git a/scripts/kconfig/tests/new_choice_with_dep/Kconfig b/scripts/kconfig/tests/new_choice_with_dep/Kconfig
index 53ef1b86e..127731c04 100644
--- a/scripts/kconfig/tests/new_choice_with_dep/Kconfig
+++ b/scripts/kconfig/tests/new_choice_with_dep/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 config A
 	bool "A"
 	help
diff --git a/scripts/kconfig/tests/new_choice_with_dep/__init__.py b/scripts/kconfig/tests/new_choice_with_dep/__init__.py
index f0e0ead0f..fe9d32253 100644
--- a/scripts/kconfig/tests/new_choice_with_dep/__init__.py
+++ b/scripts/kconfig/tests/new_choice_with_dep/__init__.py
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 """
 Ask new choice values when they become visible.
 
diff --git a/scripts/kconfig/tests/no_write_if_dep_unmet/Kconfig b/scripts/kconfig/tests/no_write_if_dep_unmet/Kconfig
index c00b8fe54..4767aab6d 100644
--- a/scripts/kconfig/tests/no_write_if_dep_unmet/Kconfig
+++ b/scripts/kconfig/tests/no_write_if_dep_unmet/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 config A
 	bool "A"
 
diff --git a/scripts/kconfig/tests/no_write_if_dep_unmet/__init__.py b/scripts/kconfig/tests/no_write_if_dep_unmet/__init__.py
index 207261b0f..ffd469d1f 100644
--- a/scripts/kconfig/tests/no_write_if_dep_unmet/__init__.py
+++ b/scripts/kconfig/tests/no_write_if_dep_unmet/__init__.py
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 """
 Do not write choice values to .config if the dependency is unmet.
 
diff --git a/scripts/kconfig/tests/rand_nested_choice/Kconfig b/scripts/kconfig/tests/rand_nested_choice/Kconfig
index c591d5129..8350de7f7 100644
--- a/scripts/kconfig/tests/rand_nested_choice/Kconfig
+++ b/scripts/kconfig/tests/rand_nested_choice/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 choice
 	prompt "choice"
 
diff --git a/scripts/kconfig/tests/rand_nested_choice/__init__.py b/scripts/kconfig/tests/rand_nested_choice/__init__.py
index e729a4e85..9e4b2db53 100644
--- a/scripts/kconfig/tests/rand_nested_choice/__init__.py
+++ b/scripts/kconfig/tests/rand_nested_choice/__init__.py
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 """
 Set random values recursively in nested choices.
 
diff --git a/scripts/kconfig/util.c b/scripts/kconfig/util.c
index d999683bb..29585394d 100644
--- a/scripts/kconfig/util.c
+++ b/scripts/kconfig/util.c
@@ -1,8 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002-2005 Roman Zippel <zippel@linux-m68k.org>
  * Copyright (C) 2002-2005 Sam Ravnborg <sam@ravnborg.org>
- *
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #include <stdarg.h>
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
