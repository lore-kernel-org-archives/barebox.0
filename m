Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UxNPB-0000uJ-VU
 for barebox@lists.infradead.org; Thu, 11 Jul 2013 20:23:59 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 12 Jul 2013 00:23:29 +0400
Message-Id: <1373574210-19462-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1373574210-19462-1-git-send-email-shc_work@mail.ru>
References: <1373574210-19462-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] spi: Reuse "driver_match" for SPI bus
To: barebox@lists.infradead.org

This will allow to use device_ids and make code a bit smaller.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/spi/spi.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 5d4dfd6..55bebe0 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -289,15 +289,6 @@ int spi_write_then_read(struct spi_device *spi,
 }
 EXPORT_SYMBOL(spi_write_then_read);
 
-static int spi_match(struct device_d *dev, struct driver_d *drv)
-{
-	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node &&
-			drv->of_compatible)
-		return of_match(dev, drv);
-
-	return strcmp(dev->name, drv->name) ? -1 : 0;
-}
-
 static int spi_probe(struct device_d *dev)
 {
 	return dev->driver->probe(dev);
@@ -310,7 +301,7 @@ static void spi_remove(struct device_d *dev)
 
 struct bus_type spi_bus = {
 	.name = "spi",
-	.match = spi_match,
+	.match = device_match,
 	.probe = spi_probe,
 	.remove = spi_remove,
 };
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
