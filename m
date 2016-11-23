Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c9U27-0008Kh-Rm
 for barebox@lists.infradead.org; Wed, 23 Nov 2016 09:40:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Nov 2016 10:39:36 +0100
Message-Id: <20161123093937.15711-9-s.hauer@pengutronix.de>
In-Reply-To: <20161123093937.15711-1-s.hauer@pengutronix.de>
References: <20161123093937.15711-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] menu: sanitize menu_add_title
To: Barebox List <barebox@lists.infradead.org>

passing a string to menu_add_title() which then gets free by this
function is just plain ugly. Pass it a const char * which gets
duplicated in menu_add_title() when necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/menu.c |  2 +-
 common/boot.c   |  2 +-
 common/menu.c   | 12 +++++-------
 include/menu.h  |  2 +-
 4 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index 72db26e..ddc9c3a 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -147,7 +147,7 @@ static int do_menu_add(struct cmd_menu *cm)
 	if (!m->name)
 		goto free;
 
-	menu_add_title(m, strdup(cm->description));
+	menu_add_title(m, cm->description);
 
 	ret = menu_add(m);
 
diff --git a/common/boot.c b/common/boot.c
index 123b874..4306319 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -44,7 +44,7 @@ struct bootentries *bootentries_alloc(void)
 
 	if (IS_ENABLED(CONFIG_MENU)) {
 		bootentries->menu = menu_alloc();
-		menu_add_title(bootentries->menu, basprintf("boot"));
+		menu_add_title(bootentries->menu, "boot");
 	}
 
 	return bootentries;
diff --git a/common/menu.c b/common/menu.c
index 64df458..e757216 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -526,18 +526,17 @@ EXPORT_SYMBOL(menu_add_command_entry);
  * @display: NULL or pointer to the string which will be freed in this function.
  *	If NULL or zero length string is provided, default title will be added.
  */
-void menu_add_title(struct menu *m, char *display)
+void menu_add_title(struct menu *m, const char *display)
 {
 	char *tmp, *src, *dst;
 	int lines = 1;
 	int i;
 
-	if (!display || !strlen(display)) {
-		free(display);
-		display = xasprintf("Menu : %s", m->name ? m->name : "");
-	}
+	if (!display || !strlen(display))
+		src = dst = tmp = xasprintf("Menu : %s", m->name ? m->name : "");
+	else
+		src = dst = tmp = xstrdup(display);
 
-	src = dst = tmp = xstrdup(display);
 	/* Count lines and separate single string into multiple strings */
 	while (*src) {
 		if (*src == '\\') {
@@ -575,6 +574,5 @@ void menu_add_title(struct menu *m, char *display)
 	}
 
 	free(tmp);
-	free(display);
 }
 EXPORT_SYMBOL(menu_add_title);
diff --git a/include/menu.h b/include/menu.h
index 3e704a8..2fef064 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -91,7 +91,7 @@ int menu_set_selected_entry(struct menu *m, struct menu_entry* me);
 int menu_set_selected(struct menu *m, int num);
 int menu_set_auto_select(struct menu *m, int delay);
 struct menu* menu_get_menus(void);
-void menu_add_title(struct menu *m, char *display);
+void menu_add_title(struct menu *m, const char *display);
 
 /*
  * menu entry functions
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
