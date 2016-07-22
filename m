Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQXsU-000733-BS
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 10:40:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 12:39:18 +0200
Message-Id: <1469183959-9002-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469183959-9002-1-git-send-email-s.hauer@pengutronix.de>
References: <1469183959-9002-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] nv: Use dev_remove_param to delete nv variable
To: Barebox List <barebox@lists.infradead.org>

dev_remove_param() is exactly for the purpose of removing a device
parameter, so use this function instead of open coding the
functionality.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 4110a06..a2eaaa0 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -304,13 +304,12 @@ int nvvar_remove(const char *name)
 		return -ENOENT;
 
 	fname = basprintf("/env/nv/%s", p->name);
+
+	dev_remove_param(p);
+
 	unlink(fname);
 	free(fname);
 
-	list_del(&p->list);
-	free(p->name);
-	free(p);
-
 	return 0;
 }
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
