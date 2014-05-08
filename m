Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WiIoE-0000kI-MY
 for barebox@lists.infradead.org; Thu, 08 May 2014 07:32:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  8 May 2014 09:31:37 +0200
Message-Id: <1399534299-27051-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399534299-27051-1-git-send-email-s.hauer@pengutronix.de>
References: <1399534299-27051-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] mfd: mc13xxx: move to coredevice_initcall
To: barebox@lists.infradead.org

The PMIC is often a dependency for other devices, so make sure
it's initialized early. While at it, merge the spi/i2c registration
into a single initcall and use IS_ENABLED instead of ifdefs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/mc13xxx.c | 32 +++++++++++++++++++++-----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 9842c56..9e86fc3 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -397,7 +397,6 @@ static __maybe_unused struct of_device_id mc13xxx_dt_ids[] = {
 	{ }
 };
 
-#ifdef CONFIG_I2C
 static struct driver_d mc13xxx_i2c_driver = {
 	.name		= "mc13xxx-i2c",
 	.probe		= mc13xxx_probe,
@@ -405,19 +404,30 @@ static struct driver_d mc13xxx_i2c_driver = {
 	.of_compatible	= DRV_OF_COMPAT(mc13xxx_dt_ids),
 };
 
-static int __init mc13xxx_i2c_init(void)
-{
-	return i2c_driver_register(&mc13xxx_i2c_driver);
-}
-device_initcall(mc13xxx_i2c_init);
-#endif
-
-#ifdef CONFIG_SPI
 static struct driver_d mc13xxx_spi_driver = {
 	.name		= "mc13xxx-spi",
 	.probe		= mc13xxx_probe,
 	.id_table	= mc13xxx_ids,
 	.of_compatible	= DRV_OF_COMPAT(mc13xxx_dt_ids),
 };
-device_spi_driver(mc13xxx_spi_driver);
-#endif
+
+static int __init mc13xxx_init(void)
+{
+	int err_spi = 0, err_i2c = 0;
+
+	if (IS_ENABLED(CONFIG_I2C))
+		err_spi = i2c_driver_register(&mc13xxx_i2c_driver);
+
+	if (IS_ENABLED(CONFIG_SPI))
+		err_i2c = spi_driver_register(&mc13xxx_spi_driver);
+
+	if (err_spi)
+		return err_spi;
+
+	if (err_i2c)
+		return err_i2c;
+
+	return 0;
+
+}
+coredevice_initcall(mc13xxx_init);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
