Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SYdy3-0008BR-49
 for barebox@lists.infradead.org; Sun, 27 May 2012 13:57:12 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E144AFF8428
 for <barebox@lists.infradead.org>; Sun, 27 May 2012 16:00:12 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 May 2012 15:57:13 +0200
Message-Id: <1338127033-10348-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1338127033-10348-1-git-send-email-plagnioj@jcrosoft.com>
References: <1338127033-10348-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] menu: add support for disable entry
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 .../arm/boards/at91sam9m10g45ek/env/bin/boot_board |    2 +
 commands/menu.c                                    |   15 +++++-
 common/menu.c                                      |   44 +++++++++++++------
 include/menu.h                                     |    1 +
 4 files changed, 45 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board b/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
index cf6cc56..3cdef8b 100644
--- a/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
+++ b/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
@@ -13,10 +13,12 @@ fi
 
 menu -r -m boot
 menu -a -m boot -d "\e[1;36mWelcome on Barebox Boot Sequence\e[0m"
+menu -e -a -m boot -D				-d "\e[1;36mBoot                       \e[0m"
 menu -e -a -m boot -c 'menu_boot'			-d "boot (default)             "
 menu -e -a -m boot -c 'menu_boot -m nand'		-d "boot from nand             "
 menu -e -a -m boot -c 'menu_boot -k nfs -r net'		-d "boot from nfs (kernel nfs) "
 menu -e -a -m boot -c 'menu_boot -k tftp -r net'	-d "boot from nfs (kernel tftp)"
+menu -e -a -m boot -D				-d "\e[1;36mCommand                    \e[0m"
 menu -e -a -m boot -c 'clear'			-d "\e[2;33mshell                      \e[0m"
 menu -e -a -m boot -u update				-d "update                     "
 menu -e -a -m boot -c reset			-d "\e[1;31mreset                      \e[0m"
diff --git a/commands/menu.c b/commands/menu.c
index 6f74105..c877a90 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -56,7 +56,7 @@ struct cmd_menu {
 };
 
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
-#define OPTS		"m:earlNc:d:RsSn:u:A:b:B:"
+#define OPTS		"m:earlNc:d:RsSn:u:A:b:B:D"
 #define	is_entry(x)	((x)->entry)
 #else
 #define OPTS		"m:lsA:d:N"
@@ -65,7 +65,7 @@ struct cmd_menu {
 
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
 /*
- * menu -e -a -m <menu> -c <command> [-R] [-b 0|1 ] -d <description>
+ * menu -e -a -m <menu> -c <command> [-R] [-b 0|1 ] [-D] -d <description>
  * menu -e -a -m <menu> -u submenu -d [-b 0|1] <description>
  */
 static int do_menu_entry_add(struct cmd_menu *cm)
@@ -73,8 +73,13 @@ static int do_menu_entry_add(struct cmd_menu *cm)
 	struct menu_entry *me;
 	struct menu *m;
 
-	if (!cm->menu || (!cm->command && !cm->submenu) || !cm->description)
+	if (!cm->menu || !cm->description)
+		return -EINVAL;
+
+	if (cm->type != MENU_ENTRY_DISABLE && !cm->command && !cm->submenu) {
+		eprintf("Menu '%s' not found\n", cm->menu);
 		return -EINVAL;
+	}
 
 	m = menu_get_by_name(cm->menu);
 
@@ -374,6 +379,9 @@ static int do_menu(int argc, char *argv[])
 			cm.type = MENU_ENTRY_BOX;
 			cm.box_state = simple_strtoul(optarg, NULL, 10);
 			break;
+		case 'D':
+			cm.type = MENU_ENTRY_DISABLE;
+			break;
 		case 'B':
 			cm.command = optarg;
 			break;
@@ -450,6 +458,7 @@ static const __maybe_unused char cmd_menu_help[] =
 "Add an entry\n"
 "  (-R for do no exit the menu after executing the command)\n"
 "  (-b for box style 1 for selected)\n"
+"  (-D for disabel style command is not needed)\n"
 "  (and optional -c for the command to run when we change the state)\n"
 "  menu -e -a -m <menu> -c <command> [-R] [-b 0|1] -d <description>\n"
 
diff --git a/common/menu.c b/common/menu.c
index 12812a5..313603a 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -156,7 +156,8 @@ void menu_entry_free(struct menu_entry *me)
 	if (!me)
 		return;
 
-	me->free(me);
+	if (me->free)
+		me->free(me);
 }
 EXPORT_SYMBOL(menu_entry_free);
 
@@ -165,12 +166,17 @@ static void print_menu_entry(struct menu *m, struct menu_entry *me,
 {
 	gotoXY(me->num + 1, 3);
 
-	if (me->type == MENU_ENTRY_BOX) {
+	switch (me->type) {
+	case MENU_ENTRY_BOX:
 		if (me->box_state)
 			puts("[*]");
 		else
 			puts("[ ]");
-	} else {
+		break;
+	case MENU_ENTRY_DISABLE:
+		puts(" - ");
+		break;
+	default:
 		puts("   ");
 	}
 
@@ -195,7 +201,7 @@ int menu_set_selected_entry(struct menu *m, struct menu_entry* me)
 {
 	struct menu_entry* tmp;
 
-	if (!m || !me)
+	if (!m || !me || me->type == MENU_ENTRY_DISABLE)
 		return -EINVAL;
 
 	list_for_each_entry(tmp, &m->entries, list) {
@@ -215,7 +221,7 @@ int menu_set_selected(struct menu *m, int num)
 
 	me = menu_entry_get_by_num(m, num);
 
-	if (!me)
+	if (!me || me->type == MENU_ENTRY_DISABLE)
 		return -EINVAL;
 
 	m->selected = me;
@@ -260,8 +266,10 @@ static void print_menu(struct menu *m)
 	}
 
 	if (!m->selected) {
-		m->selected = list_first_entry(&m->entries,
-						struct menu_entry, list);
+		list_for_each_entry(me, &m->entries, list) {
+			if (me->type != MENU_ENTRY_DISABLE)
+				m->selected = me;
+		}
 	}
 
 	print_menu_entry(m, m->selected, 1);
@@ -351,6 +359,7 @@ int menu_show(struct menu *m)
 			ch = getc();
 
 		m->auto_select = -1;
+redo:
 
 		switch(ch) {
 		case 0x1b:
@@ -368,6 +377,8 @@ int menu_show(struct menu *m)
 				m->selected = list_entry(m->selected->list.prev, struct menu_entry,
 							 list);
 			}
+			if (m->selected->type == MENU_ENTRY_DISABLE)
+				goto redo;
 			print_menu_entry(m, m->selected, 1);
 			break;
 		case 'B': /* down */
@@ -379,6 +390,8 @@ int menu_show(struct menu *m)
 				m->selected = list_entry(m->selected->list.next, struct menu_entry,
 							 list);
 			}
+			if (m->selected->type == MENU_ENTRY_DISABLE)
+				goto redo;
 			print_menu_entry(m, m->selected, 1);
 			break;
 		case ' ':
@@ -513,21 +526,24 @@ struct menu_entry *menu_add_command_entry(struct menu *m, char *display,
 					  char *command, menu_entry_type type)
 {
 	struct action_entry *e = calloc(1, sizeof(*e));
-	int ret;
+	int ret = -ENOMEM;
 
 	if (!e)
 		return ERR_PTR(-ENOMEM);
 
-	e->command = strdup(command);
-	e->entry.action = menu_action_command;
-	e->entry.free = menu_command_free;
+	if (type != MENU_ENTRY_DISABLE) {
+		e->command = strdup(command);
+		e->entry.action = menu_action_command;
+		e->entry.free = menu_command_free;
+
+		if (!e->command)
+			goto err_free;
+	}
 	e->entry.type = type;
 	e->entry.display = strdup(display);
 
-	if (!e->entry.display || !e->command) {
-		ret = -ENOMEM;
+	if (!e->entry.display)
 		goto err_free;
-	}
 
 	ret = menu_add_entry(m, &e->entry);
 	if (ret)
diff --git a/include/menu.h b/include/menu.h
index 5a7e8ca..cd4a323 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -31,6 +31,7 @@ struct menu;
 typedef enum {
 	MENU_ENTRY_NORMAL = 0,
 	MENU_ENTRY_BOX,
+	MENU_ENTRY_DISABLE,
 } menu_entry_type;
 
 struct menu_entry {
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
