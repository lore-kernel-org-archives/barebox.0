Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0jkF-0001ua-Ba
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 09:18:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 10:18:37 +0100
Message-Id: <20190304091843.17839-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] i2c: i.MX: remove unnecessary ifdef
To: Barebox List <barebox@lists.infradead.org>

dev_dbg is a no-op when debugging is disabled, so no need for extra ifdefs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 40d8527b7f..3d872a87d2 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -187,7 +187,6 @@ static inline unsigned char fsl_i2c_read_reg(struct fsl_i2c_struct *i2c_fsl,
 	return readb(i2c_fsl->base + reg);
 }
 
-#ifdef CONFIG_I2C_DEBUG
 static void i2c_fsl_dump_reg(struct i2c_adapter *adapter)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
@@ -209,13 +208,6 @@ static void i2c_fsl_dump_reg(struct i2c_adapter *adapter)
 		(reg_sr & I2SR_SRW  ? 1 : 0), (reg_sr & I2SR_IIF  ? 1 : 0),
 		(reg_sr & I2SR_RXAK ? 1 : 0));
 }
-#else
-static inline void i2c_fsl_dump_reg(struct i2c_adapter *adapter)
-{
-	return;
-}
-#endif
-
 
 static int i2c_fsl_bus_busy(struct i2c_adapter *adapter, int for_busy)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
