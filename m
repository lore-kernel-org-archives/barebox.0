Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTWbX-0000Vt-Vr
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 14:18:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Mar 2015 15:18:01 +0100
Message-Id: <1425565081-9515-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] PWM: i.MX: register successfully without alias
To: Barebox List <barebox@lists.infradead.org>

When a PWM does not have an of alias generate a name from the
base address so that we can register it successfully.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pwm/pwm-imx.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index fbfc3af..b00bf7e 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -226,21 +226,19 @@ static int imx_pwm_probe(struct device_d *dev)
 	if (IS_ERR(imx->clk_per))
 		return PTR_ERR(imx->clk_per);
 
+	imx->mmio_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(imx->mmio_base))
+		return PTR_ERR(imx->mmio_base);
+
 	imx->chip.ops = &imx_pwm_ops;
 	if (dev->device_node) {
 		imx->chip.devname = of_alias_get(dev->device_node);
-		if (!imx->chip.devname) {
-			dev_err(dev, "no alias for pwm\n");
-			return -EINVAL;
-		}
+		if (!imx->chip.devname)
+			imx->chip.devname = asprintf("pwm_%p", imx->mmio_base);
 	} else {
 		imx->chip.devname = asprintf("pwm%d", dev->id);
 	}
 
-	imx->mmio_base = dev_request_mem_region(dev, 0);
-	if (IS_ERR(imx->mmio_base))
-		return PTR_ERR(imx->mmio_base);
-
 	imx->config = data->config;
 	imx->set_enable = data->set_enable;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
