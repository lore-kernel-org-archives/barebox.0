Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OnQSA-0004DI-Ew
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 06:24:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Aug 2010 08:24:12 +0200
Message-Id: <1282544653-11508-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] menu: do not go to free if there's nothing to free
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/menu.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index b874ccb..f3bd78d 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -80,9 +80,8 @@ static int do_menu_entry_add(struct cmd_menu *cm)
 	}
 
 	me = menu_entry_alloc();
-
 	if (!me)
-		goto free;
+		return -ENOMEM;
 
 	if (cm->submenu) {
 		me->action = menu_action_show;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
