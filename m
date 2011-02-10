Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PnNJ6-0000Vp-9C
	for barebox@lists.infradead.org; Thu, 10 Feb 2011 03:35:02 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 10 Feb 2011 04:31:57 +0100
Message-Id: <1297308720-26390-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/4] bus: remove dead code
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/bus.c |   13 -------------
 1 files changed, 0 insertions(+), 13 deletions(-)

diff --git a/lib/bus.c b/lib/bus.c
index e0dd9ea..c34982e 100644
--- a/lib/bus.c
+++ b/lib/bus.c
@@ -43,16 +43,3 @@ struct bus_type platform_bus = {
 	.probe = platform_probe,
 	.remove = platform_remove,
 };
-
-#if 0
-LIST_HEAD(bus_list);
-EXPORT_SYMBOL(bus_list);
-
-int bus_register(struct bus_type *bus)
-{
-	list_add_tail(&bus->list, &bus_list);
-
-	return 0;
-}
-#endif
-
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
