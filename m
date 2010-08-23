Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OnQSA-0004DF-FB
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 06:24:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Aug 2010 08:24:08 +0200
Message-Id: <1282544653-11508-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] menu: remove superfluous struct menu_entry member from
	struct menu
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/menu.c |    2 +-
 common/menu.c   |   20 ++++++++++----------
 include/menu.h  |    5 +++--
 3 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index 39f106b..48834f3 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -266,7 +266,7 @@ static void print_entries(struct menu *m)
 	struct list_head *pos;
 	struct menu_entry *me;
 
-	list_for_each(pos, &(m->entries.list)) {
+	list_for_each(pos, &(m->entries)) {
 		me = list_entry(pos, struct menu_entry, list);
 		printf("%d: %s\n", me->num, me->display);
 	}
diff --git a/common/menu.c b/common/menu.c
index 6fd74a0..27c591a 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -46,7 +46,7 @@ void menu_free(struct menu *m)
 	free(m->name);
 	free(m->display);
 
-	list_for_each_entry_safe(me, tmp, &m->entries.list, list)
+	list_for_each_entry_safe(me, tmp, &m->entries, list)
 		menu_entry_free(me);
 
 	free(m);
@@ -86,7 +86,7 @@ int menu_add_entry(struct menu *m, struct menu_entry *me)
 
 	m->nb_entries++;
 	me->num = m->nb_entries;
-	list_add_tail(&me->list, &m->entries.list);
+	list_add_tail(&me->list, &m->entries);
 
 	return 0;
 }
@@ -102,7 +102,7 @@ void menu_remove_entry(struct menu *m, struct menu_entry *me)
 	m->nb_entries--;
 	list_del(&me->list);
 
-	list_for_each(pos, &m->entries.list) {
+	list_for_each(pos, &m->entries) {
 		me = list_entry(pos, struct menu_entry, list);
 		me->num = i++;
 	}
@@ -133,7 +133,7 @@ struct menu_entry* menu_entry_get_by_num(struct menu* m, int num)
 	if (!m || num < 1 || num > m->nb_entries)
 		return NULL;
 
-	list_for_each(pos, &m->entries.list) {
+	list_for_each(pos, &m->entries) {
 		me = list_entry(pos, struct menu_entry, list);
 		if(me->num == num)
 			return me;
@@ -168,7 +168,7 @@ int menu_set_selected_entry(struct menu *m, struct menu_entry* me)
 	if (!m || !me)
 		return -EINVAL;
 
-	list_for_each(pos, &m->entries.list) {
+	list_for_each(pos, &m->entries) {
 		tmp = list_entry(pos, struct menu_entry, list);
 		if(me == tmp) {
 			m->selected = me;
@@ -207,14 +207,14 @@ static void print_menu(struct menu *m)
 		puts(m->name);
 	}
 
-	list_for_each(pos, &m->entries.list) {
+	list_for_each(pos, &m->entries) {
 		me = list_entry(pos, struct menu_entry, list);
 		if(m->selected != me)
 			print_menu_entry(m, me, 0);
 	}
 
 	if (!m->selected) {
-		m->selected = list_first_entry(&m->entries.list,
+		m->selected = list_first_entry(&m->entries,
 						struct menu_entry, list);
 	}
 
@@ -226,7 +226,7 @@ int menu_show(struct menu *m)
 	int ch;
 	int escape = 0;
 
-	if(!m || list_empty(&m->entries.list))
+	if(!m || list_empty(&m->entries))
 		return -EINVAL;
 
 	print_menu(m);
@@ -245,7 +245,7 @@ int menu_show(struct menu *m)
 			print_menu_entry(m, m->selected, 0);
 			m->selected = list_entry(m->selected->list.prev, struct menu_entry,
 						 list);
-			if (&(m->selected->list) == &(m->entries.list)) {
+			if (&(m->selected->list) == &(m->entries)) {
 				m->selected = list_entry(m->selected->list.prev, struct menu_entry,
 							 list);
 			}
@@ -256,7 +256,7 @@ int menu_show(struct menu *m)
 			print_menu_entry(m, m->selected, 0);
 			m->selected = list_entry(m->selected->list.next, struct menu_entry,
 						 list);
-			if (&(m->selected->list) == &(m->entries.list)) {
+			if (&(m->selected->list) == &(m->entries)) {
 				m->selected = list_entry(m->selected->list.next, struct menu_entry,
 							 list);
 			}
diff --git a/include/menu.h b/include/menu.h
index 128d671..4f85ed6 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -43,7 +43,8 @@ struct menu {
 	char *display;
 
 	struct list_head list;
-	struct menu_entry entries;
+	struct list_head entries;
+
 	int nb_entries;
 	int width;
 	struct menu_entry *selected;
@@ -59,7 +60,7 @@ static inline struct menu* menu_alloc(void)
 
 	m = calloc(1, sizeof(struct menu));
 	if (m) {
-		INIT_LIST_HEAD(&m->entries.list);
+		INIT_LIST_HEAD(&m->entries);
 		m->nb_entries = 0;
 	}
 	return m;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
