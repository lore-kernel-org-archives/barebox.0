Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBQZI-0003hT-NV
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 13:31:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Sep 2012 15:31:49 +0200
Message-Id: <1347370313-15184-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347370313-15184-1-git-send-email-s.hauer@pengutronix.de>
References: <1347370313-15184-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] mfd mc13xxx: Separate I2C and SPI probe
To: barebox@lists.infradead.org

Upcoming patches will put I2C/SPI on their own busses with
spi_register_driver / i2c_register_driver which will only
be available if the subsystem is enabled. We could provide
static inlines, but it wouldn't make much sense to compile
a spi/i2c driver if the corresponding subsystem is disabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/mc13xxx.c |   28 ++++++++++++++++++----------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 704446d..58394a7 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -336,31 +336,39 @@ static int mc_probe(struct device_d *dev, enum mc13xxx_mode mode)
 	return 0;
 }
 
+#ifdef CONFIG_I2C
 static int mc_i2c_probe(struct device_d *dev)
 {
 	return mc_probe(dev, MC13XXX_MODE_I2C);
 }
 
-static int mc_spi_probe(struct device_d *dev)
-{
-	return mc_probe(dev, MC13XXX_MODE_SPI);
-}
-
 static struct driver_d mc_i2c_driver = {
 	.name  = "mc13xxx-i2c",
 	.probe = mc_i2c_probe,
 };
 
+static int mc_i2c_init(void)
+{
+	return register_driver(&mc_i2c_driver);
+}
+device_initcall(mc_i2c_init);
+#endif
+
+#ifdef CONFIG_SPI
+static int mc_spi_probe(struct device_d *dev)
+{
+	return mc_probe(dev, MC13XXX_MODE_SPI);
+}
+
 static struct driver_d mc_spi_driver = {
 	.name  = "mc13xxx-spi",
 	.probe = mc_spi_probe,
 };
 
-static int mc_init(void)
+static int mc_spi_init(void)
 {
-        register_driver(&mc_i2c_driver);
-        register_driver(&mc_spi_driver);
-        return 0;
+	return register_driver(&mc_spi_driver);
 }
 
-device_initcall(mc_init);
+device_initcall(mc_spi_init);
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
