Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0jkF-0001uc-BY
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 09:18:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 10:18:41 +0100
Message-Id: <20190304091843.17839-9-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] i2c: i.MX: Read clock-frequency from device tree
To: Barebox List <barebox@lists.infradead.org>

We speed up the clock frequency only if probed via platform_data.
Additionally honour the "clock-frequency" property.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 9ce6bb7533..409c178e6a 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -49,9 +49,6 @@
 #include <i2c/i2c.h>
 #include <mach/clock.h>
 
-/* Default value */
-#define FSL_I2C_BIT_RATE	100000	/* 100kHz */
-
 /* IMX I2C registers:
  * the I2C register offset is different between SoCs,
  * to provid support for all these chips, split the
@@ -611,6 +608,7 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 	struct fsl_i2c_struct *i2c_fsl;
 	struct i2c_platform_data *pdata;
 	int ret;
+	int bitrate;
 
 	pdata = pdev->platform_data;
 
@@ -652,10 +650,12 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 	i2c_fsl->dfsrr = -1;
 
 	/* Set up clock divider */
+	bitrate = 100000;
+	of_property_read_u32(pdev->device_node, "clock-frequency", &bitrate);
 	if (pdata && pdata->bitrate)
-		i2c_fsl_set_clk(i2c_fsl, pdata->bitrate);
-	else
-		i2c_fsl_set_clk(i2c_fsl, FSL_I2C_BIT_RATE);
+		bitrate = pdata->bitrate;
+
+	i2c_fsl_set_clk(i2c_fsl, bitrate);
 
 	/* Set up chip registers to defaults */
 	fsl_i2c_write_reg(i2c_fsl->hwdata->i2cr_ien_opcode ^ I2CR_IEN,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
