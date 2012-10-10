Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLspf-00043F-KG
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 09:44:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Oct 2012 11:44:00 +0200
Message-Id: <1349862240-1501-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] platform driver: Drop check for resource conflicts
To: barebox@lists.infradead.org

The check is wrong since it would have to check whether the
new iomem region overlaps with an existing region. Checking
for the base address only is not enough.
Currently this is not possible because every device conflicts
with the top iomem region which covers the whole address space.

This at least fixes the regression that devices whose memory region
begins at 0x0 can no longer be succesfully registered.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Shiyan <shc_work@mail.ru>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/platform.c |   12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index 13b4620..ea4e37b 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -66,18 +66,6 @@ int platform_device_register(struct device_d *new_device)
 {
 	new_device->bus = &platform_bus;
 
-	if (new_device->resource) {
-		struct device_d *dev;
-
-		bus_for_each_device(new_device->bus, dev) {
-			if (!dev->resource)
-				continue;
-			if (dev->resource->start == new_device->resource->start) {
-				return -EBUSY;
-			}
-		}
-	}
-
 	return register_device(new_device);
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
