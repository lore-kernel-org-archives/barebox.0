Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4pTu-00017U-0h
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 11:56:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z4pTP-0006RF-By
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 13:56:11 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z4pTN-0004UX-Io
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 13:56:09 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 16 Jun 2015 13:56:07 +0200
Message-Id: <1434455769-17216-4-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/6] MFD/DA9053: provide system reset
To: barebox@lists.infradead.org

When using power management features like voltage regulators when switching
down the CPU clock speed, a SoC reset must also reset the power supplies to
their expected values after a POR. Most internal units (like watchdogs used to
reset the SoC) are not able to signal the SoC reset to external devices. This
can end up in various and unpredictable system crashes because the CPU restarts
with the expectation the power supplies were also reset.

By using the reset feature of the PMIC unit this expectation about the power
supplies is always true.

Downside of this approach: the SoC cannot longer detect the reset reason with
its own mechanism. Each PMIC based reset looks like a POR from the SoC's point
of view.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/mfd/Kconfig  |  6 ++++++
 drivers/mfd/da9053.c | 61 +++++++++++++++++++++++-----------------------------
 2 files changed, 33 insertions(+), 34 deletions(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 8c8f537..bf012bf 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -14,6 +14,12 @@ config MFD_DA9053_RESET_SOURCE
 	help
 	  This PMIC unit can provide the reset reason.
 
+config MFD_DA9053_RESET_FEATURE
+	depends on MFD_DA9053
+	bool "Use for system reset"
+	help
+	  This PMIC unit can be used to reset/restart the system.
+
 config MFD_LP3972
 	depends on I2C
 	bool "LP3972 driver"
diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index 9294a6a..b376d8d 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -20,7 +20,6 @@
 #include <xfuncs.h>
 #include <errno.h>
 #include <watchdog.h>
-#include <linux/err.h>
 
 #include <i2c/i2c.h>
 
@@ -92,7 +91,6 @@ struct da9053_priv {
 	struct cdev		cdev;
 	struct watchdog		wd;
 	struct i2c_client	*client;
-	unsigned int		param_shutdown;
 };
 
 #define cdev_to_da9053_priv(x)	container_of(x, struct da9053_priv, cdev)
@@ -178,30 +176,6 @@ static struct file_operations da9053_fops = {
 	.read	= da9053_read,
 };
 
-static int da9053_set_shutdown(struct param_d *param, void *priv)
-{
-	struct da9053_priv *da9053 = priv;
-	int ret;
-	u8 val;
-
-	if (da9053->param_shutdown) {
-		ret = da9053_reg_read(da9053, DA9053_CONTROL_B_REG, &val);
-		if (ret < 0)
-			return ret;
-
-		val |= DA9053_CONTROLB_SHUTDOWN;
-		ret = da9053_reg_write(da9053, DA9053_CONTROL_B_REG, val);
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
 static int da9053_set_timeout(struct watchdog *wd, unsigned timeout)
 {
 	struct da9053_priv *da9053 = wd_to_da9053_priv(wd);
@@ -300,10 +274,31 @@ static void da9053_detect_reset_source(struct da9053_priv *da9053)
 	/* else keep the default 'unknown' state */
 }
 
+#ifdef CONFIG_MFD_DA9053_RESET_FEATURE
+static struct da9053_priv *wd_da9053;
+void __noreturn reset_cpu(unsigned long addr)
+{
+	u8 val;
+	int ret;
+
+	ret = da9053_reg_read(wd_da9053, DA9053_CONTROL_B_REG, &val);
+	if (ret < 0)
+		hang();
+
+	val |= DA9053_CONTROLB_SHUTDOWN;
+	ret = da9053_reg_write(wd_da9053, DA9053_CONTROL_B_REG, val);
+	if (ret < 0)
+		hang();
+
+	da9053_park(wd_da9053);
+
+	hang();
+}
+#endif
+
 static int da9053_probe(struct device_d *dev)
 {
 	struct da9053_priv *da9053;
-	struct param_d *p;
 	int ret;
 
 	da9053 = xzalloc(sizeof(struct da9053_priv));
@@ -319,19 +314,17 @@ static int da9053_probe(struct device_d *dev)
 	if (ret < 0)
 		return ret;
 
-	p = dev_add_param_bool(dev, "shutdown", da9053_set_shutdown, NULL,
-			       &da9053->param_shutdown, da9053);
-	if (IS_ERR(p))
-		return PTR_ERR(p);
-
-	devfs_create(&da9053->cdev);
-
 	ret = watchdog_register(&da9053->wd);
 	if (ret)
 		return ret;
 
 	if (IS_ENABLED(CONFIG_MFD_DA9053_RESET_SOURCE))
 		da9053_detect_reset_source(da9053);
+
+#ifdef CONFIG_MFD_DA9053_RESET_FEATURE
+	if (wd_da9053 == NULL)
+		wd_da9053 = da9053;
+#endif
 	return 0;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
