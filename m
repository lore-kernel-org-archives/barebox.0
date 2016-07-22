Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZcP-0000Qy-NY
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:31:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bQZc2-0007AE-HI
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 14:31:30 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 22 Jul 2016 14:31:27 +0200
Message-Id: <1469190690-14508-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1469190690-14508-1-git-send-email-l.stach@pengutronix.de>
References: <1469190690-14508-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/6] ARM: nitrogen6x: use imx6q_barebox_entry
To: barebox@lists.infradead.org

Saves some boilerplate code by calculating the DRAM size
automatically.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c b/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
index 7d859330f950..7eea3ce39034 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
@@ -1,7 +1,6 @@
 #include <common.h>
-#include <linux/sizes.h>
 #include <mach/generic.h>
-#include <asm/barebox-arm-head.h>
+#include <mach/esdctl.h>
 #include <asm/barebox-arm.h>
 
 extern char __dtb_imx6q_nitrogen6x_start[];
@@ -14,7 +13,7 @@ ENTRY_FUNCTION(start_imx6q_nitrogen6x_1g, r0, r1, r2)
 
 	fdt = __dtb_imx6q_nitrogen6x_start - get_runtime_offset();
 
-	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+	imx6q_barebox_entry(fdt);
 }
 
 ENTRY_FUNCTION(start_imx6q_nitrogen6x_2g, r0, r1, r2)
@@ -25,7 +24,7 @@ ENTRY_FUNCTION(start_imx6q_nitrogen6x_2g, r0, r1, r2)
 
 	fdt = __dtb_imx6q_nitrogen6x_start - get_runtime_offset();
 
-	barebox_arm_entry(0x10000000, SZ_2G, fdt);
+	imx6q_barebox_entry(fdt);
 }
 
 extern char __dtb_imx6dl_nitrogen6x_start[];
@@ -38,7 +37,7 @@ ENTRY_FUNCTION(start_imx6dl_nitrogen6x_1g, r0, r1, r2)
 
 	fdt = __dtb_imx6dl_nitrogen6x_start - get_runtime_offset();
 
-	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+	imx6q_barebox_entry(fdt);
 }
 
 ENTRY_FUNCTION(start_imx6dl_nitrogen6x_2g, r0, r1, r2)
@@ -49,5 +48,5 @@ ENTRY_FUNCTION(start_imx6dl_nitrogen6x_2g, r0, r1, r2)
 
 	fdt = __dtb_imx6dl_nitrogen6x_start - get_runtime_offset();
 
-	barebox_arm_entry(0x10000000, SZ_2G, fdt);
+	imx6q_barebox_entry(fdt);
 }
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
