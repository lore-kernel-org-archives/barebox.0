Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMCyV-0006i5-SX
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 06:42:16 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 5576EFFA43C
 for <barebox@lists.infradead.org>; Mon, 23 Apr 2012 08:43:48 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Apr 2012 08:22:40 +0200
Message-Id: <1335162160-30661-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1335162160-30661-1-git-send-email-plagnioj@jcrosoft.com>
References: <1335162160-30661-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] menu: fix non command management support
To: barebox@lists.infradead.org

the auto select is always available

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/menu.c |   17 +++++++++--------
 1 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index e5ce5a9..8833d74 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -41,14 +41,14 @@ typedef enum {
 struct cmd_menu {
 	char		*menu;
 	menu_action	action;
+	char		*description;
+	int		auto_select;
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
 	int		entry;
 	int		re_entrant;
-	char		*description;
 	char		*command;
 	char		*submenu;
 	int		num;
-	int		auto_select;
 	menu_entry_type	type;
 	int		box_state;
 #endif
@@ -58,7 +58,7 @@ struct cmd_menu {
 #define OPTS		"m:earlc:d:RsSn:u:A:b:B:"
 #define	is_entry(x)	((x)->entry)
 #else
-#define OPTS		"m:ls"
+#define OPTS		"m:lsA:d:"
 #define	is_entry(x)	(0)
 #endif
 
@@ -334,6 +334,12 @@ static int do_menu(int argc, char *argv[])
 		case 's':
 			cm.action = action_show;
 			break;
+		case 'A':
+			cm.auto_select = simple_strtoul(optarg, NULL, 10);
+			break;
+		case 'd':
+			cm.description = optarg;
+			break;
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
 		case 'e':
 			cm.entry = 1;
@@ -350,9 +356,6 @@ static int do_menu(int argc, char *argv[])
 		case 'u':
 			cm.submenu = optarg;
 			break;
-		case 'd':
-			cm.description = optarg;
-			break;
 		case 'R':
 			cm.re_entrant = 1;
 			break;
@@ -362,8 +365,6 @@ static int do_menu(int argc, char *argv[])
 		case 'n':
 			cm.num = simple_strtoul(optarg, NULL, 10);
 			break;
-		case 'A':
-			cm.auto_select = simple_strtoul(optarg, NULL, 10);
 		case 'b':
 			cm.type = MENU_ENTRY_BOX;
 			cm.box_state = simple_strtoul(optarg, NULL, 10);
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
