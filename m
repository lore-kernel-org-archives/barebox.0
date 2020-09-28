Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvQi-0000ZY-1W
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:51:12 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQf-0000ZJ-Tw
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:05 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQe-0000KK-PM
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:04 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 28 Sep 2020 17:50:41 +0200
Message-Id: <20200928155041.32649-19-m.felsch@pengutronix.de>
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
Subject: [PATCH 18/18] ARM: boards: mx6-sabrelite: add deep-probe support
To: barebox@lists.infradead.org

Explicit request the required gpio resources instead of relying on their
existence based on the initcall level.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 .../boards/freescale-mx6-sabrelite/board.c    | 24 ++++++++++++-------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 1b39ef82c6..7fc3d4dc3f 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -13,7 +13,9 @@
 #include <mach/bbu.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
+#include <of.h>
 #include <partition.h>
+#include <deep-probe.h>
 #include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
@@ -98,10 +100,6 @@ static int sabrelite_ksz9021rn_setup(void)
 {
 	int ret;
 
-	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
-	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
-		return 0;
-
 	mxc_iomux_v3_setup_multiple_pads(sabrelite_enet_gpio_pads,
 			ARRAY_SIZE(sabrelite_enet_gpio_pads));
 
@@ -118,11 +116,6 @@ static int sabrelite_ksz9021rn_setup(void)
 
 	return 0;
 }
-/*
- * Do this before the fec initializes but after our
- * gpios are available.
- */
-fs_initcall(sabrelite_ksz9021rn_setup);
 
 static void sabrelite_ehci_init(void)
 {
@@ -134,10 +127,20 @@ static void sabrelite_ehci_init(void)
 
 static int sabrelite_devices_init(void)
 {
+	int ret;
+
 	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
 	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
 		return 0;
 
+	ret = of_devices_create_on_demand_by_property("gpio-controller");
+	if (ret)
+		return ret;
+
+	ret = sabrelite_ksz9021rn_setup();
+	if (ret)
+		return ret;
+
 	sabrelite_ehci_init();
 
 	armlinux_set_architecture(3769);
@@ -163,3 +166,6 @@ static int sabrelite_coredevices_init(void)
 	return 0;
 }
 coredevice_initcall(sabrelite_coredevices_init);
+
+deep_probe_enable(imx6q_sabrelite, "fsl,imx6q-sabrelite");
+deep_probe_enable(imx6dl_sabrelite, "fsl,imx6dl-sabrelite");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
