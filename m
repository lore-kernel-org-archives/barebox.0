Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OnQSA-0004DD-F1
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 06:24:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Aug 2010 08:24:07 +0200
Message-Id: <1282544653-11508-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] menu: simplify menu_free with list_for_each_entry_safe
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/menu.c |   12 +++---------
 1 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index 9c40365..6fd74a0 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -39,21 +39,15 @@ struct menu* menu_get_menus(void)
 
 void menu_free(struct menu *m)
 {
-	struct list_head *pos;
-	struct menu_entry *me;
+	struct menu_entry *me, *tmp;
 
 	if (!m)
 		return;
 	free(m->name);
 	free(m->display);
 
-	pos = &m->entries.list;
-
-	if (pos->prev != pos->next && pos->prev != 0)
-		list_for_each(pos, &m->entries.list) {
-			me = list_entry(pos, struct menu_entry, list);
-			menu_entry_free(me);
-		}
+	list_for_each_entry_safe(me, tmp, &m->entries.list, list)
+		menu_entry_free(me);
 
 	free(m);
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
