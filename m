Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OnQSA-0004DK-Er
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 06:24:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Aug 2010 08:24:13 +0200
Message-Id: <1282544653-11508-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1282544653-11508-1-git-send-email-s.hauer@pengutronix.de>
References: <1282544653-11508-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] menu: simplify usage for clients
To: barebox@lists.infradead.org

Clients now only have to call menu_add_submenu or menu_add_command_entry
instead of allocating many strings.
This also fixes some problems in the menu code. The priv field in struct
menu_entry was a pointer to struct menu or a pointer to an allocated string.
It was never freed, only had to be freed when it was an allocated string.
The reference to a submenu is now kept as a string and not to the menu
itself. The code checked the existence of the submenu when creating it, but
crashed when the submenu was removed and referenced afterwards. Now the
code hapily allows references to nonexistant menus but complains during
runtime when the menu is not there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/menu.c |   48 +++--------------------
 common/menu.c   |  114 ++++++++++++++++++++++++++++++++++++++++++++++++++-----
 include/menu.h  |    6 +-
 3 files changed, 114 insertions(+), 54 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index f3bd78d..f734db3 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -26,6 +26,7 @@
 #include <menu.h>
 #include <getopt.h>
 #include <errno.h>
+#include <linux/err.h>
 
 typedef enum {
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
@@ -66,8 +67,7 @@ struct cmd_menu {
 static int do_menu_entry_add(struct cmd_menu *cm)
 {
 	struct menu_entry *me;
-	struct menu *m, *sm;
-	int ret = -ENOMEM;
+	struct menu *m;
 
 	if (!cm->menu || (!cm->command && !cm->submenu) || !cm->description)
 		return -EINVAL;
@@ -79,50 +79,16 @@ static int do_menu_entry_add(struct cmd_menu *cm)
 		return -EINVAL;
 	}
 
-	me = menu_entry_alloc();
+	if (cm->submenu)
+		me = menu_add_submenu(m, cm->submenu, cm->description);
+	else
+		me = menu_add_command_entry(m, cm->description, cm->command);
 	if (!me)
-		return -ENOMEM;
-
-	if (cm->submenu) {
-		me->action = menu_action_show;
-
-		sm = menu_get_by_name(cm->submenu);
-
-		if (!sm) {
-			eprintf("SubMenu '%s' not found\n", cm->menu);
-			goto free;
-		}
-
-		me->priv = sm;
-	} else {
-		me->action = menu_action_run;
-
-		me->priv = strdup(cm->command);
-		if (!me->priv)
-			goto free;
-	}
-
-	me->display = strdup(cm->description);
-	if (!me->display)
-		goto free;
-
-	ret = menu_add_entry(m, me);
-
-	if (ret)
-		goto free;
+		return PTR_ERR(me);
 
 	me->non_re_ent = !cm->re_entrant;
 
 	return 0;
-
-free:
-	eputs("Entry add fail\n");
-
-	free(me->priv);
-
-	menu_entry_free(me);
-
-	return ret;
 }
 
 /*
diff --git a/common/menu.c b/common/menu.c
index 294e372..24c7b35 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -29,6 +29,7 @@
 #include <xfuncs.h>
 #include <errno.h>
 #include <readkey.h>
+#include <linux/err.h>
 
 static LIST_HEAD(menus);
 
@@ -145,10 +146,7 @@ void menu_entry_free(struct menu_entry *me)
 	if (!me)
 		return;
 
-	if (me->display)
-		free(me->display);
-
-	free(me);
+	me->free(me);
 }
 
 static void print_menu_entry(struct menu *m, struct menu_entry *me, int reverse)
@@ -277,14 +275,76 @@ int menu_show(struct menu *m)
 
 void menu_action_exit(struct menu *m, struct menu_entry *me) {}
 
-void menu_action_run(struct menu *m, struct menu_entry *me)
+struct submenu {
+	char *submenu;
+	struct menu_entry entry;
+};
+
+static void menu_action_show(struct menu *m, struct menu_entry *me)
+{
+	struct submenu *s = container_of(me, struct submenu, entry);
+	struct menu *sm;
+
+	sm = menu_get_by_name(s->submenu);
+	if (sm)
+		menu_show(sm);
+	else
+		eprintf("no such menu: %s\n", s->submenu);
+}
+
+static void submenu_free(struct menu_entry *me)
+{
+	struct submenu *s = container_of(me, struct submenu, entry);
+
+	if (s->entry.display)
+		free(s->entry.display);
+	if (s->submenu)
+		free(s->submenu);
+	free(s);
+}
+
+struct menu_entry *menu_add_submenu(struct menu *parent, char *submenu, char *display)
+{
+	struct submenu *s = calloc(1, sizeof(*s));
+	int ret;
+
+	if (!s)
+		return ERR_PTR(-ENOMEM);
+
+	s->submenu = strdup(submenu);
+	s->entry.action = menu_action_show;
+	s->entry.free = submenu_free;
+	s->entry.display = strdup(display);
+	if (!s->entry.display || !s->submenu) {
+		ret = -ENOMEM;
+		goto err_free;
+	}
+
+	ret = menu_add_entry(parent, &s->entry);
+	if (ret)
+		goto err_free;
+
+	return &s->entry;
+
+err_free:
+	submenu_free(&s->entry);
+	return ERR_PTR(ret);
+}
+
+struct action_entry {
+	char *command;
+	struct menu_entry entry;
+};
+
+static void menu_action_command(struct menu *m, struct menu_entry *me)
 {
+	struct action_entry *e = container_of(me, struct action_entry, entry);
 	int ret;
-	const char *s = getenv((const char*)me->priv);
+	const char *s = getenv(e->command);
 
 	/* can be a command as boot */
 	if (!s)
-		s = me->priv;
+		s = e->command;
 
 	ret = run_command (s, 0);
 
@@ -292,9 +352,43 @@ void menu_action_run(struct menu *m, struct menu_entry *me)
 		udelay(1000000);
 }
 
-void menu_action_show(struct menu *m, struct menu_entry *me)
+static void menu_command_free(struct menu_entry *me)
 {
-	struct menu *sm = me->priv;
+	struct action_entry *e = container_of(me, struct action_entry, entry);
 
-	menu_show(sm);
+	if (e->entry.display)
+		free(e->entry.display);
+	if (e->command)
+		free(e->command);
+
+	free(e);
 }
+
+struct menu_entry *menu_add_command_entry(struct menu *m, char *display, char *command)
+{
+	struct action_entry *e = calloc(1, sizeof(*e));
+	int ret;
+
+	if (!e)
+		return ERR_PTR(-ENOMEM);
+
+	e->command = strdup(command);
+	e->entry.action = menu_action_command;
+	e->entry.free = menu_command_free;
+	e->entry.display = strdup(display);
+
+	if (!e->entry.display || !e->command) {
+		ret = -ENOMEM;
+		goto err_free;
+	}
+
+	ret = menu_add_entry(m, &e->entry);
+	if (ret)
+		goto err_free;
+
+	return &e->entry;
+err_free:
+	menu_command_free(&e->entry);
+	return ERR_PTR(ret);
+}
+
diff --git a/include/menu.h b/include/menu.h
index 4f85ed6..22bfc23 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -32,10 +32,10 @@ struct menu_entry {
 	int num;
 	char *display;
 	void (*action)(struct menu *m, struct menu_entry *me);
+	void (*free)(struct menu_entry *me);
 	int non_re_ent;
 
 	struct list_head list;
-	void *priv;
 };
 
 struct menu {
@@ -65,6 +65,8 @@ static inline struct menu* menu_alloc(void)
 	}
 	return m;
 }
+struct menu_entry *menu_add_submenu(struct menu *parent, char *submenu, char *display);
+struct menu_entry *menu_add_command_entry(struct menu *m, char *display, char *command);
 void menu_free(struct menu *m);
 int menu_add(struct menu* m);
 void menu_remove(struct menu *m);
@@ -89,8 +91,6 @@ struct menu_entry* menu_entry_get_by_num(struct menu* m, int num);
 /*
  * menu entry action functions
  */
-void menu_action_run(struct menu *m, struct menu_entry *me);
-void menu_action_show(struct menu *m, struct menu_entry *me);
 void menu_action_exit(struct menu *m, struct menu_entry *me);
 
 #endif /* __MENU_H__ */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
