Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward3l.mail.yandex.net ([84.201.143.136])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSWrU-00086R-Ra
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 20:22:46 +0000
From: Andrey Panov <rockford@yandex.ru>
Date: Mon,  2 Mar 2015 23:22:00 +0300
Message-Id: <1425327722-28232-17-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
References: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH 16/18] ARM: Rockchip: Update Radxa Rock board.
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 arch/arm/boards/radxa-rock/board.c             | 34 +++++---------------------
 arch/arm/boards/radxa-rock/env/boot/mshc1      |  9 +++++++
 arch/arm/boards/radxa-rock/env/boot/mshc1-old  |  8 ++++++
 arch/arm/boards/radxa-rock/env/init/bootsource |  7 ++++++
 arch/arm/boards/radxa-rock/env/nv/hostname     |  1 +
 5 files changed, 31 insertions(+), 28 deletions(-)
 create mode 100644 arch/arm/boards/radxa-rock/env/boot/mshc1
 create mode 100644 arch/arm/boards/radxa-rock/env/boot/mshc1-old
 create mode 100644 arch/arm/boards/radxa-rock/env/init/bootsource
 create mode 100644 arch/arm/boards/radxa-rock/env/nv/hostname

diff --git a/arch/arm/boards/radxa-rock/board.c b/arch/arm/boards/radxa-rock/board.c
index 3d9b5be..49ff26d 100644
--- a/arch/arm/boards/radxa-rock/board.c
+++ b/arch/arm/boards/radxa-rock/board.c
@@ -16,8 +16,9 @@
 #include <io.h>
 #include <i2c/i2c.h>
 #include <i2c/i2c-gpio.h>
-#include <mach/rockchip-pll.h>
+#include <mach/rockchip-regs.h>
 #include <mfd/act8846.h>
+#include <asm/armlinux.h>
 
 static struct i2c_board_info radxa_rock_i2c_devices[] = {
 	{
@@ -43,20 +44,6 @@ static void radxa_rock_pmic_init(void)
 	act8846_set_bits(pmic, ACT8846_LDO9_CTRL, BIT(7), BIT(7));
 }
 
-static int setup_plls(void)
-{
-	if (!of_machine_is_compatible("radxa,rock"))
-		return 0;
-
-	/* Codec PLL frequency: 594 MHz */
-	rk3188_pll_set_parameters(RK3188_CPLL, 2, 198, 4);
-	/* General PLL frequency: 300 MHz */
-	rk3188_pll_set_parameters(RK3188_GPLL, 1, 50, 4);
-
-	return 0;
-}
-coredevice_initcall(setup_plls);
-
 static int devices_init(void)
 {
 	if (!of_machine_is_compatible("radxa,rock"))
@@ -68,20 +55,11 @@ static int devices_init(void)
 
 	radxa_rock_pmic_init();
 
-	/* Set mac_pll divisor to 6 (50MHz output) */
-	writel((5 << 8) | (0x1f << 24), 0x20000098);
+	armlinux_set_architecture(3066);
 
-	return 0;
-}
-device_initcall(devices_init);
-
-static int hostname_init(void)
-{
-	if (!of_machine_is_compatible("radxa,rock"))
-		return 0;
-
-	barebox_set_hostname("radxa-rock");
+	/* Map SRAM to address 0, kernel relies on this */
+	writel((RK_SOC_CON0_REMAP << 16) | RK_SOC_CON0_REMAP, RK_GRF_BASE + RK_GRF_SOC_CON0);
 
 	return 0;
 }
-postcore_initcall(hostname_init);
+device_initcall(devices_init);
diff --git a/arch/arm/boards/radxa-rock/env/boot/mshc1 b/arch/arm/boards/radxa-rock/env/boot/mshc1
new file mode 100644
index 0000000..964b6cc
--- /dev/null
+++ b/arch/arm/boards/radxa-rock/env/boot/mshc1
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+mount /dev/mshc1.0
+
+oftree -f
+oftree -l /mnt/mshc1.0/rk3188-radxarock.dtb
+
+global.bootm.image=/mnt/mshc1.0/zImage
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait"
diff --git a/arch/arm/boards/radxa-rock/env/boot/mshc1-old b/arch/arm/boards/radxa-rock/env/boot/mshc1-old
new file mode 100644
index 0000000..1e1b577
--- /dev/null
+++ b/arch/arm/boards/radxa-rock/env/boot/mshc1-old
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+mount /dev/mshc1.0
+
+oftree -f
+
+global.bootm.image=/mnt/mshc1.0/zImage-old
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait"
diff --git a/arch/arm/boards/radxa-rock/env/init/bootsource b/arch/arm/boards/radxa-rock/env/init/bootsource
new file mode 100644
index 0000000..4e8299b
--- /dev/null
+++ b/arch/arm/boards/radxa-rock/env/init/bootsource
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+if [ -n "$nv.boot.default" ]; then
+	exit
+fi
+
+global.boot.default=mshc1
diff --git a/arch/arm/boards/radxa-rock/env/nv/hostname b/arch/arm/boards/radxa-rock/env/nv/hostname
new file mode 100644
index 0000000..16523ac
--- /dev/null
+++ b/arch/arm/boards/radxa-rock/env/nv/hostname
@@ -0,0 +1 @@
+radxa-rock
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
