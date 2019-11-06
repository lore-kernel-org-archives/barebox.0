Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFks-00006A-44
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 07:29:27 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 08:29:21 +0100
Message-Id: <20191106072921.880-1-a.fatoum@pengutronix.de>
In-Reply-To: <20191106071155.26389-7-a.fatoum@pengutronix.de>
References: <20191106071155.26389-7-a.fatoum@pengutronix.de>
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
Subject: [PATCH 11/10] fixup! regulator: add driver for stpmic1-regulators
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Deletes uneeded left-over code. Some headers/structs were duplicate or
unneeded.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/stpmic1_regulator.c | 18 +-----------------
 include/linux/mfd/stpmic1.h           | 13 -------------
 2 files changed, 1 insertion(+), 30 deletions(-)

diff --git a/drivers/regulator/stpmic1_regulator.c b/drivers/regulator/stpmic1_regulator.c
index 72a5730931e6..aaaba092c1a4 100644
--- a/drivers/regulator/stpmic1_regulator.c
+++ b/drivers/regulator/stpmic1_regulator.c
@@ -4,27 +4,11 @@
 
 #include <common.h>
 #include <init.h>
-#include <asm/io.h>
 #include <of_device.h>
-#include <mfd/syscon.h>
 #include <regmap.h>
 #include <linux/regulator/of_regulator.h>
 #include <regulator.h>
 #include <linux/mfd/stpmic1.h>
-#include <mfd/syscon.h>
-
-#include <common.h>
-#include <init.h>
-#include <watchdog.h>
-#include <asm/io.h>
-#include <of_device.h>
-#include <linux/iopoll.h>
-#include <poweroff.h>
-#include <mfd/syscon.h>
-#include <restart.h>
-#include <reset_source.h>
-
-
 
 #include <dt-bindings/mfd/st,stpmic1.h>
 
@@ -434,7 +418,7 @@ static int stpmic1_regulator_probe(struct device_d *dev)
 			return ret;
 	}
 
-	dev_info(dev, "probed\n");
+	dev_dbg(dev, "probed\n");
 
 	return 0;
 }
diff --git a/include/linux/mfd/stpmic1.h b/include/linux/mfd/stpmic1.h
index fa3f99f7e9a1..3a8d6a7dcf42 100644
--- a/include/linux/mfd/stpmic1.h
+++ b/include/linux/mfd/stpmic1.h
@@ -196,17 +196,4 @@
 #define PONKEY_TURNOFF_TIMER_MASK	GENMASK(3, 0)
 #define PONKEY_TURNOFF_MASK		GENMASK(7, 0)
 
-/*
- * struct stpmic1 - stpmic1 master device for sub-drivers
- * @dev: master device of the chip (can be used to access platform data)
- * @irq: main IRQ number
- * @regmap_irq_chip_data: irq chip data
- */
-struct stpmic1 {
-	struct device *dev;
-	struct regmap *regmap;
-	int irq;
-	struct regmap_irq_chip_data *irq_data;
-};
-
 #endif /*  __LINUX_MFD_STPMIC1_H */
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
