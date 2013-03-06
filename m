Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo4.mail-out.ovh.net ([178.33.251.8]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjq-0000ZH-D8
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:35:17 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 01595104E78B
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:21 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:47 +0100
Message-Id: <1362562189-17783-18-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 18/20] app: curses: add panel example
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 apps/Kconfig               |    4 ++
 apps/Makefile              |    1 +
 apps/panel_curses/Makefile |   11 +++++
 apps/panel_curses/main.c   |  118 ++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 134 insertions(+)
 create mode 100644 apps/panel_curses/Makefile
 create mode 100644 apps/panel_curses/main.c

diff --git a/apps/Kconfig b/apps/Kconfig
index e47f0c2..532b6fb 100644
--- a/apps/Kconfig
+++ b/apps/Kconfig
@@ -45,6 +45,10 @@ config APP_TEST_CURSES
 	bool "test curses"
 	select APP_LIB_CURSES
 
+config APP_TEST_CURSES_PANEL
+	bool "test curses panel"
+	depends on APP_LIB_PANEL
+
 config APP_TEST_CURSES_MENU
 	bool "test curses menu"
 	depends on APP_LIB_MENU
diff --git a/apps/Makefile b/apps/Makefile
index 47938ec..a26541a 100644
--- a/apps/Makefile
+++ b/apps/Makefile
@@ -8,6 +8,7 @@ export APP_CPPFLAGS
 apps-$(CONFIG_APP_EXAMPLE) += example
 apps-$(CONFIG_APP_TEST_CURSES) += test_curses
 apps-$(CONFIG_APP_TEST_CURSES_MENU) += menu_curses
+apps-$(CONFIG_APP_TEST_CURSES_PANEL) += panel_curses
 
 $(obj)/application: $(apps-lds) $(apps-y)
 
diff --git a/apps/panel_curses/Makefile b/apps/panel_curses/Makefile
new file mode 100644
index 0000000..b52c808
--- /dev/null
+++ b/apps/panel_curses/Makefile
@@ -0,0 +1,11 @@
+targets := panel_curses.map
+
+# Make sure files are removed during clean
+extra-y       += panel_curses.map
+
+app-y += main.o
+app-final-y = panel_curses
+
+OBJCOPYFLAGS_panel_curses.app = -O binary
+LDFLAGS_apps	:= -Map $(obj)/panel_curses.map
+LDFLAGS_apps	+= -static --gc-sections
diff --git a/apps/panel_curses/main.c b/apps/panel_curses/main.c
new file mode 100644
index 0000000..4be732f
--- /dev/null
+++ b/apps/panel_curses/main.c
@@ -0,0 +1,118 @@
+#include <panel.h>
+#include <string.h>
+
+#define NLINES 10
+#define NCOLS 40
+
+void init_wins(WINDOW **wins, int n);
+void win_show(WINDOW *win, char *label, int label_color);
+void print_in_middle(WINDOW *win, int starty, int startx, int width, char *string, chtype color);
+
+int main(int argc, char **argv)
+{	WINDOW *my_wins[3];
+	PANEL  *my_panels[3];
+	PANEL  *top;
+	int ch;
+
+	/* Initialize curses */
+	initscr();
+	start_color();
+	cbreak();
+	noecho();
+	keypad(stdscr, TRUE);
+
+	/* Initialize all the colors */
+	init_pair(1, COLOR_RED, COLOR_BLACK);
+	init_pair(2, COLOR_GREEN, COLOR_BLACK);
+	init_pair(3, COLOR_BLUE, COLOR_BLACK);
+	init_pair(4, COLOR_CYAN, COLOR_BLACK);
+
+	init_wins(my_wins, 3);
+	
+	/* Attach a panel to each window */ 	/* Order is bottom up */
+	my_panels[0] = new_panel(my_wins[0]); 	/* Push 0, order: stdscr-0 */
+	my_panels[1] = new_panel(my_wins[1]); 	/* Push 1, order: stdscr-0-1 */
+	my_panels[2] = new_panel(my_wins[2]); 	/* Push 2, order: stdscr-0-1-2 */
+
+	/* Set up the user pointers to the next panel */
+	set_panel_userptr(my_panels[0], my_panels[1]);
+	set_panel_userptr(my_panels[1], my_panels[2]);
+	set_panel_userptr(my_panels[2], my_panels[0]);
+
+	/* Update the stacking order. 2nd panel will be on top */
+	update_panels();
+
+	/* Show it on the screen */
+	attron(COLOR_PAIR(4));
+	mvprintw(LINES - 2, 0, "Use tab to browse through the windows (F1 to Exit)");
+	attroff(COLOR_PAIR(4));
+	doupdate();
+
+	top = my_panels[2];
+	while((ch = getch()) != KEY_F(1))
+	{	switch(ch)
+		{	case 9:
+				top = (PANEL *)panel_userptr(top);
+				top_panel(top);
+				break;
+		}
+		update_panels();
+		doupdate();
+	}
+	endwin();
+	return 0;
+}
+
+/* Put all the windows */
+void init_wins(WINDOW **wins, int n)
+{	int x, y, i;
+	char label[80];
+
+	y = 2;
+	x = 10;
+	for(i = 0; i < n; ++i)
+	{	wins[i] = newwin(NLINES, NCOLS, y, x);
+		sprintf(label, "Window Number %d", i + 1);
+		win_show(wins[i], label, i + 1);
+		y += 3;
+		x += 7;
+	}
+}
+
+/* Show the window with a border and a label */
+void win_show(WINDOW *win, char *label, int label_color)
+{	int startx, starty, height, width;
+
+	getbegyx(win, starty, startx);
+	getmaxyx(win, height, width);
+
+	box(win, 0, 0);
+	mvwaddch(win, 2, 0, ACS_LTEE); 
+	mvwhline(win, 2, 1, ACS_HLINE, width - 2); 
+	mvwaddch(win, 2, width - 1, ACS_RTEE); 
+	
+	print_in_middle(win, 1, 0, width, label, COLOR_PAIR(label_color));
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
