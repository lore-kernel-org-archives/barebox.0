Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OnQSA-0004DB-FG
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 06:24:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Aug 2010 08:24:06 +0200
Message-Id: <1282544653-11508-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] menu: Use strdup instead of malloc/strncpy
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/menu.c |   31 +++++--------------------------
 1 files changed, 5 insertions(+), 26 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index 237de9f..39f106b 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -67,7 +67,6 @@ static int do_menu_entry_add(struct cmd_menu *cm)
 {
 	struct menu_entry *me;
 	struct menu *m, *sm;
-	int len;
 	int ret = -ENOMEM;
 
 	if (!cm->menu || (!cm->command && !cm->submenu) || !cm->description)
@@ -99,25 +98,15 @@ static int do_menu_entry_add(struct cmd_menu *cm)
 	} else {
 		me->action = menu_action_run;
 
-		len = strlen(cm->command) + 1;
-
-		me->priv = calloc(len, sizeof(char));
-
+		me->priv = strdup(cm->command);
 		if (!me->priv)
 			goto free;
-
-		strncpy(me->priv, cm->command, len);
 	}
 
-	len = strlen(cm->description) + 1;
-
-	me->display = calloc(len, sizeof(char));;
-
-	if (!m->display)
+	me->display = strdup(cm->description);
+	if (!me->display)
 		goto free;
 
-	strncpy(me->display, cm->description, len);
-
 	ret = menu_add_entry(m, me);
 
 	if (ret)
@@ -175,7 +164,6 @@ static int do_menu_entry_remove(struct cmd_menu *cm)
 static int do_menu_add(struct cmd_menu *cm)
 {
 	struct menu *m;
-	int len = 0;
 	int ret = -ENOMEM;
 
 	if (!cm->menu || !cm->description)
@@ -186,23 +174,14 @@ static int do_menu_add(struct cmd_menu *cm)
 	if (!m)
 		goto free;
 
-	len = strlen(cm->menu) + 1;
-
-	m->name = calloc(len, sizeof(char));;
+	m->name = strdup(cm->menu);
 	if (!m->name)
 		goto free;
 
-	strncpy(m->name, cm->menu, len);
-
-	len = strlen(cm->description) + 1;
-
-	m->display = calloc(len, sizeof(char));;
-
+	m->display = strdup(cm->description);
 	if (!m->display)
 		goto free;
 
-	strncpy(m->display, cm->description, len);
-
 	ret = menu_add(m);
 
 	if (ret)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
