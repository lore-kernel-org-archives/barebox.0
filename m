Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZov-0003fm-Lv
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:44:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:25 +0200
Message-Id: <1469191472-14491-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
References: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/18] bootentries: Move menu display string allocation to
 bootentries_alloc()
To: Barebox List <barebox@lists.infradead.org>

bootentries_alloc() is the place where the struct bootentries container
is allocated, so allocate the menu entry there aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index 1ae2745..f193c93 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -50,8 +50,10 @@ static struct bootentries *bootentries_alloc(void)
 	bootentries = xzalloc(sizeof(*bootentries));
 	INIT_LIST_HEAD(&bootentries->entries);
 
-	if (IS_ENABLED(CONFIG_MENU))
+	if (IS_ENABLED(CONFIG_MENU)) {
 		bootentries->menu = menu_alloc();
+		bootentries->menu->display = basprintf("boot");
+	}
 
 	return bootentries;
 }
@@ -294,9 +296,6 @@ static struct bootentries *bootentries_collect(char *entries[], int num_entries)
 
 	bootentries = bootentries_alloc();
 
-	if (IS_ENABLED(CONFIG_MENU))
-		bootentries->menu->display = basprintf("boot");
-
 	if (!num_entries)
 		bootscript_scan_path(bootentries, "/env/boot");
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
