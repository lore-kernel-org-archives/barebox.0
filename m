Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp43.i.mail.ru ([94.100.177.103])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V700b-0001Xm-6H
 for barebox@lists.infradead.org; Wed, 07 Aug 2013 09:26:22 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed,  7 Aug 2013 13:25:51 +0400
Message-Id: <1375867551-20318-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] mfd: syscon: Replace dev_info with dev_dbg
To: barebox@lists.infradead.org

There is no reason to print used region each time.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mfd/syscon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index b628ab7..52cb433 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -65,7 +65,7 @@ static int syscon_probe(struct device_d *dev)
 	syscon->base = (void __iomem *)res->start;
 	dev->priv = syscon;
 
-	dev_info(dev, "map 0x%x-0x%x registered\n", res->start, res->end);
+	dev_dbg(dev, "map 0x%x-0x%x registered\n", res->start, res->end);
 
 	return 0;
 }
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
