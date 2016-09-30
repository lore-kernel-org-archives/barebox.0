Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bq0IR-0002dr-Je
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 16:04:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bq0I5-0000bj-EP
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 18:04:01 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Sep 2016 18:04:00 +0200
Message-Id: <20160930160401.21147-2-l.stach@pengutronix.de>
In-Reply-To: <20160930160401.21147-1-l.stach@pengutronix.de>
References: <20160930160401.21147-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: microsom: use imx6q_barebox_entry
To: barebox@lists.infradead.org

Instead of hardcoding the different RAM sizes.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/solidrun-microsom/lowlevel.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/solidrun-microsom/lowlevel.c b/arch/arm/boards/solidrun-microsom/lowlevel.c
index 54f1cdf9f4ea..3d5ab7a13f42 100644
--- a/arch/arm/boards/solidrun-microsom/lowlevel.c
+++ b/arch/arm/boards/solidrun-microsom/lowlevel.c
@@ -1,8 +1,7 @@
+#include <asm/barebox-arm.h>
 #include <common.h>
-#include <linux/sizes.h>
+#include <mach/esdctl.h>
 #include <mach/generic.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
 
 extern char __dtb_imx6dl_hummingboard_start[];
 extern char __dtb_imx6q_hummingboard_start[];
@@ -14,7 +13,7 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i1, r0, r1, r2)
 	imx6_cpu_lowlevel_init();
 
 	fdt = __dtb_imx6dl_hummingboard_start - get_runtime_offset();
-	barebox_arm_entry(0x10000000, SZ_512M, fdt);
+	imx6q_barebox_entry(fdt);
 }
 
 ENTRY_FUNCTION(start_hummingboard_microsom_i2, r0, r1, r2)
@@ -24,7 +23,7 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i2, r0, r1, r2)
 	imx6_cpu_lowlevel_init();
 
 	fdt = __dtb_imx6dl_hummingboard_start - get_runtime_offset();
-	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+	imx6q_barebox_entry(fdt);
 }
 
 ENTRY_FUNCTION(start_hummingboard_microsom_i2ex, r0, r1, r2)
@@ -34,7 +33,7 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i2ex, r0, r1, r2)
 	imx6_cpu_lowlevel_init();
 
 	fdt = __dtb_imx6q_hummingboard_start - get_runtime_offset();
-	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+	imx6q_barebox_entry(fdt);
 }
 
 ENTRY_FUNCTION(start_hummingboard_microsom_i4, r0, r1, r2)
@@ -44,5 +43,5 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i4, r0, r1, r2)
 	imx6_cpu_lowlevel_init();
 
 	fdt = __dtb_imx6q_hummingboard_start - get_runtime_offset();
-	barebox_arm_entry(0x10000000, SZ_2G, fdt);
+	imx6q_barebox_entry(fdt);
 }
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
