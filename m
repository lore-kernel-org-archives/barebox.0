Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvQg-0008C0-WC
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:51:13 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQf-0000ZH-Oh
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:05 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQe-0000KC-OT
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:04 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 28 Sep 2020 17:50:39 +0200
Message-Id: <20200928155041.32649-17-m.felsch@pengutronix.de>
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
Subject: [PATCH 16/18] ARM: i.MX: esdctl: add deep-probe support
To: barebox@lists.infradead.org

In case of deep-probe we have to ensure that the memory device is
available after the mem_initcall().

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index cc5d3a8359..3819c1a9a6 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -14,6 +14,7 @@
  */
 
 #include <common.h>
+#include <deep-probe.h>
 #include <io.h>
 #include <errno.h>
 #include <linux/sizes.h>
@@ -705,9 +706,20 @@ static struct driver_d imx_esdctl_driver = {
 
 static int imx_esdctl_init(void)
 {
-	return platform_driver_register(&imx_esdctl_driver);
-}
+	struct device_d *dev;
+	int ret;
+
+	ret = platform_driver_register(&imx_esdctl_driver);
+	if (ret)
+		return ret;
+
+	dev = of_device_create_on_demand_by_dev_id(of_get_root_node(),
+						   imx_esdctl_dt_ids);
+	if (IS_ERR(dev))
+		return PTR_ERR(dev);
 
+	return 0;
+}
 mem_initcall(imx_esdctl_init);
 
 /*
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
