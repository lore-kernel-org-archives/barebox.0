Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyuRR-0004F1-4i
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 08:19:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Feb 2019 09:19:44 +0100
Message-Id: <20190227081945.27001-5-s.hauer@pengutronix.de>
In-Reply-To: <20190227081945.27001-1-s.hauer@pengutronix.de>
References: <20190227081945.27001-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] i2c: i.MX: consolidate code
To: Barebox List <barebox@lists.infradead.org>

We have to write to FSL_I2C_I2DR and wait for completion/ack three
times in the code. Instead of open coding it each time create a
helper function for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 54 ++++++++++++++----------------------
 1 file changed, 21 insertions(+), 33 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 739f5b5cfd..7d7cb88dee 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -455,41 +455,39 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 }
 #endif
 
-static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
+static int i2c_fsl_send(struct i2c_adapter *adapter, uint8_t data)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	int i, result;
+	int result;
 
-	if ( !(msgs->flags & I2C_M_DATA_ONLY) ) {
-		dev_dbg(&adapter->dev,
-			"<%s> write slave address: addr=0x%02x\n",
-			__func__, msgs->addr << 1);
+	dev_dbg(&adapter->dev, "<%s> send 0x%02x\n", __func__, data);
 
-		/* write slave address */
-		fsl_i2c_write_reg(msgs->addr << 1, i2c_fsl, FSL_I2C_I2DR);
+	fsl_i2c_write_reg(data, i2c_fsl, FSL_I2C_I2DR);
 
-		result = i2c_fsl_trx_complete(adapter);
-		if (result)
-			return result;
-		result = i2c_fsl_acked(adapter);
+	result = i2c_fsl_trx_complete(adapter);
+	if (result)
+		return result;
+
+	return i2c_fsl_acked(adapter);
+}
+
+static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
+{
+	int i, result;
+
+	if (!(msgs->flags & I2C_M_DATA_ONLY)) {
+		result = i2c_fsl_send(adapter, msgs->addr << 1);
 		if (result)
 			return result;
 	}
 
 	/* write data */
 	for (i = 0; i < msgs->len; i++) {
-		dev_dbg(&adapter->dev,
-			"<%s> write byte: B%d=0x%02X\n",
-			__func__, i, msgs->buf[i]);
-		fsl_i2c_write_reg(msgs->buf[i], i2c_fsl, FSL_I2C_I2DR);
-
-		result = i2c_fsl_trx_complete(adapter);
-		if (result)
-			return result;
-		result = i2c_fsl_acked(adapter);
+		result = i2c_fsl_send(adapter, msgs->buf[i]);
 		if (result)
 			return result;
 	}
+
 	return 0;
 }
 
@@ -503,18 +501,8 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 	fsl_i2c_write_reg(i2c_fsl->hwdata->i2sr_clr_opcode,
 			  i2c_fsl, FSL_I2C_I2SR);
 
-	if ( !(msgs->flags & I2C_M_DATA_ONLY) ) {
-		dev_dbg(&adapter->dev,
-			"<%s> write slave address: addr=0x%02x\n",
-			__func__, (msgs->addr << 1) | 0x01);
-
-		/* write slave address */
-		fsl_i2c_write_reg((msgs->addr << 1) | 0x01, i2c_fsl, FSL_I2C_I2DR);
-
-		result = i2c_fsl_trx_complete(adapter);
-		if (result)
-			return result;
-		result = i2c_fsl_acked(adapter);
+	if (!(msgs->flags & I2C_M_DATA_ONLY)) {
+		result = i2c_fsl_send(adapter, (msgs->addr << 1) | 1);
 		if (result)
 			return result;
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
