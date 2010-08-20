Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OmMsI-0008FA-0A
	for barebox@lists.infradead.org; Fri, 20 Aug 2010 08:22:54 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 20 Aug 2010 10:22:48 +0200
Message-Id: <1282292568-3994-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1282190002-6807-1-git-send-email-plagnioj@jcrosoft.com>
References: <1282190002-6807-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] Menu/cmd: add sub menu entry command support
To: barebox@lists.infradead.org

this will simplify the creation of navigation link

as this

menu -a -m boot -d "Boot Menu"
menu -a -m network -d "Network settings"
menu -e -a -m network -u boot -d "Back"
menu -e -a -m boot -u network -d "Network settings ->"
menu -e -a -m boot -c reset -R -d "Reset"
menu -e -a -m boot -c clear -d "Exit"
menu -s -m boot

in C

struct menu m_boot = {
	.name = "boot",
	.display = "Boot Menu",
};

struct menu m_network = {
	.name = "network",
	.display = "Network settings",
};

struct menu_entry e_to_network = {
	.display = "Network settings ->",
	.action = menu_action_show,
	.priv = &m_network,
};

struct menu_entry e_to_boot = {
	.display = "Back",
	.action = menu_action_show,
	.priv = &m_boot,
};

struct menu_entry e_reset = {
	.display = "Reset",
	.action = menu_action_run,
	.priv = "reset",
};

struct menu_entry e_exit = {
	.display = "Exit",
	.action = menu_action_run,
	.non_re_ent = 1,
	.priv = "clear",
};

void menu_test(void)
{
	menu_add(&m_boot);
	menu_add(&m_network);
	menu_add_entry(&m_boot, &e_to_network);
	menu_add_entry(&m_boot, &e_reset);
	menu_add_entry(&m_boot, &e_exit);
	menu_add_entry(&m_network, &e_to_boot);
	menu_show(&m_boot);
}



Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/menu.c |   40 +++++++++++++++++++++++++++++++---------
 common/menu.c   |    7 +++++++
 include/menu.h  |    1 +
 3 files changed, 39 insertions(+), 9 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index c1bd0e2..237de9f 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -45,12 +45,13 @@ struct cmd_menu {
 	int		re_entrant;
 	char		*description;
 	char		*command;
+	char		*submenu;
 	int		num;
 #endif
 };
 
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
-#define OPTS		"m:earlc:d:RsSn:"
+#define OPTS		"m:earlc:d:RsSn:u:"
 #define	is_entry(x)	((x)->entry)
 #else
 #define OPTS		"m:ls"
@@ -60,15 +61,16 @@ struct cmd_menu {
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
 /*
  * menu -e -a -m <menu> -c <command> [-R] -d <description>
+ * menu -e -a -m <menu> -u submenu -d <description>
  */
 static int do_menu_entry_add(struct cmd_menu *cm)
 {
 	struct menu_entry *me;
-	struct menu *m;
+	struct menu *m, *sm;
 	int len;
 	int ret = -ENOMEM;
 
-	if (!cm->menu || !cm->command || !cm->description)
+	if (!cm->menu || (!cm->command && !cm->submenu) || !cm->description)
 		return -EINVAL;
 
 	m = menu_get_by_name(cm->menu);
@@ -83,16 +85,29 @@ static int do_menu_entry_add(struct cmd_menu *cm)
 	if (!me)
 		goto free;
 
-	me->action = menu_action_run;
+	if (cm->submenu) {
+		me->action = menu_action_show;
 
-	len = strlen(cm->command) + 1;
+		sm = menu_get_by_name(cm->submenu);
 
-	me->priv = calloc(len, sizeof(char));
+		if (!sm) {
+			eprintf("SubMenu '%s' not found\n", cm->menu);
+			goto free;
+		}
 
-	if (!me->priv)
-		goto free;
+		me->priv = sm;
+	} else {
+		me->action = menu_action_run;
+
+		len = strlen(cm->command) + 1;
+
+		me->priv = calloc(len, sizeof(char));
 
-	strncpy(me->priv, cm->command, len);
+		if (!me->priv)
+			goto free;
+
+		strncpy(me->priv, cm->command, len);
+	}
 
 	len = strlen(cm->description) + 1;
 
@@ -371,6 +386,9 @@ static int do_menu(struct command *cmdtp, int argc, char *argv[])
 		case 'c':
 			cm.command = optarg;
 			break;
+		case 'u':
+			cm.submenu = optarg;
+			break;
 		case 'd':
 			cm.description = optarg;
 			break;
@@ -453,6 +471,10 @@ static const __maybe_unused char cmd_menu_help[] =
 "Add an entry\n"
 "  (-R for do no exit the menu after executing the command)\n"
 "  menu -e -a -m <menu> -c <command> [-R] -d <description>\n"
+
+"Add a submenu entry\n"
+"  (-R is not needed)\n"
+"  menu -e -a -m <menu> -u <menu> -d <description>\n"
 "\n"
 "Remove an entry\n"
 "  menu -e -r -m <name> -n <num>\n"
diff --git a/common/menu.c b/common/menu.c
index e03e4d1..b201644 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -306,6 +306,13 @@ void menu_action_run(struct menu *m, struct menu_entry *me)
 		udelay(1000000);
 }
 
+void menu_action_show(struct menu *m, struct menu_entry *me)
+{
+	struct menu *sm = me->priv;
+
+	menu_show(sm);
+}
+
 static int menu_init(void)
 {
 	INIT_LIST_HEAD(&menus.list);
diff --git a/include/menu.h b/include/menu.h
index 29f18f2..4405ced 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -82,6 +82,7 @@ struct menu_entry* menu_entry_get_by_num(struct menu* m, int num);
  * menu entry action functions
  */
 void menu_action_run(struct menu *m, struct menu_entry *me);
+void menu_action_show(struct menu *m, struct menu_entry *me);
 void menu_action_exit(struct menu *m, struct menu_entry *me);
 
 #endif /* __MENU_H__ */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
