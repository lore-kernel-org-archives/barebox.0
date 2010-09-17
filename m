Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwbHR-0007Ao-K3
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 13:47:10 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 17 Sep 2010 15:45:54 +0200
Message-Id: <1284731154-20167-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1284731154-20167-1-git-send-email-plagnioj@jcrosoft.com>
References: <1284731154-20167-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3 v3] Menu: add box style entry
To: barebox@lists.infradead.org

this will allow you to create a box style entry

via C API by specifying the type as

struct menu_entry me = {
	.display "test",
	.type = MENU_ENTRY_BOX,
	.box_state = 1,
	.action = action_to_run,
}

and via shell
menu -e -a -m <menu> -c <command> [-R] [-b 0|1] -d <description>
menu -e -a -m <menu> -u submenu -d [-b 0|1] <description>

-b with 0 for not selected and 1 for selected
and -c for the command to run when changing state

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/menu.c |   30 +++++++++++++++++++++++-------
 common/menu.c   |   38 ++++++++++++++++++++++++++++++++------
 include/menu.h  |   14 +++++++++++++-
 3 files changed, 68 insertions(+), 14 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index d2ac5cd..b9d6699 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -49,11 +49,13 @@ struct cmd_menu {
 	char		*submenu;
 	int		num;
 	int		auto_select;
+	menu_entry_type	type;
+	int		box_state;
 #endif
 };
 
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
-#define OPTS		"m:earlc:d:RsSn:u:A:"
+#define OPTS		"m:earlc:d:RsSn:u:A:b:B:"
 #define	is_entry(x)	((x)->entry)
 #else
 #define OPTS		"m:ls"
@@ -62,8 +64,8 @@ struct cmd_menu {
 
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
 /*
- * menu -e -a -m <menu> -c <command> [-R] -d <description>
- * menu -e -a -m <menu> -u submenu -d <description>
+ * menu -e -a -m <menu> -c <command> [-R] [-b 0|1 ] -d <description>
+ * menu -e -a -m <menu> -u submenu -d [-b 0|1] <description>
  */
 static int do_menu_entry_add(struct cmd_menu *cm)
 {
@@ -83,11 +85,15 @@ static int do_menu_entry_add(struct cmd_menu *cm)
 	if (cm->submenu)
 		me = menu_add_submenu(m, cm->submenu, cm->description);
 	else
-		me = menu_add_command_entry(m, cm->description, cm->command);
+		me = menu_add_command_entry(m, cm->description, cm->command,
+					    cm->type);
 	if (!me)
 		return PTR_ERR(me);
 
-	me->non_re_ent = !cm->re_entrant;
+	me->box_state = cm->box_state > 0 ? 1 : 0;
+
+	if (!cm->submenu)
+		me->non_re_ent = !cm->re_entrant;
 
 	return 0;
 }
@@ -358,6 +364,12 @@ static int do_menu(struct command *cmdtp, int argc, char *argv[])
 			break;
 		case 'A':
 			cm.auto_select = simple_strtoul(optarg, NULL, 10);
+		case 'b':
+			cm.type = MENU_ENTRY_BOX;
+			cm.box_state = simple_strtoul(optarg, NULL, 10);
+			break;
+		case 'B':
+			cm.command = optarg;
 			break;
 #endif
 		default:
@@ -430,11 +442,15 @@ static const __maybe_unused char cmd_menu_help[] =
 "\n"
 "Add an entry\n"
 "  (-R for do no exit the menu after executing the command)\n"
-"  menu -e -a -m <menu> -c <command> [-R] -d <description>\n"
+"  (-b for box style 1 for selected)\n"
+"  (and optional -c for the command to run when we change the state)\n"
+"  menu -e -a -m <menu> -c <command> [-R] [-b 0|1] -d <description>\n"
 
 "Add a submenu entry\n"
 "  (-R is not needed)\n"
-"  menu -e -a -m <menu> -u <menu> -d <description>\n"
+"  (-b for box style 1 for selected)\n"
+"  (and -c is not needed)\n"
+"  menu -e -a -m <menu> -u submenu -d [-b 0|1] <description>\n"
 "\n"
 "Remove an entry\n"
 "  menu -e -r -m <name> -n <num>\n"
diff --git a/common/menu.c b/common/menu.c
index d15f85a..8e3cb9b 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -149,13 +149,26 @@ void menu_entry_free(struct menu_entry *me)
 	me->free(me);
 }
 
-static void print_menu_entry(struct menu *m, struct menu_entry *me, int reverse)
+static void print_menu_entry(struct menu *m, struct menu_entry *me,
+			     int selected)
 {
 	gotoXY(me->num + 1, 3);
-	if (reverse)
-		printf_reverse("%d: %-*s", me->num, m->width, me->display);
-	else
-		printf("%d: %-*s", me->num, m->width, me->display);
+	if (selected)
+		printf("\e[7m");
+
+	if (me->type == MENU_ENTRY_BOX) {
+		if (me->box_state)
+			puts("[*]");
+		else
+			puts("[ ]");
+	} else {
+		puts("   ");
+	}
+
+	printf(" %d: %-*s", me->num, m->width, me->display);
+
+	if (selected)
+		printf("\e[m");
 }
 
 int menu_set_selected_entry(struct menu *m, struct menu_entry* me)
@@ -306,6 +319,14 @@ int menu_show(struct menu *m)
 			}
 			print_menu_entry(m, m->selected, 1);
 			break;
+		case ' ':
+			if (m->selected->type != MENU_ENTRY_BOX)
+				break;
+			m->selected->box_state = !m->selected->box_state;
+			if (m->selected->action)
+				m->selected->action(m, m->selected);
+			print_menu_entry(m, m->selected, 1);
+			break;
 		case '\n':
 		case '\r':
 			clear();
@@ -335,6 +356,9 @@ static void menu_action_show(struct menu *m, struct menu_entry *me)
 	struct submenu *s = container_of(me, struct submenu, entry);
 	struct menu *sm;
 
+	if (me->type == MENU_ENTRY_BOX && !me->box_state)
+		return;
+
 	sm = menu_get_by_name(s->submenu);
 	if (sm)
 		menu_show(sm);
@@ -410,7 +434,8 @@ static void menu_command_free(struct menu_entry *me)
 	free(e);
 }
 
-struct menu_entry *menu_add_command_entry(struct menu *m, char *display, char *command)
+struct menu_entry *menu_add_command_entry(struct menu *m, char *display,
+					  char *command, menu_entry_type type)
 {
 	struct action_entry *e = calloc(1, sizeof(*e));
 	int ret;
@@ -421,6 +446,7 @@ struct menu_entry *menu_add_command_entry(struct menu *m, char *display, char *c
 	e->command = strdup(command);
 	e->entry.action = menu_action_command;
 	e->entry.free = menu_command_free;
+	e->entry.type = type;
 	e->entry.display = strdup(display);
 
 	if (!e->entry.display || !e->command) {
diff --git a/include/menu.h b/include/menu.h
index cc9d0af..6e7b555 100644
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
 
@@ -69,7 +80,8 @@ static inline struct menu* menu_alloc(void)
 	return m;
 }
 struct menu_entry *menu_add_submenu(struct menu *parent, char *submenu, char *display);
-struct menu_entry *menu_add_command_entry(struct menu *m, char *display, char *command);
+struct menu_entry *menu_add_command_entry(struct menu *m, char *display,
+					  char *command, menu_entry_type type);
 void menu_free(struct menu *m);
 int menu_add(struct menu* m);
 void menu_remove(struct menu *m);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
