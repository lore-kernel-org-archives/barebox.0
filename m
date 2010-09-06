Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oscwi-00009F-9i
	for barebox@lists.infradead.org; Mon, 06 Sep 2010 14:45:22 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  6 Sep 2010 16:44:17 +0200
Message-Id: <1283784257-20828-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1283774869-6086-2-git-send-email-plagnioj@jcrosoft.com>
References: <1283774869-6086-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2 v2] menu: add auto select support
To: barebox@lists.infradead.org

this will allow to automaticaly run an entry if the user do no choice

this is usefull for boot menu as example

with menu -s -m boot -A 3 -d "Auto Boot in"

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
V2:

	fix cursor and key pressed when cancel the auto select

Best Regards,
J.
 commands/menu.c |   25 ++++++++++++++++++++++---
 common/menu.c   |   55 ++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/menu.h  |    4 ++++
 3 files changed, 80 insertions(+), 4 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index 7b8e8be..2c9ddc3 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -48,11 +48,12 @@ struct cmd_menu {
 	char		*command;
 	char		*submenu;
 	int		num;
+	int		auto_select;
 #endif
 };
 
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
-#define OPTS		"m:earlc:d:RsSn:u:"
+#define OPTS		"m:earlc:d:RsSn:u:A:"
 #define	is_entry(x)	((x)->entry)
 #else
 #define OPTS		"m:ls"
@@ -212,7 +213,7 @@ static int do_menu_select(struct cmd_menu *cm)
 #endif
 
 /*
- * menu -s -m <menu>
+ * menu -s -m <menu> [-A <auto select delay>] [-d <display]
  */
 static int do_menu_show(struct cmd_menu *cm)
 {
@@ -223,6 +224,18 @@ static int do_menu_show(struct cmd_menu *cm)
 	else
 		m = menu_get_by_name("boot");
 
+	if (!m)
+		return -EINVAL;
+
+	if (cm->auto_select != -EINVAL) {
+		menu_set_auto_select(m, cm->auto_select);
+
+		if (m->auto_display)
+			free(m->auto_display);
+
+		m->auto_display = strdup(cm->description);
+	}
+
 	return menu_show(m);
 }
 
@@ -300,6 +313,7 @@ static int do_menu(struct command *cmdtp, int argc, char *argv[])
 	memset(&cm, 0, sizeof(struct cmd_menu));
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
 	cm.num = -EINVAL;
+	cm.auto_select = -EINVAL;
 #endif
 
 	cm.action = action_show;
@@ -343,6 +357,9 @@ static int do_menu(struct command *cmdtp, int argc, char *argv[])
 		case 'n':
 			cm.num = simple_strtoul(optarg, NULL, 10);
 			break;
+		case 'A':
+			cm.auto_select = simple_strtoul(optarg, NULL, 10);
+			break;
 #endif
 		default:
 			return 1;
@@ -398,7 +415,9 @@ static const __maybe_unused char cmd_menu_help[] =
 "How to\n"
 "\n"
 "Show menu\n"
-"  menu -s -m <menu>\n"
+"  (-A auto select delay)\n"
+"  (-d auto select description)\n"
+"  menu -s -m <menu> [-A delay] [-d auto_display]\n"
 "\n"
 "List menu\n"
 "  menu -l\n"
diff --git a/common/menu.c b/common/menu.c
index 7620d9e..4307a07 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -29,6 +29,7 @@
 #include <xfuncs.h>
 #include <errno.h>
 #include <readkey.h>
+#include <clock.h>
 #include <linux/err.h>
 
 static LIST_HEAD(menus);
@@ -49,6 +50,7 @@ void menu_free(struct menu *m)
 		return;
 	free(m->name);
 	free(m->display);
+	free(m->auto_display);
 
 	list_for_each_entry_safe(me, tmp, &m->entries, list)
 		menu_entry_free(me);
@@ -187,6 +189,16 @@ int menu_set_selected(struct menu *m, int num)
 	return 0;
 }
 
+int menu_set_auto_select(struct menu *m, int delay)
+{
+	if (!m)
+		return -EINVAL;
+
+	m->auto_select = delay;
+
+	return 0;
+}
+
 static void print_menu(struct menu *m)
 {
 	struct menu_entry *me;
@@ -217,14 +229,55 @@ int menu_show(struct menu *m)
 {
 	int ch;
 	int escape = 0;
+	int countdown;
+	int auto_display_len = 16;
+	uint64_t start, second;
 
 	if(!m || list_empty(&m->entries))
 		return -EINVAL;
 
 	print_menu(m);
 
+	countdown = m->auto_select;
+	if (m->auto_select >= 0) {
+		gotoXY(m->nb_entries + 2, 3);
+		if (!m->auto_display) {
+			printf("Auto Select in");
+		} else {
+			auto_display_len = strlen(m->auto_display);
+			printf(m->auto_display);
+		}
+		printf(" %2d", countdown--);
+	}
+
+	start = get_time_ns();
+	second = start;
+	while (m->auto_select > 0 && !is_timeout(start, m->auto_select * SECOND)) {
+		if (tstc()) {
+			m->auto_select = -1;
+			break;
+		}
+
+		if (is_timeout(second, SECOND)) {
+			printf("\b\b%2d", countdown--);
+			second += SECOND;
+		}
+	}
+
+	gotoXY(m->nb_entries + 2, 3);
+	for (start = 0; start < auto_display_len + 4; start++)
+		putchar(' ');
+
+	gotoXY(m->selected->num + 1, 3);
+
 	do {
-		ch = getc();
+		if (m->auto_select >= 0)
+			ch = '\n';
+		else
+			ch = getc();
+
+		m->auto_select = -1;
+
 		switch(ch) {
 		case 0x1b:
 			escape = 1;
diff --git a/include/menu.h b/include/menu.h
index 22bfc23..cc9d0af 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -42,6 +42,9 @@ struct menu {
 	char *name;
 	char *display;
 
+	int auto_select;
+	char *auto_display;
+
 	struct list_head list;
 	struct list_head entries;
 
@@ -74,6 +77,7 @@ struct menu* menu_get_by_name(char *name);
 int menu_show(struct menu *m);
 int menu_set_selected_entry(struct menu *m, struct menu_entry* me);
 int menu_set_selected(struct menu *m, int num);
+int menu_set_auto_select(struct menu *m, int delay);
 struct menu* menu_get_menus(void);
 
 /*
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
