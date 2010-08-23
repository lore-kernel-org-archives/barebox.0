Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OnQSA-0004DE-FL
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 06:24:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Aug 2010 08:24:05 +0200
Message-Id: <1282544653-11508-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] menu: initialize entries list in menu_alloc
To: barebox@lists.infradead.org

Otherwise menu_free fails when menu_add failed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/menu.c  |    4 ----
 include/menu.h |    9 ++++++++-
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index b201644..9c40365 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -68,10 +68,6 @@ int menu_add(struct menu *m)
 
 	list_add_tail(&m->list, &menus.list);
 
-	m->nb_entries = 0;
-
-	INIT_LIST_HEAD(&m->entries.list);
-
 	return 0;
 }
 
diff --git a/include/menu.h b/include/menu.h
index 4405ced..128d671 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -55,7 +55,14 @@ struct menu {
  */
 static inline struct menu* menu_alloc(void)
 {
-	return calloc(1, sizeof(struct menu));
+	struct menu *m;
+
+	m = calloc(1, sizeof(struct menu));
+	if (m) {
+		INIT_LIST_HEAD(&m->entries.list);
+		m->nb_entries = 0;
+	}
+	return m;
 }
 void menu_free(struct menu *m);
 int menu_add(struct menu* m);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
