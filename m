Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OnQSA-0004DG-FQ
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 06:24:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Aug 2010 08:24:09 +0200
Message-Id: <1282544653-11508-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] menu: use list_for_each_entry where appropriate
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/menu.c |    9 ++-------
 common/menu.c   |   21 +++++----------------
 2 files changed, 7 insertions(+), 23 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index 48834f3..5efaa61 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -263,13 +263,10 @@ static int do_menu_show(struct cmd_menu *cm)
 
 static void print_entries(struct menu *m)
 {
-	struct list_head *pos;
 	struct menu_entry *me;
 
-	list_for_each(pos, &(m->entries)) {
-		me = list_entry(pos, struct menu_entry, list);
+	list_for_each_entry(me, &m->entries, list)
 		printf("%d: %s\n", me->num, me->display);
-	}
 }
 
 /*
@@ -278,7 +275,6 @@ static void print_entries(struct menu *m)
  */
 static int do_menu_list(struct cmd_menu *cm)
 {
-	struct list_head *pos;
 	struct menu* m = NULL;
 	struct menu* menus = menu_get_menus();
 
@@ -292,8 +288,7 @@ static int do_menu_list(struct cmd_menu *cm)
 		}
 	}
 
-	list_for_each(pos, &menus->list) {
-		m = list_entry(pos, struct menu, list);
+	list_for_each_entry(m, &menus->list, list) {
 		printf("%s: %s\n", m->name, m->display? m->display : m->name);
 		if (is_entry(cm))
 			print_entries(m);
diff --git a/common/menu.c b/common/menu.c
index 27c591a..3596e21 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -93,7 +93,6 @@ int menu_add_entry(struct menu *m, struct menu_entry *me)
 
 void menu_remove_entry(struct menu *m, struct menu_entry *me)
 {
-	struct list_head *pos;
 	int i = 1;
 
 	if (!m || !me)
@@ -102,22 +101,18 @@ void menu_remove_entry(struct menu *m, struct menu_entry *me)
 	m->nb_entries--;
 	list_del(&me->list);
 
-	list_for_each(pos, &m->entries) {
-		me = list_entry(pos, struct menu_entry, list);
+	list_for_each_entry(me, &m->entries, list)
 		me->num = i++;
-	}
 }
 
 struct menu* menu_get_by_name(char *name)
 {
-	struct list_head *pos;
 	struct menu* m;
 
 	if (!name)
 		return NULL;
 
-	list_for_each(pos, &menus.list) {
-		m = list_entry(pos, struct menu, list);
+	list_for_each_entry(m, &menus.list, list) {
 		if(strcmp(m->name, name) == 0)
 			return m;
 	}
@@ -127,14 +122,12 @@ struct menu* menu_get_by_name(char *name)
 
 struct menu_entry* menu_entry_get_by_num(struct menu* m, int num)
 {
-	struct list_head *pos;
 	struct menu_entry* me;
 
 	if (!m || num < 1 || num > m->nb_entries)
 		return NULL;
 
-	list_for_each(pos, &m->entries) {
-		me = list_entry(pos, struct menu_entry, list);
+	list_for_each_entry(me, &m->entries, list) {
 		if(me->num == num)
 			return me;
 	}
@@ -162,14 +155,12 @@ static void print_menu_entry(struct menu *m, struct menu_entry *me, int reverse)
 
 int menu_set_selected_entry(struct menu *m, struct menu_entry* me)
 {
-	struct list_head *pos;
 	struct menu_entry* tmp;
 
 	if (!m || !me)
 		return -EINVAL;
 
-	list_for_each(pos, &m->entries) {
-		tmp = list_entry(pos, struct menu_entry, list);
+	list_for_each_entry(tmp, &m->entries, list) {
 		if(me == tmp) {
 			m->selected = me;
 			return 0;
@@ -195,7 +186,6 @@ int menu_set_selected(struct menu *m, int num)
 
 static void print_menu(struct menu *m)
 {
-	struct list_head *pos;
 	struct menu_entry *me;
 
 	clear();
@@ -207,8 +197,7 @@ static void print_menu(struct menu *m)
 		puts(m->name);
 	}
 
-	list_for_each(pos, &m->entries) {
-		me = list_entry(pos, struct menu_entry, list);
+	list_for_each_entry(me, &m->entries, list) {
 		if(m->selected != me)
 			print_menu_entry(m, me, 0);
 	}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
