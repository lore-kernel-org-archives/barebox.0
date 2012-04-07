Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SGM8r-0005Qy-Pd
 for barebox@lists.infradead.org; Sat, 07 Apr 2012 03:16:46 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 5DF96FF8849
 for <barebox@lists.infradead.org>; Sat,  7 Apr 2012 05:17:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  7 Apr 2012 05:00:15 +0200
Message-Id: <1333767615-21555-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1333767615-21555-1-git-send-email-plagnioj@jcrosoft.com>
References: <1333767615-21555-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] menu: add color fancy support
To: barebox@lists.infradead.org

You can now use AINSI color in the display of the menu or menu_entry.
As the length of the string is not any more the same as the display simplify
the invertion display managemnent.

We just now invert the fontground and backgound on the string itself as done
in Kconfig.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/menu.c  |   50 +++++++++++++++++++++++++++++++++++++++++++++-----
 include/menu.h |    3 +++
 2 files changed, 48 insertions(+), 5 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index e85a320..50af36e 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -31,6 +31,7 @@
 #include <readkey.h>
 #include <clock.h>
 #include <linux/err.h>
+#include <libbb.h>
 
 static LIST_HEAD(menus);
 
@@ -52,6 +53,7 @@ void menu_free(struct menu *m)
 	free(m->name);
 	free(m->display);
 	free(m->auto_display);
+	free(m->display_buffer);
 
 	list_for_each_entry_safe(me, tmp, &m->entries, list)
 		menu_entry_free(me);
@@ -162,8 +164,6 @@ static void print_menu_entry(struct menu *m, struct menu_entry *me,
 			     int selected)
 {
 	gotoXY(me->num + 1, 3);
-	if (selected)
-		printf("\e[7m");
 
 	if (me->type == MENU_ENTRY_BOX) {
 		if (me->box_state)
@@ -174,10 +174,15 @@ static void print_menu_entry(struct menu *m, struct menu_entry *me,
 		puts("   ");
 	}
 
-	printf(" %d: %-*s", me->num, m->width, me->display);
+	process_escape_sequence(me->display, m->display_buffer,
+				m->display_buffer_size);
+	printf(" %d: ", me->num);
+	if (selected)
+		puts("\e[7m");
+	puts(m->display_buffer);
 
 	if (selected)
-		printf("\e[m");
+		puts("\e[m");
 }
 
 int menu_set_selected_entry(struct menu *m, struct menu_entry* me)
@@ -231,7 +236,9 @@ static void print_menu(struct menu *m)
 	clear();
 	gotoXY(1, 2);
 	if(m->display) {
-		puts(m->display);
+		process_escape_sequence(m->display, m->display_buffer,
+					m->display_buffer_size);
+		puts(m->display_buffer);
 	} else {
 		puts("Menu : ");
 		puts(m->name);
@@ -250,6 +257,34 @@ static void print_menu(struct menu *m)
 	print_menu_entry(m, m->selected, 1);
 }
 
+static int menu_alloc_display_buffer(struct menu *m)
+{
+	int min_size;
+
+	if (m->display)
+		min_size = max((int)strlen(m->display), m->width);
+	else
+		min_size = m->width;
+
+
+	if (m->display_buffer) {
+		if (m->display_buffer_size >= min_size)
+			return 0;
+		m->display_buffer = realloc(m->display_buffer, min_size * sizeof(char));
+	} else {
+		m->display_buffer = calloc(min_size, sizeof(char));
+	}
+
+	if (!m->display_buffer) {
+		perror("display_buffer");
+		return -ENOMEM;
+	}
+
+	m->display_buffer_size = min_size;
+
+	return 0;
+}
+
 int menu_show(struct menu *m)
 {
 	int ch;
@@ -257,10 +292,15 @@ int menu_show(struct menu *m)
 	int countdown;
 	int auto_display_len = 16;
 	uint64_t start, second;
+	int ret;
 
 	if(!m || list_empty(&m->entries))
 		return -EINVAL;
 
+	ret = menu_alloc_display_buffer(m);
+	if (ret)
+		return ret;
+
 	print_menu(m);
 
 	countdown = m->auto_select;
diff --git a/include/menu.h b/include/menu.h
index 6e7b555..136fe61 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -61,6 +61,9 @@ struct menu {
 
 	int nb_entries;
 	int width;
+	char *display_buffer;
+	int display_buffer_size;
+
 	struct menu_entry *selected;
 	void *priv;
 };
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
