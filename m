Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp77.ord1c.emailsrvr.com ([108.166.43.77])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cReN1-0007ty-KD
 for barebox@lists.infradead.org; Thu, 12 Jan 2017 12:20:46 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Thu, 12 Jan 2017 12:20:05 +0000
Message-Id: <20170112122005.805-1-abbotti@mev.co.uk>
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
Subject: [PATCH] of_path: only handle no driver for device if it is on a bus
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

This fixes a regression in __of_find_path() for flash devices created by
the cadence-quadspi driver, which do not have 'dev->driver' set.  Such
devices do not have 'dev->bus' set either, so we can use that to qualify
the existing test.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/of/of_path.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 946b9c7aa..e0b2dc124 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -66,7 +66,7 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
 			return -ENODEV;
 	}
 
-	if (!dev->driver)
+	if (dev->bus && !dev->driver)
 		return -ENODEV;
 
 	device_detect(dev);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
