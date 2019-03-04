Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0jkM-000201-RX
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 09:19:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 10:18:38 +0100
Message-Id: <20190304091843.17839-6-s.hauer@pengutronix.de>
In-Reply-To: <20190304091843.17839-1-s.hauer@pengutronix.de>
References: <20190304091843.17839-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] i2c: i.MX: Consolidate status polling loops
To: Barebox List <barebox@lists.infradead.org>

We poll for different bits in the status register in different
functions. Instead of repeating the polling loops each time create
a helper function for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 73 +++++++++++++++---------------------
 1 file changed, 31 insertions(+), 42 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 3d872a87d2..e169feb3fc 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -209,46 +209,50 @@ static void i2c_fsl_dump_reg(struct i2c_adapter *adapter)
 		(reg_sr & I2SR_RXAK ? 1 : 0));
 }
 
-static int i2c_fsl_bus_busy(struct i2c_adapter *adapter, int for_busy)
+static int i2c_fsl_poll_status(struct i2c_adapter *adapter, int timeout_ms,
+			       uint8_t set, uint8_t clear)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
 	uint64_t start;
-	unsigned int temp;
+	uint8_t temp;
 
 	start = get_time_ns();
 	while (1) {
 		temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2SR);
-		if (for_busy && (temp & I2SR_IBB))
-			break;
-		if (!for_busy && !(temp & I2SR_IBB))
-			break;
-		if (is_timeout(start, 500 * MSECOND)) {
-			dev_err(&adapter->dev,
-				 "<%s> timeout waiting for I2C bus %s\n",
-				 __func__,for_busy ? "busy" : "not busy");
+		if (temp & set)
+			return 0;
+		if (~temp & clear)
+			return 0;
+
+		if (is_timeout(start, timeout_ms * MSECOND)) {
+			dev_dbg(&adapter->dev,
+				 "timeout waiting for status %s 0x%02x, cur status: 0x%02x\n",
+					set ? "set" : "clear",
+					set ? set : clear,
+					temp);
 			return -EIO;
 		}
 	}
+}
 
-	return 0;
+static int i2c_fsl_bus_busy(struct i2c_adapter *adapter)
+{
+	return i2c_fsl_poll_status(adapter, 500, I2SR_IBB, 0);
+}
+
+static int i2c_fsl_bus_idle(struct i2c_adapter *adapter)
+{
+	return i2c_fsl_poll_status(adapter, 500, 0, I2SR_IBB);
 }
 
 static int i2c_fsl_trx_complete(struct i2c_adapter *adapter)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	uint64_t start;
-
-	start = get_time_ns();
-	while (1) {
-		unsigned int reg = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2SR);
-		if (reg & I2SR_IIF)
-			break;
+	int ret;
 
-		if (is_timeout(start, 100 * MSECOND)) {
-			dev_err(&adapter->dev, "<%s> TXR timeout\n", __func__);
-			return -EIO;
-		}
-	}
+	ret = i2c_fsl_poll_status(adapter, 100, I2SR_IIF, 0);
+	if (ret)
+		return ret;
 
 	fsl_i2c_write_reg(i2c_fsl->hwdata->i2sr_clr_opcode,
 			  i2c_fsl, FSL_I2C_I2SR);
@@ -258,22 +262,7 @@ static int i2c_fsl_trx_complete(struct i2c_adapter *adapter)
 
 static int i2c_fsl_acked(struct i2c_adapter *adapter)
 {
-	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	uint64_t start;
-
-	start = get_time_ns();
-	while (1) {
-		unsigned int reg = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2SR);
-		if (!(reg & I2SR_RXAK))
-			break;
-
-		if (is_timeout(start, MSECOND)) {
-			dev_dbg(&adapter->dev, "<%s> No ACK\n", __func__);
-			return -EIO;
-		}
-	}
-
-	return 0;
+	return i2c_fsl_poll_status(adapter, 1, 0, I2SR_RXAK);
 }
 
 static int i2c_fsl_start(struct i2c_adapter *adapter)
@@ -302,7 +291,7 @@ static int i2c_fsl_start(struct i2c_adapter *adapter)
 	temp |= I2CR_MSTA;
 	fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 
-	result = i2c_fsl_bus_busy(adapter, 1);
+	result = i2c_fsl_bus_busy(adapter);
 	if (result) {
 		result = i2c_recover_bus(&i2c_fsl->adapter);
 		if (result)
@@ -334,7 +323,7 @@ static void i2c_fsl_stop(struct i2c_adapter *adapter)
 	/* adding this delay helps on low bitrates */
 	udelay(i2c_fsl->disable_delay);
 
-	i2c_fsl_bus_busy(adapter, 0);
+	i2c_fsl_bus_idle(adapter);
 }
 
 #ifdef CONFIG_PPC
@@ -550,7 +539,7 @@ static int i2c_fsl_xfer(struct i2c_adapter *adapter,
 			temp |= I2CR_RSTA;
 			fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 
-			result = i2c_fsl_bus_busy(adapter, 1);
+			result = i2c_fsl_bus_busy(adapter);
 			if (result)
 				goto fail0;
 		}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
