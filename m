Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UxNPB-0000uK-VX
 for barebox@lists.infradead.org; Thu, 11 Jul 2013 20:23:59 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 12 Jul 2013 00:23:30 +0400
Message-Id: <1373574210-19462-3-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/3] i2c: Reuse "driver_match" for I2C bus
To: barebox@lists.infradead.org

This will allow to use device_ids and make code a bit smaller.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/i2c/i2c.c | 22 +---------------------
 1 file changed, 1 insertion(+), 21 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 3e09547..ccc4844 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -454,26 +454,6 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 }
 EXPORT_SYMBOL(i2c_add_numbered_adapter);
 
-static int i2c_match(struct device_d *dev, struct driver_d *drv)
-{
-	if (!strcmp(dev->name, drv->name))
-		return 0;
-
-	if (drv->id_table) {
-		struct platform_device_id *id = drv->id_table;
-
-		while (id->name) {
-			if (!strcmp(id->name, dev->name)) {
-				dev->id_entry = id;
-				return 0;
-			}
-			id++;
-		}
-	}
-
-	return -1;
-}
-
 static int i2c_probe(struct device_d *dev)
 {
 	return dev->driver->probe(dev);
@@ -486,7 +466,7 @@ static void i2c_remove(struct device_d *dev)
 
 struct bus_type i2c_bus = {
 	.name = "i2c",
-	.match = i2c_match,
+	.match = device_match,
 	.probe = i2c_probe,
 	.remove = i2c_remove,
 };
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
