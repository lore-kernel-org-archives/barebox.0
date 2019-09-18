Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnQ-00022P-T7
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:07 +0200
Message-Id: <20190918075421.20456-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/16] ARM: tx28: Pass and check machine type
To: Barebox List <barebox@lists.infradead.org>

Pass MACH_TYPE_TX28 to barebox_arm_entry() and check for it in initcalls
to make the board multi image safe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx28/lowlevel.c  | 3 ++-
 arch/arm/boards/karo-tx28/tx28-stk5.c | 5 +++++
 arch/arm/boards/karo-tx28/tx28.c      | 4 ++++
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index 1a93be747d..84cc681816 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -11,10 +11,11 @@
 #include <debug_ll.h>
 #include <mach/iomux.h>
 #include <stmp-device.h>
+#include <generated/mach-types.h>
 
 ENTRY_FUNCTION(start_barebox_karo_tx28, r0, r1, r2)
 {
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, NULL);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, (void *)MACH_TYPE_TX28);
 }
 
 static const uint32_t iomux_pads[] = {
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index ec0826297b..b5f7dd586f 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -23,6 +23,7 @@
 #include <io.h>
 #include <net.h>
 #include <asm/sections.h>
+#include <asm/barebox-arm.h>
 #include <linux/err.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
@@ -30,6 +31,7 @@
 #include <mach/fb.h>
 #include <mach/ocotp.h>
 #include <mach/iomux.h>
+#include <generated/mach-types.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_CAP_4_BIT_DATA,
@@ -395,6 +397,9 @@ void base_board_init(void)
 
 static int tx28kit_console_init(void)
 {
+	if (barebox_arm_machine() != MACH_TYPE_TX28)
+		return 0;
+
 	barebox_set_model("Ka-Ro TX28");
 	barebox_set_hostname("tx28");
 
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 47cac21307..d99083b190 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -18,6 +18,7 @@
 #include <environment.h>
 #include <errno.h>
 #include <asm/armlinux.h>
+#include <asm/barebox-arm.h>
 #include <io.h>
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
@@ -77,6 +78,9 @@ static int tx28_devices_init(void)
 {
 	int i;
 
+	if (barebox_arm_machine() != MACH_TYPE_TX28)
+		return 0;
+
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(tx28_pad_setup); i++)
 		imx_gpio_mode(tx28_pad_setup[i]);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
