Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OnQSA-0004DJ-Eh
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 06:24:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Aug 2010 08:24:11 +0200
Message-Id: <1282544653-11508-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] menu: fix memory corruption
To: barebox@lists.infradead.org

menu_free and menu_entry_free are called on not fully initialized
entries, so we have to check for validity before freeing the
members.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/menu.c |   10 +++++++---
 1 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index 6e6637a..294e372 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -46,8 +46,10 @@ void menu_free(struct menu *m)
 
 	if (!m)
 		return;
-	free(m->name);
-	free(m->display);
+	if (m->name)
+		free(m->name);
+	if (m->display)
+		free(m->display);
 
 	list_for_each_entry_safe(me, tmp, &m->entries, list)
 		menu_entry_free(me);
@@ -143,7 +145,9 @@ void menu_entry_free(struct menu_entry *me)
 	if (!me)
 		return;
 
-	free(me->display);
+	if (me->display)
+		free(me->display);
+
 	free(me);
 }
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
