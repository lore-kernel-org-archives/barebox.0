Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkCHK-0001Jk-8H
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 10:48:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jun 2012 12:48:45 +0200
Message-Id: <1340880527-6895-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340880527-6895-1-git-send-email-s.hauer@pengutronix.de>
References: <1340880527-6895-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] menu: factor out a function to print an entry
To: barebox@lists.infradead.org

To save a few bytes of binary space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/menu.c  |   70 ++++++++++++--------------------------------------------
 include/menu.h |    3 ---
 2 files changed, 15 insertions(+), 58 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index 6c530b6..649926f 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -53,7 +53,6 @@ void menu_free(struct menu *m)
 	free(m->name);
 	free(m->display);
 	free(m->auto_display);
-	free(m->display_buffer);
 
 	list_for_each_entry_safe(me, tmp, &m->entries, list)
 		menu_entry_free(me);
@@ -87,15 +86,9 @@ EXPORT_SYMBOL(menu_remove);
 
 int menu_add_entry(struct menu *m, struct menu_entry *me)
 {
-	int len;
-
 	if (!m || !me || !me->display)
 		return -EINVAL;
 
-	len = strlen(me->display);
-
-	m->width = max(len, m->width);
-
 	m->nb_entries++;
 	me->num = m->nb_entries;
 	list_add_tail(&me->list, &m->entries);
@@ -160,6 +153,18 @@ void menu_entry_free(struct menu_entry *me)
 }
 EXPORT_SYMBOL(menu_entry_free);
 
+static void __print_entry(const char *str)
+{
+	static char outstr[256];
+
+	if (IS_ENABLED(CONFIG_SHELL_HUSH)) {
+		process_escape_sequence(str, outstr, 256);
+		puts(outstr);
+	} else {
+		puts(str);
+	}
+}
+
 static void print_menu_entry(struct menu *m, struct menu_entry *me,
 			     int selected)
 {
@@ -174,17 +179,11 @@ static void print_menu_entry(struct menu *m, struct menu_entry *me,
 		puts("   ");
 	}
 
-	if (IS_ENABLED(CONFIG_SHELL_HUSH))
-		process_escape_sequence(me->display, m->display_buffer,
-					m->display_buffer_size);
-
 	printf(" %d: ", me->num);
 	if (selected)
 		puts("\e[7m");
-	if (IS_ENABLED(CONFIG_SHELL_HUSH))
-		puts(m->display_buffer);
-	else
-		puts(me->display);
+
+	__print_entry(me->display);
 
 	if (selected)
 		puts("\e[m");
@@ -241,13 +240,7 @@ static void print_menu(struct menu *m)
 	clear();
 	gotoXY(1, 2);
 	if(m->display) {
-		if (IS_ENABLED(CONFIG_SHELL_HUSH)) {
-			process_escape_sequence(m->display, m->display_buffer,
-						m->display_buffer_size);
-			puts(m->display_buffer);
-		} else {
-			puts(m->display);
-		}
+		__print_entry(m->display);
 	} else {
 		puts("Menu : ");
 		puts(m->name);
@@ -266,34 +259,6 @@ static void print_menu(struct menu *m)
 	print_menu_entry(m, m->selected, 1);
 }
 
-static int menu_alloc_display_buffer(struct menu *m)
-{
-	int min_size;
-
-	if (m->display)
-		min_size = max((int)strlen(m->display), m->width);
-	else
-		min_size = m->width;
-
-
-	if (m->display_buffer) {
-		if (m->display_buffer_size >= min_size)
-			return 0;
-		m->display_buffer = realloc(m->display_buffer, min_size * sizeof(char));
-	} else {
-		m->display_buffer = calloc(min_size, sizeof(char));
-	}
-
-	if (!m->display_buffer) {
-		perror("display_buffer");
-		return -ENOMEM;
-	}
-
-	m->display_buffer_size = min_size;
-
-	return 0;
-}
-
 int menu_show(struct menu *m)
 {
 	int ch, ch_previous = 0;
@@ -301,15 +266,10 @@ int menu_show(struct menu *m)
 	int countdown;
 	int auto_display_len = 16;
 	uint64_t start, second;
-	int ret;
 
 	if(!m || list_empty(&m->entries))
 		return -EINVAL;
 
-	ret = menu_alloc_display_buffer(m);
-	if (ret)
-		return ret;
-
 	print_menu(m);
 
 	countdown = m->auto_select;
diff --git a/include/menu.h b/include/menu.h
index 74abcfb..40f8eab 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -60,9 +60,6 @@ struct menu {
 	struct list_head entries;
 
 	int nb_entries;
-	int width;
-	char *display_buffer;
-	int display_buffer_size;
 
 	struct menu_entry *selected;
 	void *priv;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
