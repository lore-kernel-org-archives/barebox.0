Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qdyr6-0006MV-4B
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 06:11:33 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id B4539100C787
	for <barebox@lists.infradead.org>;
	Tue,  5 Jul 2011 08:11:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  5 Jul 2011 07:55:55 +0200
Message-Id: <1309845357-12285-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1309845357-12285-1-git-send-email-plagnioj@jcrosoft.com>
References: <1309845357-12285-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] menu: fix command support as module
To: barebox@lists.infradead.org

add missing EXPORT_SYMBOL for nan static function

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/menu.c |   17 ++++++++++++++++-
 1 files changed, 16 insertions(+), 1 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index 8e3cb9b..5291fcb 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -41,6 +41,7 @@ struct menu* menu_get_menus(void)
 
 	return list_entry(&menus, struct menu, list);
 }
+EXPORT_SYMBOL(menu_get_menus);
 
 void menu_free(struct menu *m)
 {
@@ -57,6 +58,7 @@ void menu_free(struct menu *m)
 
 	free(m);
 }
+EXPORT_SYMBOL(menu_free);
 
 int menu_add(struct menu *m)
 {
@@ -70,6 +72,7 @@ int menu_add(struct menu *m)
 
 	return 0;
 }
+EXPORT_SYMBOL(menu_add);
 
 void menu_remove(struct menu *m)
 {
@@ -78,6 +81,7 @@ void menu_remove(struct menu *m)
 
 	list_del(&m->list);
 }
+EXPORT_SYMBOL(menu_remove);
 
 int menu_add_entry(struct menu *m, struct menu_entry *me)
 {
@@ -96,6 +100,7 @@ int menu_add_entry(struct menu *m, struct menu_entry *me)
 
 	return 0;
 }
+EXPORT_SYMBOL(menu_add_entry);
 
 void menu_remove_entry(struct menu *m, struct menu_entry *me)
 {
@@ -110,6 +115,7 @@ void menu_remove_entry(struct menu *m, struct menu_entry *me)
 	list_for_each_entry(me, &m->entries, list)
 		me->num = i++;
 }
+EXPORT_SYMBOL(menu_remove_entry);
 
 struct menu* menu_get_by_name(char *name)
 {
@@ -125,6 +131,7 @@ struct menu* menu_get_by_name(char *name)
 
 	return NULL;
 }
+EXPORT_SYMBOL(menu_get_by_name);
 
 struct menu_entry* menu_entry_get_by_num(struct menu* m, int num)
 {
@@ -140,6 +147,7 @@ struct menu_entry* menu_entry_get_by_num(struct menu* m, int num)
 
 	return NULL;
 }
+EXPORT_SYMBOL(menu_entry_get_by_num);
 
 void menu_entry_free(struct menu_entry *me)
 {
@@ -148,6 +156,7 @@ void menu_entry_free(struct menu_entry *me)
 
 	me->free(me);
 }
+EXPORT_SYMBOL(menu_entry_free);
 
 static void print_menu_entry(struct menu *m, struct menu_entry *me,
 			     int selected)
@@ -187,6 +196,7 @@ int menu_set_selected_entry(struct menu *m, struct menu_entry* me)
 
 	return -EINVAL;
 }
+EXPORT_SYMBOL(menu_set_selected_entry);
 
 int menu_set_selected(struct menu *m, int num)
 {
@@ -201,6 +211,7 @@ int menu_set_selected(struct menu *m, int num)
 
 	return 0;
 }
+EXPORT_SYMBOL(menu_set_selected);
 
 int menu_set_auto_select(struct menu *m, int delay)
 {
@@ -211,6 +222,7 @@ int menu_set_auto_select(struct menu *m, int delay)
 
 	return 0;
 }
+EXPORT_SYMBOL(menu_set_auto_select);
 
 static void print_menu(struct menu *m)
 {
@@ -343,8 +355,10 @@ int menu_show(struct menu *m)
 
 	return 0;
 }
+EXPORT_SYMBOL(menu_show);
 
 void menu_action_exit(struct menu *m, struct menu_entry *me) {}
+EXPORT_SYMBOL(menu_action_exit);
 
 struct submenu {
 	char *submenu;
@@ -402,6 +416,7 @@ err_free:
 	submenu_free(&s->entry);
 	return ERR_PTR(ret);
 }
+EXPORT_SYMBOL(menu_add_submenu);
 
 struct action_entry {
 	char *command;
@@ -463,4 +478,4 @@ err_free:
 	menu_command_free(&e->entry);
 	return ERR_PTR(ret);
 }
-
+EXPORT_SYMBOL(menu_add_command_entry);
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
