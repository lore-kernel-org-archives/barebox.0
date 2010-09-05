Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OsHBT-0000L8-H2
	for barebox@lists.infradead.org; Sun, 05 Sep 2010 15:31:09 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  5 Sep 2010 17:23:42 +0200
Message-Id: <1283700222-19388-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] Menu: add box stype entry
To: barebox@lists.infradead.org

this will allow you to create a box style entry

via C API by specifying the type as

struct menu_entry me = {
	.display "test",
	.box_state = MENU_ENTRY_BOX,
	.box_action = action_to_run,
}

and via shell
menu -e -a -m <menu> -c <command> [-R] [-b 0|1 -B <select action>] -d <description>
menu -e -a -m <menu> -u submenu -d [-b 0|1 -B <select action>] <description>

-b with 0 for not selected and 1 for selected
and -B for the command to run when changing state

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/menu.c |   31 ++++++++++++++++++++++++-----
 common/menu.c   |   56 ++++++++++++++++++++++++++++++++++++++++++++++++++----
 include/menu.h  |   14 ++++++++++++-
 3 files changed, 89 insertions(+), 12 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index f734db3..e502709 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -48,11 +48,14 @@ struct cmd_menu {
 	char		*command;
 	char		*submenu;
 	int		num;
+	menu_entry_type	type;
+	int		box_state;
+	char		*box_command;
 #endif
 };
 
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
-#define OPTS		"m:earlc:d:RsSn:u:"
+#define OPTS		"m:earlc:d:RsSn:u:b:B:"
 #define	is_entry(x)	((x)->entry)
 #else
 #define OPTS		"m:ls"
@@ -61,8 +64,8 @@ struct cmd_menu {
 
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
 /*
- * menu -e -a -m <menu> -c <command> [-R] -d <description>
- * menu -e -a -m <menu> -u submenu -d <description>
+ * menu -e -a -m <menu> -c <command> [-R] [-b 0|1 -B <select action>] -d <description>
+ * menu -e -a -m <menu> -u submenu -d [-b 0|1 -B <select action>] <description>
  */
 static int do_menu_entry_add(struct cmd_menu *cm)
 {
@@ -82,10 +85,15 @@ static int do_menu_entry_add(struct cmd_menu *cm)
 	if (cm->submenu)
 		me = menu_add_submenu(m, cm->submenu, cm->description);
 	else
-		me = menu_add_command_entry(m, cm->description, cm->command);
+		me = menu_add_command_entry(m, cm->description, cm->command,
+					    cm->box_command);
 	if (!me)
 		return PTR_ERR(me);
 
+	me->type = cm->type;
+
+	me->box_state = cm->box_state > 0 ? 1 : 0;
+
 	me->non_re_ent = !cm->re_entrant;
 
 	return 0;
@@ -343,6 +351,13 @@ static int do_menu(struct command *cmdtp, int argc, char *argv[])
 		case 'n':
 			cm.num = simple_strtoul(optarg, NULL, 10);
 			break;
+		case 'b':
+			cm.type = MENU_ENTRY_BOX;
+			cm.box_state = simple_strtoul(optarg, NULL, 10);
+			break;
+		case 'B':
+			cm.command = optarg;
+			break;
 #endif
 		default:
 			return 1;
@@ -412,11 +427,15 @@ static const __maybe_unused char cmd_menu_help[] =
 "\n"
 "Add an entry\n"
 "  (-R for do no exit the menu after executing the command)\n"
-"  menu -e -a -m <menu> -c <command> [-R] -d <description>\n"
+"  (-b for box style 1 for selected)\n"
+"  (and -B for the command to run when we change the state)\n"
+"  menu -e -a -m <menu> -c <command> [-R] [-b 0|1 -B <select action>] -d <description>\n"
 
 "Add a submenu entry\n"
 "  (-R is not needed)\n"
-"  menu -e -a -m <menu> -u <menu> -d <description>\n"
+"  (-b for box style 1 for selected)\n"
+"  (and -B for the command to run when we change the state)\n"
+"  menu -e -a -m <menu> -u submenu -d [-b 0|1 -B <select action>] <description>\n"
 "\n"
 "Remove an entry\n"
 "  menu -e -r -m <name> -n <num>\n"
diff --git a/common/menu.c b/common/menu.c
index 7620d9e..0590c7e 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -150,10 +150,27 @@ void menu_entry_free(struct menu_entry *me)
 static void print_menu_entry(struct menu *m, struct menu_entry *me, int reverse)
 {
 	gotoXY(me->num + 1, 3);
-	if (reverse)
-		printf_reverse("%d: %-*s", me->num, m->width, me->display);
-	else
-		printf("%d: %-*s", me->num, m->width, me->display);
+	if (reverse) {
+		if (me->type == MENU_ENTRY_BOX) {
+			if (me->box_state)
+				puts_reverse("[*]");
+			else
+				puts_reverse("[ ]");
+		} else {
+			printf_reverse("   ");
+		}
+		printf_reverse(" %d: %-*s", me->num, m->width, me->display);
+	} else {
+		if (me->type == MENU_ENTRY_BOX) {
+			if (me->box_state)
+				puts("[*]");
+			else
+				puts("[ ]");
+		} else {
+			puts("   ");
+		}
+		printf(" %d: %-*s", me->num, m->width, me->display);
+	}
 }
 
 int menu_set_selected_entry(struct menu *m, struct menu_entry* me)
@@ -254,6 +271,12 @@ int menu_show(struct menu *m)
 			}
 			print_menu_entry(m, m->selected, 1);
 			break;
+		case ' ':
+			m->selected->box_state = !m->selected->box_state;
+			if (m->selected->box_action)
+				m->selected->box_action(m, m->selected);
+			print_menu_entry(m, m->selected, 1);
+			break;
 		case '\n':
 		case '\r':
 			clear();
@@ -329,6 +352,7 @@ err_free:
 
 struct action_entry {
 	char *command;
+	char *box_command;
 	struct menu_entry entry;
 };
 
@@ -348,17 +372,35 @@ static void menu_action_command(struct menu *m, struct menu_entry *me)
 		udelay(1000000);
 }
 
+static void menu_action_box_command(struct menu *m, struct menu_entry *me)
+{
+	struct action_entry *e = container_of(me, struct action_entry, entry);
+	int ret;
+	const char *s = getenv(e->box_command);
+
+	/* can be a command as boot */
+	if (!s)
+		s = e->box_command;
+
+	ret = run_command (s, 0);
+
+	if (ret < 0)
+		udelay(1000000);
+}
+
 static void menu_command_free(struct menu_entry *me)
 {
 	struct action_entry *e = container_of(me, struct action_entry, entry);
 
 	free(e->entry.display);
 	free(e->command);
+	free(e->box_command);
 
 	free(e);
 }
 
-struct menu_entry *menu_add_command_entry(struct menu *m, char *display, char *command)
+struct menu_entry *menu_add_command_entry(struct menu *m, char *display,
+					  char *command, char* box_command)
 {
 	struct action_entry *e = calloc(1, sizeof(*e));
 	int ret;
@@ -370,6 +412,10 @@ struct menu_entry *menu_add_command_entry(struct menu *m, char *display, char *c
 	e->entry.action = menu_action_command;
 	e->entry.free = menu_command_free;
 	e->entry.display = strdup(display);
+	if (box_command) {
+		e->box_command = strdup(box_command);
+		e->entry.box_action = menu_action_box_command;
+	}
 
 	if (!e->entry.display || !e->command) {
 		ret = -ENOMEM;
diff --git a/include/menu.h b/include/menu.h
index 22bfc23..f824894 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -28,6 +28,11 @@
 
 struct menu;
 
+typedef enum {
+	MENU_ENTRY_NORMAL = 0,
+	MENU_ENTRY_BOX,
+} menu_entry_type;
+
 struct menu_entry {
 	int num;
 	char *display;
@@ -35,6 +40,12 @@ struct menu_entry {
 	void (*free)(struct menu_entry *me);
 	int non_re_ent;
 
+	/* MENU_ENTRY_BOX */
+	int box_state;
+	void (*box_action)(struct menu *m, struct menu_entry *me);
+
+	menu_entry_type type;
+
 	struct list_head list;
 };
 
@@ -66,7 +77,8 @@ static inline struct menu* menu_alloc(void)
 	return m;
 }
 struct menu_entry *menu_add_submenu(struct menu *parent, char *submenu, char *display);
-struct menu_entry *menu_add_command_entry(struct menu *m, char *display, char *command);
+struct menu_entry *menu_add_command_entry(struct menu *m, char *display,
+					  char *command, char* box_command);
 void menu_free(struct menu *m);
 int menu_add(struct menu* m);
 void menu_remove(struct menu *m);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
