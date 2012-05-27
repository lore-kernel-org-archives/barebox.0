Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SYdy3-0008BS-4B
 for barebox@lists.infradead.org; Sun, 27 May 2012 13:57:12 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B1032FF8372
 for <barebox@lists.infradead.org>; Sun, 27 May 2012 16:00:12 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 May 2012 15:57:12 +0200
Message-Id: <1338127033-10348-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] menu: add support to do not display the entry number
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/menu.c |   10 ++++++++--
 common/menu.c   |    3 ++-
 include/menu.h  |    2 ++
 3 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index 8833d74..6f74105 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -43,6 +43,7 @@ struct cmd_menu {
 	menu_action	action;
 	char		*description;
 	int		auto_select;
+	int		not_display_num;
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
 	int		entry;
 	int		re_entrant;
@@ -55,10 +56,10 @@ struct cmd_menu {
 };
 
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
-#define OPTS		"m:earlc:d:RsSn:u:A:b:B:"
+#define OPTS		"m:earlNc:d:RsSn:u:A:b:B:"
 #define	is_entry(x)	((x)->entry)
 #else
-#define OPTS		"m:lsA:d:"
+#define OPTS		"m:lsA:d:N"
 #define	is_entry(x)	(0)
 #endif
 
@@ -233,6 +234,7 @@ static int do_menu_show(struct cmd_menu *cm)
 	if (!m)
 		return -EINVAL;
 
+	m->display_num = !cm->not_display_num;
 	if (cm->auto_select != -EINVAL) {
 		menu_set_auto_select(m, cm->auto_select);
 
@@ -340,6 +342,9 @@ static int do_menu(int argc, char *argv[])
 		case 'd':
 			cm.description = optarg;
 			break;
+		case 'N':
+			cm.not_display_num = 1;
+			break;
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
 		case 'e':
 			cm.entry = 1;
@@ -416,6 +421,7 @@ static const __maybe_unused char cmd_menu_help[] =
 "  -m  menu\n"
 "  -l  list\n"
 "  -s  show\n"
+"  -N  do not display number\n"
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
 "Advanced\n"
 "  -e  menu entry\n"
diff --git a/common/menu.c b/common/menu.c
index 070170e..12812a5 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -178,7 +178,8 @@ static void print_menu_entry(struct menu *m, struct menu_entry *me,
 		process_escape_sequence(me->display, m->display_buffer,
 					m->display_buffer_size);
 
-	printf(" %d: ", me->num);
+	if (m->display_num)
+		printf(" %d: ", me->num);
 	if (selected)
 		puts("\e[7m");
 	if (IS_ENABLED(CONFIG_SHELL_HUSH))
diff --git a/include/menu.h b/include/menu.h
index 74abcfb..5a7e8ca 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -56,6 +56,8 @@ struct menu {
 	int auto_select;
 	char *auto_display;
 
+	int display_num;
+
 	struct list_head list;
 	struct list_head entries;
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
