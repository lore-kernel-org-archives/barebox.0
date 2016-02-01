Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x243.google.com ([2607:f8b0:400e:c03::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQ4tU-0007e2-DN
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 03:11:13 +0000
Received: by mail-pa0-x243.google.com with SMTP id yy13so6544720pab.1
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2016 19:10:52 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 31 Jan 2016 19:10:12 -0800
Message-Id: <1454296213-12734-8-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
References: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 7/8] mdio_bus: Change PHY's naming scheme
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Change the way PHY devices are named upon creation. This commit replaces
sequentialy numbered "/dev/phy%d" with "/dev/mdio%d-phy%02x". This way
it is significanlty easier to identify which PHY in real-life (e.g. on a
schematic) corresponds to which device in /dev.

Also, replace asprintf with xasprintf to provide some form of memory
allocation failure checking.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/phy/mdio_bus.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index b74b27e..41bf018 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -333,7 +333,9 @@ static int mdio_bus_probe(struct device_d *_dev)
 	dev_add_param_int_ro(&dev->dev, "phy_addr", dev->addr, "%d");
 	dev_add_param_int_ro(&dev->dev, "phy_id", dev->phy_id, "0x%08x");
 
-	dev->cdev.name = asprintf("phy%d", _dev->id);
+	dev->cdev.name = xasprintf("mdio%d-phy%02x",
+				   dev->bus->dev.id,
+				   dev->addr);
 	dev->cdev.size = 64;
 	dev->cdev.ops = &phydev_ops;
 	dev->cdev.priv = dev;
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
