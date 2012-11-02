Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUDiR-00020K-GP
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 09:39:05 +0000
Received: from mail247.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1DF96104F055
 for <barebox@lists.infradead.org>; Fri,  2 Nov 2012 10:46:12 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  2 Nov 2012 10:36:49 +0100
Message-Id: <1351849012-26236-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121102092718.GO29599@game.jcrosoft.org>
References: <20121102092718.GO29599@game.jcrosoft.org>
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
Subject: [PATCH 1/4] i2c: adapter: register it's own device
To: barebox@lists.infradead.org

so we can show the this of i2c busses
set the bus device as parent of all devices.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/i2c/busses/i2c-imx.c  |   20 ++++++++++----------
 drivers/i2c/busses/i2c-omap.c |   30 +++++++++++++++---------------
 drivers/i2c/i2c.c             |   17 ++++++++++++++++-
 include/i2c/i2c.h             |    2 +-
 4 files changed, 42 insertions(+), 27 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index a1012a7..7f9a2dc 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -154,7 +154,7 @@ static int i2c_fsl_bus_busy(struct i2c_adapter *adapter, int for_busy)
 		if (!for_busy && !(temp & I2SR_IBB))
 			break;
 		if (is_timeout(start, 500 * MSECOND)) {
-			dev_err(adapter->dev,
+			dev_err(&adapter->dev,
 				 "<%s> timeout waiting for I2C bus %s\n",
 				 __func__,for_busy ? "busy" : "not busy");
 			return -EIO;
@@ -177,7 +177,7 @@ static int i2c_fsl_trx_complete(struct i2c_adapter *adapter)
 			break;
 
 		if (is_timeout(start, 100 * MSECOND)) {
-			dev_err(adapter->dev, "<%s> TXR timeout\n", __func__);
+			dev_err(&adapter->dev, "<%s> TXR timeout\n", __func__);
 			return -EIO;
 		}
 	}
@@ -199,7 +199,7 @@ static int i2c_fsl_acked(struct i2c_adapter *adapter)
 			break;
 
 		if (is_timeout(start, MSECOND)) {
-			dev_dbg(adapter->dev, "<%s> No ACK\n", __func__);
+			dev_dbg(&adapter->dev, "<%s> No ACK\n", __func__);
 			return -EIO;
 		}
 	}
@@ -368,9 +368,9 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 		(500000U * i2c_clk_div[i][0] + (i2c_clk_rate / 2) - 1) /
 		(i2c_clk_rate / 2);
 
-	dev_dbg(i2c_fsl->adapter.dev, "<%s> I2C_CLK=%d, REQ DIV=%d\n",
+	dev_dbg(&i2c_fsl->adapter.dev, "<%s> I2C_CLK=%d, REQ DIV=%d\n",
 		__func__, i2c_clk_rate, div);
-	dev_dbg(i2c_fsl->adapter.dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
+	dev_dbg(&i2c_fsl->adapter.dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
 		__func__, i2c_clk_div[i][1], i2c_clk_div[i][0]);
 }
 #endif
@@ -382,7 +382,7 @@ static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 	int i, result;
 
 	if ( !(msgs->flags & I2C_M_DATA_ONLY) ) {
-		dev_dbg(adapter->dev,
+		dev_dbg(&adapter->dev,
 			"<%s> write slave address: addr=0x%02x\n",
 			__func__, msgs->addr << 1);
 
@@ -399,7 +399,7 @@ static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 
 	/* write data */
 	for (i = 0; i < msgs->len; i++) {
-		dev_dbg(adapter->dev,
+		dev_dbg(&adapter->dev,
 			"<%s> write byte: B%d=0x%02X\n",
 			__func__, i, msgs->buf[i]);
 		writeb(msgs->buf[i], base + FSL_I2C_I2DR);
@@ -425,7 +425,7 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 	writeb(0x0, base + FSL_I2C_I2SR);
 
 	if ( !(msgs->flags & I2C_M_DATA_ONLY) ) {
-		dev_dbg(adapter->dev,
+		dev_dbg(&adapter->dev,
 			"<%s> write slave address: addr=0x%02x\n",
 			__func__, (msgs->addr << 1) | 0x01);
 
@@ -478,7 +478,7 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 		}
 		msgs->buf[i] = readb(base + FSL_I2C_I2DR);
 
-		dev_dbg(adapter->dev, "<%s> read byte: B%d=0x%02X\n",
+		dev_dbg(&adapter->dev, "<%s> read byte: B%d=0x%02X\n",
 			__func__, i, msgs->buf[i]);
 	}
 	return 0;
@@ -544,7 +544,7 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 	/* Setup i2c_fsl driver structure */
 	i2c_fsl->adapter.master_xfer = i2c_fsl_xfer;
 	i2c_fsl->adapter.nr = pdev->id;
-	i2c_fsl->adapter.dev = pdev;
+	i2c_fsl->adapter.dev.parent = pdev;
 	i2c_fsl->base = dev_request_mem_region(pdev, 0);
 	i2c_fsl->dfsrr = -1;
 
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 24961eb..f371875 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -318,7 +318,7 @@ static int omap_i2c_init(struct omap_i2c_struct *i2c_omap)
 		while (!(omap_i2c_read_reg(i2c_omap, OMAP_I2C_SYSS_REG) &
 			 SYSS_RESETDONE_MASK)) {
 			if (is_timeout(start, MSECOND)) {
-				dev_warn(i2c_omap->adapter.dev, "timeout waiting "
+				dev_warn(&i2c_omap->adapter.dev, "timeout waiting "
 						"for controller reset\n");
 				return -ETIMEDOUT;
 			}
@@ -453,7 +453,7 @@ static int omap_i2c_wait_for_bb(struct i2c_adapter *adapter)
 	start = get_time_ns();
 	while (omap_i2c_read_reg(i2c_omap, OMAP_I2C_STAT_REG) & OMAP_I2C_STAT_BB) {
 		if (is_timeout(start, MSECOND)) {
-			dev_warn(adapter->dev, "timeout waiting for bus ready\n");
+			dev_warn(&adapter->dev, "timeout waiting for bus ready\n");
 			return -ETIMEDOUT;
 		}
 	}
@@ -476,9 +476,9 @@ omap_i2c_isr(struct omap_i2c_struct *dev)
 
 	bits = omap_i2c_read_reg(dev, OMAP_I2C_IE_REG);
 	while ((stat = (omap_i2c_read_reg(dev, OMAP_I2C_STAT_REG))) & bits) {
-		dev_dbg(dev->adapter.dev, "IRQ (ISR = 0x%04x)\n", stat);
+		dev_dbg(&dev->adapter.dev, "IRQ (ISR = 0x%04x)\n", stat);
 		if (count++ == 100) {
-			dev_warn(dev->adapter.dev, "Too much work in one IRQ\n");
+			dev_warn(&dev->adapter.dev, "Too much work in one IRQ\n");
 			break;
 		}
 
@@ -499,7 +499,7 @@ complete:
 					   OMAP_I2C_CON_STP);
 		}
 		if (stat & OMAP_I2C_STAT_AL) {
-			dev_err(dev->adapter.dev, "Arbitration lost\n");
+			dev_err(&dev->adapter.dev, "Arbitration lost\n");
 			err |= OMAP_I2C_STAT_AL;
 		}
 		if (stat & (OMAP_I2C_STAT_ARDY | OMAP_I2C_STAT_NACK |
@@ -536,11 +536,11 @@ complete:
 					}
 				} else {
 					if (stat & OMAP_I2C_STAT_RRDY)
-						dev_err(dev->adapter.dev,
+						dev_err(&dev->adapter.dev,
 							"RRDY IRQ while no data"
 								" requested\n");
 					if (stat & OMAP_I2C_STAT_RDR)
-						dev_err(dev->adapter.dev,
+						dev_err(&dev->adapter.dev,
 							"RDR IRQ while no data"
 								" requested\n");
 					break;
@@ -577,11 +577,11 @@ complete:
 					}
 				} else {
 					if (stat & OMAP_I2C_STAT_XRDY)
-						dev_err(dev->adapter.dev,
+						dev_err(&dev->adapter.dev,
 							"XRDY IRQ while no "
 							"data to send\n");
 					if (stat & OMAP_I2C_STAT_XDR)
-						dev_err(dev->adapter.dev,
+						dev_err(&dev->adapter.dev,
 							"XDR IRQ while no "
 							"data to send\n");
 					break;
@@ -613,11 +613,11 @@ complete:
 			continue;
 		}
 		if (stat & OMAP_I2C_STAT_ROVR) {
-			dev_err(dev->adapter.dev, "Receive overrun\n");
+			dev_err(&dev->adapter.dev, "Receive overrun\n");
 			dev->cmd_err |= OMAP_I2C_STAT_ROVR;
 		}
 		if (stat & OMAP_I2C_STAT_XUDF) {
-			dev_err(dev->adapter.dev, "Transmit underflow\n");
+			dev_err(&dev->adapter.dev, "Transmit underflow\n");
 			dev->cmd_err |= OMAP_I2C_STAT_XUDF;
 		}
 	}
@@ -639,7 +639,7 @@ static int omap_i2c_xfer_msg(struct i2c_adapter *adapter,
 	int ret = 0;
 
 
-	dev_dbg(adapter->dev, "addr: 0x%04x, len: %d, flags: 0x%x, stop: %d\n",
+	dev_dbg(&adapter->dev, "addr: 0x%04x, len: %d, flags: 0x%x, stop: %d\n",
 		msg->addr, msg->len, msg->flags, stop);
 
 	if (msg->len == 0)
@@ -687,7 +687,7 @@ static int omap_i2c_xfer_msg(struct i2c_adapter *adapter,
 
 			/* Let the user know if i2c is in a bad state */
 			if (is_timeout(start, MSECOND)) {
-				dev_err(adapter->dev, "controller timed out "
+				dev_err(&adapter->dev, "controller timed out "
 				"waiting for start condition to finish\n");
 				return -ETIMEDOUT;
 			}
@@ -707,7 +707,7 @@ static int omap_i2c_xfer_msg(struct i2c_adapter *adapter,
 	while (ret){
 		ret = omap_i2c_isr(i2c_omap);
 		if (is_timeout(start, MSECOND)) {
-				dev_err(adapter->dev,
+				dev_err(&adapter->dev,
 				"timed out on polling for "
 				"open i2c message handling\n");
 				return -ETIMEDOUT;
@@ -835,7 +835,7 @@ i2c_omap_probe(struct device_d *pdev)
 
 	i2c_omap->adapter.master_xfer	= omap_i2c_xfer,
 	i2c_omap->adapter.nr = pdev->id;
-	i2c_omap->adapter.dev = pdev;
+	i2c_omap->adapter.dev.parent = pdev;
 
 	/* i2c device drivers may be active on return from add_adapter() */
 	r = i2c_add_numbered_adapter(&i2c_omap->adapter);
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 27fd256..3af5c32 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -80,7 +80,7 @@ int i2c_transfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
 	 */
 
 	for (ret = 0; ret < num; ret++) {
-		dev_dbg(adap->dev, "master_xfer[%d] %c, addr=0x%02x, "
+		dev_dbg(&adap->dev, "master_xfer[%d] %c, addr=0x%02x, "
 			"len=%d\n", ret, (msgs[ret].flags & I2C_M_RD)
 			? 'R' : 'W', msgs[ret].addr, msgs[ret].len);
 	}
@@ -256,6 +256,9 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	client->adapter = adapter;
 	client->addr = chip->addr;
 
+	client->dev.parent = &adapter->dev;
+	dev_add_child(client->dev.parent, &client->dev);
+
 	status = register_device(&client->dev);
 
 #if 0
@@ -363,9 +366,21 @@ struct i2c_adapter *i2c_get_adapter(int busnum)
  */
 int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 {
+	int ret;
+
 	if (i2c_get_adapter(adapter->nr))
 		return -EBUSY;
 
+	adapter->dev.id = adapter->nr;
+	strcpy(adapter->dev.name, "i2c");
+
+	if (adapter->dev.parent)
+		dev_add_child(adapter->dev.parent, &adapter->dev);
+
+	ret = register_device(&adapter->dev);
+	if (ret)
+		return ret;
+
 	list_add_tail(&adapter->list, &adapter_list);
 
 	/* populate children from any i2c device tables */
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index de2a7ea..5021dd4 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -66,7 +66,7 @@ struct i2c_msg {
  *
  */
 struct i2c_adapter {
-	struct device_d		*dev;	/* ptr to device */
+	struct device_d		dev;	/* ptr to device */
 	int			nr;	/* bus number */
 	int (*master_xfer)(struct i2c_adapter *adap, struct i2c_msg *msgs, int num);
 	struct list_head	list;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
