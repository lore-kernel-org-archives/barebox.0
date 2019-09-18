Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnC-0001qY-J3
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:14 +0200
Message-Id: <20190918075421.20456-10-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/16] ARM: Freescale i.MX23 evk: Check machine type in
 initcalls
To: Barebox List <barebox@lists.infradead.org>

Check for the right machine type in initcalls before executing them to
make the board multi image safe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx23-evk/lowlevel.c | 3 ++-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c | 7 +++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
index 13c7435cd6..2321a469ab 100644
--- a/arch/arm/boards/freescale-mx23-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <linux/sizes.h>
+#include <generated/mach-types.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx23-regs.h>
@@ -7,5 +8,5 @@
 void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M, NULL);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M, (void *)MACH_TYPE_MX23EVK);
 }
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index a3587db063..75a7d5a6b4 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -22,6 +22,7 @@
 #include <linux/err.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
+#include <asm/barebox-arm.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
 #include <mach/mci.h>
@@ -99,6 +100,9 @@ static int mx23_evk_devices_init(void)
 {
 	int i, rc;
 
+	if (barebox_arm_machine() != MACH_TYPE_MX23EVK)
+		return 0;
+
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
 		imx_gpio_mode(pad_setup[i]);
@@ -126,6 +130,9 @@ device_initcall(mx23_evk_devices_init);
 
 static int mx23_evk_console_init(void)
 {
+	if (barebox_arm_machine() != MACH_TYPE_MX23EVK)
+		return 0;
+
 	barebox_set_model("Freescale i.MX23 EVK");
 	barebox_set_hostname("mx23evk");
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
