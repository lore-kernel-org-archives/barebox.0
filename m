Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTpQy-0006KW-MQ
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 07:43:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 08:43:20 +0100
Message-Id: <1351755800-11279-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net usb asix: Add missing line breaks in dev_* messages
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/usb/asix.c |   56 ++++++++++++++++++++++++------------------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index 97680cf..5975e2a 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -154,7 +154,7 @@ static int asix_read_cmd(struct usbnet *dev, u8 cmd, u16 value, u16 index,
 	void *buf;
 	int err = -ENOMEM;
 
-	dev_dbg(&dev->edev.dev, "asix_read_cmd() cmd=0x%02x value=0x%04x index=0x%04x size=%d",
+	dev_dbg(&dev->edev.dev, "asix_read_cmd() cmd=0x%02x value=0x%04x index=0x%04x size=%d\n",
 		cmd, value, index, size);
 
 	buf = malloc(size);
@@ -187,7 +187,7 @@ static int asix_write_cmd(struct usbnet *dev, u8 cmd, u16 value, u16 index,
 	void *buf = NULL;
 	int err = -ENOMEM;
 
-	dev_dbg(&dev->edev.dev, "asix_write_cmd() cmd=0x%02x value=0x%04x index=0x%04x size=%d",
+	dev_dbg(&dev->edev.dev, "asix_write_cmd() cmd=0x%02x value=0x%04x index=0x%04x size=%d\n",
 		cmd, value, index, size);
 
 	if (data) {
@@ -218,7 +218,7 @@ static inline int asix_set_sw_mii(struct usbnet *dev)
 	int ret;
 	ret = asix_write_cmd(dev, AX_CMD_SET_SW_MII, 0x0000, 0, 0, NULL);
 	if (ret < 0)
-		dev_err(&dev->edev.dev, "Failed to enable software MII access");
+		dev_err(&dev->edev.dev, "Failed to enable software MII access\n");
 	return ret;
 }
 
@@ -227,7 +227,7 @@ static inline int asix_set_hw_mii(struct usbnet *dev)
 	int ret;
 	ret = asix_write_cmd(dev, AX_CMD_SET_HW_MII, 0x0000, 0, 0, NULL);
 	if (ret < 0)
-		dev_err(&dev->edev.dev, "Failed to enable hardware MII access");
+		dev_err(&dev->edev.dev, "Failed to enable hardware MII access\n");
 	return ret;
 }
 
@@ -241,7 +241,7 @@ static int asix_mdio_read(struct mii_bus *bus, int phy_id, int loc)
 				(__u16)loc, 2, &res);
 	asix_set_hw_mii(dev);
 
-	dev_dbg(&dev->edev.dev, "asix_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x",
+	dev_dbg(&dev->edev.dev, "asix_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\n",
 			phy_id, loc, le16_to_cpu(res));
 
 	return le16_to_cpu(res);
@@ -252,7 +252,7 @@ static int asix_mdio_write(struct mii_bus *bus, int phy_id, int loc, u16 val)
 	struct usbnet *dev = bus->priv;
 	__le16 res = cpu_to_le16(val);
 
-	dev_dbg(&dev->edev.dev, "asix_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x",
+	dev_dbg(&dev->edev.dev, "asix_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x\n",
 			phy_id, loc, val);
 
 	asix_set_sw_mii(dev);
@@ -270,10 +270,10 @@ static inline int asix_get_phy_addr(struct usbnet *dev)
 	dev_dbg(&dev->edev.dev, "asix_get_phy_addr()");
 
 	if (ret < 0) {
-		dev_err(&dev->edev.dev, "Error reading PHYID register: %02x", ret);
+		dev_err(&dev->edev.dev, "Error reading PHYID register: %02x\n", ret);
 		goto out;
 	}
-	dev_dbg(&dev->edev.dev, "asix_get_phy_addr() returning 0x%04x", *((__le16 *)buf));
+	dev_dbg(&dev->edev.dev, "asix_get_phy_addr() returning 0x%04x\n", *((__le16 *)buf));
 	ret = buf[1];
 
 out:
@@ -286,7 +286,7 @@ static int asix_sw_reset(struct usbnet *dev, u8 flags)
 
         ret = asix_write_cmd(dev, AX_CMD_SW_RESET, flags, 0, 0, NULL);
 	if (ret < 0)
-		dev_err(&dev->edev.dev, "Failed to send software reset: %02x", ret);
+		dev_err(&dev->edev.dev, "Failed to send software reset: %02x\n", ret);
 
 	return ret;
 }
@@ -297,7 +297,7 @@ static u16 asix_read_rx_ctl(struct usbnet *dev)
 	int ret = asix_read_cmd(dev, AX_CMD_READ_RX_CTL, 0, 0, 2, &v);
 
 	if (ret < 0) {
-		dev_err(&dev->edev.dev, "Error reading RX_CTL register: %02x", ret);
+		dev_err(&dev->edev.dev, "Error reading RX_CTL register: %02x\n", ret);
 		goto out;
 	}
 	ret = le16_to_cpu(v);
@@ -309,10 +309,10 @@ static int asix_write_rx_ctl(struct usbnet *dev, u16 mode)
 {
 	int ret;
 
-	dev_dbg(&dev->edev.dev, "asix_write_rx_ctl() - mode = 0x%04x", mode);
+	dev_dbg(&dev->edev.dev, "asix_write_rx_ctl() - mode = 0x%04x\n", mode);
 	ret = asix_write_cmd(dev, AX_CMD_WRITE_RX_CTL, mode, 0, 0, NULL);
 	if (ret < 0)
-		dev_err(&dev->edev.dev, "Failed to write RX_CTL mode to 0x%04x: %02x",
+		dev_err(&dev->edev.dev, "Failed to write RX_CTL mode to 0x%04x: %02x\n",
 		       mode, ret);
 
 	return ret;
@@ -324,7 +324,7 @@ static u16 asix_read_medium_status(struct usbnet *dev)
 	int ret = asix_read_cmd(dev, AX_CMD_READ_MEDIUM_STATUS, 0, 0, 2, &v);
 
 	if (ret < 0) {
-		dev_err(&dev->edev.dev, "Error reading Medium Status register: %02x", ret);
+		dev_err(&dev->edev.dev, "Error reading Medium Status register: %02x\n", ret);
 		goto out;
 	}
 	ret = le16_to_cpu(v);
@@ -336,10 +336,10 @@ static int asix_write_medium_mode(struct usbnet *dev, u16 mode)
 {
 	int ret;
 
-	dev_dbg(&dev->edev.dev, "asix_write_medium_mode() - mode = 0x%04x", mode);
+	dev_dbg(&dev->edev.dev, "asix_write_medium_mode() - mode = 0x%04x\n", mode);
 	ret = asix_write_cmd(dev, AX_CMD_WRITE_MEDIUM_MODE, mode, 0, 0, NULL);
 	if (ret < 0)
-		dev_err(&dev->edev.dev, "Failed to write Medium Mode mode to 0x%04x: %02x",
+		dev_err(&dev->edev.dev, "Failed to write Medium Mode mode to 0x%04x: %02x\n",
 			mode, ret);
 
 	return ret;
@@ -349,10 +349,10 @@ static int asix_write_gpio(struct usbnet *dev, u16 value, int sleep)
 {
 	int ret;
 
-	dev_dbg(&dev->edev.dev,"asix_write_gpio() - value = 0x%04x", value);
+	dev_dbg(&dev->edev.dev,"asix_write_gpio() - value = 0x%04x\n", value);
 	ret = asix_write_cmd(dev, AX_CMD_WRITE_GPIOS, value, 0, 0, NULL);
 	if (ret < 0)
-		dev_err(&dev->edev.dev, "Failed to write GPIO value 0x%04x: %02x",
+		dev_err(&dev->edev.dev, "Failed to write GPIO value 0x%04x: %02x\n",
 			value, ret);
 
 	if (sleep)
@@ -369,7 +369,7 @@ static int asix_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 	/* Get the MAC address */
 	if ((ret = asix_read_cmd(udev, AX_CMD_READ_NODE_ID,
 				0, 0, 6, adr)) < 0) {
-		debug("Failed to read MAC address: %d", ret);
+		debug("Failed to read MAC address: %d\n", ret);
 		return -1;
 	}
 
@@ -390,7 +390,7 @@ static int ax88172_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 	/* Get the MAC address */
 	if ((ret = asix_read_cmd(udev, AX88172_CMD_READ_NODE_ID,
 				0, 0, 6, adr)) < 0) {
-		debug("read AX_CMD_READ_NODE_ID failed: %d", ret);
+		debug("read AX_CMD_READ_NODE_ID failed: %d\n", ret);
 		return -1;
 	}
 
@@ -409,13 +409,13 @@ static int asix_rx_fixup(struct usbnet *dev, void *buf, int len)
 
 	while (len > 0) {
 		if ((short)(header & 0x0000ffff) != ~((short)((header & 0xffff0000) >> 16)))
-			dev_err(&dev->edev.dev, "asix_rx_fixup() Bad Header Length");
+			dev_err(&dev->edev.dev, "asix_rx_fixup() Bad Header Length\n");
 
 		/* get the packet length */
 		size = (unsigned short) (header & 0x0000ffff);
 
 		if (size > 1514) {
-			dev_err(&dev->edev.dev, "asix_rx_fixup() Bad RX Length %d", size);
+			dev_err(&dev->edev.dev, "asix_rx_fixup() Bad RX Length %d\n", size);
 			return 0;
 		}
 
@@ -434,7 +434,7 @@ static int asix_rx_fixup(struct usbnet *dev, void *buf, int len)
 	}
 
 	if (len < 0) {
-		dev_err(&dev->edev.dev,"asix_rx_fixup() Bad SKB Length %d", len);
+		dev_err(&dev->edev.dev,"asix_rx_fixup() Bad SKB Length %d\n", len);
 		return -1;
 	}
 	return 0;
@@ -549,7 +549,7 @@ static int ax88772_bind(struct usbnet *dev)
 	embd_phy = ((asix_get_phy_addr(dev) & 0x1f) == 0x10 ? 1 : 0);
 	if ((ret = asix_write_cmd(dev, AX_CMD_SW_PHY_SELECT,
 				embd_phy, 0, 0, NULL)) < 0) {
-		debug("Select PHY #1 failed: %d", ret);
+		debug("Select PHY #1 failed: %d\n", ret);
 		goto out;
 	}
 
@@ -572,12 +572,12 @@ static int ax88772_bind(struct usbnet *dev)
 
 	mdelay(150);
 	rx_ctl = asix_read_rx_ctl(dev);
-	debug("RX_CTL is 0x%04x after software reset", rx_ctl);
+	debug("RX_CTL is 0x%04x after software reset\n", rx_ctl);
 	if ((ret = asix_write_rx_ctl(dev, 0x0000)) < 0)
 		goto out;
 
 	rx_ctl = asix_read_rx_ctl(dev);
-	debug("RX_CTL is 0x%04x setting to 0x0000", rx_ctl);
+	debug("RX_CTL is 0x%04x setting to 0x0000\n", rx_ctl);
 
 	dev->edev.get_ethaddr = asix_get_ethaddr;
 	dev->edev.set_ethaddr = asix_set_ethaddr;
@@ -599,7 +599,7 @@ static int ax88772_bind(struct usbnet *dev)
 	if ((ret = asix_write_cmd(dev, AX_CMD_WRITE_IPG0,
 				AX88772_IPG0_DEFAULT | AX88772_IPG1_DEFAULT,
 				AX88772_IPG2_DEFAULT, 0, NULL)) < 0) {
-		debug("Write IPG,IPG1,IPG2 failed: %d", ret);
+		debug("Write IPG,IPG1,IPG2 failed: %d\n", ret);
 		goto out;
 	}
 
@@ -608,10 +608,10 @@ static int ax88772_bind(struct usbnet *dev)
 		goto out;
 
 	rx_ctl = asix_read_rx_ctl(dev);
-	debug("RX_CTL is 0x%04x after all initializations", rx_ctl);
+	debug("RX_CTL is 0x%04x after all initializations\n", rx_ctl);
 
 	rx_ctl = asix_read_medium_status(dev);
-	debug("Medium Status is 0x%04x after all initializations", rx_ctl);
+	debug("Medium Status is 0x%04x after all initializations\n", rx_ctl);
 
 	/* Asix framing packs multiple eth frames into a 2K usb bulk transfer */
 	if (dev->driver_info->flags & FLAG_FRAMING_AX) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
