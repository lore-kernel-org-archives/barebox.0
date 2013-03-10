Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEZx0-0005t6-7L
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 06:41:45 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 10 Mar 2013 10:41:34 +0400
Message-Id: <1362897695-3936-5-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362897695-3936-1-git-send-email-shc_work@mail.ru>
References: <1362897695-3936-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 5/6] I2C: Rename i2c_register_driver() for using with
 register_driver_macro()
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/eeprom/at24.c   | 2 +-
 drivers/input/qt1070.c  | 2 +-
 drivers/mfd/lp3972.c    | 2 +-
 drivers/mfd/mc13xxx.c   | 2 +-
 drivers/mfd/mc34704.c   | 2 +-
 drivers/mfd/mc34708.c   | 2 +-
 drivers/mfd/mc9sdz60.c  | 2 +-
 drivers/mfd/stmpe-i2c.c | 2 +-
 drivers/mfd/twl4030.c   | 2 +-
 drivers/mfd/twl6030.c   | 2 +-
 include/i2c/i2c.h       | 2 +-
 11 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 6f0133a..4b2afc4 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -454,7 +454,7 @@ static struct driver_d at24_driver = {
 
 static int at24_init(void)
 {
-	i2c_register_driver(&at24_driver);
+	i2c_driver_register(&at24_driver);
 	return 0;
 }
 device_initcall(at24_init);
diff --git a/drivers/input/qt1070.c b/drivers/input/qt1070.c
index ebe2b81..43ea882 100644
--- a/drivers/input/qt1070.c
+++ b/drivers/input/qt1070.c
@@ -291,7 +291,7 @@ static struct driver_d qt1070_driver = {
 
 static int qt1070_init(void)
 {
-	i2c_register_driver(&qt1070_driver);
+	i2c_driver_register(&qt1070_driver);
 	return 0;
 }
 device_initcall(qt1070_init);
diff --git a/drivers/mfd/lp3972.c b/drivers/mfd/lp3972.c
index 082ecaa..ee794df 100644
--- a/drivers/mfd/lp3972.c
+++ b/drivers/mfd/lp3972.c
@@ -99,7 +99,7 @@ static struct driver_d lp_driver = {
 
 static int lp_init(void)
 {
-	i2c_register_driver(&lp_driver);
+	i2c_driver_register(&lp_driver);
 	return 0;
 }
 
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 359b118..91c874f 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -356,7 +356,7 @@ static struct driver_d mc_i2c_driver = {
 
 static int mc_i2c_init(void)
 {
-	return i2c_register_driver(&mc_i2c_driver);
+	return i2c_driver_register(&mc_i2c_driver);
 }
 device_initcall(mc_i2c_init);
 #endif
diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
index 276b723..9afab07 100644
--- a/drivers/mfd/mc34704.c
+++ b/drivers/mfd/mc34704.c
@@ -130,7 +130,7 @@ static struct driver_d mc34704_driver = {
 
 static int mc34704_init(void)
 {
-	i2c_register_driver(&mc34704_driver);
+	i2c_driver_register(&mc34704_driver);
 	return 0;
 }
 device_initcall(mc34704_init);
diff --git a/drivers/mfd/mc34708.c b/drivers/mfd/mc34708.c
index fbd6891..63db1e1 100644
--- a/drivers/mfd/mc34708.c
+++ b/drivers/mfd/mc34708.c
@@ -275,7 +275,7 @@ static struct driver_d mc_i2c_driver = {
 
 static int mc_i2c_init(void)
 {
-	return i2c_register_driver(&mc_i2c_driver);
+	return i2c_driver_register(&mc_i2c_driver);
 }
 
 device_initcall(mc_i2c_init);
diff --git a/drivers/mfd/mc9sdz60.c b/drivers/mfd/mc9sdz60.c
index 76c62e3..0d2c56b 100644
--- a/drivers/mfd/mc9sdz60.c
+++ b/drivers/mfd/mc9sdz60.c
@@ -142,7 +142,7 @@ static struct driver_d mc_driver = {
 
 static int mc_init(void)
 {
-        i2c_register_driver(&mc_driver);
+        i2c_driver_register(&mc_driver);
         return 0;
 }
 
diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index 9e4bbcc..d87620e 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -147,7 +147,7 @@ static struct driver_d stmpe_driver = {
 
 static int stmpe_init(void)
 {
-        i2c_register_driver(&stmpe_driver);
+        i2c_driver_register(&stmpe_driver);
         return 0;
 }
 
diff --git a/drivers/mfd/twl4030.c b/drivers/mfd/twl4030.c
index 9309765..3b4c661 100644
--- a/drivers/mfd/twl4030.c
+++ b/drivers/mfd/twl4030.c
@@ -53,7 +53,7 @@ static struct driver_d twl_driver = {
 
 static int twl_init(void)
 {
-	i2c_register_driver(&twl_driver);
+	i2c_driver_register(&twl_driver);
 	return 0;
 }
 
diff --git a/drivers/mfd/twl6030.c b/drivers/mfd/twl6030.c
index 6b872ab..0645d3c 100644
--- a/drivers/mfd/twl6030.c
+++ b/drivers/mfd/twl6030.c
@@ -70,7 +70,7 @@ static struct driver_d twl_driver = {
 
 static int twl_init(void)
 {
-	i2c_register_driver(&twl_driver);
+	i2c_driver_register(&twl_driver);
 	return 0;
 }
 
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index dc5e5fc..7b59a51 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -151,7 +151,7 @@ extern int i2c_write_reg(struct i2c_client *client, u32 addr, const u8 *buf, u16
 
 extern struct bus_type i2c_bus;
 
-static inline int i2c_register_driver(struct driver_d *drv)
+static inline int i2c_driver_register(struct driver_d *drv)
 {
 	drv->bus = &i2c_bus;
 	return register_driver(drv);
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
