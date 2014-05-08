Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WiIoE-0000kK-MW
 for barebox@lists.infradead.org; Thu, 08 May 2014 07:32:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  8 May 2014 09:31:38 +0200
Message-Id: <1399534299-27051-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399534299-27051-1-git-send-email-s.hauer@pengutronix.de>
References: <1399534299-27051-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: i.MX51 babbage: use mc13xxx_register_callback to
 initialize PMIC
To: barebox@lists.infradead.org

This makes sure the PMIC is initialized once it's available. Move the
initcall to coredevice_initcall to make sure we initialize the PMIC
before the FEC driver is initialized. The ethernet phy needs vgen3
enabled in the PMIC initialization.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-babbage/board.c | 27 ++++++++++++--------------
 1 file changed, 12 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-babbage/board.c b/arch/arm/boards/freescale-mx51-babbage/board.c
index bfe5338..11c901c 100644
--- a/arch/arm/boards/freescale-mx51-babbage/board.c
+++ b/arch/arm/boards/freescale-mx51-babbage/board.c
@@ -14,6 +14,8 @@
  *
  */
 
+#define pr_fmt(fmt) "babbage: " fmt
+
 #include <common.h>
 #include <init.h>
 #include <environment.h>
@@ -44,17 +46,10 @@
 
 #define MX51_CCM_CACRR 0x10
 
-static void babbage_power_init(void)
+static void babbage_power_init(struct mc13xxx *mc13xxx)
 {
-	struct mc13xxx *mc13xxx;
 	u32 val;
 
-	mc13xxx = mc13xxx_get();
-	if (!mc13xxx) {
-		printf("could not get PMIC\n");
-		return;
-	}
-
 	/* Write needed to Power Gate 2 register */
 	mc13xxx_reg_read(mc13xxx, MC13892_REG_POWER_MISC, &val);
 	val &= ~0x10000;
@@ -149,21 +144,23 @@ static void babbage_power_init(void)
 	mc13xxx_reg_write(mc13xxx, MC13892_REG_MODE_1, val);
 
 	udelay(200);
+
+	pr_info("initialized PMIC\n");
+
+	console_flush();
+	imx51_init_lowlevel(800);
+	clock_notifier_call_chain();
 }
 
 extern char flash_header_imx51_babbage_start[];
 extern char flash_header_imx51_babbage_end[];
 
-static int imx51_babbage_late_init(void)
+static int imx51_babbage_init(void)
 {
 	if (!of_machine_is_compatible("fsl,imx51-babbage"))
 		return 0;
 
-	babbage_power_init();
-
-	console_flush();
-	imx51_init_lowlevel(800);
-	clock_notifier_call_chain();
+	mc13xxx_register_callback(babbage_power_init);
 
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
@@ -173,4 +170,4 @@ static int imx51_babbage_late_init(void)
 
 	return 0;
 }
-late_initcall(imx51_babbage_late_init);
+coredevice_initcall(imx51_babbage_init);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
