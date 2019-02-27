Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyuRR-0004F2-5A
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 08:19:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Feb 2019 09:19:45 +0100
Message-Id: <20190227081945.27001-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] i2c: i.MX: fix variable name
To: Barebox List <barebox@lists.infradead.org>

i2c_fsl_write() and i2c_fsl_read() take exactly one i2c message, not
multiple ones, hence rename the variable from "msgs" to "msg".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 7d7cb88dee..f5fc65b06e 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -471,19 +471,19 @@ static int i2c_fsl_send(struct i2c_adapter *adapter, uint8_t data)
 	return i2c_fsl_acked(adapter);
 }
 
-static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
+static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msg)
 {
 	int i, result;
 
-	if (!(msgs->flags & I2C_M_DATA_ONLY)) {
-		result = i2c_fsl_send(adapter, msgs->addr << 1);
+	if (!(msg->flags & I2C_M_DATA_ONLY)) {
+		result = i2c_fsl_send(adapter, msg->addr << 1);
 		if (result)
 			return result;
 	}
 
 	/* write data */
-	for (i = 0; i < msgs->len; i++) {
-		result = i2c_fsl_send(adapter, msgs->buf[i]);
+	for (i = 0; i < msg->len; i++) {
+		result = i2c_fsl_send(adapter, msg->buf[i]);
 		if (result)
 			return result;
 	}
@@ -491,7 +491,7 @@ static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 	return 0;
 }
 
-static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
+static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msg)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
 	int i, result;
@@ -501,8 +501,8 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 	fsl_i2c_write_reg(i2c_fsl->hwdata->i2sr_clr_opcode,
 			  i2c_fsl, FSL_I2C_I2SR);
 
-	if (!(msgs->flags & I2C_M_DATA_ONLY)) {
-		result = i2c_fsl_send(adapter, (msgs->addr << 1) | 1);
+	if (!(msg->flags & I2C_M_DATA_ONLY)) {
+		result = i2c_fsl_send(adapter, (msg->addr << 1) | 1);
 		if (result)
 			return result;
 	}
@@ -510,29 +510,29 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 	/* setup bus to read data */
 	temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 	temp &= ~I2CR_MTX;
-	if (msgs->len - 1)
+	if (msg->len - 1)
 		temp &= ~I2CR_TXAK;
 	fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 
 	fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2DR); /* dummy read */
 
 	/* read data */
-	for (i = 0; i < msgs->len; i++) {
+	for (i = 0; i < msg->len; i++) {
 		result = i2c_fsl_trx_complete(adapter);
 		if (result)
 			return result;
 
-		if (i == (msgs->len - 1)) {
+		if (i == (msg->len - 1)) {
 			i2c_fsl_stop(adapter);
-		} else if (i == (msgs->len - 2)) {
+		} else if (i == (msg->len - 2)) {
 			temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 			temp |= I2CR_TXAK;
 			fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 		}
-		msgs->buf[i] = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2DR);
+		msg->buf[i] = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2DR);
 
 		dev_dbg(&adapter->dev, "<%s> read byte: B%d=0x%02X\n",
-			__func__, i, msgs->buf[i]);
+			__func__, i, msg->buf[i]);
 	}
 	return 0;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
