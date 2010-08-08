Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OhxPK-0003Nb-Ri
	for barebox@lists.infradead.org; Sun, 08 Aug 2010 04:23:11 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Subject: [PATCH] Kconfig: sync with linux kernel v2.6.35-4771-g1787985
Date: Sun,  8 Aug 2010 06:17:53 +0200
Message-Id: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
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
To: barebox@lists.infradead.org

this will add also the support of the new ncurse interface nconfig

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile                                   |    2 +-
 common/Kconfig                             |   13 +
 scripts/kconfig/.gitignore                 |    4 +
 scripts/kconfig/Makefile                   |  175 ++-
 scripts/kconfig/POTFILES.in                |    7 +
 scripts/kconfig/check.sh                   |   14 +
 scripts/kconfig/conf.c                     |  424 ++++----
 scripts/kconfig/confdata.c                 |  506 ++++++---
 scripts/kconfig/expr.c                     |   63 +-
 scripts/kconfig/expr.h                     |  106 ++-
 scripts/kconfig/gconf.c                    |  145 +--
 scripts/kconfig/gconf.glade                |   30 +-
 scripts/kconfig/kxgettext.c                |    8 +-
 scripts/kconfig/lex.zconf.c_shipped        |  127 ++-
 scripts/kconfig/lkc.h                      |   30 +-
 scripts/kconfig/lkc_proto.h                |    9 +-
 scripts/kconfig/lxdialog/BIG.FAT.WARNING   |    2 +-
 scripts/kconfig/lxdialog/check-lxdialog.sh |   20 +-
 scripts/kconfig/lxdialog/checklist.c       |   17 +-
 scripts/kconfig/lxdialog/dialog.h          |   11 +-
 scripts/kconfig/lxdialog/inputbox.c        |   10 +-
 scripts/kconfig/lxdialog/menubox.c         |   28 +-
 scripts/kconfig/lxdialog/textbox.c         |    2 +-
 scripts/kconfig/lxdialog/util.c            |   34 +-
 scripts/kconfig/lxdialog/yesno.c           |    4 +-
 scripts/kconfig/mconf.c                    |  262 ++---
 scripts/kconfig/menu.c                     |  211 +++-
 scripts/kconfig/nconf.c                    | 1568 ++++++++++++++++++++++++++
 scripts/kconfig/nconf.gui.c                |  617 ++++++++++
 scripts/kconfig/nconf.h                    |   95 ++
 scripts/kconfig/qconf.cc                   |  255 +++--
 scripts/kconfig/qconf.h                    |   17 +-
 scripts/kconfig/streamline_config.pl       |  422 +++++++
 scripts/kconfig/symbol.c                   |  501 +++++++--
 scripts/kconfig/util.c                     |   44 +-
 scripts/kconfig/zconf.gperf                |    6 +-
 scripts/kconfig/zconf.hash.c_shipped       |  225 ++--
 scripts/kconfig/zconf.l                    |   21 +-
 scripts/kconfig/zconf.tab.c_shipped        | 1665 +++++++++++++++-------------
 scripts/kconfig/zconf.y                    |   62 +-
 40 files changed, 5758 insertions(+), 2004 deletions(-)
 create mode 100755 scripts/kconfig/check.sh
 create mode 100644 scripts/kconfig/nconf.c
 create mode 100644 scripts/kconfig/nconf.gui.c
 create mode 100644 scripts/kconfig/nconf.h
 create mode 100644 scripts/kconfig/streamline_config.pl

diff --git a/Makefile b/Makefile
index 8a09f32..8dc9981 100644
--- a/Makefile
+++ b/Makefile
@@ -305,7 +305,7 @@ KERNELRELEASE = $(shell cat include/config/kernel.release 2> /dev/null)
 KERNELVERSION = $(VERSION).$(PATCHLEVEL).$(SUBLEVEL)$(EXTRAVERSION)
 
 export VERSION PATCHLEVEL SUBLEVEL KERNELRELEASE KERNELVERSION
-export ARCH CONFIG_SHELL HOSTCC HOSTCFLAGS CROSS_COMPILE AS LD CC
+export ARCH SRCARCH CONFIG_SHELL HOSTCC HOSTCFLAGS CROSS_COMPILE AS LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL UTS_MACHINE
 export HOSTCXX HOSTCXXFLAGS LDFLAGS_MODULE CHECK CHECKFLAGS
 
diff --git a/common/Kconfig b/common/Kconfig
index c07c638..6556c62 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1,3 +1,16 @@
+config ARCH
+	string
+	option env="ARCH"
+
+config KERNELVERSION
+	string
+	option env="KERNELVERSION"
+
+config DEFCONFIG_LIST
+	string
+	option defconfig_list
+	default "$ARCH_DEFCONFIG"
+	default "arch/$ARCH/defconfig"
 
 config GREGORIAN_CALENDER
 	bool
diff --git a/scripts/kconfig/.gitignore b/scripts/kconfig/.gitignore
index b49584c..624f650 100644
--- a/scripts/kconfig/.gitignore
+++ b/scripts/kconfig/.gitignore
@@ -8,12 +8,16 @@ lex.*.c
 zconf.hash.c
 *.moc
 lkc_defs.h
+gconf.glade.h
+*.pot
+*.mo
 
 #
 # configuration programs
 #
 conf
 mconf
+nconf
 qconf
 gconf
 kxgettext
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index 8986a48..de934de 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -2,106 +2,161 @@
 # Kernel configuration targets
 # These targets are used from top-level makefile
 
-PHONY += oldconfig xconfig gconfig menuconfig config silentoldconfig update-po-config
+PHONY += oldconfig xconfig gconfig menuconfig config silentoldconfig update-po-config \
+	localmodconfig localyesconfig
+
+ifdef KBUILD_KCONFIG
+Kconfig := $(KBUILD_KCONFIG)
+else
+Kconfig := arch/$(SRCARCH)/Kconfig
+endif
 
 xconfig: $(obj)/qconf
-	$< arch/$(ARCH)/Kconfig
+	$< $(Kconfig)
 
 gconfig: $(obj)/gconf
-	$< arch/$(ARCH)/Kconfig
+	$< $(Kconfig)
 
 menuconfig: $(obj)/mconf
-	$< arch/$(ARCH)/Kconfig
+	$< $(Kconfig)
 
 config: $(obj)/conf
-	$< arch/$(ARCH)/Kconfig
+	$< --oldaskconfig $(Kconfig)
+
+nconfig: $(obj)/nconf
+	$< $(Kconfig)
 
 oldconfig: $(obj)/conf
-	$< -o arch/$(ARCH)/Kconfig
+	$< --$@ $(Kconfig)
 
 silentoldconfig: $(obj)/conf
-	$< -s arch/$(ARCH)/Kconfig
+	$(Q)mkdir -p include/generated
+	$< --$@ $(Kconfig)
+
+# if no path is given, then use src directory to find file
+ifdef LSMOD
+LSMOD_F := $(LSMOD)
+ifeq ($(findstring /,$(LSMOD)),)
+  LSMOD_F := $(objtree)/$(LSMOD)
+endif
+endif
 
-# Create new linux.po file
+localmodconfig: $(obj)/streamline_config.pl $(obj)/conf
+	$(Q)mkdir -p include/generated
+	$(Q)perl $< $(srctree) $(Kconfig) $(LSMOD_F) > .tmp.config
+	$(Q)if [ -f .config ]; then 					\
+			cmp -s .tmp.config .config ||			\
+			(mv -f .config .config.old.1;			\
+			 mv -f .tmp.config .config;			\
+			 $(obj)/conf --silentoldconfig $(Kconfig);	\
+			 mv -f .config.old.1 .config.old)		\
+	else								\
+			mv -f .tmp.config .config;			\
+			$(obj)/conf --silentoldconfig $(Kconfig);	\
+	fi
+	$(Q)rm -f .tmp.config
+
+localyesconfig: $(obj)/streamline_config.pl $(obj)/conf
+	$(Q)mkdir -p include/generated
+	$(Q)perl $< $(srctree) $(Kconfig) $(LSMOD_F) > .tmp.config
+	$(Q)sed -i s/=m/=y/ .tmp.config
+	$(Q)if [ -f .config ]; then					\
+			cmp -s .tmp.config .config ||			\
+			(mv -f .config .config.old.1;			\
+			 mv -f .tmp.config .config;			\
+			 $(obj)/conf --silentoldconfig $(Kconfig);	\
+			 mv -f .config.old.1 .config.old)		\
+	else								\
+			mv -f .tmp.config .config;			\
+			$(obj)/conf --silentoldconfig $(Kconfig);	\
+	fi
+	$(Q)rm -f .tmp.config
+
+# Create new linux.pot file
 # Adjust charset to UTF-8 in .po file to accept UTF-8 in Kconfig files
 # The symlink is used to repair a deficiency in arch/um
-update-po-config: $(obj)/kxgettext
-	xgettext --default-domain=linux                  \
+update-po-config: $(obj)/kxgettext $(obj)/gconf.glade.h
+	$(Q)echo "  GEN config"
+	$(Q)xgettext --default-domain=linux              \
 	    --add-comments --keyword=_ --keyword=N_      \
 	    --from-code=UTF-8                            \
 	    --files-from=scripts/kconfig/POTFILES.in     \
 	    --output $(obj)/config.pot
 	$(Q)sed -i s/CHARSET/UTF-8/ $(obj)/config.pot
 	$(Q)ln -fs Kconfig.i386 arch/um/Kconfig.arch
-	(for i in `ls arch/`;                            \
-	do                                               \
-	    $(obj)/kxgettext arch/$$i/Kconfig;           \
-	done ) >> $(obj)/config.pot
-	msguniq --sort-by-file --to-code=UTF-8 $(obj)/config.pot \
+	$(Q)(for i in `ls arch/*/Kconfig`;               \
+	    do                                           \
+		echo "  GEN $$i";                        \
+		$(obj)/kxgettext $$i                     \
+		     >> $(obj)/config.pot;               \
+	    done )
+	$(Q)msguniq --sort-by-file --to-code=UTF-8 $(obj)/config.pot \
 	    --output $(obj)/linux.pot
 	$(Q)rm -f arch/um/Kconfig.arch
 	$(Q)rm -f $(obj)/config.pot
 
-PHONY += randconfig allyesconfig allnoconfig allmodconfig defconfig
+PHONY += allnoconfig allyesconfig allmodconfig alldefconfig randconfig
 
-randconfig: $(obj)/conf
-	$< -r arch/$(ARCH)/Kconfig
+allnoconfig allyesconfig allmodconfig alldefconfig randconfig: $(obj)/conf
+	$< --$@ $(Kconfig)
 
-allyesconfig: $(obj)/conf
-	$< -y arch/$(ARCH)/Kconfig
+PHONY += listnewconfig oldnoconfig savedefconfig defconfig
 
-allnoconfig: $(obj)/conf
-	$< -n arch/$(ARCH)/Kconfig
+listnewconfig oldnoconfig: $(obj)/conf
+	$< --$@ $(Kconfig)
 
-allmodconfig: $(obj)/conf
-	$< -m arch/$(ARCH)/Kconfig
+savedefconfig: $(obj)/conf
+	$< --$@=defconfig $(Kconfig)
 
 defconfig: $(obj)/conf
 ifeq ($(KBUILD_DEFCONFIG),)
-	$< -d arch/$(ARCH)/Kconfig
+	$< --defconfig $(Kconfig)
 else
-	@echo *** Default configuration is based on '$(KBUILD_DEFCONFIG)'
-	$(Q)$< -D arch/$(ARCH)/configs/$(KBUILD_DEFCONFIG) arch/$(ARCH)/Kconfig
+	@echo "*** Default configuration is based on '$(KBUILD_DEFCONFIG)'"
+	$(Q)$< --defconfig=arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG) $(Kconfig)
 endif
 
 %_defconfig: $(obj)/conf
-	$(Q)$< -D arch/$(ARCH)/configs/$@ arch/$(ARCH)/Kconfig
+	$(Q)$< --defconfig=arch/$(SRCARCH)/configs/$@ $(Kconfig)
 
 # Help text used by make help
 help:
 	@echo  '  config	  - Update current config utilising a line-oriented program'
+	@echo  '  nconfig         - Update current config utilising a ncurses menu based program'
 	@echo  '  menuconfig	  - Update current config utilising a menu based program'
 	@echo  '  xconfig	  - Update current config utilising a QT based front-end'
 	@echo  '  gconfig	  - Update current config utilising a GTK based front-end'
 	@echo  '  oldconfig	  - Update current config utilising a provided .config as base'
-	@echo  '  silentoldconfig - Same as oldconfig, but quietly'
-	@echo  '  randconfig	  - New config with random answer to all options'
-	@echo  '  defconfig	  - New config with default answer to all options'
-	@echo  '  allmodconfig	  - New config selecting modules when possible'
-	@echo  '  allyesconfig	  - New config where all options are accepted with yes'
+	@echo  '  localmodconfig  - Update current config disabling modules not loaded'
+	@echo  '  localyesconfig  - Update current config converting local mods to core'
+	@echo  '  silentoldconfig - Same as oldconfig, but quietly, additionally update deps'
+	@echo  '  defconfig	  - New config with default from ARCH supplied defconfig'
+	@echo  '  savedefconfig   - Save current config as ./defconfig (minimal config)'
 	@echo  '  allnoconfig	  - New config where all options are answered with no'
+	@echo  '  allyesconfig	  - New config where all options are accepted with yes'
+	@echo  '  allmodconfig	  - New config selecting modules when possible'
+	@echo  '  alldefconfig    - New config with all symbols set to default'
+	@echo  '  randconfig	  - New config with random answer to all options'
+	@echo  '  listnewconfig   - List new options'
+	@echo  '  oldnoconfig     - Same as silentoldconfig but set new symbols to n (unset)'
 
 # lxdialog stuff
 check-lxdialog  := $(srctree)/$(src)/lxdialog/check-lxdialog.sh
 
-# Use reursively expanded variables so we do not call gcc unless
+# Use recursively expanded variables so we do not call gcc unless
 # we really need to do so. (Do not call gcc as part of make mrproper)
 HOST_EXTRACFLAGS = $(shell $(CONFIG_SHELL) $(check-lxdialog) -ccflags)
 HOST_LOADLIBES   = $(shell $(CONFIG_SHELL) $(check-lxdialog) -ldflags $(HOSTCC))
 
 HOST_EXTRACFLAGS += -DLOCALE
 
-PHONY += $(obj)/dochecklxdialog
-$(obj)/dochecklxdialog:
-	$(Q)$(CONFIG_SHELL) $(check-lxdialog) -check $(HOSTCC) $(HOST_LOADLIBES)
-
-always := dochecklxdialog
-
 
 # ===========================================================================
 # Shared Makefile for the various kconfig executables:
 # conf:	  Used for defconfig, oldconfig and related targets
-# mconf:  Used for the mconfig target.
+# nconf:  Used for the nconfig target.
+#         Utilizes ncurses
+# mconf:  Used for the menuconfig target
 #         Utilizes the lxdialog package
 # qconf:  Used for the xconfig target
 #         Based on QT which needs to be installed to compile it
@@ -113,11 +168,16 @@ lxdialog := lxdialog/checklist.o lxdialog/util.o lxdialog/inputbox.o
 lxdialog += lxdialog/textbox.o lxdialog/yesno.o lxdialog/menubox.o
 
 conf-objs	:= conf.o  zconf.tab.o
-mconf-objs	:= mconf.o zconf.tab.o $(lxdialog)
+mconf-objs     := mconf.o zconf.tab.o $(lxdialog)
+nconf-objs     := nconf.o zconf.tab.o nconf.gui.o
 kxgettext-objs	:= kxgettext.o zconf.tab.o
 
 hostprogs-y := conf qconf gconf kxgettext
 
+ifeq ($(MAKECMDGOALS),nconfig)
+	hostprogs-y += nconf
+endif
+
 ifeq ($(MAKECMDGOALS),menuconfig)
 	hostprogs-y += mconf
 endif
@@ -140,17 +200,20 @@ gconf-objs	:= gconf.o kconfig_load.o zconf.tab.o
 endif
 
 clean-files	:= lkc_defs.h qconf.moc .tmp_qtcheck \
-		   .tmp_gtkcheck zconf.tab.c lex.zconf.c zconf.hash.c
-clean-files     += mconf qconf gconf
-
-# Needed for systems without gettext
-KBUILD_HAVE_NLS := $(shell \
-     if echo "\#include <libintl.h>" | $(HOSTCC) $(HOSTCFLAGS) -E - > /dev/null 2>&1 ; \
-     then echo yes ; \
-     else echo no ; fi)
-ifeq ($(KBUILD_HAVE_NLS),no)
-HOSTCFLAGS	+= -DKBUILD_NO_NLS
-endif
+		   .tmp_gtkcheck zconf.tab.c lex.zconf.c zconf.hash.c gconf.glade.h
+clean-files     += mconf qconf gconf nconf
+clean-files     += config.pot linux.pot
+
+# Check that we have the required ncurses stuff installed for lxdialog (menuconfig)
+PHONY += $(obj)/dochecklxdialog
+$(addprefix $(obj)/,$(lxdialog)): $(obj)/dochecklxdialog
+$(obj)/dochecklxdialog:
+	$(Q)$(CONFIG_SHELL) $(check-lxdialog) -check $(HOSTCC) $(HOST_EXTRACFLAGS) $(HOST_LOADLIBES)
+
+always := dochecklxdialog
+
+# Add environment specific flags
+HOST_EXTRACFLAGS += $(shell $(CONFIG_SHELL) $(srctree)/$(src)/check.sh $(HOSTCC) $(HOSTCFLAGS))
 
 # generated files seem to need this to find local include files
 HOSTCFLAGS_lex.zconf.o	:= -I$(src)
@@ -159,10 +222,11 @@ HOSTCFLAGS_zconf.tab.o	:= -I$(src)
 HOSTLOADLIBES_qconf	= $(KC_QT_LIBS) -ldl
 HOSTCXXFLAGS_qconf.o	= $(KC_QT_CFLAGS) -D LKC_DIRECT_LINK
 
-HOSTLOADLIBES_gconf	= `pkg-config --libs gtk+-2.0 gmodule-2.0 libglade-2.0`
+HOSTLOADLIBES_gconf	= `pkg-config --libs gtk+-2.0 gmodule-2.0 libglade-2.0` -ldl
 HOSTCFLAGS_gconf.o	= `pkg-config --cflags gtk+-2.0 gmodule-2.0 libglade-2.0` \
                           -D LKC_DIRECT_LINK
 
+HOSTLOADLIBES_nconf	= -lmenu -lpanel -lncurses
 $(obj)/qconf.o: $(obj)/.tmp_qtcheck
 
 ifeq ($(qconf-target),1)
@@ -252,6 +316,9 @@ $(obj)/%.moc: $(src)/%.h
 $(obj)/lkc_defs.h: $(src)/lkc_proto.h
 	sed < $< > $@ 's/P(\([^,]*\),.*/#define \1 (\*\1_p)/'
 
+# Extract gconf menu items for I18N support
+$(obj)/gconf.glade.h: $(obj)/gconf.glade
+	intltool-extract --type=gettext/glade $(obj)/gconf.glade
 
 ###
 # The following requires flex/bison/gperf
diff --git a/scripts/kconfig/POTFILES.in b/scripts/kconfig/POTFILES.in
index cc94e46..9674573 100644
--- a/scripts/kconfig/POTFILES.in
+++ b/scripts/kconfig/POTFILES.in
@@ -1,5 +1,12 @@
+scripts/kconfig/lxdialog/checklist.c
+scripts/kconfig/lxdialog/inputbox.c
+scripts/kconfig/lxdialog/menubox.c
+scripts/kconfig/lxdialog/textbox.c
+scripts/kconfig/lxdialog/util.c
+scripts/kconfig/lxdialog/yesno.c
 scripts/kconfig/mconf.c
 scripts/kconfig/conf.c
 scripts/kconfig/confdata.c
 scripts/kconfig/gconf.c
+scripts/kconfig/gconf.glade.h
 scripts/kconfig/qconf.cc
diff --git a/scripts/kconfig/check.sh b/scripts/kconfig/check.sh
new file mode 100755
index 0000000..fa59cbf
--- /dev/null
+++ b/scripts/kconfig/check.sh
@@ -0,0 +1,14 @@
+#!/bin/sh
+# Needed for systems without gettext
+$* -xc -o /dev/null - > /dev/null 2>&1 << EOF
+#include <libintl.h>
+int main()
+{
+	gettext("");
+	return 0;
+}
+EOF
+if [ ! "$?" -eq "0"  ]; then
+	echo -DKBUILD_NO_NLS;
+fi
+
diff --git a/scripts/kconfig/conf.c b/scripts/kconfig/conf.c
index 3ce2996..1269d97 100644
--- a/scripts/kconfig/conf.c
+++ b/scripts/kconfig/conf.c
@@ -3,13 +3,16 @@
  * Released under the terms of the GNU GPL v2.0.
  */
 
+#include <locale.h>
 #include <ctype.h>
-#include <stdlib.h>
 #include <stdio.h>
+#include <stdlib.h>
 #include <string.h>
-#include <unistd.h>
 #include <time.h>
+#include <unistd.h>
+#include <getopt.h>
 #include <sys/stat.h>
+#include <sys/time.h>
 
 #define LKC_DIRECT_LINK
 #include "lkc.h"
@@ -17,32 +20,38 @@
 static void conf(struct menu *menu);
 static void check_conf(struct menu *menu);
 
-enum {
-	ask_all,
-	ask_new,
-	ask_silent,
-	set_default,
-	set_yes,
-	set_mod,
-	set_no,
-	set_random
-} input_mode = ask_all;
+enum input_mode {
+	oldaskconfig,
+	silentoldconfig,
+	oldconfig,
+	allnoconfig,
+	allyesconfig,
+	allmodconfig,
+	alldefconfig,
+	randconfig,
+	defconfig,
+	savedefconfig,
+	listnewconfig,
+	oldnoconfig,
+} input_mode = oldaskconfig;
+
 char *defconfig_file;
 
 static int indent = 1;
 static int valid_stdin = 1;
+static int sync_kconfig;
 static int conf_cnt;
 static char line[128];
 static struct menu *rootEntry;
 
-static char nohelp_text[] = N_("Sorry, no help available for this option yet.\n");
-
-static const char *get_help(struct menu *menu)
+static void print_help(struct menu *menu)
 {
-	if (menu_has_help(menu))
-		return menu_get_help(menu);
-	else
-		return nohelp_text;
+	struct gstr help = str_new();
+
+	menu_get_ext_help(menu, &help);
+
+	printf("\n%s\n", str_get(&help));
+	str_free(&help);
 }
 
 static void strip(char *str)
@@ -64,7 +73,7 @@ static void strip(char *str)
 
 static void check_stdin(void)
 {
-	if (!valid_stdin && input_mode == ask_silent) {
+	if (!valid_stdin) {
 		printf(_("aborted!\n\n"));
 		printf(_("Console input/output is redirected. "));
 		printf(_("Run 'make oldconfig' to update configuration.\n\n"));
@@ -75,10 +84,9 @@ static void check_stdin(void)
 static int conf_askvalue(struct symbol *sym, const char *def)
 {
 	enum symbol_type type = sym_get_type(sym);
-	tristate val;
 
 	if (!sym_has_value(sym))
-		printf("(NEW) ");
+		printf(_("(NEW) "));
 
 	line[0] = '\n';
 	line[1] = 0;
@@ -91,29 +99,17 @@ static int conf_askvalue(struct symbol *sym, const char *def)
 	}
 
 	switch (input_mode) {
-	case set_no:
-	case set_mod:
-	case set_yes:
-	case set_random:
-		if (sym_has_value(sym)) {
-			printf("%s\n", def);
-			return 0;
-		}
-		break;
-	case ask_new:
-	case ask_silent:
+	case oldconfig:
+	case silentoldconfig:
 		if (sym_has_value(sym)) {
 			printf("%s\n", def);
 			return 0;
 		}
 		check_stdin();
-	case ask_all:
+	case oldaskconfig:
 		fflush(stdout);
 		fgets(line, 128, stdin);
 		return 1;
-	case set_default:
-		printf("%s\n", def);
-		return 1;
 	default:
 		break;
 	}
@@ -127,63 +123,17 @@ static int conf_askvalue(struct symbol *sym, const char *def)
 	default:
 		;
 	}
-	switch (input_mode) {
-	case set_yes:
-		if (sym_tristate_within_range(sym, yes)) {
-			line[0] = 'y';
-			line[1] = '\n';
-			line[2] = 0;
-			break;
-		}
-	case set_mod:
-		if (type == S_TRISTATE) {
-			if (sym_tristate_within_range(sym, mod)) {
-				line[0] = 'm';
-				line[1] = '\n';
-				line[2] = 0;
-				break;
-			}
-		} else {
-			if (sym_tristate_within_range(sym, yes)) {
-				line[0] = 'y';
-				line[1] = '\n';
-				line[2] = 0;
-				break;
-			}
-		}
-	case set_no:
-		if (sym_tristate_within_range(sym, no)) {
-			line[0] = 'n';
-			line[1] = '\n';
-			line[2] = 0;
-			break;
-		}
-	case set_random:
-		do {
-			val = (tristate)(random() % 3);
-		} while (!sym_tristate_within_range(sym, val));
-		switch (val) {
-		case no: line[0] = 'n'; break;
-		case mod: line[0] = 'm'; break;
-		case yes: line[0] = 'y'; break;
-		}
-		line[1] = '\n';
-		line[2] = 0;
-		break;
-	default:
-		break;
-	}
 	printf("%s", line);
 	return 1;
 }
 
-int conf_string(struct menu *menu)
+static int conf_string(struct menu *menu)
 {
 	struct symbol *sym = menu->sym;
 	const char *def;
 
 	while (1) {
-		printf("%*s%s ", indent - 1, "", menu->prompt->text);
+		printf("%*s%s ", indent - 1, "", _(menu->prompt->text));
 		printf("(%s) ", sym->name);
 		def = sym_get_string_value(sym);
 		if (sym_get_string_value(sym))
@@ -196,7 +146,7 @@ int conf_string(struct menu *menu)
 		case '?':
 			/* print help */
 			if (line[1] == '\n') {
-				printf("\n%s\n", get_help(menu));
+				print_help(menu);
 				def = NULL;
 				break;
 			}
@@ -212,14 +162,12 @@ int conf_string(struct menu *menu)
 static int conf_sym(struct menu *menu)
 {
 	struct symbol *sym = menu->sym;
-	int type;
 	tristate oldval, newval;
 
 	while (1) {
-		printf("%*s%s ", indent - 1, "", menu->prompt->text);
+		printf("%*s%s ", indent - 1, "", _(menu->prompt->text));
 		if (sym->name)
 			printf("(%s) ", sym->name);
-		type = sym_get_type(sym);
 		putchar('[');
 		oldval = sym_get_tristate_value(sym);
 		switch (oldval) {
@@ -276,7 +224,7 @@ static int conf_sym(struct menu *menu)
 		if (sym_set_tristate_value(sym, newval))
 			return 0;
 help:
-		printf("\n%s\n", get_help(menu));
+		print_help(menu);
 	}
 }
 
@@ -284,11 +232,9 @@ static int conf_choice(struct menu *menu)
 {
 	struct symbol *sym, *def_sym;
 	struct menu *child;
-	int type;
 	bool is_new;
 
 	sym = menu->sym;
-	type = sym_get_type(sym);
 	is_new = !sym_has_value(sym);
 	if (sym_is_changable(sym)) {
 		conf_sym(menu);
@@ -306,7 +252,7 @@ static int conf_choice(struct menu *menu)
 		case no:
 			return 1;
 		case mod:
-			printf("%*s%s\n", indent - 1, "", menu_get_prompt(menu));
+			printf("%*s%s\n", indent - 1, "", _(menu_get_prompt(menu)));
 			return 0;
 		case yes:
 			break;
@@ -316,7 +262,7 @@ static int conf_choice(struct menu *menu)
 	while (1) {
 		int cnt, def;
 
-		printf("%*s%s\n", indent - 1, "", menu_get_prompt(menu));
+		printf("%*s%s\n", indent - 1, "", _(menu_get_prompt(menu)));
 		def_sym = sym_get_choice_value(sym);
 		cnt = def = 0;
 		line[0] = 0;
@@ -324,7 +270,7 @@ static int conf_choice(struct menu *menu)
 			if (!menu_is_visible(child))
 				continue;
 			if (!child->sym) {
-				printf("%*c %s\n", indent, '*', menu_get_prompt(child));
+				printf("%*c %s\n", indent, '*', _(menu_get_prompt(child)));
 				continue;
 			}
 			cnt++;
@@ -333,14 +279,14 @@ static int conf_choice(struct menu *menu)
 				printf("%*c", indent, '>');
 			} else
 				printf("%*c", indent, ' ');
-			printf(" %d. %s", cnt, menu_get_prompt(child));
+			printf(" %d. %s", cnt, _(menu_get_prompt(child)));
 			if (child->sym->name)
 				printf(" (%s)", child->sym->name);
 			if (!sym_has_value(child->sym))
-				printf(" (NEW)");
+				printf(_(" (NEW)"));
 			printf("\n");
 		}
-		printf("%*schoice", indent - 1, "");
+		printf(_("%*schoice"), indent - 1, "");
 		if (cnt == 1) {
 			printf("[1]: 1\n");
 			goto conf_childs;
@@ -350,20 +296,20 @@ static int conf_choice(struct menu *menu)
 			printf("?");
 		printf("]: ");
 		switch (input_mode) {
-		case ask_new:
-		case ask_silent:
+		case oldconfig:
+		case silentoldconfig:
 			if (!is_new) {
 				cnt = def;
 				printf("%d\n", cnt);
 				break;
 			}
 			check_stdin();
-		case ask_all:
+		case oldaskconfig:
 			fflush(stdout);
 			fgets(line, 128, stdin);
 			strip(line);
 			if (line[0] == '?') {
-				printf("\n%s\n", get_help(menu));
+				print_help(menu);
 				continue;
 			}
 			if (!line[0])
@@ -373,14 +319,7 @@ static int conf_choice(struct menu *menu)
 			else
 				continue;
 			break;
-		case set_random:
-			def = (random() % cnt) + 1;
-		case set_default:
-		case set_yes:
-		case set_mod:
-		case set_no:
-			cnt = def;
-			printf("%d\n", cnt);
+		default:
 			break;
 		}
 
@@ -394,13 +333,13 @@ static int conf_choice(struct menu *menu)
 		if (!child)
 			continue;
 		if (line[strlen(line) - 1] == '?') {
-			printf("\n%s\n", get_help(child));
+			print_help(child);
 			continue;
 		}
 		sym_set_choice_value(sym, child->sym);
-		if (child->list) {
+		for (child = child->list; child; child = child->next) {
 			indent += 2;
-			conf(child->list);
+			conf(child);
 			indent -= 2;
 		}
 		return 1;
@@ -423,7 +362,10 @@ static void conf(struct menu *menu)
 
 		switch (prop->type) {
 		case P_MENU:
-			if (input_mode == ask_silent && rootEntry != menu) {
+			if ((input_mode == silentoldconfig ||
+			     input_mode == listnewconfig ||
+			     input_mode == oldnoconfig) &&
+			    rootEntry != menu) {
 				check_conf(menu);
 				return;
 			}
@@ -432,7 +374,7 @@ static void conf(struct menu *menu)
 			if (prompt)
 				printf("%*c\n%*c %s\n%*c\n",
 					indent, '*',
-					indent, '*', prompt,
+					indent, '*', _(prompt),
 					indent, '*');
 		default:
 			;
@@ -481,10 +423,16 @@ static void check_conf(struct menu *menu)
 	if (sym && !sym_has_value(sym)) {
 		if (sym_is_changable(sym) ||
 		    (sym_is_choice(sym) && sym_get_tristate_value(sym) == yes)) {
-			if (!conf_cnt++)
-				printf(_("*\n* Restart config...\n*\n"));
-			rootEntry = menu_get_parent_menu(menu);
-			conf(rootEntry);
+			if (input_mode == listnewconfig) {
+				if (sym->name && !sym_is_choice_value(sym)) {
+					printf("CONFIG_%s\n", sym->name);
+				}
+			} else {
+				if (!conf_cnt++)
+					printf(_("*\n* Restart config...\n*\n"));
+				rootEntry = menu_get_parent_menu(menu);
+				conf(rootEntry);
+			}
 		}
 	}
 
@@ -492,99 +440,121 @@ static void check_conf(struct menu *menu)
 		check_conf(child);
 }
 
+static struct option long_opts[] = {
+	{"oldaskconfig",    no_argument,       NULL, oldaskconfig},
+	{"oldconfig",       no_argument,       NULL, oldconfig},
+	{"silentoldconfig", no_argument,       NULL, silentoldconfig},
+	{"defconfig",       optional_argument, NULL, defconfig},
+	{"savedefconfig",   required_argument, NULL, savedefconfig},
+	{"allnoconfig",     no_argument,       NULL, allnoconfig},
+	{"allyesconfig",    no_argument,       NULL, allyesconfig},
+	{"allmodconfig",    no_argument,       NULL, allmodconfig},
+	{"alldefconfig",    no_argument,       NULL, alldefconfig},
+	{"randconfig",      no_argument,       NULL, randconfig},
+	{"listnewconfig",   no_argument,       NULL, listnewconfig},
+	{"oldnoconfig",     no_argument,       NULL, oldnoconfig},
+	{NULL, 0, NULL, 0}
+};
+
 int main(int ac, char **av)
 {
-	int i = 1;
+	int opt;
 	const char *name;
 	struct stat tmpstat;
 
-	if (ac > i && av[i][0] == '-') {
-		switch (av[i++][1]) {
-		case 'o':
-			input_mode = ask_new;
-			break;
-		case 's':
-			input_mode = ask_silent;
-			valid_stdin = isatty(0) && isatty(1) && isatty(2);
-			break;
-		case 'd':
-			input_mode = set_default;
-			break;
-		case 'D':
-			input_mode = set_default;
-			defconfig_file = av[i++];
-			if (!defconfig_file) {
-				printf(_("%s: No default config file specified\n"),
-					av[0]);
-				exit(1);
-			}
-			break;
-		case 'n':
-			input_mode = set_no;
-			break;
-		case 'm':
-			input_mode = set_mod;
+	setlocale(LC_ALL, "");
+	bindtextdomain(PACKAGE, LOCALEDIR);
+	textdomain(PACKAGE);
+
+	while ((opt = getopt_long_only(ac, av, "", long_opts, NULL)) != -1) {
+		input_mode = (enum input_mode)opt;
+		switch (opt) {
+		case silentoldconfig:
+			sync_kconfig = 1;
 			break;
-		case 'y':
-			input_mode = set_yes;
+		case defconfig:
+		case savedefconfig:
+			defconfig_file = optarg;
 			break;
-		case 'r':
-			input_mode = set_random;
-			srandom(time(NULL));
+		case randconfig:
+		{
+			struct timeval now;
+			unsigned int seed;
+
+			/*
+			 * Use microseconds derived seed,
+			 * compensate for systems where it may be zero
+			 */
+			gettimeofday(&now, NULL);
+
+			seed = (unsigned int)((now.tv_sec + 1) * (now.tv_usec + 1));
+			srand(seed);
 			break;
-		case 'h':
+		}
 		case '?':
-			fprintf(stderr, "See README for usage info\n");
-			exit(0);
+			fprintf(stderr, _("See README for usage info\n"));
+			exit(1);
+			break;
 		}
 	}
-  	name = av[i];
-	if (!name) {
+	if (ac == optind) {
 		printf(_("%s: Kconfig file missing\n"), av[0]);
 		exit(1);
 	}
+	name = av[optind];
 	conf_parse(name);
 	//zconfdump(stdout);
+	if (sync_kconfig) {
+		name = conf_get_configname();
+		if (stat(name, &tmpstat)) {
+			fprintf(stderr, _("***\n"
+				"*** You have not yet configured your barebox!\n"
+				"*** (missing barebox config file \"%s\")\n"
+				"***\n"
+				"*** Please run some configurator (e.g. \"make oldconfig\" or\n"
+				"*** \"make menuconfig\" or \"make xconfig\").\n"
+				"***\n"), name);
+			exit(1);
+		}
+	}
+
 	switch (input_mode) {
-	case set_default:
+	case defconfig:
 		if (!defconfig_file)
 			defconfig_file = conf_get_default_confname();
 		if (conf_read(defconfig_file)) {
-			printf("***\n"
+			printf(_("***\n"
 				"*** Can't find default configuration \"%s\"!\n"
-				"***\n", defconfig_file);
+				"***\n"), defconfig_file);
 			exit(1);
 		}
 		break;
-	case ask_silent:
-		if (stat(".config", &tmpstat)) {
-			printf(_("***\n"
-				"*** You have not yet configured barebox!\n"
-				"*** (missing .config file)\n"
-				"***\n"
-				"*** Please run some configurator (e.g. \"make oldconfig\" or\n"
-				"*** \"make menuconfig\" or \"make xconfig\").\n"
-				"***\n"));
-			exit(1);
-		}
-	case ask_all:
-	case ask_new:
+	case savedefconfig:
 		conf_read(NULL);
 		break;
-	case set_no:
-	case set_mod:
-	case set_yes:
-	case set_random:
+	case silentoldconfig:
+	case oldaskconfig:
+	case oldconfig:
+	case listnewconfig:
+	case oldnoconfig:
+		conf_read(NULL);
+		break;
+	case allnoconfig:
+	case allyesconfig:
+	case allmodconfig:
+	case alldefconfig:
+	case randconfig:
 		name = getenv("KCONFIG_ALLCONFIG");
 		if (name && !stat(name, &tmpstat)) {
 			conf_read_simple(name, S_DEF_USER);
 			break;
 		}
 		switch (input_mode) {
-		case set_no:	 name = "allno.config"; break;
-		case set_mod:	 name = "allmod.config"; break;
-		case set_yes:	 name = "allyes.config"; break;
-		case set_random: name = "allrandom.config"; break;
+		case allnoconfig:	name = "allno.config"; break;
+		case allyesconfig:	name = "allyes.config"; break;
+		case allmodconfig:	name = "allmod.config"; break;
+		case alldefconfig:	name = "alldef.config"; break;
+		case randconfig:	name = "allrandom.config"; break;
 		default: break;
 		}
 		if (!stat(name, &tmpstat))
@@ -596,35 +566,81 @@ int main(int ac, char **av)
 		break;
 	}
 
-	if (input_mode != ask_silent) {
+	if (sync_kconfig) {
+		if (conf_get_changed()) {
+			name = getenv("KCONFIG_NOSILENTUPDATE");
+			if (name && *name) {
+				fprintf(stderr,
+					_("\n*** Barebox configuration requires explicit update.\n\n"));
+				return 1;
+			}
+		}
+		valid_stdin = isatty(0) && isatty(1) && isatty(2);
+	}
+
+	switch (input_mode) {
+	case allnoconfig:
+		conf_set_all_new_symbols(def_no);
+		break;
+	case allyesconfig:
+		conf_set_all_new_symbols(def_yes);
+		break;
+	case allmodconfig:
+		conf_set_all_new_symbols(def_mod);
+		break;
+	case alldefconfig:
+		conf_set_all_new_symbols(def_default);
+		break;
+	case randconfig:
+		conf_set_all_new_symbols(def_random);
+		break;
+	case defconfig:
+		conf_set_all_new_symbols(def_default);
+		break;
+	case savedefconfig:
+		break;
+	case oldaskconfig:
 		rootEntry = &rootmenu;
 		conf(&rootmenu);
-		if (input_mode == ask_all) {
-			input_mode = ask_silent;
-			valid_stdin = 1;
+		input_mode = silentoldconfig;
+		/* fall through */
+	case oldconfig:
+	case listnewconfig:
+	case oldnoconfig:
+	case silentoldconfig:
+		/* Update until a loop caused no more changes */
+		do {
+			conf_cnt = 0;
+			check_conf(&rootmenu);
+		} while (conf_cnt &&
+			 (input_mode != listnewconfig &&
+			  input_mode != oldnoconfig));
+		break;
+	}
+
+	if (sync_kconfig) {
+		/* silentoldconfig is used during the build so we shall update autoconf.
+		 * All other commands are only used to generate a config.
+		 */
+		if (conf_get_changed() && conf_write(NULL)) {
+			fprintf(stderr, _("\n*** Error during writing of the barebox configuration.\n\n"));
+			exit(1);
 		}
-	} else if (conf_get_changed()) {
-		name = getenv("KCONFIG_NOSILENTUPDATE");
-		if (name && *name) {
-			fprintf(stderr, _("\n*** Kernel configuration requires explicit update.\n\n"));
+		if (conf_write_autoconf()) {
+			fprintf(stderr, _("\n*** Error during update of the barebox configuration.\n\n"));
 			return 1;
 		}
-	} else
-		goto skip_check;
-
-	do {
-		conf_cnt = 0;
-		check_conf(&rootmenu);
-	} while (conf_cnt);
-	if (conf_write(NULL)) {
-		fprintf(stderr, _("\n*** Error during writing of the configuration.\n\n"));
-		return 1;
-	}
-skip_check:
-	if (input_mode == ask_silent && conf_write_autoconf()) {
-		fprintf(stderr, _("\n*** Error during writing of the configuration.\n\n"));
-		return 1;
+	} else if (input_mode == savedefconfig) {
+		if (conf_write_defconfig(defconfig_file)) {
+			fprintf(stderr, _("n*** Error while saving defconfig to: %s\n\n"),
+			        defconfig_file);
+			return 1;
+		}
+	} else if (input_mode != listnewconfig) {
+		if (conf_write(NULL)) {
+			fprintf(stderr, _("\n*** Error during writing of the barebox configuration.\n\n"));
+			exit(1);
+		}
 	}
-
 	return 0;
 }
diff --git a/scripts/kconfig/confdata.c b/scripts/kconfig/confdata.c
index 2b8f140..3e1a638 100644
--- a/scripts/kconfig/confdata.c
+++ b/scripts/kconfig/confdata.c
@@ -41,6 +41,13 @@ const char *conf_get_configname(void)
 	return name ? name : ".config";
 }
 
+const char *conf_get_autoconfig_name(void)
+{
+	char *name = getenv("KCONFIG_AUTOCONFIG");
+
+	return name ? name : "include/config/auto.conf";
+}
+
 static char *conf_expand_value(const char *in)
 {
 	struct symbol *sym;
@@ -83,6 +90,68 @@ char *conf_get_default_confname(void)
 	return name;
 }
 
+static int conf_set_sym_val(struct symbol *sym, int def, int def_flags, char *p)
+{
+	char *p2;
+
+	switch (sym->type) {
+	case S_TRISTATE:
+		if (p[0] == 'm') {
+			sym->def[def].tri = mod;
+			sym->flags |= def_flags;
+			break;
+		}
+	case S_BOOLEAN:
+		if (p[0] == 'y') {
+			sym->def[def].tri = yes;
+			sym->flags |= def_flags;
+			break;
+		}
+		if (p[0] == 'n') {
+			sym->def[def].tri = no;
+			sym->flags |= def_flags;
+			break;
+		}
+		conf_warning("symbol value '%s' invalid for %s", p, sym->name);
+		break;
+	case S_OTHER:
+		if (*p != '"') {
+			for (p2 = p; *p2 && !isspace(*p2); p2++)
+				;
+			sym->type = S_STRING;
+			goto done;
+		}
+	case S_STRING:
+		if (*p++ != '"')
+			break;
+		for (p2 = p; (p2 = strpbrk(p2, "\"\\")); p2++) {
+			if (*p2 == '"') {
+				*p2 = 0;
+				break;
+			}
+			memmove(p2, p2 + 1, strlen(p2));
+		}
+		if (!p2) {
+			conf_warning("invalid string found");
+			return 1;
+		}
+	case S_INT:
+	case S_HEX:
+	done:
+		if (sym_string_valid(sym, p)) {
+			sym->def[def].val = strdup(p);
+			sym->flags |= def_flags;
+		} else {
+			conf_warning("symbol value '%s' invalid for %s", p, sym->name);
+			return 1;
+		}
+		break;
+	default:
+		;
+	}
+	return 0;
+}
+
 int conf_read_simple(const char *name, int def)
 {
 	FILE *in = NULL;
@@ -101,8 +170,11 @@ int conf_read_simple(const char *name, int def)
 		if (in)
 			goto load;
 		sym_add_change_count(1);
-		if (!sym_defconfig_list)
+		if (!sym_defconfig_list) {
+			if (modules_sym)
+				sym_calc_value(modules_sym);
 			return 1;
+		}
 
 		for_all_defaults(sym_defconfig_list, prop) {
 			if (expr_calc_value(prop->visible.expr) == no ||
@@ -161,7 +233,7 @@ load:
 			if (def == S_DEF_USER) {
 				sym = sym_find(line + 9);
 				if (!sym) {
-					conf_warning("trying to assign nonexistent symbol %s", line + 9);
+					sym_add_change_count(1);
 					break;
 				}
 			} else {
@@ -170,8 +242,7 @@ load:
 					sym->type = S_BOOLEAN;
 			}
 			if (sym->flags & def_flags) {
-				conf_warning("trying to reassign symbol %s", sym->name);
-				break;
+				conf_warning("override: reassigning to symbol %s", sym->name);
 			}
 			switch (sym->type) {
 			case S_BOOLEAN:
@@ -201,7 +272,7 @@ load:
 			if (def == S_DEF_USER) {
 				sym = sym_find(line + 7);
 				if (!sym) {
-					conf_warning("trying to assign nonexistent symbol %s", line + 7);
+					sym_add_change_count(1);
 					break;
 				}
 			} else {
@@ -210,64 +281,10 @@ load:
 					sym->type = S_OTHER;
 			}
 			if (sym->flags & def_flags) {
-				conf_warning("trying to reassign symbol %s", sym->name);
-				break;
-			}
-			switch (sym->type) {
-			case S_TRISTATE:
-				if (p[0] == 'm') {
-					sym->def[def].tri = mod;
-					sym->flags |= def_flags;
-					break;
-				}
-			case S_BOOLEAN:
-				if (p[0] == 'y') {
-					sym->def[def].tri = yes;
-					sym->flags |= def_flags;
-					break;
-				}
-				if (p[0] == 'n') {
-					sym->def[def].tri = no;
-					sym->flags |= def_flags;
-					break;
-				}
-				conf_warning("symbol value '%s' invalid for %s", p, sym->name);
-				break;
-			case S_OTHER:
-				if (*p != '"') {
-					for (p2 = p; *p2 && !isspace(*p2); p2++)
-						;
-					sym->type = S_STRING;
-					goto done;
-				}
-			case S_STRING:
-				if (*p++ != '"')
-					break;
-				for (p2 = p; (p2 = strpbrk(p2, "\"\\")); p2++) {
-					if (*p2 == '"') {
-						*p2 = 0;
-						break;
-					}
-					memmove(p2, p2 + 1, strlen(p2));
-				}
-				if (!p2) {
-					conf_warning("invalid string found");
-					continue;
-				}
-			case S_INT:
-			case S_HEX:
-			done:
-				if (sym_string_valid(sym, p)) {
-					sym->def[def].val = strdup(p);
-					sym->flags |= def_flags;
-				} else {
-					conf_warning("symbol value '%s' invalid for %s", p, sym->name);
-					continue;
-				}
-				break;
-			default:
-				;
+				conf_warning("override: reassigning to symbol %s", sym->name);
 			}
+			if (conf_set_sym_val(sym, def, def_flags, p))
+				continue;
 			break;
 		case '\r':
 		case '\n':
@@ -288,14 +305,12 @@ load:
 				}
 				break;
 			case yes:
-				if (cs->def[def].tri != no) {
-					conf_warning("%s creates inconsistent choice state", sym->name);
-					cs->flags &= ~def_flags;
-				} else
-					cs->def[def].val = sym;
+				if (cs->def[def].tri != no)
+					conf_warning("override: %s changes choice state", sym->name);
+				cs->def[def].val = sym;
 				break;
 			}
-			cs->def[def].tri = E_OR(cs->def[def].tri, sym->def[def].tri);
+			cs->def[def].tri = EXPR_OR(cs->def[def].tri, sym->def[def].tri);
 		}
 	}
 	fclose(in);
@@ -307,7 +322,7 @@ load:
 
 int conf_read(const char *name)
 {
-	struct symbol *sym;
+	struct symbol *sym, *choice_sym;
 	struct property *prop;
 	struct expr *e;
 	int i, flags;
@@ -348,9 +363,9 @@ int conf_read(const char *name)
 		 */
 		prop = sym_get_choice_prop(sym);
 		flags = sym->flags;
-		for (e = prop->expr; e; e = e->left.expr)
-			if (e->right.sym->visible != no)
-				flags &= e->right.sym->flags;
+		expr_list_for_each_sym(prop->expr, e, choice_sym)
+			if (choice_sym->visible != no)
+				flags &= choice_sym->flags;
 		sym->flags &= flags | ~SYMBOL_DEF_USER;
 	}
 
@@ -384,15 +399,149 @@ int conf_read(const char *name)
 	return 0;
 }
 
+/* Write a S_STRING */
+static void conf_write_string(bool headerfile, const char *name,
+                              const char *str, FILE *out)
+{
+	int l;
+	if (headerfile)
+		fprintf(out, "#define CONFIG_%s \"", name);
+	else
+		fprintf(out, "CONFIG_%s=\"", name);
+
+	while (1) {
+		l = strcspn(str, "\"\\");
+		if (l) {
+			fwrite(str, l, 1, out);
+			str += l;
+		}
+		if (!*str)
+			break;
+		fprintf(out, "\\%c", *str++);
+	}
+	fputs("\"\n", out);
+}
+
+static void conf_write_symbol(struct symbol *sym, enum symbol_type type,
+                              FILE *out, bool write_no)
+{
+	const char *str;
+
+	switch (type) {
+	case S_BOOLEAN:
+	case S_TRISTATE:
+		switch (sym_get_tristate_value(sym)) {
+		case no:
+			if (write_no)
+				fprintf(out, "# CONFIG_%s is not set\n", sym->name);
+			break;
+		case mod:
+			fprintf(out, "CONFIG_%s=m\n", sym->name);
+			break;
+		case yes:
+			fprintf(out, "CONFIG_%s=y\n", sym->name);
+			break;
+		}
+		break;
+	case S_STRING:
+		conf_write_string(false, sym->name, sym_get_string_value(sym), out);
+		break;
+	case S_HEX:
+	case S_INT:
+		str = sym_get_string_value(sym);
+		fprintf(out, "CONFIG_%s=%s\n", sym->name, str);
+		break;
+	case S_OTHER:
+	case S_UNKNOWN:
+		break;
+	}
+}
+
+/*
+ * Write out a minimal config.
+ * All values that has default values are skipped as this is redundant.
+ */
+int conf_write_defconfig(const char *filename)
+{
+	struct symbol *sym;
+	struct menu *menu;
+	FILE *out;
+
+	out = fopen(filename, "w");
+	if (!out)
+		return 1;
+
+	sym_clear_all_valid();
+
+	/* Traverse all menus to find all relevant symbols */
+	menu = rootmenu.list;
+
+	while (menu != NULL)
+	{
+		sym = menu->sym;
+		if (sym == NULL) {
+			if (!menu_is_visible(menu))
+				goto next_menu;
+		} else if (!sym_is_choice(sym)) {
+			sym_calc_value(sym);
+			if (!(sym->flags & SYMBOL_WRITE))
+				goto next_menu;
+			sym->flags &= ~SYMBOL_WRITE;
+			/* If we cannot change the symbol - skip */
+			if (!sym_is_changable(sym))
+				goto next_menu;
+			/* If symbol equals to default value - skip */
+			if (strcmp(sym_get_string_value(sym), sym_get_string_default(sym)) == 0)
+				goto next_menu;
+
+			/*
+			 * If symbol is a choice value and equals to the
+			 * default for a choice - skip.
+			 * But only if value equal to "y".
+			 */
+			if (sym_is_choice_value(sym)) {
+				struct symbol *cs;
+				struct symbol *ds;
+
+				cs = prop_get_symbol(sym_get_choice_prop(sym));
+				ds = sym_choice_default(cs);
+				if (sym == ds) {
+					if ((sym->type == S_BOOLEAN ||
+					sym->type == S_TRISTATE) &&
+					sym_get_tristate_value(sym) == yes)
+						goto next_menu;
+				}
+			}
+			conf_write_symbol(sym, sym->type, out, true);
+		}
+next_menu:
+		if (menu->list != NULL) {
+			menu = menu->list;
+		}
+		else if (menu->next != NULL) {
+			menu = menu->next;
+		} else {
+			while ((menu = menu->parent)) {
+				if (menu->next != NULL) {
+					menu = menu->next;
+					break;
+				}
+			}
+		}
+	}
+	fclose(out);
+	return 0;
+}
+
 int conf_write(const char *name)
 {
 	FILE *out;
 	struct symbol *sym;
 	struct menu *menu;
 	const char *basename;
-	char dirname[128], tmpname[128], newname[128];
-	int type, l;
 	const char *str;
+	char dirname[128], tmpname[128], newname[128];
+	enum symbol_type type;
 	time_t now;
 	int use_timestamp = 1;
 	char *env;
@@ -440,7 +589,7 @@ int conf_write(const char *name)
 
 	fprintf(out, _("#\n"
 		       "# Automatically generated make config: don't edit\n"
-		       "# barebox version: %s\n"
+		       "# Linux barebox version: %s\n"
 		       "%s%s"
 		       "#\n"),
 		     sym_get_string_value(sym),
@@ -472,50 +621,11 @@ int conf_write(const char *name)
 				if (modules_sym->curr.tri == no)
 					type = S_BOOLEAN;
 			}
-			switch (type) {
-			case S_BOOLEAN:
-			case S_TRISTATE:
-				switch (sym_get_tristate_value(sym)) {
-				case no:
-					fprintf(out, "# CONFIG_%s is not set\n", sym->name);
-					break;
-				case mod:
-					fprintf(out, "CONFIG_%s=m\n", sym->name);
-					break;
-				case yes:
-					fprintf(out, "CONFIG_%s=y\n", sym->name);
-					break;
-				}
-				break;
-			case S_STRING:
-				str = sym_get_string_value(sym);
-				fprintf(out, "CONFIG_%s=\"", sym->name);
-				while (1) {
-					l = strcspn(str, "\"\\");
-					if (l) {
-						fwrite(str, l, 1, out);
-						str += l;
-					}
-					if (!*str)
-						break;
-					fprintf(out, "\\%c", *str++);
-				}
-				fputs("\"\n", out);
-				break;
-			case S_HEX:
-				str = sym_get_string_value(sym);
-				if (str[0] != '0' || (str[1] != 'x' && str[1] != 'X')) {
-					fprintf(out, "CONFIG_%s=%s\n", sym->name, str);
-					break;
-				}
-			case S_INT:
-				str = sym_get_string_value(sym);
-				fprintf(out, "CONFIG_%s=%s\n", sym->name, str);
-				break;
-			}
+			/* Write config symbol to file */
+			conf_write_symbol(sym, type, out, true);
 		}
 
-	next:
+next:
 		if (menu->list) {
 			menu = menu->list;
 			continue;
@@ -548,17 +658,16 @@ int conf_write(const char *name)
 	return 0;
 }
 
-int conf_split_config(void)
+static int conf_split_config(void)
 {
-	char *name, path[128];
+	const char *name;
+	char path[128];
 	char *s, *d, c;
 	struct symbol *sym;
 	struct stat sb;
 	int res, i, fd;
 
-	name = getenv("KCONFIG_AUTOCONFIG");
-	if (!name)
-		name = "include/config/auto.conf";
+	name = conf_get_autoconfig_name();
 	conf_read_simple(name, S_DEF_AUTO);
 
 	if (chdir("include/config"))
@@ -665,10 +774,10 @@ int conf_write_autoconf(void)
 {
 	struct symbol *sym;
 	const char *str;
-	char *name;
-	FILE *out, *out_h;
+	const char *name;
+	FILE *out, *tristate, *out_h;
 	time_t now;
-	int i, l;
+	int i;
 
 	sym_clear_all_valid();
 
@@ -681,9 +790,16 @@ int conf_write_autoconf(void)
 	if (!out)
 		return 1;
 
+	tristate = fopen(".tmpconfig_tristate", "w");
+	if (!tristate) {
+		fclose(out);
+		return 1;
+	}
+
 	out_h = fopen(".tmpconfig.h", "w");
 	if (!out_h) {
 		fclose(out);
+		fclose(tristate);
 		return 1;
 	}
 
@@ -692,13 +808,16 @@ int conf_write_autoconf(void)
 	time(&now);
 	fprintf(out, "#\n"
 		     "# Automatically generated make config: don't edit\n"
-		     "# barebox version: %s\n"
+		     "# Linux barebox version: %s\n"
 		     "# %s"
 		     "#\n",
 		     sym_get_string_value(sym), ctime(&now));
+	fprintf(tristate, "#\n"
+			  "# Automatically generated - do not edit\n"
+			  "\n");
 	fprintf(out_h, "/*\n"
 		       " * Automatically generated C config: don't edit\n"
-		       " * barebox version: %s\n"
+		       " * Linux barebox version: %s\n"
 		       " * %s"
 		       " */\n"
 		       "#define AUTOCONF_INCLUDED\n",
@@ -708,6 +827,11 @@ int conf_write_autoconf(void)
 		sym_calc_value(sym);
 		if (!(sym->flags & SYMBOL_WRITE) || !sym->name)
 			continue;
+
+		/* write symbol to config file */
+		conf_write_symbol(sym, sym->type, out, false);
+
+		/* update autoconf and tristate files */
 		switch (sym->type) {
 		case S_BOOLEAN:
 		case S_TRISTATE:
@@ -715,45 +839,28 @@ int conf_write_autoconf(void)
 			case no:
 				break;
 			case mod:
-				fprintf(out, "CONFIG_%s=m\n", sym->name);
+				fprintf(tristate, "CONFIG_%s=M\n", sym->name);
 				fprintf(out_h, "#define CONFIG_%s_MODULE 1\n", sym->name);
 				break;
 			case yes:
-				fprintf(out, "CONFIG_%s=y\n", sym->name);
+				if (sym->type == S_TRISTATE)
+					fprintf(tristate, "CONFIG_%s=Y\n",
+							sym->name);
 				fprintf(out_h, "#define CONFIG_%s 1\n", sym->name);
 				break;
 			}
 			break;
 		case S_STRING:
-			str = sym_get_string_value(sym);
-			fprintf(out, "CONFIG_%s=\"", sym->name);
-			fprintf(out_h, "#define CONFIG_%s \"", sym->name);
-			while (1) {
-				l = strcspn(str, "\"\\");
-				if (l) {
-					fwrite(str, l, 1, out);
-					fwrite(str, l, 1, out_h);
-					str += l;
-				}
-				if (!*str)
-					break;
-				fprintf(out, "\\%c", *str);
-				fprintf(out_h, "\\%c", *str);
-				str++;
-			}
-			fputs("\"\n", out);
-			fputs("\"\n", out_h);
+			conf_write_string(true, sym->name, sym_get_string_value(sym), out_h);
 			break;
 		case S_HEX:
 			str = sym_get_string_value(sym);
 			if (str[0] != '0' || (str[1] != 'x' && str[1] != 'X')) {
-				fprintf(out, "CONFIG_%s=%s\n", sym->name, str);
 				fprintf(out_h, "#define CONFIG_%s 0x%s\n", sym->name, str);
 				break;
 			}
 		case S_INT:
 			str = sym_get_string_value(sym);
-			fprintf(out, "CONFIG_%s=%s\n", sym->name, str);
 			fprintf(out_h, "#define CONFIG_%s %s\n", sym->name, str);
 			break;
 		default:
@@ -761,16 +868,20 @@ int conf_write_autoconf(void)
 		}
 	}
 	fclose(out);
+	fclose(tristate);
 	fclose(out_h);
 
 	name = getenv("KCONFIG_AUTOHEADER");
 	if (!name)
-		name = "include/linux/autoconf.h";
+		name = "include/generated/autoconf.h";
 	if (rename(".tmpconfig.h", name))
 		return 1;
-	name = getenv("KCONFIG_AUTOCONFIG");
+	name = getenv("KCONFIG_TRISTATE");
 	if (!name)
-		name = "include/config/auto.conf";
+		name = "include/config/tristate.conf";
+	if (rename(".tmpconfig_tristate", name))
+		return 1;
+	name = conf_get_autoconfig_name();
 	/*
 	 * This must be the last step, kbuild has a dependency on auto.conf
 	 * and this marks the successful completion of the previous steps.
@@ -807,3 +918,94 @@ void conf_set_changed_callback(void (*fn)(void))
 {
 	conf_changed_callback = fn;
 }
+
+
+void conf_set_all_new_symbols(enum conf_def_mode mode)
+{
+	struct symbol *sym, *csym;
+	struct property *prop;
+	struct expr *e;
+	int i, cnt, def;
+
+	for_all_symbols(i, sym) {
+		if (sym_has_value(sym))
+			continue;
+		switch (sym_get_type(sym)) {
+		case S_BOOLEAN:
+		case S_TRISTATE:
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
+				cnt = sym_get_type(sym) == S_TRISTATE ? 3 : 2;
+				sym->def[S_DEF_USER].tri = (tristate)(rand() % cnt);
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
+	if (mode != def_random)
+		return;
+	/*
+	 * We have different type of choice blocks.
+	 * If curr.tri equal to mod then we can select several
+	 * choice symbols in one block.
+	 * In this case we do nothing.
+	 * If curr.tri equal yes then only one symbol can be
+	 * selected in a choice block and we set it to yes,
+	 * and the rest to no.
+	 */
+	for_all_symbols(i, csym) {
+		if (sym_has_value(csym) || !sym_is_choice(csym))
+			continue;
+
+		sym_calc_value(csym);
+
+		if (csym->curr.tri != yes)
+			continue;
+
+		prop = sym_get_choice_prop(csym);
+
+		/* count entries in choice block */
+		cnt = 0;
+		expr_list_for_each_sym(prop->expr, e, sym)
+			cnt++;
+
+		/*
+		 * find a random value and set it to yes,
+		 * set the rest to no so we have only one set
+		 */
+		def = (rand() % cnt);
+
+		cnt = 0;
+		expr_list_for_each_sym(prop->expr, e, sym) {
+			if (def == cnt++) {
+				sym->def[S_DEF_USER].tri = yes;
+				csym->def[S_DEF_USER].val = sym;
+			}
+			else {
+				sym->def[S_DEF_USER].tri = no;
+			}
+		}
+		csym->flags |= SYMBOL_DEF_USER;
+		/* clear VALID to get value calculated */
+		csym->flags &= ~(SYMBOL_VALID);
+	}
+}
diff --git a/scripts/kconfig/expr.c b/scripts/kconfig/expr.c
index 6f98dbf..8f18e37 100644
--- a/scripts/kconfig/expr.c
+++ b/scripts/kconfig/expr.c
@@ -87,7 +87,7 @@ struct expr *expr_copy(struct expr *org)
 		break;
 	case E_AND:
 	case E_OR:
-	case E_CHOICE:
+	case E_LIST:
 		e->left.expr = expr_copy(org->left.expr);
 		e->right.expr = expr_copy(org->right.expr);
 		break;
@@ -217,7 +217,7 @@ int expr_eq(struct expr *e1, struct expr *e2)
 		expr_free(e2);
 		trans_count = old_count;
 		return res;
-	case E_CHOICE:
+	case E_LIST:
 	case E_RANGE:
 	case E_NONE:
 		/* panic */;
@@ -348,7 +348,7 @@ struct expr *expr_trans_bool(struct expr *e)
 /*
  * e1 || e2 -> ?
  */
-struct expr *expr_join_or(struct expr *e1, struct expr *e2)
+static struct expr *expr_join_or(struct expr *e1, struct expr *e2)
 {
 	struct expr *tmp;
 	struct symbol *sym1, *sym2;
@@ -412,7 +412,7 @@ struct expr *expr_join_or(struct expr *e1, struct expr *e2)
 	return NULL;
 }
 
-struct expr *expr_join_and(struct expr *e1, struct expr *e2)
+static struct expr *expr_join_and(struct expr *e1, struct expr *e2)
 {
 	struct expr *tmp;
 	struct symbol *sym1, *sym2;
@@ -648,7 +648,7 @@ struct expr *expr_transform(struct expr *e)
 	case E_EQUAL:
 	case E_UNEQUAL:
 	case E_SYMBOL:
-	case E_CHOICE:
+	case E_LIST:
 		break;
 	default:
 		e->left.expr = expr_transform(e->left.expr);
@@ -932,7 +932,7 @@ struct expr *expr_trans_compare(struct expr *e, enum expr_type type, struct symb
 		break;
 	case E_SYMBOL:
 		return expr_alloc_comp(type, e->left.sym, sym);
-	case E_CHOICE:
+	case E_LIST:
 	case E_RANGE:
 	case E_NONE:
 		/* panic */;
@@ -955,14 +955,14 @@ tristate expr_calc_value(struct expr *e)
 	case E_AND:
 		val1 = expr_calc_value(e->left.expr);
 		val2 = expr_calc_value(e->right.expr);
-		return E_AND(val1, val2);
+		return EXPR_AND(val1, val2);
 	case E_OR:
 		val1 = expr_calc_value(e->left.expr);
 		val2 = expr_calc_value(e->right.expr);
-		return E_OR(val1, val2);
+		return EXPR_OR(val1, val2);
 	case E_NOT:
 		val1 = expr_calc_value(e->left.expr);
-		return E_NOT(val1);
+		return EXPR_NOT(val1);
 	case E_EQUAL:
 		sym_calc_value(e->left.sym);
 		sym_calc_value(e->right.sym);
@@ -1000,9 +1000,9 @@ int expr_compare_type(enum expr_type t1, enum expr_type t2)
 		if (t2 == E_OR)
 			return 1;
 	case E_OR:
-		if (t2 == E_CHOICE)
+		if (t2 == E_LIST)
 			return 1;
-	case E_CHOICE:
+	case E_LIST:
 		if (t2 == 0)
 			return 1;
 	default:
@@ -1034,12 +1034,18 @@ void expr_print(struct expr *e, void (*fn)(void *, struct symbol *, const char *
 		expr_print(e->left.expr, fn, data, E_NOT);
 		break;
 	case E_EQUAL:
-		fn(data, e->left.sym, e->left.sym->name);
+		if (e->left.sym->name)
+			fn(data, e->left.sym, e->left.sym->name);
+		else
+			fn(data, NULL, "<choice>");
 		fn(data, NULL, "=");
 		fn(data, e->right.sym, e->right.sym->name);
 		break;
 	case E_UNEQUAL:
-		fn(data, e->left.sym, e->left.sym->name);
+		if (e->left.sym->name)
+			fn(data, e->left.sym, e->left.sym->name);
+		else
+			fn(data, NULL, "<choice>");
 		fn(data, NULL, "!=");
 		fn(data, e->right.sym, e->right.sym->name);
 		break;
@@ -1053,11 +1059,11 @@ void expr_print(struct expr *e, void (*fn)(void *, struct symbol *, const char *
 		fn(data, NULL, " && ");
 		expr_print(e->right.expr, fn, data, E_AND);
 		break;
-	case E_CHOICE:
+	case E_LIST:
 		fn(data, e->right.sym, e->right.sym->name);
 		if (e->left.expr) {
 			fn(data, NULL, " ^ ");
-			expr_print(e->left.expr, fn, data, E_CHOICE);
+			expr_print(e->left.expr, fn, data, E_LIST);
 		}
 		break;
 	case E_RANGE:
@@ -1091,7 +1097,32 @@ void expr_fprint(struct expr *e, FILE *out)
 
 static void expr_print_gstr_helper(void *data, struct symbol *sym, const char *str)
 {
-	str_append((struct gstr*)data, str);
+	struct gstr *gs = (struct gstr*)data;
+	const char *sym_str = NULL;
+
+	if (sym)
+		sym_str = sym_get_string_value(sym);
+
+	if (gs->max_width) {
+		unsigned extra_length = strlen(str);
+		const char *last_cr = strrchr(gs->s, '\n');
+		unsigned last_line_length;
+
+		if (sym_str)
+			extra_length += 4 + strlen(sym_str);
+
+		if (!last_cr)
+			last_cr = gs->s;
+
+		last_line_length = strlen(gs->s) - (last_cr - gs->s);
+
+		if ((last_line_length + extra_length) > gs->max_width)
+			str_append(gs, "\\\n");
+	}
+
+	str_append(gs, str);
+	if (sym && sym->type != S_UNKNOWN)
+		str_printf(gs, " [=%s]", sym_str);
 }
 
 void expr_gstr_print(struct expr *e, struct gstr *gs)
diff --git a/scripts/kconfig/expr.h b/scripts/kconfig/expr.h
index a195986..6ee2e4f 100644
--- a/scripts/kconfig/expr.h
+++ b/scripts/kconfig/expr.h
@@ -25,14 +25,13 @@ struct file {
 
 #define FILE_BUSY		0x0001
 #define FILE_SCANNED		0x0002
-#define FILE_PRINTED		0x0004
 
 typedef enum tristate {
 	no, mod, yes
 } tristate;
 
 enum expr_type {
-	E_NONE, E_OR, E_AND, E_NOT, E_EQUAL, E_UNEQUAL, E_CHOICE, E_SYMBOL, E_RANGE
+	E_NONE, E_OR, E_AND, E_NOT, E_EQUAL, E_UNEQUAL, E_LIST, E_SYMBOL, E_RANGE
 };
 
 union expr_data {
@@ -45,9 +44,12 @@ struct expr {
 	union expr_data left, right;
 };
 
-#define E_OR(dep1, dep2)	(((dep1)>(dep2))?(dep1):(dep2))
-#define E_AND(dep1, dep2)	(((dep1)<(dep2))?(dep1):(dep2))
-#define E_NOT(dep)		(2-(dep))
+#define EXPR_OR(dep1, dep2)	(((dep1)>(dep2))?(dep1):(dep2))
+#define EXPR_AND(dep1, dep2)	(((dep1)<(dep2))?(dep1):(dep2))
+#define EXPR_NOT(dep)		(2-(dep))
+
+#define expr_list_for_each_sym(l, e, s) \
+	for (e = (l); e && (s = e->right.sym); e = e->left.expr)
 
 struct expr_value {
 	struct expr *expr;
@@ -63,9 +65,13 @@ enum symbol_type {
 	S_UNKNOWN, S_BOOLEAN, S_TRISTATE, S_INT, S_HEX, S_STRING, S_OTHER
 };
 
+/* enum values are used as index to symbol.def[] */
 enum {
 	S_DEF_USER,		/* main user value */
-	S_DEF_AUTO,
+	S_DEF_AUTO,		/* values read from auto.conf */
+	S_DEF_DEF3,		/* Reserved for UI usage */
+	S_DEF_DEF4,		/* Reserved for UI usage */
+	S_DEF_COUNT
 };
 
 struct symbol {
@@ -73,51 +79,74 @@ struct symbol {
 	char *name;
 	enum symbol_type type;
 	struct symbol_value curr;
-	struct symbol_value def[4];
+	struct symbol_value def[S_DEF_COUNT];
 	tristate visible;
 	int flags;
 	struct property *prop;
+	struct expr_value dir_dep;
 	struct expr_value rev_dep;
 };
 
-#define for_all_symbols(i, sym) for (i = 0; i < 257; i++) for (sym = symbol_hash[i]; sym; sym = sym->next) if (sym->type != S_OTHER)
-
-#define SYMBOL_CONST		0x0001
-#define SYMBOL_CHECK		0x0008
-#define SYMBOL_CHOICE		0x0010
-#define SYMBOL_CHOICEVAL	0x0020
-#define SYMBOL_PRINTED		0x0040
-#define SYMBOL_VALID		0x0080
-#define SYMBOL_OPTIONAL		0x0100
-#define SYMBOL_WRITE		0x0200
-#define SYMBOL_CHANGED		0x0400
-#define SYMBOL_AUTO		0x1000
-#define SYMBOL_CHECKED		0x2000
-#define SYMBOL_WARNED		0x8000
-#define SYMBOL_DEF		0x10000
-#define SYMBOL_DEF_USER		0x10000
-#define SYMBOL_DEF_AUTO		0x20000
-#define SYMBOL_DEF3		0x40000
-#define SYMBOL_DEF4		0x80000
+#define for_all_symbols(i, sym) for (i = 0; i < SYMBOL_HASHSIZE; i++) for (sym = symbol_hash[i]; sym; sym = sym->next) if (sym->type != S_OTHER)
+
+#define SYMBOL_CONST      0x0001  /* symbol is const */
+#define SYMBOL_CHECK      0x0008  /* used during dependency checking */
+#define SYMBOL_CHOICE     0x0010  /* start of a choice block (null name) */
+#define SYMBOL_CHOICEVAL  0x0020  /* used as a value in a choice block */
+#define SYMBOL_VALID      0x0080  /* set when symbol.curr is calculated */
+#define SYMBOL_OPTIONAL   0x0100  /* choice is optional - values can be 'n' */
+#define SYMBOL_WRITE      0x0200  /* ? */
+#define SYMBOL_CHANGED    0x0400  /* ? */
+#define SYMBOL_AUTO       0x1000  /* value from environment variable */
+#define SYMBOL_CHECKED    0x2000  /* used during dependency checking */
+#define SYMBOL_WARNED     0x8000  /* warning has been issued */
+
+/* Set when symbol.def[] is used */
+#define SYMBOL_DEF        0x10000  /* First bit of SYMBOL_DEF */
+#define SYMBOL_DEF_USER   0x10000  /* symbol.def[S_DEF_USER] is valid */
+#define SYMBOL_DEF_AUTO   0x20000  /* symbol.def[S_DEF_AUTO] is valid */
+#define SYMBOL_DEF3       0x40000  /* symbol.def[S_DEF_3] is valid */
+#define SYMBOL_DEF4       0x80000  /* symbol.def[S_DEF_4] is valid */
 
 #define SYMBOL_MAXLENGTH	256
-#define SYMBOL_HASHSIZE		257
-#define SYMBOL_HASHMASK		0xff
-
+#define SYMBOL_HASHSIZE		9973
+
+/* A property represent the config options that can be associated
+ * with a config "symbol".
+ * Sample:
+ * config FOO
+ *         default y
+ *         prompt "foo prompt"
+ *         select BAR
+ * config BAZ
+ *         int "BAZ Value"
+ *         range 1..255
+ */
 enum prop_type {
-	P_UNKNOWN, P_PROMPT, P_COMMENT, P_MENU, P_DEFAULT, P_CHOICE, P_SELECT, P_RANGE
+	P_UNKNOWN,
+	P_PROMPT,   /* prompt "foo prompt" or "BAZ Value" */
+	P_COMMENT,  /* text associated with a comment */
+	P_MENU,     /* prompt associated with a menuconfig option */
+	P_DEFAULT,  /* default y */
+	P_CHOICE,   /* choice value */
+	P_SELECT,   /* select BAR */
+	P_RANGE,    /* range 7..100 (for a symbol) */
+	P_ENV,      /* value from environment variable */
+	P_SYMBOL,   /* where a symbol is defined */
 };
 
 struct property {
-	struct property *next;
-	struct symbol *sym;
-	enum prop_type type;
-	const char *text;
+	struct property *next;     /* next property - null if last */
+	struct symbol *sym;        /* the symbol for which the property is associated */
+	enum prop_type type;       /* type of property */
+	const char *text;          /* the prompt value - P_PROMPT, P_MENU, P_COMMENT */
 	struct expr_value visible;
-	struct expr *expr;
-	struct menu *menu;
-	struct file *file;
-	int lineno;
+	struct expr *expr;         /* the optional conditional part of the property */
+	struct menu *menu;         /* the menu the property are associated with
+	                            * valid for: P_SELECT, P_RANGE, P_CHOICE,
+	                            * P_PROMPT, P_DEFAULT, P_MENU, P_COMMENT */
+	struct file *file;         /* what file was this property defined */
+	int lineno;                /* what lineno was this property defined */
 };
 
 #define for_all_properties(sym, st, tok) \
@@ -136,6 +165,7 @@ struct menu {
 	struct symbol *sym;
 	struct property *prompt;
 	struct expr *dep;
+	struct expr *dir_dep;
 	unsigned int flags;
 	char *help;
 	struct file *file;
diff --git a/scripts/kconfig/gconf.c b/scripts/kconfig/gconf.c
index 262908c..9b84fee 100644
--- a/scripts/kconfig/gconf.c
+++ b/scripts/kconfig/gconf.c
@@ -30,13 +30,16 @@ enum {
 	SINGLE_VIEW, SPLIT_VIEW, FULL_VIEW
 };
 
+enum {
+	OPT_NORMAL, OPT_ALL, OPT_PROMPT
+};
+
 static gint view_mode = FULL_VIEW;
 static gboolean show_name = TRUE;
 static gboolean show_range = TRUE;
 static gboolean show_value = TRUE;
-static gboolean show_all = FALSE;
-static gboolean show_debug = FALSE;
 static gboolean resizeable = FALSE;
+static int opt_mode = OPT_NORMAL;
 
 GtkWidget *main_wnd = NULL;
 GtkWidget *tree1_w = NULL;	// left  frame
@@ -76,36 +79,7 @@ static void conf_changed(void);
 
 /* Helping/Debugging Functions */
 
-
-const char *dbg_print_stype(int val)
-{
-	static char buf[256];
-
-	bzero(buf, 256);
-
-	if (val == S_UNKNOWN)
-		strcpy(buf, "unknown");
-	if (val == S_BOOLEAN)
-		strcpy(buf, "boolean");
-	if (val == S_TRISTATE)
-		strcpy(buf, "tristate");
-	if (val == S_INT)
-		strcpy(buf, "int");
-	if (val == S_HEX)
-		strcpy(buf, "hex");
-	if (val == S_STRING)
-		strcpy(buf, "string");
-	if (val == S_OTHER)
-		strcpy(buf, "other");
-
-#ifdef DEBUG
-	printf("%s", buf);
-#endif
-
-	return buf;
-}
-
-const char *dbg_print_flags(int val)
+const char *dbg_sym_flags(int val)
 {
 	static char buf[256];
 
@@ -119,8 +93,6 @@ const char *dbg_print_flags(int val)
 		strcat(buf, "choice/");
 	if (val & SYMBOL_CHOICEVAL)
 		strcat(buf, "choiceval/");
-	if (val & SYMBOL_PRINTED)
-		strcat(buf, "printed/");
 	if (val & SYMBOL_VALID)
 		strcat(buf, "valid/");
 	if (val & SYMBOL_OPTIONAL)
@@ -133,40 +105,10 @@ const char *dbg_print_flags(int val)
 		strcat(buf, "auto/");
 
 	buf[strlen(buf) - 1] = '\0';
-#ifdef DEBUG
-	printf("%s", buf);
-#endif
-
-	return buf;
-}
-
-const char *dbg_print_ptype(int val)
-{
-	static char buf[256];
-
-	bzero(buf, 256);
-
-	if (val == P_UNKNOWN)
-		strcpy(buf, "unknown");
-	if (val == P_PROMPT)
-		strcpy(buf, "prompt");
-	if (val == P_COMMENT)
-		strcpy(buf, "comment");
-	if (val == P_MENU)
-		strcpy(buf, "menu");
-	if (val == P_DEFAULT)
-		strcpy(buf, "default");
-	if (val == P_CHOICE)
-		strcpy(buf, "choice");
-
-#ifdef DEBUG
-	printf("%s", buf);
-#endif
 
 	return buf;
 }
 
-
 void replace_button_icon(GladeXML * xml, GdkDrawable * window,
 			 GtkStyle * style, gchar * btn_name, gchar ** xpm)
 {
@@ -268,7 +210,7 @@ void init_main_window(const gchar * glade_file)
 					  /*"style", PANGO_STYLE_OBLIQUE, */
 					  NULL);
 
-	sprintf(title, _("Linux Kernel v%s Configuration"),
+	sprintf(title, _("Barebox v%s Configuration"),
 		getenv("KERNELVERSION"));
 	gtk_window_set_title(GTK_WINDOW(main_wnd), title);
 
@@ -457,16 +399,10 @@ static void text_insert_help(struct menu *menu)
 {
 	GtkTextBuffer *buffer;
 	GtkTextIter start, end;
-	const char *prompt = menu_get_prompt(menu);
-	gchar *name;
-	const char *help;
-
-	help = _(menu_get_help(menu));
+	const char *prompt = _(menu_get_prompt(menu));
+	struct gstr help = str_new();
 
-	if (menu->sym && menu->sym->name)
-		name = g_strdup_printf(_(menu->sym->name));
-	else
-		name = g_strdup("");
+	menu_get_ext_help(menu, &help);
 
 	buffer = gtk_text_view_get_buffer(GTK_TEXT_VIEW(text_w));
 	gtk_text_buffer_get_bounds(buffer, &start, &end);
@@ -476,14 +412,11 @@ static void text_insert_help(struct menu *menu)
 	gtk_text_buffer_get_end_iter(buffer, &end);
 	gtk_text_buffer_insert_with_tags(buffer, &end, prompt, -1, tag1,
 					 NULL);
-	gtk_text_buffer_insert_at_cursor(buffer, " ", 1);
-	gtk_text_buffer_get_end_iter(buffer, &end);
-	gtk_text_buffer_insert_with_tags(buffer, &end, name, -1, tag1,
-					 NULL);
 	gtk_text_buffer_insert_at_cursor(buffer, "\n\n", 2);
 	gtk_text_buffer_get_end_iter(buffer, &end);
-	gtk_text_buffer_insert_with_tags(buffer, &end, help, -1, tag2,
+	gtk_text_buffer_insert_with_tags(buffer, &end, str_get(&help), -1, tag2,
 					 NULL);
+	str_free(&help);
 }
 
 
@@ -708,20 +641,29 @@ void on_show_data1_activate(GtkMenuItem * menuitem, gpointer user_data)
 
 
 void
-on_show_all_options1_activate(GtkMenuItem * menuitem, gpointer user_data)
+on_set_option_mode1_activate(GtkMenuItem *menuitem, gpointer user_data)
 {
-	show_all = GTK_CHECK_MENU_ITEM(menuitem)->active;
+	opt_mode = OPT_NORMAL;
+	gtk_tree_store_clear(tree2);
+	display_tree(&rootmenu);	/* instead of update_tree to speed-up */
+}
+
 
+void
+on_set_option_mode2_activate(GtkMenuItem *menuitem, gpointer user_data)
+{
+	opt_mode = OPT_ALL;
 	gtk_tree_store_clear(tree2);
-	display_tree(&rootmenu);	// instead of update_tree to speed-up
+	display_tree(&rootmenu);	/* instead of update_tree to speed-up */
 }
 
 
 void
-on_show_debug_info1_activate(GtkMenuItem * menuitem, gpointer user_data)
+on_set_option_mode3_activate(GtkMenuItem *menuitem, gpointer user_data)
 {
-	show_debug = GTK_CHECK_MENU_ITEM(menuitem)->active;
-	update_tree(&rootmenu, NULL);
+	opt_mode = OPT_PROMPT;
+	gtk_tree_store_clear(tree2);
+	display_tree(&rootmenu);	/* instead of update_tree to speed-up */
 }
 
 
@@ -729,7 +671,7 @@ void on_introduction1_activate(GtkMenuItem * menuitem, gpointer user_data)
 {
 	GtkWidget *dialog;
 	const gchar *intro_text = _(
-	    "Welcome to gkc, the GTK+ graphical kernel configuration tool\n"
+	    "Welcome to gkc, the GTK+ graphical barebox configuration tool\n"
 	    "for Linux.\n"
 	    "For each option, a blank box indicates the feature is disabled, a\n"
 	    "check indicates it is enabled, and a dot indicates that it is to\n"
@@ -1171,10 +1113,13 @@ static gchar **fill_row(struct menu *menu)
 	bzero(row, sizeof(row));
 
 	row[COL_OPTION] =
-	    g_strdup_printf("%s %s", menu_get_prompt(menu),
-			    sym && sym_has_value(sym) ? "(NEW)" : "");
+	    g_strdup_printf("%s %s", _(menu_get_prompt(menu)),
+			    sym && !sym_has_value(sym) ? "(NEW)" : "");
 
-	if (show_all && !menu_is_visible(menu))
+	if (opt_mode == OPT_ALL && !menu_is_visible(menu))
+		row[COL_COLOR] = g_strdup("DarkGray");
+	else if (opt_mode == OPT_PROMPT &&
+			menu_has_prompt(menu) && !menu_is_visible(menu))
 		row[COL_COLOR] = g_strdup("DarkGray");
 	else
 		row[COL_COLOR] = g_strdup("Black");
@@ -1221,7 +1166,7 @@ static gchar **fill_row(struct menu *menu)
 
 		if (def_menu)
 			row[COL_VALUE] =
-			    g_strdup(menu_get_prompt(def_menu));
+			    g_strdup(_(menu_get_prompt(def_menu)));
 	}
 	if (sym->flags & SYMBOL_CHOICEVAL)
 		row[COL_BTNRAD] = GINT_TO_POINTER(TRUE);
@@ -1397,16 +1342,20 @@ static void update_tree(struct menu *src, GtkTreeIter * dst)
 		       menu2 ? menu_get_prompt(menu2) : "nil");
 #endif
 
-		if (!menu_is_visible(child1) && !show_all) {	// remove node
+		if ((opt_mode == OPT_NORMAL && !menu_is_visible(child1)) ||
+		    (opt_mode == OPT_PROMPT && !menu_has_prompt(child1)) ||
+		    (opt_mode == OPT_ALL    && !menu_get_prompt(child1))) {
+
+			/* remove node */
 			if (gtktree_iter_find_node(dst, menu1) != NULL) {
 				memcpy(&tmp, child2, sizeof(GtkTreeIter));
 				valid = gtk_tree_model_iter_next(model2,
 								 child2);
 				gtk_tree_store_remove(tree2, &tmp);
 				if (!valid)
-					return;	// next parent
+					return;		/* next parent */
 				else
-					goto reparse;	// next child
+					goto reparse;	/* next child */
 			} else
 				continue;
 		}
@@ -1475,17 +1424,19 @@ static void display_tree(struct menu *menu)
 		    && (tree == tree2))
 			continue;
 
-		if (menu_is_visible(child) || show_all)
+		if ((opt_mode == OPT_NORMAL && menu_is_visible(child)) ||
+		    (opt_mode == OPT_PROMPT && menu_has_prompt(child)) ||
+		    (opt_mode == OPT_ALL    && menu_get_prompt(child)))
 			place_node(child, fill_row(child));
 #ifdef DEBUG
 		printf("%*c%s: ", indent, ' ', menu_get_prompt(child));
 		printf("%s", child->flags & MENU_ROOT ? "rootmenu | " : "");
-		dbg_print_ptype(ptype);
+		printf("%s", prop_get_type_name(ptype));
 		printf(" | ");
 		if (sym) {
-			dbg_print_stype(sym->type);
+			printf("%s", sym_type_name(sym->type));
 			printf(" | ");
-			dbg_print_flags(sym->flags);
+			printf("%s", dbg_sym_flags(sym->flags));
 			printf("\n");
 		} else
 			printf("\n");
diff --git a/scripts/kconfig/gconf.glade b/scripts/kconfig/gconf.glade
index 803233f..d52b0a7 100644
--- a/scripts/kconfig/gconf.glade
+++ b/scripts/kconfig/gconf.glade
@@ -190,26 +190,40 @@
 		  </child>
 
 		  <child>
-		    <widget class="GtkCheckMenuItem" id="show_all_options1">
+		    <widget class="GtkRadioMenuItem" id="set_option_mode1">
+		      <property name="visible">True</property>
+		      <property name="tooltip" translatable="yes">Show normal options</property>
+		      <property name="label" translatable="yes">Show normal options</property>
+		      <property name="use_underline">True</property>
+		      <property name="active">True</property>
+		      <signal name="activate" handler="on_set_option_mode1_activate"/>
+		    </widget>
+		  </child>
+
+		  <child>
+		    <widget class="GtkRadioMenuItem" id="set_option_mode2">
 		      <property name="visible">True</property>
 		      <property name="tooltip" translatable="yes">Show all options</property>
 		      <property name="label" translatable="yes">Show all _options</property>
 		      <property name="use_underline">True</property>
 		      <property name="active">False</property>
-		      <signal name="activate" handler="on_show_all_options1_activate"/>
+		      <property name="group">set_option_mode1</property>
+		      <signal name="activate" handler="on_set_option_mode2_activate"/>
 		    </widget>
 		  </child>
 
 		  <child>
-		    <widget class="GtkCheckMenuItem" id="show_debug_info1">
+		    <widget class="GtkRadioMenuItem" id="set_option_mode3">
 		      <property name="visible">True</property>
-		      <property name="tooltip" translatable="yes">Show masked options</property>
-		      <property name="label" translatable="yes">Show _debug info</property>
+		      <property name="tooltip" translatable="yes">Show all options with prompts</property>
+		      <property name="label" translatable="yes">Show all prompt options</property>
 		      <property name="use_underline">True</property>
 		      <property name="active">False</property>
-		      <signal name="activate" handler="on_show_debug_info1_activate"/>
+		      <property name="group">set_option_mode1</property>
+		      <signal name="activate" handler="on_set_option_mode3_activate"/>
 		    </widget>
 		  </child>
+
 		</widget>
 	      </child>
 	    </widget>
@@ -547,7 +561,7 @@
 		  <property name="headers_visible">True</property>
 		  <property name="rules_hint">False</property>
 		  <property name="reorderable">False</property>
-		  <property name="enable_search">True</property>
+		  <property name="enable_search">False</property>
 		  <signal name="cursor_changed" handler="on_treeview2_cursor_changed" last_modification_time="Sun, 12 Jan 2003 15:58:22 GMT"/>
 		  <signal name="button_press_event" handler="on_treeview1_button_press_event" last_modification_time="Sun, 12 Jan 2003 16:03:52 GMT"/>
 		  <signal name="key_press_event" handler="on_treeview2_key_press_event" last_modification_time="Sun, 12 Jan 2003 16:11:44 GMT"/>
@@ -582,7 +596,7 @@
 		      <property name="headers_visible">True</property>
 		      <property name="rules_hint">False</property>
 		      <property name="reorderable">False</property>
-		      <property name="enable_search">True</property>
+		      <property name="enable_search">False</property>
 		      <signal name="cursor_changed" handler="on_treeview2_cursor_changed" last_modification_time="Sun, 12 Jan 2003 15:57:55 GMT"/>
 		      <signal name="button_press_event" handler="on_treeview2_button_press_event" last_modification_time="Sun, 12 Jan 2003 15:57:58 GMT"/>
 		      <signal name="key_press_event" handler="on_treeview2_key_press_event" last_modification_time="Sun, 12 Jan 2003 15:58:01 GMT"/>
diff --git a/scripts/kconfig/kxgettext.c b/scripts/kconfig/kxgettext.c
index 6eb72a7..dcc3fcc 100644
--- a/scripts/kconfig/kxgettext.c
+++ b/scripts/kconfig/kxgettext.c
@@ -43,6 +43,10 @@ static char *escape(const char* text, char *bf, int len)
 			++text;
 			goto next;
 		}
+		else if (*text == '\\') {
+			*bfp++ = '\\';
+			len--;
+		}
 		*bfp++ = *text++;
 next:
 		--len;
@@ -162,7 +166,7 @@ static int message__add(const char *msg, char *option, char *file, int lineno)
 	return rc;
 }
 
-void menu_build_message_list(struct menu *menu)
+static void menu_build_message_list(struct menu *menu)
 {
 	struct menu *child;
 
@@ -207,7 +211,7 @@ static void message__print_gettext_msgid_msgstr(struct message *self)
 	       "msgstr \"\"\n", self->msg);
 }
 
-void menu__xgettext(void)
+static void menu__xgettext(void)
 {
 	struct message *m = message__list;
 
diff --git a/scripts/kconfig/lex.zconf.c_shipped b/scripts/kconfig/lex.zconf.c_shipped
index 0fdc904..ca60fb7 100644
--- a/scripts/kconfig/lex.zconf.c_shipped
+++ b/scripts/kconfig/lex.zconf.c_shipped
@@ -5,10 +5,29 @@
 
 /* A lexical scanner generated by flex */
 
+#define yy_create_buffer zconf_create_buffer
+#define yy_delete_buffer zconf_delete_buffer
+#define yy_flex_debug zconf_flex_debug
+#define yy_init_buffer zconf_init_buffer
+#define yy_flush_buffer zconf_flush_buffer
+#define yy_load_buffer_state zconf_load_buffer_state
+#define yy_switch_to_buffer zconf_switch_to_buffer
+#define yyin zconfin
+#define yyleng zconfleng
+#define yylex zconflex
+#define yylineno zconflineno
+#define yyout zconfout
+#define yyrestart zconfrestart
+#define yytext zconftext
+#define yywrap zconfwrap
+#define yyalloc zconfalloc
+#define yyrealloc zconfrealloc
+#define yyfree zconffree
+
 #define FLEX_SCANNER
 #define YY_FLEX_MAJOR_VERSION 2
 #define YY_FLEX_MINOR_VERSION 5
-#define YY_FLEX_SUBMINOR_VERSION 33
+#define YY_FLEX_SUBMINOR_VERSION 35
 #if YY_FLEX_SUBMINOR_VERSION > 0
 #define FLEX_BETA
 #endif
@@ -30,10 +49,10 @@
 
 /* C99 systems have <inttypes.h>. Non-C99 systems may or may not. */
 
-#if __STDC_VERSION__ >= 199901L
+#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
 
 /* C99 says to define __STDC_LIMIT_MACROS before including stdint.h,
- * if you want the limit (max/min) macros for int types.
+ * if you want the limit (max/min) macros for int types. 
  */
 #ifndef __STDC_LIMIT_MACROS
 #define __STDC_LIMIT_MACROS 1
@@ -53,7 +72,6 @@ typedef int flex_int32_t;
 typedef unsigned char flex_uint8_t; 
 typedef unsigned short int flex_uint16_t;
 typedef unsigned int flex_uint32_t;
-#endif /* ! C99 */
 
 /* Limits of integral types. */
 #ifndef INT8_MIN
@@ -84,6 +102,8 @@ typedef unsigned int flex_uint32_t;
 #define UINT32_MAX             (4294967295U)
 #endif
 
+#endif /* ! C99 */
+
 #endif /* ! FLEXINT_H */
 
 #ifdef __cplusplus
@@ -93,11 +113,12 @@ typedef unsigned int flex_uint32_t;
 
 #else	/* ! __cplusplus */
 
-#if __STDC__
+/* C99 requires __STDC__ to be defined as 1. */
+#if defined (__STDC__)
 
 #define YY_USE_CONST
 
-#endif	/* __STDC__ */
+#endif	/* defined (__STDC__) */
 #endif	/* ! __cplusplus */
 
 #ifdef YY_USE_CONST
@@ -139,7 +160,15 @@ typedef unsigned int flex_uint32_t;
 
 /* Size of default input buffer. */
 #ifndef YY_BUF_SIZE
+#ifdef __ia64__
+/* On IA-64, the buffer size is 16k, not 8k.
+ * Moreover, YY_BUF_SIZE is 2*YY_READ_BUF_SIZE in the general case.
+ * Ditto for the __ia64__ case accordingly.
+ */
+#define YY_BUF_SIZE 32768
+#else
 #define YY_BUF_SIZE 16384
+#endif /* __ia64__ */
 #endif
 
 /* The state buf must be large enough to hold one state per character in the main buffer.
@@ -177,14 +206,9 @@ extern FILE *zconfin, *zconfout;
 
 #define unput(c) yyunput( c, (yytext_ptr)  )
 
-/* The following is because we cannot portably get our hands on size_t
- * (without autoconf's help, which isn't available because we want
- * flex-generated scanners to compile on their own).
- */
-
 #ifndef YY_TYPEDEF_YY_SIZE_T
 #define YY_TYPEDEF_YY_SIZE_T
-typedef unsigned int yy_size_t;
+typedef size_t yy_size_t;
 #endif
 
 #ifndef YY_STRUCT_YY_BUFFER_STATE
@@ -335,7 +359,7 @@ void zconffree (void *  );
 
 /* Begin user sect3 */
 
-#define zconfwrap() 1
+#define zconfwrap(n) 1
 #define YY_SKIP_YYWRAP
 
 typedef unsigned char YY_CHAR;
@@ -748,6 +772,7 @@ int zconf_flex_debug = 0;
 #define YY_MORE_ADJ 0
 #define YY_RESTORE_YY_MORE_OFFSET
 char *zconftext;
+#define YY_NO_INPUT 1
 
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
@@ -785,7 +810,7 @@ static int last_ts, first_ts;
 static void zconf_endhelp(void);
 static void zconf_endfile(void);
 
-void new_string(void)
+static void new_string(void)
 {
 	text = malloc(START_STRSIZE);
 	text_asize = START_STRSIZE;
@@ -793,7 +818,7 @@ void new_string(void)
 	*text = 0;
 }
 
-void append_string(const char *str, int size)
+static void append_string(const char *str, int size)
 {
 	int new_size = text_size + size + 1;
 	if (new_size > text_asize) {
@@ -807,7 +832,7 @@ void append_string(const char *str, int size)
 	text[text_size] = 0;
 }
 
-void alloc_string(const char *str, int size)
+static void alloc_string(const char *str, int size)
 {
 	text = malloc(size + 1);
 	memcpy(text, str, size);
@@ -834,6 +859,35 @@ void alloc_string(const char *str, int size)
 
 static int yy_init_globals (void );
 
+/* Accessor methods to globals.
+   These are made visible to non-reentrant scanners for convenience. */
+
+int zconflex_destroy (void );
+
+int zconfget_debug (void );
+
+void zconfset_debug (int debug_flag  );
+
+YY_EXTRA_TYPE zconfget_extra (void );
+
+void zconfset_extra (YY_EXTRA_TYPE user_defined  );
+
+FILE *zconfget_in (void );
+
+void zconfset_in  (FILE * in_str  );
+
+FILE *zconfget_out (void );
+
+void zconfset_out  (FILE * out_str  );
+
+int zconfget_leng (void );
+
+char *zconfget_text (void );
+
+int zconfget_lineno (void );
+
+void zconfset_lineno (int line_number  );
+
 /* Macros after this point can all be overridden by user definitions in
  * section 1.
  */
@@ -868,7 +922,12 @@ static int input (void );
 
 /* Amount of stuff to slurp up with each read. */
 #ifndef YY_READ_BUF_SIZE
+#ifdef __ia64__
+/* On IA-64, the buffer size is 16k, not 8k */
+#define YY_READ_BUF_SIZE 16384
+#else
 #define YY_READ_BUF_SIZE 8192
+#endif /* __ia64__ */
 #endif
 
 /* Copy whatever the last rule matched to the standard output. */
@@ -876,7 +935,7 @@ static int input (void );
 /* This used to be an fputs(), but since the string might contain NUL's,
  * we now use fwrite().
  */
-#define ECHO (void) fwrite( zconftext, zconfleng, 1, zconfout )
+#define ECHO do { if (fwrite( zconftext, zconfleng, 1, zconfout )) {} } while (0)
 #endif
 
 /* Gets input and stuffs it into "buf".  number of characters read, or YY_NULL,
@@ -1256,6 +1315,11 @@ YY_RULE_SETUP
 case 32:
 YY_RULE_SETUP
 {
+		while (zconfleng) {
+			if ((zconftext[zconfleng-1] != ' ') && (zconftext[zconfleng-1] != '\t'))
+				break;
+			zconfleng--;
+		}
 		append_string(zconftext, zconfleng);
 		if (!first_ts)
 			first_ts = last_ts;
@@ -1511,7 +1575,7 @@ static int yy_get_next_buffer (void)
 
 		/* Read in more data. */
 		YY_INPUT( (&YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[number_to_move]),
-			(yy_n_chars), num_to_read );
+			(yy_n_chars), (size_t) num_to_read );
 
 		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars);
 		}
@@ -1535,6 +1599,14 @@ static int yy_get_next_buffer (void)
 	else
 		ret_val = EOB_ACT_CONTINUE_SCAN;
 
+	if ((yy_size_t) ((yy_n_chars) + number_to_move) > YY_CURRENT_BUFFER_LVALUE->yy_buf_size) {
+		/* Extend the array by 50%, plus the number we really need. */
+		yy_size_t new_size = (yy_n_chars) + number_to_move + ((yy_n_chars) >> 1);
+		YY_CURRENT_BUFFER_LVALUE->yy_ch_buf = (char *) zconfrealloc((void *) YY_CURRENT_BUFFER_LVALUE->yy_ch_buf,new_size  );
+		if ( ! YY_CURRENT_BUFFER_LVALUE->yy_ch_buf )
+			YY_FATAL_ERROR( "out of dynamic memory in yy_get_next_buffer()" );
+	}
+
 	(yy_n_chars) += number_to_move;
 	YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars)] = YY_END_OF_BUFFER_CHAR;
 	YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars) + 1] = YY_END_OF_BUFFER_CHAR;
@@ -1921,7 +1993,9 @@ static void zconfensure_buffer_stack (void)
 		(yy_buffer_stack) = (struct yy_buffer_state**)zconfalloc
 								(num_to_alloc * sizeof(struct yy_buffer_state*)
 								);
-		
+		if ( ! (yy_buffer_stack) )
+			YY_FATAL_ERROR( "out of dynamic memory in zconfensure_buffer_stack()" );
+								  
 		memset((yy_buffer_stack), 0, num_to_alloc * sizeof(struct yy_buffer_state*));
 				
 		(yy_buffer_stack_max) = num_to_alloc;
@@ -1939,6 +2013,8 @@ static void zconfensure_buffer_stack (void)
 								((yy_buffer_stack),
 								num_to_alloc * sizeof(struct yy_buffer_state*)
 								);
+		if ( ! (yy_buffer_stack) )
+			YY_FATAL_ERROR( "out of dynamic memory in zconfensure_buffer_stack()" );
 
 		/* zero only the new slots.*/
 		memset((yy_buffer_stack) + (yy_buffer_stack_max), 0, grow_size * sizeof(struct yy_buffer_state*));
@@ -1997,8 +2073,8 @@ YY_BUFFER_STATE zconf_scan_string (yyconst char * yystr )
 
 /** Setup the input buffer state to scan the given bytes. The next call to zconflex() will
  * scan from a @e copy of @a bytes.
- * @param bytes the byte buffer to scan
- * @param len the number of bytes in the buffer pointed to by @a bytes.
+ * @param yybytes the byte buffer to scan
+ * @param _yybytes_len the number of bytes in the buffer pointed to by @a bytes.
  * 
  * @return the newly allocated buffer state object.
  */
@@ -2255,7 +2331,7 @@ static void zconf_endhelp(void)
  * ./name
  * $(srctree)/name
  * The latter is used when srctree is separate from objtree
- * when compiling the kernel.
+ * when compiling the barebox.
  * Return NULL if file is not found.
  */
 FILE *zconf_fopen(const char *name)
@@ -2307,11 +2383,14 @@ void zconf_nextfile(const char *name)
 	current_buf = buf;
 
 	if (file->flags & FILE_BUSY) {
-		printf("recursive scan (%s)?\n", name);
+		printf("%s:%d: do not source '%s' from itself\n",
+		       zconf_curname(), zconf_lineno(), name);
 		exit(1);
 	}
 	if (file->flags & FILE_SCANNED) {
-		printf("file %s already scanned?\n", name);
+		printf("%s:%d: file '%s' is already sourced from '%s'\n",
+		       zconf_curname(), zconf_lineno(), name,
+		       file->parent->name);
 		exit(1);
 	}
 	file->flags |= FILE_BUSY;
diff --git a/scripts/kconfig/lkc.h b/scripts/kconfig/lkc.h
index 8a07ee4..76db065 100644
--- a/scripts/kconfig/lkc.h
+++ b/scripts/kconfig/lkc.h
@@ -11,9 +11,9 @@
 #ifndef KBUILD_NO_NLS
 # include <libintl.h>
 #else
-# define gettext(Msgid) ((const char *) (Msgid))
-# define textdomain(Domainname) ((const char *) (Domainname))
-# define bindtextdomain(Domainname, Dirname) ((const char *) (Dirname))
+static inline const char *gettext(const char *txt) { return txt; }
+static inline void textdomain(const char *domainname) {}
+static inline void bindtextdomain(const char *name, const char *dir) {}
 #endif
 
 #ifdef __cplusplus
@@ -42,8 +42,17 @@ extern "C" {
 #define TF_PARAM	0x0002
 #define TF_OPTION	0x0004
 
+enum conf_def_mode {
+	def_default,
+	def_yes,
+	def_mod,
+	def_no,
+	def_random
+};
+
 #define T_OPT_MODULES		1
 #define T_OPT_DEFCONFIG_LIST	2
+#define T_OPT_ENV		3
 
 struct kconf_id {
 	int name;
@@ -65,15 +74,18 @@ char *zconf_curname(void);
 
 /* confdata.c */
 const char *conf_get_configname(void);
+const char *conf_get_autoconfig_name(void);
 char *conf_get_default_confname(void);
 void sym_set_change_count(int count);
 void sym_add_change_count(int count);
+void conf_set_all_new_symbols(enum conf_def_mode mode);
 
 /* kconfig_load.c */
 void kconfig_load(void);
 
 /* menu.c */
-void menu_init(void);
+void _menu_init(void);
+void menu_warn(struct menu *menu, const char *fmt, ...);
 struct menu *menu_add_menu(void);
 void menu_end_menu(void);
 void menu_add_entry(struct symbol *sym);
@@ -94,6 +106,11 @@ int file_write_dep(const char *name);
 struct gstr {
 	size_t len;
 	char  *s;
+	/*
+	* when max_width is not zero long lines in string s (if any) get
+	* wrapped not to exceed the max_width value
+	*/
+	int max_width;
 };
 struct gstr str_new(void);
 struct gstr str_assign(const char *s);
@@ -103,13 +120,18 @@ void str_printf(struct gstr *gs, const char *fmt, ...);
 const char *str_get(struct gstr *gs);
 
 /* symbol.c */
+extern struct expr *sym_env_list;
+
 void sym_init(void);
 void sym_clear_all_valid(void);
 void sym_set_all_changed(void);
 void sym_set_changed(struct symbol *sym);
+struct symbol *sym_choice_default(struct symbol *sym);
+const char *sym_get_string_default(struct symbol *sym);
 struct symbol *sym_check_deps(struct symbol *sym);
 struct property *prop_alloc(enum prop_type type, struct symbol *sym);
 struct symbol *prop_get_symbol(struct property *prop);
+struct property *sym_get_env_prop(struct symbol *sym);
 
 static inline tristate sym_get_tristate_value(struct symbol *sym)
 {
diff --git a/scripts/kconfig/lkc_proto.h b/scripts/kconfig/lkc_proto.h
index 4d09f6d..9a948c9 100644
--- a/scripts/kconfig/lkc_proto.h
+++ b/scripts/kconfig/lkc_proto.h
@@ -3,6 +3,7 @@
 P(conf_parse,void,(const char *name));
 P(conf_read,int,(const char *name));
 P(conf_read_simple,int,(const char *name, int));
+P(conf_write_defconfig,int,(const char *name));
 P(conf_write,int,(const char *name));
 P(conf_write_autoconf,int,(void));
 P(conf_get_changed,bool,(void));
@@ -11,17 +12,21 @@ P(conf_set_changed_callback, void,(void (*fn)(void)));
 /* menu.c */
 P(rootmenu,struct menu,);
 
-P(menu_is_visible,bool,(struct menu *menu));
+P(menu_is_visible, bool, (struct menu *menu));
+P(menu_has_prompt, bool, (struct menu *menu));
 P(menu_get_prompt,const char *,(struct menu *menu));
 P(menu_get_root_menu,struct menu *,(struct menu *menu));
 P(menu_get_parent_menu,struct menu *,(struct menu *menu));
 P(menu_has_help,bool,(struct menu *menu));
 P(menu_get_help,const char *,(struct menu *menu));
+P(get_symbol_str, void, (struct gstr *r, struct symbol *sym));
+P(get_relations_str, struct gstr, (struct symbol **sym_arr));
+P(menu_get_ext_help,void,(struct menu *menu, struct gstr *help));
 
 /* symbol.c */
 P(symbol_hash,struct symbol *,[SYMBOL_HASHSIZE]);
 
-P(sym_lookup,struct symbol *,(const char *name, int isconst));
+P(sym_lookup,struct symbol *,(const char *name, int flags));
 P(sym_find,struct symbol *,(const char *name));
 P(sym_re_search,struct symbol **,(const char *pattern));
 P(sym_type_name,const char *,(enum symbol_type type));
diff --git a/scripts/kconfig/lxdialog/BIG.FAT.WARNING b/scripts/kconfig/lxdialog/BIG.FAT.WARNING
index a8999d8..d8601eb 100644
--- a/scripts/kconfig/lxdialog/BIG.FAT.WARNING
+++ b/scripts/kconfig/lxdialog/BIG.FAT.WARNING
@@ -1,4 +1,4 @@
 This is NOT the official version of dialog.  This version has been
 significantly modified from the original.  It is for use by the Linux
-kernel configuration script.  Please do not bother Savio Lam with 
+barebox configuration script.  Please do not bother Savio Lam with 
 questions about this program.
diff --git a/scripts/kconfig/lxdialog/check-lxdialog.sh b/scripts/kconfig/lxdialog/check-lxdialog.sh
index 9681476..fcef0f5 100644
--- a/scripts/kconfig/lxdialog/check-lxdialog.sh
+++ b/scripts/kconfig/lxdialog/check-lxdialog.sh
@@ -36,19 +36,23 @@ trap "rm -f $tmp" 0 1 2 3 15
 
 # Check if we can link to ncurses
 check() {
-	echo "main() {}" | $cc -xc - -o $tmp 2> /dev/null
+        $cc -xc - -o $tmp 2>/dev/null <<'EOF'
+#include CURSES_LOC
+main() {}
+EOF
 	if [ $? != 0 ]; then
-		echo " *** Unable to find the ncurses libraries."          1>&2
-		echo " *** make menuconfig require the ncurses libraries"  1>&2
-		echo " *** "                                               1>&2
-		echo " *** Install ncurses (ncurses-devel) and try again"  1>&2
-		echo " *** "                                               1>&2
-		exit 1
+	    echo " *** Unable to find the ncurses libraries or the"       1>&2
+	    echo " *** required header files."                            1>&2
+	    echo " *** 'make menuconfig' requires the ncurses libraries." 1>&2
+	    echo " *** "                                                  1>&2
+	    echo " *** Install ncurses (ncurses-devel) and try again."    1>&2
+	    echo " *** "                                                  1>&2
+	    exit 1
 	fi
 }
 
 usage() {
-	printf "Usage: $0 [-check compiler options|-header|-library]\n"
+	printf "Usage: $0 [-check compiler options|-ccflags|-ldflags compiler options]\n"
 }
 
 if [ $# -eq 0 ]; then
diff --git a/scripts/kconfig/lxdialog/checklist.c b/scripts/kconfig/lxdialog/checklist.c
index cf69708..a2eb80f 100644
--- a/scripts/kconfig/lxdialog/checklist.c
+++ b/scripts/kconfig/lxdialog/checklist.c
@@ -31,6 +31,10 @@ static int list_width, check_x, item_x;
 static void print_item(WINDOW * win, int choice, int selected)
 {
 	int i;
+	char *list_item = malloc(list_width + 1);
+
+	strncpy(list_item, item_str(), list_width - item_x);
+	list_item[list_width - item_x] = '\0';
 
 	/* Clear 'residue' of last item */
 	wattrset(win, dlg.menubox.atr);
@@ -41,16 +45,18 @@ static void print_item(WINDOW * win, int choice, int selected)
 	wmove(win, choice, check_x);
 	wattrset(win, selected ? dlg.check_selected.atr
 		 : dlg.check.atr);
-	wprintw(win, "(%c)", item_is_tag('X') ? 'X' : ' ');
+	if (!item_is_tag(':'))
+		wprintw(win, "(%c)", item_is_tag('X') ? 'X' : ' ');
 
 	wattrset(win, selected ? dlg.tag_selected.atr : dlg.tag.atr);
-	mvwaddch(win, choice, item_x, item_str()[0]);
+	mvwaddch(win, choice, item_x, list_item[0]);
 	wattrset(win, selected ? dlg.item_selected.atr : dlg.item.atr);
-	waddstr(win, (char *)item_str() + 1);
+	waddstr(win, list_item + 1);
 	if (selected) {
 		wmove(win, choice, check_x + 1);
 		wrefresh(win);
 	}
+	free(list_item);
 }
 
 /*
@@ -97,8 +103,8 @@ static void print_buttons(WINDOW * dialog, int height, int width, int selected)
 	int x = width / 2 - 11;
 	int y = height - 2;
 
-	print_button(dialog, "Select", y, x, selected == 0);
-	print_button(dialog, " Help ", y, x + 14, selected == 1);
+	print_button(dialog, gettext("Select"), y, x, selected == 0);
+	print_button(dialog, gettext(" Help "), y, x + 14, selected == 1);
 
 	wmove(dialog, y, x + 1 + 14 * selected);
 	wrefresh(dialog);
@@ -174,6 +180,7 @@ do_resize:
 	check_x = 0;
 	item_foreach()
 		check_x = MAX(check_x, strlen(item_str()) + 4);
+	check_x = MIN(check_x, list_width);
 
 	check_x = (list_width - check_x) / 2;
 	item_x = check_x + 4;
diff --git a/scripts/kconfig/lxdialog/dialog.h b/scripts/kconfig/lxdialog/dialog.h
index 7e17eba..b5211fc 100644
--- a/scripts/kconfig/lxdialog/dialog.h
+++ b/scripts/kconfig/lxdialog/dialog.h
@@ -26,6 +26,12 @@
 #include <string.h>
 #include <stdbool.h>
 
+#ifndef KBUILD_NO_NLS
+# include <libintl.h>
+#else
+# define gettext(Msgid) ((const char *) (Msgid))
+#endif
+
 #ifdef __sun__
 #define CURS_MACROS
 #endif
@@ -187,10 +193,9 @@ int item_is_tag(char tag);
 int on_key_esc(WINDOW *win);
 int on_key_resize(void);
 
-void init_dialog(const char *backtitle);
+int init_dialog(const char *backtitle);
 void set_dialog_backtitle(const char *backtitle);
-void reset_dialog(void);
-void end_dialog(void);
+void end_dialog(int x, int y);
 void attr_clear(WINDOW * win, int height, int width, chtype attr);
 void dialog_clear(void);
 void print_autowrap(WINDOW * win, const char *prompt, int width, int y, int x);
diff --git a/scripts/kconfig/lxdialog/inputbox.c b/scripts/kconfig/lxdialog/inputbox.c
index 05e7206..dd8e587 100644
--- a/scripts/kconfig/lxdialog/inputbox.c
+++ b/scripts/kconfig/lxdialog/inputbox.c
@@ -31,8 +31,8 @@ static void print_buttons(WINDOW * dialog, int height, int width, int selected)
 	int x = width / 2 - 11;
 	int y = height - 2;
 
-	print_button(dialog, "  Ok  ", y, x, selected == 0);
-	print_button(dialog, " Help ", y, x + 14, selected == 1);
+	print_button(dialog, gettext("  Ok  "), y, x, selected == 0);
+	print_button(dialog, gettext(" Help "), y, x + 14, selected == 1);
 
 	wmove(dialog, y, x + 1 + 14 * selected);
 	wrefresh(dialog);
@@ -89,7 +89,7 @@ do_resize:
 	box_y = y + 2;
 	box_x = (width - box_width) / 2;
 	draw_box(dialog, y + 1, box_x - 1, 3, box_width + 2,
-		 dlg.border.atr, dlg.dialog.atr);
+		 dlg.dialog.atr, dlg.border.atr);
 
 	print_buttons(dialog, height, width, 0);
 
@@ -180,7 +180,7 @@ do_resize:
 		case KEY_LEFT:
 			switch (button) {
 			case -1:
-				button = 1;	/* Indicates "Cancel" button is selected */
+				button = 1;	/* Indicates "Help" button is selected */
 				print_buttons(dialog, height, width, 1);
 				break;
 			case 0:
@@ -204,7 +204,7 @@ do_resize:
 				print_buttons(dialog, height, width, 0);
 				break;
 			case 0:
-				button = 1;	/* Indicates "Cancel" button is selected */
+				button = 1;	/* Indicates "Help" button is selected */
 				print_buttons(dialog, height, width, 1);
 				break;
 			case 1:
diff --git a/scripts/kconfig/lxdialog/menubox.c b/scripts/kconfig/lxdialog/menubox.c
index 0d83159..1d60473 100644
--- a/scripts/kconfig/lxdialog/menubox.c
+++ b/scripts/kconfig/lxdialog/menubox.c
@@ -157,9 +157,9 @@ static void print_buttons(WINDOW * win, int height, int width, int selected)
 	int x = width / 2 - 16;
 	int y = height - 2;
 
-	print_button(win, "Select", y, x, selected == 0);
-	print_button(win, " Exit ", y, x + 12, selected == 1);
-	print_button(win, " Help ", y, x + 24, selected == 2);
+	print_button(win, gettext("Select"), y, x, selected == 0);
+	print_button(win, gettext(" Exit "), y, x + 12, selected == 1);
+	print_button(win, gettext(" Help "), y, x + 24, selected == 2);
 
 	wmove(win, y, x + 1 + 12 * selected);
 	wrefresh(win);
@@ -383,6 +383,10 @@ do_resize:
 		case 'n':
 		case 'm':
 		case '/':
+		case 'h':
+		case '?':
+		case 'z':
+		case '\n':
 			/* save scroll info */
 			*s_scroll = scroll;
 			delwin(menu);
@@ -390,8 +394,10 @@ do_resize:
 			item_set(scroll + choice);
 			item_set_selected(1);
 			switch (key) {
+			case 'h':
+			case '?':
+				return 2;
 			case 's':
-				return 3;
 			case 'y':
 				return 3;
 			case 'n':
@@ -402,18 +408,12 @@ do_resize:
 				return 6;
 			case '/':
 				return 7;
+			case 'z':
+				return 8;
+			case '\n':
+				return button;
 			}
 			return 0;
-		case 'h':
-		case '?':
-			button = 2;
-		case '\n':
-			*s_scroll = scroll;
-			delwin(menu);
-			delwin(dialog);
-			item_set(scroll + choice);
-			item_set_selected(1);
-			return button;
 		case 'e':
 		case 'x':
 			key = KEY_ESC;
diff --git a/scripts/kconfig/lxdialog/textbox.c b/scripts/kconfig/lxdialog/textbox.c
index fabfc1a..c704712 100644
--- a/scripts/kconfig/lxdialog/textbox.c
+++ b/scripts/kconfig/lxdialog/textbox.c
@@ -114,7 +114,7 @@ do_resize:
 
 	print_title(dialog, title, width);
 
-	print_button(dialog, " Exit ", height - 2, width / 2 - 4, TRUE);
+	print_button(dialog, gettext(" Exit "), height - 2, width / 2 - 4, TRUE);
 	wnoutrefresh(dialog);
 	getyx(dialog, cur_y, cur_x);	/* Save cursor position */
 
diff --git a/scripts/kconfig/lxdialog/util.c b/scripts/kconfig/lxdialog/util.c
index a1bddef..f2375ad 100644
--- a/scripts/kconfig/lxdialog/util.c
+++ b/scripts/kconfig/lxdialog/util.c
@@ -19,6 +19,8 @@
  *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
+#include <stdarg.h>
+
 #include "dialog.h"
 
 struct dialog_info dlg;
@@ -266,31 +268,41 @@ void dialog_clear(void)
 /*
  * Do some initialization for dialog
  */
-void init_dialog(const char *backtitle)
+int init_dialog(const char *backtitle)
 {
-	dlg.backtitle = backtitle;
-	color_setup(getenv("MENUCONFIG_COLOR"));
-}
+	int height, width;
+
+	initscr();		/* Init curses */
+	getmaxyx(stdscr, height, width);
+	if (height < 19 || width < 80) {
+		endwin();
+		return -ERRDISPLAYTOOSMALL;
+	}
 
-void set_dialog_backtitle(const char *backtitle)
-{
 	dlg.backtitle = backtitle;
-}
+	color_setup(getenv("MENUCONFIG_COLOR"));
 
-void reset_dialog(void)
-{
-	initscr();		/* Init curses */
 	keypad(stdscr, TRUE);
 	cbreak();
 	noecho();
 	dialog_clear();
+
+	return 0;
+}
+
+void set_dialog_backtitle(const char *backtitle)
+{
+	dlg.backtitle = backtitle;
 }
 
 /*
  * End using dialog functions.
  */
-void end_dialog(void)
+void end_dialog(int x, int y)
 {
+	/* move cursor back to original position */
+	move(y, x);
+	refresh();
 	endwin();
 }
 
diff --git a/scripts/kconfig/lxdialog/yesno.c b/scripts/kconfig/lxdialog/yesno.c
index ee0a04e..4e6e809 100644
--- a/scripts/kconfig/lxdialog/yesno.c
+++ b/scripts/kconfig/lxdialog/yesno.c
@@ -29,8 +29,8 @@ static void print_buttons(WINDOW * dialog, int height, int width, int selected)
 	int x = width / 2 - 10;
 	int y = height - 2;
 
-	print_button(dialog, " Yes ", y, x, selected == 0);
-	print_button(dialog, "  No  ", y, x + 13, selected == 1);
+	print_button(dialog, gettext(" Yes "), y, x, selected == 0);
+	print_button(dialog, gettext("  No  "), y, x + 13, selected == 1);
 
 	wmove(dialog, y, x + 1 + 13 * selected);
 	wrefresh(dialog);
diff --git a/scripts/kconfig/mconf.c b/scripts/kconfig/mconf.c
index 4f99c38..f658904 100644
--- a/scripts/kconfig/mconf.c
+++ b/scripts/kconfig/mconf.c
@@ -8,17 +8,13 @@
  * i18n, 2005, Arnaldo Carvalho de Melo <acme@conectiva.com.br>
  */
 
-#include <sys/ioctl.h>
-#include <sys/wait.h>
 #include <ctype.h>
 #include <errno.h>
 #include <fcntl.h>
 #include <limits.h>
-#include <signal.h>
 #include <stdarg.h>
 #include <stdlib.h>
 #include <string.h>
-#include <termios.h>
 #include <unistd.h>
 #include <locale.h>
 
@@ -29,15 +25,19 @@
 static const char mconf_readme[] = N_(
 "Overview\n"
 "--------\n"
-"Some barebox features may be built directly into barebox.\n"
+"Some barebox features may be built directly into the barebox.\n"
 "Some may be made into loadable runtime modules.  Some features\n"
 "may be completely removed altogether.  There are also certain\n"
 "barebox parameters which are not really features, but must be\n"
 "entered in as decimal or hexadecimal numbers or possibly text.\n"
 "\n"
-"Menu items beginning with [*], <M> or [ ] represent features\n"
-"configured to be built in, modularized or removed respectively.\n"
-"Pointed brackets <> represent module capable features.\n"
+"Menu items beginning with following braces represent features that\n"
+"  [ ] can be built in or removed\n"
+"  < > can be built in, modularized or removed\n"
+"  { } can be built in or modularized (selected by other feature)\n"
+"  - - are selected by other feature,\n"
+"while *, M or whitespace inside braces means to build in, build as\n"
+"a module or to exclude the feature respectively.\n"
 "\n"
 "To change any of these features, highlight it with the cursor\n"
 "keys and press <Y> to build it in, <M> to make it a module or\n"
@@ -67,13 +67,15 @@ static const char mconf_readme[] = N_(
 "             there is a delayed response which you may find annoying.\n"
 "\n"
 "   Also, the <TAB> and cursor keys will cycle between <Select>,\n"
-"   <Exit> and <Help>\n"
+"   <Exit> and <Help>.\n"
 "\n"
 "o  To get help with an item, use the cursor keys to highlight <Help>\n"
-"   and Press <ENTER>.\n"
+"   and press <ENTER>.\n"
 "\n"
 "   Shortcut: Press <H> or <?>.\n"
 "\n"
+"o  To toggle the display of hidden options, press <Z>.\n"
+"\n"
 "\n"
 "Radiolists  (Choice lists)\n"
 "-----------\n"
@@ -199,8 +201,6 @@ inputbox_instructions_string[] = N_(
 setmod_text[] = N_(
 	"This feature depends on another which has been configured as a module.\n"
 	"As a result, this feature will be built as a module."),
-nohelp_text[] = N_(
-	"There is no help available for this barebox option.\n"),
 load_config_text[] = N_(
 	"Enter the name of the configuration file you wish to load.  "
 	"Accept the name shown to restore the configuration you "
@@ -215,7 +215,7 @@ load_config_help[] = N_(
 	"to modify that configuration.\n"
 	"\n"
 	"If you are uncertain, then you have probably never used alternate\n"
-	"configuration files.  You should therefor leave this blank to abort.\n"),
+	"configuration files. You should therefore leave this blank to abort.\n"),
 save_config_text[] = N_(
 	"Enter a filename to which this configuration should be saved "
 	"as an alternate.  Leave blank to abort."),
@@ -271,11 +271,10 @@ search_help[] = N_(
 	"\n");
 
 static int indent;
-static struct termios ios_org;
-static int rows = 0, cols = 0;
 static struct menu *current_menu;
 static int child_count;
 static int single_menu_mode;
+static int show_all_options;
 
 static void conf(struct menu *menu);
 static void conf_choice(struct menu *menu);
@@ -286,113 +285,6 @@ static void show_textbox(const char *title, const char *text, int r, int c);
 static void show_helptext(const char *title, const char *text);
 static void show_help(struct menu *menu);
 
-static void init_wsize(void)
-{
-	struct winsize ws;
-	char *env;
-
-	if (!ioctl(STDIN_FILENO, TIOCGWINSZ, &ws)) {
-		rows = ws.ws_row;
-		cols = ws.ws_col;
-	}
-
-	if (!rows) {
-		env = getenv("LINES");
-		if (env)
-			rows = atoi(env);
-		if (!rows)
-			rows = 24;
-	}
-	if (!cols) {
-		env = getenv("COLUMNS");
-		if (env)
-			cols = atoi(env);
-		if (!cols)
-			cols = 80;
-	}
-
-	if (rows < 19 || cols < 80) {
-		fprintf(stderr, N_("Your display is too small to run Menuconfig!\n"));
-		fprintf(stderr, N_("It must be at least 19 lines by 80 columns.\n"));
-		exit(1);
-	}
-
-	rows -= 4;
-	cols -= 5;
-}
-
-static void get_prompt_str(struct gstr *r, struct property *prop)
-{
-	int i, j;
-	struct menu *submenu[8], *menu;
-
-	str_printf(r, "Prompt: %s\n", prop->text);
-	str_printf(r, "  Defined at %s:%d\n", prop->menu->file->name,
-		prop->menu->lineno);
-	if (!expr_is_yes(prop->visible.expr)) {
-		str_append(r, "  Depends on: ");
-		expr_gstr_print(prop->visible.expr, r);
-		str_append(r, "\n");
-	}
-	menu = prop->menu->parent;
-	for (i = 0; menu != &rootmenu && i < 8; menu = menu->parent)
-		submenu[i++] = menu;
-	if (i > 0) {
-		str_printf(r, "  Location:\n");
-		for (j = 4; --i >= 0; j += 2) {
-			menu = submenu[i];
-			str_printf(r, "%*c-> %s", j, ' ', menu_get_prompt(menu));
-			if (menu->sym) {
-				str_printf(r, " (%s [=%s])", menu->sym->name ?
-					menu->sym->name : "<choice>",
-					sym_get_string_value(menu->sym));
-			}
-			str_append(r, "\n");
-		}
-	}
-}
-
-static void get_symbol_str(struct gstr *r, struct symbol *sym)
-{
-	bool hit;
-	struct property *prop;
-
-	str_printf(r, "Symbol: %s [=%s]\n", sym->name,
-	                               sym_get_string_value(sym));
-	for_all_prompts(sym, prop)
-		get_prompt_str(r, prop);
-	hit = false;
-	for_all_properties(sym, prop, P_SELECT) {
-		if (!hit) {
-			str_append(r, "  Selects: ");
-			hit = true;
-		} else
-			str_printf(r, " && ");
-		expr_gstr_print(prop->expr, r);
-	}
-	if (hit)
-		str_append(r, "\n");
-	if (sym->rev_dep.expr) {
-		str_append(r, "  Selected by: ");
-		expr_gstr_print(sym->rev_dep.expr, r);
-		str_append(r, "\n");
-	}
-	str_append(r, "\n\n");
-}
-
-static struct gstr get_relations_str(struct symbol **sym_arr)
-{
-	struct symbol *sym;
-	struct gstr res = str_new();
-	int i;
-
-	for (i = 0; sym_arr && (sym = sym_arr[i]); i++)
-		get_symbol_str(&res, sym);
-	if (!i)
-		str_append(&res, "No matches found.\n");
-	return res;
-}
-
 static char filename[PATH_MAX+1];
 static void set_config_filename(const char *config_filename)
 {
@@ -403,7 +295,7 @@ static void set_config_filename(const char *config_filename)
 	sym = sym_lookup("KERNELVERSION", 0);
 	sym_calc_value(sym);
 	size = snprintf(menu_backtitle, sizeof(menu_backtitle),
-	                _("%s - barebox v%s Configuration"),
+	                _("%s - Barebox v%s Configuration"),
 		        config_filename, sym_get_string_value(sym));
 	if (size >= sizeof(menu_backtitle))
 		menu_backtitle[sizeof(menu_backtitle)-1] = '\0';
@@ -457,8 +349,16 @@ static void build_conf(struct menu *menu)
 	int type, tmp, doint = 2;
 	tristate val;
 	char ch;
-
-	if (!menu_is_visible(menu))
+	bool visible;
+
+	/*
+	 * note: menu_is_visible() has side effect that it will
+	 * recalc the value of the symbol.
+	 */
+	visible = menu_is_visible(menu);
+	if (show_all_options && !menu_has_prompt(menu))
+		return;
+	else if (!show_all_options && !visible)
 		return;
 
 	sym = menu->sym;
@@ -469,6 +369,7 @@ static void build_conf(struct menu *menu)
 			switch (prop->type) {
 			case P_MENU:
 				child_count++;
+				prompt = _(prompt);
 				if (single_menu_mode) {
 					item_make("%s%*c%s",
 						  menu->data ? "-->" : "++>",
@@ -481,10 +382,18 @@ static void build_conf(struct menu *menu)
 				if (single_menu_mode && menu->data)
 					goto conf_childs;
 				return;
+			case P_COMMENT:
+				if (prompt) {
+					child_count++;
+					item_make("   %*c*** %s ***", indent + 1, ' ', _(prompt));
+					item_set_tag(':');
+					item_set_data(menu);
+				}
+				break;
 			default:
 				if (prompt) {
 					child_count++;
-					item_make("---%*c%s", indent + 1, ' ', prompt);
+					item_make("---%*c%s", indent + 1, ' ', _(prompt));
 					item_set_tag(':');
 					item_set_data(menu);
 				}
@@ -528,10 +437,10 @@ static void build_conf(struct menu *menu)
 			item_set_data(menu);
 		}
 
-		item_add_str("%*c%s", indent + 1, ' ', menu_get_prompt(menu));
+		item_add_str("%*c%s", indent + 1, ' ', _(menu_get_prompt(menu)));
 		if (val == yes) {
 			if (def_menu) {
-				item_add_str(" (%s)", menu_get_prompt(def_menu));
+				item_add_str(" (%s)", _(menu_get_prompt(def_menu)));
 				item_add_str("  --->");
 				if (def_menu->list) {
 					indent += 2;
@@ -543,7 +452,7 @@ static void build_conf(struct menu *menu)
 		}
 	} else {
 		if (menu == current_menu) {
-			item_make("---%*c%s", indent + 1, ' ', menu_get_prompt(menu));
+			item_make("---%*c%s", indent + 1, ' ', _(menu_get_prompt(menu)));
 			item_set_tag(':');
 			item_set_data(menu);
 			goto conf_childs;
@@ -560,7 +469,7 @@ static void build_conf(struct menu *menu)
 				if (sym_is_changable(sym))
 					item_make("[%c]", val == no ? ' ' : '*');
 				else
-					item_make("---");
+					item_make("-%c-", val == no ? ' ' : '*');
 				item_set_tag('t');
 				item_set_data(menu);
 				break;
@@ -570,10 +479,13 @@ static void build_conf(struct menu *menu)
 				case mod: ch = 'M'; break;
 				default:  ch = ' '; break;
 				}
-				if (sym_is_changable(sym))
-					item_make("<%c>", ch);
-				else
-					item_make("---");
+				if (sym_is_changable(sym)) {
+					if (sym->rev_dep.tri == mod)
+						item_make("{%c}", ch);
+					else
+						item_make("<%c>", ch);
+				} else
+					item_make("-%c-", ch);
 				item_set_tag('t');
 				item_set_data(menu);
 				break;
@@ -583,17 +495,17 @@ static void build_conf(struct menu *menu)
 				tmp = indent - tmp + 4;
 				if (tmp < 0)
 					tmp = 0;
-				item_add_str("%*c%s%s", tmp, ' ', menu_get_prompt(menu),
+				item_add_str("%*c%s%s", tmp, ' ', _(menu_get_prompt(menu)),
 					     (sym_has_value(sym) || !sym_is_changable(sym)) ?
-					     "" : " (NEW)");
+					     "" : _(" (NEW)"));
 				item_set_tag('s');
 				item_set_data(menu);
 				goto conf_childs;
 			}
 		}
-		item_add_str("%*c%s%s", indent + 1, ' ', menu_get_prompt(menu),
+		item_add_str("%*c%s%s", indent + 1, ' ', _(menu_get_prompt(menu)),
 			  (sym_has_value(sym) || !sym_is_changable(sym)) ?
-			  "" : " (NEW)");
+			  "" : _(" (NEW)"));
 		if (menu->prompt->type == P_MENU) {
 			item_add_str("  --->");
 			return;
@@ -631,7 +543,7 @@ static void conf(struct menu *menu)
 			item_set_tag('S');
 		}
 		dialog_clear();
-		res = dialog_menu(prompt ? prompt : _("Main Menu"),
+		res = dialog_menu(prompt ? _(prompt) : _("Main Menu"),
 				  _(menu_instructions),
 				  active_menu, &s_scroll);
 		if (res == 1 || res == KEY_ESC || res == -ERRDISPLAYTOOSMALL)
@@ -678,7 +590,7 @@ static void conf(struct menu *menu)
 			if (sym)
 				show_help(submenu);
 			else
-				show_helptext("README", _(mconf_readme));
+				show_helptext(_("README"), _(mconf_readme));
 			break;
 		case 3:
 			if (item_is_tag('t')) {
@@ -705,6 +617,9 @@ static void conf(struct menu *menu)
 		case 7:
 			search_conf();
 			break;
+		case 8:
+			show_all_options = !show_all_options;
+			break;
 		}
 	}
 }
@@ -723,26 +638,17 @@ static void show_helptext(const char *title, const char *text)
 static void show_help(struct menu *menu)
 {
 	struct gstr help = str_new();
-	struct symbol *sym = menu->sym;
-
-	if (menu_has_help(menu))
-	{
-		if (sym->name) {
-			str_printf(&help, "CONFIG_%s:\n\n", sym->name);
-			str_append(&help, _(menu_get_help(menu)));
-			str_append(&help, "\n");
-		}
-	} else {
-		str_append(&help, nohelp_text);
-	}
-	get_symbol_str(&help, sym);
-	show_helptext(menu_get_prompt(menu), str_get(&help));
+
+	help.max_width = getmaxx(stdscr) - 10;
+	menu_get_ext_help(menu, &help);
+
+	show_helptext(_(menu_get_prompt(menu)), str_get(&help));
 	str_free(&help);
 }
 
 static void conf_choice(struct menu *menu)
 {
-	const char *prompt = menu_get_prompt(menu);
+	const char *prompt = _(menu_get_prompt(menu));
 	struct menu *child;
 	struct symbol *active;
 
@@ -756,7 +662,12 @@ static void conf_choice(struct menu *menu)
 		for (child = menu->list; child; child = child->next) {
 			if (!menu_is_visible(child))
 				continue;
-			item_make("%s", menu_get_prompt(child));
+			if (child->sym)
+				item_make("%s", _(menu_get_prompt(child)));
+			else {
+				item_make("*** %s ***", _(menu_get_prompt(child)));
+				item_set_tag(':');
+			}
 			item_set_data(child);
 			if (child->sym == active)
 				item_set_selected(1);
@@ -764,7 +675,7 @@ static void conf_choice(struct menu *menu)
 				item_set_tag('X');
 		}
 		dialog_clear();
-		res = dialog_checklist(prompt ? prompt : _("Main Menu"),
+		res = dialog_checklist(prompt ? _(prompt) : _("Main Menu"),
 					_(radiolist_instructions),
 					 15, 70, 6);
 		selected = item_activate_selected();
@@ -772,6 +683,9 @@ static void conf_choice(struct menu *menu)
 		case 0:
 			if (selected) {
 				child = item_data();
+				if (!child->sym)
+					break;
+
 				sym_set_tristate_value(child->sym, yes);
 			}
 			return;
@@ -797,7 +711,7 @@ static void conf_string(struct menu *menu)
 
 	while (1) {
 		int res;
-		char *heading;
+		const char *heading;
 
 		switch (sym_get_type(menu->sym)) {
 		case S_INT:
@@ -810,10 +724,10 @@ static void conf_string(struct menu *menu)
 			heading = _(inputbox_instructions_string);
 			break;
 		default:
-			heading = "Internal mconf error!";
+			heading = _("Internal mconf error!");
 		}
 		dialog_clear();
-		res = dialog_inputbox(prompt ? prompt : _("Main Menu"),
+		res = dialog_inputbox(prompt ? _(prompt) : _("Main Menu"),
 				      heading, 10, 75,
 				      sym_get_string_value(menu->sym));
 		switch (res) {
@@ -845,6 +759,7 @@ static void conf_load(void)
 				return;
 			if (!conf_read(dialog_input_result)) {
 				set_config_filename(dialog_input_result);
+				sym_set_change_count(1);
 				return;
 			}
 			show_textbox(NULL, _("File does not exist!"), 5, 38);
@@ -884,13 +799,9 @@ static void conf_save(void)
 	}
 }
 
-static void conf_cleanup(void)
-{
-	tcsetattr(1, TCSAFLUSH, &ios_org);
-}
-
 int main(int ac, char **av)
 {
+	int saved_x, saved_y;
 	char *mode;
 	int res;
 
@@ -907,11 +818,15 @@ int main(int ac, char **av)
 			single_menu_mode = 1;
 	}
 
-	tcgetattr(1, &ios_org);
-	atexit(conf_cleanup);
-	init_wsize();
-	reset_dialog();
-	init_dialog(NULL);
+	initscr();
+
+	getyx(stdscr, saved_y, saved_x);
+	if (init_dialog(NULL)) {
+		fprintf(stderr, N_("Your display is too small to run Menuconfig!\n"));
+		fprintf(stderr, N_("It must be at least 19 lines by 80 columns.\n"));
+		return 1;
+	}
+
 	set_config_filename(conf_get_configname());
 	do {
 		conf(&rootmenu);
@@ -925,7 +840,7 @@ int main(int ac, char **av)
 		else
 			res = -1;
 	} while (res == KEY_ESC);
-	end_dialog();
+	end_dialog(saved_x, saved_y);
 
 	switch (res) {
 	case 0:
@@ -938,8 +853,8 @@ int main(int ac, char **av)
 		}
 	case -1:
 		printf(_("\n\n"
-			"*** End of barebox configuration.\n"
-			"*** Execute 'make' to build barebox or try 'make help'."
+			"*** End of Linux barebox configuration.\n"
+			"*** Execute 'make' to build the barebox or try 'make help'."
 			"\n\n"));
 		break;
 	default:
@@ -950,3 +865,4 @@ int main(int ac, char **av)
 
 	return 0;
 }
+
diff --git a/scripts/kconfig/menu.c b/scripts/kconfig/menu.c
index f9d0d91..5213527 100644
--- a/scripts/kconfig/menu.c
+++ b/scripts/kconfig/menu.c
@@ -9,13 +9,16 @@
 #define LKC_DIRECT_LINK
 #include "lkc.h"
 
+static const char nohelp_text[] = N_(
+	"There is no help available for this barebox option.\n");
+
 struct menu rootmenu;
 static struct menu **last_entry_ptr;
 
 struct file *file_list;
 struct file *current_file;
 
-static void menu_warn(struct menu *menu, const char *fmt, ...)
+void menu_warn(struct menu *menu, const char *fmt, ...)
 {
 	va_list ap;
 	va_start(ap, fmt);
@@ -35,7 +38,7 @@ static void prop_warn(struct property *prop, const char *fmt, ...)
 	va_end(ap);
 }
 
-void menu_init(void)
+void _menu_init(void)
 {
 	current_entry = current_menu = &rootmenu;
 	last_entry_ptr = &rootmenu.list;
@@ -55,6 +58,8 @@ void menu_add_entry(struct symbol *sym)
 	*last_entry_ptr = menu;
 	last_entry_ptr = &menu->next;
 	current_entry = menu;
+	if (sym)
+		menu_add_symbol(P_SYMBOL, sym, NULL);
 }
 
 void menu_end_entry(void)
@@ -74,7 +79,7 @@ void menu_end_menu(void)
 	current_menu = current_menu->parent;
 }
 
-struct expr *menu_check_dep(struct expr *e)
+static struct expr *menu_check_dep(struct expr *e)
 {
 	if (!e)
 		return e;
@@ -102,6 +107,7 @@ struct expr *menu_check_dep(struct expr *e)
 void menu_add_dep(struct expr *dep)
 {
 	current_entry->dep = expr_alloc_and(current_entry->dep, menu_check_dep(dep));
+	current_entry->dir_dep = current_entry->dep;
 }
 
 void menu_set_type(int type)
@@ -172,6 +178,9 @@ void menu_add_option(int token, char *arg)
 		else if (sym_defconfig_list != current_entry->sym)
 			zconf_error("trying to redefine defconfig symbol");
 		break;
+	case T_OPT_ENV:
+		prop_add_env(arg);
+		break;
 	}
 }
 
@@ -181,7 +190,7 @@ static int menu_range_valid_sym(struct symbol *sym, struct symbol *sym2)
 	       (sym2->type == S_UNKNOWN && sym_string_valid(sym, sym2->name));
 }
 
-void sym_check_prop(struct symbol *sym)
+static void sym_check_prop(struct symbol *sym)
 {
 	struct property *prop;
 	struct symbol *sym2;
@@ -191,7 +200,7 @@ void sym_check_prop(struct symbol *sym)
 			if ((sym->type == S_STRING || sym->type == S_INT || sym->type == S_HEX) &&
 			    prop->expr->type != E_SYMBOL)
 				prop_warn(prop,
-				    "default for config symbol '%'"
+				    "default for config symbol '%s'"
 				    " must be a single symbol", sym->name);
 			break;
 		case P_SELECT:
@@ -200,12 +209,9 @@ void sym_check_prop(struct symbol *sym)
 				prop_warn(prop,
 				    "config symbol '%s' uses select, but is "
 				    "not boolean or tristate", sym->name);
-			else if (sym2->type == S_UNKNOWN)
-				prop_warn(prop,
-				    "'select' used by config symbol '%s' "
-				    "refers to undefined symbol '%s'",
-				    sym->name, sym2->name);
-			else if (sym2->type != S_BOOLEAN && sym2->type != S_TRISTATE)
+			else if (sym2->type != S_UNKNOWN &&
+			         sym2->type != S_BOOLEAN &&
+			         sym2->type != S_TRISTATE)
 				prop_warn(prop,
 				    "'%s' has wrong type. 'select' only "
 				    "accept arguments of boolean and "
@@ -235,15 +241,21 @@ void menu_finalize(struct menu *parent)
 	sym = parent->sym;
 	if (parent->list) {
 		if (sym && sym_is_choice(sym)) {
-			/* find the first choice value and find out choice type */
+			if (sym->type == S_UNKNOWN) {
+				/* find the first choice value to find out choice type */
+				current_entry = parent;
+				for (menu = parent->list; menu; menu = menu->next) {
+					if (menu->sym && menu->sym->type != S_UNKNOWN) {
+						menu_set_type(menu->sym->type);
+						break;
+					}
+				}
+			}
+			/* set the type of the remaining choice values */
 			for (menu = parent->list; menu; menu = menu->next) {
-				if (menu->sym) {
-					current_entry = parent;
-					menu_set_type(menu->sym->type);
-					current_entry = menu;
+				current_entry = menu;
+				if (menu->sym && menu->sym->type == S_UNKNOWN)
 					menu_set_type(sym->type);
-					break;
-				}
 			}
 			parentdep = expr_alloc_symbol(sym);
 		} else if (parent->prompt)
@@ -279,6 +291,10 @@ void menu_finalize(struct menu *parent)
 		for (menu = parent->list; menu; menu = menu->next)
 			menu_finalize(menu);
 	} else if (sym) {
+		/* ignore inherited dependencies for dir_dep */
+		sym->dir_dep.expr = expr_transform(expr_copy(parent->dir_dep));
+		sym->dir_dep.expr = expr_eliminate_dups(sym->dir_dep.expr);
+
 		basedep = parent->prompt ? parent->prompt->visible.expr : NULL;
 		basedep = expr_trans_compare(basedep, E_UNEQUAL, &symbol_no);
 		basedep = expr_eliminate_dups(expr_transform(basedep));
@@ -311,27 +327,43 @@ void menu_finalize(struct menu *parent)
 		}
 	}
 	for (menu = parent->list; menu; menu = menu->next) {
-		if (sym && sym_is_choice(sym) && menu->sym) {
+		if (sym && sym_is_choice(sym) &&
+		    menu->sym && !sym_is_choice_value(menu->sym)) {
+			current_entry = menu;
 			menu->sym->flags |= SYMBOL_CHOICEVAL;
 			if (!menu->prompt)
 				menu_warn(menu, "choice value must have a prompt");
 			for (prop = menu->sym->prop; prop; prop = prop->next) {
-				if (prop->type == P_PROMPT && prop->menu != menu) {
-					prop_warn(prop, "choice values "
-					    "currently only support a "
-					    "single prompt");
-				}
 				if (prop->type == P_DEFAULT)
 					prop_warn(prop, "defaults for choice "
-					    "values not supported");
+						  "values not supported");
+				if (prop->menu == menu)
+					continue;
+				if (prop->type == P_PROMPT &&
+				    prop->menu->parent->sym != sym)
+					prop_warn(prop, "choice value used outside its choice group");
+			}
+			/* Non-tristate choice values of tristate choices must
+			 * depend on the choice being set to Y. The choice
+			 * values' dependencies were propagated to their
+			 * properties above, so the change here must be re-
+			 * propagated.
+			 */
+			if (sym->type == S_TRISTATE && menu->sym->type != S_TRISTATE) {
+				basedep = expr_alloc_comp(E_EQUAL, sym, &symbol_yes);
+				menu->dep = expr_alloc_and(basedep, menu->dep);
+				for (prop = menu->sym->prop; prop; prop = prop->next) {
+					if (prop->menu != menu)
+						continue;
+					prop->visible.expr = expr_alloc_and(expr_copy(basedep),
+									    prop->visible.expr);
+				}
 			}
-			current_entry = menu;
-			menu_set_type(sym->type);
 			menu_add_symbol(P_CHOICE, sym, NULL);
 			prop = sym_get_choice_prop(sym);
 			for (ep = &prop->expr; *ep; ep = &(*ep)->left.expr)
 				;
-			*ep = expr_alloc_one(E_CHOICE, NULL);
+			*ep = expr_alloc_one(E_LIST, NULL);
 			(*ep)->right.sym = menu->sym;
 		}
 		if (menu->list && (!menu->prompt || !menu->prompt->text)) {
@@ -365,6 +397,13 @@ void menu_finalize(struct menu *parent)
 	}
 }
 
+bool menu_has_prompt(struct menu *menu)
+{
+	if (!menu->prompt)
+		return false;
+	return true;
+}
+
 bool menu_is_visible(struct menu *menu)
 {
 	struct menu *child;
@@ -373,6 +412,7 @@ bool menu_is_visible(struct menu *menu)
 
 	if (!menu->prompt)
 		return false;
+
 	sym = menu->sym;
 	if (sym) {
 		sym_calc_value(sym);
@@ -382,21 +422,27 @@ bool menu_is_visible(struct menu *menu)
 
 	if (visible != no)
 		return true;
+
 	if (!sym || sym_get_tristate_value(menu->sym) == no)
 		return false;
 
-	for (child = menu->list; child; child = child->next)
-		if (menu_is_visible(child))
+	for (child = menu->list; child; child = child->next) {
+		if (menu_is_visible(child)) {
+			if (sym)
+				sym->flags |= SYMBOL_DEF_USER;
 			return true;
+		}
+	}
+
 	return false;
 }
 
 const char *menu_get_prompt(struct menu *menu)
 {
 	if (menu->prompt)
-		return _(menu->prompt->text);
+		return menu->prompt->text;
 	else if (menu->sym)
-		return _(menu->sym->name);
+		return menu->sym->name;
 	return NULL;
 }
 
@@ -429,3 +475,104 @@ const char *menu_get_help(struct menu *menu)
 	else
 		return "";
 }
+
+static void get_prompt_str(struct gstr *r, struct property *prop)
+{
+	int i, j;
+	struct menu *submenu[8], *menu;
+
+	str_printf(r, _("Prompt: %s\n"), _(prop->text));
+	str_printf(r, _("  Defined at %s:%d\n"), prop->menu->file->name,
+		prop->menu->lineno);
+	if (!expr_is_yes(prop->visible.expr)) {
+		str_append(r, _("  Depends on: "));
+		expr_gstr_print(prop->visible.expr, r);
+		str_append(r, "\n");
+	}
+	menu = prop->menu->parent;
+	for (i = 0; menu != &rootmenu && i < 8; menu = menu->parent)
+		submenu[i++] = menu;
+	if (i > 0) {
+		str_printf(r, _("  Location:\n"));
+		for (j = 4; --i >= 0; j += 2) {
+			menu = submenu[i];
+			str_printf(r, "%*c-> %s", j, ' ', _(menu_get_prompt(menu)));
+			if (menu->sym) {
+				str_printf(r, " (%s [=%s])", menu->sym->name ?
+					menu->sym->name : _("<choice>"),
+					sym_get_string_value(menu->sym));
+			}
+			str_append(r, "\n");
+		}
+	}
+}
+
+void get_symbol_str(struct gstr *r, struct symbol *sym)
+{
+	bool hit;
+	struct property *prop;
+
+	if (sym && sym->name) {
+		str_printf(r, "Symbol: %s [=%s]\n", sym->name,
+			   sym_get_string_value(sym));
+		str_printf(r, "Type  : %s\n", sym_type_name(sym->type));
+		if (sym->type == S_INT || sym->type == S_HEX) {
+			prop = sym_get_range_prop(sym);
+			if (prop) {
+				str_printf(r, "Range : ");
+				expr_gstr_print(prop->expr, r);
+				str_append(r, "\n");
+			}
+		}
+	}
+	for_all_prompts(sym, prop)
+		get_prompt_str(r, prop);
+	hit = false;
+	for_all_properties(sym, prop, P_SELECT) {
+		if (!hit) {
+			str_append(r, "  Selects: ");
+			hit = true;
+		} else
+			str_printf(r, " && ");
+		expr_gstr_print(prop->expr, r);
+	}
+	if (hit)
+		str_append(r, "\n");
+	if (sym->rev_dep.expr) {
+		str_append(r, _("  Selected by: "));
+		expr_gstr_print(sym->rev_dep.expr, r);
+		str_append(r, "\n");
+	}
+	str_append(r, "\n\n");
+}
+
+struct gstr get_relations_str(struct symbol **sym_arr)
+{
+	struct symbol *sym;
+	struct gstr res = str_new();
+	int i;
+
+	for (i = 0; sym_arr && (sym = sym_arr[i]); i++)
+		get_symbol_str(&res, sym);
+	if (!i)
+		str_append(&res, _("No matches found.\n"));
+	return res;
+}
+
+
+void menu_get_ext_help(struct menu *menu, struct gstr *help)
+{
+	struct symbol *sym = menu->sym;
+
+	if (menu_has_help(menu)) {
+		if (sym->name) {
+			str_printf(help, "CONFIG_%s:\n\n", sym->name);
+			str_append(help, _(menu_get_help(menu)));
+			str_append(help, "\n");
+		}
+	} else {
+		str_append(help, nohelp_text);
+	}
+	if (sym)
+		get_symbol_str(help, sym);
+}
diff --git a/scripts/kconfig/nconf.c b/scripts/kconfig/nconf.c
new file mode 100644
index 0000000..b84948e
--- /dev/null
+++ b/scripts/kconfig/nconf.c
@@ -0,0 +1,1568 @@
+/*
+ * Copyright (C) 2008 Nir Tzachar <nir.tzachar@gmail.com?
+ * Released under the terms of the GNU GPL v2.0.
+ *
+ * Derived from menuconfig.
+ *
+ */
+#define LKC_DIRECT_LINK
+#include "lkc.h"
+#include "nconf.h"
+
+static const char nconf_readme[] = N_(
+"Overview\n"
+"--------\n"
+"Some barebox features may be built directly into the barebox.\n"
+"Some may be made into loadable runtime modules.  Some features\n"
+"may be completely removed altogether.  There are also certain\n"
+"barebox parameters which are not really features, but must be\n"
+"entered in as decimal or hexadecimal numbers or possibly text.\n"
+"\n"
+"Menu items beginning with following braces represent features that\n"
+"  [ ] can be built in or removed\n"
+"  < > can be built in, modularized or removed\n"
+"  { } can be built in or modularized (selected by other feature)\n"
+"  - - are selected by other feature,\n"
+"  XXX cannot be selected. use Symbol Info to find out why,\n"
+"while *, M or whitespace inside braces means to build in, build as\n"
+"a module or to exclude the feature respectively.\n"
+"\n"
+"To change any of these features, highlight it with the cursor\n"
+"keys and press <Y> to build it in, <M> to make it a module or\n"
+"<N> to removed it.  You may also press the <Space Bar> to cycle\n"
+"through the available options (ie. Y->N->M->Y).\n"
+"\n"
+"Some additional keyboard hints:\n"
+"\n"
+"Menus\n"
+"----------\n"
+"o  Use the Up/Down arrow keys (cursor keys) to highlight the item\n"
+"   you wish to change use <Enter> or <Space>. Goto submenu by \n"
+"   pressing <Enter> of <right-arrow>. Use <Esc> or <left-arrow> to go back.\n"
+"   Submenus are designated by \"--->\".\n"
+"\n"
+"   Shortcut: Press the option's highlighted letter (hotkey).\n"
+"             Pressing a hotkey more than once will sequence\n"
+"             through all visible items which use that hotkey.\n"
+"\n"
+"   You may also use the <PAGE UP> and <PAGE DOWN> keys to scroll\n"
+"   unseen options into view.\n"
+"\n"
+"o  To exit a menu use the just press <ESC> <F5> <F8> or <left-arrow>.\n"
+"\n"
+"o  To get help with an item, press <F1>\n"
+"   Shortcut: Press <h> or <?>.\n"
+"\n"
+"\n"
+"Radiolists  (Choice lists)\n"
+"-----------\n"
+"o  Use the cursor keys to select the option you wish to set and press\n"
+"   <S> or the <SPACE BAR>.\n"
+"\n"
+"   Shortcut: Press the first letter of the option you wish to set then\n"
+"             press <S> or <SPACE BAR>.\n"
+"\n"
+"o  To see available help for the item, press <F1>\n"
+"   Shortcut: Press <H> or <?>.\n"
+"\n"
+"\n"
+"Data Entry\n"
+"-----------\n"
+"o  Enter the requested information and press <ENTER>\n"
+"   If you are entering hexadecimal values, it is not necessary to\n"
+"   add the '0x' prefix to the entry.\n"
+"\n"
+"o  For help, press <F1>.\n"
+"\n"
+"\n"
+"Text Box    (Help Window)\n"
+"--------\n"
+"o  Use the cursor keys to scroll up/down/left/right.  The VI editor\n"
+"   keys h,j,k,l function here as do <SPACE BAR> for those\n"
+"   who are familiar with less and lynx.\n"
+"\n"
+"o  Press <Enter>, <F1>, <F5>, <F7> or <Esc> to exit.\n"
+"\n"
+"\n"
+"Alternate Configuration Files\n"
+"-----------------------------\n"
+"nconfig supports the use of alternate configuration files for\n"
+"those who, for various reasons, find it necessary to switch\n"
+"between different barebox configurations.\n"
+"\n"
+"At the end of the main menu you will find two options.  One is\n"
+"for saving the current configuration to a file of your choosing.\n"
+"The other option is for loading a previously saved alternate\n"
+"configuration.\n"
+"\n"
+"Even if you don't use alternate configuration files, but you\n"
+"find during a nconfig session that you have completely messed\n"
+"up your settings, you may use the \"Load Alternate...\" option to\n"
+"restore your previously saved settings from \".config\" without\n"
+"restarting nconfig.\n"
+"\n"
+"Other information\n"
+"-----------------\n"
+"If you use nconfig in an XTERM window make sure you have your\n"
+"$TERM variable set to point to a xterm definition which supports color.\n"
+"Otherwise, nconfig will look rather bad.  nconfig will not\n"
+"display correctly in a RXVT window because rxvt displays only one\n"
+"intensity of color, bright.\n"
+"\n"
+"nconfig will display larger menus on screens or xterms which are\n"
+"set to display more than the standard 25 row by 80 column geometry.\n"
+"In order for this to work, the \"stty size\" command must be able to\n"
+"display the screen's current row and column geometry.  I STRONGLY\n"
+"RECOMMEND that you make sure you do NOT have the shell variables\n"
+"LINES and COLUMNS exported into your environment.  Some distributions\n"
+"export those variables via /etc/profile.  Some ncurses programs can\n"
+"become confused when those variables (LINES & COLUMNS) don't reflect\n"
+"the true screen size.\n"
+"\n"
+"Optional personality available\n"
+"------------------------------\n"
+"If you prefer to have all of the barebox options listed in a single\n"
+"menu, rather than the default multimenu hierarchy, run the nconfig\n"
+"with NCONFIG_MODE environment variable set to single_menu. Example:\n"
+"\n"
+"make NCONFIG_MODE=single_menu nconfig\n"
+"\n"
+"<Enter> will then unroll the appropriate category, or enfold it if it\n"
+"is already unrolled.\n"
+"\n"
+"Note that this mode can eventually be a little more CPU expensive\n"
+"(especially with a larger number of unrolled categories) than the\n"
+"default mode.\n"
+"\n"),
+menu_no_f_instructions[] = N_(
+" You do not have function keys support. Please follow the\n"
+" following instructions:\n"
+" Arrow keys navigate the menu.\n"
+" <Enter> or <right-arrow> selects submenus --->.\n"
+" Capital Letters are hotkeys.\n"
+" Pressing <Y> includes, <N> excludes, <M> modularizes features.\n"
+" Pressing SpaceBar toggles between the above options\n"
+" Press <Esc> or <left-arrow> to go back one menu, \n"
+" <?> or <h> for Help, </> for Search.\n"
+" <1> is interchangable with <F1>, <2> with <F2>, etc.\n"
+" Legend: [*] built-in  [ ] excluded  <M> module  < > module capable.\n"
+" <Esc> always leaves the current window\n"),
+menu_instructions[] = N_(
+" Arrow keys navigate the menu.\n"
+" <Enter> or <right-arrow> selects submenus --->.\n"
+" Capital Letters are hotkeys.\n"
+" Pressing <Y> includes, <N> excludes, <M> modularizes features.\n"
+" Pressing SpaceBar toggles between the above options\n"
+" Press <Esc>, <F3> or <left-arrow> to go back one menu, \n"
+" <?>, <F1> or <h> for Help, </> for Search.\n"
+" <1> is interchangable with <F1>, <2> with <F2>, etc.\n"
+" Legend: [*] built-in  [ ] excluded  <M> module  < > module capable.\n"
+" <Esc> always leaves the current window\n"),
+radiolist_instructions[] = N_(
+" Use the arrow keys to navigate this window or\n"
+" press the hotkey of the item you wish to select\n"
+" followed by the <SPACE BAR>.\n"
+" Press <?>, <F1> or <h> for additional information about this option.\n"),
+inputbox_instructions_int[] = N_(
+"Please enter a decimal value.\n"
+"Fractions will not be accepted.\n"
+"Press <RETURN> to accept, <ESC> to cancel."),
+inputbox_instructions_hex[] = N_(
+"Please enter a hexadecimal value.\n"
+"Press <RETURN> to accept, <ESC> to cancel."),
+inputbox_instructions_string[] = N_(
+"Please enter a string value.\n"
+"Press <RETURN> to accept, <ESC> to cancel."),
+setmod_text[] = N_(
+"This feature depends on another which\n"
+"has been configured as a module.\n"
+"As a result, this feature will be built as a module."),
+nohelp_text[] = N_(
+"There is no help available for this barebox option.\n"),
+load_config_text[] = N_(
+"Enter the name of the configuration file you wish to load.\n"
+"Accept the name shown to restore the configuration you\n"
+"last retrieved.  Leave blank to abort."),
+load_config_help[] = N_(
+"\n"
+"For various reasons, one may wish to keep several different barebox\n"
+"configurations available on a single machine.\n"
+"\n"
+"If you have saved a previous configuration in a file other than the\n"
+"barebox's default, entering the name of the file here will allow you\n"
+"to modify that configuration.\n"
+"\n"
+"If you are uncertain, then you have probably never used alternate\n"
+"configuration files.  You should therefor leave this blank to abort.\n"),
+save_config_text[] = N_(
+"Enter a filename to which this configuration should be saved\n"
+"as an alternate.  Leave blank to abort."),
+save_config_help[] = N_(
+"\n"
+"For various reasons, one may wish to keep different barebox\n"
+"configurations available on a single machine.\n"
+"\n"
+"Entering a file name here will allow you to later retrieve, modify\n"
+"and use the current configuration as an alternate to whatever\n"
+"configuration options you have selected at that time.\n"
+"\n"
+"If you are uncertain what all this means then you should probably\n"
+"leave this blank.\n"),
+search_help[] = N_(
+"\n"
+"Search for CONFIG_ symbols and display their relations.\n"
+"Regular expressions are allowed.\n"
+"Example: search for \"^FOO\"\n"
+"Result:\n"
+"-----------------------------------------------------------------\n"
+"Symbol: FOO [ = m]\n"
+"Prompt: Foo bus is used to drive the bar HW\n"
+"Defined at drivers/pci/Kconfig:47\n"
+"Depends on: X86_LOCAL_APIC && X86_IO_APIC || IA64\n"
+"Location:\n"
+"  -> Bus options (PCI, PCMCIA, EISA, MCA, ISA)\n"
+"    -> PCI support (PCI [ = y])\n"
+"      -> PCI access mode (<choice> [ = y])\n"
+"Selects: LIBCRC32\n"
+"Selected by: BAR\n"
+"-----------------------------------------------------------------\n"
+"o The line 'Prompt:' shows the text used in the menu structure for\n"
+"  this CONFIG_ symbol\n"
+"o The 'Defined at' line tell at what file / line number the symbol\n"
+"  is defined\n"
+"o The 'Depends on:' line tell what symbols needs to be defined for\n"
+"  this symbol to be visible in the menu (selectable)\n"
+"o The 'Location:' lines tell where in the menu structure this symbol\n"
+"  is located\n"
+"    A location followed by a [ = y] indicate that this is a selectable\n"
+"    menu item - and current value is displayed inside brackets.\n"
+"o The 'Selects:' line tell what symbol will be automatically\n"
+"  selected if this symbol is selected (y or m)\n"
+"o The 'Selected by' line tell what symbol has selected this symbol\n"
+"\n"
+"Only relevant lines are shown.\n"
+"\n\n"
+"Search examples:\n"
+"Examples: USB   = > find all CONFIG_ symbols containing USB\n"
+"          ^USB => find all CONFIG_ symbols starting with USB\n"
+"          USB$ => find all CONFIG_ symbols ending with USB\n"
+"\n");
+
+struct mitem {
+	char str[256];
+	char tag;
+	void *usrptr;
+	int is_hot;
+	int is_visible;
+};
+
+#define MAX_MENU_ITEMS 4096
+static int show_all_items;
+static int indent;
+static struct menu *current_menu;
+static int child_count;
+static int single_menu_mode;
+/* the window in which all information appears */
+static WINDOW *main_window;
+/* the largest size of the menu window */
+static int mwin_max_lines;
+static int mwin_max_cols;
+/* the window in which we show option buttons */
+static MENU *curses_menu;
+static ITEM *curses_menu_items[MAX_MENU_ITEMS];
+static struct mitem k_menu_items[MAX_MENU_ITEMS];
+static int items_num;
+static int global_exit;
+/* the currently selected button */
+const char *current_instructions = menu_instructions;
+/* this array is used to implement hot keys. it is updated in item_make and
+ * resetted in clean_items. It would be better to use a hash, but lets keep it
+ * simple... */
+#define MAX_SAME_KEY MAX_MENU_ITEMS
+struct {
+	int count;
+	int ptrs[MAX_MENU_ITEMS];
+} hotkeys[1<<(sizeof(char)*8)];
+
+static void conf(struct menu *menu);
+static void conf_choice(struct menu *menu);
+static void conf_string(struct menu *menu);
+static void conf_load(void);
+static void conf_save(void);
+static void show_help(struct menu *menu);
+static int do_exit(void);
+static void setup_windows(void);
+
+typedef void (*function_key_handler_t)(int *key, struct menu *menu);
+static void handle_f1(int *key, struct menu *current_item);
+static void handle_f2(int *key, struct menu *current_item);
+static void handle_f3(int *key, struct menu *current_item);
+static void handle_f4(int *key, struct menu *current_item);
+static void handle_f5(int *key, struct menu *current_item);
+static void handle_f6(int *key, struct menu *current_item);
+static void handle_f7(int *key, struct menu *current_item);
+static void handle_f8(int *key, struct menu *current_item);
+
+struct function_keys {
+	const char *key_str;
+	const char *func;
+	function_key key;
+	function_key_handler_t handler;
+};
+
+static const int function_keys_num = 8;
+struct function_keys function_keys[] = {
+	{
+		.key_str = "F1",
+		.func = "Help",
+		.key = F_HELP,
+		.handler = handle_f1,
+	},
+	{
+		.key_str = "F2",
+		.func = "Symbol Info",
+		.key = F_SYMBOL,
+		.handler = handle_f2,
+	},
+	{
+		.key_str = "F3",
+		.func = "Instructions",
+		.key = F_INSTS,
+		.handler = handle_f3,
+	},
+	{
+		.key_str = "F4",
+		.func = "Config",
+		.key = F_CONF,
+		.handler = handle_f4,
+	},
+	{
+		.key_str = "F5",
+		.func = "Back",
+		.key = F_BACK,
+		.handler = handle_f5,
+	},
+	{
+		.key_str = "F6",
+		.func = "Save",
+		.key = F_SAVE,
+		.handler = handle_f6,
+	},
+	{
+		.key_str = "F7",
+		.func = "Load",
+		.key = F_LOAD,
+		.handler = handle_f7,
+	},
+	{
+		.key_str = "F8",
+		.func = "Exit",
+		.key = F_EXIT,
+		.handler = handle_f8,
+	},
+};
+
+static void print_function_line(void)
+{
+	int i;
+	int offset = 1;
+	const int skip = 1;
+
+	for (i = 0; i < function_keys_num; i++) {
+		wattrset(main_window, attributes[FUNCTION_HIGHLIGHT]);
+		mvwprintw(main_window, LINES-3, offset,
+				"%s",
+				function_keys[i].key_str);
+		wattrset(main_window, attributes[FUNCTION_TEXT]);
+		offset += strlen(function_keys[i].key_str);
+		mvwprintw(main_window, LINES-3,
+				offset, "%s",
+				function_keys[i].func);
+		offset += strlen(function_keys[i].func) + skip;
+	}
+	wattrset(main_window, attributes[NORMAL]);
+}
+
+/* help */
+static void handle_f1(int *key, struct menu *current_item)
+{
+	show_scroll_win(main_window,
+			_("README"), _(nconf_readme));
+	return;
+}
+
+/* symbole help */
+static void handle_f2(int *key, struct menu *current_item)
+{
+	show_help(current_item);
+	return;
+}
+
+/* instructions */
+static void handle_f3(int *key, struct menu *current_item)
+{
+	show_scroll_win(main_window,
+			_("Instructions"),
+			_(current_instructions));
+	return;
+}
+
+/* config */
+static void handle_f4(int *key, struct menu *current_item)
+{
+	int res = btn_dialog(main_window,
+			_("Show all symbols?"),
+			2,
+			"   <Show All>   ",
+			"<Don't show all>");
+	if (res == 0)
+		show_all_items = 1;
+	else if (res == 1)
+		show_all_items = 0;
+
+	return;
+}
+
+/* back */
+static void handle_f5(int *key, struct menu *current_item)
+{
+	*key = KEY_LEFT;
+	return;
+}
+
+/* save */
+static void handle_f6(int *key, struct menu *current_item)
+{
+	conf_save();
+	return;
+}
+
+/* load */
+static void handle_f7(int *key, struct menu *current_item)
+{
+	conf_load();
+	return;
+}
+
+/* exit */
+static void handle_f8(int *key, struct menu *current_item)
+{
+	do_exit();
+	return;
+}
+
+/* return != 0 to indicate the key was handles */
+static int process_special_keys(int *key, struct menu *menu)
+{
+	int i;
+
+	if (*key == KEY_RESIZE) {
+		setup_windows();
+		return 1;
+	}
+
+	for (i = 0; i < function_keys_num; i++) {
+		if (*key == KEY_F(function_keys[i].key) ||
+		    *key == '0' + function_keys[i].key){
+			function_keys[i].handler(key, menu);
+			return 1;
+		}
+	}
+
+	return 0;
+}
+
+static void clean_items(void)
+{
+	int i;
+	for (i = 0; curses_menu_items[i]; i++)
+		free_item(curses_menu_items[i]);
+	bzero(curses_menu_items, sizeof(curses_menu_items));
+	bzero(k_menu_items, sizeof(k_menu_items));
+	bzero(hotkeys, sizeof(hotkeys));
+	items_num = 0;
+}
+
+/* return the index of the next hot item, or -1 if no such item exists */
+static int get_next_hot(int c)
+{
+	static int hot_index;
+	static int hot_char;
+
+	if (c < 0 || c > 255 || hotkeys[c].count <= 0)
+		return -1;
+
+	if (hot_char == c) {
+		hot_index = (hot_index+1)%hotkeys[c].count;
+		return hotkeys[c].ptrs[hot_index];
+	} else {
+		hot_char = c;
+		hot_index = 0;
+		return hotkeys[c].ptrs[0];
+	}
+}
+
+/* can the char c be a hot key? no, if c is a common shortcut used elsewhere */
+static int canbhot(char c)
+{
+	c = tolower(c);
+	return isalnum(c) && c != 'y' && c != 'm' && c != 'h' &&
+		c != 'n' && c != '?';
+}
+
+/* check if str already contains a hot key. */
+static int is_hot(int index)
+{
+	return k_menu_items[index].is_hot;
+}
+
+/* find the first possible hot key, and mark it.
+ * index is the index of the item in the menu
+ * return 0 on success*/
+static int make_hot(char *dest, int len, const char *org, int index)
+{
+	int position = -1;
+	int i;
+	int tmp;
+	int c;
+	int org_len = strlen(org);
+
+	if (org == NULL || is_hot(index))
+		return 1;
+
+	/* make sure not to make hot keys out of markers.
+	 * find where to start looking for a hot key
+	 */
+	i = 0;
+	/* skip white space */
+	while (i < org_len && org[i] == ' ')
+		i++;
+	if (i == org_len)
+		return -1;
+	/* if encountering '(' or '<' or '[', find the match and look from there
+	 **/
+	if (org[i] == '[' || org[i] == '<' || org[i] == '(') {
+		i++;
+		for (; i < org_len; i++)
+			if (org[i] == ']' || org[i] == '>' || org[i] == ')')
+				break;
+	}
+	if (i == org_len)
+		return -1;
+	for (; i < org_len; i++) {
+		if (canbhot(org[i]) && org[i-1] != '<' && org[i-1] != '(') {
+			position = i;
+			break;
+		}
+	}
+	if (position == -1)
+		return 1;
+
+	/* ok, char at org[position] should be a hot key to this item */
+	c = tolower(org[position]);
+	tmp = hotkeys[c].count;
+	hotkeys[c].ptrs[tmp] = index;
+	hotkeys[c].count++;
+	/*
+	   snprintf(dest, len, "%.*s(%c)%s", position, org, org[position],
+	   &org[position+1]);
+	   */
+	/* make org[position] uppercase, and all leading letter small case */
+	strncpy(dest, org, len);
+	for (i = 0; i < position; i++)
+		dest[i] = tolower(dest[i]);
+	dest[position] = toupper(dest[position]);
+	k_menu_items[index].is_hot = 1;
+	return 0;
+}
+
+/* Make a new item. Add a hotkey mark in the first possible letter.
+ * As ncurses does not allow any attributes inside menue item, we mark the
+ * hot key as the first capitalized letter in the string */
+static void item_make(struct menu *menu, char tag, const char *fmt, ...)
+{
+	va_list ap;
+	char tmp_str[256];
+
+	if (items_num > MAX_MENU_ITEMS-1)
+		return;
+
+	bzero(&k_menu_items[items_num], sizeof(k_menu_items[0]));
+	k_menu_items[items_num].tag = tag;
+	k_menu_items[items_num].usrptr = menu;
+	if (menu != NULL)
+		k_menu_items[items_num].is_visible =
+			menu_is_visible(menu);
+	else
+		k_menu_items[items_num].is_visible = 1;
+
+	va_start(ap, fmt);
+	vsnprintf(tmp_str, sizeof(tmp_str), fmt, ap);
+	if (!k_menu_items[items_num].is_visible)
+		memcpy(tmp_str, "XXX", 3);
+	va_end(ap);
+	if (make_hot(
+		k_menu_items[items_num].str,
+		sizeof(k_menu_items[items_num].str), tmp_str, items_num) != 0)
+		strncpy(k_menu_items[items_num].str,
+			tmp_str,
+			sizeof(k_menu_items[items_num].str));
+
+	curses_menu_items[items_num] = new_item(
+			k_menu_items[items_num].str,
+			k_menu_items[items_num].str);
+	set_item_userptr(curses_menu_items[items_num],
+			&k_menu_items[items_num]);
+	/*
+	if (!k_menu_items[items_num].is_visible)
+		item_opts_off(curses_menu_items[items_num], O_SELECTABLE);
+	*/
+
+	items_num++;
+	curses_menu_items[items_num] = NULL;
+}
+
+/* very hackish. adds a string to the last item added */
+static void item_add_str(const char *fmt, ...)
+{
+	va_list ap;
+	int index = items_num-1;
+	char new_str[256];
+	char tmp_str[256];
+
+	if (index < 0)
+		return;
+
+	va_start(ap, fmt);
+	vsnprintf(new_str, sizeof(new_str), fmt, ap);
+	va_end(ap);
+	snprintf(tmp_str, sizeof(tmp_str), "%s%s",
+			k_menu_items[index].str, new_str);
+	if (make_hot(k_menu_items[index].str,
+			sizeof(k_menu_items[index].str), tmp_str, index) != 0)
+		strncpy(k_menu_items[index].str,
+			tmp_str,
+			sizeof(k_menu_items[index].str));
+
+	free_item(curses_menu_items[index]);
+	curses_menu_items[index] = new_item(
+			k_menu_items[index].str,
+			k_menu_items[index].str);
+	set_item_userptr(curses_menu_items[index],
+			&k_menu_items[index]);
+}
+
+/* get the tag of the currently selected item */
+static char item_tag(void)
+{
+	ITEM *cur;
+	struct mitem *mcur;
+
+	cur = current_item(curses_menu);
+	if (cur == NULL)
+		return 0;
+	mcur = (struct mitem *) item_userptr(cur);
+	return mcur->tag;
+}
+
+static int curses_item_index(void)
+{
+	return  item_index(current_item(curses_menu));
+}
+
+static void *item_data(void)
+{
+	ITEM *cur;
+	struct mitem *mcur;
+
+	cur = current_item(curses_menu);
+	mcur = (struct mitem *) item_userptr(cur);
+	return mcur->usrptr;
+
+}
+
+static int item_is_tag(char tag)
+{
+	return item_tag() == tag;
+}
+
+static char filename[PATH_MAX+1];
+static char menu_backtitle[PATH_MAX+128];
+static const char *set_config_filename(const char *config_filename)
+{
+	int size;
+	struct symbol *sym;
+
+	sym = sym_lookup("KERNELVERSION", 0);
+	sym_calc_value(sym);
+	size = snprintf(menu_backtitle, sizeof(menu_backtitle),
+			_("%s - Barebox v%s Configuration"),
+			config_filename, sym_get_string_value(sym));
+	if (size >= sizeof(menu_backtitle))
+		menu_backtitle[sizeof(menu_backtitle)-1] = '\0';
+
+	size = snprintf(filename, sizeof(filename), "%s", config_filename);
+	if (size >= sizeof(filename))
+		filename[sizeof(filename)-1] = '\0';
+	return menu_backtitle;
+}
+
+/* command = 0 is supress, 1 is restore */
+static void supress_stdout(int command)
+{
+	static FILE *org_stdout;
+	static FILE *org_stderr;
+
+	if (command == 0) {
+		org_stdout = stdout;
+		org_stderr = stderr;
+		stdout = fopen("/dev/null", "a");
+		stderr = fopen("/dev/null", "a");
+	} else {
+		fclose(stdout);
+		fclose(stderr);
+		stdout = org_stdout;
+		stderr = org_stderr;
+	}
+}
+
+/* return = 0 means we are successful.
+ * -1 means go on doing what you were doing
+ */
+static int do_exit(void)
+{
+	int res;
+	if (!conf_get_changed()) {
+		global_exit = 1;
+		return 0;
+	}
+	res = btn_dialog(main_window,
+			_("Do you wish to save your "
+				"new barebox configuration?\n"
+				"<ESC> to cancel and resume nconfig."),
+			2,
+			"   <save>   ",
+			"<don't save>");
+	if (res == KEY_EXIT) {
+		global_exit = 0;
+		return -1;
+	}
+
+	/* if we got here, the user really wants to exit */
+	switch (res) {
+	case 0:
+		supress_stdout(0);
+		res = conf_write(filename);
+		supress_stdout(1);
+		if (res)
+			btn_dialog(
+				main_window,
+				_("Error during writing of the barebox "
+				  "configuration.\n"
+				  "Your barebox configuration "
+				  "changes were NOT saved."),
+				  1,
+				  "<OK>");
+		else {
+			char buf[1024];
+			snprintf(buf, 1024,
+				_("Configuration written to %s\n"
+				  "End of Linux barebox configuration.\n"
+				  "Execute 'make' to build the barebox or try"
+				  " 'make help'."), filename);
+			btn_dialog(
+				main_window,
+				buf,
+				1,
+				"<OK>");
+		}
+		break;
+	default:
+		btn_dialog(
+			main_window,
+			_("Your barebox configuration changes were NOT saved."),
+			1,
+			"<OK>");
+		break;
+	}
+	global_exit = 1;
+	return 0;
+}
+
+
+static void search_conf(void)
+{
+	struct symbol **sym_arr;
+	struct gstr res;
+	char dialog_input_result[100];
+	char *dialog_input;
+	int dres;
+again:
+	dres = dialog_inputbox(main_window,
+			_("Search Configuration Parameter"),
+			_("Enter CONFIG_ (sub)string to search for "
+				"(with or without \"CONFIG\")"),
+			"", dialog_input_result, 99);
+	switch (dres) {
+	case 0:
+		break;
+	case 1:
+		show_scroll_win(main_window,
+				_("Search Configuration"), search_help);
+		goto again;
+	default:
+		return;
+	}
+
+	/* strip CONFIG_ if necessary */
+	dialog_input = dialog_input_result;
+	if (strncasecmp(dialog_input_result, "CONFIG_", 7) == 0)
+		dialog_input += 7;
+
+	sym_arr = sym_re_search(dialog_input);
+	res = get_relations_str(sym_arr);
+	free(sym_arr);
+	show_scroll_win(main_window,
+			_("Search Results"), str_get(&res));
+	str_free(&res);
+}
+
+
+static void build_conf(struct menu *menu)
+{
+	struct symbol *sym;
+	struct property *prop;
+	struct menu *child;
+	int type, tmp, doint = 2;
+	tristate val;
+	char ch;
+
+	if (!menu || (!show_all_items && !menu_is_visible(menu)))
+		return;
+
+	sym = menu->sym;
+	prop = menu->prompt;
+	if (!sym) {
+		if (prop && menu != current_menu) {
+			const char *prompt = menu_get_prompt(menu);
+			enum prop_type ptype;
+			ptype = menu->prompt ? menu->prompt->type : P_UNKNOWN;
+			switch (ptype) {
+			case P_MENU:
+				child_count++;
+				prompt = _(prompt);
+				if (single_menu_mode) {
+					item_make(menu, 'm',
+						"%s%*c%s",
+						menu->data ? "-->" : "++>",
+						indent + 1, ' ', prompt);
+				} else
+					item_make(menu, 'm',
+						"   %*c%s  --->",
+						indent + 1,
+						' ', prompt);
+
+				if (single_menu_mode && menu->data)
+					goto conf_childs;
+				return;
+			case P_COMMENT:
+				if (prompt) {
+					child_count++;
+					item_make(menu, ':',
+						"   %*c*** %s ***",
+						indent + 1, ' ',
+						_(prompt));
+				}
+				break;
+			default:
+				if (prompt) {
+					child_count++;
+					item_make(menu, ':', "---%*c%s",
+						indent + 1, ' ',
+						_(prompt));
+				}
+			}
+		} else
+			doint = 0;
+		goto conf_childs;
+	}
+
+	type = sym_get_type(sym);
+	if (sym_is_choice(sym)) {
+		struct symbol *def_sym = sym_get_choice_value(sym);
+		struct menu *def_menu = NULL;
+
+		child_count++;
+		for (child = menu->list; child; child = child->next) {
+			if (menu_is_visible(child) && child->sym == def_sym)
+				def_menu = child;
+		}
+
+		val = sym_get_tristate_value(sym);
+		if (sym_is_changable(sym)) {
+			switch (type) {
+			case S_BOOLEAN:
+				item_make(menu, 't', "[%c]",
+						val == no ? ' ' : '*');
+				break;
+			case S_TRISTATE:
+				switch (val) {
+				case yes:
+					ch = '*';
+					break;
+				case mod:
+					ch = 'M';
+					break;
+				default:
+					ch = ' ';
+					break;
+				}
+				item_make(menu, 't', "<%c>", ch);
+				break;
+			}
+		} else {
+			item_make(menu, def_menu ? 't' : ':', "   ");
+		}
+
+		item_add_str("%*c%s", indent + 1,
+				' ', _(menu_get_prompt(menu)));
+		if (val == yes) {
+			if (def_menu) {
+				item_add_str(" (%s)",
+					_(menu_get_prompt(def_menu)));
+				item_add_str("  --->");
+				if (def_menu->list) {
+					indent += 2;
+					build_conf(def_menu);
+					indent -= 2;
+				}
+			}
+			return;
+		}
+	} else {
+		if (menu == current_menu) {
+			item_make(menu, ':',
+				"---%*c%s", indent + 1,
+				' ', _(menu_get_prompt(menu)));
+			goto conf_childs;
+		}
+		child_count++;
+		val = sym_get_tristate_value(sym);
+		if (sym_is_choice_value(sym) && val == yes) {
+			item_make(menu, ':', "   ");
+		} else {
+			switch (type) {
+			case S_BOOLEAN:
+				if (sym_is_changable(sym))
+					item_make(menu, 't', "[%c]",
+						val == no ? ' ' : '*');
+				else
+					item_make(menu, 't', "-%c-",
+						val == no ? ' ' : '*');
+				break;
+			case S_TRISTATE:
+				switch (val) {
+				case yes:
+					ch = '*';
+					break;
+				case mod:
+					ch = 'M';
+					break;
+				default:
+					ch = ' ';
+					break;
+				}
+				if (sym_is_changable(sym)) {
+					if (sym->rev_dep.tri == mod)
+						item_make(menu,
+							't', "{%c}", ch);
+					else
+						item_make(menu,
+							't', "<%c>", ch);
+				} else
+					item_make(menu, 't', "-%c-", ch);
+				break;
+			default:
+				tmp = 2 + strlen(sym_get_string_value(sym));
+				item_make(menu, 's', "    (%s)",
+						sym_get_string_value(sym));
+				tmp = indent - tmp + 4;
+				if (tmp < 0)
+					tmp = 0;
+				item_add_str("%*c%s%s", tmp, ' ',
+						_(menu_get_prompt(menu)),
+						(sym_has_value(sym) ||
+						 !sym_is_changable(sym)) ? "" :
+						_(" (NEW)"));
+				goto conf_childs;
+			}
+		}
+		item_add_str("%*c%s%s", indent + 1, ' ',
+				_(menu_get_prompt(menu)),
+				(sym_has_value(sym) || !sym_is_changable(sym)) ?
+				"" : _(" (NEW)"));
+		if (menu->prompt && menu->prompt->type == P_MENU) {
+			item_add_str("  --->");
+			return;
+		}
+	}
+
+conf_childs:
+	indent += doint;
+	for (child = menu->list; child; child = child->next)
+		build_conf(child);
+	indent -= doint;
+}
+
+static void reset_menu(void)
+{
+	unpost_menu(curses_menu);
+	clean_items();
+}
+
+/* adjust the menu to show this item.
+ * prefer not to scroll the menu if possible*/
+static void center_item(int selected_index, int *last_top_row)
+{
+	int toprow;
+	int maxy, maxx;
+
+	scale_menu(curses_menu, &maxy, &maxx);
+	set_top_row(curses_menu, *last_top_row);
+	toprow = top_row(curses_menu);
+	if (selected_index >= toprow && selected_index < toprow+maxy) {
+		/* we can only move the selected item. no need to scroll */
+		set_current_item(curses_menu,
+				curses_menu_items[selected_index]);
+	} else {
+		toprow = max(selected_index-maxy/2, 0);
+		if (toprow >= item_count(curses_menu)-maxy)
+			toprow = item_count(curses_menu)-mwin_max_lines;
+		set_top_row(curses_menu, toprow);
+		set_current_item(curses_menu,
+				curses_menu_items[selected_index]);
+	}
+	*last_top_row = toprow;
+	post_menu(curses_menu);
+	refresh_all_windows(main_window);
+}
+
+/* this function assumes reset_menu has been called before */
+static void show_menu(const char *prompt, const char *instructions,
+		int selected_index, int *last_top_row)
+{
+	int maxx, maxy;
+	WINDOW *menu_window;
+
+	current_instructions = instructions;
+
+	clear();
+	wattrset(main_window, attributes[NORMAL]);
+	print_in_middle(stdscr, 1, 0, COLS,
+			menu_backtitle,
+			attributes[MAIN_HEADING]);
+
+	wattrset(main_window, attributes[MAIN_MENU_BOX]);
+	box(main_window, 0, 0);
+	wattrset(main_window, attributes[MAIN_MENU_HEADING]);
+	mvwprintw(main_window, 0, 3, " %s ", prompt);
+	wattrset(main_window, attributes[NORMAL]);
+
+	set_menu_items(curses_menu, curses_menu_items);
+
+	/* position the menu at the middle of the screen */
+	scale_menu(curses_menu, &maxy, &maxx);
+	maxx = min(maxx, mwin_max_cols-2);
+	maxy = mwin_max_lines-2;
+	menu_window = derwin(main_window,
+			maxy,
+			maxx,
+			2,
+			(mwin_max_cols-maxx)/2);
+	keypad(menu_window, TRUE);
+	set_menu_win(curses_menu, menu_window);
+	set_menu_sub(curses_menu, menu_window);
+
+	/* must reassert this after changing items, otherwise returns to a
+	 * default of 16
+	 */
+	set_menu_format(curses_menu, maxy, 1);
+	center_item(selected_index, last_top_row);
+	set_menu_format(curses_menu, maxy, 1);
+
+	print_function_line();
+
+	/* Post the menu */
+	post_menu(curses_menu);
+	refresh_all_windows(main_window);
+}
+
+
+static void conf(struct menu *menu)
+{
+	char pattern[256];
+	struct menu *submenu = 0;
+	const char *prompt = menu_get_prompt(menu);
+	struct symbol *sym;
+	struct menu *active_menu = NULL;
+	int res;
+	int current_index = 0;
+	int last_top_row = 0;
+
+	bzero(pattern, sizeof(pattern));
+
+	while (!global_exit) {
+		reset_menu();
+		current_menu = menu;
+		build_conf(menu);
+		if (!child_count)
+			break;
+
+		show_menu(prompt ? _(prompt) : _("Main Menu"),
+				_(menu_instructions),
+				current_index, &last_top_row);
+		keypad((menu_win(curses_menu)), TRUE);
+		while (!global_exit && (res = wgetch(menu_win(curses_menu)))) {
+			if (process_special_keys(&res,
+						(struct menu *) item_data()))
+				break;
+			switch (res) {
+			case KEY_DOWN:
+				menu_driver(curses_menu, REQ_DOWN_ITEM);
+				break;
+			case KEY_UP:
+				menu_driver(curses_menu, REQ_UP_ITEM);
+				break;
+			case KEY_NPAGE:
+				menu_driver(curses_menu, REQ_SCR_DPAGE);
+				break;
+			case KEY_PPAGE:
+				menu_driver(curses_menu, REQ_SCR_UPAGE);
+				break;
+			case KEY_HOME:
+				menu_driver(curses_menu, REQ_FIRST_ITEM);
+				break;
+			case KEY_END:
+				menu_driver(curses_menu, REQ_LAST_ITEM);
+				break;
+			case 'h':
+			case '?':
+				show_help((struct menu *) item_data());
+				break;
+			}
+			if (res == 10 || res == 27 ||
+				res == 32 || res == 'n' || res == 'y' ||
+				res == KEY_LEFT || res == KEY_RIGHT ||
+				res == 'm' || res == '/')
+				break;
+			else if (canbhot(res)) {
+				/* check for hot keys: */
+				int tmp = get_next_hot(res);
+				if (tmp != -1)
+					center_item(tmp, &last_top_row);
+			}
+			refresh_all_windows(main_window);
+		}
+
+		refresh_all_windows(main_window);
+		/* if ESC  or left*/
+		if (res == 27 || (menu != &rootmenu && res == KEY_LEFT))
+			break;
+
+		/* remember location in the menu */
+		last_top_row = top_row(curses_menu);
+		current_index = curses_item_index();
+
+		if (!item_tag())
+			continue;
+
+		submenu = (struct menu *) item_data();
+		active_menu = (struct menu *)item_data();
+		if (!submenu || !menu_is_visible(submenu))
+			continue;
+		if (submenu)
+			sym = submenu->sym;
+		else
+			sym = NULL;
+
+		switch (res) {
+		case ' ':
+			if (item_is_tag('t'))
+				sym_toggle_tristate_value(sym);
+			else if (item_is_tag('m'))
+				conf(submenu);
+			break;
+		case KEY_RIGHT:
+		case 10: /* ENTER WAS PRESSED */
+			switch (item_tag()) {
+			case 'm':
+				if (single_menu_mode)
+					submenu->data =
+						(void *) (long) !submenu->data;
+				else
+					conf(submenu);
+				break;
+			case 't':
+				if (sym_is_choice(sym) &&
+				    sym_get_tristate_value(sym) == yes)
+					conf_choice(submenu);
+				else if (submenu->prompt &&
+					 submenu->prompt->type == P_MENU)
+					conf(submenu);
+				else if (res == 10)
+					sym_toggle_tristate_value(sym);
+				break;
+			case 's':
+				conf_string(submenu);
+				break;
+			}
+			break;
+		case 'y':
+			if (item_is_tag('t')) {
+				if (sym_set_tristate_value(sym, yes))
+					break;
+				if (sym_set_tristate_value(sym, mod))
+					btn_dialog(main_window, setmod_text, 0);
+			}
+			break;
+		case 'n':
+			if (item_is_tag('t'))
+				sym_set_tristate_value(sym, no);
+			break;
+		case 'm':
+			if (item_is_tag('t'))
+				sym_set_tristate_value(sym, mod);
+			break;
+		case '/':
+			search_conf();
+			break;
+		}
+	}
+}
+
+static void show_help(struct menu *menu)
+{
+	struct gstr help = str_new();
+
+	if (menu && menu->sym && menu_has_help(menu)) {
+		if (menu->sym->name) {
+			str_printf(&help, "CONFIG_%s:\n\n", menu->sym->name);
+			str_append(&help, _(menu_get_help(menu)));
+			str_append(&help, "\n");
+			get_symbol_str(&help, menu->sym);
+		}
+	} else {
+		str_append(&help, nohelp_text);
+	}
+	show_scroll_win(main_window, _(menu_get_prompt(menu)), str_get(&help));
+	str_free(&help);
+}
+
+static void conf_choice(struct menu *menu)
+{
+	const char *prompt = _(menu_get_prompt(menu));
+	struct menu *child = 0;
+	struct symbol *active;
+	int selected_index = 0;
+	int last_top_row = 0;
+	int res, i = 0;
+
+	active = sym_get_choice_value(menu->sym);
+	/* this is mostly duplicated from the conf() function. */
+	while (!global_exit) {
+		reset_menu();
+
+		for (i = 0, child = menu->list; child; child = child->next) {
+			if (!show_all_items && !menu_is_visible(child))
+				continue;
+
+			if (child->sym == sym_get_choice_value(menu->sym))
+				item_make(child, ':', "<X> %s",
+						_(menu_get_prompt(child)));
+			else
+				item_make(child, ':', "    %s",
+						_(menu_get_prompt(child)));
+			if (child->sym == active){
+				last_top_row = top_row(curses_menu);
+				selected_index = i;
+			}
+			i++;
+		}
+		show_menu(prompt ? _(prompt) : _("Choice Menu"),
+				_(radiolist_instructions),
+				selected_index,
+				&last_top_row);
+		while (!global_exit && (res = wgetch(menu_win(curses_menu)))) {
+			if (process_special_keys(
+						&res,
+						(struct menu *) item_data()))
+				break;
+			switch (res) {
+			case KEY_DOWN:
+				menu_driver(curses_menu, REQ_DOWN_ITEM);
+				break;
+			case KEY_UP:
+				menu_driver(curses_menu, REQ_UP_ITEM);
+				break;
+			case KEY_NPAGE:
+				menu_driver(curses_menu, REQ_SCR_DPAGE);
+				break;
+			case KEY_PPAGE:
+				menu_driver(curses_menu, REQ_SCR_UPAGE);
+				break;
+			case KEY_HOME:
+				menu_driver(curses_menu, REQ_FIRST_ITEM);
+				break;
+			case KEY_END:
+				menu_driver(curses_menu, REQ_LAST_ITEM);
+				break;
+			case 'h':
+			case '?':
+				show_help((struct menu *) item_data());
+				break;
+			}
+			if (res == 10 || res == 27 || res == ' ' ||
+				res == KEY_LEFT)
+				break;
+			else if (canbhot(res)) {
+				/* check for hot keys: */
+				int tmp = get_next_hot(res);
+				if (tmp != -1)
+					center_item(tmp, &last_top_row);
+			}
+			refresh_all_windows(main_window);
+		}
+		/* if ESC or left */
+		if (res == 27 || res == KEY_LEFT)
+			break;
+
+		child = item_data();
+		if (!child || !menu_is_visible(child))
+			continue;
+		switch (res) {
+		case ' ':
+		case  10:
+		case KEY_RIGHT:
+			sym_set_tristate_value(child->sym, yes);
+			return;
+		case 'h':
+		case '?':
+			show_help(child);
+			active = child->sym;
+			break;
+		case KEY_EXIT:
+			return;
+		}
+	}
+}
+
+static void conf_string(struct menu *menu)
+{
+	const char *prompt = menu_get_prompt(menu);
+	char dialog_input_result[256];
+
+	while (1) {
+		int res;
+		const char *heading;
+
+		switch (sym_get_type(menu->sym)) {
+		case S_INT:
+			heading = _(inputbox_instructions_int);
+			break;
+		case S_HEX:
+			heading = _(inputbox_instructions_hex);
+			break;
+		case S_STRING:
+			heading = _(inputbox_instructions_string);
+			break;
+		default:
+			heading = _("Internal nconf error!");
+		}
+		res = dialog_inputbox(main_window,
+				prompt ? _(prompt) : _("Main Menu"),
+				heading,
+				sym_get_string_value(menu->sym),
+				dialog_input_result,
+				sizeof(dialog_input_result));
+		switch (res) {
+		case 0:
+			if (sym_set_string_value(menu->sym,
+						dialog_input_result))
+				return;
+			btn_dialog(main_window,
+				_("You have made an invalid entry."), 0);
+			break;
+		case 1:
+			show_help(menu);
+			break;
+		case KEY_EXIT:
+			return;
+		}
+	}
+}
+
+static void conf_load(void)
+{
+	char dialog_input_result[256];
+	while (1) {
+		int res;
+		res = dialog_inputbox(main_window,
+				NULL, load_config_text,
+				filename,
+				dialog_input_result,
+				sizeof(dialog_input_result));
+		switch (res) {
+		case 0:
+			if (!dialog_input_result[0])
+				return;
+			if (!conf_read(dialog_input_result)) {
+				set_config_filename(dialog_input_result);
+				sym_set_change_count(1);
+				return;
+			}
+			btn_dialog(main_window, _("File does not exist!"), 0);
+			break;
+		case 1:
+			show_scroll_win(main_window,
+					_("Load Alternate Configuration"),
+					load_config_help);
+			break;
+		case KEY_EXIT:
+			return;
+		}
+	}
+}
+
+static void conf_save(void)
+{
+	char dialog_input_result[256];
+	while (1) {
+		int res;
+		res = dialog_inputbox(main_window,
+				NULL, save_config_text,
+				filename,
+				dialog_input_result,
+				sizeof(dialog_input_result));
+		switch (res) {
+		case 0:
+			if (!dialog_input_result[0])
+				return;
+			supress_stdout(0);
+			res = conf_write(dialog_input_result);
+			supress_stdout(1);
+			if (!res) {
+				char buf[1024];
+				sprintf(buf, "%s %s",
+					_("configuration file saved to: "),
+					dialog_input_result);
+				btn_dialog(main_window,
+					   buf, 1, "<OK>");
+				set_config_filename(dialog_input_result);
+				return;
+			}
+			btn_dialog(main_window, _("Can't create file! "
+				"Probably a nonexistent directory."),
+				1, "<OK>");
+			break;
+		case 1:
+			show_scroll_win(main_window,
+				_("Save Alternate Configuration"),
+				save_config_help);
+			break;
+		case KEY_EXIT:
+			return;
+		}
+	}
+}
+
+void setup_windows(void)
+{
+	if (main_window != NULL)
+		delwin(main_window);
+
+	/* set up the menu and menu window */
+	main_window = newwin(LINES-2, COLS-2, 2, 1);
+	keypad(main_window, TRUE);
+	mwin_max_lines = LINES-6;
+	mwin_max_cols = COLS-6;
+
+	/* panels order is from bottom to top */
+	new_panel(main_window);
+}
+
+int main(int ac, char **av)
+{
+	char *mode;
+
+	setlocale(LC_ALL, "");
+	bindtextdomain(PACKAGE, LOCALEDIR);
+	textdomain(PACKAGE);
+
+	conf_parse(av[1]);
+	conf_read(NULL);
+
+	mode = getenv("NCONFIG_MODE");
+	if (mode) {
+		if (!strcasecmp(mode, "single_menu"))
+			single_menu_mode = 1;
+	}
+
+	/* Initialize curses */
+	initscr();
+	/* set color theme */
+	set_colors();
+
+	cbreak();
+	noecho();
+	keypad(stdscr, TRUE);
+	curs_set(0);
+
+	if (COLS < 75 || LINES < 20) {
+		endwin();
+		printf("Your terminal should have at "
+			"least 20 lines and 75 columns\n");
+		return 1;
+	}
+
+	notimeout(stdscr, FALSE);
+	ESCDELAY = 1;
+
+	/* set btns menu */
+	curses_menu = new_menu(curses_menu_items);
+	menu_opts_off(curses_menu, O_SHOWDESC);
+	menu_opts_off(curses_menu, O_SHOWMATCH);
+	menu_opts_on(curses_menu, O_ONEVALUE);
+	menu_opts_on(curses_menu, O_NONCYCLIC);
+	set_menu_mark(curses_menu, " ");
+	set_menu_fore(curses_menu, attributes[MAIN_MENU_FORE]);
+	set_menu_back(curses_menu, attributes[MAIN_MENU_BACK]);
+	set_menu_grey(curses_menu, attributes[MAIN_MENU_GREY]);
+
+	set_config_filename(conf_get_configname());
+	setup_windows();
+
+	/* check for KEY_FUNC(1) */
+	if (has_key(KEY_F(1)) == FALSE) {
+		show_scroll_win(main_window,
+				_("Instructions"),
+				_(menu_no_f_instructions));
+	}
+
+
+
+	/* do the work */
+	while (!global_exit) {
+		conf(&rootmenu);
+		if (!global_exit && do_exit() == 0)
+			break;
+	}
+	/* ok, we are done */
+	unpost_menu(curses_menu);
+	free_menu(curses_menu);
+	delwin(main_window);
+	clear();
+	refresh();
+	endwin();
+	return 0;
+}
+
diff --git a/scripts/kconfig/nconf.gui.c b/scripts/kconfig/nconf.gui.c
new file mode 100644
index 0000000..a9d9344
--- /dev/null
+++ b/scripts/kconfig/nconf.gui.c
@@ -0,0 +1,617 @@
+/*
+ * Copyright (C) 2008 Nir Tzachar <nir.tzachar@gmail.com?
+ * Released under the terms of the GNU GPL v2.0.
+ *
+ * Derived from menuconfig.
+ *
+ */
+#include "nconf.h"
+
+/* a list of all the different widgets we use */
+attributes_t attributes[ATTR_MAX+1] = {0};
+
+/* available colors:
+   COLOR_BLACK   0
+   COLOR_RED     1
+   COLOR_GREEN   2
+   COLOR_YELLOW  3
+   COLOR_BLUE    4
+   COLOR_MAGENTA 5
+   COLOR_CYAN    6
+   COLOR_WHITE   7
+   */
+static void set_normal_colors(void)
+{
+	init_pair(NORMAL, -1, -1);
+	init_pair(MAIN_HEADING, COLOR_MAGENTA, -1);
+
+	/* FORE is for the selected item */
+	init_pair(MAIN_MENU_FORE, -1, -1);
+	/* BACK for all the rest */
+	init_pair(MAIN_MENU_BACK, -1, -1);
+	init_pair(MAIN_MENU_GREY, -1, -1);
+	init_pair(MAIN_MENU_HEADING, COLOR_GREEN, -1);
+	init_pair(MAIN_MENU_BOX, COLOR_YELLOW, -1);
+
+	init_pair(SCROLLWIN_TEXT, -1, -1);
+	init_pair(SCROLLWIN_HEADING, COLOR_GREEN, -1);
+	init_pair(SCROLLWIN_BOX, COLOR_YELLOW, -1);
+
+	init_pair(DIALOG_TEXT, -1, -1);
+	init_pair(DIALOG_BOX, COLOR_YELLOW, -1);
+	init_pair(DIALOG_MENU_BACK, COLOR_YELLOW, -1);
+	init_pair(DIALOG_MENU_FORE, COLOR_RED, -1);
+
+	init_pair(INPUT_BOX, COLOR_YELLOW, -1);
+	init_pair(INPUT_HEADING, COLOR_GREEN, -1);
+	init_pair(INPUT_TEXT, -1, -1);
+	init_pair(INPUT_FIELD, -1, -1);
+
+	init_pair(FUNCTION_HIGHLIGHT, -1, -1);
+	init_pair(FUNCTION_TEXT, COLOR_BLUE, -1);
+}
+
+/* available attributes:
+   A_NORMAL        Normal display (no highlight)
+   A_STANDOUT      Best highlighting mode of the terminal.
+   A_UNDERLINE     Underlining
+   A_REVERSE       Reverse video
+   A_BLINK         Blinking
+   A_DIM           Half bright
+   A_BOLD          Extra bright or bold
+   A_PROTECT       Protected mode
+   A_INVIS         Invisible or blank mode
+   A_ALTCHARSET    Alternate character set
+   A_CHARTEXT      Bit-mask to extract a character
+   COLOR_PAIR(n)   Color-pair number n
+   */
+static void normal_color_theme(void)
+{
+	/* automatically add color... */
+#define mkattr(name, attr) do { \
+attributes[name] = attr | COLOR_PAIR(name); } while (0)
+	mkattr(NORMAL, NORMAL);
+	mkattr(MAIN_HEADING, A_BOLD | A_UNDERLINE);
+
+	mkattr(MAIN_MENU_FORE, A_REVERSE);
+	mkattr(MAIN_MENU_BACK, A_NORMAL);
+	mkattr(MAIN_MENU_GREY, A_NORMAL);
+	mkattr(MAIN_MENU_HEADING, A_BOLD);
+	mkattr(MAIN_MENU_BOX, A_NORMAL);
+
+	mkattr(SCROLLWIN_TEXT, A_NORMAL);
+	mkattr(SCROLLWIN_HEADING, A_BOLD);
+	mkattr(SCROLLWIN_BOX, A_BOLD);
+
+	mkattr(DIALOG_TEXT, A_BOLD);
+	mkattr(DIALOG_BOX, A_BOLD);
+	mkattr(DIALOG_MENU_FORE, A_STANDOUT);
+	mkattr(DIALOG_MENU_BACK, A_NORMAL);
+
+	mkattr(INPUT_BOX, A_NORMAL);
+	mkattr(INPUT_HEADING, A_BOLD);
+	mkattr(INPUT_TEXT, A_NORMAL);
+	mkattr(INPUT_FIELD, A_UNDERLINE);
+
+	mkattr(FUNCTION_HIGHLIGHT, A_BOLD);
+	mkattr(FUNCTION_TEXT, A_REVERSE);
+}
+
+static void no_colors_theme(void)
+{
+	/* automatically add highlight, no color */
+#define mkattrn(name, attr) { attributes[name] = attr; }
+
+	mkattrn(NORMAL, NORMAL);
+	mkattrn(MAIN_HEADING, A_BOLD | A_UNDERLINE);
+
+	mkattrn(MAIN_MENU_FORE, A_STANDOUT);
+	mkattrn(MAIN_MENU_BACK, A_NORMAL);
+	mkattrn(MAIN_MENU_GREY, A_NORMAL);
+	mkattrn(MAIN_MENU_HEADING, A_BOLD);
+	mkattrn(MAIN_MENU_BOX, A_NORMAL);
+
+	mkattrn(SCROLLWIN_TEXT, A_NORMAL);
+	mkattrn(SCROLLWIN_HEADING, A_BOLD);
+	mkattrn(SCROLLWIN_BOX, A_BOLD);
+
+	mkattrn(DIALOG_TEXT, A_NORMAL);
+	mkattrn(DIALOG_BOX, A_BOLD);
+	mkattrn(DIALOG_MENU_FORE, A_STANDOUT);
+	mkattrn(DIALOG_MENU_BACK, A_NORMAL);
+
+	mkattrn(INPUT_BOX, A_BOLD);
+	mkattrn(INPUT_HEADING, A_BOLD);
+	mkattrn(INPUT_TEXT, A_NORMAL);
+	mkattrn(INPUT_FIELD, A_UNDERLINE);
+
+	mkattrn(FUNCTION_HIGHLIGHT, A_BOLD);
+	mkattrn(FUNCTION_TEXT, A_REVERSE);
+}
+
+void set_colors()
+{
+	start_color();
+	use_default_colors();
+	set_normal_colors();
+	if (has_colors()) {
+		normal_color_theme();
+	} else {
+		/* give deafults */
+		no_colors_theme();
+	}
+}
+
+
+/* this changes the windows attributes !!! */
+void print_in_middle(WINDOW *win,
+		int starty,
+		int startx,
+		int width,
+		const char *string,
+		chtype color)
+{      int length, x, y;
+	float temp;
+
+
+	if (win == NULL)
+		win = stdscr;
+	getyx(win, y, x);
+	if (startx != 0)
+		x = startx;
+	if (starty != 0)
+		y = starty;
+	if (width == 0)
+		width = 80;
+
+	length = strlen(string);
+	temp = (width - length) / 2;
+	x = startx + (int)temp;
+	wattrset(win, color);
+	mvwprintw(win, y, x, "%s", string);
+	refresh();
+}
+
+int get_line_no(const char *text)
+{
+	int i;
+	int total = 1;
+
+	if (!text)
+		return 0;
+
+	for (i = 0; text[i] != '\0'; i++)
+		if (text[i] == '\n')
+			total++;
+	return total;
+}
+
+const char *get_line(const char *text, int line_no)
+{
+	int i;
+	int lines = 0;
+
+	if (!text)
+		return 0;
+
+	for (i = 0; text[i] != '\0' && lines < line_no; i++)
+		if (text[i] == '\n')
+			lines++;
+	return text+i;
+}
+
+int get_line_length(const char *line)
+{
+	int res = 0;
+	while (*line != '\0' && *line != '\n') {
+		line++;
+		res++;
+	}
+	return res;
+}
+
+/* print all lines to the window. */
+void fill_window(WINDOW *win, const char *text)
+{
+	int x, y;
+	int total_lines = get_line_no(text);
+	int i;
+
+	getmaxyx(win, y, x);
+	/* do not go over end of line */
+	total_lines = min(total_lines, y);
+	for (i = 0; i < total_lines; i++) {
+		char tmp[x+10];
+		const char *line = get_line(text, i);
+		int len = get_line_length(line);
+		strncpy(tmp, line, min(len, x));
+		tmp[len] = '\0';
+		mvwprintw(win, i, 0, "%s", tmp);
+	}
+}
+
+/* get the message, and buttons.
+ * each button must be a char*
+ * return the selected button
+ *
+ * this dialog is used for 2 different things:
+ * 1) show a text box, no buttons.
+ * 2) show a dialog, with horizontal buttons
+ */
+int btn_dialog(WINDOW *main_window, const char *msg, int btn_num, ...)
+{
+	va_list ap;
+	char *btn;
+	int btns_width = 0;
+	int msg_lines = 0;
+	int msg_width = 0;
+	int total_width;
+	int win_rows = 0;
+	WINDOW *win;
+	WINDOW *msg_win;
+	WINDOW *menu_win;
+	MENU *menu;
+	ITEM *btns[btn_num+1];
+	int i, x, y;
+	int res = -1;
+
+
+	va_start(ap, btn_num);
+	for (i = 0; i < btn_num; i++) {
+		btn = va_arg(ap, char *);
+		btns[i] = new_item(btn, "");
+		btns_width += strlen(btn)+1;
+	}
+	va_end(ap);
+	btns[btn_num] = NULL;
+
+	/* find the widest line of msg: */
+	msg_lines = get_line_no(msg);
+	for (i = 0; i < msg_lines; i++) {
+		const char *line = get_line(msg, i);
+		int len = get_line_length(line);
+		if (msg_width < len)
+			msg_width = len;
+	}
+
+	total_width = max(msg_width, btns_width);
+	/* place dialog in middle of screen */
+	y = (LINES-(msg_lines+4))/2;
+	x = (COLS-(total_width+4))/2;
+
+
+	/* create the windows */
+	if (btn_num > 0)
+		win_rows = msg_lines+4;
+	else
+		win_rows = msg_lines+2;
+
+	win = newwin(win_rows, total_width+4, y, x);
+	keypad(win, TRUE);
+	menu_win = derwin(win, 1, btns_width, win_rows-2,
+			1+(total_width+2-btns_width)/2);
+	menu = new_menu(btns);
+	msg_win = derwin(win, win_rows-2, msg_width, 1,
+			1+(total_width+2-msg_width)/2);
+
+	set_menu_fore(menu, attributes[DIALOG_MENU_FORE]);
+	set_menu_back(menu, attributes[DIALOG_MENU_BACK]);
+
+	wattrset(win, attributes[DIALOG_BOX]);
+	box(win, 0, 0);
+
+	/* print message */
+	wattrset(msg_win, attributes[DIALOG_TEXT]);
+	fill_window(msg_win, msg);
+
+	set_menu_win(menu, win);
+	set_menu_sub(menu, menu_win);
+	set_menu_format(menu, 1, btn_num);
+	menu_opts_off(menu, O_SHOWDESC);
+	menu_opts_off(menu, O_SHOWMATCH);
+	menu_opts_on(menu, O_ONEVALUE);
+	menu_opts_on(menu, O_NONCYCLIC);
+	set_menu_mark(menu, "");
+	post_menu(menu);
+
+
+	touchwin(win);
+	refresh_all_windows(main_window);
+	while ((res = wgetch(win))) {
+		switch (res) {
+		case KEY_LEFT:
+			menu_driver(menu, REQ_LEFT_ITEM);
+			break;
+		case KEY_RIGHT:
+			menu_driver(menu, REQ_RIGHT_ITEM);
+			break;
+		case 10: /* ENTER */
+		case 27: /* ESCAPE */
+		case ' ':
+		case KEY_F(F_BACK):
+		case KEY_F(F_EXIT):
+			break;
+		}
+		touchwin(win);
+		refresh_all_windows(main_window);
+
+		if (res == 10 || res == ' ') {
+			res = item_index(current_item(menu));
+			break;
+		} else if (res == 27 || res == KEY_F(F_BACK) ||
+				res == KEY_F(F_EXIT)) {
+			res = KEY_EXIT;
+			break;
+		}
+	}
+
+	unpost_menu(menu);
+	free_menu(menu);
+	for (i = 0; i < btn_num; i++)
+		free_item(btns[i]);
+
+	delwin(win);
+	return res;
+}
+
+int dialog_inputbox(WINDOW *main_window,
+		const char *title, const char *prompt,
+		const char *init, char *result, int result_len)
+{
+	int prompt_lines = 0;
+	int prompt_width = 0;
+	WINDOW *win;
+	WINDOW *prompt_win;
+	WINDOW *form_win;
+	PANEL *panel;
+	int i, x, y;
+	int res = -1;
+	int cursor_position = strlen(init);
+
+
+	/* find the widest line of msg: */
+	prompt_lines = get_line_no(prompt);
+	for (i = 0; i < prompt_lines; i++) {
+		const char *line = get_line(prompt, i);
+		int len = get_line_length(line);
+		prompt_width = max(prompt_width, len);
+	}
+
+	if (title)
+		prompt_width = max(prompt_width, strlen(title));
+
+	/* place dialog in middle of screen */
+	y = (LINES-(prompt_lines+4))/2;
+	x = (COLS-(prompt_width+4))/2;
+
+	strncpy(result, init, result_len);
+
+	/* create the windows */
+	win = newwin(prompt_lines+6, prompt_width+7, y, x);
+	prompt_win = derwin(win, prompt_lines+1, prompt_width, 2, 2);
+	form_win = derwin(win, 1, prompt_width, prompt_lines+3, 2);
+	keypad(form_win, TRUE);
+
+	wattrset(form_win, attributes[INPUT_FIELD]);
+
+	wattrset(win, attributes[INPUT_BOX]);
+	box(win, 0, 0);
+	wattrset(win, attributes[INPUT_HEADING]);
+	if (title)
+		mvwprintw(win, 0, 3, "%s", title);
+
+	/* print message */
+	wattrset(prompt_win, attributes[INPUT_TEXT]);
+	fill_window(prompt_win, prompt);
+
+	mvwprintw(form_win, 0, 0, "%*s", prompt_width, " ");
+	mvwprintw(form_win, 0, 0, "%s", result);
+
+	/* create panels */
+	panel = new_panel(win);
+
+	/* show the cursor */
+	curs_set(1);
+
+	touchwin(win);
+	refresh_all_windows(main_window);
+	while ((res = wgetch(form_win))) {
+		int len = strlen(result);
+		switch (res) {
+		case 10: /* ENTER */
+		case 27: /* ESCAPE */
+		case KEY_F(F_HELP):
+		case KEY_F(F_EXIT):
+		case KEY_F(F_BACK):
+			break;
+		case 127:
+		case KEY_BACKSPACE:
+			if (cursor_position > 0) {
+				memmove(&result[cursor_position-1],
+						&result[cursor_position],
+						len-cursor_position+1);
+				cursor_position--;
+			}
+			break;
+		case KEY_DC:
+			if (cursor_position >= 0 && cursor_position < len) {
+				memmove(&result[cursor_position],
+						&result[cursor_position+1],
+						len-cursor_position+1);
+			}
+			break;
+		case KEY_UP:
+		case KEY_RIGHT:
+			if (cursor_position < len &&
+			    cursor_position < min(result_len, prompt_width))
+				cursor_position++;
+			break;
+		case KEY_DOWN:
+		case KEY_LEFT:
+			if (cursor_position > 0)
+				cursor_position--;
+			break;
+		default:
+			if ((isgraph(res) || isspace(res)) &&
+					len-2 < result_len) {
+				/* insert the char at the proper position */
+				memmove(&result[cursor_position+1],
+						&result[cursor_position],
+						len+1);
+				result[cursor_position] = res;
+				cursor_position++;
+			} else {
+				mvprintw(0, 0, "unknow key: %d\n", res);
+			}
+			break;
+		}
+		wmove(form_win, 0, 0);
+		wclrtoeol(form_win);
+		mvwprintw(form_win, 0, 0, "%*s", prompt_width, " ");
+		mvwprintw(form_win, 0, 0, "%s", result);
+		wmove(form_win, 0, cursor_position);
+		touchwin(win);
+		refresh_all_windows(main_window);
+
+		if (res == 10) {
+			res = 0;
+			break;
+		} else if (res == 27 || res == KEY_F(F_BACK) ||
+				res == KEY_F(F_EXIT)) {
+			res = KEY_EXIT;
+			break;
+		} else if (res == KEY_F(F_HELP)) {
+			res = 1;
+			break;
+		}
+	}
+
+	/* hide the cursor */
+	curs_set(0);
+	del_panel(panel);
+	delwin(prompt_win);
+	delwin(form_win);
+	delwin(win);
+	return res;
+}
+
+/* refresh all windows in the correct order */
+void refresh_all_windows(WINDOW *main_window)
+{
+	update_panels();
+	touchwin(main_window);
+	refresh();
+}
+
+/* layman's scrollable window... */
+void show_scroll_win(WINDOW *main_window,
+		const char *title,
+		const char *text)
+{
+	int res;
+	int total_lines = get_line_no(text);
+	int x, y;
+	int start_x = 0, start_y = 0;
+	int text_lines = 0, text_cols = 0;
+	int total_cols = 0;
+	int win_cols = 0;
+	int win_lines = 0;
+	int i = 0;
+	WINDOW *win;
+	WINDOW *pad;
+	PANEL *panel;
+
+	/* find the widest line of msg: */
+	total_lines = get_line_no(text);
+	for (i = 0; i < total_lines; i++) {
+		const char *line = get_line(text, i);
+		int len = get_line_length(line);
+		total_cols = max(total_cols, len+2);
+	}
+
+	/* create the pad */
+	pad = newpad(total_lines+10, total_cols+10);
+	wattrset(pad, attributes[SCROLLWIN_TEXT]);
+	fill_window(pad, text);
+
+	win_lines = min(total_lines+4, LINES-2);
+	win_cols = min(total_cols+2, COLS-2);
+	text_lines = max(win_lines-4, 0);
+	text_cols = max(win_cols-2, 0);
+
+	/* place window in middle of screen */
+	y = (LINES-win_lines)/2;
+	x = (COLS-win_cols)/2;
+
+	win = newwin(win_lines, win_cols, y, x);
+	keypad(win, TRUE);
+	/* show the help in the help window, and show the help panel */
+	wattrset(win, attributes[SCROLLWIN_BOX]);
+	box(win, 0, 0);
+	wattrset(win, attributes[SCROLLWIN_HEADING]);
+	mvwprintw(win, 0, 3, " %s ", title);
+	panel = new_panel(win);
+
+	/* handle scrolling */
+	do {
+
+		copywin(pad, win, start_y, start_x, 2, 2, text_lines,
+				text_cols, 0);
+		print_in_middle(win,
+				text_lines+2,
+				0,
+				text_cols,
+				"<OK>",
+				attributes[DIALOG_MENU_FORE]);
+		wrefresh(win);
+
+		res = wgetch(win);
+		switch (res) {
+		case KEY_NPAGE:
+		case ' ':
+			start_y += text_lines-2;
+			break;
+		case KEY_PPAGE:
+			start_y -= text_lines+2;
+			break;
+		case KEY_HOME:
+			start_y = 0;
+			break;
+		case KEY_END:
+			start_y = total_lines-text_lines;
+			break;
+		case KEY_DOWN:
+		case 'j':
+			start_y++;
+			break;
+		case KEY_UP:
+		case 'k':
+			start_y--;
+			break;
+		case KEY_LEFT:
+		case 'h':
+			start_x--;
+			break;
+		case KEY_RIGHT:
+		case 'l':
+			start_x++;
+			break;
+		}
+		if (res == 10 || res == 27 || res == 'q'
+		    || res == KEY_F(F_BACK) || res == KEY_F(F_EXIT)) {
+			break;
+		}
+		if (start_y < 0)
+			start_y = 0;
+		if (start_y >= total_lines-text_lines)
+			start_y = total_lines-text_lines;
+		if (start_x < 0)
+			start_x = 0;
+		if (start_x >= total_cols-text_cols)
+			start_x = total_cols-text_cols;
+	} while (res);
+
+	del_panel(panel);
+	delwin(win);
+	refresh_all_windows(main_window);
+}
diff --git a/scripts/kconfig/nconf.h b/scripts/kconfig/nconf.h
new file mode 100644
index 0000000..fb42966
--- /dev/null
+++ b/scripts/kconfig/nconf.h
@@ -0,0 +1,95 @@
+/*
+ * Copyright (C) 2008 Nir Tzachar <nir.tzachar@gmail.com?
+ * Released under the terms of the GNU GPL v2.0.
+ *
+ * Derived from menuconfig.
+ *
+ */
+
+#include <ctype.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <limits.h>
+#include <stdarg.h>
+#include <stdlib.h>
+#include <string.h>
+#include <unistd.h>
+#include <locale.h>
+#include <curses.h>
+#include <menu.h>
+#include <panel.h>
+#include <form.h>
+
+#include <stdio.h>
+#include <time.h>
+#include <sys/time.h>
+
+#include "ncurses.h"
+
+#define max(a, b) ({\
+		typeof(a) _a = a;\
+		typeof(b) _b = b;\
+		_a > _b ? _a : _b; })
+
+#define min(a, b) ({\
+		typeof(a) _a = a;\
+		typeof(b) _b = b;\
+		_a < _b ? _a : _b; })
+
+typedef enum {
+	NORMAL = 1,
+	MAIN_HEADING,
+	MAIN_MENU_BOX,
+	MAIN_MENU_FORE,
+	MAIN_MENU_BACK,
+	MAIN_MENU_GREY,
+	MAIN_MENU_HEADING,
+	SCROLLWIN_TEXT,
+	SCROLLWIN_HEADING,
+	SCROLLWIN_BOX,
+	DIALOG_TEXT,
+	DIALOG_MENU_FORE,
+	DIALOG_MENU_BACK,
+	DIALOG_BOX,
+	INPUT_BOX,
+	INPUT_HEADING,
+	INPUT_TEXT,
+	INPUT_FIELD,
+	FUNCTION_TEXT,
+	FUNCTION_HIGHLIGHT,
+	ATTR_MAX
+} attributes_t;
+extern attributes_t attributes[];
+
+typedef enum {
+	F_HELP = 1,
+	F_SYMBOL = 2,
+	F_INSTS = 3,
+	F_CONF = 4,
+	F_BACK = 5,
+	F_SAVE = 6,
+	F_LOAD = 7,
+	F_EXIT = 8
+} function_key;
+
+void set_colors(void);
+
+/* this changes the windows attributes !!! */
+void print_in_middle(WINDOW *win,
+		int starty,
+		int startx,
+		int width,
+		const char *string,
+		chtype color);
+int get_line_length(const char *line);
+int get_line_no(const char *text);
+const char *get_line(const char *text, int line_no);
+void fill_window(WINDOW *win, const char *text);
+int btn_dialog(WINDOW *main_window, const char *msg, int btn_num, ...);
+int dialog_inputbox(WINDOW *main_window,
+		const char *title, const char *prompt,
+		const char *init, char *result, int result_len);
+void refresh_all_windows(WINDOW *main_window);
+void show_scroll_win(WINDOW *main_window,
+		const char *title,
+		const char *text);
diff --git a/scripts/kconfig/qconf.cc b/scripts/kconfig/qconf.cc
index e4eeb59..546c6bf 100644
--- a/scripts/kconfig/qconf.cc
+++ b/scripts/kconfig/qconf.cc
@@ -5,6 +5,7 @@
 
 #include <qapplication.h>
 #include <qmainwindow.h>
+#include <qdesktopwidget.h>
 #include <qtoolbar.h>
 #include <qlayout.h>
 #include <qvbox.h>
@@ -57,11 +58,10 @@ QValueList<int> ConfigSettings::readSizes(const QString& key, bool *ok)
 {
 	QValueList<int> result;
 	QStringList entryList = readListEntry(key, ok);
-	if (ok) {
-		QStringList::Iterator it;
-		for (it = entryList.begin(); it != entryList.end(); ++it)
-			result.push_back((*it).toInt());
-	}
+	QStringList::Iterator it;
+
+	for (it = entryList.begin(); it != entryList.end(); ++it)
+		result.push_back((*it).toInt());
 
 	return result;
 }
@@ -114,7 +114,7 @@ void ConfigItem::updateMenu(void)
 
 	sym = menu->sym;
 	prop = menu->prompt;
-	prompt = QString::fromLocal8Bit(menu_get_prompt(menu));
+	prompt = _(menu_get_prompt(menu));
 
 	if (prop) switch (prop->type) {
 	case P_MENU:
@@ -148,7 +148,7 @@ void ConfigItem::updateMenu(void)
 	case S_TRISTATE:
 		char ch;
 
-		if (!sym_is_changable(sym) && !list->showAll) {
+		if (!sym_is_changable(sym) && list->optMode == normalOpt) {
 			setPixmap(promptColIdx, 0);
 			setText(noColIdx, QString::null);
 			setText(modColIdx, QString::null);
@@ -208,7 +208,7 @@ void ConfigItem::updateMenu(void)
 		break;
 	}
 	if (!sym_has_value(sym) && visible)
-		prompt += " (NEW)";
+		prompt += _(" (NEW)");
 set_prompt:
 	setText(promptColIdx, prompt);
 }
@@ -297,10 +297,10 @@ void ConfigLineEdit::show(ConfigItem* i)
 void ConfigLineEdit::keyPressEvent(QKeyEvent* e)
 {
 	switch (e->key()) {
-	case Key_Escape:
+	case Qt::Key_Escape:
 		break;
-	case Key_Return:
-	case Key_Enter:
+	case Qt::Key_Return:
+	case Qt::Key_Enter:
 		sym_set_string_value(item->menu->sym, text().latin1());
 		parent()->updateList(item);
 		break;
@@ -319,7 +319,7 @@ ConfigList::ConfigList(ConfigView* p, const char *name)
 	  symbolYesPix(xpm_symbol_yes), symbolModPix(xpm_symbol_mod), symbolNoPix(xpm_symbol_no),
 	  choiceYesPix(xpm_choice_yes), choiceNoPix(xpm_choice_no),
 	  menuPix(xpm_menu), menuInvPix(xpm_menu_inv), menuBackPix(xpm_menuback), voidPix(xpm_void),
-	  showAll(false), showName(false), showRange(false), showData(false),
+	  showName(false), showRange(false), showData(false), optMode(normalOpt),
 	  rootEntry(0), headerPopup(0)
 {
 	int i;
@@ -336,21 +336,32 @@ ConfigList::ConfigList(ConfigView* p, const char *name)
 
 	if (name) {
 		configSettings->beginGroup(name);
-		showAll = configSettings->readBoolEntry("/showAll", false);
 		showName = configSettings->readBoolEntry("/showName", false);
 		showRange = configSettings->readBoolEntry("/showRange", false);
 		showData = configSettings->readBoolEntry("/showData", false);
+		optMode = (enum optionMode)configSettings->readNumEntry("/optionMode", false);
 		configSettings->endGroup();
 		connect(configApp, SIGNAL(aboutToQuit()), SLOT(saveSettings()));
 	}
 
 	for (i = 0; i < colNr; i++)
 		colMap[i] = colRevMap[i] = -1;
-	addColumn(promptColIdx, "Option");
+	addColumn(promptColIdx, _("Option"));
 
 	reinit();
 }
 
+bool ConfigList::menuSkip(struct menu *menu)
+{
+	if (optMode == normalOpt && menu_is_visible(menu))
+		return false;
+	if (optMode == promptOpt && menu_has_prompt(menu))
+		return false;
+	if (optMode == allOpt)
+		return false;
+	return true;
+}
+
 void ConfigList::reinit(void)
 {
 	removeColumn(dataColIdx);
@@ -360,14 +371,14 @@ void ConfigList::reinit(void)
 	removeColumn(nameColIdx);
 
 	if (showName)
-		addColumn(nameColIdx, "Name");
+		addColumn(nameColIdx, _("Name"));
 	if (showRange) {
 		addColumn(noColIdx, "N");
 		addColumn(modColIdx, "M");
 		addColumn(yesColIdx, "Y");
 	}
 	if (showData)
-		addColumn(dataColIdx, "Value");
+		addColumn(dataColIdx, _("Value"));
 
 	updateListAll();
 }
@@ -379,7 +390,7 @@ void ConfigList::saveSettings(void)
 		configSettings->writeEntry("/showName", showName);
 		configSettings->writeEntry("/showRange", showRange);
 		configSettings->writeEntry("/showData", showData);
-		configSettings->writeEntry("/showAll", showAll);
+		configSettings->writeEntry("/optionMode", (int)optMode);
 		configSettings->endGroup();
 	}
 }
@@ -605,7 +616,7 @@ void ConfigList::updateMenuList(P* parent, struct menu* menu)
 		}
 
 		visible = menu_is_visible(child);
-		if (showAll || visible) {
+		if (!menuSkip(child)) {
 			if (!child->sym && !child->list && !child->prompt)
 				continue;
 			if (!item || item->menu != child)
@@ -639,7 +650,7 @@ void ConfigList::keyPressEvent(QKeyEvent* ev)
 	struct menu *menu;
 	enum prop_type type;
 
-	if (ev->key() == Key_Escape && mode != fullMode && mode != listMode) {
+	if (ev->key() == Qt::Key_Escape && mode != fullMode && mode != listMode) {
 		emit parentSelected();
 		ev->accept();
 		return;
@@ -652,8 +663,8 @@ void ConfigList::keyPressEvent(QKeyEvent* ev)
 	item = (ConfigItem*)i;
 
 	switch (ev->key()) {
-	case Key_Return:
-	case Key_Enter:
+	case Qt::Key_Return:
+	case Qt::Key_Enter:
 		if (item->goParent) {
 			emit parentSelected();
 			break;
@@ -667,16 +678,16 @@ void ConfigList::keyPressEvent(QKeyEvent* ev)
 			emit menuSelected(menu);
 			break;
 		}
-	case Key_Space:
+	case Qt::Key_Space:
 		changeValue(item);
 		break;
-	case Key_N:
+	case Qt::Key_N:
 		setValue(item, no);
 		break;
-	case Key_M:
+	case Qt::Key_M:
 		setValue(item, mod);
 		break;
-	case Key_Y:
+	case Qt::Key_Y:
 		setValue(item, yes);
 		break;
 	default:
@@ -803,7 +814,7 @@ void ConfigList::contextMenuEvent(QContextMenuEvent *e)
 			QAction *action;
 
 			headerPopup = new QPopupMenu(this);
-			action = new QAction(NULL, "Show Name", 0, this);
+			action = new QAction(NULL, _("Show Name"), 0, this);
 			  action->setToggleAction(TRUE);
 			  connect(action, SIGNAL(toggled(bool)),
 				  parent(), SLOT(setShowName(bool)));
@@ -811,7 +822,7 @@ void ConfigList::contextMenuEvent(QContextMenuEvent *e)
 				  action, SLOT(setOn(bool)));
 			  action->setOn(showName);
 			  action->addTo(headerPopup);
-			action = new QAction(NULL, "Show Range", 0, this);
+			action = new QAction(NULL, _("Show Range"), 0, this);
 			  action->setToggleAction(TRUE);
 			  connect(action, SIGNAL(toggled(bool)),
 				  parent(), SLOT(setShowRange(bool)));
@@ -819,7 +830,7 @@ void ConfigList::contextMenuEvent(QContextMenuEvent *e)
 				  action, SLOT(setOn(bool)));
 			  action->setOn(showRange);
 			  action->addTo(headerPopup);
-			action = new QAction(NULL, "Show Data", 0, this);
+			action = new QAction(NULL, _("Show Data"), 0, this);
 			  action->setToggleAction(TRUE);
 			  connect(action, SIGNAL(toggled(bool)),
 				  parent(), SLOT(setShowData(bool)));
@@ -834,7 +845,10 @@ void ConfigList::contextMenuEvent(QContextMenuEvent *e)
 		e->ignore();
 }
 
-ConfigView* ConfigView::viewList;
+ConfigView*ConfigView::viewList;
+QAction *ConfigView::showNormalAction;
+QAction *ConfigView::showAllAction;
+QAction *ConfigView::showPromptAction;
 
 ConfigView::ConfigView(QWidget* parent, const char *name)
 	: Parent(parent, name)
@@ -859,13 +873,16 @@ ConfigView::~ConfigView(void)
 	}
 }
 
-void ConfigView::setShowAll(bool b)
+void ConfigView::setOptionMode(QAction *act)
 {
-	if (list->showAll != b) {
-		list->showAll = b;
-		list->updateListAll();
-		emit showAllChanged(b);
-	}
+	if (act == showNormalAction)
+		list->optMode = normalOpt;
+	else if (act == showAllAction)
+		list->optMode = allOpt;
+	else
+		list->optMode = promptOpt;
+
+	list->updateListAll();
 }
 
 void ConfigView::setShowName(bool b)
@@ -920,7 +937,7 @@ void ConfigView::updateListAll(void)
 }
 
 ConfigInfoView::ConfigInfoView(QWidget* parent, const char *name)
-	: Parent(parent, name), menu(0), sym(0)
+	: Parent(parent, name), sym(0), menu(0)
 {
 	if (name) {
 		configSettings->beginGroup(name);
@@ -963,34 +980,6 @@ void ConfigInfoView::setInfo(struct menu *m)
 		menuInfo();
 }
 
-void ConfigInfoView::setSource(const QString& name)
-{
-	const char *p = name.latin1();
-
-	menu = NULL;
-	sym = NULL;
-
-	switch (p[0]) {
-	case 'm':
-		struct menu *m;
-
-		if (sscanf(p, "m%p", &m) == 1 && menu != m) {
-			menu = m;
-			menuInfo();
-			emit menuSelected(menu);
-		}
-		break;
-	case 's':
-		struct symbol *s;
-
-		if (sscanf(p, "s%p", &s) == 1 && sym != s) {
-			sym = s;
-			symbolInfo();
-		}
-		break;
-	}
-}
-
 void ConfigInfoView::symbolInfo(void)
 {
 	QString str;
@@ -1041,7 +1030,10 @@ void ConfigInfoView::menuInfo(void)
 		if (showDebug())
 			debug = debug_info(sym);
 
-		help = print_filter(_(menu_get_help(menu)));
+		struct gstr help_gstr = str_new();
+		menu_get_ext_help(menu, &help_gstr);
+		help = print_filter(str_get(&help_gstr));
+		str_free(&help_gstr);
 	} else if (menu->prompt) {
 		head += "<big><b>";
 		head += print_filter(_(menu->prompt->text));
@@ -1083,7 +1075,11 @@ QString ConfigInfoView::debug_info(struct symbol *sym)
 			debug += "</a><br>";
 			break;
 		case P_DEFAULT:
-			debug += "default: ";
+		case P_SELECT:
+		case P_RANGE:
+		case P_ENV:
+			debug += prop_get_type_name(prop->type);
+			debug += ": ";
 			expr_print(prop->expr, expr_print_help, &debug, E_NONE);
 			debug += "<br>";
 			break;
@@ -1094,16 +1090,6 @@ QString ConfigInfoView::debug_info(struct symbol *sym)
 				debug += "<br>";
 			}
 			break;
-		case P_SELECT:
-			debug += "select: ";
-			expr_print(prop->expr, expr_print_help, &debug, E_NONE);
-			debug += "<br>";
-			break;
-		case P_RANGE:
-			debug += "range: ";
-			expr_print(prop->expr, expr_print_help, &debug, E_NONE);
-			debug += "<br>";
-			break;
 		default:
 			debug += "unknown property: ";
 			debug += prop_get_type_name(prop->type);
@@ -1167,7 +1153,7 @@ void ConfigInfoView::expr_print_help(void *data, struct symbol *sym, const char
 QPopupMenu* ConfigInfoView::createPopupMenu(const QPoint& pos)
 {
 	QPopupMenu* popup = Parent::createPopupMenu(pos);
-	QAction* action = new QAction(NULL,"Show Debug Info", 0, popup);
+	QAction* action = new QAction(NULL, _("Show Debug Info"), 0, popup);
 	  action->setToggleAction(TRUE);
 	  connect(action, SIGNAL(toggled(bool)), SLOT(setShowDebug(bool)));
 	  connect(this, SIGNAL(showDebugChanged(bool)), action, SLOT(setOn(bool)));
@@ -1189,18 +1175,18 @@ ConfigSearchWindow::ConfigSearchWindow(ConfigMainWindow* parent, const char *nam
 
 	QVBoxLayout* layout1 = new QVBoxLayout(this, 11, 6);
 	QHBoxLayout* layout2 = new QHBoxLayout(0, 0, 6);
-	layout2->addWidget(new QLabel("Find:", this));
+	layout2->addWidget(new QLabel(_("Find:"), this));
 	editField = new QLineEdit(this);
 	connect(editField, SIGNAL(returnPressed()), SLOT(search()));
 	layout2->addWidget(editField);
-	searchButton = new QPushButton("Search", this);
+	searchButton = new QPushButton(_("Search"), this);
 	searchButton->setAutoDefault(FALSE);
 	connect(searchButton, SIGNAL(clicked()), SLOT(search()));
 	layout2->addWidget(searchButton);
 	layout1->addLayout(layout2);
 
 	split = new QSplitter(this);
-	split->setOrientation(QSplitter::Vertical);
+	split->setOrientation(Qt::Vertical);
 	list = new ConfigView(split, name);
 	list->list->mode = listMode;
 	info = new ConfigInfoView(split, name);
@@ -1274,8 +1260,12 @@ ConfigMainWindow::ConfigMainWindow(void)
 	QMenuBar* menu;
 	bool ok;
 	int x, y, width, height;
+	char title[256];
 
-	QWidget *d = configApp->desktop();
+	QDesktopWidget *d = configApp->desktop();
+	snprintf(title, sizeof(title), _("Barebox v%s Configuration"),
+		getenv("KERNELVERSION"));
+	setCaption(title);
 
 	width = configSettings->readNumEntry("/window width", d->width() - 64);
 	height = configSettings->readNumEntry("/window height", d->height() - 64);
@@ -1287,14 +1277,14 @@ ConfigMainWindow::ConfigMainWindow(void)
 		move(x, y);
 
 	split1 = new QSplitter(this);
-	split1->setOrientation(QSplitter::Horizontal);
+	split1->setOrientation(Qt::Horizontal);
 	setCentralWidget(split1);
 
 	menuView = new ConfigView(split1, "menu");
 	menuList = menuView->list;
 
 	split2 = new QSplitter(split1);
-	split2->setOrientation(QSplitter::Vertical);
+	split2->setOrientation(Qt::Vertical);
 
 	// create config tree
 	configView = new ConfigView(split2, "config");
@@ -1309,58 +1299,71 @@ ConfigMainWindow::ConfigMainWindow(void)
 	menu = menuBar();
 	toolBar = new QToolBar("Tools", this);
 
-	backAction = new QAction("Back", QPixmap(xpm_back), "Back", 0, this);
+	backAction = new QAction("Back", QPixmap(xpm_back), _("Back"), 0, this);
 	  connect(backAction, SIGNAL(activated()), SLOT(goBack()));
 	  backAction->setEnabled(FALSE);
-	QAction *quitAction = new QAction("Quit", "&Quit", CTRL+Key_Q, this);
+	QAction *quitAction = new QAction("Quit", _("&Quit"), Qt::CTRL + Qt::Key_Q, this);
 	  connect(quitAction, SIGNAL(activated()), SLOT(close()));
-	QAction *loadAction = new QAction("Load", QPixmap(xpm_load), "&Load", CTRL+Key_L, this);
+	QAction *loadAction = new QAction("Load", QPixmap(xpm_load), _("&Load"), Qt::CTRL + Qt::Key_L, this);
 	  connect(loadAction, SIGNAL(activated()), SLOT(loadConfig()));
-	saveAction = new QAction("Save", QPixmap(xpm_save), "&Save", CTRL+Key_S, this);
+	saveAction = new QAction("Save", QPixmap(xpm_save), _("&Save"), Qt::CTRL + Qt::Key_S, this);
 	  connect(saveAction, SIGNAL(activated()), SLOT(saveConfig()));
 	conf_set_changed_callback(conf_changed);
 	// Set saveAction's initial state
 	conf_changed();
-	QAction *saveAsAction = new QAction("Save As...", "Save &As...", 0, this);
+	QAction *saveAsAction = new QAction("Save As...", _("Save &As..."), 0, this);
 	  connect(saveAsAction, SIGNAL(activated()), SLOT(saveConfigAs()));
-	QAction *searchAction = new QAction("Find", "&Find", CTRL+Key_F, this);
+	QAction *searchAction = new QAction("Find", _("&Find"), Qt::CTRL + Qt::Key_F, this);
 	  connect(searchAction, SIGNAL(activated()), SLOT(searchConfig()));
-	QAction *singleViewAction = new QAction("Single View", QPixmap(xpm_single_view), "Split View", 0, this);
+	QAction *singleViewAction = new QAction("Single View", QPixmap(xpm_single_view), _("Single View"), 0, this);
 	  connect(singleViewAction, SIGNAL(activated()), SLOT(showSingleView()));
-	QAction *splitViewAction = new QAction("Split View", QPixmap(xpm_split_view), "Split View", 0, this);
+	QAction *splitViewAction = new QAction("Split View", QPixmap(xpm_split_view), _("Split View"), 0, this);
 	  connect(splitViewAction, SIGNAL(activated()), SLOT(showSplitView()));
-	QAction *fullViewAction = new QAction("Full View", QPixmap(xpm_tree_view), "Full View", 0, this);
+	QAction *fullViewAction = new QAction("Full View", QPixmap(xpm_tree_view), _("Full View"), 0, this);
 	  connect(fullViewAction, SIGNAL(activated()), SLOT(showFullView()));
 
-	QAction *showNameAction = new QAction(NULL, "Show Name", 0, this);
+	QAction *showNameAction = new QAction(NULL, _("Show Name"), 0, this);
 	  showNameAction->setToggleAction(TRUE);
 	  connect(showNameAction, SIGNAL(toggled(bool)), configView, SLOT(setShowName(bool)));
 	  connect(configView, SIGNAL(showNameChanged(bool)), showNameAction, SLOT(setOn(bool)));
 	  showNameAction->setOn(configView->showName());
-	QAction *showRangeAction = new QAction(NULL, "Show Range", 0, this);
+	QAction *showRangeAction = new QAction(NULL, _("Show Range"), 0, this);
 	  showRangeAction->setToggleAction(TRUE);
 	  connect(showRangeAction, SIGNAL(toggled(bool)), configView, SLOT(setShowRange(bool)));
 	  connect(configView, SIGNAL(showRangeChanged(bool)), showRangeAction, SLOT(setOn(bool)));
 	  showRangeAction->setOn(configList->showRange);
-	QAction *showDataAction = new QAction(NULL, "Show Data", 0, this);
+	QAction *showDataAction = new QAction(NULL, _("Show Data"), 0, this);
 	  showDataAction->setToggleAction(TRUE);
 	  connect(showDataAction, SIGNAL(toggled(bool)), configView, SLOT(setShowData(bool)));
 	  connect(configView, SIGNAL(showDataChanged(bool)), showDataAction, SLOT(setOn(bool)));
 	  showDataAction->setOn(configList->showData);
-	QAction *showAllAction = new QAction(NULL, "Show All Options", 0, this);
-	  showAllAction->setToggleAction(TRUE);
-	  connect(showAllAction, SIGNAL(toggled(bool)), configView, SLOT(setShowAll(bool)));
-	  connect(showAllAction, SIGNAL(toggled(bool)), menuView, SLOT(setShowAll(bool)));
-	  showAllAction->setOn(configList->showAll);
-	QAction *showDebugAction = new QAction(NULL, "Show Debug Info", 0, this);
+
+	QActionGroup *optGroup = new QActionGroup(this);
+	optGroup->setExclusive(TRUE);
+	connect(optGroup, SIGNAL(selected(QAction *)), configView,
+		SLOT(setOptionMode(QAction *)));
+	connect(optGroup, SIGNAL(selected(QAction *)), menuView,
+		SLOT(setOptionMode(QAction *)));
+
+	configView->showNormalAction = new QAction(NULL, _("Show Normal Options"), 0, optGroup);
+	configView->showAllAction = new QAction(NULL, _("Show All Options"), 0, optGroup);
+	configView->showPromptAction = new QAction(NULL, _("Show Prompt Options"), 0, optGroup);
+	configView->showNormalAction->setToggleAction(TRUE);
+	configView->showNormalAction->setOn(configList->optMode == normalOpt);
+	configView->showAllAction->setToggleAction(TRUE);
+	configView->showAllAction->setOn(configList->optMode == allOpt);
+	configView->showPromptAction->setToggleAction(TRUE);
+	configView->showPromptAction->setOn(configList->optMode == promptOpt);
+
+	QAction *showDebugAction = new QAction(NULL, _("Show Debug Info"), 0, this);
 	  showDebugAction->setToggleAction(TRUE);
 	  connect(showDebugAction, SIGNAL(toggled(bool)), helpText, SLOT(setShowDebug(bool)));
 	  connect(helpText, SIGNAL(showDebugChanged(bool)), showDebugAction, SLOT(setOn(bool)));
 	  showDebugAction->setOn(helpText->showDebug());
 
-	QAction *showIntroAction = new QAction(NULL, "Introduction", 0, this);
+	QAction *showIntroAction = new QAction(NULL, _("Introduction"), 0, this);
 	  connect(showIntroAction, SIGNAL(activated()), SLOT(showIntro()));
-	QAction *showAboutAction = new QAction(NULL, "About", 0, this);
+	QAction *showAboutAction = new QAction(NULL, _("About"), 0, this);
 	  connect(showAboutAction, SIGNAL(activated()), SLOT(showAbout()));
 
 	// init tool bar
@@ -1375,7 +1378,7 @@ ConfigMainWindow::ConfigMainWindow(void)
 
 	// create config menu
 	QPopupMenu* config = new QPopupMenu(this);
-	menu->insertItem("&File", config);
+	menu->insertItem(_("&File"), config);
 	loadAction->addTo(config);
 	saveAction->addTo(config);
 	saveAsAction->addTo(config);
@@ -1384,23 +1387,24 @@ ConfigMainWindow::ConfigMainWindow(void)
 
 	// create edit menu
 	QPopupMenu* editMenu = new QPopupMenu(this);
-	menu->insertItem("&Edit", editMenu);
+	menu->insertItem(_("&Edit"), editMenu);
 	searchAction->addTo(editMenu);
 
 	// create options menu
 	QPopupMenu* optionMenu = new QPopupMenu(this);
-	menu->insertItem("&Option", optionMenu);
+	menu->insertItem(_("&Option"), optionMenu);
 	showNameAction->addTo(optionMenu);
 	showRangeAction->addTo(optionMenu);
 	showDataAction->addTo(optionMenu);
 	optionMenu->insertSeparator();
-	showAllAction->addTo(optionMenu);
+	optGroup->addTo(optionMenu);
+	optionMenu->insertSeparator();
 	showDebugAction->addTo(optionMenu);
 
 	// create help menu
 	QPopupMenu* helpMenu = new QPopupMenu(this);
 	menu->insertSeparator();
-	menu->insertItem("&Help", helpMenu);
+	menu->insertItem(_("&Help"), helpMenu);
 	showIntroAction->addTo(helpMenu);
 	showAboutAction->addTo(helpMenu);
 
@@ -1444,27 +1448,27 @@ ConfigMainWindow::ConfigMainWindow(void)
 
 void ConfigMainWindow::loadConfig(void)
 {
-	QString s = QFileDialog::getOpenFileName(".config", NULL, this);
+	QString s = QFileDialog::getOpenFileName(conf_get_configname(), NULL, this);
 	if (s.isNull())
 		return;
 	if (conf_read(QFile::encodeName(s)))
-		QMessageBox::information(this, "qconf", "Unable to load configuration!");
+		QMessageBox::information(this, "qconf", _("Unable to load configuration!"));
 	ConfigView::updateListAll();
 }
 
 void ConfigMainWindow::saveConfig(void)
 {
 	if (conf_write(NULL))
-		QMessageBox::information(this, "qconf", "Unable to save configuration!");
+		QMessageBox::information(this, "qconf", _("Unable to save configuration!"));
 }
 
 void ConfigMainWindow::saveConfigAs(void)
 {
-	QString s = QFileDialog::getSaveFileName(".config", NULL, this);
+	QString s = QFileDialog::getSaveFileName(conf_get_configname(), NULL, this);
 	if (s.isNull())
 		return;
 	if (conf_write(QFile::encodeName(s)))
-		QMessageBox::information(this, "qconf", "Unable to save configuration!");
+		QMessageBox::information(this, "qconf", _("Unable to save configuration!"));
 }
 
 void ConfigMainWindow::searchConfig(void)
@@ -1489,7 +1493,7 @@ void ConfigMainWindow::setMenuLink(struct menu *menu)
 	ConfigList* list = NULL;
 	ConfigItem* item;
 
-	if (!menu_is_visible(menu) && !configView->showAll())
+	if (configList->menuSkip(menu))
 		return;
 
 	switch (configList->mode) {
@@ -1521,6 +1525,8 @@ void ConfigMainWindow::setMenuLink(struct menu *menu)
 	case fullMode:
 		list = configList;
 		break;
+	default:
+		break;
 	}
 
 	if (list) {
@@ -1608,11 +1614,11 @@ void ConfigMainWindow::closeEvent(QCloseEvent* e)
 		e->accept();
 		return;
 	}
-	QMessageBox mb("qconf", "Save configuration?", QMessageBox::Warning,
+	QMessageBox mb("qconf", _("Save configuration?"), QMessageBox::Warning,
 			QMessageBox::Yes | QMessageBox::Default, QMessageBox::No, QMessageBox::Cancel | QMessageBox::Escape);
-	mb.setButtonText(QMessageBox::Yes, "&Save Changes");
-	mb.setButtonText(QMessageBox::No, "&Discard Changes");
-	mb.setButtonText(QMessageBox::Cancel, "Cancel Exit");
+	mb.setButtonText(QMessageBox::Yes, _("&Save Changes"));
+	mb.setButtonText(QMessageBox::No, _("&Discard Changes"));
+	mb.setButtonText(QMessageBox::Cancel, _("Cancel Exit"));
 	switch (mb.exec()) {
 	case QMessageBox::Yes:
 		conf_write(NULL);
@@ -1627,7 +1633,7 @@ void ConfigMainWindow::closeEvent(QCloseEvent* e)
 
 void ConfigMainWindow::showIntro(void)
 {
-	static char str[] = "Welcome to the qconf graphical kernel configuration tool for Linux.\n\n"
+	static const QString str = _("Welcome to the qconf graphical barebox configuration tool for Linux.\n\n"
 		"For each option, a blank box indicates the feature is disabled, a check\n"
 		"indicates it is enabled, and a dot indicates that it is to be compiled\n"
 		"as a module.  Clicking on the box will cycle through the three states.\n\n"
@@ -1637,15 +1643,15 @@ void ConfigMainWindow::showIntro(void)
 		"options must be enabled to support the option you are interested in, you can\n"
 		"still view the help of a grayed-out option.\n\n"
 		"Toggling Show Debug Info under the Options menu will show the dependencies,\n"
-		"which you can then match by examining other options.\n\n";
+		"which you can then match by examining other options.\n\n");
 
 	QMessageBox::information(this, "qconf", str);
 }
 
 void ConfigMainWindow::showAbout(void)
 {
-	static char str[] = "qconf is Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>.\n\n"
-		"Bug reports and feature request can also be entered at http://bugzilla.kernel.org/\n";
+	static const QString str = _("qconf is Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>.\n\n"
+		"Bug reports and feature request can also be entered at http://bugzilla.barebox.org/\n");
 
 	QMessageBox::information(this, "qconf", str);
 }
@@ -1670,6 +1676,9 @@ void ConfigMainWindow::saveSettings(void)
 	case fullMode :
 		entry = "full";
 		break;
+
+	default:
+		break;
 	}
 	configSettings->writeEntry("/listMode", entry);
 
@@ -1703,7 +1712,7 @@ static const char *progname;
 
 static void usage(void)
 {
-	printf("%s <config>\n", progname);
+	printf(_("%s <config>\n"), progname);
 	exit(0);
 }
 
diff --git a/scripts/kconfig/qconf.h b/scripts/kconfig/qconf.h
index b3b5657..636a74b 100644
--- a/scripts/kconfig/qconf.h
+++ b/scripts/kconfig/qconf.h
@@ -44,6 +44,9 @@ enum colIdx {
 enum listMode {
 	singleMode, menuMode, symbolMode, fullMode, listMode
 };
+enum optionMode {
+	normalOpt = 0, allOpt, promptOpt
+};
 
 class ConfigList : public QListView {
 	Q_OBJECT
@@ -115,6 +118,8 @@ public:
 	void setAllOpen(bool open);
 	void setParentMenu(void);
 
+	bool menuSkip(struct menu *);
+
 	template <class P>
 	void updateMenuList(P*, struct menu*);
 
@@ -124,8 +129,9 @@ public:
 	QPixmap choiceYesPix, choiceNoPix;
 	QPixmap menuPix, menuInvPix, menuBackPix, voidPix;
 
-	bool showAll, showName, showRange, showData;
+	bool showName, showRange, showData;
 	enum listMode mode;
+	enum optionMode optMode;
 	struct menu *rootEntry;
 	QColorGroup disabledColorGroup;
 	QColorGroup inactivedColorGroup;
@@ -222,17 +228,15 @@ public:
 	static void updateList(ConfigItem* item);
 	static void updateListAll(void);
 
-	bool showAll(void) const { return list->showAll; }
 	bool showName(void) const { return list->showName; }
 	bool showRange(void) const { return list->showRange; }
 	bool showData(void) const { return list->showData; }
 public slots:
-	void setShowAll(bool);
 	void setShowName(bool);
 	void setShowRange(bool);
 	void setShowData(bool);
+	void setOptionMode(QAction *);
 signals:
-	void showAllChanged(bool);
 	void showNameChanged(bool);
 	void showRangeChanged(bool);
 	void showDataChanged(bool);
@@ -242,6 +246,10 @@ public:
 
 	static ConfigView* viewList;
 	ConfigView* nextView;
+
+	static QAction *showNormalAction;
+	static QAction *showAllAction;
+	static QAction *showPromptAction;
 };
 
 class ConfigInfoView : public QTextBrowser {
@@ -254,7 +262,6 @@ public:
 public slots:
 	void setInfo(struct menu *menu);
 	void saveSettings(void);
-	void setSource(const QString& name);
 	void setShowDebug(bool);
 
 signals:
diff --git a/scripts/kconfig/streamline_config.pl b/scripts/kconfig/streamline_config.pl
new file mode 100644
index 0000000..bf941fa
--- /dev/null
+++ b/scripts/kconfig/streamline_config.pl
@@ -0,0 +1,422 @@
+#!/usr/bin/perl -w
+#
+# Copywrite 2005-2009 - Steven Rostedt
+# Licensed under the terms of the GNU GPL License version 2
+#
+#  It's simple enough to figure out how this works.
+#  If not, then you can ask me at stripconfig@goodmis.org
+#
+# What it does?
+#
+#   If you have installed a Linux barebox from a distribution
+#   that turns on way too many modules than you need, and
+#   you only want the modules you use, then this program
+#   is perfect for you.
+#
+#   It gives you the ability to turn off all the modules that are
+#   not loaded on your system.
+#
+# Howto:
+#
+#  1. Boot up the barebox that you want to stream line the config on.
+#  2. Change directory to the directory holding the source of the
+#       barebox that you just booted.
+#  3. Copy the configuraton file to this directory as .config
+#  4. Have all your devices that you need modules for connected and
+#      operational (make sure that their corresponding modules are loaded)
+#  5. Run this script redirecting the output to some other file
+#       like config_strip.
+#  6. Back up your old config (if you want too).
+#  7. copy the config_strip file to .config
+#  8. Run "make oldconfig"
+#
+#  Now your barebox is ready to be built with only the modules that
+#  are loaded.
+#
+# Here's what I did with my Debian distribution.
+#
+#    cd /usr/src/linux-2.6.10
+#    cp /boot/config-2.6.10-1-686-smp .config
+#    ~/bin/streamline_config > config_strip
+#    mv .config config_sav
+#    mv config_strip .config
+#    make oldconfig
+#
+my $config = ".config";
+
+my $uname = `uname -r`;
+chomp $uname;
+
+my @searchconfigs = (
+	{
+	    "file" => ".config",
+	    "exec" => "cat",
+	},
+	{
+	    "file" => "/proc/config.gz",
+	    "exec" => "zcat",
+	},
+	{
+	    "file" => "/boot/config-$uname",
+	    "exec" => "cat",
+	},
+	{
+	    "file" => "/boot/vmlinuz-$uname",
+	    "exec" => "scripts/extract-ikconfig",
+	    "test" => "scripts/extract-ikconfig",
+	},
+	{
+	    "file" => "vmlinux",
+	    "exec" => "scripts/extract-ikconfig",
+	    "test" => "scripts/extract-ikconfig",
+	},
+	{
+	    "file" => "/lib/modules/$uname/barebox/barebox/configs.ko",
+	    "exec" => "scripts/extract-ikconfig",
+	    "test" => "scripts/extract-ikconfig",
+	},
+	{
+	    "file" => "barebox/configs.ko",
+	    "exec" => "scripts/extract-ikconfig",
+	    "test" => "scripts/extract-ikconfig",
+	},
+	{
+	    "file" => "barebox/configs.o",
+	    "exec" => "scripts/extract-ikconfig",
+	    "test" => "scripts/extract-ikconfig",
+	},
+);
+
+sub find_config {
+    foreach my $conf (@searchconfigs) {
+	my $file = $conf->{"file"};
+
+	next if ( ! -f "$file");
+
+	if (defined($conf->{"test"})) {
+	    `$conf->{"test"} $conf->{"file"} 2>/dev/null`;
+	    next if ($?);
+	}
+
+	my $exec = $conf->{"exec"};
+
+	print STDERR "using config: '$file'\n";
+
+	open(CIN, "$exec $file |") || die "Failed to run $exec $file";
+	return;
+    }
+    die "No config file found";
+}
+
+find_config;
+
+# Get the build source and top level Kconfig file (passed in)
+my $ksource = $ARGV[0];
+my $kconfig = $ARGV[1];
+my $lsmod_file = $ARGV[2];
+
+my @makefiles = `find $ksource -name Makefile 2>/dev/null`;
+chomp @makefiles;
+
+my %depends;
+my %selects;
+my %prompts;
+my %objects;
+my $var;
+my $cont = 0;
+my $iflevel = 0;
+my @ifdeps;
+
+# prevent recursion
+my %read_kconfigs;
+
+sub read_kconfig {
+    my ($kconfig) = @_;
+
+    my $state = "NONE";
+    my $config;
+    my @kconfigs;
+
+    open(KIN, "$ksource/$kconfig") || die "Can't open $kconfig";
+    while (<KIN>) {
+	chomp;
+
+	# collect any Kconfig sources
+	if (/^source\s*"(.*)"/) {
+	    $kconfigs[$#kconfigs+1] = $1;
+	}
+
+	# configs found
+	if (/^\s*config\s+(\S+)\s*$/) {
+	    $state = "NEW";
+	    $config = $1;
+
+	    for (my $i = 0; $i < $iflevel; $i++) {
+		if ($i) {
+		    $depends{$config} .= " " . $ifdeps[$i];
+		} else {
+		    $depends{$config} = $ifdeps[$i];
+		}
+		$state = "DEP";
+	    }
+
+	# collect the depends for the config
+	} elsif ($state eq "NEW" && /^\s*depends\s+on\s+(.*)$/) {
+	    $state = "DEP";
+	    $depends{$config} = $1;
+	} elsif ($state eq "DEP" && /^\s*depends\s+on\s+(.*)$/) {
+	    $depends{$config} .= " " . $1;
+
+	# Get the configs that select this config
+	} elsif ($state ne "NONE" && /^\s*select\s+(\S+)/) {
+	    if (defined($selects{$1})) {
+		$selects{$1} .= " " . $config;
+	    } else {
+		$selects{$1} = $config;
+	    }
+
+	# configs without prompts must be selected
+	} elsif ($state ne "NONE" && /^\s*tristate\s\S/) {
+	    # note if the config has a prompt
+	    $prompt{$config} = 1;
+
+	# Check for if statements
+	} elsif (/^if\s+(.*\S)\s*$/) {
+	    my $deps = $1;
+	    # remove beginning and ending non text
+	    $deps =~ s/^[^a-zA-Z0-9_]*//;
+	    $deps =~ s/[^a-zA-Z0-9_]*$//;
+
+	    my @deps = split /[^a-zA-Z0-9_]+/, $deps;
+
+	    $ifdeps[$iflevel++] = join ':', @deps;
+
+	} elsif (/^endif/) {
+
+	    $iflevel-- if ($iflevel);
+
+	# stop on "help"
+	} elsif (/^\s*help\s*$/) {
+	    $state = "NONE";
+	}
+    }
+    close(KIN);
+
+    # read in any configs that were found.
+    foreach $kconfig (@kconfigs) {
+	if (!defined($read_kconfigs{$kconfig})) {
+	    $read_kconfigs{$kconfig} = 1;
+	    read_kconfig($kconfig);
+	}
+    }
+}
+
+if ($kconfig) {
+    read_kconfig($kconfig);
+}
+
+# Read all Makefiles to map the configs to the objects
+foreach my $makefile (@makefiles) {
+
+    open(MIN,$makefile) || die "Can't open $makefile";
+    while (<MIN>) {
+	my $objs;
+
+	# is this a line after a line with a backslash?
+	if ($cont && /(\S.*)$/) {
+	    $objs = $1;
+	}
+	$cont = 0;
+
+	# collect objects after obj-$(CONFIG_FOO_BAR)
+	if (/obj-\$\((CONFIG_[^\)]*)\)\s*[+:]?=\s*(.*)/) {
+	    $var = $1;
+	    $objs = $2;
+	}
+	if (defined($objs)) {
+	    # test if the line ends with a backslash
+	    if ($objs =~ m,(.*)\\$,) {
+		$objs = $1;
+		$cont = 1;
+	    }
+
+	    foreach my $obj (split /\s+/,$objs) {
+		$obj =~ s/-/_/g;
+		if ($obj =~ /(.*)\.o$/) {
+		    # Objects may be enabled by more than one config.
+		    # Store configs in an array.
+		    my @arr;
+
+		    if (defined($objects{$1})) {
+			@arr = @{$objects{$1}};
+		    }
+
+		    $arr[$#arr+1] = $var;
+
+		    # The objects have a hash mapping to a reference
+		    # of an array of configs.
+		    $objects{$1} = \@arr;
+		}
+	    }
+	}
+    }
+    close(MIN);
+}
+
+my %modules;
+
+if (defined($lsmod_file)) {
+    if ( ! -f $lsmod_file) {
+	die "$lsmod_file not found";
+    }
+    if ( -x $lsmod_file) {
+	# the file is executable, run it
+	open(LIN, "$lsmod_file|");
+    } else {
+	# Just read the contents
+	open(LIN, "$lsmod_file");
+    }
+} else {
+
+    # see what modules are loaded on this system
+    my $lsmod;
+
+    foreach $dir ( ("/sbin", "/bin", "/usr/sbin", "/usr/bin") ) {
+	if ( -x "$dir/lsmod" ) {
+	    $lsmod = "$dir/lsmod";
+	    last;
+	}
+}
+    if (!defined($lsmod)) {
+	# try just the path
+	$lsmod = "lsmod";
+    }
+
+    open(LIN,"$lsmod|") || die "Can not call lsmod with $lsmod";
+}
+
+while (<LIN>) {
+	next if (/^Module/);  # Skip the first line.
+	if (/^(\S+)/) {
+		$modules{$1} = 1;
+	}
+}
+close (LIN);
+
+# add to the configs hash all configs that are needed to enable
+# a loaded module.
+my %configs;
+foreach my $module (keys(%modules)) {
+    if (defined($objects{$module})) {
+	my @arr = @{$objects{$module}};
+	foreach my $conf (@arr) {
+	    $configs{$conf} = $module;
+	}
+    } else {
+	# Most likely, someone has a custom (binary?) module loaded.
+	print STDERR "$module config not found!!\n";
+    }
+}
+
+my $valid = "A-Za-z_0-9";
+my $repeat = 1;
+
+#
+# Note, we do not care about operands (like: &&, ||, !) we want to add any
+# config that is in the depend list of another config. This script does
+# not enable configs that are not already enabled. If we come across a
+# config A that depends on !B, we can still add B to the list of depends
+# to keep on. If A was on in the original config, B would not have been
+# and B would not be turned on by this script.
+#
+sub parse_config_dep_select
+{
+    my ($p) = @_;
+
+    while ($p =~ /[$valid]/) {
+
+	if ($p =~ /^[^$valid]*([$valid]+)/) {
+	    my $conf = "CONFIG_" . $1;
+
+	    $p =~ s/^[^$valid]*[$valid]+//;
+
+	    if (!defined($configs{$conf})) {
+		# We must make sure that this config has its
+		# dependencies met.
+		$repeat = 1; # do again
+		$configs{$conf} = 1;
+	    }
+	} else {
+	    die "this should never happen";
+	}
+    }
+}
+
+while ($repeat) {
+    $repeat = 0;
+
+    foreach my $config (keys %configs) {
+	$config =~ s/^CONFIG_//;
+
+	if (defined($depends{$config})) {
+	    # This config has dependencies. Make sure they are also included
+	    parse_config_dep_select $depends{$config};
+	}
+
+	if (defined($prompt{$config}) || !defined($selects{$config})) {
+	    next;
+	}
+
+	# config has no prompt and must be selected.
+	parse_config_dep_select $selects{$config};
+    }
+}
+
+my %setconfigs;
+
+# Finally, read the .config file and turn off any module enabled that
+# we could not find a reason to keep enabled.
+while(<CIN>) {
+
+    if (/CONFIG_IKCONFIG/) {
+	if (/# CONFIG_IKCONFIG is not set/) {
+	    # enable IKCONFIG at least as a module
+	    print "CONFIG_IKCONFIG=m\n";
+	    # don't ask about PROC
+	    print "# CONFIG_IKCONFIG_PROC is not set\n";
+	} else {
+	    print;
+	}
+	next;
+    }
+
+    if (/^(CONFIG.*)=(m|y)/) {
+	if (defined($configs{$1})) {
+	    $setconfigs{$1} = $2;
+	} elsif ($2 eq "m") {
+	    print "# $1 is not set\n";
+	    next;
+	}
+    }
+    print;
+}
+close(CIN);
+
+# Integrity check, make sure all modules that we want enabled do
+# indeed have their configs set.
+loop:
+foreach my $module (keys(%modules)) {
+    if (defined($objects{$module})) {
+	my @arr = @{$objects{$module}};
+	foreach my $conf (@arr) {
+	    if (defined($setconfigs{$conf})) {
+		next loop;
+	    }
+	}
+	print STDERR "module $module did not have configs";
+	foreach my $conf (@arr) {
+	    print STDERR " " , $conf;
+	}
+	print STDERR "\n";
+    }
+}
diff --git a/scripts/kconfig/symbol.c b/scripts/kconfig/symbol.c
index c35dcc5..e95718f 100644
--- a/scripts/kconfig/symbol.c
+++ b/scripts/kconfig/symbol.c
@@ -34,18 +34,19 @@ struct symbol *sym_defconfig_list;
 struct symbol *modules_sym;
 tristate modules_val;
 
-void sym_add_default(struct symbol *sym, const char *def)
+struct expr *sym_env_list;
+
+static void sym_add_default(struct symbol *sym, const char *def)
 {
 	struct property *prop = prop_alloc(P_DEFAULT, sym);
 
-	prop->expr = expr_alloc_symbol(sym_lookup(def, 1));
+	prop->expr = expr_alloc_symbol(sym_lookup(def, SYMBOL_CONST));
 }
 
 void sym_init(void)
 {
 	struct symbol *sym;
 	struct utsname uts;
-	char *p;
 	static bool inited = false;
 
 	if (inited)
@@ -54,20 +55,6 @@ void sym_init(void)
 
 	uname(&uts);
 
-	sym = sym_lookup("ARCH", 0);
-	sym->type = S_STRING;
-	sym->flags |= SYMBOL_AUTO;
-	p = getenv("ARCH");
-	if (p)
-		sym_add_default(sym, p);
-
-	sym = sym_lookup("KERNELVERSION", 0);
-	sym->type = S_STRING;
-	sym->flags |= SYMBOL_AUTO;
-	p = getenv("KERNELVERSION");
-	if (p)
-		sym_add_default(sym, p);
-
 	sym = sym_lookup("UNAME_RELEASE", 0);
 	sym->type = S_STRING;
 	sym->flags |= SYMBOL_AUTO;
@@ -117,6 +104,15 @@ struct property *sym_get_choice_prop(struct symbol *sym)
 	return NULL;
 }
 
+struct property *sym_get_env_prop(struct symbol *sym)
+{
+	struct property *prop;
+
+	for_all_properties(sym, prop, P_ENV)
+		return prop;
+	return NULL;
+}
+
 struct property *sym_get_default_prop(struct symbol *sym)
 {
 	struct property *prop;
@@ -129,7 +125,7 @@ struct property *sym_get_default_prop(struct symbol *sym)
 	return NULL;
 }
 
-struct property *sym_get_range_prop(struct symbol *sym)
+static struct property *sym_get_range_prop(struct symbol *sym)
 {
 	struct property *prop;
 
@@ -199,7 +195,7 @@ static void sym_calc_visibility(struct symbol *sym)
 	tri = no;
 	for_all_prompts(sym, prop) {
 		prop->visible.tri = expr_calc_value(prop->visible.expr);
-		tri = E_OR(tri, prop->visible.tri);
+		tri = EXPR_OR(tri, prop->visible.tri);
 	}
 	if (tri == mod && (sym->type != S_TRISTATE || modules_val == no))
 		tri = yes;
@@ -209,6 +205,16 @@ static void sym_calc_visibility(struct symbol *sym)
 	}
 	if (sym_is_choice_value(sym))
 		return;
+	/* defaulting to "yes" if no explicit "depends on" are given */
+	tri = yes;
+	if (sym->dir_dep.expr)
+		tri = expr_calc_value(sym->dir_dep.expr);
+	if (tri == mod)
+		tri = yes;
+	if (sym->dir_dep.tri != tri) {
+		sym->dir_dep.tri = tri;
+		sym_set_changed(sym);
+	}
 	tri = no;
 	if (sym->rev_dep.expr)
 		tri = expr_calc_value(sym->rev_dep.expr);
@@ -220,45 +226,63 @@ static void sym_calc_visibility(struct symbol *sym)
 	}
 }
 
-static struct symbol *sym_calc_choice(struct symbol *sym)
+/*
+ * Find the default symbol for a choice.
+ * First try the default values for the choice symbol
+ * Next locate the first visible choice value
+ * Return NULL if none was found
+ */
+struct symbol *sym_choice_default(struct symbol *sym)
 {
 	struct symbol *def_sym;
 	struct property *prop;
 	struct expr *e;
 
-	/* is the user choice visible? */
-	def_sym = sym->def[S_DEF_USER].val;
-	if (def_sym) {
-		sym_calc_visibility(def_sym);
-		if (def_sym->visible != no)
-			return def_sym;
-	}
-
 	/* any of the defaults visible? */
 	for_all_defaults(sym, prop) {
 		prop->visible.tri = expr_calc_value(prop->visible.expr);
 		if (prop->visible.tri == no)
 			continue;
 		def_sym = prop_get_symbol(prop);
-		sym_calc_visibility(def_sym);
 		if (def_sym->visible != no)
 			return def_sym;
 	}
 
 	/* just get the first visible value */
 	prop = sym_get_choice_prop(sym);
-	for (e = prop->expr; e; e = e->left.expr) {
-		def_sym = e->right.sym;
-		sym_calc_visibility(def_sym);
+	expr_list_for_each_sym(prop->expr, e, def_sym)
 		if (def_sym->visible != no)
 			return def_sym;
-	}
 
-	/* no choice? reset tristate value */
-	sym->curr.tri = no;
+	/* failed to locate any defaults */
 	return NULL;
 }
 
+static struct symbol *sym_calc_choice(struct symbol *sym)
+{
+	struct symbol *def_sym;
+	struct property *prop;
+	struct expr *e;
+
+	/* first calculate all choice values' visibilities */
+	prop = sym_get_choice_prop(sym);
+	expr_list_for_each_sym(prop->expr, e, def_sym)
+		sym_calc_visibility(def_sym);
+
+	/* is the user choice visible? */
+	def_sym = sym->def[S_DEF_USER].val;
+	if (def_sym && def_sym->visible != no)
+		return def_sym;
+
+	def_sym = sym_choice_default(sym);
+
+	if (def_sym == NULL)
+		/* no choice? reset tristate value */
+		sym->curr.tri = no;
+
+	return def_sym;
+}
+
 void sym_calc_value(struct symbol *sym)
 {
 	struct symbol_value newval, oldval;
@@ -303,22 +327,38 @@ void sym_calc_value(struct symbol *sym)
 		if (sym_is_choice_value(sym) && sym->visible == yes) {
 			prop = sym_get_choice_prop(sym);
 			newval.tri = (prop_get_symbol(prop)->curr.val == sym) ? yes : no;
-		} else if (E_OR(sym->visible, sym->rev_dep.tri) != no) {
-			sym->flags |= SYMBOL_WRITE;
-			if (sym_has_value(sym))
-				newval.tri = sym->def[S_DEF_USER].tri;
-			else if (!sym_is_choice(sym)) {
-				prop = sym_get_default_prop(sym);
-				if (prop)
-					newval.tri = expr_calc_value(prop->expr);
+		} else {
+			if (sym->visible != no) {
+				/* if the symbol is visible use the user value
+				 * if available, otherwise try the default value
+				 */
+				sym->flags |= SYMBOL_WRITE;
+				if (sym_has_value(sym)) {
+					newval.tri = EXPR_AND(sym->def[S_DEF_USER].tri,
+							      sym->visible);
+					goto calc_newval;
+				}
 			}
-			newval.tri = E_OR(E_AND(newval.tri, sym->visible), sym->rev_dep.tri);
-		} else if (!sym_is_choice(sym)) {
-			prop = sym_get_default_prop(sym);
-			if (prop) {
+			if (sym->rev_dep.tri != no)
 				sym->flags |= SYMBOL_WRITE;
-				newval.tri = expr_calc_value(prop->expr);
+			if (!sym_is_choice(sym)) {
+				prop = sym_get_default_prop(sym);
+				if (prop) {
+					sym->flags |= SYMBOL_WRITE;
+					newval.tri = EXPR_AND(expr_calc_value(prop->expr),
+							      prop->visible.tri);
+				}
 			}
+		calc_newval:
+			if (sym->dir_dep.tri == no && sym->rev_dep.tri != no) {
+				fprintf(stderr, "warning: (");
+				expr_fprint(sym->rev_dep.expr, stderr);
+				fprintf(stderr, ") selects %s which has unmet direct dependencies (",
+					sym->name);
+				expr_fprint(sym->dir_dep.expr, stderr);
+				fprintf(stderr, ")\n");
+			}
+			newval.tri = EXPR_OR(newval.tri, sym->rev_dep.tri);
 		}
 		if (newval.tri == mod && sym_get_type(sym) == S_BOOLEAN)
 			newval.tri = yes;
@@ -361,14 +401,20 @@ void sym_calc_value(struct symbol *sym)
 	}
 
 	if (sym_is_choice(sym)) {
-		int flags = sym->flags & (SYMBOL_CHANGED | SYMBOL_WRITE);
+		struct symbol *choice_sym;
+
 		prop = sym_get_choice_prop(sym);
-		for (e = prop->expr; e; e = e->left.expr) {
-			e->right.sym->flags |= flags;
-			if (flags & SYMBOL_CHANGED)
-				sym_set_changed(e->right.sym);
+		expr_list_for_each_sym(prop->expr, e, choice_sym) {
+			if ((sym->flags & SYMBOL_WRITE) &&
+			    choice_sym->visible != no)
+				choice_sym->flags |= SYMBOL_WRITE;
+			if (sym->flags & SYMBOL_CHANGED)
+				sym_set_changed(choice_sym);
 		}
 	}
+
+	if (sym->flags & SYMBOL_AUTO)
+		sym->flags &= ~SYMBOL_WRITE;
 }
 
 void sym_clear_all_valid(void)
@@ -615,6 +661,80 @@ bool sym_set_string_value(struct symbol *sym, const char *newval)
 	return true;
 }
 
+/*
+ * Find the default value associated to a symbol.
+ * For tristate symbol handle the modules=n case
+ * in which case "m" becomes "y".
+ * If the symbol does not have any default then fallback
+ * to the fixed default values.
+ */
+const char *sym_get_string_default(struct symbol *sym)
+{
+	struct property *prop;
+	struct symbol *ds;
+	const char *str;
+	tristate val;
+
+	sym_calc_visibility(sym);
+	sym_calc_value(modules_sym);
+	val = symbol_no.curr.tri;
+	str = symbol_empty.curr.val;
+
+	/* If symbol has a default value look it up */
+	prop = sym_get_default_prop(sym);
+	if (prop != NULL) {
+		switch (sym->type) {
+		case S_BOOLEAN:
+		case S_TRISTATE:
+			/* The visibility imay limit the value from yes => mod */
+			val = EXPR_AND(expr_calc_value(prop->expr), prop->visible.tri);
+			break;
+		default:
+			/*
+			 * The following fails to handle the situation
+			 * where a default value is further limited by
+			 * the valid range.
+			 */
+			ds = prop_get_symbol(prop);
+			if (ds != NULL) {
+				sym_calc_value(ds);
+				str = (const char *)ds->curr.val;
+			}
+		}
+	}
+
+	/* Handle select statements */
+	val = EXPR_OR(val, sym->rev_dep.tri);
+
+	/* transpose mod to yes if modules are not enabled */
+	if (val == mod)
+		if (!sym_is_choice_value(sym) && modules_sym->curr.tri == no)
+			val = yes;
+
+	/* transpose mod to yes if type is bool */
+	if (sym->type == S_BOOLEAN && val == mod)
+		val = yes;
+
+	switch (sym->type) {
+	case S_BOOLEAN:
+	case S_TRISTATE:
+		switch (val) {
+		case no: return "n";
+		case mod: return "m";
+		case yes: return "y";
+		}
+	case S_INT:
+	case S_HEX:
+		return str;
+	case S_STRING:
+		return str;
+	case S_OTHER:
+	case S_UNKNOWN:
+		break;
+	}
+	return "";
+}
+
 const char *sym_get_string_value(struct symbol *sym)
 {
 	tristate val;
@@ -643,12 +763,20 @@ bool sym_is_changable(struct symbol *sym)
 	return sym->visible > sym->rev_dep.tri;
 }
 
-struct symbol *sym_lookup(const char *name, int isconst)
+static unsigned strhash(const char *s)
+{
+	/* fnv32 hash */
+	unsigned hash = 2166136261U;
+	for (; *s; s++)
+		hash = (hash ^ *s) * 0x01000193;
+	return hash;
+}
+
+struct symbol *sym_lookup(const char *name, int flags)
 {
 	struct symbol *symbol;
-	const char *ptr;
 	char *new_name;
-	int hash = 0;
+	int hash;
 
 	if (name) {
 		if (name[0] && !name[1]) {
@@ -658,29 +786,26 @@ struct symbol *sym_lookup(const char *name, int isconst)
 			case 'n': return &symbol_no;
 			}
 		}
-		for (ptr = name; *ptr; ptr++)
-			hash += *ptr;
-		hash &= 0xff;
+		hash = strhash(name) % SYMBOL_HASHSIZE;
 
 		for (symbol = symbol_hash[hash]; symbol; symbol = symbol->next) {
-			if (!strcmp(symbol->name, name)) {
-				if ((isconst && symbol->flags & SYMBOL_CONST) ||
-				    (!isconst && !(symbol->flags & SYMBOL_CONST)))
-					return symbol;
-			}
+			if (symbol->name &&
+			    !strcmp(symbol->name, name) &&
+			    (flags ? symbol->flags & flags
+				   : !(symbol->flags & (SYMBOL_CONST|SYMBOL_CHOICE))))
+				return symbol;
 		}
 		new_name = strdup(name);
 	} else {
 		new_name = NULL;
-		hash = 256;
+		hash = 0;
 	}
 
 	symbol = malloc(sizeof(*symbol));
 	memset(symbol, 0, sizeof(*symbol));
 	symbol->name = new_name;
 	symbol->type = S_UNKNOWN;
-	if (isconst)
-		symbol->flags |= SYMBOL_CONST;
+	symbol->flags |= flags;
 
 	symbol->next = symbol_hash[hash];
 	symbol_hash[hash] = symbol;
@@ -691,7 +816,6 @@ struct symbol *sym_lookup(const char *name, int isconst)
 struct symbol *sym_find(const char *name)
 {
 	struct symbol *symbol = NULL;
-	const char *ptr;
 	int hash = 0;
 
 	if (!name)
@@ -704,12 +828,11 @@ struct symbol *sym_find(const char *name)
 		case 'n': return &symbol_no;
 		}
 	}
-	for (ptr = name; *ptr; ptr++)
-		hash += *ptr;
-	hash &= 0xff;
+	hash = strhash(name) % SYMBOL_HASHSIZE;
 
 	for (symbol = symbol_hash[hash]; symbol; symbol = symbol->next) {
-		if (!strcmp(symbol->name, name) &&
+		if (symbol->name &&
+		    !strcmp(symbol->name, name) &&
 		    !(symbol->flags & SYMBOL_CONST))
 				break;
 	}
@@ -744,6 +867,7 @@ struct symbol **sym_re_search(const char *pattern)
 				return NULL;
 			}
 		}
+		sym_calc_value(sym);
 		sym_arr[cnt++] = sym;
 	}
 	if (sym_arr)
@@ -753,8 +877,110 @@ struct symbol **sym_re_search(const char *pattern)
 	return sym_arr;
 }
 
+/*
+ * When we check for recursive dependencies we use a stack to save
+ * current state so we can print out relevant info to user.
+ * The entries are located on the call stack so no need to free memory.
+ * Note inser() remove() must always match to properly clear the stack.
+ */
+static struct dep_stack {
+	struct dep_stack *prev, *next;
+	struct symbol *sym;
+	struct property *prop;
+	struct expr *expr;
+} *check_top;
+
+static void dep_stack_insert(struct dep_stack *stack, struct symbol *sym)
+{
+	memset(stack, 0, sizeof(*stack));
+	if (check_top)
+		check_top->next = stack;
+	stack->prev = check_top;
+	stack->sym = sym;
+	check_top = stack;
+}
+
+static void dep_stack_remove(void)
+{
+	check_top = check_top->prev;
+	if (check_top)
+		check_top->next = NULL;
+}
+
+/*
+ * Called when we have detected a recursive dependency.
+ * check_top point to the top of the stact so we use
+ * the ->prev pointer to locate the bottom of the stack.
+ */
+static void sym_check_print_recursive(struct symbol *last_sym)
+{
+	struct dep_stack *stack;
+	struct symbol *sym, *next_sym;
+	struct menu *menu = NULL;
+	struct property *prop;
+	struct dep_stack cv_stack;
+
+	if (sym_is_choice_value(last_sym)) {
+		dep_stack_insert(&cv_stack, last_sym);
+		last_sym = prop_get_symbol(sym_get_choice_prop(last_sym));
+	}
 
-struct symbol *sym_check_deps(struct symbol *sym);
+	for (stack = check_top; stack != NULL; stack = stack->prev)
+		if (stack->sym == last_sym)
+			break;
+	if (!stack) {
+		fprintf(stderr, "unexpected recursive dependency error\n");
+		return;
+	}
+
+	for (; stack; stack = stack->next) {
+		sym = stack->sym;
+		next_sym = stack->next ? stack->next->sym : last_sym;
+		prop = stack->prop;
+
+		/* for choice values find the menu entry (used below) */
+		if (sym_is_choice(sym) || sym_is_choice_value(sym)) {
+			for (prop = sym->prop; prop; prop = prop->next) {
+				menu = prop->menu;
+				if (prop->menu)
+					break;
+			}
+		}
+		if (stack->sym == last_sym)
+			fprintf(stderr, "%s:%d:error: recursive dependency detected!\n",
+				prop->file->name, prop->lineno);
+		if (stack->expr) {
+			fprintf(stderr, "%s:%d:\tsymbol %s %s value contains %s\n",
+				prop->file->name, prop->lineno,
+				sym->name ? sym->name : "<choice>",
+				prop_get_type_name(prop->type),
+				next_sym->name ? next_sym->name : "<choice>");
+		} else if (stack->prop) {
+			fprintf(stderr, "%s:%d:\tsymbol %s depends on %s\n",
+				prop->file->name, prop->lineno,
+				sym->name ? sym->name : "<choice>",
+				next_sym->name ? next_sym->name : "<choice>");
+		} else if (sym_is_choice(sym)) {
+			fprintf(stderr, "%s:%d:\tchoice %s contains symbol %s\n",
+				menu->file->name, menu->lineno,
+				sym->name ? sym->name : "<choice>",
+				next_sym->name ? next_sym->name : "<choice>");
+		} else if (sym_is_choice_value(sym)) {
+			fprintf(stderr, "%s:%d:\tsymbol %s is part of choice %s\n",
+				menu->file->name, menu->lineno,
+				sym->name ? sym->name : "<choice>",
+				next_sym->name ? next_sym->name : "<choice>");
+		} else {
+			fprintf(stderr, "%s:%d:\tsymbol %s is selected by %s\n",
+				prop->file->name, prop->lineno,
+				sym->name ? sym->name : "<choice>",
+				next_sym->name ? next_sym->name : "<choice>");
+		}
+	}
+
+	if (check_top == &cv_stack)
+		dep_stack_remove();
+}
 
 static struct symbol *sym_check_expr_deps(struct expr *e)
 {
@@ -787,20 +1013,14 @@ static struct symbol *sym_check_expr_deps(struct expr *e)
 }
 
 /* return NULL when dependencies are OK */
-struct symbol *sym_check_deps(struct symbol *sym)
+static struct symbol *sym_check_sym_deps(struct symbol *sym)
 {
 	struct symbol *sym2;
 	struct property *prop;
+	struct dep_stack stack;
 
-	if (sym->flags & SYMBOL_CHECK) {
-		fprintf(stderr, "%s:%d:error: found recursive dependency: %s",
-		        sym->prop->file->name, sym->prop->lineno, sym->name);
-		return sym;
-	}
-	if (sym->flags & SYMBOL_CHECKED)
-		return NULL;
+	dep_stack_insert(&stack, sym);
 
-	sym->flags |= (SYMBOL_CHECK | SYMBOL_CHECKED);
 	sym2 = sym_check_expr_deps(sym->rev_dep.expr);
 	if (sym2)
 		goto out;
@@ -808,19 +1028,93 @@ struct symbol *sym_check_deps(struct symbol *sym)
 	for (prop = sym->prop; prop; prop = prop->next) {
 		if (prop->type == P_CHOICE || prop->type == P_SELECT)
 			continue;
+		stack.prop = prop;
 		sym2 = sym_check_expr_deps(prop->visible.expr);
 		if (sym2)
-			goto out;
+			break;
 		if (prop->type != P_DEFAULT || sym_is_choice(sym))
 			continue;
+		stack.expr = prop->expr;
 		sym2 = sym_check_expr_deps(prop->expr);
 		if (sym2)
-			goto out;
+			break;
+		stack.expr = NULL;
 	}
+
 out:
+	dep_stack_remove();
+
+	return sym2;
+}
+
+static struct symbol *sym_check_choice_deps(struct symbol *choice)
+{
+	struct symbol *sym, *sym2;
+	struct property *prop;
+	struct expr *e;
+	struct dep_stack stack;
+
+	dep_stack_insert(&stack, choice);
+
+	prop = sym_get_choice_prop(choice);
+	expr_list_for_each_sym(prop->expr, e, sym)
+		sym->flags |= (SYMBOL_CHECK | SYMBOL_CHECKED);
+
+	choice->flags |= (SYMBOL_CHECK | SYMBOL_CHECKED);
+	sym2 = sym_check_sym_deps(choice);
+	choice->flags &= ~SYMBOL_CHECK;
 	if (sym2)
-		fprintf(stderr, " -> %s%s", sym->name, sym2 == sym? "\n": "");
-	sym->flags &= ~SYMBOL_CHECK;
+		goto out;
+
+	expr_list_for_each_sym(prop->expr, e, sym) {
+		sym2 = sym_check_sym_deps(sym);
+		if (sym2)
+			break;
+	}
+out:
+	expr_list_for_each_sym(prop->expr, e, sym)
+		sym->flags &= ~SYMBOL_CHECK;
+
+	if (sym2 && sym_is_choice_value(sym2) &&
+	    prop_get_symbol(sym_get_choice_prop(sym2)) == choice)
+		sym2 = choice;
+
+	dep_stack_remove();
+
+	return sym2;
+}
+
+struct symbol *sym_check_deps(struct symbol *sym)
+{
+	struct symbol *sym2;
+	struct property *prop;
+
+	if (sym->flags & SYMBOL_CHECK) {
+		sym_check_print_recursive(sym);
+		return sym;
+	}
+	if (sym->flags & SYMBOL_CHECKED)
+		return NULL;
+
+	if (sym_is_choice_value(sym)) {
+		struct dep_stack stack;
+
+		/* for choice groups start the check with main choice symbol */
+		dep_stack_insert(&stack, sym);
+		prop = sym_get_choice_prop(sym);
+		sym2 = sym_check_deps(prop_get_symbol(prop));
+		dep_stack_remove();
+	} else if (sym_is_choice(sym)) {
+		sym2 = sym_check_choice_deps(sym);
+	} else {
+		sym->flags |= (SYMBOL_CHECK | SYMBOL_CHECKED);
+		sym2 = sym_check_sym_deps(sym);
+		sym->flags &= ~SYMBOL_CHECK;
+	}
+
+	if (sym2 && sym2 == sym)
+		sym2 = NULL;
+
 	return sym2;
 }
 
@@ -849,7 +1143,7 @@ struct property *prop_alloc(enum prop_type type, struct symbol *sym)
 struct symbol *prop_get_symbol(struct property *prop)
 {
 	if (prop->expr && (prop->expr->type == E_SYMBOL ||
-			   prop->expr->type == E_CHOICE))
+			   prop->expr->type == E_LIST))
 		return prop->expr->left.sym;
 	return NULL;
 }
@@ -859,6 +1153,8 @@ const char *prop_get_type_name(enum prop_type type)
 	switch (type) {
 	case P_PROMPT:
 		return "prompt";
+	case P_ENV:
+		return "env";
 	case P_COMMENT:
 		return "comment";
 	case P_MENU:
@@ -871,8 +1167,39 @@ const char *prop_get_type_name(enum prop_type type)
 		return "select";
 	case P_RANGE:
 		return "range";
+	case P_SYMBOL:
+		return "symbol";
 	case P_UNKNOWN:
 		break;
 	}
 	return "unknown";
 }
+
+static void prop_add_env(const char *env)
+{
+	struct symbol *sym, *sym2;
+	struct property *prop;
+	char *p;
+
+	sym = current_entry->sym;
+	sym->flags |= SYMBOL_AUTO;
+	for_all_properties(sym, prop, P_ENV) {
+		sym2 = prop_get_symbol(prop);
+		if (strcmp(sym2->name, env))
+			menu_warn(current_entry, "redefining environment symbol from %s",
+				  sym2->name);
+		return;
+	}
+
+	prop = prop_alloc(P_ENV, sym);
+	prop->expr = expr_alloc_symbol(sym_lookup(env, SYMBOL_CONST));
+
+	sym_env_list = expr_alloc_one(E_LIST, sym_env_list);
+	sym_env_list->right.sym = sym;
+
+	p = getenv(env);
+	if (p)
+		sym_add_default(sym, p);
+	else
+		menu_warn(current_entry, "environment variable %s undefined", env);
+}
diff --git a/scripts/kconfig/util.c b/scripts/kconfig/util.c
index e3f28b9..78b5c04 100644
--- a/scripts/kconfig/util.c
+++ b/scripts/kconfig/util.c
@@ -29,6 +29,8 @@ struct file *file_lookup(const char *name)
 /* write a dependency file as used by kbuild to track dependencies */
 int file_write_dep(const char *name)
 {
+	struct symbol *sym, *env_sym;
+	struct expr *e;
 	struct file *file;
 	FILE *out;
 
@@ -44,21 +46,39 @@ int file_write_dep(const char *name)
 		else
 			fprintf(out, "\t%s\n", file->name);
 	}
-	fprintf(out, "\ninclude/config/auto.conf: \\\n"
-		     "\t$(deps_config)\n\n"
-		     "$(deps_config): ;\n");
+	fprintf(out, "\n%s: \\\n"
+		     "\t$(deps_config)\n\n", conf_get_autoconfig_name());
+
+	expr_list_for_each_sym(sym_env_list, e, sym) {
+		struct property *prop;
+		const char *value;
+
+		prop = sym_get_env_prop(sym);
+		env_sym = prop_get_symbol(prop);
+		if (!env_sym)
+			continue;
+		value = getenv(env_sym->name);
+		if (!value)
+			value = "";
+		fprintf(out, "ifneq \"$(%s)\" \"%s\"\n", env_sym->name, value);
+		fprintf(out, "%s: FORCE\n", conf_get_autoconfig_name());
+		fprintf(out, "endif\n");
+	}
+
+	fprintf(out, "\n$(deps_config): ;\n");
 	fclose(out);
 	rename("..config.tmp", name);
 	return 0;
 }
 
 
-/* Allocate initial growable sting */
+/* Allocate initial growable string */
 struct gstr str_new(void)
 {
 	struct gstr gs;
 	gs.s = malloc(sizeof(char) * 64);
-	gs.len = 16;
+	gs.len = 64;
+	gs.max_width = 0;
 	strcpy(gs.s, "\0");
 	return gs;
 }
@@ -69,6 +89,7 @@ struct gstr str_assign(const char *s)
 	struct gstr gs;
 	gs.s = strdup(s);
 	gs.len = strlen(s) + 1;
+	gs.max_width = 0;
 	return gs;
 }
 
@@ -84,12 +105,15 @@ void str_free(struct gstr *gs)
 /* Append to growable string */
 void str_append(struct gstr *gs, const char *s)
 {
-	size_t l = strlen(gs->s) + strlen(s) + 1;
-	if (l > gs->len) {
-		gs->s   = realloc(gs->s, l);
-		gs->len = l;
+	size_t l;
+	if (s) {
+		l = strlen(gs->s) + strlen(s) + 1;
+		if (l > gs->len) {
+			gs->s   = realloc(gs->s, l);
+			gs->len = l;
+		}
+		strcat(gs->s, s);
 	}
-	strcat(gs->s, s);
 }
 
 /* Append printf formatted string to growable string */
diff --git a/scripts/kconfig/zconf.gperf b/scripts/kconfig/zconf.gperf
index 9b44c80..d8bc742 100644
--- a/scripts/kconfig/zconf.gperf
+++ b/scripts/kconfig/zconf.gperf
@@ -9,6 +9,8 @@
 
 struct kconf_id;
 
+static struct kconf_id *kconf_id_lookup(register const char *str, register unsigned int len);
+
 %%
 mainmenu,	T_MAINMENU,	TF_COMMAND
 menu,		T_MENU,		TF_COMMAND
@@ -23,7 +25,6 @@ help,		T_HELP,		TF_COMMAND
 if,		T_IF,		TF_COMMAND|TF_PARAM
 endif,		T_ENDIF,	TF_COMMAND
 depends,	T_DEPENDS,	TF_COMMAND
-requires,	T_REQUIRES,	TF_COMMAND
 optional,	T_OPTIONAL,	TF_COMMAND
 default,	T_DEFAULT,	TF_COMMAND, S_UNKNOWN
 prompt,		T_PROMPT,	TF_COMMAND
@@ -32,15 +33,14 @@ def_tristate,	T_DEFAULT,	TF_COMMAND, S_TRISTATE
 bool,		T_TYPE,		TF_COMMAND, S_BOOLEAN
 boolean,	T_TYPE,		TF_COMMAND, S_BOOLEAN
 def_bool,	T_DEFAULT,	TF_COMMAND, S_BOOLEAN
-def_boolean,	T_DEFAULT,	TF_COMMAND, S_BOOLEAN
 int,		T_TYPE,		TF_COMMAND, S_INT
 hex,		T_TYPE,		TF_COMMAND, S_HEX
 string,		T_TYPE,		TF_COMMAND, S_STRING
 select,		T_SELECT,	TF_COMMAND
-enable,		T_SELECT,	TF_COMMAND
 range,		T_RANGE,	TF_COMMAND
 option,		T_OPTION,	TF_COMMAND
 on,		T_ON,		TF_PARAM
 modules,	T_OPT_MODULES,	TF_OPTION
 defconfig_list,	T_OPT_DEFCONFIG_LIST,TF_OPTION
+env,		T_OPT_ENV,	TF_OPTION
 %%
diff --git a/scripts/kconfig/zconf.hash.c_shipped b/scripts/kconfig/zconf.hash.c_shipped
index 47c8b5b..c1748fa 100644
--- a/scripts/kconfig/zconf.hash.c_shipped
+++ b/scripts/kconfig/zconf.hash.c_shipped
@@ -1,4 +1,4 @@
-/* ANSI-C code produced by gperf version 3.0.1 */
+/* ANSI-C code produced by gperf version 3.0.3 */
 /* Command-line: gperf  */
 /* Computed positions: -k'1,3' */
 
@@ -30,7 +30,9 @@
 #endif
 
 struct kconf_id;
-/* maximum key range = 45, duplicates = 0 */
+
+static struct kconf_id *kconf_id_lookup(register const char *str, register unsigned int len);
+/* maximum key range = 47, duplicates = 0 */
 
 #ifdef __GNUC__
 __inline
@@ -44,32 +46,32 @@ kconf_id_hash (register const char *str, register unsigned int len)
 {
   static unsigned char asso_values[] =
     {
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 25, 30, 15,
-       0, 15,  0, 47,  5, 15, 47, 47, 30, 20,
-       5,  0, 25, 15,  0,  0, 10, 35, 47, 47,
-       5, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
-      47, 47, 47, 47, 47, 47
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 11,  5,
+       0,  0,  5, 49,  5, 20, 49, 49,  5, 20,
+       5,  0, 30, 49,  0, 15,  0, 10,  0, 49,
+      25, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
+      49, 49, 49, 49, 49, 49
     };
   register int hval = len;
 
@@ -89,136 +91,131 @@ kconf_id_hash (register const char *str, register unsigned int len)
 struct kconf_id_strings_t
   {
     char kconf_id_strings_str2[sizeof("on")];
-    char kconf_id_strings_str6[sizeof("string")];
-    char kconf_id_strings_str7[sizeof("default")];
-    char kconf_id_strings_str8[sizeof("def_bool")];
+    char kconf_id_strings_str3[sizeof("env")];
+    char kconf_id_strings_str5[sizeof("endif")];
+    char kconf_id_strings_str6[sizeof("option")];
+    char kconf_id_strings_str7[sizeof("endmenu")];
+    char kconf_id_strings_str8[sizeof("optional")];
+    char kconf_id_strings_str9[sizeof("endchoice")];
     char kconf_id_strings_str10[sizeof("range")];
-    char kconf_id_strings_str11[sizeof("def_boolean")];
-    char kconf_id_strings_str12[sizeof("def_tristate")];
-    char kconf_id_strings_str13[sizeof("hex")];
-    char kconf_id_strings_str14[sizeof("defconfig_list")];
-    char kconf_id_strings_str16[sizeof("option")];
-    char kconf_id_strings_str17[sizeof("if")];
-    char kconf_id_strings_str18[sizeof("optional")];
-    char kconf_id_strings_str20[sizeof("endif")];
-    char kconf_id_strings_str21[sizeof("choice")];
-    char kconf_id_strings_str22[sizeof("endmenu")];
-    char kconf_id_strings_str23[sizeof("requires")];
-    char kconf_id_strings_str24[sizeof("endchoice")];
-    char kconf_id_strings_str26[sizeof("config")];
+    char kconf_id_strings_str11[sizeof("choice")];
+    char kconf_id_strings_str12[sizeof("default")];
+    char kconf_id_strings_str13[sizeof("def_bool")];
+    char kconf_id_strings_str14[sizeof("help")];
+    char kconf_id_strings_str15[sizeof("bool")];
+    char kconf_id_strings_str16[sizeof("config")];
+    char kconf_id_strings_str17[sizeof("def_tristate")];
+    char kconf_id_strings_str18[sizeof("boolean")];
+    char kconf_id_strings_str19[sizeof("defconfig_list")];
+    char kconf_id_strings_str21[sizeof("string")];
+    char kconf_id_strings_str22[sizeof("if")];
+    char kconf_id_strings_str23[sizeof("int")];
+    char kconf_id_strings_str26[sizeof("select")];
     char kconf_id_strings_str27[sizeof("modules")];
-    char kconf_id_strings_str28[sizeof("int")];
+    char kconf_id_strings_str28[sizeof("tristate")];
     char kconf_id_strings_str29[sizeof("menu")];
-    char kconf_id_strings_str31[sizeof("prompt")];
-    char kconf_id_strings_str32[sizeof("depends")];
-    char kconf_id_strings_str33[sizeof("tristate")];
-    char kconf_id_strings_str34[sizeof("bool")];
+    char kconf_id_strings_str31[sizeof("source")];
+    char kconf_id_strings_str32[sizeof("comment")];
+    char kconf_id_strings_str33[sizeof("hex")];
     char kconf_id_strings_str35[sizeof("menuconfig")];
-    char kconf_id_strings_str36[sizeof("select")];
-    char kconf_id_strings_str37[sizeof("boolean")];
-    char kconf_id_strings_str39[sizeof("help")];
-    char kconf_id_strings_str41[sizeof("source")];
-    char kconf_id_strings_str42[sizeof("comment")];
-    char kconf_id_strings_str43[sizeof("mainmenu")];
-    char kconf_id_strings_str46[sizeof("enable")];
+    char kconf_id_strings_str36[sizeof("prompt")];
+    char kconf_id_strings_str37[sizeof("depends")];
+    char kconf_id_strings_str48[sizeof("mainmenu")];
   };
 static struct kconf_id_strings_t kconf_id_strings_contents =
   {
     "on",
-    "string",
+    "env",
+    "endif",
+    "option",
+    "endmenu",
+    "optional",
+    "endchoice",
+    "range",
+    "choice",
     "default",
     "def_bool",
-    "range",
-    "def_boolean",
+    "help",
+    "bool",
+    "config",
     "def_tristate",
-    "hex",
+    "boolean",
     "defconfig_list",
-    "option",
+    "string",
     "if",
-    "optional",
-    "endif",
-    "choice",
-    "endmenu",
-    "requires",
-    "endchoice",
-    "config",
-    "modules",
     "int",
-    "menu",
-    "prompt",
-    "depends",
-    "tristate",
-    "bool",
-    "menuconfig",
     "select",
-    "boolean",
-    "help",
+    "modules",
+    "tristate",
+    "menu",
     "source",
     "comment",
-    "mainmenu",
-    "enable"
+    "hex",
+    "menuconfig",
+    "prompt",
+    "depends",
+    "mainmenu"
   };
 #define kconf_id_strings ((const char *) &kconf_id_strings_contents)
 #ifdef __GNUC__
 __inline
+#ifdef __GNUC_STDC_INLINE__
+__attribute__ ((__gnu_inline__))
+#endif
 #endif
 struct kconf_id *
 kconf_id_lookup (register const char *str, register unsigned int len)
 {
   enum
     {
-      TOTAL_KEYWORDS = 33,
+      TOTAL_KEYWORDS = 31,
       MIN_WORD_LENGTH = 2,
       MAX_WORD_LENGTH = 14,
       MIN_HASH_VALUE = 2,
-      MAX_HASH_VALUE = 46
+      MAX_HASH_VALUE = 48
     };
 
   static struct kconf_id wordlist[] =
     {
       {-1}, {-1},
       {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str2,		T_ON,		TF_PARAM},
-      {-1}, {-1}, {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str6,		T_TYPE,		TF_COMMAND, S_STRING},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str7,	T_DEFAULT,	TF_COMMAND, S_UNKNOWN},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str8,	T_DEFAULT,	TF_COMMAND, S_BOOLEAN},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str3,		T_OPT_ENV,	TF_OPTION},
       {-1},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str5,		T_ENDIF,	TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str6,		T_OPTION,	TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str7,	T_ENDMENU,	TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str8,	T_OPTIONAL,	TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str9,	T_ENDCHOICE,	TF_COMMAND},
       {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str10,		T_RANGE,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str11,	T_DEFAULT,	TF_COMMAND, S_BOOLEAN},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str12,	T_DEFAULT,	TF_COMMAND, S_TRISTATE},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str13,		T_TYPE,		TF_COMMAND, S_HEX},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str14,	T_OPT_DEFCONFIG_LIST,TF_OPTION},
-      {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str16,		T_OPTION,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str17,		T_IF,		TF_COMMAND|TF_PARAM},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str18,	T_OPTIONAL,	TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str11,		T_CHOICE,	TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str12,	T_DEFAULT,	TF_COMMAND, S_UNKNOWN},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str13,	T_DEFAULT,	TF_COMMAND, S_BOOLEAN},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str14,		T_HELP,		TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str15,		T_TYPE,		TF_COMMAND, S_BOOLEAN},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str16,		T_CONFIG,	TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str17,	T_DEFAULT,	TF_COMMAND, S_TRISTATE},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str18,	T_TYPE,		TF_COMMAND, S_BOOLEAN},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str19,	T_OPT_DEFCONFIG_LIST,TF_OPTION},
       {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str20,		T_ENDIF,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str21,		T_CHOICE,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str22,	T_ENDMENU,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str23,	T_REQUIRES,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str24,	T_ENDCHOICE,	TF_COMMAND},
-      {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str26,		T_CONFIG,	TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str21,		T_TYPE,		TF_COMMAND, S_STRING},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str22,		T_IF,		TF_COMMAND|TF_PARAM},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str23,		T_TYPE,		TF_COMMAND, S_INT},
+      {-1}, {-1},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str26,		T_SELECT,	TF_COMMAND},
       {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str27,	T_OPT_MODULES,	TF_OPTION},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str28,		T_TYPE,		TF_COMMAND, S_INT},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str28,	T_TYPE,		TF_COMMAND, S_TRISTATE},
       {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str29,		T_MENU,		TF_COMMAND},
       {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str31,		T_PROMPT,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str32,	T_DEPENDS,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str33,	T_TYPE,		TF_COMMAND, S_TRISTATE},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str34,		T_TYPE,		TF_COMMAND, S_BOOLEAN},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str35,	T_MENUCONFIG,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str36,		T_SELECT,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str37,	T_TYPE,		TF_COMMAND, S_BOOLEAN},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str31,		T_SOURCE,	TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str32,	T_COMMENT,	TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str33,		T_TYPE,		TF_COMMAND, S_HEX},
       {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str39,		T_HELP,		TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str35,	T_MENUCONFIG,	TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str36,		T_PROMPT,	TF_COMMAND},
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str37,	T_DEPENDS,	TF_COMMAND},
+      {-1}, {-1}, {-1}, {-1}, {-1}, {-1}, {-1}, {-1}, {-1},
       {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str41,		T_SOURCE,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str42,	T_COMMENT,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str43,	T_MAINMENU,	TF_COMMAND},
-      {-1}, {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str46,		T_SELECT,	TF_COMMAND}
+      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str48,	T_MAINMENU,	TF_COMMAND}
     };
 
   if (len <= MAX_WORD_LENGTH && len >= MIN_WORD_LENGTH)
diff --git a/scripts/kconfig/zconf.l b/scripts/kconfig/zconf.l
index 187d38c..7ad18f7 100644
--- a/scripts/kconfig/zconf.l
+++ b/scripts/kconfig/zconf.l
@@ -1,5 +1,6 @@
 %option backup nostdinit noyywrap never-interactive full ecs
 %option 8bit backup nodefault perf-report perf-report
+%option noinput
 %x COMMAND HELP STRING PARAM
 %{
 /*
@@ -38,7 +39,7 @@ static int last_ts, first_ts;
 static void zconf_endhelp(void);
 static void zconf_endfile(void);
 
-void new_string(void)
+static void new_string(void)
 {
 	text = malloc(START_STRSIZE);
 	text_asize = START_STRSIZE;
@@ -46,7 +47,7 @@ void new_string(void)
 	*text = 0;
 }
 
-void append_string(const char *str, int size)
+static void append_string(const char *str, int size)
 {
 	int new_size = text_size + size + 1;
 	if (new_size > text_asize) {
@@ -60,7 +61,7 @@ void append_string(const char *str, int size)
 	text[text_size] = 0;
 }
 
-void alloc_string(const char *str, int size)
+static void alloc_string(const char *str, int size)
 {
 	text = malloc(size + 1);
 	memcpy(text, str, size);
@@ -217,6 +218,11 @@ n	[A-Za-z0-9_]
 		append_string("\n", 1);
 	}
 	[^ \t\n].* {
+		while (yyleng) {
+			if ((yytext[yyleng-1] != ' ') && (yytext[yyleng-1] != '\t'))
+				break;
+			yyleng--;
+		}
 		append_string(yytext, yyleng);
 		if (!first_ts)
 			first_ts = last_ts;
@@ -256,7 +262,7 @@ static void zconf_endhelp(void)
  * ./name
  * $(srctree)/name
  * The latter is used when srctree is separate from objtree
- * when compiling the kernel.
+ * when compiling the barebox.
  * Return NULL if file is not found.
  */
 FILE *zconf_fopen(const char *name)
@@ -308,11 +314,14 @@ void zconf_nextfile(const char *name)
 	current_buf = buf;
 
 	if (file->flags & FILE_BUSY) {
-		printf("recursive scan (%s)?\n", name);
+		printf("%s:%d: do not source '%s' from itself\n",
+		       zconf_curname(), zconf_lineno(), name);
 		exit(1);
 	}
 	if (file->flags & FILE_SCANNED) {
-		printf("file %s already scanned?\n", name);
+		printf("%s:%d: file '%s' is already sourced from '%s'\n",
+		       zconf_curname(), zconf_lineno(), name,
+		       file->parent->name);
 		exit(1);
 	}
 	file->flags |= FILE_BUSY;
diff --git a/scripts/kconfig/zconf.tab.c_shipped b/scripts/kconfig/zconf.tab.c_shipped
index ec21db7..32a9eef 100644
--- a/scripts/kconfig/zconf.tab.c_shipped
+++ b/scripts/kconfig/zconf.tab.c_shipped
@@ -1,30 +1,39 @@
-/* A Bison parser, made by GNU Bison 2.1.  */
 
-/* Skeleton parser for Yacc-like parsing with Bison,
-   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005 Free Software Foundation, Inc.
+/* A Bison parser, made by GNU Bison 2.4.1.  */
 
-   This program is free software; you can redistribute it and/or modify
+/* Skeleton implementation for Bison's Yacc-like parsers in C
+   
+      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
+   Free Software Foundation, Inc.
+   
+   This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
+   the Free Software Foundation, either version 3 of the License, or
+   (at your option) any later version.
+   
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
-
+   
    You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software
-   Foundation, Inc., 51 Franklin Street, Fifth Floor,
-   Boston, MA 02110-1301, USA.  */
-
-/* As a special exception, when this file is copied by Bison into a
-   Bison output file, you may use that output file without restriction.
-   This special exception was added by the Free Software Foundation
-   in version 1.24 of Bison.  */
-
-/* Written by Richard Stallman by simplifying the original so called
-   ``semantic'' parser.  */
+   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */
+
+/* As a special exception, you may create a larger work that contains
+   part or all of the Bison parser skeleton and distribute that work
+   under terms of your choice, so long as that work isn't itself a
+   parser generator using the skeleton or a modified version thereof
+   as a parser skeleton.  Alternatively, if you modify or redistribute
+   the parser skeleton itself, you may (at your option) remove this
+   special exception, which will cause the skeleton and the resulting
+   Bison output files to be licensed under the GNU General Public
+   License without this special exception.
+   
+   This special exception was added by the Free Software Foundation in
+   version 2.2 of Bison.  */
+
+/* C LALR(1) parser skeleton written by Richard Stallman, by
+   simplifying the original so-called "semantic" parser.  */
 
 /* All symbols defined below should begin with yy or YY, to avoid
    infringing on user name space.  This should be done even for local
@@ -37,7 +46,7 @@
 #define YYBISON 1
 
 /* Bison version.  */
-#define YYBISON_VERSION "2.1"
+#define YYBISON_VERSION "2.4.1"
 
 /* Skeleton name.  */
 #define YYSKELETON_NAME "yacc.c"
@@ -45,96 +54,23 @@
 /* Pure parsers.  */
 #define YYPURE 0
 
+/* Push parsers.  */
+#define YYPUSH 0
+
+/* Pull parsers.  */
+#define YYPULL 1
+
 /* Using locations.  */
 #define YYLSP_NEEDED 0
 
 /* Substitute the variable and function names.  */
-#define yyparse zconfparse
-#define yylex   zconflex
-#define yyerror zconferror
-#define yylval  zconflval
-#define yychar  zconfchar
-#define yydebug zconfdebug
-#define yynerrs zconfnerrs
-
-
-/* Tokens.  */
-#ifndef YYTOKENTYPE
-# define YYTOKENTYPE
-   /* Put the tokens into the symbol table, so that GDB and other debuggers
-      know about them.  */
-   enum yytokentype {
-     T_MAINMENU = 258,
-     T_MENU = 259,
-     T_ENDMENU = 260,
-     T_SOURCE = 261,
-     T_CHOICE = 262,
-     T_ENDCHOICE = 263,
-     T_COMMENT = 264,
-     T_CONFIG = 265,
-     T_MENUCONFIG = 266,
-     T_HELP = 267,
-     T_HELPTEXT = 268,
-     T_IF = 269,
-     T_ENDIF = 270,
-     T_DEPENDS = 271,
-     T_REQUIRES = 272,
-     T_OPTIONAL = 273,
-     T_PROMPT = 274,
-     T_TYPE = 275,
-     T_DEFAULT = 276,
-     T_SELECT = 277,
-     T_RANGE = 278,
-     T_OPTION = 279,
-     T_ON = 280,
-     T_WORD = 281,
-     T_WORD_QUOTE = 282,
-     T_UNEQUAL = 283,
-     T_CLOSE_PAREN = 284,
-     T_OPEN_PAREN = 285,
-     T_EOL = 286,
-     T_OR = 287,
-     T_AND = 288,
-     T_EQUAL = 289,
-     T_NOT = 290
-   };
-#endif
-/* Tokens.  */
-#define T_MAINMENU 258
-#define T_MENU 259
-#define T_ENDMENU 260
-#define T_SOURCE 261
-#define T_CHOICE 262
-#define T_ENDCHOICE 263
-#define T_COMMENT 264
-#define T_CONFIG 265
-#define T_MENUCONFIG 266
-#define T_HELP 267
-#define T_HELPTEXT 268
-#define T_IF 269
-#define T_ENDIF 270
-#define T_DEPENDS 271
-#define T_REQUIRES 272
-#define T_OPTIONAL 273
-#define T_PROMPT 274
-#define T_TYPE 275
-#define T_DEFAULT 276
-#define T_SELECT 277
-#define T_RANGE 278
-#define T_OPTION 279
-#define T_ON 280
-#define T_WORD 281
-#define T_WORD_QUOTE 282
-#define T_UNEQUAL 283
-#define T_CLOSE_PAREN 284
-#define T_OPEN_PAREN 285
-#define T_EOL 286
-#define T_OR 287
-#define T_AND 288
-#define T_EQUAL 289
-#define T_NOT 290
-
-
+#define yyparse         zconfparse
+#define yylex           zconflex
+#define yyerror         zconferror
+#define yylval          zconflval
+#define yychar          zconfchar
+#define yydebug         zconfdebug
+#define yynerrs         zconfnerrs
 
 
 /* Copy the first part of user declarations.  */
@@ -155,8 +91,6 @@
 #define LKC_DIRECT_LINK
 #include "lkc.h"
 
-#include "zconf.hash.c"
-
 #define printd(mask, fmt...) if (cdebug & (mask)) printf(fmt)
 
 #define PRINTD		0x0001
@@ -170,7 +104,7 @@ static void zconf_error(const char *err, ...);
 static void zconferror(const char *err);
 static bool zconf_endtoken(struct kconf_id *id, int starttoken, int endtoken);
 
-struct symbol *symbol_hash[257];
+struct symbol *symbol_hash[SYMBOL_HASHSIZE];
 
 static struct menu *current_menu, *current_entry;
 
@@ -180,6 +114,7 @@ static struct menu *current_menu, *current_entry;
 #endif
 
 
+
 /* Enabling traces.  */
 #ifndef YYDEBUG
 # define YYDEBUG 0
@@ -198,45 +133,126 @@ static struct menu *current_menu, *current_entry;
 # define YYTOKEN_TABLE 0
 #endif
 
-#if ! defined (YYSTYPE) && ! defined (YYSTYPE_IS_DECLARED)
 
-typedef union YYSTYPE {
+/* Tokens.  */
+#ifndef YYTOKENTYPE
+# define YYTOKENTYPE
+   /* Put the tokens into the symbol table, so that GDB and other debuggers
+      know about them.  */
+   enum yytokentype {
+     T_MAINMENU = 258,
+     T_MENU = 259,
+     T_ENDMENU = 260,
+     T_SOURCE = 261,
+     T_CHOICE = 262,
+     T_ENDCHOICE = 263,
+     T_COMMENT = 264,
+     T_CONFIG = 265,
+     T_MENUCONFIG = 266,
+     T_HELP = 267,
+     T_HELPTEXT = 268,
+     T_IF = 269,
+     T_ENDIF = 270,
+     T_DEPENDS = 271,
+     T_OPTIONAL = 272,
+     T_PROMPT = 273,
+     T_TYPE = 274,
+     T_DEFAULT = 275,
+     T_SELECT = 276,
+     T_RANGE = 277,
+     T_OPTION = 278,
+     T_ON = 279,
+     T_WORD = 280,
+     T_WORD_QUOTE = 281,
+     T_UNEQUAL = 282,
+     T_CLOSE_PAREN = 283,
+     T_OPEN_PAREN = 284,
+     T_EOL = 285,
+     T_OR = 286,
+     T_AND = 287,
+     T_EQUAL = 288,
+     T_NOT = 289
+   };
+#endif
+
+
+
+#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
+typedef union YYSTYPE
+{
+
+
 	char *string;
 	struct file *file;
 	struct symbol *symbol;
 	struct expr *expr;
 	struct menu *menu;
 	struct kconf_id *id;
-} YYSTYPE;
-/* Line 196 of yacc.c.  */
 
+
+
+} YYSTYPE;
+# define YYSTYPE_IS_TRIVIAL 1
 # define yystype YYSTYPE /* obsolescent; will be withdrawn */
 # define YYSTYPE_IS_DECLARED 1
-# define YYSTYPE_IS_TRIVIAL 1
 #endif
 
 
-
 /* Copy the second part of user declarations.  */
 
 
-/* Line 219 of yacc.c.  */
+/* Include zconf.hash.c here so it can see the token constants. */
+#include "zconf.hash.c"
+
+
+
+#ifdef short
+# undef short
+#endif
 
+#ifdef YYTYPE_UINT8
+typedef YYTYPE_UINT8 yytype_uint8;
+#else
+typedef unsigned char yytype_uint8;
+#endif
 
-#if ! defined (YYSIZE_T) && defined (__SIZE_TYPE__)
-# define YYSIZE_T __SIZE_TYPE__
+#ifdef YYTYPE_INT8
+typedef YYTYPE_INT8 yytype_int8;
+#elif (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
+typedef signed char yytype_int8;
+#else
+typedef short int yytype_int8;
 #endif
-#if ! defined (YYSIZE_T) && defined (size_t)
-# define YYSIZE_T size_t
+
+#ifdef YYTYPE_UINT16
+typedef YYTYPE_UINT16 yytype_uint16;
+#else
+typedef unsigned short int yytype_uint16;
 #endif
-#if ! defined (YYSIZE_T) && (defined (__STDC__) || defined (__cplusplus))
-# include <stddef.h> /* INFRINGES ON USER NAME SPACE */
-# define YYSIZE_T size_t
+
+#ifdef YYTYPE_INT16
+typedef YYTYPE_INT16 yytype_int16;
+#else
+typedef short int yytype_int16;
 #endif
-#if ! defined (YYSIZE_T)
-# define YYSIZE_T unsigned int
+
+#ifndef YYSIZE_T
+# ifdef __SIZE_TYPE__
+#  define YYSIZE_T __SIZE_TYPE__
+# elif defined size_t
+#  define YYSIZE_T size_t
+# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
+#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
+#  define YYSIZE_T size_t
+# else
+#  define YYSIZE_T unsigned int
+# endif
 #endif
 
+#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)
+
 #ifndef YY_
 # if YYENABLE_NLS
 #  if ENABLE_NLS
@@ -249,7 +265,32 @@ typedef union YYSTYPE {
 # endif
 #endif
 
-#if ! defined (yyoverflow) || YYERROR_VERBOSE
+/* Suppress unused-variable warnings by "using" E.  */
+#if ! defined lint || defined __GNUC__
+# define YYUSE(e) ((void) (e))
+#else
+# define YYUSE(e) /* empty */
+#endif
+
+/* Identity function, used to suppress warnings about constant conditions.  */
+#ifndef lint
+# define YYID(n) (n)
+#else
+#if (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
+static int
+YYID (int yyi)
+#else
+static int
+YYID (yyi)
+    int yyi;
+#endif
+{
+  return yyi;
+}
+#endif
+
+#if ! defined yyoverflow || YYERROR_VERBOSE
 
 /* The parser invokes alloca or malloc; define the necessary symbols.  */
 
@@ -257,66 +298,78 @@ typedef union YYSTYPE {
 #  if YYSTACK_USE_ALLOCA
 #   ifdef __GNUC__
 #    define YYSTACK_ALLOC __builtin_alloca
+#   elif defined __BUILTIN_VA_ARG_INCR
+#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
+#   elif defined _AIX
+#    define YYSTACK_ALLOC __alloca
+#   elif defined _MSC_VER
+#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
+#    define alloca _alloca
 #   else
 #    define YYSTACK_ALLOC alloca
-#    if defined (__STDC__) || defined (__cplusplus)
+#    if ! defined _ALLOCA_H && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
 #     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
-#     define YYINCLUDED_STDLIB_H
+#     ifndef _STDLIB_H
+#      define _STDLIB_H 1
+#     endif
 #    endif
 #   endif
 #  endif
 # endif
 
 # ifdef YYSTACK_ALLOC
-   /* Pacify GCC's `empty if-body' warning. */
-#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
+   /* Pacify GCC's `empty if-body' warning.  */
+#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
 #  ifndef YYSTACK_ALLOC_MAXIMUM
     /* The OS might guarantee only one guard page at the bottom of the stack,
        and a page size can be as small as 4096 bytes.  So we cannot safely
        invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
        to allow for a few compiler-allocated temporary stack slots.  */
-#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2005 */
+#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
 #  endif
 # else
 #  define YYSTACK_ALLOC YYMALLOC
 #  define YYSTACK_FREE YYFREE
 #  ifndef YYSTACK_ALLOC_MAXIMUM
-#   define YYSTACK_ALLOC_MAXIMUM ((YYSIZE_T) -1)
+#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
 #  endif
-#  ifdef __cplusplus
-extern "C" {
+#  if (defined __cplusplus && ! defined _STDLIB_H \
+       && ! ((defined YYMALLOC || defined malloc) \
+	     && (defined YYFREE || defined free)))
+#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
+#   ifndef _STDLIB_H
+#    define _STDLIB_H 1
+#   endif
 #  endif
 #  ifndef YYMALLOC
 #   define YYMALLOC malloc
-#   if (! defined (malloc) && ! defined (YYINCLUDED_STDLIB_H) \
-	&& (defined (__STDC__) || defined (__cplusplus)))
+#   if ! defined malloc && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
 void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
 #   endif
 #  endif
 #  ifndef YYFREE
 #   define YYFREE free
-#   if (! defined (free) && ! defined (YYINCLUDED_STDLIB_H) \
-	&& (defined (__STDC__) || defined (__cplusplus)))
+#   if ! defined free && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
 void free (void *); /* INFRINGES ON USER NAME SPACE */
 #   endif
 #  endif
-#  ifdef __cplusplus
-}
-#  endif
 # endif
-#endif /* ! defined (yyoverflow) || YYERROR_VERBOSE */
+#endif /* ! defined yyoverflow || YYERROR_VERBOSE */
 
 
-#if (! defined (yyoverflow) \
-     && (! defined (__cplusplus) \
-	 || (defined (YYSTYPE_IS_TRIVIAL) && YYSTYPE_IS_TRIVIAL)))
+#if (! defined yyoverflow \
+     && (! defined __cplusplus \
+	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))
 
 /* A type that is properly aligned for any stack member.  */
 union yyalloc
 {
-  short int yyss;
-  YYSTYPE yyvs;
-  };
+  yytype_int16 yyss_alloc;
+  YYSTYPE yyvs_alloc;
+};
 
 /* The size of the maximum gap between one aligned stack and the next.  */
 # define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)
@@ -324,13 +377,13 @@ union yyalloc
 /* The size of an array large to enough to hold all stacks, each with
    N elements.  */
 # define YYSTACK_BYTES(N) \
-     ((N) * (sizeof (short int) + sizeof (YYSTYPE))			\
+     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
       + YYSTACK_GAP_MAXIMUM)
 
 /* Copy COUNT objects from FROM to TO.  The source and destination do
    not overlap.  */
 # ifndef YYCOPY
-#  if defined (__GNUC__) && 1 < __GNUC__
+#  if defined __GNUC__ && 1 < __GNUC__
 #   define YYCOPY(To, From, Count) \
       __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
 #  else
@@ -341,7 +394,7 @@ union yyalloc
 	  for (yyi = 0; yyi < (Count); yyi++)	\
 	    (To)[yyi] = (From)[yyi];		\
 	}					\
-      while (0)
+      while (YYID (0))
 #  endif
 # endif
 
@@ -350,48 +403,42 @@ union yyalloc
    elements in the stack, and YYPTR gives the new location of the
    stack.  Advance YYPTR to a properly aligned location for the next
    stack.  */
-# define YYSTACK_RELOCATE(Stack)					\
+# define YYSTACK_RELOCATE(Stack_alloc, Stack)				\
     do									\
       {									\
 	YYSIZE_T yynewbytes;						\
-	YYCOPY (&yyptr->Stack, Stack, yysize);				\
-	Stack = &yyptr->Stack;						\
+	YYCOPY (&yyptr->Stack_alloc, Stack, yysize);			\
+	Stack = &yyptr->Stack_alloc;					\
 	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
 	yyptr += yynewbytes / sizeof (*yyptr);				\
       }									\
-    while (0)
+    while (YYID (0))
 
 #endif
 
-#if defined (__STDC__) || defined (__cplusplus)
-   typedef signed char yysigned_char;
-#else
-   typedef short int yysigned_char;
-#endif
-
-/* YYFINAL -- State number of the termination state. */
+/* YYFINAL -- State number of the termination state.  */
 #define YYFINAL  3
 /* YYLAST -- Last index in YYTABLE.  */
-#define YYLAST   275
+#define YYLAST   259
 
-/* YYNTOKENS -- Number of terminals. */
-#define YYNTOKENS  36
-/* YYNNTS -- Number of nonterminals. */
-#define YYNNTS  45
-/* YYNRULES -- Number of rules. */
+/* YYNTOKENS -- Number of terminals.  */
+#define YYNTOKENS  35
+/* YYNNTS -- Number of nonterminals.  */
+#define YYNNTS  46
+/* YYNRULES -- Number of rules.  */
 #define YYNRULES  110
-/* YYNRULES -- Number of states. */
-#define YYNSTATES  183
+/* YYNRULES -- Number of states.  */
+#define YYNSTATES  180
 
 /* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
 #define YYUNDEFTOK  2
-#define YYMAXUTOK   290
+#define YYMAXUTOK   289
 
 #define YYTRANSLATE(YYX)						\
   ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)
 
 /* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
-static const unsigned char yytranslate[] =
+static const yytype_uint8 yytranslate[] =
 {
        0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
        2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
@@ -421,98 +468,97 @@ static const unsigned char yytranslate[] =
        2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
        5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
       15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
-      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
-      35
+      25,    26,    27,    28,    29,    30,    31,    32,    33,    34
 };
 
 #if YYDEBUG
 /* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
    YYRHS.  */
-static const unsigned short int yyprhs[] =
+static const yytype_uint16 yyprhs[] =
 {
        0,     0,     3,     5,     6,     9,    12,    15,    20,    23,
       28,    33,    37,    39,    41,    43,    45,    47,    49,    51,
       53,    55,    57,    59,    61,    63,    67,    70,    74,    77,
       81,    84,    85,    88,    91,    94,    97,   100,   103,   107,
-     112,   117,   122,   128,   132,   133,   137,   138,   141,   144,
-     147,   149,   153,   154,   157,   160,   163,   166,   169,   174,
-     178,   181,   186,   187,   190,   194,   196,   200,   201,   204,
-     207,   210,   214,   217,   219,   223,   224,   227,   230,   233,
-     237,   241,   244,   247,   250,   251,   254,   257,   260,   265,
-     269,   273,   274,   277,   279,   281,   284,   287,   290,   292,
-     295,   296,   299,   301,   305,   309,   313,   316,   320,   324,
-     326
+     112,   117,   122,   128,   132,   133,   137,   138,   141,   145,
+     148,   150,   154,   155,   158,   161,   164,   167,   170,   175,
+     179,   182,   187,   188,   191,   195,   197,   201,   202,   205,
+     208,   211,   215,   218,   220,   224,   225,   228,   231,   234,
+     238,   242,   245,   248,   251,   252,   255,   258,   261,   266,
+     267,   270,   272,   274,   277,   280,   283,   285,   288,   289,
+     292,   294,   298,   302,   306,   309,   313,   317,   319,   321,
+     322
 };
 
-/* YYRHS -- A `-1'-separated list of the rules' RHS. */
-static const yysigned_char yyrhs[] =
+/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
+static const yytype_int8 yyrhs[] =
 {
-      37,     0,    -1,    38,    -1,    -1,    38,    40,    -1,    38,
-      54,    -1,    38,    65,    -1,    38,     3,    75,    77,    -1,
-      38,    76,    -1,    38,    26,     1,    31,    -1,    38,    39,
-       1,    31,    -1,    38,     1,    31,    -1,    16,    -1,    19,
-      -1,    20,    -1,    22,    -1,    18,    -1,    23,    -1,    21,
-      -1,    31,    -1,    60,    -1,    69,    -1,    43,    -1,    45,
-      -1,    67,    -1,    26,     1,    31,    -1,     1,    31,    -1,
-      10,    26,    31,    -1,    42,    46,    -1,    11,    26,    31,
-      -1,    44,    46,    -1,    -1,    46,    47,    -1,    46,    48,
-      -1,    46,    73,    -1,    46,    71,    -1,    46,    41,    -1,
-      46,    31,    -1,    20,    74,    31,    -1,    19,    75,    78,
-      31,    -1,    21,    79,    78,    31,    -1,    22,    26,    78,
-      31,    -1,    23,    80,    80,    78,    31,    -1,    24,    49,
-      31,    -1,    -1,    49,    26,    50,    -1,    -1,    34,    75,
-      -1,     7,    31,    -1,    51,    55,    -1,    76,    -1,    52,
-      57,    53,    -1,    -1,    55,    56,    -1,    55,    73,    -1,
-      55,    71,    -1,    55,    31,    -1,    55,    41,    -1,    19,
-      75,    78,    31,    -1,    20,    74,    31,    -1,    18,    31,
-      -1,    21,    26,    78,    31,    -1,    -1,    57,    40,    -1,
-      14,    79,    77,    -1,    76,    -1,    58,    61,    59,    -1,
-      -1,    61,    40,    -1,    61,    65,    -1,    61,    54,    -1,
-       4,    75,    31,    -1,    62,    72,    -1,    76,    -1,    63,
-      66,    64,    -1,    -1,    66,    40,    -1,    66,    65,    -1,
-      66,    54,    -1,     6,    75,    31,    -1,     9,    75,    31,
-      -1,    68,    72,    -1,    12,    31,    -1,    70,    13,    -1,
-      -1,    72,    73,    -1,    72,    31,    -1,    72,    41,    -1,
-      16,    25,    79,    31,    -1,    16,    79,    31,    -1,    17,
-      79,    31,    -1,    -1,    75,    78,    -1,    26,    -1,    27,
-      -1,     5,    31,    -1,     8,    31,    -1,    15,    31,    -1,
-      31,    -1,    77,    31,    -1,    -1,    14,    79,    -1,    80,
-      -1,    80,    34,    80,    -1,    80,    28,    80,    -1,    30,
-      79,    29,    -1,    35,    79,    -1,    79,    32,    79,    -1,
-      79,    33,    79,    -1,    26,    -1,    27,    -1
+      36,     0,    -1,    37,    -1,    -1,    37,    39,    -1,    37,
+      53,    -1,    37,    64,    -1,    37,     3,    74,    76,    -1,
+      37,    75,    -1,    37,    25,     1,    30,    -1,    37,    38,
+       1,    30,    -1,    37,     1,    30,    -1,    16,    -1,    18,
+      -1,    19,    -1,    21,    -1,    17,    -1,    22,    -1,    20,
+      -1,    30,    -1,    59,    -1,    68,    -1,    42,    -1,    44,
+      -1,    66,    -1,    25,     1,    30,    -1,     1,    30,    -1,
+      10,    25,    30,    -1,    41,    45,    -1,    11,    25,    30,
+      -1,    43,    45,    -1,    -1,    45,    46,    -1,    45,    47,
+      -1,    45,    72,    -1,    45,    70,    -1,    45,    40,    -1,
+      45,    30,    -1,    19,    73,    30,    -1,    18,    74,    77,
+      30,    -1,    20,    78,    77,    30,    -1,    21,    25,    77,
+      30,    -1,    22,    79,    79,    77,    30,    -1,    23,    48,
+      30,    -1,    -1,    48,    25,    49,    -1,    -1,    33,    74,
+      -1,     7,    80,    30,    -1,    50,    54,    -1,    75,    -1,
+      51,    56,    52,    -1,    -1,    54,    55,    -1,    54,    72,
+      -1,    54,    70,    -1,    54,    30,    -1,    54,    40,    -1,
+      18,    74,    77,    30,    -1,    19,    73,    30,    -1,    17,
+      30,    -1,    20,    25,    77,    30,    -1,    -1,    56,    39,
+      -1,    14,    78,    76,    -1,    75,    -1,    57,    60,    58,
+      -1,    -1,    60,    39,    -1,    60,    64,    -1,    60,    53,
+      -1,     4,    74,    30,    -1,    61,    71,    -1,    75,    -1,
+      62,    65,    63,    -1,    -1,    65,    39,    -1,    65,    64,
+      -1,    65,    53,    -1,     6,    74,    30,    -1,     9,    74,
+      30,    -1,    67,    71,    -1,    12,    30,    -1,    69,    13,
+      -1,    -1,    71,    72,    -1,    71,    30,    -1,    71,    40,
+      -1,    16,    24,    78,    30,    -1,    -1,    74,    77,    -1,
+      25,    -1,    26,    -1,     5,    30,    -1,     8,    30,    -1,
+      15,    30,    -1,    30,    -1,    76,    30,    -1,    -1,    14,
+      78,    -1,    79,    -1,    79,    33,    79,    -1,    79,    27,
+      79,    -1,    29,    78,    28,    -1,    34,    78,    -1,    78,
+      31,    78,    -1,    78,    32,    78,    -1,    25,    -1,    26,
+      -1,    -1,    25,    -1
 };
 
 /* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
-static const unsigned short int yyrline[] =
+static const yytype_uint16 yyrline[] =
 {
-       0,   105,   105,   107,   109,   110,   111,   112,   113,   114,
-     115,   119,   123,   123,   123,   123,   123,   123,   123,   127,
-     128,   129,   130,   131,   132,   136,   137,   143,   151,   157,
-     165,   175,   177,   178,   179,   180,   181,   182,   185,   193,
-     199,   209,   215,   221,   224,   226,   237,   238,   243,   252,
-     257,   265,   268,   270,   271,   272,   273,   274,   277,   283,
-     294,   300,   310,   312,   317,   325,   333,   336,   338,   339,
-     340,   345,   352,   357,   365,   368,   370,   371,   372,   375,
-     383,   390,   397,   403,   410,   412,   413,   414,   417,   422,
-     427,   435,   437,   442,   443,   446,   447,   448,   452,   453,
-     456,   457,   460,   461,   462,   463,   464,   465,   466,   469,
-     470
+       0,   107,   107,   109,   111,   112,   113,   114,   115,   116,
+     117,   121,   125,   125,   125,   125,   125,   125,   125,   129,
+     130,   131,   132,   133,   134,   138,   139,   145,   153,   159,
+     167,   177,   179,   180,   181,   182,   183,   184,   187,   195,
+     201,   211,   217,   223,   226,   228,   239,   240,   245,   254,
+     259,   267,   270,   272,   273,   274,   275,   276,   279,   285,
+     296,   302,   312,   314,   319,   327,   335,   338,   340,   341,
+     342,   347,   354,   359,   367,   370,   372,   373,   374,   377,
+     385,   392,   399,   405,   412,   414,   415,   416,   419,   427,
+     429,   434,   435,   438,   439,   440,   444,   445,   448,   449,
+     452,   453,   454,   455,   456,   457,   458,   461,   462,   465,
+     466
 };
 #endif
 
 #if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
 /* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
-   First, the terminals, then, starting at YYNTOKENS, nonterminals. */
+   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
 static const char *const yytname[] =
 {
   "$end", "error", "$undefined", "T_MAINMENU", "T_MENU", "T_ENDMENU",
   "T_SOURCE", "T_CHOICE", "T_ENDCHOICE", "T_COMMENT", "T_CONFIG",
   "T_MENUCONFIG", "T_HELP", "T_HELPTEXT", "T_IF", "T_ENDIF", "T_DEPENDS",
-  "T_REQUIRES", "T_OPTIONAL", "T_PROMPT", "T_TYPE", "T_DEFAULT",
-  "T_SELECT", "T_RANGE", "T_OPTION", "T_ON", "T_WORD", "T_WORD_QUOTE",
-  "T_UNEQUAL", "T_CLOSE_PAREN", "T_OPEN_PAREN", "T_EOL", "T_OR", "T_AND",
-  "T_EQUAL", "T_NOT", "$accept", "input", "stmt_list", "option_name",
-  "common_stmt", "option_error", "config_entry_start", "config_stmt",
+  "T_OPTIONAL", "T_PROMPT", "T_TYPE", "T_DEFAULT", "T_SELECT", "T_RANGE",
+  "T_OPTION", "T_ON", "T_WORD", "T_WORD_QUOTE", "T_UNEQUAL",
+  "T_CLOSE_PAREN", "T_OPEN_PAREN", "T_EOL", "T_OR", "T_AND", "T_EQUAL",
+  "T_NOT", "$accept", "input", "stmt_list", "option_name", "common_stmt",
+  "option_error", "config_entry_start", "config_stmt",
   "menuconfig_entry_start", "menuconfig_stmt", "config_option_list",
   "config_option", "symbol_option", "symbol_option_list",
   "symbol_option_arg", "choice", "choice_entry", "choice_end",
@@ -520,126 +566,125 @@ static const char *const yytname[] =
   "if_entry", "if_end", "if_stmt", "if_block", "menu", "menu_entry",
   "menu_end", "menu_stmt", "menu_block", "source_stmt", "comment",
   "comment_stmt", "help_start", "help", "depends_list", "depends",
-  "prompt_stmt_opt", "prompt", "end", "nl", "if_expr", "expr", "symbol", 0
+  "prompt_stmt_opt", "prompt", "end", "nl", "if_expr", "expr", "symbol",
+  "word_opt", 0
 };
 #endif
 
 # ifdef YYPRINT
 /* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
    token YYLEX-NUM.  */
-static const unsigned short int yytoknum[] =
+static const yytype_uint16 yytoknum[] =
 {
        0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
      265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
      275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
-     285,   286,   287,   288,   289,   290
+     285,   286,   287,   288,   289
 };
 # endif
 
 /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
-static const unsigned char yyr1[] =
+static const yytype_uint8 yyr1[] =
 {
-       0,    36,    37,    38,    38,    38,    38,    38,    38,    38,
-      38,    38,    39,    39,    39,    39,    39,    39,    39,    40,
-      40,    40,    40,    40,    40,    41,    41,    42,    43,    44,
-      45,    46,    46,    46,    46,    46,    46,    46,    47,    47,
-      47,    47,    47,    48,    49,    49,    50,    50,    51,    52,
-      53,    54,    55,    55,    55,    55,    55,    55,    56,    56,
-      56,    56,    57,    57,    58,    59,    60,    61,    61,    61,
-      61,    62,    63,    64,    65,    66,    66,    66,    66,    67,
-      68,    69,    70,    71,    72,    72,    72,    72,    73,    73,
-      73,    74,    74,    75,    75,    76,    76,    76,    77,    77,
-      78,    78,    79,    79,    79,    79,    79,    79,    79,    80,
+       0,    35,    36,    37,    37,    37,    37,    37,    37,    37,
+      37,    37,    38,    38,    38,    38,    38,    38,    38,    39,
+      39,    39,    39,    39,    39,    40,    40,    41,    42,    43,
+      44,    45,    45,    45,    45,    45,    45,    45,    46,    46,
+      46,    46,    46,    47,    48,    48,    49,    49,    50,    51,
+      52,    53,    54,    54,    54,    54,    54,    54,    55,    55,
+      55,    55,    56,    56,    57,    58,    59,    60,    60,    60,
+      60,    61,    62,    63,    64,    65,    65,    65,    65,    66,
+      67,    68,    69,    70,    71,    71,    71,    71,    72,    73,
+      73,    74,    74,    75,    75,    75,    76,    76,    77,    77,
+      78,    78,    78,    78,    78,    78,    78,    79,    79,    80,
       80
 };
 
 /* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
-static const unsigned char yyr2[] =
+static const yytype_uint8 yyr2[] =
 {
        0,     2,     1,     0,     2,     2,     2,     4,     2,     4,
        4,     3,     1,     1,     1,     1,     1,     1,     1,     1,
        1,     1,     1,     1,     1,     3,     2,     3,     2,     3,
        2,     0,     2,     2,     2,     2,     2,     2,     3,     4,
-       4,     4,     5,     3,     0,     3,     0,     2,     2,     2,
+       4,     4,     5,     3,     0,     3,     0,     2,     3,     2,
        1,     3,     0,     2,     2,     2,     2,     2,     4,     3,
        2,     4,     0,     2,     3,     1,     3,     0,     2,     2,
        2,     3,     2,     1,     3,     0,     2,     2,     2,     3,
-       3,     2,     2,     2,     0,     2,     2,     2,     4,     3,
-       3,     0,     2,     1,     1,     2,     2,     2,     1,     2,
-       0,     2,     1,     3,     3,     3,     2,     3,     3,     1,
+       3,     2,     2,     2,     0,     2,     2,     2,     4,     0,
+       2,     1,     1,     2,     2,     2,     1,     2,     0,     2,
+       1,     3,     3,     3,     2,     3,     3,     1,     1,     0,
        1
 };
 
 /* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
    STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
    means the default is an error.  */
-static const unsigned char yydefact[] =
+static const yytype_uint8 yydefact[] =
 {
-       3,     0,     0,     1,     0,     0,     0,     0,     0,     0,
+       3,     0,     0,     1,     0,     0,     0,     0,     0,   109,
        0,     0,     0,     0,     0,     0,    12,    16,    13,    14,
       18,    15,    17,     0,    19,     0,     4,    31,    22,    31,
       23,    52,    62,     5,    67,    20,    84,    75,     6,    24,
-      84,    21,     8,    11,    93,    94,     0,     0,    95,     0,
-      48,    96,     0,     0,     0,   109,   110,     0,     0,     0,
-     102,    97,     0,     0,     0,     0,     0,     0,     0,     0,
-       0,     0,    98,     7,    71,    79,    80,    27,    29,     0,
-     106,     0,     0,    64,     0,     0,     9,    10,     0,     0,
-       0,     0,     0,    91,     0,     0,     0,    44,     0,    37,
-      36,    32,    33,     0,    35,    34,     0,     0,    91,     0,
-      56,    57,    53,    55,    54,    63,    51,    50,    68,    70,
-      66,    69,    65,    86,    87,    85,    76,    78,    74,    77,
-      73,    99,   105,   107,   108,   104,   103,    26,    82,     0,
-       0,     0,   100,     0,   100,   100,   100,     0,     0,     0,
-      83,    60,   100,     0,   100,     0,    89,    90,     0,     0,
-      38,    92,     0,     0,   100,    46,    43,    25,     0,    59,
-       0,    88,   101,    39,    40,    41,     0,     0,    45,    58,
-      61,    42,    47
+      84,    21,     8,    11,    91,    92,     0,     0,    93,     0,
+     110,     0,    94,     0,     0,     0,   107,   108,     0,     0,
+       0,   100,    95,     0,     0,     0,     0,     0,     0,     0,
+       0,     0,     0,    96,     7,    71,    79,    48,    80,    27,
+      29,     0,   104,     0,     0,    64,     0,     0,     9,    10,
+       0,     0,     0,     0,    89,     0,     0,     0,    44,     0,
+      37,    36,    32,    33,     0,    35,    34,     0,     0,    89,
+       0,    56,    57,    53,    55,    54,    63,    51,    50,    68,
+      70,    66,    69,    65,    86,    87,    85,    76,    78,    74,
+      77,    73,    97,   103,   105,   106,   102,   101,    26,    82,
+       0,    98,     0,    98,    98,    98,     0,     0,     0,    83,
+      60,    98,     0,    98,     0,     0,     0,    38,    90,     0,
+       0,    98,    46,    43,    25,     0,    59,     0,    88,    99,
+      39,    40,    41,     0,     0,    45,    58,    61,    42,    47
 };
 
-/* YYDEFGOTO[NTERM-NUM]. */
-static const short int yydefgoto[] =
+/* YYDEFGOTO[NTERM-NUM].  */
+static const yytype_int16 yydefgoto[] =
 {
-      -1,     1,     2,    25,    26,   100,    27,    28,    29,    30,
-      64,   101,   102,   148,   178,    31,    32,   116,    33,    66,
-     112,    67,    34,   120,    35,    68,    36,    37,   128,    38,
-      70,    39,    40,    41,   103,   104,    69,   105,   143,   144,
-      42,    73,   159,    59,    60
+      -1,     1,     2,    25,    26,   101,    27,    28,    29,    30,
+      65,   102,   103,   147,   175,    31,    32,   117,    33,    67,
+     113,    68,    34,   121,    35,    69,    36,    37,   129,    38,
+      71,    39,    40,    41,   104,   105,    70,   106,   142,   143,
+      42,    74,   156,    60,    61,    51
 };
 
 /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
    STATE-NUM.  */
-#define YYPACT_NINF -135
-static const short int yypact[] =
+#define YYPACT_NINF -80
+static const yytype_int16 yypact[] =
 {
-    -135,     2,   170,  -135,   -14,    56,    56,    -8,    56,    24,
-      67,    56,     7,    14,    62,    97,  -135,  -135,  -135,  -135,
-    -135,  -135,  -135,   156,  -135,   166,  -135,  -135,  -135,  -135,
-    -135,  -135,  -135,  -135,  -135,  -135,  -135,  -135,  -135,  -135,
-    -135,  -135,  -135,  -135,  -135,  -135,   138,   151,  -135,   152,
-    -135,  -135,   163,   167,   176,  -135,  -135,    62,    62,   185,
-     -19,  -135,   188,   190,    42,   103,   194,    85,    70,   222,
-      70,   132,  -135,   191,  -135,  -135,  -135,  -135,  -135,   127,
-    -135,    62,    62,   191,   104,   104,  -135,  -135,   193,   203,
-       9,    62,    56,    56,    62,   161,   104,  -135,   196,  -135,
-    -135,  -135,  -135,   233,  -135,  -135,   204,    56,    56,   221,
-    -135,  -135,  -135,  -135,  -135,  -135,  -135,  -135,  -135,  -135,
-    -135,  -135,  -135,  -135,  -135,  -135,  -135,  -135,  -135,  -135,
-    -135,  -135,  -135,   219,  -135,  -135,  -135,  -135,  -135,    62,
-     209,   212,   240,   224,   240,    -1,   240,   104,    41,   225,
-    -135,  -135,   240,   226,   240,   218,  -135,  -135,    62,   227,
-    -135,  -135,   228,   229,   240,   230,  -135,  -135,   231,  -135,
-     232,  -135,   112,  -135,  -135,  -135,   234,    56,  -135,  -135,
-    -135,  -135,  -135
+     -80,     2,   132,   -80,   -13,    -1,    -1,    -2,    -1,     9,
+      33,    -1,    27,    40,    -3,    38,   -80,   -80,   -80,   -80,
+     -80,   -80,   -80,    71,   -80,    77,   -80,   -80,   -80,   -80,
+     -80,   -80,   -80,   -80,   -80,   -80,   -80,   -80,   -80,   -80,
+     -80,   -80,   -80,   -80,   -80,   -80,    57,    61,   -80,    63,
+     -80,    76,   -80,    87,   101,   133,   -80,   -80,    -3,    -3,
+     195,    -6,   -80,   136,   149,    39,   104,    65,   150,     5,
+     194,     5,   167,   -80,   176,   -80,   -80,   -80,   -80,   -80,
+     -80,    68,   -80,    -3,    -3,   176,    72,    72,   -80,   -80,
+     177,   187,    78,    -1,    -1,    -3,   196,    72,   -80,   222,
+     -80,   -80,   -80,   -80,   221,   -80,   -80,   205,    -1,    -1,
+     211,   -80,   -80,   -80,   -80,   -80,   -80,   -80,   -80,   -80,
+     -80,   -80,   -80,   -80,   -80,   -80,   -80,   -80,   -80,   -80,
+     -80,   -80,   -80,   -80,   206,   -80,   -80,   -80,   -80,   -80,
+      -3,   223,   209,   223,   197,   223,    72,     7,   210,   -80,
+     -80,   223,   212,   223,   201,    -3,   213,   -80,   -80,   214,
+     215,   223,   208,   -80,   -80,   216,   -80,   217,   -80,   113,
+     -80,   -80,   -80,   218,    -1,   -80,   -80,   -80,   -80,   -80
 };
 
 /* YYPGOTO[NTERM-NUM].  */
-static const short int yypgoto[] =
+static const yytype_int16 yypgoto[] =
 {
-    -135,  -135,  -135,  -135,    94,   -45,  -135,  -135,  -135,  -135,
-     237,  -135,  -135,  -135,  -135,  -135,  -135,  -135,   -54,  -135,
-    -135,  -135,  -135,  -135,  -135,  -135,  -135,  -135,  -135,     1,
-    -135,  -135,  -135,  -135,  -135,   195,   235,   -44,   159,    -5,
-      98,   210,  -134,   -53,   -77
+     -80,   -80,   -80,   -80,   122,   -34,   -80,   -80,   -80,   -80,
+     220,   -80,   -80,   -80,   -80,   -80,   -80,   -80,    59,   -80,
+     -80,   -80,   -80,   -80,   -80,   -80,   -80,   -80,   -80,   125,
+     -80,   -80,   -80,   -80,   -80,   183,   219,    22,   142,    -5,
+     147,   192,    69,   -54,   -79,   -80
 };
 
 /* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
@@ -647,93 +692,88 @@ static const short int yypgoto[] =
    number is the opposite.  If zero, do what YYDEFACT says.
    If YYTABLE_NINF, syntax error.  */
 #define YYTABLE_NINF -82
-static const short int yytable[] =
+static const yytype_int16 yytable[] =
 {
-      46,    47,     3,    49,    79,    80,    52,   135,   136,    84,
-     161,   162,   163,   158,   119,    85,   127,    43,   168,   147,
-     170,   111,   114,    48,   124,   125,   124,   125,   133,   134,
-     176,    81,    82,    53,   139,    55,    56,   140,   141,    57,
-      54,   145,   -28,    88,    58,   -28,   -28,   -28,   -28,   -28,
-     -28,   -28,   -28,   -28,    89,    50,   -28,   -28,    90,    91,
-     -28,    92,    93,    94,    95,    96,    97,   165,    98,   121,
-     164,   129,   166,    99,     6,     7,     8,     9,    10,    11,
-      12,    13,    44,    45,    14,    15,   155,   142,    55,    56,
-       7,     8,    57,    10,    11,    12,    13,    58,    51,    14,
-      15,    24,   152,   -30,    88,   172,   -30,   -30,   -30,   -30,
-     -30,   -30,   -30,   -30,   -30,    89,    24,   -30,   -30,    90,
-      91,   -30,    92,    93,    94,    95,    96,    97,    61,    98,
-      55,    56,   -81,    88,    99,   -81,   -81,   -81,   -81,   -81,
-     -81,   -81,   -81,   -81,    81,    82,   -81,   -81,    90,    91,
-     -81,   -81,   -81,   -81,   -81,   -81,   132,    62,    98,    81,
-      82,   115,   118,   123,   126,   117,   122,    63,   130,    72,
-      -2,     4,   182,     5,     6,     7,     8,     9,    10,    11,
-      12,    13,    74,    75,    14,    15,    16,   146,    17,    18,
-      19,    20,    21,    22,    76,    88,    23,   149,    77,   -49,
-     -49,    24,   -49,   -49,   -49,   -49,    89,    78,   -49,   -49,
-      90,    91,   106,   107,   108,   109,    72,    81,    82,    86,
-      98,    87,   131,    88,   137,   110,   -72,   -72,   -72,   -72,
-     -72,   -72,   -72,   -72,   138,   151,   -72,   -72,    90,    91,
-     156,    81,    82,   157,    81,    82,   150,   154,    98,   171,
-      81,    82,    82,   123,   158,   160,   167,   169,   173,   174,
-     175,   113,   179,   180,   177,   181,    65,   153,     0,    83,
-       0,     0,     0,     0,     0,    71
+      46,    47,     3,    49,    81,    82,    53,   136,   137,     6,
+       7,     8,     9,    10,    11,    12,    13,    43,   146,    14,
+      15,    86,    56,    57,    44,    45,    58,    87,    48,   134,
+     135,    59,   162,   112,    50,    24,   125,   163,   125,   -28,
+      90,   144,   -28,   -28,   -28,   -28,   -28,   -28,   -28,   -28,
+     -28,    91,    54,   -28,   -28,    92,   -28,    93,    94,    95,
+      96,    97,    98,    52,    99,    55,    90,   161,    62,   100,
+     -49,   -49,    63,   -49,   -49,   -49,   -49,    91,    64,   -49,
+     -49,    92,   107,   108,   109,   110,   154,    73,   141,   115,
+      99,    75,   126,    76,   126,   111,   133,    56,    57,    83,
+      84,   169,   140,   151,   -30,    90,    77,   -30,   -30,   -30,
+     -30,   -30,   -30,   -30,   -30,   -30,    91,    78,   -30,   -30,
+      92,   -30,    93,    94,    95,    96,    97,    98,   120,    99,
+     128,    79,    -2,     4,   100,     5,     6,     7,     8,     9,
+      10,    11,    12,    13,    83,    84,    14,    15,    16,    17,
+      18,    19,    20,    21,    22,     7,     8,    23,    10,    11,
+      12,    13,    24,    80,    14,    15,    88,   -81,    90,   179,
+     -81,   -81,   -81,   -81,   -81,   -81,   -81,   -81,   -81,    89,
+      24,   -81,   -81,    92,   -81,   -81,   -81,   -81,   -81,   -81,
+     116,   119,    99,   127,   122,    90,   130,   124,   -72,   -72,
+     -72,   -72,   -72,   -72,   -72,   -72,   132,   138,   -72,   -72,
+      92,   155,   158,   159,   160,   118,   123,   139,   131,    99,
+     165,   145,   167,   148,   124,    73,    83,    84,    83,    84,
+     173,   168,    83,    84,   149,   150,   153,   155,    84,   157,
+     164,   174,   166,   170,   171,   172,   176,   177,   178,    66,
+     114,   152,    85,     0,     0,     0,     0,     0,     0,    72
 };
 
-static const short int yycheck[] =
+static const yytype_int16 yycheck[] =
 {
-       5,     6,     0,     8,    57,    58,    11,    84,    85,    28,
-     144,   145,   146,    14,    68,    34,    70,    31,   152,    96,
-     154,    66,    66,    31,    69,    69,    71,    71,    81,    82,
-     164,    32,    33,    26,    25,    26,    27,    90,    91,    30,
-      26,    94,     0,     1,    35,     3,     4,     5,     6,     7,
-       8,     9,    10,    11,    12,    31,    14,    15,    16,    17,
-      18,    19,    20,    21,    22,    23,    24,    26,    26,    68,
-     147,    70,    31,    31,     4,     5,     6,     7,     8,     9,
-      10,    11,    26,    27,    14,    15,   139,    92,    26,    27,
-       5,     6,    30,     8,     9,    10,    11,    35,    31,    14,
-      15,    31,   107,     0,     1,   158,     3,     4,     5,     6,
-       7,     8,     9,    10,    11,    12,    31,    14,    15,    16,
-      17,    18,    19,    20,    21,    22,    23,    24,    31,    26,
-      26,    27,     0,     1,    31,     3,     4,     5,     6,     7,
-       8,     9,    10,    11,    32,    33,    14,    15,    16,    17,
-      18,    19,    20,    21,    22,    23,    29,     1,    26,    32,
-      33,    67,    68,    31,    70,    67,    68,     1,    70,    31,
-       0,     1,   177,     3,     4,     5,     6,     7,     8,     9,
-      10,    11,    31,    31,    14,    15,    16,    26,    18,    19,
-      20,    21,    22,    23,    31,     1,    26,     1,    31,     5,
-       6,    31,     8,     9,    10,    11,    12,    31,    14,    15,
-      16,    17,    18,    19,    20,    21,    31,    32,    33,    31,
-      26,    31,    31,     1,    31,    31,     4,     5,     6,     7,
-       8,     9,    10,    11,    31,    31,    14,    15,    16,    17,
-      31,    32,    33,    31,    32,    33,    13,    26,    26,    31,
-      32,    33,    33,    31,    14,    31,    31,    31,    31,    31,
-      31,    66,    31,    31,    34,    31,    29,   108,    -1,    59,
-      -1,    -1,    -1,    -1,    -1,    40
+       5,     6,     0,     8,    58,    59,    11,    86,    87,     4,
+       5,     6,     7,     8,     9,    10,    11,    30,    97,    14,
+      15,    27,    25,    26,    25,    26,    29,    33,    30,    83,
+      84,    34,    25,    67,    25,    30,    70,    30,    72,     0,
+       1,    95,     3,     4,     5,     6,     7,     8,     9,    10,
+      11,    12,    25,    14,    15,    16,    17,    18,    19,    20,
+      21,    22,    23,    30,    25,    25,     1,   146,    30,    30,
+       5,     6,     1,     8,     9,    10,    11,    12,     1,    14,
+      15,    16,    17,    18,    19,    20,   140,    30,    93,    67,
+      25,    30,    70,    30,    72,    30,    28,    25,    26,    31,
+      32,   155,    24,   108,     0,     1,    30,     3,     4,     5,
+       6,     7,     8,     9,    10,    11,    12,    30,    14,    15,
+      16,    17,    18,    19,    20,    21,    22,    23,    69,    25,
+      71,    30,     0,     1,    30,     3,     4,     5,     6,     7,
+       8,     9,    10,    11,    31,    32,    14,    15,    16,    17,
+      18,    19,    20,    21,    22,     5,     6,    25,     8,     9,
+      10,    11,    30,    30,    14,    15,    30,     0,     1,   174,
+       3,     4,     5,     6,     7,     8,     9,    10,    11,    30,
+      30,    14,    15,    16,    17,    18,    19,    20,    21,    22,
+      68,    69,    25,    71,    69,     1,    71,    30,     4,     5,
+       6,     7,     8,     9,    10,    11,    30,    30,    14,    15,
+      16,    14,   143,   144,   145,    68,    69,    30,    71,    25,
+     151,    25,   153,     1,    30,    30,    31,    32,    31,    32,
+     161,    30,    31,    32,    13,    30,    25,    14,    32,    30,
+      30,    33,    30,    30,    30,    30,    30,    30,    30,    29,
+      67,   109,    60,    -1,    -1,    -1,    -1,    -1,    -1,    40
 };
 
 /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
    symbol of state STATE-NUM.  */
-static const unsigned char yystos[] =
+static const yytype_uint8 yystos[] =
 {
-       0,    37,    38,     0,     1,     3,     4,     5,     6,     7,
-       8,     9,    10,    11,    14,    15,    16,    18,    19,    20,
-      21,    22,    23,    26,    31,    39,    40,    42,    43,    44,
-      45,    51,    52,    54,    58,    60,    62,    63,    65,    67,
-      68,    69,    76,    31,    26,    27,    75,    75,    31,    75,
-      31,    31,    75,    26,    26,    26,    27,    30,    35,    79,
-      80,    31,     1,     1,    46,    46,    55,    57,    61,    72,
-      66,    72,    31,    77,    31,    31,    31,    31,    31,    79,
-      79,    32,    33,    77,    28,    34,    31,    31,     1,    12,
-      16,    17,    19,    20,    21,    22,    23,    24,    26,    31,
-      41,    47,    48,    70,    71,    73,    18,    19,    20,    21,
-      31,    41,    56,    71,    73,    40,    53,    76,    40,    54,
-      59,    65,    76,    31,    41,    73,    40,    54,    64,    65,
-      76,    31,    29,    79,    79,    80,    80,    31,    31,    25,
-      79,    79,    75,    74,    75,    79,    26,    80,    49,     1,
-      13,    31,    75,    74,    26,    79,    31,    31,    14,    78,
-      31,    78,    78,    78,    80,    26,    31,    31,    78,    31,
-      78,    31,    79,    31,    31,    31,    78,    34,    50,    31,
-      31,    31,    75
+       0,    36,    37,     0,     1,     3,     4,     5,     6,     7,
+       8,     9,    10,    11,    14,    15,    16,    17,    18,    19,
+      20,    21,    22,    25,    30,    38,    39,    41,    42,    43,
+      44,    50,    51,    53,    57,    59,    61,    62,    64,    66,
+      67,    68,    75,    30,    25,    26,    74,    74,    30,    74,
+      25,    80,    30,    74,    25,    25,    25,    26,    29,    34,
+      78,    79,    30,     1,     1,    45,    45,    54,    56,    60,
+      71,    65,    71,    30,    76,    30,    30,    30,    30,    30,
+      30,    78,    78,    31,    32,    76,    27,    33,    30,    30,
+       1,    12,    16,    18,    19,    20,    21,    22,    23,    25,
+      30,    40,    46,    47,    69,    70,    72,    17,    18,    19,
+      20,    30,    40,    55,    70,    72,    39,    52,    75,    39,
+      53,    58,    64,    75,    30,    40,    72,    39,    53,    63,
+      64,    75,    30,    28,    78,    78,    79,    79,    30,    30,
+      24,    74,    73,    74,    78,    25,    79,    48,     1,    13,
+      30,    74,    73,    25,    78,    14,    77,    30,    77,    77,
+      77,    79,    25,    30,    30,    77,    30,    77,    30,    78,
+      30,    30,    30,    77,    33,    49,    30,    30,    30,    74
 };
 
 #define yyerrok		(yyerrstatus = 0)
@@ -761,7 +801,7 @@ do								\
       yychar = (Token);						\
       yylval = (Value);						\
       yytoken = YYTRANSLATE (yychar);				\
-      YYPOPSTACK;						\
+      YYPOPSTACK (1);						\
       goto yybackup;						\
     }								\
   else								\
@@ -769,7 +809,7 @@ do								\
       yyerror (YY_("syntax error: cannot back up")); \
       YYERROR;							\
     }								\
-while (0)
+while (YYID (0))
 
 
 #define YYTERROR	1
@@ -784,7 +824,7 @@ while (0)
 #ifndef YYLLOC_DEFAULT
 # define YYLLOC_DEFAULT(Current, Rhs, N)				\
     do									\
-      if (N)								\
+      if (YYID (N))                                                    \
 	{								\
 	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
 	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
@@ -798,7 +838,7 @@ while (0)
 	  (Current).first_column = (Current).last_column =		\
 	    YYRHSLOC (Rhs, 0).last_column;				\
 	}								\
-    while (0)
+    while (YYID (0))
 #endif
 
 
@@ -810,8 +850,8 @@ while (0)
 # if YYLTYPE_IS_TRIVIAL
 #  define YY_LOCATION_PRINT(File, Loc)			\
      fprintf (File, "%d.%d-%d.%d",			\
-              (Loc).first_line, (Loc).first_column,	\
-              (Loc).last_line,  (Loc).last_column)
+	      (Loc).first_line, (Loc).first_column,	\
+	      (Loc).last_line,  (Loc).last_column)
 # else
 #  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
 # endif
@@ -838,37 +878,100 @@ while (0)
 do {						\
   if (yydebug)					\
     YYFPRINTF Args;				\
-} while (0)
+} while (YYID (0))
 
-# define YY_SYMBOL_PRINT(Title, Type, Value, Location)		\
-do {								\
-  if (yydebug)							\
-    {								\
-      YYFPRINTF (stderr, "%s ", Title);				\
-      yysymprint (stderr,					\
-                  Type, Value);	\
-      YYFPRINTF (stderr, "\n");					\
-    }								\
-} while (0)
+# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
+do {									  \
+  if (yydebug)								  \
+    {									  \
+      YYFPRINTF (stderr, "%s ", Title);					  \
+      yy_symbol_print (stderr,						  \
+		  Type, Value); \
+      YYFPRINTF (stderr, "\n");						  \
+    }									  \
+} while (YYID (0))
+
+
+/*--------------------------------.
+| Print this symbol on YYOUTPUT.  |
+`--------------------------------*/
+
+/*ARGSUSED*/
+#if (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
+static void
+yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
+#else
+static void
+yy_symbol_value_print (yyoutput, yytype, yyvaluep)
+    FILE *yyoutput;
+    int yytype;
+    YYSTYPE const * const yyvaluep;
+#endif
+{
+  if (!yyvaluep)
+    return;
+# ifdef YYPRINT
+  if (yytype < YYNTOKENS)
+    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
+# else
+  YYUSE (yyoutput);
+# endif
+  switch (yytype)
+    {
+      default:
+	break;
+    }
+}
+
+
+/*--------------------------------.
+| Print this symbol on YYOUTPUT.  |
+`--------------------------------*/
+
+#if (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
+static void
+yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
+#else
+static void
+yy_symbol_print (yyoutput, yytype, yyvaluep)
+    FILE *yyoutput;
+    int yytype;
+    YYSTYPE const * const yyvaluep;
+#endif
+{
+  if (yytype < YYNTOKENS)
+    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
+  else
+    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);
+
+  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
+  YYFPRINTF (yyoutput, ")");
+}
 
 /*------------------------------------------------------------------.
 | yy_stack_print -- Print the state stack from its BOTTOM up to its |
 | TOP (included).                                                   |
 `------------------------------------------------------------------*/
 
-#if defined (__STDC__) || defined (__cplusplus)
+#if (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
 static void
-yy_stack_print (short int *bottom, short int *top)
+yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
 #else
 static void
-yy_stack_print (bottom, top)
-    short int *bottom;
-    short int *top;
+yy_stack_print (yybottom, yytop)
+    yytype_int16 *yybottom;
+    yytype_int16 *yytop;
 #endif
 {
   YYFPRINTF (stderr, "Stack now");
-  for (/* Nothing. */; bottom <= top; ++bottom)
-    YYFPRINTF (stderr, " %d", *bottom);
+  for (; yybottom <= yytop; yybottom++)
+    {
+      int yybot = *yybottom;
+      YYFPRINTF (stderr, " %d", yybot);
+    }
   YYFPRINTF (stderr, "\n");
 }
 
@@ -876,37 +979,45 @@ yy_stack_print (bottom, top)
 do {								\
   if (yydebug)							\
     yy_stack_print ((Bottom), (Top));				\
-} while (0)
+} while (YYID (0))
 
 
 /*------------------------------------------------.
 | Report that the YYRULE is going to be reduced.  |
 `------------------------------------------------*/
 
-#if defined (__STDC__) || defined (__cplusplus)
+#if (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
 static void
-yy_reduce_print (int yyrule)
+yy_reduce_print (YYSTYPE *yyvsp, int yyrule)
 #else
 static void
-yy_reduce_print (yyrule)
+yy_reduce_print (yyvsp, yyrule)
+    YYSTYPE *yyvsp;
     int yyrule;
 #endif
 {
+  int yynrhs = yyr2[yyrule];
   int yyi;
   unsigned long int yylno = yyrline[yyrule];
-  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu), ",
-             yyrule - 1, yylno);
-  /* Print the symbols being reduced, and their result.  */
-  for (yyi = yyprhs[yyrule]; 0 <= yyrhs[yyi]; yyi++)
-    YYFPRINTF (stderr, "%s ", yytname[yyrhs[yyi]]);
-  YYFPRINTF (stderr, "-> %s\n", yytname[yyr1[yyrule]]);
+  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
+	     yyrule - 1, yylno);
+  /* The symbols being reduced.  */
+  for (yyi = 0; yyi < yynrhs; yyi++)
+    {
+      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
+      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
+		       &(yyvsp[(yyi + 1) - (yynrhs)])
+		       		       );
+      YYFPRINTF (stderr, "\n");
+    }
 }
 
 # define YY_REDUCE_PRINT(Rule)		\
 do {					\
   if (yydebug)				\
-    yy_reduce_print (Rule);		\
-} while (0)
+    yy_reduce_print (yyvsp, Rule); \
+} while (YYID (0))
 
 /* Nonzero means print parse trace.  It is left uninitialized so that
    multiple parsers can coexist.  */
@@ -940,42 +1051,44 @@ int yydebug;
 #if YYERROR_VERBOSE
 
 # ifndef yystrlen
-#  if defined (__GLIBC__) && defined (_STRING_H)
+#  if defined __GLIBC__ && defined _STRING_H
 #   define yystrlen strlen
 #  else
 /* Return the length of YYSTR.  */
+#if (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
 static YYSIZE_T
-#   if defined (__STDC__) || defined (__cplusplus)
 yystrlen (const char *yystr)
-#   else
+#else
+static YYSIZE_T
 yystrlen (yystr)
-     const char *yystr;
-#   endif
+    const char *yystr;
+#endif
 {
-  const char *yys = yystr;
-
-  while (*yys++ != '\0')
+  YYSIZE_T yylen;
+  for (yylen = 0; yystr[yylen]; yylen++)
     continue;
-
-  return yys - yystr - 1;
+  return yylen;
 }
 #  endif
 # endif
 
 # ifndef yystpcpy
-#  if defined (__GLIBC__) && defined (_STRING_H) && defined (_GNU_SOURCE)
+#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
 #   define yystpcpy stpcpy
 #  else
 /* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
    YYDEST.  */
+#if (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
 static char *
-#   if defined (__STDC__) || defined (__cplusplus)
 yystpcpy (char *yydest, const char *yysrc)
-#   else
+#else
+static char *
 yystpcpy (yydest, yysrc)
-     char *yydest;
-     const char *yysrc;
-#   endif
+    char *yydest;
+    const char *yysrc;
+#endif
 {
   char *yyd = yydest;
   const char *yys = yysrc;
@@ -1001,7 +1114,7 @@ yytnamerr (char *yyres, const char *yystr)
 {
   if (*yystr == '"')
     {
-      size_t yyn = 0;
+      YYSIZE_T yyn = 0;
       char const *yyp = yystr;
 
       for (;;)
@@ -1036,53 +1149,123 @@ yytnamerr (char *yyres, const char *yystr)
 }
 # endif
 
-#endif /* YYERROR_VERBOSE */
-
-
-
-#if YYDEBUG
-/*--------------------------------.
-| Print this symbol on YYOUTPUT.  |
-`--------------------------------*/
-
-#if defined (__STDC__) || defined (__cplusplus)
-static void
-yysymprint (FILE *yyoutput, int yytype, YYSTYPE *yyvaluep)
-#else
-static void
-yysymprint (yyoutput, yytype, yyvaluep)
-    FILE *yyoutput;
-    int yytype;
-    YYSTYPE *yyvaluep;
-#endif
+/* Copy into YYRESULT an error message about the unexpected token
+   YYCHAR while in state YYSTATE.  Return the number of bytes copied,
+   including the terminating null byte.  If YYRESULT is null, do not
+   copy anything; just return the number of bytes that would be
+   copied.  As a special case, return 0 if an ordinary "syntax error"
+   message will do.  Return YYSIZE_MAXIMUM if overflow occurs during
+   size calculation.  */
+static YYSIZE_T
+yysyntax_error (char *yyresult, int yystate, int yychar)
 {
-  /* Pacify ``unused variable'' warnings.  */
-  (void) yyvaluep;
+  int yyn = yypact[yystate];
 
-  if (yytype < YYNTOKENS)
-    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
+  if (! (YYPACT_NINF < yyn && yyn <= YYLAST))
+    return 0;
   else
-    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);
+    {
+      int yytype = YYTRANSLATE (yychar);
+      YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
+      YYSIZE_T yysize = yysize0;
+      YYSIZE_T yysize1;
+      int yysize_overflow = 0;
+      enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
+      char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
+      int yyx;
+
+# if 0
+      /* This is so xgettext sees the translatable formats that are
+	 constructed on the fly.  */
+      YY_("syntax error, unexpected %s");
+      YY_("syntax error, unexpected %s, expecting %s");
+      YY_("syntax error, unexpected %s, expecting %s or %s");
+      YY_("syntax error, unexpected %s, expecting %s or %s or %s");
+      YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
+# endif
+      char *yyfmt;
+      char const *yyf;
+      static char const yyunexpected[] = "syntax error, unexpected %s";
+      static char const yyexpecting[] = ", expecting %s";
+      static char const yyor[] = " or %s";
+      char yyformat[sizeof yyunexpected
+		    + sizeof yyexpecting - 1
+		    + ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
+		       * (sizeof yyor - 1))];
+      char const *yyprefix = yyexpecting;
+
+      /* Start YYX at -YYN if negative to avoid negative indexes in
+	 YYCHECK.  */
+      int yyxbegin = yyn < 0 ? -yyn : 0;
+
+      /* Stay within bounds of both yycheck and yytname.  */
+      int yychecklim = YYLAST - yyn + 1;
+      int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
+      int yycount = 1;
+
+      yyarg[0] = yytname[yytype];
+      yyfmt = yystpcpy (yyformat, yyunexpected);
+
+      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
+	if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR)
+	  {
+	    if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
+	      {
+		yycount = 1;
+		yysize = yysize0;
+		yyformat[sizeof yyunexpected - 1] = '\0';
+		break;
+	      }
+	    yyarg[yycount++] = yytname[yyx];
+	    yysize1 = yysize + yytnamerr (0, yytname[yyx]);
+	    yysize_overflow |= (yysize1 < yysize);
+	    yysize = yysize1;
+	    yyfmt = yystpcpy (yyfmt, yyprefix);
+	    yyprefix = yyor;
+	  }
 
+      yyf = YY_(yyformat);
+      yysize1 = yysize + yystrlen (yyf);
+      yysize_overflow |= (yysize1 < yysize);
+      yysize = yysize1;
 
-# ifdef YYPRINT
-  if (yytype < YYNTOKENS)
-    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
-# endif
-  switch (yytype)
-    {
-      default:
-        break;
+      if (yysize_overflow)
+	return YYSIZE_MAXIMUM;
+
+      if (yyresult)
+	{
+	  /* Avoid sprintf, as that infringes on the user's name space.
+	     Don't have undefined behavior even if the translation
+	     produced a string with the wrong number of "%s"s.  */
+	  char *yyp = yyresult;
+	  int yyi = 0;
+	  while ((*yyp = *yyf) != '\0')
+	    {
+	      if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
+		{
+		  yyp += yytnamerr (yyp, yyarg[yyi++]);
+		  yyf += 2;
+		}
+	      else
+		{
+		  yyp++;
+		  yyf++;
+		}
+	    }
+	}
+      return yysize;
     }
-  YYFPRINTF (yyoutput, ")");
 }
+#endif /* YYERROR_VERBOSE */
+
 
-#endif /* ! YYDEBUG */
 /*-----------------------------------------------.
 | Release the memory associated to this symbol.  |
 `-----------------------------------------------*/
 
-#if defined (__STDC__) || defined (__cplusplus)
+/*ARGSUSED*/
+#if (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
 static void
 yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
 #else
@@ -1093,8 +1276,7 @@ yydestruct (yymsg, yytype, yyvaluep)
     YYSTYPE *yyvaluep;
 #endif
 {
-  /* Pacify ``unused variable'' warnings.  */
-  (void) yyvaluep;
+  YYUSE (yyvaluep);
 
   if (!yymsg)
     yymsg = "Deleting";
@@ -1102,53 +1284,51 @@ yydestruct (yymsg, yytype, yyvaluep)
 
   switch (yytype)
     {
-      case 52: /* "choice_entry" */
+      case 51: /* "choice_entry" */
 
-        {
+	{
 	fprintf(stderr, "%s:%d: missing end statement for this entry\n",
 		(yyvaluep->menu)->file->name, (yyvaluep->menu)->lineno);
 	if (current_menu == (yyvaluep->menu))
 		menu_end_menu();
 };
 
-        break;
-      case 58: /* "if_entry" */
+	break;
+      case 57: /* "if_entry" */
 
-        {
+	{
 	fprintf(stderr, "%s:%d: missing end statement for this entry\n",
 		(yyvaluep->menu)->file->name, (yyvaluep->menu)->lineno);
 	if (current_menu == (yyvaluep->menu))
 		menu_end_menu();
 };
 
-        break;
-      case 63: /* "menu_entry" */
+	break;
+      case 62: /* "menu_entry" */
 
-        {
+	{
 	fprintf(stderr, "%s:%d: missing end statement for this entry\n",
 		(yyvaluep->menu)->file->name, (yyvaluep->menu)->lineno);
 	if (current_menu == (yyvaluep->menu))
 		menu_end_menu();
 };
 
-        break;
+	break;
 
       default:
-        break;
+	break;
     }
 }
-
 
 /* Prevent warnings from -Wmissing-prototypes.  */
-
 #ifdef YYPARSE_PARAM
-# if defined (__STDC__) || defined (__cplusplus)
+#if defined __STDC__ || defined __cplusplus
 int yyparse (void *YYPARSE_PARAM);
-# else
+#else
 int yyparse ();
-# endif
+#endif
 #else /* ! YYPARSE_PARAM */
-#if defined (__STDC__) || defined (__cplusplus)
+#if defined __STDC__ || defined __cplusplus
 int yyparse (void);
 #else
 int yyparse ();
@@ -1156,11 +1336,10 @@ int yyparse ();
 #endif /* ! YYPARSE_PARAM */
 
 
-
-/* The look-ahead symbol.  */
+/* The lookahead symbol.  */
 int yychar;
 
-/* The semantic value of the look-ahead symbol.  */
+/* The semantic value of the lookahead symbol.  */
 YYSTYPE yylval;
 
 /* Number of syntax errors so far.  */
@@ -1168,82 +1347,94 @@ int yynerrs;
 
 
 
-/*----------.
-| yyparse.  |
-`----------*/
+/*-------------------------.
+| yyparse or yypush_parse.  |
+`-------------------------*/
 
 #ifdef YYPARSE_PARAM
-# if defined (__STDC__) || defined (__cplusplus)
-int yyparse (void *YYPARSE_PARAM)
-# else
-int yyparse (YYPARSE_PARAM)
-  void *YYPARSE_PARAM;
-# endif
+#if (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
+int
+yyparse (void *YYPARSE_PARAM)
+#else
+int
+yyparse (YYPARSE_PARAM)
+    void *YYPARSE_PARAM;
+#endif
 #else /* ! YYPARSE_PARAM */
-#if defined (__STDC__) || defined (__cplusplus)
+#if (defined __STDC__ || defined __C99__FUNC__ \
+     || defined __cplusplus || defined _MSC_VER)
 int
 yyparse (void)
 #else
 int
 yyparse ()
-    ;
+
 #endif
 #endif
 {
-  
-  int yystate;
-  int yyn;
-  int yyresult;
-  /* Number of tokens to shift before error messages enabled.  */
-  int yyerrstatus;
-  /* Look-ahead token as an internal (translated) token number.  */
-  int yytoken = 0;
-
-  /* Three stacks and their tools:
-     `yyss': related to states,
-     `yyvs': related to semantic values,
-     `yyls': related to locations.
 
-     Refer to the stacks thru separate pointers, to allow yyoverflow
-     to reallocate them elsewhere.  */
 
-  /* The state stack.  */
-  short int yyssa[YYINITDEPTH];
-  short int *yyss = yyssa;
-  short int *yyssp;
+    int yystate;
+    /* Number of tokens to shift before error messages enabled.  */
+    int yyerrstatus;
 
-  /* The semantic value stack.  */
-  YYSTYPE yyvsa[YYINITDEPTH];
-  YYSTYPE *yyvs = yyvsa;
-  YYSTYPE *yyvsp;
+    /* The stacks and their tools:
+       `yyss': related to states.
+       `yyvs': related to semantic values.
 
+       Refer to the stacks thru separate pointers, to allow yyoverflow
+       to reallocate them elsewhere.  */
 
+    /* The state stack.  */
+    yytype_int16 yyssa[YYINITDEPTH];
+    yytype_int16 *yyss;
+    yytype_int16 *yyssp;
 
-#define YYPOPSTACK   (yyvsp--, yyssp--)
+    /* The semantic value stack.  */
+    YYSTYPE yyvsa[YYINITDEPTH];
+    YYSTYPE *yyvs;
+    YYSTYPE *yyvsp;
 
-  YYSIZE_T yystacksize = YYINITDEPTH;
+    YYSIZE_T yystacksize;
 
+  int yyn;
+  int yyresult;
+  /* Lookahead token as an internal (translated) token number.  */
+  int yytoken;
   /* The variables used to return semantic value and location from the
      action routines.  */
   YYSTYPE yyval;
 
+#if YYERROR_VERBOSE
+  /* Buffer for error messages, and its allocated size.  */
+  char yymsgbuf[128];
+  char *yymsg = yymsgbuf;
+  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
+#endif
+
+#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))
 
-  /* When reducing, the number of symbols on the RHS of the reduced
-     rule.  */
-  int yylen;
+  /* The number of symbols on the RHS of the reduced rule.
+     Keep to zero when no symbol should be popped.  */
+  int yylen = 0;
+
+  yytoken = 0;
+  yyss = yyssa;
+  yyvs = yyvsa;
+  yystacksize = YYINITDEPTH;
 
   YYDPRINTF ((stderr, "Starting parse\n"));
 
   yystate = 0;
   yyerrstatus = 0;
   yynerrs = 0;
-  yychar = YYEMPTY;		/* Cause a token to be read.  */
+  yychar = YYEMPTY; /* Cause a token to be read.  */
 
   /* Initialize stack pointers.
      Waste one element of value and location stack
      so that they stay on the same level as the state stack.
      The wasted elements are never initialized.  */
-
   yyssp = yyss;
   yyvsp = yyvs;
 
@@ -1254,8 +1445,7 @@ yyparse ()
 `------------------------------------------------------------*/
  yynewstate:
   /* In all cases, when you get here, the value and location stacks
-     have just been pushed. so pushing a state here evens the stacks.
-     */
+     have just been pushed.  So pushing a state here evens the stacks.  */
   yyssp++;
 
  yysetstate:
@@ -1268,12 +1458,11 @@ yyparse ()
 
 #ifdef yyoverflow
       {
-	/* Give user a chance to reallocate the stack. Use copies of
+	/* Give user a chance to reallocate the stack.  Use copies of
 	   these so that the &'s don't force the real ones into
 	   memory.  */
 	YYSTYPE *yyvs1 = yyvs;
-	short int *yyss1 = yyss;
-
+	yytype_int16 *yyss1 = yyss;
 
 	/* Each stack pointer address is followed by the size of the
 	   data in use in that stack, in bytes.  This used to be a
@@ -1282,7 +1471,6 @@ yyparse ()
 	yyoverflow (YY_("memory exhausted"),
 		    &yyss1, yysize * sizeof (*yyssp),
 		    &yyvs1, yysize * sizeof (*yyvsp),
-
 		    &yystacksize);
 
 	yyss = yyss1;
@@ -1300,14 +1488,13 @@ yyparse ()
 	yystacksize = YYMAXDEPTH;
 
       {
-	short int *yyss1 = yyss;
+	yytype_int16 *yyss1 = yyss;
 	union yyalloc *yyptr =
 	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
 	if (! yyptr)
 	  goto yyexhaustedlab;
-	YYSTACK_RELOCATE (yyss);
-	YYSTACK_RELOCATE (yyvs);
-
+	YYSTACK_RELOCATE (yyss_alloc, yyss);
+	YYSTACK_RELOCATE (yyvs_alloc, yyvs);
 #  undef YYSTACK_RELOCATE
 	if (yyss1 != yyssa)
 	  YYSTACK_FREE (yyss1);
@@ -1318,7 +1505,6 @@ yyparse ()
       yyssp = yyss + yysize - 1;
       yyvsp = yyvs + yysize - 1;
 
-
       YYDPRINTF ((stderr, "Stack size increased to %lu\n",
 		  (unsigned long int) yystacksize));
 
@@ -1328,6 +1514,9 @@ yyparse ()
 
   YYDPRINTF ((stderr, "Entering state %d\n", yystate));
 
+  if (yystate == YYFINAL)
+    YYACCEPT;
+
   goto yybackup;
 
 /*-----------.
@@ -1335,19 +1524,17 @@ yyparse ()
 `-----------*/
 yybackup:
 
-/* Do appropriate processing given the current state.  */
-/* Read a look-ahead token if we need one and don't already have one.  */
-/* yyresume: */
-
-  /* First try to decide what to do without reference to look-ahead token.  */
+  /* Do appropriate processing given the current state.  Read a
+     lookahead token if we need one and don't already have one.  */
 
+  /* First try to decide what to do without reference to lookahead token.  */
   yyn = yypact[yystate];
   if (yyn == YYPACT_NINF)
     goto yydefault;
 
-  /* Not known => get a look-ahead token if don't already have one.  */
+  /* Not known => get a lookahead token if don't already have one.  */
 
-  /* YYCHAR is either YYEMPTY or YYEOF or a valid look-ahead symbol.  */
+  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
   if (yychar == YYEMPTY)
     {
       YYDPRINTF ((stderr, "Reading a token: "));
@@ -1379,25 +1566,20 @@ yybackup:
       goto yyreduce;
     }
 
-  if (yyn == YYFINAL)
-    YYACCEPT;
-
-  /* Shift the look-ahead token.  */
-  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
-
-  /* Discard the token being shifted unless it is eof.  */
-  if (yychar != YYEOF)
-    yychar = YYEMPTY;
-
-  *++yyvsp = yylval;
-
-
   /* Count tokens shifted since error; after three, turn off error
      status.  */
   if (yyerrstatus)
     yyerrstatus--;
 
+  /* Shift the lookahead token.  */
+  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
+
+  /* Discard the shifted token.  */
+  yychar = YYEMPTY;
+
   yystate = yyn;
+  *++yyvsp = yylval;
+
   goto yynewstate;
 
 
@@ -1439,13 +1621,13 @@ yyreduce:
 
   case 9:
 
-    { zconf_error("unknown statement \"%s\"", (yyvsp[-2].string)); ;}
+    { zconf_error("unknown statement \"%s\"", (yyvsp[(2) - (4)].string)); ;}
     break;
 
   case 10:
 
     {
-	zconf_error("unexpected option \"%s\"", kconf_id_strings + (yyvsp[-2].id)->name);
+	zconf_error("unexpected option \"%s\"", kconf_id_strings + (yyvsp[(2) - (4)].id)->name);
 ;}
     break;
 
@@ -1456,7 +1638,7 @@ yyreduce:
 
   case 25:
 
-    { zconf_error("unknown option \"%s\"", (yyvsp[-2].string)); ;}
+    { zconf_error("unknown option \"%s\"", (yyvsp[(1) - (3)].string)); ;}
     break;
 
   case 26:
@@ -1467,10 +1649,10 @@ yyreduce:
   case 27:
 
     {
-	struct symbol *sym = sym_lookup((yyvsp[-1].string), 0);
+	struct symbol *sym = sym_lookup((yyvsp[(2) - (3)].string), 0);
 	sym->flags |= SYMBOL_OPTIONAL;
 	menu_add_entry(sym);
-	printd(DEBUG_PARSE, "%s:%d:config %s\n", zconf_curname(), zconf_lineno(), (yyvsp[-1].string));
+	printd(DEBUG_PARSE, "%s:%d:config %s\n", zconf_curname(), zconf_lineno(), (yyvsp[(2) - (3)].string));
 ;}
     break;
 
@@ -1485,10 +1667,10 @@ yyreduce:
   case 29:
 
     {
-	struct symbol *sym = sym_lookup((yyvsp[-1].string), 0);
+	struct symbol *sym = sym_lookup((yyvsp[(2) - (3)].string), 0);
 	sym->flags |= SYMBOL_OPTIONAL;
 	menu_add_entry(sym);
-	printd(DEBUG_PARSE, "%s:%d:menuconfig %s\n", zconf_curname(), zconf_lineno(), (yyvsp[-1].string));
+	printd(DEBUG_PARSE, "%s:%d:menuconfig %s\n", zconf_curname(), zconf_lineno(), (yyvsp[(2) - (3)].string));
 ;}
     break;
 
@@ -1507,17 +1689,17 @@ yyreduce:
   case 38:
 
     {
-	menu_set_type((yyvsp[-2].id)->stype);
+	menu_set_type((yyvsp[(1) - (3)].id)->stype);
 	printd(DEBUG_PARSE, "%s:%d:type(%u)\n",
 		zconf_curname(), zconf_lineno(),
-		(yyvsp[-2].id)->stype);
+		(yyvsp[(1) - (3)].id)->stype);
 ;}
     break;
 
   case 39:
 
     {
-	menu_add_prompt(P_PROMPT, (yyvsp[-2].string), (yyvsp[-1].expr));
+	menu_add_prompt(P_PROMPT, (yyvsp[(2) - (4)].string), (yyvsp[(3) - (4)].expr));
 	printd(DEBUG_PARSE, "%s:%d:prompt\n", zconf_curname(), zconf_lineno());
 ;}
     break;
@@ -1525,19 +1707,19 @@ yyreduce:
   case 40:
 
     {
-	menu_add_expr(P_DEFAULT, (yyvsp[-2].expr), (yyvsp[-1].expr));
-	if ((yyvsp[-3].id)->stype != S_UNKNOWN)
-		menu_set_type((yyvsp[-3].id)->stype);
+	menu_add_expr(P_DEFAULT, (yyvsp[(2) - (4)].expr), (yyvsp[(3) - (4)].expr));
+	if ((yyvsp[(1) - (4)].id)->stype != S_UNKNOWN)
+		menu_set_type((yyvsp[(1) - (4)].id)->stype);
 	printd(DEBUG_PARSE, "%s:%d:default(%u)\n",
 		zconf_curname(), zconf_lineno(),
-		(yyvsp[-3].id)->stype);
+		(yyvsp[(1) - (4)].id)->stype);
 ;}
     break;
 
   case 41:
 
     {
-	menu_add_symbol(P_SELECT, sym_lookup((yyvsp[-2].string), 0), (yyvsp[-1].expr));
+	menu_add_symbol(P_SELECT, sym_lookup((yyvsp[(2) - (4)].string), 0), (yyvsp[(3) - (4)].expr));
 	printd(DEBUG_PARSE, "%s:%d:select\n", zconf_curname(), zconf_lineno());
 ;}
     break;
@@ -1545,7 +1727,7 @@ yyreduce:
   case 42:
 
     {
-	menu_add_expr(P_RANGE, expr_alloc_comp(E_RANGE,(yyvsp[-3].symbol), (yyvsp[-2].symbol)), (yyvsp[-1].expr));
+	menu_add_expr(P_RANGE, expr_alloc_comp(E_RANGE,(yyvsp[(2) - (5)].symbol), (yyvsp[(3) - (5)].symbol)), (yyvsp[(4) - (5)].expr));
 	printd(DEBUG_PARSE, "%s:%d:range\n", zconf_curname(), zconf_lineno());
 ;}
     break;
@@ -1553,12 +1735,12 @@ yyreduce:
   case 45:
 
     {
-	struct kconf_id *id = kconf_id_lookup((yyvsp[-1].string), strlen((yyvsp[-1].string)));
+	struct kconf_id *id = kconf_id_lookup((yyvsp[(2) - (3)].string), strlen((yyvsp[(2) - (3)].string)));
 	if (id && id->flags & TF_OPTION)
-		menu_add_option(id->token, (yyvsp[0].string));
+		menu_add_option(id->token, (yyvsp[(3) - (3)].string));
 	else
-		zconfprint("warning: ignoring unknown option %s", (yyvsp[-1].string));
-	free((yyvsp[-1].string));
+		zconfprint("warning: ignoring unknown option %s", (yyvsp[(2) - (3)].string));
+	free((yyvsp[(2) - (3)].string));
 ;}
     break;
 
@@ -1569,14 +1751,14 @@ yyreduce:
 
   case 47:
 
-    { (yyval.string) = (yyvsp[0].string); ;}
+    { (yyval.string) = (yyvsp[(2) - (2)].string); ;}
     break;
 
   case 48:
 
     {
-	struct symbol *sym = sym_lookup(NULL, 0);
-	sym->flags |= SYMBOL_CHOICE;
+	struct symbol *sym = sym_lookup((yyvsp[(2) - (3)].string), SYMBOL_CHOICE);
+	sym->flags |= SYMBOL_AUTO;
 	menu_add_entry(sym);
 	menu_add_expr(P_CHOICE, NULL, NULL);
 	printd(DEBUG_PARSE, "%s:%d:choice\n", zconf_curname(), zconf_lineno());
@@ -1593,7 +1775,7 @@ yyreduce:
   case 50:
 
     {
-	if (zconf_endtoken((yyvsp[0].id), T_CHOICE, T_ENDCHOICE)) {
+	if (zconf_endtoken((yyvsp[(1) - (1)].id), T_CHOICE, T_ENDCHOICE)) {
 		menu_end_menu();
 		printd(DEBUG_PARSE, "%s:%d:endchoice\n", zconf_curname(), zconf_lineno());
 	}
@@ -1603,7 +1785,7 @@ yyreduce:
   case 58:
 
     {
-	menu_add_prompt(P_PROMPT, (yyvsp[-2].string), (yyvsp[-1].expr));
+	menu_add_prompt(P_PROMPT, (yyvsp[(2) - (4)].string), (yyvsp[(3) - (4)].expr));
 	printd(DEBUG_PARSE, "%s:%d:prompt\n", zconf_curname(), zconf_lineno());
 ;}
     break;
@@ -1611,11 +1793,11 @@ yyreduce:
   case 59:
 
     {
-	if ((yyvsp[-2].id)->stype == S_BOOLEAN || (yyvsp[-2].id)->stype == S_TRISTATE) {
-		menu_set_type((yyvsp[-2].id)->stype);
+	if ((yyvsp[(1) - (3)].id)->stype == S_BOOLEAN || (yyvsp[(1) - (3)].id)->stype == S_TRISTATE) {
+		menu_set_type((yyvsp[(1) - (3)].id)->stype);
 		printd(DEBUG_PARSE, "%s:%d:type(%u)\n",
 			zconf_curname(), zconf_lineno(),
-			(yyvsp[-2].id)->stype);
+			(yyvsp[(1) - (3)].id)->stype);
 	} else
 		YYERROR;
 ;}
@@ -1632,8 +1814,8 @@ yyreduce:
   case 61:
 
     {
-	if ((yyvsp[-3].id)->stype == S_UNKNOWN) {
-		menu_add_symbol(P_DEFAULT, sym_lookup((yyvsp[-2].string), 0), (yyvsp[-1].expr));
+	if ((yyvsp[(1) - (4)].id)->stype == S_UNKNOWN) {
+		menu_add_symbol(P_DEFAULT, sym_lookup((yyvsp[(2) - (4)].string), 0), (yyvsp[(3) - (4)].expr));
 		printd(DEBUG_PARSE, "%s:%d:default\n",
 			zconf_curname(), zconf_lineno());
 	} else
@@ -1646,7 +1828,7 @@ yyreduce:
     {
 	printd(DEBUG_PARSE, "%s:%d:if\n", zconf_curname(), zconf_lineno());
 	menu_add_entry(NULL);
-	menu_add_dep((yyvsp[-1].expr));
+	menu_add_dep((yyvsp[(2) - (3)].expr));
 	(yyval.menu) = menu_add_menu();
 ;}
     break;
@@ -1654,7 +1836,7 @@ yyreduce:
   case 65:
 
     {
-	if (zconf_endtoken((yyvsp[0].id), T_IF, T_ENDIF)) {
+	if (zconf_endtoken((yyvsp[(1) - (1)].id), T_IF, T_ENDIF)) {
 		menu_end_menu();
 		printd(DEBUG_PARSE, "%s:%d:endif\n", zconf_curname(), zconf_lineno());
 	}
@@ -1665,7 +1847,7 @@ yyreduce:
 
     {
 	menu_add_entry(NULL);
-	menu_add_prompt(P_MENU, (yyvsp[-1].string), NULL);
+	menu_add_prompt(P_MENU, (yyvsp[(2) - (3)].string), NULL);
 	printd(DEBUG_PARSE, "%s:%d:menu\n", zconf_curname(), zconf_lineno());
 ;}
     break;
@@ -1680,7 +1862,7 @@ yyreduce:
   case 73:
 
     {
-	if (zconf_endtoken((yyvsp[0].id), T_MENU, T_ENDMENU)) {
+	if (zconf_endtoken((yyvsp[(1) - (1)].id), T_MENU, T_ENDMENU)) {
 		menu_end_menu();
 		printd(DEBUG_PARSE, "%s:%d:endmenu\n", zconf_curname(), zconf_lineno());
 	}
@@ -1690,8 +1872,8 @@ yyreduce:
   case 79:
 
     {
-	printd(DEBUG_PARSE, "%s:%d:source %s\n", zconf_curname(), zconf_lineno(), (yyvsp[-1].string));
-	zconf_nextfile((yyvsp[-1].string));
+	printd(DEBUG_PARSE, "%s:%d:source %s\n", zconf_curname(), zconf_lineno(), (yyvsp[(2) - (3)].string));
+	zconf_nextfile((yyvsp[(2) - (3)].string));
 ;}
     break;
 
@@ -1699,7 +1881,7 @@ yyreduce:
 
     {
 	menu_add_entry(NULL);
-	menu_add_prompt(P_COMMENT, (yyvsp[-1].string), NULL);
+	menu_add_prompt(P_COMMENT, (yyvsp[(2) - (3)].string), NULL);
 	printd(DEBUG_PARSE, "%s:%d:comment\n", zconf_curname(), zconf_lineno());
 ;}
     break;
@@ -1722,127 +1904,112 @@ yyreduce:
   case 83:
 
     {
-	current_entry->help = (yyvsp[0].string);
+	current_entry->help = (yyvsp[(2) - (2)].string);
 ;}
     break;
 
   case 88:
 
     {
-	menu_add_dep((yyvsp[-1].expr));
+	menu_add_dep((yyvsp[(3) - (4)].expr));
 	printd(DEBUG_PARSE, "%s:%d:depends on\n", zconf_curname(), zconf_lineno());
 ;}
     break;
 
-  case 89:
+  case 90:
 
     {
-	menu_add_dep((yyvsp[-1].expr));
-	printd(DEBUG_PARSE, "%s:%d:depends\n", zconf_curname(), zconf_lineno());
+	menu_add_prompt(P_PROMPT, (yyvsp[(1) - (2)].string), (yyvsp[(2) - (2)].expr));
 ;}
     break;
 
-  case 90:
+  case 93:
 
-    {
-	menu_add_dep((yyvsp[-1].expr));
-	printd(DEBUG_PARSE, "%s:%d:requires\n", zconf_curname(), zconf_lineno());
-;}
+    { (yyval.id) = (yyvsp[(1) - (2)].id); ;}
     break;
 
-  case 92:
+  case 94:
 
-    {
-	menu_add_prompt(P_PROMPT, (yyvsp[-1].string), (yyvsp[0].expr));
-;}
+    { (yyval.id) = (yyvsp[(1) - (2)].id); ;}
     break;
 
   case 95:
 
-    { (yyval.id) = (yyvsp[-1].id); ;}
+    { (yyval.id) = (yyvsp[(1) - (2)].id); ;}
     break;
 
-  case 96:
+  case 98:
 
-    { (yyval.id) = (yyvsp[-1].id); ;}
+    { (yyval.expr) = NULL; ;}
     break;
 
-  case 97:
+  case 99:
 
-    { (yyval.id) = (yyvsp[-1].id); ;}
+    { (yyval.expr) = (yyvsp[(2) - (2)].expr); ;}
     break;
 
   case 100:
 
-    { (yyval.expr) = NULL; ;}
+    { (yyval.expr) = expr_alloc_symbol((yyvsp[(1) - (1)].symbol)); ;}
     break;
 
   case 101:
 
-    { (yyval.expr) = (yyvsp[0].expr); ;}
+    { (yyval.expr) = expr_alloc_comp(E_EQUAL, (yyvsp[(1) - (3)].symbol), (yyvsp[(3) - (3)].symbol)); ;}
     break;
 
   case 102:
 
-    { (yyval.expr) = expr_alloc_symbol((yyvsp[0].symbol)); ;}
+    { (yyval.expr) = expr_alloc_comp(E_UNEQUAL, (yyvsp[(1) - (3)].symbol), (yyvsp[(3) - (3)].symbol)); ;}
     break;
 
   case 103:
 
-    { (yyval.expr) = expr_alloc_comp(E_EQUAL, (yyvsp[-2].symbol), (yyvsp[0].symbol)); ;}
+    { (yyval.expr) = (yyvsp[(2) - (3)].expr); ;}
     break;
 
   case 104:
 
-    { (yyval.expr) = expr_alloc_comp(E_UNEQUAL, (yyvsp[-2].symbol), (yyvsp[0].symbol)); ;}
+    { (yyval.expr) = expr_alloc_one(E_NOT, (yyvsp[(2) - (2)].expr)); ;}
     break;
 
   case 105:
 
-    { (yyval.expr) = (yyvsp[-1].expr); ;}
+    { (yyval.expr) = expr_alloc_two(E_OR, (yyvsp[(1) - (3)].expr), (yyvsp[(3) - (3)].expr)); ;}
     break;
 
   case 106:
 
-    { (yyval.expr) = expr_alloc_one(E_NOT, (yyvsp[0].expr)); ;}
+    { (yyval.expr) = expr_alloc_two(E_AND, (yyvsp[(1) - (3)].expr), (yyvsp[(3) - (3)].expr)); ;}
     break;
 
   case 107:
 
-    { (yyval.expr) = expr_alloc_two(E_OR, (yyvsp[-2].expr), (yyvsp[0].expr)); ;}
+    { (yyval.symbol) = sym_lookup((yyvsp[(1) - (1)].string), 0); free((yyvsp[(1) - (1)].string)); ;}
     break;
 
   case 108:
 
-    { (yyval.expr) = expr_alloc_two(E_AND, (yyvsp[-2].expr), (yyvsp[0].expr)); ;}
+    { (yyval.symbol) = sym_lookup((yyvsp[(1) - (1)].string), SYMBOL_CONST); free((yyvsp[(1) - (1)].string)); ;}
     break;
 
   case 109:
 
-    { (yyval.symbol) = sym_lookup((yyvsp[0].string), 0); free((yyvsp[0].string)); ;}
+    { (yyval.string) = NULL; ;}
     break;
 
-  case 110:
-
-    { (yyval.symbol) = sym_lookup((yyvsp[0].string), 1); free((yyvsp[0].string)); ;}
-    break;
 
 
       default: break;
     }
+  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);
 
-/* Line 1126 of yacc.c.  */
-
-
-  yyvsp -= yylen;
-  yyssp -= yylen;
-
-
+  YYPOPSTACK (yylen);
+  yylen = 0;
   YY_STACK_PRINT (yyss, yyssp);
 
   *++yyvsp = yyval;
 
-
   /* Now `shift' the result of the reduction.  Determine what state
      that goes to, based on the state we popped back to and the rule
      number reduced by.  */
@@ -1866,133 +2033,65 @@ yyerrlab:
   if (!yyerrstatus)
     {
       ++yynerrs;
-#if YYERROR_VERBOSE
-      yyn = yypact[yystate];
-
-      if (YYPACT_NINF < yyn && yyn < YYLAST)
-	{
-	  int yytype = YYTRANSLATE (yychar);
-	  YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
-	  YYSIZE_T yysize = yysize0;
-	  YYSIZE_T yysize1;
-	  int yysize_overflow = 0;
-	  char *yymsg = 0;
-#	  define YYERROR_VERBOSE_ARGS_MAXIMUM 5
-	  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
-	  int yyx;
-
-#if 0
-	  /* This is so xgettext sees the translatable formats that are
-	     constructed on the fly.  */
-	  YY_("syntax error, unexpected %s");
-	  YY_("syntax error, unexpected %s, expecting %s");
-	  YY_("syntax error, unexpected %s, expecting %s or %s");
-	  YY_("syntax error, unexpected %s, expecting %s or %s or %s");
-	  YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
-#endif
-	  char *yyfmt;
-	  char const *yyf;
-	  static char const yyunexpected[] = "syntax error, unexpected %s";
-	  static char const yyexpecting[] = ", expecting %s";
-	  static char const yyor[] = " or %s";
-	  char yyformat[sizeof yyunexpected
-			+ sizeof yyexpecting - 1
-			+ ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
-			   * (sizeof yyor - 1))];
-	  char const *yyprefix = yyexpecting;
-
-	  /* Start YYX at -YYN if negative to avoid negative indexes in
-	     YYCHECK.  */
-	  int yyxbegin = yyn < 0 ? -yyn : 0;
-
-	  /* Stay within bounds of both yycheck and yytname.  */
-	  int yychecklim = YYLAST - yyn;
-	  int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
-	  int yycount = 1;
-
-	  yyarg[0] = yytname[yytype];
-	  yyfmt = yystpcpy (yyformat, yyunexpected);
-
-	  for (yyx = yyxbegin; yyx < yyxend; ++yyx)
-	    if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR)
+#if ! YYERROR_VERBOSE
+      yyerror (YY_("syntax error"));
+#else
+      {
+	YYSIZE_T yysize = yysyntax_error (0, yystate, yychar);
+	if (yymsg_alloc < yysize && yymsg_alloc < YYSTACK_ALLOC_MAXIMUM)
+	  {
+	    YYSIZE_T yyalloc = 2 * yysize;
+	    if (! (yysize <= yyalloc && yyalloc <= YYSTACK_ALLOC_MAXIMUM))
+	      yyalloc = YYSTACK_ALLOC_MAXIMUM;
+	    if (yymsg != yymsgbuf)
+	      YYSTACK_FREE (yymsg);
+	    yymsg = (char *) YYSTACK_ALLOC (yyalloc);
+	    if (yymsg)
+	      yymsg_alloc = yyalloc;
+	    else
 	      {
-		if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
-		  {
-		    yycount = 1;
-		    yysize = yysize0;
-		    yyformat[sizeof yyunexpected - 1] = '\0';
-		    break;
-		  }
-		yyarg[yycount++] = yytname[yyx];
-		yysize1 = yysize + yytnamerr (0, yytname[yyx]);
-		yysize_overflow |= yysize1 < yysize;
-		yysize = yysize1;
-		yyfmt = yystpcpy (yyfmt, yyprefix);
-		yyprefix = yyor;
+		yymsg = yymsgbuf;
+		yymsg_alloc = sizeof yymsgbuf;
 	      }
+	  }
 
-	  yyf = YY_(yyformat);
-	  yysize1 = yysize + yystrlen (yyf);
-	  yysize_overflow |= yysize1 < yysize;
-	  yysize = yysize1;
-
-	  if (!yysize_overflow && yysize <= YYSTACK_ALLOC_MAXIMUM)
-	    yymsg = (char *) YYSTACK_ALLOC (yysize);
-	  if (yymsg)
-	    {
-	      /* Avoid sprintf, as that infringes on the user's name space.
-		 Don't have undefined behavior even if the translation
-		 produced a string with the wrong number of "%s"s.  */
-	      char *yyp = yymsg;
-	      int yyi = 0;
-	      while ((*yyp = *yyf))
-		{
-		  if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
-		    {
-		      yyp += yytnamerr (yyp, yyarg[yyi++]);
-		      yyf += 2;
-		    }
-		  else
-		    {
-		      yyp++;
-		      yyf++;
-		    }
-		}
-	      yyerror (yymsg);
-	      YYSTACK_FREE (yymsg);
-	    }
-	  else
-	    {
-	      yyerror (YY_("syntax error"));
+	if (0 < yysize && yysize <= yymsg_alloc)
+	  {
+	    (void) yysyntax_error (yymsg, yystate, yychar);
+	    yyerror (yymsg);
+	  }
+	else
+	  {
+	    yyerror (YY_("syntax error"));
+	    if (yysize != 0)
 	      goto yyexhaustedlab;
-	    }
-	}
-      else
-#endif /* YYERROR_VERBOSE */
-	yyerror (YY_("syntax error"));
+	  }
+      }
+#endif
     }
 
 
 
   if (yyerrstatus == 3)
     {
-      /* If just tried and failed to reuse look-ahead token after an
+      /* If just tried and failed to reuse lookahead token after an
 	 error, discard it.  */
 
       if (yychar <= YYEOF)
-        {
+	{
 	  /* Return failure if at end of input.  */
 	  if (yychar == YYEOF)
 	    YYABORT;
-        }
+	}
       else
 	{
-	  yydestruct ("Error: discarding", yytoken, &yylval);
+	  yydestruct ("Error: discarding",
+		      yytoken, &yylval);
 	  yychar = YYEMPTY;
 	}
     }
 
-  /* Else will try to reuse look-ahead token after shifting the error
+  /* Else will try to reuse lookahead token after shifting the error
      token.  */
   goto yyerrlab1;
 
@@ -2005,11 +2104,14 @@ yyerrorlab:
   /* Pacify compilers like GCC when the user code never invokes
      YYERROR and the label yyerrorlab therefore never appears in user
      code.  */
-  if (0)
+  if (/*CONSTCOND*/ 0)
      goto yyerrorlab;
 
-yyvsp -= yylen;
-  yyssp -= yylen;
+  /* Do not reclaim the symbols of the rule which action triggered
+     this YYERROR.  */
+  YYPOPSTACK (yylen);
+  yylen = 0;
+  YY_STACK_PRINT (yyss, yyssp);
   yystate = *yyssp;
   goto yyerrlab1;
 
@@ -2039,19 +2141,17 @@ yyerrlab1:
 	YYABORT;
 
 
-      yydestruct ("Error: popping", yystos[yystate], yyvsp);
-      YYPOPSTACK;
+      yydestruct ("Error: popping",
+		  yystos[yystate], yyvsp);
+      YYPOPSTACK (1);
       yystate = *yyssp;
       YY_STACK_PRINT (yyss, yyssp);
     }
 
-  if (yyn == YYFINAL)
-    YYACCEPT;
-
   *++yyvsp = yylval;
 
 
-  /* Shift the error token. */
+  /* Shift the error token.  */
   YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);
 
   yystate = yyn;
@@ -2072,7 +2172,7 @@ yyabortlab:
   yyresult = 1;
   goto yyreturn;
 
-#ifndef yyoverflow
+#if !defined(yyoverflow) || YYERROR_VERBOSE
 /*-------------------------------------------------.
 | yyexhaustedlab -- memory exhaustion comes here.  |
 `-------------------------------------------------*/
@@ -2083,20 +2183,29 @@ yyexhaustedlab:
 #endif
 
 yyreturn:
-  if (yychar != YYEOF && yychar != YYEMPTY)
+  if (yychar != YYEMPTY)
      yydestruct ("Cleanup: discarding lookahead",
 		 yytoken, &yylval);
+  /* Do not reclaim the symbols of the rule which action triggered
+     this YYABORT or YYACCEPT.  */
+  YYPOPSTACK (yylen);
+  YY_STACK_PRINT (yyss, yyssp);
   while (yyssp != yyss)
     {
       yydestruct ("Cleanup: popping",
 		  yystos[*yyssp], yyvsp);
-      YYPOPSTACK;
+      YYPOPSTACK (1);
     }
 #ifndef yyoverflow
   if (yyss != yyssa)
     YYSTACK_FREE (yyss);
 #endif
-  return yyresult;
+#if YYERROR_VERBOSE
+  if (yymsg != yymsgbuf)
+    YYSTACK_FREE (yymsg);
+#endif
+  /* Make sure YYID is used.  */
+  return YYID (yyresult);
 }
 
 
@@ -2111,7 +2220,7 @@ void conf_parse(const char *name)
 	zconf_initscan(name);
 
 	sym_init();
-	menu_init();
+	_menu_init();
 	modules_sym = sym_lookup(NULL, 0);
 	modules_sym->type = S_BOOLEAN;
 	modules_sym->flags |= SYMBOL_AUTO;
@@ -2140,7 +2249,7 @@ void conf_parse(const char *name)
 	sym_set_change_count(1);
 }
 
-const char *zconf_tokenname(int token)
+static const char *zconf_tokenname(int token)
 {
 	switch (token) {
 	case T_MENU:		return "menu";
@@ -2204,7 +2313,7 @@ static void zconferror(const char *err)
 #endif
 }
 
-void print_quoted_string(FILE *out, const char *str)
+static void print_quoted_string(FILE *out, const char *str)
 {
 	const char *p;
 	int len;
@@ -2221,15 +2330,15 @@ void print_quoted_string(FILE *out, const char *str)
 	putc('"', out);
 }
 
-void print_symbol(FILE *out, struct menu *menu)
+static void print_symbol(FILE *out, struct menu *menu)
 {
 	struct symbol *sym = menu->sym;
 	struct property *prop;
 
 	if (sym_is_choice(sym))
-		fprintf(out, "choice\n");
+		fprintf(out, "\nchoice\n");
 	else
-		fprintf(out, "config %s\n", sym->name);
+		fprintf(out, "\nconfig %s\n", sym->name);
 	switch (sym->type) {
 	case S_BOOLEAN:
 		fputs("  boolean\n", out);
@@ -2275,6 +2384,21 @@ void print_symbol(FILE *out, struct menu *menu)
 		case P_CHOICE:
 			fputs("  #choice value\n", out);
 			break;
+		case P_SELECT:
+			fputs( "  select ", out);
+			expr_fprint(prop->expr, out);
+			fputc('\n', out);
+			break;
+		case P_RANGE:
+			fputs( "  range ", out);
+			expr_fprint(prop->expr, out);
+			fputc('\n', out);
+			break;
+		case P_MENU:
+			fputs( "  menu ", out);
+			print_quoted_string(out, prop->text);
+			fputc('\n', out);
+			break;
 		default:
 			fprintf(out, "  unknown prop %d!\n", prop->type);
 			break;
@@ -2286,7 +2410,6 @@ void print_symbol(FILE *out, struct menu *menu)
 			menu->help[len] = 0;
 		fprintf(out, "  help\n%s\n", menu->help);
 	}
-	fputc('\n', out);
 }
 
 void zconfdump(FILE *out)
@@ -2319,7 +2442,6 @@ void zconfdump(FILE *out)
 				expr_fprint(prop->visible.expr, out);
 				fputc('\n', out);
 			}
-			fputs("\n", out);
 		}
 
 		if (menu->list)
@@ -2344,4 +2466,3 @@ void zconfdump(FILE *out)
 #include "symbol.c"
 #include "menu.c"
 
-
diff --git a/scripts/kconfig/zconf.y b/scripts/kconfig/zconf.y
index 79db4cf..23dfd3b 100644
--- a/scripts/kconfig/zconf.y
+++ b/scripts/kconfig/zconf.y
@@ -14,8 +14,6 @@
 #define LKC_DIRECT_LINK
 #include "lkc.h"
 
-#include "zconf.hash.c"
-
 #define printd(mask, fmt...) if (cdebug & (mask)) printf(fmt)
 
 #define PRINTD		0x0001
@@ -29,7 +27,7 @@ static void zconf_error(const char *err, ...);
 static void zconferror(const char *err);
 static bool zconf_endtoken(struct kconf_id *id, int starttoken, int endtoken);
 
-struct symbol *symbol_hash[257];
+struct symbol *symbol_hash[SYMBOL_HASHSIZE];
 
 static struct menu *current_menu, *current_entry;
 
@@ -64,7 +62,6 @@ static struct menu *current_menu, *current_entry;
 %token <id>T_IF
 %token <id>T_ENDIF
 %token <id>T_DEPENDS
-%token <id>T_REQUIRES
 %token <id>T_OPTIONAL
 %token <id>T_PROMPT
 %token <id>T_TYPE
@@ -92,7 +89,7 @@ static struct menu *current_menu, *current_entry;
 %type <id> end
 %type <id> option_name
 %type <menu> if_entry menu_entry choice_entry
-%type <string> symbol_option_arg
+%type <string> symbol_option_arg word_opt
 
 %destructor {
 	fprintf(stderr, "%s:%d: missing end statement for this entry\n",
@@ -101,6 +98,11 @@ static struct menu *current_menu, *current_entry;
 		menu_end_menu();
 } if_entry menu_entry choice_entry
 
+%{
+/* Include zconf.hash.c here so it can see the token constants. */
+#include "zconf.hash.c"
+%}
+
 %%
 input: stmt_list;
 
@@ -240,10 +242,10 @@ symbol_option_arg:
 
 /* choice entry */
 
-choice: T_CHOICE T_EOL
+choice: T_CHOICE word_opt T_EOL
 {
-	struct symbol *sym = sym_lookup(NULL, 0);
-	sym->flags |= SYMBOL_CHOICE;
+	struct symbol *sym = sym_lookup($2, SYMBOL_CHOICE);
+	sym->flags |= SYMBOL_AUTO;
 	menu_add_entry(sym);
 	menu_add_expr(P_CHOICE, NULL, NULL);
 	printd(DEBUG_PARSE, "%s:%d:choice\n", zconf_curname(), zconf_lineno());
@@ -418,16 +420,6 @@ depends: T_DEPENDS T_ON expr T_EOL
 {
 	menu_add_dep($3);
 	printd(DEBUG_PARSE, "%s:%d:depends on\n", zconf_curname(), zconf_lineno());
-}
-	| T_DEPENDS expr T_EOL
-{
-	menu_add_dep($2);
-	printd(DEBUG_PARSE, "%s:%d:depends\n", zconf_curname(), zconf_lineno());
-}
-	| T_REQUIRES expr T_EOL
-{
-	menu_add_dep($2);
-	printd(DEBUG_PARSE, "%s:%d:requires\n", zconf_curname(), zconf_lineno());
 };
 
 /* prompt statement */
@@ -467,9 +459,12 @@ expr:	  symbol				{ $$ = expr_alloc_symbol($1); }
 ;
 
 symbol:	  T_WORD	{ $$ = sym_lookup($1, 0); free($1); }
-	| T_WORD_QUOTE	{ $$ = sym_lookup($1, 1); free($1); }
+	| T_WORD_QUOTE	{ $$ = sym_lookup($1, SYMBOL_CONST); free($1); }
 ;
 
+word_opt: /* empty */			{ $$ = NULL; }
+	| T_WORD
+
 %%
 
 void conf_parse(const char *name)
@@ -480,7 +475,7 @@ void conf_parse(const char *name)
 	zconf_initscan(name);
 
 	sym_init();
-	menu_init();
+	_menu_init();
 	modules_sym = sym_lookup(NULL, 0);
 	modules_sym->type = S_BOOLEAN;
 	modules_sym->flags |= SYMBOL_AUTO;
@@ -509,7 +504,7 @@ void conf_parse(const char *name)
 	sym_set_change_count(1);
 }
 
-const char *zconf_tokenname(int token)
+static const char *zconf_tokenname(int token)
 {
 	switch (token) {
 	case T_MENU:		return "menu";
@@ -573,7 +568,7 @@ static void zconferror(const char *err)
 #endif
 }
 
-void print_quoted_string(FILE *out, const char *str)
+static void print_quoted_string(FILE *out, const char *str)
 {
 	const char *p;
 	int len;
@@ -590,15 +585,15 @@ void print_quoted_string(FILE *out, const char *str)
 	putc('"', out);
 }
 
-void print_symbol(FILE *out, struct menu *menu)
+static void print_symbol(FILE *out, struct menu *menu)
 {
 	struct symbol *sym = menu->sym;
 	struct property *prop;
 
 	if (sym_is_choice(sym))
-		fprintf(out, "choice\n");
+		fprintf(out, "\nchoice\n");
 	else
-		fprintf(out, "config %s\n", sym->name);
+		fprintf(out, "\nconfig %s\n", sym->name);
 	switch (sym->type) {
 	case S_BOOLEAN:
 		fputs("  boolean\n", out);
@@ -644,6 +639,21 @@ void print_symbol(FILE *out, struct menu *menu)
 		case P_CHOICE:
 			fputs("  #choice value\n", out);
 			break;
+		case P_SELECT:
+			fputs( "  select ", out);
+			expr_fprint(prop->expr, out);
+			fputc('\n', out);
+			break;
+		case P_RANGE:
+			fputs( "  range ", out);
+			expr_fprint(prop->expr, out);
+			fputc('\n', out);
+			break;
+		case P_MENU:
+			fputs( "  menu ", out);
+			print_quoted_string(out, prop->text);
+			fputc('\n', out);
+			break;
 		default:
 			fprintf(out, "  unknown prop %d!\n", prop->type);
 			break;
@@ -655,7 +665,6 @@ void print_symbol(FILE *out, struct menu *menu)
 			menu->help[len] = 0;
 		fprintf(out, "  help\n%s\n", menu->help);
 	}
-	fputc('\n', out);
 }
 
 void zconfdump(FILE *out)
@@ -688,7 +697,6 @@ void zconfdump(FILE *out)
 				expr_fprint(prop->visible.expr, out);
 				fputc('\n', out);
 			}
-			fputs("\n", out);
 		}
 
 		if (menu->list)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
