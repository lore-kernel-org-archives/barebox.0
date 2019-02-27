Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyuRg-0004Yj-Ud
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 08:20:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Feb 2019 09:19:42 +0100
Message-Id: <20190227081945.27001-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] i2c: i.MX: move disabling of controller out of
 i2c_fsl_stop
To: Barebox List <barebox@lists.infradead.org>

Move disabling of the controller out of i2c_fsl_stop(). This makes the
function reusable in other places in the next patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 72d9fe5845..74f080dfc9 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -345,10 +345,6 @@ static void i2c_fsl_stop(struct i2c_adapter *adapter)
 		i2c_fsl_bus_busy(adapter, 0);
 		i2c_fsl->stopped = 1;
 	}
-
-	/* Disable I2C controller, and force our state to stopped */
-	temp = i2c_fsl->hwdata->i2cr_ien_opcode ^ I2CR_IEN,
-	fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 }
 
 #ifdef CONFIG_PPC
@@ -609,6 +605,10 @@ fail0:
 	/* Stop I2C transfer */
 	i2c_fsl_stop(adapter);
 
+	/* Disable I2C controller, and force our state to stopped */
+	temp = i2c_fsl->hwdata->i2cr_ien_opcode ^ I2CR_IEN,
+	fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
+
 	return (result < 0) ? result : num;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
