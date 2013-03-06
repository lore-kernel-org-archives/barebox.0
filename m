Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo4.mail-out.ovh.net ([46.105.57.129]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjq-0000ZI-3i
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:35:08 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1B9E0104E787
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:21 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:48 +0100
Message-Id: <1362562189-17783-19-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 19/20] app: curses: add form example
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 apps/Kconfig              |    4 ++
 apps/Makefile             |    1 +
 apps/form_curses/Makefile |   11 +++++
 apps/form_curses/main.c   |  113 +++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 129 insertions(+)
 create mode 100644 apps/form_curses/Makefile
 create mode 100644 apps/form_curses/main.c

diff --git a/apps/Kconfig b/apps/Kconfig
index 532b6fb..208978b 100644
--- a/apps/Kconfig
+++ b/apps/Kconfig
@@ -53,4 +53,8 @@ config APP_TEST_CURSES_MENU
 	bool "test curses menu"
 	depends on APP_LIB_MENU
 
+config APP_TEST_CURSES_FORM
+	bool "test curses form"
+	depends on APP_LIB_FORM
+
 endif
diff --git a/apps/Makefile b/apps/Makefile
index a26541a..f7696f0 100644
--- a/apps/Makefile
+++ b/apps/Makefile
@@ -9,6 +9,7 @@ apps-$(CONFIG_APP_EXAMPLE) += example
 apps-$(CONFIG_APP_TEST_CURSES) += test_curses
 apps-$(CONFIG_APP_TEST_CURSES_MENU) += menu_curses
 apps-$(CONFIG_APP_TEST_CURSES_PANEL) += panel_curses
+apps-$(CONFIG_APP_TEST_CURSES_FORM) += form_curses
 
 $(obj)/application: $(apps-lds) $(apps-y)
 
diff --git a/apps/form_curses/Makefile b/apps/form_curses/Makefile
new file mode 100644
index 0000000..9166c9d
--- /dev/null
+++ b/apps/form_curses/Makefile
@@ -0,0 +1,11 @@
+targets := form_curses.map
+
+# Make sure files are removed during clean
+extra-y       += form_curses.map
+
+app-y += main.o
+app-final-y = form_curses
+
+OBJCOPYFLAGS_form_curses.app = -O binary
+LDFLAGS_apps	:= -Map $(obj)/form_curses.map
+LDFLAGS_apps	+= -static --gc-sections
diff --git a/apps/form_curses/main.c b/apps/form_curses/main.c
new file mode 100644
index 0000000..d737a20
--- /dev/null
+++ b/apps/form_curses/main.c
@@ -0,0 +1,113 @@
+#include <form.h>
+#include <string.h>
+
+void print_in_middle(WINDOW *win, int starty, int startx, int width, char *string, chtype color);
+
+int main(int argc, char **argv)
+{
+	FIELD *field[3];
+	FORM  *my_form;
+	WINDOW *my_form_win;
+	int ch, rows, cols;
+	
+	/* Initialize curses */
+	initscr();
+	start_color();
+	cbreak();
+	noecho();
+	keypad(stdscr, TRUE);
+
+	/* Initialize few color pairs */
+   	init_pair(1, COLOR_RED, COLOR_BLACK);
+
+	/* Initialize the fields */
+	field[0] = new_field(1, 10, 6, 1, 0, 0);
+	field[1] = new_field(1, 10, 8, 1, 0, 0);
+	field[2] = NULL;
+
+	/* Set field options */
+	set_field_back(field[0], A_UNDERLINE);
+	field_opts_off(field[0], O_AUTOSKIP); /* Don't go to next field when this */
+					      /* Field is filled up 		*/
+	set_field_back(field[1], A_UNDERLINE); 
+	field_opts_off(field[1], O_AUTOSKIP);
+	
+	/* Create the form and post it */
+	my_form = new_form(field);
+	
+	/* Calculate the area required for the form */
+	scale_form(my_form, &rows, &cols);
+
+	/* Create the window to be associated with the form */
+        my_form_win = newwin(rows + 4, cols + 4, 4, 4);
+        keypad(my_form_win, TRUE);
+
+	/* Set main window and sub window */
+        set_form_win(my_form, my_form_win);
+        set_form_sub(my_form, derwin(my_form_win, rows, cols, 2, 2));
+
+	/* Print a border around the main window and print a title */
+        box(my_form_win, 0, 0);
+	print_in_middle(my_form_win, 1, 0, cols + 4, "My Form", COLOR_PAIR(1));
+	
+	post_form(my_form);
+	wrefresh(my_form_win);
+
+	mvprintw(LINES - 2, 0, "Use UP, DOWN arrow keys to switch between fields");
+	refresh();
+
+	/* Loop through to get user requests */
+	while((ch = wgetch(my_form_win)) != KEY_F(1))
+	{	switch(ch)
+		{	case KEY_DOWN:
+				/* Go to next field */
+				form_driver(my_form, REQ_NEXT_FIELD);
+				/* Go to the end of the present buffer */
+				/* Leaves nicely at the last character */
+				form_driver(my_form, REQ_END_LINE);
+				break;
+			case KEY_UP:
+				/* Go to previous field */
+				form_driver(my_form, REQ_PREV_FIELD);
+				form_driver(my_form, REQ_END_LINE);
+				break;
+			default:
+				/* If this is a normal character, it gets */
+				/* Printed				  */	
+				form_driver(my_form, ch);
+				break;
+		}
+	}
+
+	/* Un post form and free the memory */
+	unpost_form(my_form);
+	free_form(my_form);
+	free_field(field[0]);
+	free_field(field[1]); 
+
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
