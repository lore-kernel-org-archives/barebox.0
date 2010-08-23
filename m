Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OnQSA-0004DH-Em
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 06:24:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Aug 2010 08:24:10 +0200
Message-Id: <1282544653-11508-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] menu: use an initialized struct list as menu list
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/menu.c |    3 +++
 common/menu.c   |   19 +++++++------------
 2 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index 5efaa61..b874ccb 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -278,6 +278,9 @@ static int do_menu_list(struct cmd_menu *cm)
 	struct menu* m = NULL;
 	struct menu* menus = menu_get_menus();
 
+	if (!menus)
+		return 0;
+
 	if (is_entry(cm)) {
 		if (cm->menu)
 			m = menu_get_by_name(cm->menu);
diff --git a/common/menu.c b/common/menu.c
index 3596e21..6e6637a 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -30,11 +30,14 @@
 #include <errno.h>
 #include <readkey.h>
 
-static struct menu menus;
+static LIST_HEAD(menus);
 
 struct menu* menu_get_menus(void)
 {
-	return &menus;
+	if (list_empty(&menus))
+		return NULL;
+
+	return list_entry(&menus, struct menu, list);
 }
 
 void menu_free(struct menu *m)
@@ -60,7 +63,7 @@ int menu_add(struct menu *m)
 	if (menu_get_by_name(m->name))
 		return -EEXIST;
 
-	list_add_tail(&m->list, &menus.list);
+	list_add_tail(&m->list, &menus);
 
 	return 0;
 }
@@ -112,7 +115,7 @@ struct menu* menu_get_by_name(char *name)
 	if (!name)
 		return NULL;
 
-	list_for_each_entry(m, &menus.list, list) {
+	list_for_each_entry(m, &menus, list) {
 		if(strcmp(m->name, name) == 0)
 			return m;
 	}
@@ -291,11 +294,3 @@ void menu_action_show(struct menu *m, struct menu_entry *me)
 
 	menu_show(sm);
 }
-
-static int menu_init(void)
-{
-	INIT_LIST_HEAD(&menus.list);
-
-	return 0;
-}
-postcore_initcall(menu_init);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
