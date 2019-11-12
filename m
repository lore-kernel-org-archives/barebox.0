Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSLD-0006gZ-25
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 09:20:07 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 12 Nov 2019 10:19:51 +0100
Message-Id: <20191112091956.26628-5-a.fatoum@pengutronix.de>
In-Reply-To: <20191112091956.26628-1-a.fatoum@pengutronix.de>
References: <20191112091956.26628-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 05/10] i2c: stm32: use device_reset_us helper instead of
 open-coding
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The exact sequence is already available in form of device_reset_us. Make
use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/busses/i2c-stm32.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
index 6af55fb3ffda..9f34760e3fdf 100644
--- a/drivers/i2c/busses/i2c-stm32.c
+++ b/drivers/i2c/busses/i2c-stm32.c
@@ -785,7 +785,6 @@ static int __init stm32_i2c_probe(struct device_d *dev)
 	struct resource *iores;
 	struct stm32_i2c *stm32_i2c;
 	struct i2c_platform_data *pdata;
-	struct reset_control *rst;
 	const struct stm32_i2c_setup *setup;
 	struct i2c_timings *timings;
 	int ret;
@@ -799,13 +798,9 @@ static int __init stm32_i2c_probe(struct device_d *dev)
 		return PTR_ERR(stm32_i2c->clk);
 	clk_enable(stm32_i2c->clk);
 
-	rst = reset_control_get(dev, NULL);
-	if (IS_ERR(rst))
-		return PTR_ERR(rst);
-
-	reset_control_assert(rst);
-	udelay(2);
-	reset_control_deassert(rst);
+	ret = device_reset_us(dev, 2);
+	if (ret)
+		return ret;
 
 	ret = dev_get_drvdata(dev, (const void **)&setup);
 	if (ret)
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
