Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyuRR-0004Ez-4g
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 08:19:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Feb 2019 09:19:41 +0100
Message-Id: <20190227081945.27001-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] i2c: i.MX: Do not call i2c_fsl_bus_busy twice
To: Barebox List <barebox@lists.infradead.org>

In i2c_fsl_stop() we call i2c_fsl_bus_busy() a second time when it
fails. If it fails once it won't succeed the second time, so drop
the second call.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 67937da73a..72d9fe5845 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -342,10 +342,6 @@ static void i2c_fsl_stop(struct i2c_adapter *adapter)
 		fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 		/* wait for the stop condition to be send, otherwise the i2c
 		 * controller is disabled before the STOP is sent completely */
-		i2c_fsl->stopped = i2c_fsl_bus_busy(adapter, 0) ? 0 : 1;
-	}
-
-	if (!i2c_fsl->stopped) {
 		i2c_fsl_bus_busy(adapter, 0);
 		i2c_fsl->stopped = 1;
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
