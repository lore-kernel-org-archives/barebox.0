Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clXpc-0000V6-Hn
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 09:24:33 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  8 Mar 2017 10:24:01 +0100
Message-Id: <20170308092402.21245-1-o.rempel@pengutronix.de>
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
Subject: [PATCH 1/2] bbu: Search for cdev names aswell
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

In bbu_find_handler_by_device() search for cdev names aswell since some
update handlers are registered with their cdev name and not the full
path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bbu.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/common/bbu.c b/common/bbu.c
index c5dda8c8b..031c43382 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -113,6 +113,15 @@ static struct bbu_handler *bbu_find_handler_by_device(const char *devicepath)
 		if (!strcmp(handler->devicefile, devicepath))
 			return handler;
 
+	if (strncmp(devicepath, "/dev/", 5))
+		return NULL;
+
+	devicepath += 5;
+
+	list_for_each_entry(handler, &bbu_image_handlers, list)
+		if (!strcmp(handler->devicefile, devicepath))
+			return handler;
+
 	return NULL;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
