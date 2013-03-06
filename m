Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjp-0000ZF-QV
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:35:02 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D94E8104E775
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:20 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:46 +0100
Message-Id: <1362562189-17783-17-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 17/20] app: curses: add menu example
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 apps/Kconfig              |    4 ++
 apps/Makefile             |    1 +
 apps/menu_curses/Makefile |   11 ++++
 apps/menu_curses/main.c   |  127 +++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 143 insertions(+)
 create mode 100644 apps/menu_curses/Makefile
 create mode 100644 apps/menu_curses/main.c

diff --git a/apps/Kconfig b/apps/Kconfig
index 7c0b79e..e47f0c2 100644
--- a/apps/Kconfig
+++ b/apps/Kconfig
@@ -45,4 +45,8 @@ config APP_TEST_CURSES
 	bool "test curses"
 	select APP_LIB_CURSES
 
+config APP_TEST_CURSES_MENU
+	bool "test curses menu"
+	depends on APP_LIB_MENU
+
 endif
diff --git a/apps/Makefile b/apps/Makefile
index 3a222d3..47938ec 100644
--- a/apps/Makefile
+++ b/apps/Makefile
@@ -7,6 +7,7 @@ export APP_CPPFLAGS
 
 apps-$(CONFIG_APP_EXAMPLE) += example
 apps-$(CONFIG_APP_TEST_CURSES) += test_curses
+apps-$(CONFIG_APP_TEST_CURSES_MENU) += menu_curses
 
 $(obj)/application: $(apps-lds) $(apps-y)
 
diff --git a/apps/menu_curses/Makefile b/apps/menu_curses/Makefile
new file mode 100644
index 0000000..32c1a04
--- /dev/null
+++ b/apps/menu_curses/Makefile
@@ -0,0 +1,11 @@
+targets := menu_curses.map
+
+# Make sure files are removed during clean
+extra-y       += menu_curses.map
+
+app-y += main.o
+app-final-y = menu_curses
+
+OBJCOPYFLAGS_menu_curses.app = -O binary
+LDFLAGS_apps	:= -Map $(obj)/menu_curses.map
+LDFLAGS_apps	+= -static --gc-sections
diff --git a/apps/menu_curses/main.c b/apps/menu_curses/main.c
new file mode 100644
index 0000000..5b62caa
--- /dev/null
+++ b/apps/menu_curses/main.c
@@ -0,0 +1,127 @@
+#include <string.h>
+#include <malloc.h>
+#include <curses.h>
+#include <menu.h>
+
+#define ARRAY_SIZE(a) (sizeof(a) / sizeof(a[0]))
+#define CTRLD 	4
+
+char *choices[] = {
+			"Choice 1",
+			"Choice 2",
+			"Choice 3",
+			"Choice 4",
+			"Choice 5",
+			"Choice 6",
+			"Choice 7",
+			"Choice 8",
+			"Choice 9",
+			"Choice 10",
+			"Exit",
+			(char *)NULL,
+			};
+void print_in_middle(WINDOW *win, int starty, int startx, int width, char *string, chtype color);
+
+int main(int argc, char **argv)
+{	ITEM **my_items;
+	int c;
+	MENU *my_menu;
+	WINDOW *my_menu_win;
+	int n_choices, i;
+
+	/* Initialize curses */
+	initscr();
+	start_color();
+	cbreak();
+	noecho();
+	keypad(stdscr, TRUE);
+	init_pair(1, COLOR_RED, COLOR_BLACK);
+	init_pair(2, COLOR_CYAN, COLOR_BLACK);
+
+	/* Create items */
+	n_choices = ARRAY_SIZE(choices);
+	my_items = (ITEM **)calloc(n_choices, sizeof(ITEM *));
+	for(i = 0; i < n_choices; ++i)
+		my_items[i] = new_item(choices[i], choices[i]);
+
+	/* Crate menu */
+	my_menu = new_menu((ITEM **)my_items);
+
+	/* Create the window to be associated with the menu */
+	my_menu_win = newwin(10, 40, 4, 4);
+	keypad(my_menu_win, TRUE);
+
+	/* Set main window and sub window */
+	set_menu_win(my_menu, my_menu_win);
+	set_menu_sub(my_menu, derwin(my_menu_win, 6, 38, 3, 1));
+	set_menu_format(my_menu, 5, 1);
+
+	/* Set menu mark to the string " * " */
+	set_menu_mark(my_menu, " * ");
+
+	/* Print a border around the main window and print a title */
+	box(my_menu_win, 0, 0);
+	print_in_middle(my_menu_win, 1, 0, 40, "My Menu", COLOR_PAIR(1));
+	mvwaddch(my_menu_win, 2, 0, ACS_LTEE);
+	mvwhline(my_menu_win, 2, 1, ACS_HLINE, 38);
+	mvwaddch(my_menu_win, 2, 39, ACS_RTEE);
+
+	/* Post the menu */
+	post_menu(my_menu);
+	wrefresh(my_menu_win);
+
+	attron(COLOR_PAIR(2));
+	mvprintw(LINES - 2, 0, "Use PageUp and PageDown to scoll down or up a page of items");
+	mvprintw(LINES - 1, 0, "Arrow Keys to navigate (F1 to Exit)");
+	attroff(COLOR_PAIR(2));
+	refresh();
+
+	while((c = wgetch(my_menu_win)) != KEY_F(1)) {
+		switch(c) {
+		case KEY_DOWN:
+			menu_driver(my_menu, REQ_DOWN_ITEM);
+			break;
+		case KEY_UP:
+			menu_driver(my_menu, REQ_UP_ITEM);
+			break;
+		case KEY_NPAGE:
+			menu_driver(my_menu, REQ_SCR_DPAGE);
+			break;
+		case KEY_PPAGE:
+			menu_driver(my_menu, REQ_SCR_UPAGE);
+			break;
+		}
+		wrefresh(my_menu_win);
+	}
+
+	/* Unpost and free all the memory taken up */
+	unpost_menu(my_menu);
+	free_menu(my_menu);
+	for(i = 0; i < n_choices; ++i)
+		free_item(my_items[i]);
+	endwin();
+	return 0;
+}
+
+void print_in_middle(WINDOW *win, int starty, int startx, int width, char *string, chtype color)
+{	int length, x, y;
+	float temp;
+
+	if(win == NULL)
+		win = stdscr;
+	getyx(win, y, x);
+	if(startx != 0)
+		x = startx;
+	if(starty != 0)
+		y = starty;
+	if(width == 0)
+		width = 80;
+
+	length = strlen(string);
+	temp = (width - length)/ 2;
+	x = startx + (int)temp;
+	wattron(win, color);
+	mvwprintw(win, y, x, "%s", string);
+	wattroff(win, color);
+	refresh();
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
