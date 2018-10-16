Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCUpd-0004eg-3Y
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 19:17:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id u6-v6so8734829plz.4
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2018 12:16:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Oct 2018 12:15:45 -0700
Message-Id: <20181016191552.16690-16-andrew.smirnov@gmail.com>
In-Reply-To: <20181016191552.16690-1-andrew.smirnov@gmail.com>
References: <20181016191552.16690-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 15/22] mdio_bus: Fix documentation for mdio_bus_match()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Fix documentation for mdio_bus_match(). While at it, re-arrange the
code to be easier to follow. Seeing != used as a result of a matching
function is extremely confusing.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/phy/mdio_bus.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 177d54863..d7d6d8940 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -335,16 +335,19 @@ EXPORT_SYMBOL(of_mdio_find_bus);
  * @dev: target PHY device
  * @drv: given PHY driver
  *
- * Description: Given a PHY device, and a PHY driver, return 1 if
- *   the driver supports the device.  Otherwise, return 0.
+ * Description: Given a PHY device, and a PHY driver, return 0 if
+ *   the driver supports the device.  Otherwise, return 1.
  */
 static int mdio_bus_match(struct device_d *dev, struct driver_d *drv)
 {
 	struct phy_device *phydev = to_phy_device(dev);
 	struct phy_driver *phydrv = to_phy_driver(drv);
 
-	return ((phydrv->phy_id & phydrv->phy_id_mask) !=
-		(phydev->phy_id & phydrv->phy_id_mask));
+	if ((phydrv->phy_id & phydrv->phy_id_mask) ==
+	    (phydev->phy_id & phydrv->phy_id_mask))
+		return 0;
+
+	return 1;
 }
 
 static ssize_t phydev_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
