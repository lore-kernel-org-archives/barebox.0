Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0jkF-0001uZ-Bc
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 09:18:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 10:18:34 +0100
Message-Id: <20190304091843.17839-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] i2c: i.MX: remove unnecesary define
To: Barebox List <barebox@lists.infradead.org>

No need for a define which is used only once.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index f5fc65b06e..508ec1d273 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -49,9 +49,6 @@
 #include <i2c/i2c.h>
 #include <mach/clock.h>
 
-/* This will be the driver name */
-#define DRIVER_NAME "i2c-fsl"
-
 /* Default value */
 #define FSL_I2C_BIT_RATE	100000	/* 100kHz */
 
@@ -724,7 +721,7 @@ static __maybe_unused struct of_device_id imx_i2c_dt_ids[] = {
 
 static struct driver_d i2c_fsl_driver = {
 	.probe	= i2c_fsl_probe,
-	.name	= DRIVER_NAME,
+	.name	= "i2c-fsl",
 #ifndef CONFIG_PPC
 	.of_compatible = DRV_OF_COMPAT(imx_i2c_dt_ids),
 #endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
