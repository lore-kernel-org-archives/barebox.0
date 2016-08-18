Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward17p.cmail.yandex.net ([2a02:6b8:0:1465::b3])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baNws-00021x-0r
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 14:05:36 +0000
Received: from smtp2m.mail.yandex.net (smtp2m.mail.yandex.net
 [IPv6:2a02:6b8:0:2519::122])
 by forward17p.cmail.yandex.net (Yandex) with ESMTP id 6A0592193C
 for <barebox@lists.infradead.org>; Thu, 18 Aug 2016 17:05:10 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Thu, 18 Aug 2016 17:05:03 +0300
Message-Id: <1471529103-842-1-git-send-email-rndfax@yandex.ru>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] rework menu so that it can support multiline titles
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 commands/menu.c   | 23 +++++++++++++---
 common/boot.c     |  8 ++++--
 common/menu.c     | 81 ++++++++++++++++++++++++++++++++++++++++++++++++-------
 common/menutree.c |  9 +++++--
 include/menu.h    |  6 ++++-
 5 files changed, 108 insertions(+), 19 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index e1079fd..72db26e 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -22,6 +22,7 @@
 #include <menu.h>
 #include <getopt.h>
 #include <errno.h>
+#include <libbb.h>
 #include <linux/err.h>
 
 typedef enum {
@@ -146,9 +147,7 @@ static int do_menu_add(struct cmd_menu *cm)
 	if (!m->name)
 		goto free;
 
-	m->display = strdup(cm->description);
-	if (!m->display)
-		goto free;
+	menu_add_title(m, strdup(cm->description));
 
 	ret = menu_add(m);
 
@@ -271,7 +270,23 @@ static int do_menu_list(struct cmd_menu *cm)
 	}
 
 	list_for_each_entry(m, &menus->list, list) {
-		printf("%s: %s\n", m->name, m->display? m->display : m->name);
+		printf("%s: ", m->name);
+		if (m->display_lines) {
+			static char outstr[256];
+			int i;
+
+			printf("\n");
+			for (i = 0; i < m->display_lines; i++)
+				/* Conform to menu rendering logic */
+				if (IS_ENABLED(CONFIG_SHELL_HUSH)) {
+					process_escape_sequence(m->display[i], outstr, 256);
+					printf("\t%s\n", outstr);
+				} else {
+					printf("\t%s\n", m->display[i]);
+				}
+		} else {
+			printf("%s\n", m->name);
+		}
 		if (is_entry(cm))
 			print_entries(m);
 	}
diff --git a/common/boot.c b/common/boot.c
index 0e9f27f..bc90502 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -43,7 +43,7 @@ struct bootentries *bootentries_alloc(void)
 
 	if (IS_ENABLED(CONFIG_MENU)) {
 		bootentries->menu = menu_alloc();
-		bootentries->menu->display = basprintf("boot");
+		menu_add_title(bootentries->menu, basprintf("boot"));
 	}
 
 	return bootentries;
@@ -61,8 +61,12 @@ void bootentries_free(struct bootentries *bootentries)
 		be->release(be);
 	}
 
-	if (bootentries->menu)
+	if (bootentries->menu) {
+		int i;
+		for (i = 0; i < bootentries->menu->display_lines; i++)
+			free(bootentries->menu->display[i]);
 		free(bootentries->menu->display);
+	}
 	free(bootentries->menu);
 	free(bootentries);
 }
diff --git a/common/menu.c b/common/menu.c
index 9819569..64df458 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -43,10 +43,13 @@ EXPORT_SYMBOL(menu_get_menus);
 void menu_free(struct menu *m)
 {
 	struct menu_entry *me, *tmp;
+	int i;
 
 	if (!m)
 		return;
 	free(m->name);
+	for (i = 0; i < m->display_lines; i++)
+		free(m->display[i]);
 	free(m->display);
 	free(m->auto_display);
 
@@ -164,7 +167,7 @@ static void __print_entry(const char *str)
 static void print_menu_entry(struct menu *m, struct menu_entry *me,
 			     int selected)
 {
-	gotoXY(3, me->num + 1);
+	gotoXY(3, me->num + m->display_lines);
 
 	if (me->type == MENU_ENTRY_BOX) {
 		if (me->box_state)
@@ -232,14 +235,12 @@ EXPORT_SYMBOL(menu_set_auto_select);
 static void print_menu(struct menu *m)
 {
 	struct menu_entry *me;
+	int i;
 
 	clear();
-	gotoXY(2, 1);
-	if(m->display) {
-		__print_entry(m->display);
-	} else {
-		puts("Menu : ");
-		puts(m->name);
+	for (i = 0; i < m->display_lines; i++) {
+		gotoXY(2, 1 + i);
+		__print_entry(m->display[i]);
 	}
 
 	list_for_each_entry(me, &m->entries, list) {
@@ -269,7 +270,7 @@ int menu_show(struct menu *m)
 
 	countdown = m->auto_select;
 	if (m->auto_select >= 0) {
-		gotoXY(3, m->nb_entries + 2);
+		gotoXY(3, m->nb_entries + m->display_lines + 1);
 		if (!m->auto_display) {
 			printf("Auto Select in");
 		} else {
@@ -293,10 +294,10 @@ int menu_show(struct menu *m)
 		}
 	}
 
-	gotoXY(3, m->nb_entries + 2);
+	gotoXY(3, m->nb_entries + m->display_lines + 1);
 	printf("%*c", auto_display_len + 4, ' ');
 
-	gotoXY(3, m->selected->num + 1);
+	gotoXY(3, m->selected->num + m->display_lines);
 
 	do {
 		struct menu_entry *old_selected = m->selected;
@@ -517,3 +518,63 @@ err_free:
 	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL(menu_add_command_entry);
+
+/*
+ * Add title to menu.
+ * Lines are separated by explicit char '\n' or by string "\n".
+ *
+ * @display: NULL or pointer to the string which will be freed in this function.
+ *	If NULL or zero length string is provided, default title will be added.
+ */
+void menu_add_title(struct menu *m, char *display)
+{
+	char *tmp, *src, *dst;
+	int lines = 1;
+	int i;
+
+	if (!display || !strlen(display)) {
+		free(display);
+		display = xasprintf("Menu : %s", m->name ? m->name : "");
+	}
+
+	src = dst = tmp = xstrdup(display);
+	/* Count lines and separate single string into multiple strings */
+	while (*src) {
+		if (*src == '\\') {
+			if (*(src + 1) == '\\') {
+				*dst++ = *src++;
+				*dst++ = *src++;
+				continue;
+			}
+			if (*(src + 1) == 'n') {
+				*dst = 0;
+				src += 2;
+				dst++;
+				lines++;
+				continue;
+			}
+		}
+		if (*src == '\n') {
+			*dst = 0;
+			src++;
+			dst++;
+			lines++;
+			continue;
+		}
+		*dst++ = *src++;
+	}
+	*dst = 0;
+
+	m->display = xzalloc(sizeof(*m->display) * lines);
+	m->display_lines = lines;
+
+	for (src = tmp, i = 0; i < lines; i++) {
+		m->display[i] = xstrdup(src);
+		/* Go to the next line */
+		src += strlen(src) + 1;
+	}
+
+	free(tmp);
+	free(display);
+}
+EXPORT_SYMBOL(menu_add_title);
diff --git a/common/menutree.c b/common/menutree.c
index eb14da0..400d1a6 100644
--- a/common/menutree.c
+++ b/common/menutree.c
@@ -19,6 +19,7 @@
 #include <shell.h>
 #include <libfile.h>
 
+#include <linux/ctype.h>
 #include <linux/stat.h>
 
 struct menutree {
@@ -95,6 +96,7 @@ int menutree(const char *path, int toplevel)
 	glob_t g;
 	int i;
 	char *globpath, *display;
+	size_t size;
 
 	menu = menu_alloc();
 
@@ -106,14 +108,17 @@ int menutree(const char *path, int toplevel)
 		goto out;
 	}
 
-	display = read_file_line("%s/title", path);
+	globpath = basprintf("%s/title", path);
+	display = read_file(globpath, &size);
+	free(globpath);
 	if (!display) {
 		eprintf("no title found in %s/title\n", path);
 		ret = -EINVAL;
 		goto out;
 	}
 
-	menu->display = shell_expand(display);
+	strim(display);
+	menu_add_title(menu, shell_expand(display));
 	free(display);
 
 	for (i = 0; i < g.gl_pathc; i++) {
diff --git a/include/menu.h b/include/menu.h
index 8b0ffb1..3e704a8 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -47,7 +47,10 @@ struct menu_entry {
 
 struct menu {
 	char *name;
-	char *display;
+	/* Multiline title */
+	char **display;
+	/* Number of lines */
+	int display_lines;
 
 	int auto_select;
 	char *auto_display;
@@ -88,6 +91,7 @@ int menu_set_selected_entry(struct menu *m, struct menu_entry* me);
 int menu_set_selected(struct menu *m, int num);
 int menu_set_auto_select(struct menu *m, int delay);
 struct menu* menu_get_menus(void);
+void menu_add_title(struct menu *m, char *display);
 
 /*
  * menu entry functions
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
