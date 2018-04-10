Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f635D-0001jZ-9f
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 23:53:52 +0000
Received: by mail-pl0-x241.google.com with SMTP id 61-v6so28708plb.2
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2018 16:53:41 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Apr 2018 16:53:22 -0700
Message-Id: <20180410235323.5440-10-andrew.smirnov@gmail.com>
In-Reply-To: <20180410235323.5440-1-andrew.smirnov@gmail.com>
References: <20180410235323.5440-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/10] i.MX: vf610-twr: Make use of vf610_barebox_entry()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/freescale-vf610-twr/lowlevel.c | 5 ++---
 arch/arm/dts/vf610-twr.dts                     | 1 +
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/freescale-vf610-twr/lowlevel.c b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
index deabe4e37..a043dd421 100644
--- a/arch/arm/boards/freescale-vf610-twr/lowlevel.c
+++ b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
@@ -3,6 +3,7 @@
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
+#include <mach/esdctl.h>
 #include <mach/vf610-regs.h>
 #include <mach/clock-vf610.h>
 #include <mach/iomux-vf610.h>
@@ -27,13 +28,11 @@ extern char __dtb_vf610_twr_start[];
 
 ENTRY_FUNCTION(start_vf610_twr, r0, r1, r2)
 {
-	void *fdt;
 
 	vf610_cpu_lowlevel_init();
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_vf610_twr_start + get_runtime_offset();
-	barebox_arm_entry(0x80000000, SZ_128M, fdt);
+	vf610_barebox_entry(__dtb_vf610_twr_start + get_runtime_offset());
 }
diff --git a/arch/arm/dts/vf610-twr.dts b/arch/arm/dts/vf610-twr.dts
index 5947fdbda..2456ade5f 100644
--- a/arch/arm/dts/vf610-twr.dts
+++ b/arch/arm/dts/vf610-twr.dts
@@ -8,6 +8,7 @@
  */
 
 #include <arm/vf610-twr.dts>
+#include "vf610-ddrmc.dtsi"
 
 &usbdev0 {
 	status = "disabled";
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
