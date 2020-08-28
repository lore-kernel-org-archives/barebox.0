Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kBV6C-0006Gn-PT
 for barebox@lists.infradead.org; Fri, 28 Aug 2020 03:30:47 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 28 Aug 2020 12:30:14 +0900
Message-Id: <20200828033014.54583-1-masahiroy@kernel.org>
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
Subject: [PATCH] kconfig: update to Linux 5.9-rc2
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

The previous sync was Linux 5.7-rc2. Resync scripts/kconfig/ and
scripts/Kconfig.include with Linux 5.9-rc2.

Highlights:

 - fix and improve 'make xconfig'

 - remove '---help---' keyword

 - forbid nested 'choice' blocks

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Kconfig.include                       |   5 +-
 scripts/kconfig/.gitignore                    |   2 +-
 scripts/kconfig/Makefile                      |  24 +-
 scripts/kconfig/images.c                      |  30 +-
 scripts/kconfig/images.h                      |  30 +-
 scripts/kconfig/lexer.l                       |   4 +-
 scripts/kconfig/menu.c                        |   3 +-
 scripts/kconfig/parser.y                      |  30 +-
 scripts/kconfig/qconf.cc                      | 629 +++++++++---------
 scripts/kconfig/qconf.h                       |  89 +--
 scripts/kconfig/streamline_config.pl          |  21 +
 scripts/kconfig/symbol.c                      |  16 +-
 .../kconfig/tests/rand_nested_choice/Kconfig  |  35 -
 .../tests/rand_nested_choice/__init__.py      |  17 -
 .../tests/rand_nested_choice/expected_stdout0 |   2 -
 .../tests/rand_nested_choice/expected_stdout1 |   4 -
 .../tests/rand_nested_choice/expected_stdout2 |   5 -
 17 files changed, 458 insertions(+), 488 deletions(-)
 delete mode 100644 scripts/kconfig/tests/rand_nested_choice/Kconfig
 delete mode 100644 scripts/kconfig/tests/rand_nested_choice/__init__.py
 delete mode 100644 scripts/kconfig/tests/rand_nested_choice/expected_stdout0
 delete mode 100644 scripts/kconfig/tests/rand_nested_choice/expected_stdout1
 delete mode 100644 scripts/kconfig/tests/rand_nested_choice/expected_stdout2

diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index 496d11c92..a5fe72c50 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -25,7 +25,7 @@ failure = $(if-success,$(1),n,y)
 
 # $(cc-option,<flag>)
 # Return y if the compiler supports <flag>, n otherwise
-cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -S -x c /dev/null -o /dev/null)
+cc-option = $(success,mkdir .tmp_$$$$; trap "rm -rf .tmp_$$$$" EXIT; $(CC) -Werror $(CLANG_FLAGS) $(1) -c -x c /dev/null -o .tmp_$$$$/tmp.o)
 
 # $(ld-option,<flag>)
 # Return y if the linker supports <flag>, n otherwise
@@ -42,9 +42,6 @@ $(error-if,$(failure,command -v $(LD)),linker '$(LD)' not found)
 # Fail if the linker is gold as it's not capable of linking the kernel proper
 $(error-if,$(success, $(LD) -v | grep -q gold), gold linker '$(LD)' not supported)
 
-# gcc version including patch level
-gcc-version := $(shell,$(srctree)/scripts/gcc-version.sh $(CC))
-
 # machine bit flags
 #  $(m32-flag): -m32 if the compiler supports it, or an empty string otherwise.
 #  $(m64-flag): -m64 if the compiler supports it, or an empty string otherwise.
diff --git a/scripts/kconfig/.gitignore b/scripts/kconfig/.gitignore
index 12a67fdab..c3d537cd0 100644
--- a/scripts/kconfig/.gitignore
+++ b/scripts/kconfig/.gitignore
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
-*.moc
+/qconf-moc.cc
 *conf-cfg
 
 #
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index c9d0a4a8e..52b59bf9e 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -96,11 +96,13 @@ configfiles=$(wildcard $(srctree)/kernel/configs/$@ $(srctree)/arch/$(SRCARCH)/c
 
 PHONY += kvmconfig
 kvmconfig: kvm_guest.config
-	@:
+	@echo >&2 "WARNING: 'make $@' will be removed after Linux 5.10"
+	@echo >&2 "         Please use 'make $<' instead."
 
 PHONY += xenconfig
 xenconfig: xen.config
-	@:
+	@echo >&2 "WARNING: 'make $@' will be removed after Linux 5.10"
+	@echo >&2 "         Please use 'make $<' instead."
 
 PHONY += tinyconfig
 tinyconfig:
@@ -123,7 +125,9 @@ help:
 	@echo  '  gconfig	  - Update current config utilising a GTK+ based front-end'
 	@echo  '  oldconfig	  - Update current config utilising a provided .config as base'
 	@echo  '  localmodconfig  - Update current config disabling modules not loaded'
+	@echo  '                    except those preserved by LMC_KEEP environment variable'
 	@echo  '  localyesconfig  - Update current config converting local mods to core'
+	@echo  '                    except those preserved by LMC_KEEP environment variable'
 	@echo  '  defconfig	  - New config with default from ARCH supplied defconfig'
 	@echo  '  savedefconfig   - Save current config as ./defconfig (minimal config)'
 	@echo  '  allnoconfig	  - New config where all options are answered with no'
@@ -137,9 +141,6 @@ help:
 	@echo  '  helpnewconfig   - List new options and help text'
 	@echo  '  olddefconfig	  - Same as oldconfig but sets new symbols to their'
 	@echo  '                    default value without prompting'
-	@echo  '  kvmconfig	  - Enable additional options for kvm guest kernel support'
-	@echo  '  xenconfig       - Enable additional options for xen dom0 and guest kernel'
-	@echo  '                    support'
 	@echo  '  tinyconfig	  - Configure the tiniest possible kernel'
 	@echo  '  testconfig	  - Run Kconfig unit tests (requires python3 and pytest)'
 
@@ -180,19 +181,22 @@ $(addprefix $(obj)/, mconf.o $(lxdialog)): $(obj)/mconf-cfg
 
 # qconf: Used for the xconfig target based on Qt
 hostprogs	+= qconf
-qconf-cxxobjs	:= qconf.o
+qconf-cxxobjs	:= qconf.o qconf-moc.o
 qconf-objs	:= images.o $(common-objs)
 
 HOSTLDLIBS_qconf	= $(shell . $(obj)/qconf-cfg && echo $$libs)
 HOSTCXXFLAGS_qconf.o	= $(shell . $(obj)/qconf-cfg && echo $$cflags)
+HOSTCXXFLAGS_qconf-moc.o = $(shell . $(obj)/qconf-cfg && echo $$cflags)
 
-$(obj)/qconf.o: $(obj)/qconf-cfg $(obj)/qconf.moc
+$(obj)/qconf.o: $(obj)/qconf-cfg
 
 quiet_cmd_moc = MOC     $@
-      cmd_moc = $(shell . $(obj)/qconf-cfg && echo $$moc) -i $< -o $@
+      cmd_moc = $(shell . $(obj)/qconf-cfg && echo $$moc) $< -o $@
 
-$(obj)/%.moc: $(src)/%.h $(obj)/qconf-cfg
-	$(call cmd,moc)
+$(obj)/qconf-moc.cc: $(src)/qconf.h $(obj)/qconf-cfg FORCE
+	$(call if_changed,moc)
+
+targets += qconf-moc.cc
 
 # gconf: Used for the gconfig target based on GTK+
 hostprogs	+= gconf
diff --git a/scripts/kconfig/images.c b/scripts/kconfig/images.c
index b4fa0e4a6..2f9afffa5 100644
--- a/scripts/kconfig/images.c
+++ b/scripts/kconfig/images.c
@@ -5,7 +5,7 @@
 
 #include "images.h"
 
-const char *xpm_load[] = {
+const char * const xpm_load[] = {
 "22 22 5 1",
 ". c None",
 "# c #000000",
@@ -35,7 +35,7 @@ const char *xpm_load[] = {
 "###############.......",
 "......................"};
 
-const char *xpm_save[] = {
+const char * const xpm_save[] = {
 "22 22 5 1",
 ". c None",
 "# c #000000",
@@ -65,7 +65,7 @@ const char *xpm_save[] = {
 "..##################..",
 "......................"};
 
-const char *xpm_back[] = {
+const char * const xpm_back[] = {
 "22 22 3 1",
 ". c None",
 "# c #000083",
@@ -93,7 +93,7 @@ const char *xpm_back[] = {
 "......................",
 "......................"};
 
-const char *xpm_tree_view[] = {
+const char * const xpm_tree_view[] = {
 "22 22 2 1",
 ". c None",
 "# c #000000",
@@ -120,7 +120,7 @@ const char *xpm_tree_view[] = {
 "......................",
 "......................"};
 
-const char *xpm_single_view[] = {
+const char * const xpm_single_view[] = {
 "22 22 2 1",
 ". c None",
 "# c #000000",
@@ -147,7 +147,7 @@ const char *xpm_single_view[] = {
 "......................",
 "......................"};
 
-const char *xpm_split_view[] = {
+const char * const xpm_split_view[] = {
 "22 22 2 1",
 ". c None",
 "# c #000000",
@@ -174,7 +174,7 @@ const char *xpm_split_view[] = {
 "......................",
 "......................"};
 
-const char *xpm_symbol_no[] = {
+const char * const xpm_symbol_no[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -191,7 +191,7 @@ const char *xpm_symbol_no[] = {
 " .......... ",
 "            "};
 
-const char *xpm_symbol_mod[] = {
+const char * const xpm_symbol_mod[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -208,7 +208,7 @@ const char *xpm_symbol_mod[] = {
 " .......... ",
 "            "};
 
-const char *xpm_symbol_yes[] = {
+const char * const xpm_symbol_yes[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -225,7 +225,7 @@ const char *xpm_symbol_yes[] = {
 " .......... ",
 "            "};
 
-const char *xpm_choice_no[] = {
+const char * const xpm_choice_no[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -242,7 +242,7 @@ const char *xpm_choice_no[] = {
 "    ....    ",
 "            "};
 
-const char *xpm_choice_yes[] = {
+const char * const xpm_choice_yes[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -259,7 +259,7 @@ const char *xpm_choice_yes[] = {
 "    ....    ",
 "            "};
 
-const char *xpm_menu[] = {
+const char * const xpm_menu[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -276,7 +276,7 @@ const char *xpm_menu[] = {
 " .......... ",
 "            "};
 
-const char *xpm_menu_inv[] = {
+const char * const xpm_menu_inv[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -293,7 +293,7 @@ const char *xpm_menu_inv[] = {
 " .......... ",
 "            "};
 
-const char *xpm_menuback[] = {
+const char * const xpm_menuback[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -310,7 +310,7 @@ const char *xpm_menuback[] = {
 " .......... ",
 "            "};
 
-const char *xpm_void[] = {
+const char * const xpm_void[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
diff --git a/scripts/kconfig/images.h b/scripts/kconfig/images.h
index d8ff614bd..7212dec20 100644
--- a/scripts/kconfig/images.h
+++ b/scripts/kconfig/images.h
@@ -10,21 +10,21 @@
 extern "C" {
 #endif
 
-extern const char *xpm_load[];
-extern const char *xpm_save[];
-extern const char *xpm_back[];
-extern const char *xpm_tree_view[];
-extern const char *xpm_single_view[];
-extern const char *xpm_split_view[];
-extern const char *xpm_symbol_no[];
-extern const char *xpm_symbol_mod[];
-extern const char *xpm_symbol_yes[];
-extern const char *xpm_choice_no[];
-extern const char *xpm_choice_yes[];
-extern const char *xpm_menu[];
-extern const char *xpm_menu_inv[];
-extern const char *xpm_menuback[];
-extern const char *xpm_void[];
+extern const char * const xpm_load[];
+extern const char * const xpm_save[];
+extern const char * const xpm_back[];
+extern const char * const xpm_tree_view[];
+extern const char * const xpm_single_view[];
+extern const char * const xpm_split_view[];
+extern const char * const xpm_symbol_no[];
+extern const char * const xpm_symbol_mod[];
+extern const char * const xpm_symbol_yes[];
+extern const char * const xpm_choice_no[];
+extern const char * const xpm_choice_yes[];
+extern const char * const xpm_menu[];
+extern const char * const xpm_menu_inv[];
+extern const char * const xpm_menuback[];
+extern const char * const xpm_void[];
 
 #ifdef __cplusplus
 }
diff --git a/scripts/kconfig/lexer.l b/scripts/kconfig/lexer.l
index 6354c905b..240109f96 100644
--- a/scripts/kconfig/lexer.l
+++ b/scripts/kconfig/lexer.l
@@ -36,7 +36,7 @@ struct buffer {
 	YY_BUFFER_STATE state;
 };
 
-struct buffer *current_buf;
+static struct buffer *current_buf;
 
 static int last_ts, first_ts;
 
@@ -105,7 +105,7 @@ n	[A-Za-z0-9_-]
 "endchoice"		return T_ENDCHOICE;
 "endif"			return T_ENDIF;
 "endmenu"		return T_ENDMENU;
-"help"|"---help---"	return T_HELP;
+"help"			return T_HELP;
 "hex"			return T_HEX;
 "if"			return T_IF;
 "imply"			return T_IMPLY;
diff --git a/scripts/kconfig/menu.c b/scripts/kconfig/menu.c
index e436ba44c..a5fbd6ccc 100644
--- a/scripts/kconfig/menu.c
+++ b/scripts/kconfig/menu.c
@@ -65,7 +65,8 @@ void menu_add_entry(struct symbol *sym)
 struct menu *menu_add_menu(void)
 {
 	last_entry_ptr = &current_entry->list;
-	return current_menu = current_entry;
+	current_menu = current_entry;
+	return current_menu;
 }
 
 void menu_end_menu(void)
diff --git a/scripts/kconfig/parser.y b/scripts/kconfig/parser.y
index 708b6c4b1..190f1117f 100644
--- a/scripts/kconfig/parser.y
+++ b/scripts/kconfig/parser.y
@@ -119,20 +119,24 @@ mainmenu_stmt: T_MAINMENU T_WORD_QUOTE T_EOL
 
 stmt_list:
 	  /* empty */
-	| stmt_list common_stmt
+	| stmt_list assignment_stmt
 	| stmt_list choice_stmt
+	| stmt_list comment_stmt
+	| stmt_list config_stmt
+	| stmt_list if_stmt
 	| stmt_list menu_stmt
+	| stmt_list menuconfig_stmt
+	| stmt_list source_stmt
 	| stmt_list T_WORD error T_EOL	{ zconf_error("unknown statement \"%s\"", $2); }
 	| stmt_list error T_EOL		{ zconf_error("invalid statement"); }
 ;
 
-common_stmt:
-	  if_stmt
-	| comment_stmt
-	| config_stmt
-	| menuconfig_stmt
-	| source_stmt
-	| assignment_stmt
+stmt_list_in_choice:
+	  /* empty */
+	| stmt_list_in_choice comment_stmt
+	| stmt_list_in_choice config_stmt
+	| stmt_list_in_choice if_stmt_in_choice
+	| stmt_list_in_choice error T_EOL	{ zconf_error("invalid statement"); }
 ;
 
 /* config/menuconfig entry */
@@ -254,7 +258,7 @@ choice_end: end
 	}
 };
 
-choice_stmt: choice_entry choice_block choice_end
+choice_stmt: choice_entry stmt_list_in_choice choice_end
 ;
 
 choice_option_list:
@@ -305,11 +309,6 @@ default:
 	| T_DEF_BOOL		{ $$ = S_BOOLEAN; }
 	| T_DEF_TRISTATE	{ $$ = S_TRISTATE; }
 
-choice_block:
-	  /* empty */
-	| choice_block common_stmt
-;
-
 /* if entry */
 
 if_entry: T_IF expr T_EOL
@@ -331,6 +330,9 @@ if_end: end
 if_stmt: if_entry stmt_list if_end
 ;
 
+if_stmt_in_choice: if_entry stmt_list_in_choice if_end
+;
+
 /* menu entry */
 
 menu: T_MENU T_WORD_QUOTE T_EOL
diff --git a/scripts/kconfig/qconf.cc b/scripts/kconfig/qconf.cc
index c0ac8f7b5..863878532 100644
--- a/scripts/kconfig/qconf.cc
+++ b/scripts/kconfig/qconf.cc
@@ -4,34 +4,25 @@
  * Copyright (C) 2015 Boris Barbulovski <bbarbulovski@gmail.com>
  */
 
-#include <qglobal.h>
-
-#include <QMainWindow>
-#include <QList>
-#include <qtextbrowser.h>
 #include <QAction>
+#include <QApplication>
+#include <QCloseEvent>
+#include <QDebug>
+#include <QDesktopWidget>
 #include <QFileDialog>
+#include <QLabel>
+#include <QLayout>
+#include <QList>
 #include <QMenu>
-
-#include <qapplication.h>
-#include <qdesktopwidget.h>
-#include <qtoolbar.h>
-#include <qlayout.h>
-#include <qsplitter.h>
-#include <qlineedit.h>
-#include <qlabel.h>
-#include <qpushbutton.h>
-#include <qmenubar.h>
-#include <qmessagebox.h>
-#include <qregexp.h>
-#include <qevent.h>
+#include <QMenuBar>
+#include <QMessageBox>
+#include <QToolBar>
 
 #include <stdlib.h>
 
 #include "lkc.h"
 #include "qconf.h"
 
-#include "qconf.moc"
 #include "images.h"
 
 
@@ -40,11 +31,6 @@ static ConfigSettings *configSettings;
 
 QAction *ConfigMainWindow::saveAction;
 
-static inline QString qgettext(const char* str)
-{
-	return QString::fromLocal8Bit(str);
-}
-
 ConfigSettings::ConfigSettings()
 	: QSettings("kernel.org", "qconf")
 {
@@ -88,6 +74,13 @@ bool ConfigSettings::writeSizes(const QString& key, const QList<int>& value)
 	return true;
 }
 
+QIcon ConfigItem::symbolYesIcon;
+QIcon ConfigItem::symbolModIcon;
+QIcon ConfigItem::symbolNoIcon;
+QIcon ConfigItem::choiceYesIcon;
+QIcon ConfigItem::choiceNoIcon;
+QIcon ConfigItem::menuIcon;
+QIcon ConfigItem::menubackIcon;
 
 /*
  * set the new data
@@ -111,14 +104,14 @@ void ConfigItem::updateMenu(void)
 
 	list = listView();
 	if (goParent) {
-		setPixmap(promptColIdx, list->menuBackPix);
+		setIcon(promptColIdx, menubackIcon);
 		prompt = "..";
 		goto set_prompt;
 	}
 
 	sym = menu->sym;
 	prop = menu->prompt;
-	prompt = qgettext(menu_get_prompt(menu));
+	prompt = menu_get_prompt(menu);
 
 	if (prop) switch (prop->type) {
 	case P_MENU:
@@ -128,15 +121,15 @@ void ConfigItem::updateMenu(void)
 			 */
 			if (sym && list->rootEntry == menu)
 				break;
-			setPixmap(promptColIdx, list->menuPix);
+			setIcon(promptColIdx, menuIcon);
 		} else {
 			if (sym)
 				break;
-			setPixmap(promptColIdx, QIcon());
+			setIcon(promptColIdx, QIcon());
 		}
 		goto set_prompt;
 	case P_COMMENT:
-		setPixmap(promptColIdx, QIcon());
+		setIcon(promptColIdx, QIcon());
 		goto set_prompt;
 	default:
 		;
@@ -144,7 +137,7 @@ void ConfigItem::updateMenu(void)
 	if (!sym)
 		goto set_prompt;
 
-	setText(nameColIdx, QString::fromLocal8Bit(sym->name));
+	setText(nameColIdx, sym->name);
 
 	type = sym_get_type(sym);
 	switch (type) {
@@ -153,7 +146,7 @@ void ConfigItem::updateMenu(void)
 		char ch;
 
 		if (!sym_is_changeable(sym) && list->optMode == normalOpt) {
-			setPixmap(promptColIdx, QIcon());
+			setIcon(promptColIdx, QIcon());
 			setText(noColIdx, QString());
 			setText(modColIdx, QString());
 			setText(yesColIdx, QString());
@@ -163,22 +156,22 @@ void ConfigItem::updateMenu(void)
 		switch (expr) {
 		case yes:
 			if (sym_is_choice_value(sym) && type == S_BOOLEAN)
-				setPixmap(promptColIdx, list->choiceYesPix);
+				setIcon(promptColIdx, choiceYesIcon);
 			else
-				setPixmap(promptColIdx, list->symbolYesPix);
+				setIcon(promptColIdx, symbolYesIcon);
 			setText(yesColIdx, "Y");
 			ch = 'Y';
 			break;
 		case mod:
-			setPixmap(promptColIdx, list->symbolModPix);
+			setIcon(promptColIdx, symbolModIcon);
 			setText(modColIdx, "M");
 			ch = 'M';
 			break;
 		default:
 			if (sym_is_choice_value(sym) && type == S_BOOLEAN)
-				setPixmap(promptColIdx, list->choiceNoPix);
+				setIcon(promptColIdx, choiceNoIcon);
 			else
-				setPixmap(promptColIdx, list->symbolNoPix);
+				setIcon(promptColIdx, symbolNoIcon);
 			setText(noColIdx, "N");
 			ch = 'N';
 			break;
@@ -274,7 +267,7 @@ void ConfigLineEdit::show(ConfigItem* i)
 {
 	item = i;
 	if (sym_get_string_value(item->menu->sym))
-		setText(QString::fromLocal8Bit(sym_get_string_value(item->menu->sym)));
+		setText(sym_get_string_value(item->menu->sym));
 	else
 		setText(QString());
 	Parent::show();
@@ -289,7 +282,7 @@ void ConfigLineEdit::keyPressEvent(QKeyEvent* e)
 	case Qt::Key_Return:
 	case Qt::Key_Enter:
 		sym_set_string_value(item->menu->sym, text().toLatin1());
-		parent()->updateList(item);
+		parent()->updateList();
 		break;
 	default:
 		Parent::keyPressEvent(e);
@@ -303,9 +296,6 @@ void ConfigLineEdit::keyPressEvent(QKeyEvent* e)
 ConfigList::ConfigList(ConfigView* p, const char *name)
 	: Parent(p),
 	  updateAll(false),
-	  symbolYesPix(xpm_symbol_yes), symbolModPix(xpm_symbol_mod), symbolNoPix(xpm_symbol_no),
-	  choiceYesPix(xpm_choice_yes), choiceNoPix(xpm_choice_no),
-	  menuPix(xpm_menu), menuInvPix(xpm_menu_inv), menuBackPix(xpm_menuback), voidPix(xpm_void),
 	  showName(false), showRange(false), showData(false), mode(singleMode), optMode(normalOpt),
 	  rootEntry(0), headerPopup(0)
 {
@@ -316,10 +306,7 @@ ConfigList::ConfigList(ConfigView* p, const char *name)
 	setVerticalScrollMode(ScrollPerPixel);
 	setHorizontalScrollMode(ScrollPerPixel);
 
-	if (mode == symbolMode)
-		setHeaderLabels(QStringList() << "Item" << "Name" << "N" << "M" << "Y" << "Value");
-	else
-		setHeaderLabels(QStringList() << "Option" << "Name" << "N" << "M" << "Y" << "Value");
+	setHeaderLabels(QStringList() << "Option" << "Name" << "N" << "M" << "Y" << "Value");
 
 	connect(this, SIGNAL(itemSelectionChanged(void)),
 		SLOT(updateSelection(void)));
@@ -334,7 +321,7 @@ ConfigList::ConfigList(ConfigView* p, const char *name)
 		connect(configApp, SIGNAL(aboutToQuit()), SLOT(saveSettings()));
 	}
 
-	addColumn(promptColIdx);
+	showColumn(promptColIdx);
 
 	reinit();
 }
@@ -352,21 +339,33 @@ bool ConfigList::menuSkip(struct menu *menu)
 
 void ConfigList::reinit(void)
 {
-	removeColumn(dataColIdx);
-	removeColumn(yesColIdx);
-	removeColumn(modColIdx);
-	removeColumn(noColIdx);
-	removeColumn(nameColIdx);
+	hideColumn(dataColIdx);
+	hideColumn(yesColIdx);
+	hideColumn(modColIdx);
+	hideColumn(noColIdx);
+	hideColumn(nameColIdx);
 
 	if (showName)
-		addColumn(nameColIdx);
+		showColumn(nameColIdx);
 	if (showRange) {
-		addColumn(noColIdx);
-		addColumn(modColIdx);
-		addColumn(yesColIdx);
+		showColumn(noColIdx);
+		showColumn(modColIdx);
+		showColumn(yesColIdx);
 	}
 	if (showData)
-		addColumn(dataColIdx);
+		showColumn(dataColIdx);
+
+	updateListAll();
+}
+
+void ConfigList::setOptionMode(QAction *action)
+{
+	if (action == showNormalAction)
+		optMode = normalOpt;
+	else if (action == showAllAction)
+		optMode = allOpt;
+	else
+		optMode = promptOpt;
 
 	updateListAll();
 }
@@ -400,11 +399,6 @@ void ConfigList::updateSelection(void)
 	struct menu *menu;
 	enum prop_type type;
 
-	if (mode == symbolMode)
-		setHeaderLabels(QStringList() << "Item" << "Name" << "N" << "M" << "Y" << "Value");
-	else
-		setHeaderLabels(QStringList() << "Option" << "Name" << "N" << "M" << "Y" << "Value");
-
 	if (selectedItems().count() == 0)
 		return;
 
@@ -421,15 +415,15 @@ void ConfigList::updateSelection(void)
 		emit menuSelected(menu);
 }
 
-void ConfigList::updateList(ConfigItem* item)
+void ConfigList::updateList()
 {
 	ConfigItem* last = 0;
+	ConfigItem *item;
 
 	if (!rootEntry) {
 		if (mode != listMode)
 			goto update;
 		QTreeWidgetItemIterator it(this);
-		ConfigItem* item;
 
 		while (*it) {
 			item = (ConfigItem*)(*it);
@@ -451,7 +445,7 @@ void ConfigList::updateList(ConfigItem* item)
 	}
 	if ((mode == singleMode || (mode == symbolMode && !(rootEntry->flags & MENU_ROOT))) &&
 	    rootEntry->sym && rootEntry->prompt) {
-		item = last ? last->nextSibling() : firstChild();
+		item = last ? last->nextSibling() : nullptr;
 		if (!item)
 			item = new ConfigItem(this, last, rootEntry, true);
 		else
@@ -463,7 +457,7 @@ void ConfigList::updateList(ConfigItem* item)
 		return;
 	}
 update:
-	updateMenuList(this, rootEntry);
+	updateMenuList(rootEntry);
 	update();
 	resizeColumnToContents(0);
 }
@@ -488,7 +482,7 @@ void ConfigList::setValue(ConfigItem* item, tristate val)
 			return;
 		if (oldval == no && item->menu->list)
 			item->setExpanded(true);
-		parent()->updateList(item);
+		parent()->updateList();
 		break;
 	}
 }
@@ -522,7 +516,7 @@ void ConfigList::changeValue(ConfigItem* item)
 				item->setExpanded(true);
 		}
 		if (oldexpr != newexpr)
-			parent()->updateList(item);
+			parent()->updateList();
 		break;
 	case S_INT:
 	case S_HEX:
@@ -541,11 +535,11 @@ void ConfigList::setRootMenu(struct menu *menu)
 	type = menu && menu->prompt ? menu->prompt->type : P_UNKNOWN;
 	if (type != P_MENU)
 		return;
-	updateMenuList(this, 0);
+	updateMenuList(0);
 	rootEntry = menu;
 	updateListAll();
 	if (currentItem()) {
-		currentItem()->setSelected(hasFocus());
+		setSelected(currentItem(), hasFocus());
 		scrollToItem(currentItem());
 	}
 }
@@ -645,7 +639,7 @@ hide:
 	}
 }
 
-void ConfigList::updateMenuList(ConfigList *parent, struct menu* menu)
+void ConfigList::updateMenuList(struct menu *menu)
 {
 	struct menu* child;
 	ConfigItem* item;
@@ -654,19 +648,19 @@ void ConfigList::updateMenuList(ConfigList *parent, struct menu* menu)
 	enum prop_type type;
 
 	if (!menu) {
-		while (parent->topLevelItemCount() > 0)
+		while (topLevelItemCount() > 0)
 		{
-			delete parent->takeTopLevelItem(0);
+			delete takeTopLevelItem(0);
 		}
 
 		return;
 	}
 
-	last = (ConfigItem*)parent->topLevelItem(0);
+	last = (ConfigItem *)topLevelItem(0);
 	if (last && !last->goParent)
 		last = 0;
 	for (child = menu->list; child; child = child->next) {
-		item = last ? last->nextSibling() : (ConfigItem*)parent->topLevelItem(0);
+		item = last ? last->nextSibling() : (ConfigItem *)topLevelItem(0);
 		type = child->prompt ? child->prompt->type : P_UNKNOWN;
 
 		switch (mode) {
@@ -687,7 +681,7 @@ void ConfigList::updateMenuList(ConfigList *parent, struct menu* menu)
 			if (!child->sym && !child->list && !child->prompt)
 				continue;
 			if (!item || item->menu != child)
-				item = new ConfigItem(parent, last, child, visible);
+				item = new ConfigItem(this, last, child, visible);
 			else
 				item->testUpdateMenu(visible);
 
@@ -700,7 +694,7 @@ void ConfigList::updateMenuList(ConfigList *parent, struct menu* menu)
 		}
 hide:
 		if (item && item->menu == child) {
-			last = (ConfigItem*)parent->topLevelItem(0);
+			last = (ConfigItem *)topLevelItem(0);
 			if (last == item)
 				last = 0;
 			else while (last->nextSibling() != item)
@@ -791,7 +785,7 @@ void ConfigList::mouseReleaseEvent(QMouseEvent* e)
 	idx = header()->logicalIndexAt(x);
 	switch (idx) {
 	case promptColIdx:
-		icon = item->pixmap(promptColIdx);
+		icon = item->icon(promptColIdx);
 		if (!icon.isNull()) {
 			int off = header()->sectionPosition(0) + visualRect(indexAt(p)).x() + 4; // 4 is Hardcoded image offset. There might be a way to do it properly.
 			if (x >= off && x < off + icon.availableSizes().first().width()) {
@@ -802,7 +796,8 @@ void ConfigList::mouseReleaseEvent(QMouseEvent* e)
 					break;
 				ptype = menu->prompt ? menu->prompt->type : P_UNKNOWN;
 				if (ptype == P_MENU && rootEntry != menu &&
-				    mode != fullMode && mode != menuMode)
+				    mode != fullMode && mode != menuMode &&
+                                    mode != listMode)
 					emit menuSelected(menu);
 				else
 					changeValue(item);
@@ -852,7 +847,7 @@ void ConfigList::mouseDoubleClickEvent(QMouseEvent* e)
 	if (!menu)
 		goto skip;
 	ptype = menu->prompt ? menu->prompt->type : P_UNKNOWN;
-	if (ptype == P_MENU) {
+	if (ptype == P_MENU && mode != listMode) {
 		if (mode == singleMode)
 			emit itemSelected(menu);
 		else if (mode == symbolMode)
@@ -873,7 +868,7 @@ void ConfigList::focusInEvent(QFocusEvent *e)
 
 	ConfigItem* item = (ConfigItem *)currentItem();
 	if (item) {
-		item->setSelected(true);
+		setSelected(item, true);
 		menu = item->menu;
 	}
 	emit gotFocus(menu);
@@ -881,46 +876,46 @@ void ConfigList::focusInEvent(QFocusEvent *e)
 
 void ConfigList::contextMenuEvent(QContextMenuEvent *e)
 {
-	if (e->y() <= header()->geometry().bottom()) {
-		if (!headerPopup) {
-			QAction *action;
-
-			headerPopup = new QMenu(this);
-			action = new QAction("Show Name", this);
-			  action->setCheckable(true);
-			  connect(action, SIGNAL(toggled(bool)),
-				  parent(), SLOT(setShowName(bool)));
-			  connect(parent(), SIGNAL(showNameChanged(bool)),
-				  action, SLOT(setOn(bool)));
-			  action->setChecked(showName);
-			  headerPopup->addAction(action);
-			action = new QAction("Show Range", this);
-			  action->setCheckable(true);
-			  connect(action, SIGNAL(toggled(bool)),
-				  parent(), SLOT(setShowRange(bool)));
-			  connect(parent(), SIGNAL(showRangeChanged(bool)),
-				  action, SLOT(setOn(bool)));
-			  action->setChecked(showRange);
-			  headerPopup->addAction(action);
-			action = new QAction("Show Data", this);
-			  action->setCheckable(true);
-			  connect(action, SIGNAL(toggled(bool)),
-				  parent(), SLOT(setShowData(bool)));
-			  connect(parent(), SIGNAL(showDataChanged(bool)),
-				  action, SLOT(setOn(bool)));
-			  action->setChecked(showData);
-			  headerPopup->addAction(action);
-		}
-		headerPopup->exec(e->globalPos());
-		e->accept();
-	} else
-		e->ignore();
+	if (!headerPopup) {
+		QAction *action;
+
+		headerPopup = new QMenu(this);
+		action = new QAction("Show Name", this);
+		action->setCheckable(true);
+		connect(action, SIGNAL(toggled(bool)),
+			parent(), SLOT(setShowName(bool)));
+		connect(parent(), SIGNAL(showNameChanged(bool)),
+			action, SLOT(setChecked(bool)));
+		action->setChecked(showName);
+		headerPopup->addAction(action);
+
+		action = new QAction("Show Range", this);
+		action->setCheckable(true);
+		connect(action, SIGNAL(toggled(bool)),
+			parent(), SLOT(setShowRange(bool)));
+		connect(parent(), SIGNAL(showRangeChanged(bool)),
+			action, SLOT(setChecked(bool)));
+		action->setChecked(showRange);
+		headerPopup->addAction(action);
+
+		action = new QAction("Show Data", this);
+		action->setCheckable(true);
+		connect(action, SIGNAL(toggled(bool)),
+			parent(), SLOT(setShowData(bool)));
+		connect(parent(), SIGNAL(showDataChanged(bool)),
+			action, SLOT(setChecked(bool)));
+		action->setChecked(showData);
+		headerPopup->addAction(action);
+	}
+
+	headerPopup->exec(e->globalPos());
+	e->accept();
 }
 
 ConfigView*ConfigView::viewList;
-QAction *ConfigView::showNormalAction;
-QAction *ConfigView::showAllAction;
-QAction *ConfigView::showPromptAction;
+QAction *ConfigList::showNormalAction;
+QAction *ConfigList::showAllAction;
+QAction *ConfigList::showPromptAction;
 
 ConfigView::ConfigView(QWidget* parent, const char *name)
 	: Parent(parent)
@@ -951,18 +946,6 @@ ConfigView::~ConfigView(void)
 	}
 }
 
-void ConfigView::setOptionMode(QAction *act)
-{
-	if (act == showNormalAction)
-		list->optMode = normalOpt;
-	else if (act == showAllAction)
-		list->optMode = allOpt;
-	else
-		list->optMode = promptOpt;
-
-	list->updateListAll();
-}
-
 void ConfigView::setShowName(bool b)
 {
 	if (list->showName != b) {
@@ -1001,12 +984,12 @@ void ConfigList::setAllOpen(bool open)
 	}
 }
 
-void ConfigView::updateList(ConfigItem* item)
+void ConfigView::updateList()
 {
 	ConfigView* v;
 
 	for (v = viewList; v; v = v->nextView)
-		v->list->updateList(item);
+		v->list->updateList();
 }
 
 void ConfigView::updateListAll(void)
@@ -1021,7 +1004,7 @@ ConfigInfoView::ConfigInfoView(QWidget* parent, const char *name)
 	: Parent(parent), sym(0), _menu(0)
 {
 	setObjectName(name);
-
+	setOpenLinks(false);
 
 	if (!objectName().isEmpty()) {
 		configSettings->beginGroup(objectName());
@@ -1029,6 +1012,16 @@ ConfigInfoView::ConfigInfoView(QWidget* parent, const char *name)
 		configSettings->endGroup();
 		connect(configApp, SIGNAL(aboutToQuit()), SLOT(saveSettings()));
 	}
+
+	contextMenu = createStandardContextMenu();
+	QAction *action = new QAction("Show Debug Info", contextMenu);
+
+	action->setCheckable(true);
+	connect(action, SIGNAL(toggled(bool)), SLOT(setShowDebug(bool)));
+	connect(this, SIGNAL(showDebugChanged(bool)), action, SLOT(setChecked(bool)));
+	action->setChecked(showDebug());
+	contextMenu->addSeparator();
+	contextMenu->addAction(action);
 }
 
 void ConfigInfoView::saveSettings(void)
@@ -1083,108 +1076,114 @@ void ConfigInfoView::symbolInfo(void)
 void ConfigInfoView::menuInfo(void)
 {
 	struct symbol* sym;
-	QString head, debug, help;
+	QString info;
+	QTextStream stream(&info);
 
 	sym = _menu->sym;
 	if (sym) {
 		if (_menu->prompt) {
-			head += "<big><b>";
-			head += print_filter(_menu->prompt->text);
-			head += "</b></big>";
+			stream << "<big><b>";
+			stream << print_filter(_menu->prompt->text);
+			stream << "</b></big>";
 			if (sym->name) {
-				head += " (";
+				stream << " (";
 				if (showDebug())
-					head += QString().sprintf("<a href=\"s%p\">", sym);
-				head += print_filter(sym->name);
+					stream << "<a href=\"s" << sym->name << "\">";
+				stream << print_filter(sym->name);
 				if (showDebug())
-					head += "</a>";
-				head += ")";
+					stream << "</a>";
+				stream << ")";
 			}
 		} else if (sym->name) {
-			head += "<big><b>";
+			stream << "<big><b>";
 			if (showDebug())
-				head += QString().sprintf("<a href=\"s%p\">", sym);
-			head += print_filter(sym->name);
+				stream << "<a href=\"s" << sym->name << "\">";
+			stream << print_filter(sym->name);
 			if (showDebug())
-				head += "</a>";
-			head += "</b></big>";
+				stream << "</a>";
+			stream << "</b></big>";
 		}
-		head += "<br><br>";
+		stream << "<br><br>";
 
 		if (showDebug())
-			debug = debug_info(sym);
+			stream << debug_info(sym);
 
-		struct gstr help_gstr = str_new();
-		menu_get_ext_help(_menu, &help_gstr);
-		help = print_filter(str_get(&help_gstr));
-		str_free(&help_gstr);
 	} else if (_menu->prompt) {
-		head += "<big><b>";
-		head += print_filter(_menu->prompt->text);
-		head += "</b></big><br><br>";
+		stream << "<big><b>";
+		stream << print_filter(_menu->prompt->text);
+		stream << "</b></big><br><br>";
 		if (showDebug()) {
 			if (_menu->prompt->visible.expr) {
-				debug += "&nbsp;&nbsp;dep: ";
-				expr_print(_menu->prompt->visible.expr, expr_print_help, &debug, E_NONE);
-				debug += "<br><br>";
+				stream << "&nbsp;&nbsp;dep: ";
+				expr_print(_menu->prompt->visible.expr,
+					   expr_print_help, &stream, E_NONE);
+				stream << "<br><br>";
 			}
 		}
 	}
 	if (showDebug())
-		debug += QString().sprintf("defined at %s:%d<br><br>", _menu->file->name, _menu->lineno);
+		stream << "defined at " << _menu->file->name << ":"
+		       << _menu->lineno << "<br><br>";
 
-	setText(head + debug + help);
+	setText(info);
 }
 
 QString ConfigInfoView::debug_info(struct symbol *sym)
 {
 	QString debug;
+	QTextStream stream(&debug);
 
-	debug += "type: ";
-	debug += print_filter(sym_type_name(sym->type));
+	stream << "type: ";
+	stream << print_filter(sym_type_name(sym->type));
 	if (sym_is_choice(sym))
-		debug += " (choice)";
+		stream << " (choice)";
 	debug += "<br>";
 	if (sym->rev_dep.expr) {
-		debug += "reverse dep: ";
-		expr_print(sym->rev_dep.expr, expr_print_help, &debug, E_NONE);
-		debug += "<br>";
+		stream << "reverse dep: ";
+		expr_print(sym->rev_dep.expr, expr_print_help, &stream, E_NONE);
+		stream << "<br>";
 	}
 	for (struct property *prop = sym->prop; prop; prop = prop->next) {
 		switch (prop->type) {
 		case P_PROMPT:
 		case P_MENU:
-			debug += QString().sprintf("prompt: <a href=\"m%p\">", prop->menu);
-			debug += print_filter(prop->text);
-			debug += "</a><br>";
+			stream << "prompt: <a href=\"m" << sym->name << "\">";
+			stream << print_filter(prop->text);
+			stream << "</a><br>";
 			break;
 		case P_DEFAULT:
 		case P_SELECT:
 		case P_RANGE:
-			debug += prop_get_type_name(prop->type);
-			debug += ": ";
-			expr_print(prop->expr, expr_print_help, &debug, E_NONE);
-			debug += "<br>";
+		case P_COMMENT:
+		case P_IMPLY:
+		case P_SYMBOL:
+			stream << prop_get_type_name(prop->type);
+			stream << ": ";
+			expr_print(prop->expr, expr_print_help,
+				   &stream, E_NONE);
+			stream << "<br>";
 			break;
 		case P_CHOICE:
 			if (sym_is_choice(sym)) {
-				debug += "choice: ";
-				expr_print(prop->expr, expr_print_help, &debug, E_NONE);
-				debug += "<br>";
+				stream << "choice: ";
+				expr_print(prop->expr, expr_print_help,
+					   &stream, E_NONE);
+				stream << "<br>";
 			}
 			break;
 		default:
-			debug += "unknown property: ";
-			debug += prop_get_type_name(prop->type);
-			debug += "<br>";
+			stream << "unknown property: ";
+			stream << prop_get_type_name(prop->type);
+			stream << "<br>";
 		}
 		if (prop->visible.expr) {
-			debug += "&nbsp;&nbsp;&nbsp;&nbsp;dep: ";
-			expr_print(prop->visible.expr, expr_print_help, &debug, E_NONE);
-			debug += "<br>";
+			stream << "&nbsp;&nbsp;&nbsp;&nbsp;dep: ";
+			expr_print(prop->visible.expr, expr_print_help,
+				   &stream, E_NONE);
+			stream << "<br>";
 		}
 	}
-	debug += "<br>";
+	stream << "<br>";
 
 	return debug;
 }
@@ -1222,46 +1221,81 @@ QString ConfigInfoView::print_filter(const QString &str)
 
 void ConfigInfoView::expr_print_help(void *data, struct symbol *sym, const char *str)
 {
-	QString* text = reinterpret_cast<QString*>(data);
-	QString str2 = print_filter(str);
+	QTextStream *stream = reinterpret_cast<QTextStream *>(data);
 
 	if (sym && sym->name && !(sym->flags & SYMBOL_CONST)) {
-		*text += QString().sprintf("<a href=\"s%p\">", sym);
-		*text += str2;
-		*text += "</a>";
-	} else
-		*text += str2;
+		*stream << "<a href=\"s" << sym->name << "\">";
+		*stream << print_filter(str);
+		*stream << "</a>";
+	} else {
+		*stream << print_filter(str);
+	}
 }
 
-QMenu* ConfigInfoView::createStandardContextMenu(const QPoint & pos)
+void ConfigInfoView::clicked(const QUrl &url)
 {
-	QMenu* popup = Parent::createStandardContextMenu(pos);
-	QAction* action = new QAction("Show Debug Info", popup);
+	QByteArray str = url.toEncoded();
+	const std::size_t count = str.size();
+	char *data = new char[count + 1];
+	struct symbol **result;
+	struct menu *m = NULL;
 
-	action->setCheckable(true);
-	connect(action, SIGNAL(toggled(bool)), SLOT(setShowDebug(bool)));
-	connect(this, SIGNAL(showDebugChanged(bool)), action, SLOT(setOn(bool)));
-	action->setChecked(showDebug());
-	popup->addSeparator();
-	popup->addAction(action);
-	return popup;
+	if (count < 1) {
+		delete[] data;
+		return;
+	}
+
+	memcpy(data, str.constData(), count);
+	data[count] = '\0';
+
+	/* Seek for exact match */
+	data[0] = '^';
+	strcat(data, "$");
+	result = sym_re_search(data);
+	if (!result) {
+		delete[] data;
+		return;
+	}
+
+	sym = *result;
+
+	/* Seek for the menu which holds the symbol */
+	for (struct property *prop = sym->prop; prop; prop = prop->next) {
+		    if (prop->type != P_PROMPT && prop->type != P_MENU)
+			    continue;
+		    m = prop->menu;
+		    break;
+	}
+
+	if (!m) {
+		/* Symbol is not visible as a menu */
+		symbolInfo();
+		emit showDebugChanged(true);
+	} else {
+		emit menuSelected(m);
+	}
+
+	free(result);
+	delete data;
 }
 
-void ConfigInfoView::contextMenuEvent(QContextMenuEvent *e)
+void ConfigInfoView::contextMenuEvent(QContextMenuEvent *event)
 {
-	Parent::contextMenuEvent(e);
+	contextMenu->popup(event->globalPos());
+	event->accept();
 }
 
-ConfigSearchWindow::ConfigSearchWindow(ConfigMainWindow* parent, const char *name)
+ConfigSearchWindow::ConfigSearchWindow(ConfigMainWindow *parent)
 	: Parent(parent), result(NULL)
 {
-	setObjectName(name);
+	setObjectName("search");
 	setWindowTitle("Search Config");
 
 	QVBoxLayout* layout1 = new QVBoxLayout(this);
 	layout1->setContentsMargins(11, 11, 11, 11);
 	layout1->setSpacing(6);
-	QHBoxLayout* layout2 = new QHBoxLayout(0);
+
+	QHBoxLayout* layout2 = new QHBoxLayout();
 	layout2->setContentsMargins(0, 0, 0, 0);
 	layout2->setSpacing(6);
 	layout2->addWidget(new QLabel("Find:", this));
@@ -1276,9 +1310,9 @@ ConfigSearchWindow::ConfigSearchWindow(ConfigMainWindow* parent, const char *nam
 
 	split = new QSplitter(this);
 	split->setOrientation(Qt::Vertical);
-	list = new ConfigView(split, name);
+	list = new ConfigView(split, "search");
 	list->list->mode = listMode;
-	info = new ConfigInfoView(split, name);
+	info = new ConfigInfoView(split, "search");
 	connect(list->list, SIGNAL(menuChanged(struct menu *)),
 		info, SLOT(setInfo(struct menu *)));
 	connect(list->list, SIGNAL(menuChanged(struct menu *)),
@@ -1286,25 +1320,23 @@ ConfigSearchWindow::ConfigSearchWindow(ConfigMainWindow* parent, const char *nam
 
 	layout1->addWidget(split);
 
-	if (name) {
-		QVariant x, y;
-		int width, height;
-		bool ok;
+	QVariant x, y;
+	int width, height;
+	bool ok;
 
-		configSettings->beginGroup(name);
-		width = configSettings->value("/window width", parent->width() / 2).toInt();
-		height = configSettings->value("/window height", parent->height() / 2).toInt();
-		resize(width, height);
-		x = configSettings->value("/window x");
-		y = configSettings->value("/window y");
-		if ((x.isValid())&&(y.isValid()))
-			move(x.toInt(), y.toInt());
-		QList<int> sizes = configSettings->readSizes("/split", &ok);
-		if (ok)
-			split->setSizes(sizes);
-		configSettings->endGroup();
-		connect(configApp, SIGNAL(aboutToQuit()), SLOT(saveSettings()));
-	}
+	configSettings->beginGroup("search");
+	width = configSettings->value("/window width", parent->width() / 2).toInt();
+	height = configSettings->value("/window height", parent->height() / 2).toInt();
+	resize(width, height);
+	x = configSettings->value("/window x");
+	y = configSettings->value("/window y");
+	if (x.isValid() && y.isValid())
+		move(x.toInt(), y.toInt());
+	QList<int> sizes = configSettings->readSizes("/split", &ok);
+	if (ok)
+		split->setSizes(sizes);
+	configSettings->endGroup();
+	connect(configApp, SIGNAL(aboutToQuit()), SLOT(saveSettings()));
 }
 
 void ConfigSearchWindow::saveSettings(void)
@@ -1346,7 +1378,6 @@ void ConfigSearchWindow::search(void)
 ConfigMainWindow::ConfigMainWindow(void)
 	: searchWindow(0)
 {
-	QMenuBar* menu;
 	bool ok = true;
 	QVariant x, y;
 	int width, height;
@@ -1367,6 +1398,15 @@ ConfigMainWindow::ConfigMainWindow(void)
 	if ((x.isValid())&&(y.isValid()))
 		move(x.toInt(), y.toInt());
 
+	// set up icons
+	ConfigItem::symbolYesIcon = QIcon(QPixmap(xpm_symbol_yes));
+	ConfigItem::symbolModIcon = QIcon(QPixmap(xpm_symbol_mod));
+	ConfigItem::symbolNoIcon = QIcon(QPixmap(xpm_symbol_no));
+	ConfigItem::choiceYesIcon = QIcon(QPixmap(xpm_choice_yes));
+	ConfigItem::choiceNoIcon = QIcon(QPixmap(xpm_choice_no));
+	ConfigItem::menuIcon = QIcon(QPixmap(xpm_menu));
+	ConfigItem::menubackIcon = QIcon(QPixmap(xpm_menuback));
+
 	QWidget *widget = new QWidget(this);
 	QVBoxLayout *layout = new QVBoxLayout(widget);
 	setCentralWidget(widget);
@@ -1397,23 +1437,23 @@ ConfigMainWindow::ConfigMainWindow(void)
 	setTabOrder(configList, helpText);
 	configList->setFocus();
 
-	menu = menuBar();
-	toolBar = new QToolBar("Tools", this);
-	addToolBar(toolBar);
-
 	backAction = new QAction(QPixmap(xpm_back), "Back", this);
-	  connect(backAction, SIGNAL(triggered(bool)), SLOT(goBack()));
-	  backAction->setEnabled(false);
+	connect(backAction, SIGNAL(triggered(bool)), SLOT(goBack()));
+
 	QAction *quitAction = new QAction("&Quit", this);
 	quitAction->setShortcut(Qt::CTRL + Qt::Key_Q);
-	  connect(quitAction, SIGNAL(triggered(bool)), SLOT(close()));
+	connect(quitAction, SIGNAL(triggered(bool)), SLOT(close()));
+
 	QAction *loadAction = new QAction(QPixmap(xpm_load), "&Load", this);
 	loadAction->setShortcut(Qt::CTRL + Qt::Key_L);
-	  connect(loadAction, SIGNAL(triggered(bool)), SLOT(loadConfig()));
+	connect(loadAction, SIGNAL(triggered(bool)), SLOT(loadConfig()));
+
 	saveAction = new QAction(QPixmap(xpm_save), "&Save", this);
 	saveAction->setShortcut(Qt::CTRL + Qt::Key_S);
-	  connect(saveAction, SIGNAL(triggered(bool)), SLOT(saveConfig()));
+	connect(saveAction, SIGNAL(triggered(bool)), SLOT(saveConfig()));
+
 	conf_set_changed_callback(conf_changed);
+
 	// Set saveAction's initial state
 	conf_changed();
 	configname = xstrdup(conf_get_configname());
@@ -1446,17 +1486,17 @@ ConfigMainWindow::ConfigMainWindow(void)
 
 	QActionGroup *optGroup = new QActionGroup(this);
 	optGroup->setExclusive(true);
-	connect(optGroup, SIGNAL(triggered(QAction*)), configView,
+	connect(optGroup, SIGNAL(triggered(QAction*)), configList,
 		SLOT(setOptionMode(QAction *)));
-	connect(optGroup, SIGNAL(triggered(QAction *)), menuView,
+	connect(optGroup, SIGNAL(triggered(QAction *)), menuList,
 		SLOT(setOptionMode(QAction *)));
 
-	configView->showNormalAction = new QAction("Show Normal Options", optGroup);
-	configView->showAllAction = new QAction("Show All Options", optGroup);
-	configView->showPromptAction = new QAction("Show Prompt Options", optGroup);
-	configView->showNormalAction->setCheckable(true);
-	configView->showAllAction->setCheckable(true);
-	configView->showPromptAction->setCheckable(true);
+	ConfigList::showNormalAction = new QAction("Show Normal Options", optGroup);
+	ConfigList::showNormalAction->setCheckable(true);
+	ConfigList::showAllAction = new QAction("Show All Options", optGroup);
+	ConfigList::showAllAction->setCheckable(true);
+	ConfigList::showPromptAction = new QAction("Show Prompt Options", optGroup);
+	ConfigList::showPromptAction->setCheckable(true);
 
 	QAction *showDebugAction = new QAction("Show Debug Info", this);
 	  showDebugAction->setCheckable(true);
@@ -1469,6 +1509,7 @@ ConfigMainWindow::ConfigMainWindow(void)
 	  connect(showAboutAction, SIGNAL(triggered(bool)), SLOT(showAbout()));
 
 	// init tool bar
+	QToolBar *toolBar = addToolBar("Tools");
 	toolBar->addAction(backAction);
 	toolBar->addSeparator();
 	toolBar->addAction(loadAction);
@@ -1478,33 +1519,35 @@ ConfigMainWindow::ConfigMainWindow(void)
 	toolBar->addAction(splitViewAction);
 	toolBar->addAction(fullViewAction);
 
-	// create config menu
-	QMenu* config = menu->addMenu("&File");
-	config->addAction(loadAction);
-	config->addAction(saveAction);
-	config->addAction(saveAsAction);
-	config->addSeparator();
-	config->addAction(quitAction);
+	// create file menu
+	QMenu *menu = menuBar()->addMenu("&File");
+	menu->addAction(loadAction);
+	menu->addAction(saveAction);
+	menu->addAction(saveAsAction);
+	menu->addSeparator();
+	menu->addAction(quitAction);
 
 	// create edit menu
-	QMenu* editMenu = menu->addMenu("&Edit");
-	editMenu->addAction(searchAction);
+	menu = menuBar()->addMenu("&Edit");
+	menu->addAction(searchAction);
 
 	// create options menu
-	QMenu* optionMenu = menu->addMenu("&Option");
-	optionMenu->addAction(showNameAction);
-	optionMenu->addAction(showRangeAction);
-	optionMenu->addAction(showDataAction);
-	optionMenu->addSeparator();
-	optionMenu->addActions(optGroup->actions());
-	optionMenu->addSeparator();
-	optionMenu->addAction(showDebugAction);
+	menu = menuBar()->addMenu("&Option");
+	menu->addAction(showNameAction);
+	menu->addAction(showRangeAction);
+	menu->addAction(showDataAction);
+	menu->addSeparator();
+	menu->addActions(optGroup->actions());
+	menu->addSeparator();
+	menu->addAction(showDebugAction);
 
 	// create help menu
-	menu->addSeparator();
-	QMenu* helpMenu = menu->addMenu("&Help");
-	helpMenu->addAction(showIntroAction);
-	helpMenu->addAction(showAboutAction);
+	menu = menuBar()->addMenu("&Help");
+	menu->addAction(showIntroAction);
+	menu->addAction(showAboutAction);
+
+	connect (helpText, SIGNAL (anchorClicked (const QUrl &)),
+		 helpText, SLOT (clicked (const QUrl &)) );
 
 	connect(configList, SIGNAL(menuChanged(struct menu *)),
 		helpText, SLOT(setInfo(struct menu *)));
@@ -1604,28 +1647,18 @@ void ConfigMainWindow::saveConfigAs(void)
 void ConfigMainWindow::searchConfig(void)
 {
 	if (!searchWindow)
-		searchWindow = new ConfigSearchWindow(this, "search");
+		searchWindow = new ConfigSearchWindow(this);
 	searchWindow->show();
 }
 
 void ConfigMainWindow::changeItens(struct menu *menu)
 {
 	configList->setRootMenu(menu);
-
-	if (configList->rootEntry->parent == &rootmenu)
-		backAction->setEnabled(false);
-	else
-		backAction->setEnabled(true);
 }
 
 void ConfigMainWindow::changeMenu(struct menu *menu)
 {
 	menuList->setRootMenu(menu);
-
-	if (menuList->rootEntry->parent == &rootmenu)
-		backAction->setEnabled(false);
-	else
-		backAction->setEnabled(true);
 }
 
 void ConfigMainWindow::setMenuLink(struct menu *menu)
@@ -1645,22 +1678,26 @@ void ConfigMainWindow::setMenuLink(struct menu *menu)
 			return;
 		list->setRootMenu(parent);
 		break;
-	case symbolMode:
+	case menuMode:
 		if (menu->flags & MENU_ROOT) {
-			configList->setRootMenu(menu);
+			menuList->setRootMenu(menu);
 			configList->clearSelection();
-			list = menuList;
-		} else {
 			list = configList;
+		} else {
 			parent = menu_get_parent_menu(menu->parent);
 			if (!parent)
 				return;
-			item = menuList->findConfigItem(parent);
+
+			/* Select the config view */
+			item = configList->findConfigItem(parent);
 			if (item) {
-				item->setSelected(true);
-				menuList->scrollToItem(item);
+				configList->setSelected(item, true);
+				configList->scrollToItem(item);
 			}
-			list->setRootMenu(parent);
+
+			menuList->setRootMenu(parent);
+			menuList->clearSelection();
+			list = menuList;
 		}
 		break;
 	case fullMode:
@@ -1673,9 +1710,10 @@ void ConfigMainWindow::setMenuLink(struct menu *menu)
 	if (list) {
 		item = list->findConfigItem(menu);
 		if (item) {
-			item->setSelected(true);
+			list->setSelected(item, true);
 			list->scrollToItem(item);
 			list->setFocus();
+			helpText->setInfo(menu);
 		}
 	}
 }
@@ -1688,25 +1726,10 @@ void ConfigMainWindow::listFocusChanged(void)
 
 void ConfigMainWindow::goBack(void)
 {
-	ConfigItem* item, *oldSelection;
-
-	configList->setParentMenu();
 	if (configList->rootEntry == &rootmenu)
-		backAction->setEnabled(false);
-
-	if (menuList->selectedItems().count() == 0)
 		return;
 
-	item = (ConfigItem*)menuList->selectedItems().first();
-	oldSelection = item;
-	while (item) {
-		if (item->menu == configList->rootEntry) {
-			oldSelection->setSelected(false);
-			item->setSelected(true);
-			break;
-		}
-		item = (ConfigItem*)item->parent();
-	}
+	configList->setParentMenu();
 }
 
 void ConfigMainWindow::showSingleView(void)
@@ -1718,6 +1741,8 @@ void ConfigMainWindow::showSingleView(void)
 	fullViewAction->setEnabled(true);
 	fullViewAction->setChecked(false);
 
+	backAction->setEnabled(true);
+
 	menuView->hide();
 	menuList->setRootMenu(0);
 	configList->mode = singleMode;
@@ -1737,6 +1762,8 @@ void ConfigMainWindow::showSplitView(void)
 	fullViewAction->setEnabled(true);
 	fullViewAction->setChecked(false);
 
+	backAction->setEnabled(false);
+
 	configList->mode = menuMode;
 	if (configList->rootEntry == &rootmenu)
 		configList->updateListAll();
@@ -1760,6 +1787,8 @@ void ConfigMainWindow::showFullView(void)
 	fullViewAction->setEnabled(false);
 	fullViewAction->setChecked(true);
 
+	backAction->setEnabled(false);
+
 	menuView->hide();
 	menuList->setRootMenu(0);
 	configList->mode = fullMode;
diff --git a/scripts/kconfig/qconf.h b/scripts/kconfig/qconf.h
index c879d79ce..f97376a81 100644
--- a/scripts/kconfig/qconf.h
+++ b/scripts/kconfig/qconf.h
@@ -3,17 +3,17 @@
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
  */
 
-#include <QTextBrowser>
-#include <QTreeWidget>
-#include <QMainWindow>
+#include <QCheckBox>
+#include <QDialog>
 #include <QHeaderView>
-#include <qsettings.h>
+#include <QLineEdit>
+#include <QMainWindow>
 #include <QPushButton>
 #include <QSettings>
-#include <QLineEdit>
 #include <QSplitter>
-#include <QCheckBox>
-#include <QDialog>
+#include <QTextBrowser>
+#include <QTreeWidget>
+
 #include "expr.h"
 
 class ConfigView;
@@ -30,7 +30,7 @@ public:
 };
 
 enum colIdx {
-	promptColIdx, nameColIdx, noColIdx, modColIdx, yesColIdx, dataColIdx, colNr
+	promptColIdx, nameColIdx, noColIdx, modColIdx, yesColIdx, dataColIdx
 };
 enum listMode {
 	singleMode, menuMode, symbolMode, fullMode, listMode
@@ -45,11 +45,17 @@ class ConfigList : public QTreeWidget {
 public:
 	ConfigList(ConfigView* p, const char *name = 0);
 	void reinit(void);
+	ConfigItem* findConfigItem(struct menu *);
 	ConfigView* parent(void) const
 	{
 		return (ConfigView*)Parent::parent();
 	}
-	ConfigItem* findConfigItem(struct menu *);
+	void setSelected(QTreeWidgetItem *item, bool enable) {
+		for (int i = 0; i < selectedItems().size(); i++)
+			selectedItems().at(i)->setSelected(false);
+
+		item->setSelected(enable);
+	}
 
 protected:
 	void keyPressEvent(QKeyEvent *e);
@@ -63,11 +69,13 @@ protected:
 public slots:
 	void setRootMenu(struct menu *menu);
 
-	void updateList(ConfigItem *item);
+	void updateList();
 	void setValue(ConfigItem* item, tristate val);
 	void changeValue(ConfigItem* item);
 	void updateSelection(void);
 	void saveSettings(void);
+	void setOptionMode(QAction *action);
+
 signals:
 	void menuChanged(struct menu *menu);
 	void menuSelected(struct menu *menu);
@@ -79,39 +87,19 @@ public:
 	void updateListAll(void)
 	{
 		updateAll = true;
-		updateList(NULL);
+		updateList();
 		updateAll = false;
 	}
-	ConfigList* listView()
-	{
-		return this;
-	}
-	ConfigItem* firstChild() const
-	{
-		return (ConfigItem *)children().first();
-	}
-	void addColumn(colIdx idx)
-	{
-		showColumn(idx);
-	}
-	void removeColumn(colIdx idx)
-	{
-		hideColumn(idx);
-	}
 	void setAllOpen(bool open);
 	void setParentMenu(void);
 
 	bool menuSkip(struct menu *);
 
 	void updateMenuList(ConfigItem *parent, struct menu*);
-	void updateMenuList(ConfigList *parent, struct menu*);
+	void updateMenuList(struct menu *menu);
 
 	bool updateAll;
 
-	QPixmap symbolYesPix, symbolModPix, symbolNoPix;
-	QPixmap choiceYesPix, choiceNoPix;
-	QPixmap menuPix, menuInvPix, menuBackPix, voidPix;
-
 	bool showName, showRange, showData;
 	enum listMode mode;
 	enum optionMode optMode;
@@ -119,6 +107,8 @@ public:
 	QPalette disabledColorGroup;
 	QPalette inactivedColorGroup;
 	QMenu* headerPopup;
+
+	static QAction *showNormalAction, *showAllAction, *showPromptAction;
 };
 
 class ConfigItem : public QTreeWidgetItem {
@@ -166,28 +156,16 @@ public:
 
 		return ret;
 	}
-	void setText(colIdx idx, const QString& text)
-	{
-		Parent::setText(idx, text);
-	}
-	QString text(colIdx idx) const
-	{
-		return Parent::text(idx);
-	}
-	void setPixmap(colIdx idx, const QIcon &icon)
-	{
-		Parent::setIcon(idx, icon);
-	}
-	const QIcon pixmap(colIdx idx) const
-	{
-		return icon(idx);
-	}
 	// TODO: Implement paintCell
 
 	ConfigItem* nextItem;
 	struct menu *menu;
 	bool visible;
 	bool goParent;
+
+	static QIcon symbolYesIcon, symbolModIcon, symbolNoIcon;
+	static QIcon choiceYesIcon, choiceNoIcon;
+	static QIcon menuIcon, menubackIcon;
 };
 
 class ConfigLineEdit : public QLineEdit {
@@ -212,7 +190,7 @@ class ConfigView : public QWidget {
 public:
 	ConfigView(QWidget* parent, const char *name = 0);
 	~ConfigView(void);
-	static void updateList(ConfigItem* item);
+	static void updateList();
 	static void updateListAll(void);
 
 	bool showName(void) const { return list->showName; }
@@ -222,7 +200,6 @@ public slots:
 	void setShowName(bool);
 	void setShowRange(bool);
 	void setShowData(bool);
-	void setOptionMode(QAction *);
 signals:
 	void showNameChanged(bool);
 	void showRangeChanged(bool);
@@ -233,15 +210,12 @@ public:
 
 	static ConfigView* viewList;
 	ConfigView* nextView;
-
-	static QAction *showNormalAction;
-	static QAction *showAllAction;
-	static QAction *showPromptAction;
 };
 
 class ConfigInfoView : public QTextBrowser {
 	Q_OBJECT
 	typedef class QTextBrowser Parent;
+	QMenu *contextMenu;
 public:
 	ConfigInfoView(QWidget* parent, const char *name = 0);
 	bool showDebug(void) const { return _showDebug; }
@@ -250,6 +224,7 @@ public slots:
 	void setInfo(struct menu *menu);
 	void saveSettings(void);
 	void setShowDebug(bool);
+	void clicked (const QUrl &url);
 
 signals:
 	void showDebugChanged(bool);
@@ -261,8 +236,7 @@ protected:
 	QString debug_info(struct symbol *sym);
 	static QString print_filter(const QString &str);
 	static void expr_print_help(void *data, struct symbol *sym, const char *str);
-	QMenu *createStandardContextMenu(const QPoint & pos);
-	void contextMenuEvent(QContextMenuEvent *e);
+	void contextMenuEvent(QContextMenuEvent *event);
 
 	struct symbol *sym;
 	struct menu *_menu;
@@ -273,7 +247,7 @@ class ConfigSearchWindow : public QDialog {
 	Q_OBJECT
 	typedef class QDialog Parent;
 public:
-	ConfigSearchWindow(ConfigMainWindow* parent, const char *name = 0);
+	ConfigSearchWindow(ConfigMainWindow *parent);
 
 public slots:
 	void saveSettings(void);
@@ -323,7 +297,6 @@ protected:
 	ConfigView *configView;
 	ConfigList *configList;
 	ConfigInfoView *helpText;
-	QToolBar *toolBar;
 	QAction *backAction;
 	QAction *singleViewAction;
 	QAction *splitViewAction;
diff --git a/scripts/kconfig/streamline_config.pl b/scripts/kconfig/streamline_config.pl
index e2f8504f5..19857d18d 100755
--- a/scripts/kconfig/streamline_config.pl
+++ b/scripts/kconfig/streamline_config.pl
@@ -143,6 +143,7 @@ my %depends;
 my %selects;
 my %prompts;
 my %objects;
+my %config2kfile;
 my $var;
 my $iflevel = 0;
 my @ifdeps;
@@ -201,6 +202,7 @@ sub read_kconfig {
 	if (/^\s*(menu)?config\s+(\S+)\s*$/) {
 	    $state = "NEW";
 	    $config = $2;
+	    $config2kfile{"CONFIG_$config"} = $kconfig;
 
 	    # Add depends for 'if' nesting
 	    for (my $i = 0; $i < $iflevel; $i++) {
@@ -591,6 +593,20 @@ while ($repeat) {
 }
 
 my %setconfigs;
+my @preserved_kconfigs = split(/:/,$ENV{LMC_KEEP});
+
+sub in_preserved_kconfigs {
+    my $kconfig = $config2kfile{$_[0]};
+    if (!defined($kconfig)) {
+        return 0;
+    }
+    foreach my $excl (@preserved_kconfigs) {
+        if($kconfig =~ /^$excl/) {
+            return 1;
+        }
+    }
+    return 0;
+}
 
 # Finally, read the .config file and turn off any module enabled that
 # we could not find a reason to keep enabled.
@@ -644,6 +660,11 @@ foreach my $line (@config_file) {
     }
 
     if (/^(CONFIG.*)=(m|y)/) {
+        if (in_preserved_kconfigs($1)) {
+            dprint "Preserve config $1";
+            print;
+            next;
+        }
 	if (defined($configs{$1})) {
 	    if ($localyesconfig) {
 	        $setconfigs{$1} = 'y';
diff --git a/scripts/kconfig/symbol.c b/scripts/kconfig/symbol.c
index 3dc81397d..ffa3ec65c 100644
--- a/scripts/kconfig/symbol.c
+++ b/scripts/kconfig/symbol.c
@@ -15,15 +15,21 @@ struct symbol symbol_yes = {
 	.name = "y",
 	.curr = { "y", yes },
 	.flags = SYMBOL_CONST|SYMBOL_VALID,
-}, symbol_mod = {
+};
+
+struct symbol symbol_mod = {
 	.name = "m",
 	.curr = { "m", mod },
 	.flags = SYMBOL_CONST|SYMBOL_VALID,
-}, symbol_no = {
+};
+
+struct symbol symbol_no = {
 	.name = "n",
 	.curr = { "n", no },
 	.flags = SYMBOL_CONST|SYMBOL_VALID,
-}, symbol_empty = {
+};
+
+static struct symbol symbol_empty = {
 	.name = "",
 	.curr = { "", no },
 	.flags = SYMBOL_VALID,
@@ -31,7 +37,7 @@ struct symbol symbol_yes = {
 
 struct symbol *sym_defconfig_list;
 struct symbol *modules_sym;
-tristate modules_val;
+static tristate modules_val;
 
 enum symbol_type sym_get_type(struct symbol *sym)
 {
@@ -831,7 +837,7 @@ struct symbol *sym_lookup(const char *name, int flags)
 	memset(symbol, 0, sizeof(*symbol));
 	symbol->name = new_name;
 	symbol->type = S_UNKNOWN;
-	symbol->flags |= flags;
+	symbol->flags = flags;
 
 	symbol->next = symbol_hash[hash];
 	symbol_hash[hash] = symbol;
diff --git a/scripts/kconfig/tests/rand_nested_choice/Kconfig b/scripts/kconfig/tests/rand_nested_choice/Kconfig
deleted file mode 100644
index 8350de7f7..000000000
--- a/scripts/kconfig/tests/rand_nested_choice/Kconfig
+++ /dev/null
@@ -1,35 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-
-choice
-	prompt "choice"
-
-config A
-	bool "A"
-
-config B
-	bool "B"
-
-if B
-choice
-	prompt "sub choice"
-
-config C
-	bool "C"
-
-config D
-	bool "D"
-
-if D
-choice
-	prompt "subsub choice"
-
-config E
-	bool "E"
-
-endchoice
-endif # D
-
-endchoice
-endif # B
-
-endchoice
diff --git a/scripts/kconfig/tests/rand_nested_choice/__init__.py b/scripts/kconfig/tests/rand_nested_choice/__init__.py
deleted file mode 100644
index 9e4b2db53..000000000
--- a/scripts/kconfig/tests/rand_nested_choice/__init__.py
+++ /dev/null
@@ -1,17 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-"""
-Set random values recursively in nested choices.
-
-Kconfig can create a choice-in-choice structure by using 'if' statement.
-randconfig should correctly set random choice values.
-
-Related Linux commit: 3b9a19e08960e5cdad5253998637653e592a3c29
-"""
-
-
-def test(conf):
-    for i in range(20):
-        assert conf.randconfig() == 0
-        assert (conf.config_contains('expected_stdout0') or
-                conf.config_contains('expected_stdout1') or
-                conf.config_contains('expected_stdout2'))
diff --git a/scripts/kconfig/tests/rand_nested_choice/expected_stdout0 b/scripts/kconfig/tests/rand_nested_choice/expected_stdout0
deleted file mode 100644
index 05450f3d4..000000000
--- a/scripts/kconfig/tests/rand_nested_choice/expected_stdout0
+++ /dev/null
@@ -1,2 +0,0 @@
-CONFIG_A=y
-# CONFIG_B is not set
diff --git a/scripts/kconfig/tests/rand_nested_choice/expected_stdout1 b/scripts/kconfig/tests/rand_nested_choice/expected_stdout1
deleted file mode 100644
index 37ab29584..000000000
--- a/scripts/kconfig/tests/rand_nested_choice/expected_stdout1
+++ /dev/null
@@ -1,4 +0,0 @@
-# CONFIG_A is not set
-CONFIG_B=y
-CONFIG_C=y
-# CONFIG_D is not set
diff --git a/scripts/kconfig/tests/rand_nested_choice/expected_stdout2 b/scripts/kconfig/tests/rand_nested_choice/expected_stdout2
deleted file mode 100644
index 849ff47e9..000000000
--- a/scripts/kconfig/tests/rand_nested_choice/expected_stdout2
+++ /dev/null
@@ -1,5 +0,0 @@
-# CONFIG_A is not set
-CONFIG_B=y
-# CONFIG_C is not set
-CONFIG_D=y
-CONFIG_E=y
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
