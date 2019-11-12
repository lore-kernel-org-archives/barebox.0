Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSLH-0007Ob-KZ
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 09:20:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 12 Nov 2019 10:19:56 +0100
Message-Id: <20191112091956.26628-10-a.fatoum@pengutronix.de>
In-Reply-To: <20191112091956.26628-1-a.fatoum@pengutronix.de>
References: <20191112091956.26628-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 10/10] ARM: stm32mp: dk2: don't hard-code memory size
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

There's new infrastructure for runtime determining RAM size. Use it so
we don't need to hard code it in PBL and board code.

Because this new infrastructure has some nested function calls, my
arm-v7a-linux-gnueabihf-gcc 9.2.1 (OSELAS.Toolchain-2019.09.0)
spills to the stack.  Add stm32mp_cpu_lowlevel_init, which also sets up
a stack after barebox end so this works.

Lastly, there's no upstream device tree node for the DDR controller.
Add one in the barebox device tree, so we don't have to hardcode the
DDRCTRL address into non-pbl code that's run everywhere.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp157c-dk2/board.c    | 11 -----------
 arch/arm/boards/stm32mp157c-dk2/lowlevel.c |  8 +++-----
 arch/arm/dts/stm32mp157c.dtsi              |  7 +++++++
 3 files changed, 10 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
index f15ae0b4aff0..9cd5b4ee1ff4 100644
--- a/arch/arm/boards/stm32mp157c-dk2/board.c
+++ b/arch/arm/boards/stm32mp157c-dk2/board.c
@@ -6,17 +6,6 @@
 #include <mach/stm32.h>
 #include <mach/bbu.h>
 
-static int dk2_mem_init(void)
-{
-	if (!of_machine_is_compatible("st,stm32mp157c-dk2"))
-		return 0;
-
-	arm_add_mem_device("ram0", STM32_DDR_BASE, SZ_512M);
-
-	return 0;
-}
-mem_initcall(dk2_mem_init);
-
 static int dk2_postcore_init(void)
 {
 	if (!of_machine_is_compatible("st,stm32mp157c-dk2"))
diff --git a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
index 2106eaadc93a..7261d7a8bc58 100644
--- a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
+++ b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
@@ -1,8 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <common.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-#include <mach/stm32.h>
+#include <mach/entry.h>
 #include <debug_ll.h>
 
 extern char __dtb_z_stm32mp157c_dk2_start[];
@@ -17,12 +15,12 @@ ENTRY_FUNCTION(start_stm32mp157c_dk2, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	stm32mp_cpu_lowlevel_init();
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
 	fdt = __dtb_z_stm32mp157c_dk2_start + get_runtime_offset();
 
-	barebox_arm_entry(STM32_DDR_BASE, SZ_512M, fdt);
+	stm32mp1_barebox_entry(fdt);
 }
diff --git a/arch/arm/dts/stm32mp157c.dtsi b/arch/arm/dts/stm32mp157c.dtsi
index decb4ab6d5c4..bd2aabe6343a 100644
--- a/arch/arm/dts/stm32mp157c.dtsi
+++ b/arch/arm/dts/stm32mp157c.dtsi
@@ -24,6 +24,13 @@
 	psci {
 		compatible = "arm,psci-0.2";
 	};
+
+	soc {
+		memory-controller@5a003000 {
+			compatible = "st,stm32-ddrctrl";
+			reg = <0x5a003000 0x1000>;
+		};
+	};
 };
 
 &bsec {
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
