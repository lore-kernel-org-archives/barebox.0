Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnQ-00022Q-TC
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:13 +0200
Message-Id: <20190918075421.20456-9-s.hauer@pengutronix.de>
In-Reply-To: <20190918075421.20456-1-s.hauer@pengutronix.de>
References: <20190918075421.20456-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/16] ARM: i.MX23 Chumby: Check machine type in initcalls
To: Barebox List <barebox@lists.infradead.org>

Check for the right machine type in initcalls before executing them to
make the board multi image safe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c | 7 +++++++
 arch/arm/boards/chumby_falconwing/lowlevel.c   | 3 ++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 5554b78d6d..f218058f88 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -22,6 +22,7 @@
 #include <linux/sizes.h>
 #include <usb/ehci.h>
 #include <asm/armlinux.h>
+#include <asm/barebox-arm.h>
 #include <io.h>
 #include <asm/mmu.h>
 #include <generated/mach-types.h>
@@ -278,6 +279,9 @@ static int falconwing_devices_init(void)
 {
 	int i;
 
+	if (barebox_arm_machine() != MACH_TYPE_CHUMBY)
+		return 0;
+
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
 		imx_gpio_mode(pad_setup[i]);
@@ -300,6 +304,9 @@ device_initcall(falconwing_devices_init);
 
 static int falconwing_console_init(void)
 {
+	if (barebox_arm_machine() != MACH_TYPE_CHUMBY)
+		return 0;
+
 	barebox_set_model("Chumby Falconwing");
 	barebox_set_hostname("falconwing");
 
diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
index 50bacc620f..ee287eccdf 100644
--- a/arch/arm/boards/chumby_falconwing/lowlevel.c
+++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
@@ -3,9 +3,10 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx23-regs.h>
+#include <generated/mach-types.h>
 
 void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, NULL);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, (void *)MACH_TYPE_CHUMBY);
 }
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
