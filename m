Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyuRR-0004F0-4j
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 08:19:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Feb 2019 09:19:43 +0100
Message-Id: <20190227081945.27001-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] i2c: i.MX: Track stopped status in I2CR_MSTA bit
To: Barebox List <barebox@lists.infradead.org>

We can track the stopped status in the I2CR_MSTA bit, no need for an
extra variable. Also we can call i2c_fsl_stop() instead of open coding
it in i2c_fsl_read().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 43 +++++++++++++-----------------------
 1 file changed, 15 insertions(+), 28 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 74f080dfc9..739f5b5cfd 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -168,7 +168,6 @@ struct fsl_i2c_struct {
 	struct clk		*clk;
 	struct i2c_adapter	adapter;
 	unsigned int 		disable_delay;
-	int			stopped;
 	unsigned int		ifdr;	/* FSL_I2C_IFDR */
 	unsigned int		dfsrr;  /* FSL_I2C_DFSRR */
 	struct i2c_bus_recovery_info rinfo;
@@ -322,8 +321,6 @@ static int i2c_fsl_start(struct i2c_adapter *adapter)
 		return -EAGAIN;
 	}
 
-	i2c_fsl->stopped = 0;
-
 	temp |= I2CR_MTX | I2CR_TXAK;
 	fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 
@@ -335,16 +332,20 @@ static void i2c_fsl_stop(struct i2c_adapter *adapter)
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
 	unsigned int temp = 0;
 
-	if (!i2c_fsl->stopped) {
-		/* Stop I2C transaction */
-		temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
-		temp &= ~(I2CR_MSTA | I2CR_MTX);
-		fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
-		/* wait for the stop condition to be send, otherwise the i2c
-		 * controller is disabled before the STOP is sent completely */
-		i2c_fsl_bus_busy(adapter, 0);
-		i2c_fsl->stopped = 1;
-	}
+	/* Stop I2C transaction */
+	temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
+	if (!(temp & I2CR_MSTA))
+		return;
+
+	temp &= ~(I2CR_MSTA | I2CR_MTX);
+	fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
+	/* wait for the stop condition to be send, otherwise the i2c
+	 * controller is disabled before the STOP is sent completely */
+
+	/* adding this delay helps on low bitrates */
+	udelay(i2c_fsl->disable_delay);
+
+	i2c_fsl_bus_busy(adapter, 0);
 }
 
 #ifdef CONFIG_PPC
@@ -534,21 +535,7 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 			return result;
 
 		if (i == (msgs->len - 1)) {
-			/*
-			 * It must generate STOP before read I2DR to prevent
-			 * controller from generating another clock cycle
-			 */
-			temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
-			temp &= ~(I2CR_MSTA | I2CR_MTX);
-			fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
-
-			/*
-			 * adding this delay helps on low bitrates
-			 */
-			udelay(i2c_fsl->disable_delay);
-
-			i2c_fsl_bus_busy(adapter, 0);
-			i2c_fsl->stopped = 1;
+			i2c_fsl_stop(adapter);
 		} else if (i == (msgs->len - 2)) {
 			temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 			temp |= I2CR_TXAK;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
