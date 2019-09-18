Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnQ-00022R-TI
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:12 +0200
Message-Id: <20190918075421.20456-8-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/16] ARM: Crytalfonts cfa10036: Check machine type in
 initcalls
To: Barebox List <barebox@lists.infradead.org>

Check for the right machine type in initcalls before executing them to
make the board multi image safe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c | 7 +++++++
 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c | 3 ++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index dcf560432d..29b91e775f 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -37,6 +37,7 @@
 
 #include <asm/armlinux.h>
 #include <asm/mmu.h>
+#include <asm/barebox-arm.h>
 
 #include <mach/fb.h>
 
@@ -93,6 +94,9 @@ static int cfa10036_devices_init(void)
 {
 	int i;
 
+	if (barebox_arm_machine() != MACH_TYPE_CFA10036)
+		return 0;
+
 	/* initizalize muxing */
 	for (i = 0; i < ARRAY_SIZE(cfa10036_pads); i++)
 		imx_gpio_mode(cfa10036_pads[i]);
@@ -115,6 +119,9 @@ device_initcall(cfa10036_devices_init);
 
 static int cfa10036_console_init(void)
 {
+	if (barebox_arm_machine() != MACH_TYPE_CFA10036)
+		return 0;
+
 	barebox_set_model("crystalfontz-cfa10036");
 	barebox_set_hostname("cfa10036");
 
diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
index 50dbcdc150..37c162d30d 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
@@ -3,9 +3,10 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx28-regs.h>
+#include <generated/mach-types.h>
 
 void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2d)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, NULL);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, (void *)MACH_TYPE_CFA10036);
 }
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
