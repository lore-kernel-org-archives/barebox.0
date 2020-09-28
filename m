Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvQh-0000Za-Sh
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:51:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQf-0000ZI-Vi
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:05 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQe-0000KG-P1
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:04 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 28 Sep 2020 17:50:40 +0200
Message-Id: <20200928155041.32649-18-m.felsch@pengutronix.de>
In-Reply-To: <20200928155041.32649-1-m.felsch@pengutronix.de>
References: <20200928155041.32649-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 17/18] ARM: stm32mp: ddrctrl: add deep-probe support
To: barebox@lists.infradead.org

In case of deep-probe we have to ensure that the memory device is
available after the mem_initcall().

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-stm32mp/ddrctrl.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index 962d4c0d52..c108bbee1e 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -4,6 +4,7 @@
  */
 
 #include <common.h>
+#include <deep-probe.h>
 #include <init.h>
 #include <mach/stm32.h>
 #include <mach/ddr_regs.h>
@@ -150,6 +151,18 @@ static struct driver_d stm32mp1_ddr_driver = {
 
 static int stm32mp1_ddr_init(void)
 {
-	return platform_driver_register(&stm32mp1_ddr_driver);
+	struct device_d *dev;
+	int ret;
+
+	ret = platform_driver_register(&stm32mp1_ddr_driver);
+	if (ret)
+		return ret;
+
+	dev = of_device_create_on_demand_by_dev_id(of_get_root_node(),
+						   stm32mp1_ddr_dt_ids);
+	if (IS_ERR(dev))
+		return PTR_ERR(dev);
+
+	return 0;
 }
 mem_initcall(stm32mp1_ddr_init);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
