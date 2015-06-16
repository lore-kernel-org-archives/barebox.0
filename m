Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4pTu-00017S-09
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 11:56:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z4pTP-0006RE-Bw
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 13:56:11 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z4pTN-0004US-IG
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 13:56:09 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 16 Jun 2015 13:56:06 +0200
Message-Id: <1434455769-17216-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1434455769-17216-1-git-send-email-jbe@pengutronix.de>
References: <1434455769-17216-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/6] MFD/DA9053: adapt driver to the current reset source
 framework
To: barebox@lists.infradead.org

Since commit 106956783018635cef9a35bcb109073513d1ead4 barebox has a generic
framework to provide the reset reason to upper layers. Use it in the
DA9053 driver as well.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/mfd/Kconfig  |  6 ++++
 drivers/mfd/da9053.c | 79 ++++++++++++++++++++++------------------------------
 2 files changed, 40 insertions(+), 45 deletions(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 3d230f1..8c8f537 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -8,6 +8,12 @@ config MFD_DA9053
 	depends on I2C
 	bool "DA9053 PMIC driver"
 
+config MFD_DA9053_RESET_SOURCE
+	depends on MFD_DA9053
+	bool "Reset source provider"
+	help
+	  This PMIC unit can provide the reset reason.
+
 config MFD_LP3972
 	depends on I2C
 	bool "LP3972 driver"
diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index 4bce8cc..9294a6a 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -25,6 +25,7 @@
 #include <i2c/i2c.h>
 
 #include <asm/byteorder.h>
+#include <reset_source.h>
 
 #define DRIVERNAME		"da9053"
 
@@ -92,7 +93,6 @@ struct da9053_priv {
 	struct watchdog		wd;
 	struct i2c_client	*client;
 	unsigned int		param_shutdown;
-	unsigned int		param_faultlog;
 };
 
 #define cdev_to_da9053_priv(x)	container_of(x, struct da9053_priv, cdev)
@@ -178,45 +178,6 @@ static struct file_operations da9053_fops = {
 	.read	= da9053_read,
 };
 
-static int da9053_set_faultlog(struct param_d *param, void *priv)
-{
-	struct da9053_priv *da9053 = priv;
-	int ret;
-	u8 val;
-
-	val = da9053->param_faultlog & 0xff;
-	if (val) {
-		ret = da9053_reg_write(da9053, DA9053_FAULTLOG_REG, val);
-		if (ret < 0)
-			return ret;
-
-		ret = da9053_park(da9053);
-		if (ret < 0)
-			return ret;
-	}
-
-	return 0;
-}
-
-static int da9053_get_faultlog(struct param_d *param, void *priv)
-{
-	struct da9053_priv *da9053 = priv;
-	int ret;
-	u8 val;
-
-	ret = da9053_reg_read(da9053, DA9053_FAULTLOG_REG, &val);
-	if (ret < 0)
-		return ret;
-
-	ret = da9053_park(da9053);
-	if (ret < 0)
-		return ret;
-
-	da9053->param_faultlog = val;
-
-	return 0;
-}
-
 static int da9053_set_shutdown(struct param_d *param, void *priv)
 {
 	struct da9053_priv *da9053 = priv;
@@ -308,6 +269,37 @@ static int da9053_set_timeout(struct watchdog *wd, unsigned timeout)
 	return 0;
 }
 
+static void da9053_detect_reset_source(struct da9053_priv *da9053)
+{
+	int ret;
+	u8 val;
+
+	ret = da9053_reg_read(da9053, DA9053_FAULTLOG_REG, &val);
+	if (ret < 0)
+		return;
+
+	ret = da9053_park(da9053);
+	if (ret < 0)
+		return;
+
+	if (val & DA9053_FAULTLOG_TWDERROR) {
+		reset_source_set(RESET_WDG);
+		return;
+	}
+
+	if (val & DA9053_FAULTLOG_VDDFAULT) {
+		reset_source_set(RESET_POR);
+		return;
+	}
+
+	if (val & DA9053_FAULTLOG_NSDSET) {
+		reset_source_set(RESET_RST);
+		return;
+	}
+
+	/* else keep the default 'unknown' state */
+}
+
 static int da9053_probe(struct device_d *dev)
 {
 	struct da9053_priv *da9053;
@@ -327,11 +319,6 @@ static int da9053_probe(struct device_d *dev)
 	if (ret < 0)
 		return ret;
 
-	p = dev_add_param_int(dev, "faultlog", da9053_set_faultlog, da9053_get_faultlog,
-			      &da9053->param_faultlog, "0x%02x", da9053);
-	if (IS_ERR(p))
-		return PTR_ERR(p);
-
 	p = dev_add_param_bool(dev, "shutdown", da9053_set_shutdown, NULL,
 			       &da9053->param_shutdown, da9053);
 	if (IS_ERR(p))
@@ -343,6 +330,8 @@ static int da9053_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
+	if (IS_ENABLED(CONFIG_MFD_DA9053_RESET_SOURCE))
+		da9053_detect_reset_source(da9053);
 	return 0;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
