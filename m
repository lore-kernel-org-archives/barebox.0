Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0jkF-0001ub-Bb
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 09:18:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 10:18:36 +0100
Message-Id: <20190304091843.17839-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] i2c: i.MX: Fix FSL_I2C_DFSRR register offset
To: Barebox List <barebox@lists.infradead.org>

4ed5b77 ("i.MX: i2c: Add Vybrid support") introduced regshifts for the
register offsets, but missed to adjust the register offset for the
FSL_I2C_DFSRR register (which exists only on PowerPC). Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 3323f2ccce..40d8527b7f 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -65,7 +65,7 @@
 #define FSL_I2C_I2CR	0x02	/* i2c control */
 #define FSL_I2C_I2SR	0x03	/* i2c status */
 #define FSL_I2C_I2DR	0x04	/* i2c transfer data */
-#define FSL_I2C_DFSRR	0x14	/* i2c digital filter sampling rate */
+#define FSL_I2C_DFSRR	0x05	/* i2c digital filter sampling rate */
 
 #define IMX_I2C_REGSHIFT	2
 #define VF610_I2C_REGSHIFT	0
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
