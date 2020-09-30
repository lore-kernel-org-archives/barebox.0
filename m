Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNWPK-0002mr-89
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 07:20:16 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 09:19:58 +0200
Message-Id: <20200930072005.1407-5-a.fatoum@pengutronix.de>
In-Reply-To: <20200930072005.1407-1-a.fatoum@pengutronix.de>
References: <20200930072005.1407-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/12] net: usb: asix: propagate errors from MDIO accessors
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The primitives asix_mdio_write and asix_mdio_read use return errors, but
are unchecked. Propagate them instead.

Reported-by: clang-analyzer-10
[afa: Untested on real hardware]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/usb/asix.c | 29 +++++++++++++++++++++--------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index 3ca27ff0270e..fc7063095b6c 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -252,11 +252,19 @@ static int asix_mdio_read(struct mii_bus *bus, int phy_id, int loc)
 {
 	struct usbnet *dev = bus->priv;
 	__le16 res;
+	int ret;
+
+	ret = asix_set_sw_mii(dev);
+	if (ret)
+		return ret;
 
-	asix_set_sw_mii(dev);
-	asix_read_cmd(dev, AX_CMD_READ_MII_REG, phy_id,
-				(__u16)loc, 2, &res);
-	asix_set_hw_mii(dev);
+	ret = asix_read_cmd(dev, AX_CMD_READ_MII_REG, phy_id, (__u16)loc, 2, &res);
+	if (ret)
+		return ret;
+
+	ret = asix_set_hw_mii(dev);
+	if (ret)
+		return ret;
 
 	dev_dbg(&dev->edev.dev, "asix_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\n",
 			phy_id, loc, le16_to_cpu(res));
@@ -268,15 +276,20 @@ static int asix_mdio_write(struct mii_bus *bus, int phy_id, int loc, u16 val)
 {
 	struct usbnet *dev = bus->priv;
 	__le16 res = cpu_to_le16(val);
+	int ret;
 
 	dev_dbg(&dev->edev.dev, "asix_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x\n",
 			phy_id, loc, val);
 
-	asix_set_sw_mii(dev);
-	asix_write_cmd(dev, AX_CMD_WRITE_MII_REG, phy_id, (__u16)loc, 2, &res);
-	asix_set_hw_mii(dev);
+	ret = asix_set_sw_mii(dev);
+	if (ret)
+		return ret;
 
-	return 0;
+	ret = asix_write_cmd(dev, AX_CMD_WRITE_MII_REG, phy_id, (__u16)loc, 2, &res);
+	if (ret)
+		return ret;
+
+	return asix_set_hw_mii(dev);
 }
 
 static inline int asix_get_phy_addr(struct usbnet *dev)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
