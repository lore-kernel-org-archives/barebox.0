Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBQZI-0003hV-Nc
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 13:31:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Sep 2012 15:31:51 +0200
Message-Id: <1347370313-15184-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] I2C: Put I2C devices on their own bus
To: barebox@lists.infradead.org

This patch adds a I2C bus on which the I2C devices and drivers register.
This makes it cleaner as I2C devices won't accidently end up probed by
a platform_device driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c       |   23 +++++++++++++++++++++++
 drivers/mfd/lp3972.c    |    2 +-
 drivers/mfd/mc13xxx.c   |    2 +-
 drivers/mfd/mc34704.c   |    4 ++--
 drivers/mfd/mc34708.c   |    2 +-
 drivers/mfd/mc9sdz60.c  |    2 +-
 drivers/mfd/stmpe-i2c.c |    2 +-
 drivers/mfd/twl4030.c   |    2 +-
 drivers/mfd/twl6030.c   |    2 +-
 include/i2c/i2c.h       |    8 ++++++++
 10 files changed, 40 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 3af2b3e..555722b 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -251,6 +251,7 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	strcpy(client->dev.name, chip->type);
 	client->dev.type_data = client;
 	client->dev.platform_data = chip->platform_data;
+	client->dev.bus = &i2c_bus;
 	client->adapter = adapter;
 	client->addr = chip->addr;
 
@@ -372,3 +373,25 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	return 0;
 }
 EXPORT_SYMBOL(i2c_add_numbered_adapter);
+
+static int i2c_match(struct device_d *dev, struct driver_d *drv)
+{
+	return strcmp(dev->name, drv->name) ? -1 : 0;
+}
+
+static int i2c_probe(struct device_d *dev)
+{
+	return dev->driver->probe(dev);
+}
+
+static void i2c_remove(struct device_d *dev)
+{
+	dev->driver->remove(dev);
+}
+
+struct bus_type i2c_bus = {
+	.name = "i2c",
+	.match = i2c_match,
+	.probe = i2c_probe,
+	.remove = i2c_remove,
+};
diff --git a/drivers/mfd/lp3972.c b/drivers/mfd/lp3972.c
index 0f3093b..c5e6baa 100644
--- a/drivers/mfd/lp3972.c
+++ b/drivers/mfd/lp3972.c
@@ -103,7 +103,7 @@ static struct driver_d lp_driver = {
 
 static int lp_init(void)
 {
-	register_driver(&lp_driver);
+	i2c_register_driver(&lp_driver);
 	return 0;
 }
 
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 42ed960..a62eca8 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -349,7 +349,7 @@ static struct driver_d mc_i2c_driver = {
 
 static int mc_i2c_init(void)
 {
-	return register_driver(&mc_i2c_driver);
+	return i2c_register_driver(&mc_i2c_driver);
 }
 device_initcall(mc_i2c_init);
 #endif
diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
index 0432a98..e22fb38 100644
--- a/drivers/mfd/mc34704.c
+++ b/drivers/mfd/mc34704.c
@@ -134,7 +134,7 @@ static struct driver_d mc34704_driver = {
 
 static int mc34704_init(void)
 {
-	register_driver(&mc34704_driver);
-        return 0;
+	i2c_register_driver(&mc34704_driver);
+	return 0;
 }
 device_initcall(mc34704_init);
diff --git a/drivers/mfd/mc34708.c b/drivers/mfd/mc34708.c
index 75fff7b..f5e08e1 100644
--- a/drivers/mfd/mc34708.c
+++ b/drivers/mfd/mc34708.c
@@ -288,7 +288,7 @@ static struct driver_d mc_spi_driver = {
 
 static int mc_init(void)
 {
-        register_driver(&mc_i2c_driver);
+        i2c_register_driver(&mc_i2c_driver);
         spi_register_driver(&mc_spi_driver);
         return 0;
 }
diff --git a/drivers/mfd/mc9sdz60.c b/drivers/mfd/mc9sdz60.c
index 75d0789..612817d 100644
--- a/drivers/mfd/mc9sdz60.c
+++ b/drivers/mfd/mc9sdz60.c
@@ -146,7 +146,7 @@ static struct driver_d mc_driver = {
 
 static int mc_init(void)
 {
-        register_driver(&mc_driver);
+        i2c_register_driver(&mc_driver);
         return 0;
 }
 
diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index 4af8b7b..12e95c1 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -146,7 +146,7 @@ static struct driver_d stmpe_driver = {
 
 static int stmpe_init(void)
 {
-        register_driver(&stmpe_driver);
+        i2c_register_driver(&stmpe_driver);
         return 0;
 }
 
diff --git a/drivers/mfd/twl4030.c b/drivers/mfd/twl4030.c
index 191c91f..9309765 100644
--- a/drivers/mfd/twl4030.c
+++ b/drivers/mfd/twl4030.c
@@ -53,7 +53,7 @@ static struct driver_d twl_driver = {
 
 static int twl_init(void)
 {
-	register_driver(&twl_driver);
+	i2c_register_driver(&twl_driver);
 	return 0;
 }
 
diff --git a/drivers/mfd/twl6030.c b/drivers/mfd/twl6030.c
index 7ecfed8..01728fd 100644
--- a/drivers/mfd/twl6030.c
+++ b/drivers/mfd/twl6030.c
@@ -49,7 +49,7 @@ static struct driver_d twl_driver = {
 
 static int twl_init(void)
 {
-	register_driver(&twl_driver);
+	i2c_register_driver(&twl_driver);
 	return 0;
 }
 
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index c3e1763..de2a7ea 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -139,4 +139,12 @@ extern int i2c_write_reg(struct i2c_client *client, u32 addr, const u8 *buf, u16
 
 #endif /* DOXYGEN_SHOULD_SKIP_THIS */
 
+extern struct bus_type i2c_bus;
+
+static inline int i2c_register_driver(struct driver_d *drv)
+{
+	drv->bus = &i2c_bus;
+	return register_driver(drv);
+}
+
 #endif /* I2C_I2C_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
