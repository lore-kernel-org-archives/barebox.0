Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjo-0000Yf-BV
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:34:33 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 45FF3104E782
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:19 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:43 +0100
Message-Id: <1362562189-17783-14-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 14/20] app: add test curses
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 apps/Kconfig              |    4 ++
 apps/Makefile             |    3 +-
 apps/test_curses/Makefile |   11 +++
 apps/test_curses/main.c   |  172 +++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 188 insertions(+), 2 deletions(-)
 create mode 100644 apps/test_curses/Makefile
 create mode 100644 apps/test_curses/main.c

diff --git a/apps/Kconfig b/apps/Kconfig
index a025955..7c0b79e 100644
--- a/apps/Kconfig
+++ b/apps/Kconfig
@@ -41,4 +41,8 @@ endmenu
 config APP_EXAMPLE
 	bool "example"
 
+config APP_TEST_CURSES
+	bool "test curses"
+	select APP_LIB_CURSES
+
 endif
diff --git a/apps/Makefile b/apps/Makefile
index cce547e..3a222d3 100644
--- a/apps/Makefile
+++ b/apps/Makefile
@@ -6,8 +6,7 @@ APP_CPPFLAGS += $(APP_CPPFLAGS-y)
 export APP_CPPFLAGS
 
 apps-$(CONFIG_APP_EXAMPLE) += example
-
-apps-$(CONFIG_APP_EXAMPLE) += example
+apps-$(CONFIG_APP_TEST_CURSES) += test_curses
 
 $(obj)/application: $(apps-lds) $(apps-y)
 
diff --git a/apps/test_curses/Makefile b/apps/test_curses/Makefile
new file mode 100644
index 0000000..94207a1
--- /dev/null
+++ b/apps/test_curses/Makefile
@@ -0,0 +1,11 @@
+targets := test_curses.map
+
+# Make sure files are removed during clean
+extra-y       += test_curses.map
+
+app-y += main.o
+app-final-y = test_curses
+
+OBJCOPYFLAGS_test_curses.app = -O binary
+LDFLAGS_apps	:= -Map $(obj)/test_curses.map
+LDFLAGS_apps	+= -static --gc-sections
diff --git a/apps/test_curses/main.c b/apps/test_curses/main.c
new file mode 100644
index 0000000..54f08f2
--- /dev/null
+++ b/apps/test_curses/main.c
@@ -0,0 +1,172 @@
+/*
+ * This file is part of the bayou project.
+ *
+ * Copyright (C) 2008 Advanced Micro Devices, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
+ */
+
+#include <string.h>
+#include <stdlib.h>
+#include <curses.h>
+
+#define SCREEN_Y LINES
+#define SCREEN_X COLS
+
+#define ARRAY_SIZE(arr)                (sizeof(arr) / sizeof((arr)[0]))
+
+static int menu_width = 0;
+static int m_entries = 4;
+static unsigned int selected = 0;
+static WINDOW *menuwin, *status;
+char *i_name[] = {"test0", "test1", "test2", "test3" };
+
+char *get_name(int i)
+{
+	return i_name[i];
+}
+
+void create_menu(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(i_name); i++) {
+		char *name = get_name(i);
+
+		if (strlen(name) > menu_width)
+			menu_width = strlen(name);
+	}
+
+	menu_width += 4;
+
+	if (menu_width < 30)
+		menu_width = 30;
+
+	menuwin = newwin(m_entries + 3, menu_width,
+			 (SCREEN_Y - (m_entries + 3)) / 2,
+			 (SCREEN_X - menu_width) / 2);
+
+}
+
+void draw_menu(void)
+{
+	int i;
+
+	wattrset(menuwin, COLOR_PAIR(3));
+	wbkgd(menuwin, COLOR_PAIR(3));
+	wclear(menuwin);
+	wborder(menuwin, ACS_VLINE, ACS_VLINE, ACS_HLINE, ACS_HLINE,
+		ACS_ULCORNER, ACS_URCORNER, ACS_LLCORNER, ACS_LRCORNER);
+
+	wattrset(menuwin, COLOR_PAIR(4) | A_BOLD);
+	mvwprintw(menuwin, 0, (menu_width - 17) / 2, " Chooser ");
+
+	wattrset(menuwin, COLOR_PAIR(3));
+
+	for (i = 0; i < m_entries; i++) {
+		char *name = get_name(i);
+		int col = (menu_width - (2 + strlen(name))) / 2;
+
+		if (i == selected)
+			wattrset(menuwin, COLOR_PAIR(5) | A_BOLD);
+		else
+			wattrset(menuwin, COLOR_PAIR(3));
+
+		mvwprintw(menuwin, 2 + i, col, name);
+	}
+
+
+	wclear(status);
+
+	mvwprintw(status, 0, (SCREEN_X - 10) / 2, "test");
+
+	wrefresh(menuwin);
+	wrefresh(status);
+}
+
+#if 0
+#define debug(fmt, arg...) debug(fmt, ##arg)
+#else
+#define debug(fmt, arg...)
+#endif
+
+void loop(void)
+{
+	int key;
+
+	while (1) {
+		key = getch();
+
+		debug("loop key = 0x%x\n", key);
+
+		if (key == ERR)
+			continue;
+
+		debug("loop key = 0x%x\n", key);
+
+		if (key == 'q') {
+			clear();
+			refresh();
+			endwin();
+			exit(0);
+		}
+		else if (key == KEY_DOWN)
+			selected = (selected + 1) % m_entries;
+		else if (key == KEY_UP)
+			selected = (selected - 1) % m_entries;
+		else if (key == KEY_ENTER) {
+			clear();
+			refresh();
+			endwin();
+			exit(0);
+		} else
+			continue;
+
+		draw_menu();
+	}
+}
+
+int main(int argc, char **argv)
+{
+	initscr();
+
+	start_color();			/* Start color 			*/
+	clear();
+	keypad(stdscr, TRUE);
+	curs_set(0);
+
+	init_pair(1, COLOR_WHITE, COLOR_RED);
+	init_pair(2, COLOR_BLACK, COLOR_WHITE);
+	init_pair(3, COLOR_BLACK, COLOR_WHITE);
+	init_pair(4, COLOR_CYAN, COLOR_WHITE);
+	init_pair(5, COLOR_WHITE, COLOR_RED);
+
+	wattrset(stdscr, COLOR_PAIR(1));
+	wbkgd(stdscr, COLOR_PAIR(1));
+	wclear(stdscr);
+
+	status = newwin(1, SCREEN_X, SCREEN_Y - 1, 0);
+	wattrset(status, COLOR_PAIR(2));
+	wbkgd(status, COLOR_PAIR(2));
+	wclear(status);
+
+	refresh();
+
+	create_menu();
+	draw_menu();
+
+	loop();
+
+	return EXIT_SUCCESS;
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
