Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1go7jX-0003DU-9q
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 14:17:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Jan 2019 15:17:49 +0100
Message-Id: <20190128141749.19262-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: omap: Wago PFC200: Initialize switch registers
To: Barebox List <barebox@lists.infradead.org>
Cc: Heinrich.Toews@wago.com

The PFC200 has a KSZ886x switch connected. Some of its registers need to
be initialized for proper ehternet support. Add the initialization code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Heinrich.Toews@wago.com
---
 arch/arm/boards/wago-pfc-am35xx/board.c | 45 +++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm/boards/wago-pfc-am35xx/board.c b/arch/arm/boards/wago-pfc-am35xx/board.c
index 2bad40912d..c0a039ba50 100644
--- a/arch/arm/boards/wago-pfc-am35xx/board.c
+++ b/arch/arm/boards/wago-pfc-am35xx/board.c
@@ -3,6 +3,7 @@
  * Copyright (C) 2014 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
  * Author: Heinrich Toews <heinrich.toews@wago.com>
  */
+#define pr_fmt(fmt)	"pfc200: " fmt
 
 #include <common.h>
 #include <init.h>
@@ -10,6 +11,8 @@
 #include <gpio.h>
 #include <linux/sizes.h>
 #include <linux/err.h>
+#include <linux/phy.h>
+#include <linux/micrel_phy.h>
 #include <asm/memory.h>
 #include <mach/generic.h>
 
@@ -23,6 +26,48 @@ static int pfc200_mem_init(void)
 }
 mem_initcall(pfc200_mem_init);
 
+#define BMCR_HP_MDIX 0x20
+
+static int pfc200_phy_fixup(struct mii_bus *mii, int phyadr)
+{
+	struct phy_device *phydev;
+	int ret;
+
+	phydev = mdiobus_scan(mii, phyadr);
+
+	if (IS_ERR(phydev)) {
+		pr_err("Cannot find phydev %d on mii bus\n", phyadr);
+		return PTR_ERR(phydev);
+	}
+
+	ret = phy_write(phydev, MII_BMCR, BMCR_ANENABLE | BMCR_HP_MDIX);
+	if (ret)
+		pr_err("Failed to write to phy: %s\n", strerror(-ret));
+
+	return ret;
+}
+
+static int pfc200_late_init(void)
+{
+	struct mii_bus *mii;
+
+	if (!of_machine_is_compatible("ti,pfc200"))
+		return 0;
+
+	mii = mdiobus_get_bus(0);
+	if (!mii) {
+		pr_err("Cannot find mii bus 0\n");
+		return -ENODEV;
+	}
+
+	pfc200_phy_fixup(mii, 1);
+	pfc200_phy_fixup(mii, 2);
+
+	return 0;
+}
+late_initcall(pfc200_late_init);
+
+
 #define GPIO_KSZ886x_RESET	136
 
 static int pfc200_devices_init(void)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
