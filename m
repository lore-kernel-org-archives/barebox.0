Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw6eZ-0001MT-4y
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 15:50:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1iw6eW-0006h1-F1
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 16:50:16 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1iw6eW-00019o-2h
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 16:50:16 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 27 Jan 2020 16:50:11 +0100
Message-Id: <20200127155013.4388-2-m.grzeschik@pengutronix.de>
In-Reply-To: <20200127155013.4388-1-m.grzeschik@pengutronix.de>
References: <20200127155013.4388-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 2/4] regulator: pfuze: add support to other architectures
To: barebox@lists.infradead.org

Currently the pfuze driver is build dependent to ARCH_IMX6. To make it
possible to work with ARCH_IMX8 we move the imx6_poweroff call to an own
poweroff handler.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c  | 8 ++++++++
 drivers/regulator/Kconfig | 2 +-
 drivers/regulator/pfuze.c | 2 --
 3 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 41e0066add..8f1638c1ea 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -401,3 +401,11 @@ void __noreturn imx6_pm_stby_poweroff(void)
 
 	while(1);
 }
+
+static int imx6_init(void)
+{
+	poweroff_handler_register_fn(imx6_pm_stby_poweroff);
+
+	return 0;
+}
+coredevice_initcall(imx6_init);
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 28bd69a2a5..f47a115da2 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -19,7 +19,7 @@ config REGULATOR_BCM283X
 config REGULATOR_PFUZE
 	bool "Freescale PFUZE100/200/3000 regulator driver"
 	depends on I2C
-	depends on ARCH_IMX6
+	depends on ARCH_IMX6 || ARCH_IMX8MQ
 
 config REGULATOR_STPMIC1
 	tristate "STMicroelectronics STPMIC1 PMIC Regulators"
diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
index 55f7eb5d4c..91aaec0e7e 100644
--- a/drivers/regulator/pfuze.c
+++ b/drivers/regulator/pfuze.c
@@ -142,8 +142,6 @@ static void pfuze_power_off_prepare(struct poweroff_handler *handler)
 	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN6VOL,
 			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
 			  PFUZE100_VGENxSTBY);
-
-	imx6_pm_stby_poweroff();
 }
 
 static struct regmap_bus regmap_pfuze_i2c_bus = {
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
