Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpPOJ-0005a4-Dm
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 20:54:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Jun 2013 22:53:41 +0200
Message-Id: <1371675222-25433-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371675222-25433-1-git-send-email-s.hauer@pengutronix.de>
References: <1371675222-25433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] Fix gotoXY argument order
To: barebox@lists.infradead.org

gotoXY has the argument order (y, x). Change this so that usage of this
function feels more natural.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/menu.c     | 10 +++++-----
 include/readkey.h |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index 1f0ffec..d516db4 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -164,7 +164,7 @@ static void __print_entry(const char *str)
 static void print_menu_entry(struct menu *m, struct menu_entry *me,
 			     int selected)
 {
-	gotoXY(me->num + 1, 3);
+	gotoXY(3, me->num + 1);
 
 	if (me->type == MENU_ENTRY_BOX) {
 		if (me->box_state)
@@ -234,7 +234,7 @@ static void print_menu(struct menu *m)
 	struct menu_entry *me;
 
 	clear();
-	gotoXY(1, 2);
+	gotoXY(2, 1);
 	if(m->display) {
 		__print_entry(m->display);
 	} else {
@@ -269,7 +269,7 @@ int menu_show(struct menu *m)
 
 	countdown = m->auto_select;
 	if (m->auto_select >= 0) {
-		gotoXY(m->nb_entries + 2, 3);
+		gotoXY(3, m->nb_entries + 2);
 		if (!m->auto_display) {
 			printf("Auto Select in");
 		} else {
@@ -293,10 +293,10 @@ int menu_show(struct menu *m)
 		}
 	}
 
-	gotoXY(m->nb_entries + 2, 3);
+	gotoXY(3, m->nb_entries + 2);
 	printf("%*c", auto_display_len + 4, ' ');
 
-	gotoXY(m->selected->num + 1, 3);
+	gotoXY(3, m->selected->num + 1);
 
 	do {
 		struct menu_entry *old_selected = m->selected;
diff --git a/include/readkey.h b/include/readkey.h
index f134846..2793f3f 100644
--- a/include/readkey.h
+++ b/include/readkey.h
@@ -28,7 +28,7 @@
 
 #define printf_reverse(fmt,args...)	printf("\e[7m" fmt "\e[m",##args)
 #define puts_reverse(fmt)		puts("\e[7m" fmt "\e[m")
-#define gotoXY(row, col)		printf("\e[%d;%dH", row, col)
+#define gotoXY(row, col)		printf("\e[%d;%dH", col, row)
 #define clear()				puts("\e[2J")
 
 int read_key(void);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
