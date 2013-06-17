Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoVZo-0001Qd-Lm
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 09:18:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jun 2013 11:17:53 +0200
Message-Id: <1371460673-14284-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371460673-14284-1-git-send-email-s.hauer@pengutronix.de>
References: <1371460673-14284-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX51 efikasb: call imx51_lowlevel_init from
 lowlevel init
To: barebox@lists.infradead.org

Adjusting the PLLs when MMU/caching is already enabled seems to be
unstable on the Smartbook, so do it during early init.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/efika-mx-smartbook/board.c    | 5 -----
 arch/arm/boards/efika-mx-smartbook/lowlevel.c | 3 +++
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index e9b6062..98f9dcd 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -270,11 +270,6 @@ static void efikamx_power_init(void)
 	mc13xxx_reg_write(mc, MC13892_REG_SW_2, val);
 	udelay(50);
 
-	/* Raise the core frequency to 800MHz */
-	console_flush();
-	imx51_init_lowlevel(800);
-	clock_notifier_call_chain();
-
 	/* Set switchers in Auto in NORMAL mode & STANDBY mode */
 	/* Setup the switcher mode for SW1 & SW2*/
 	mc13xxx_reg_read(mc, MC13892_REG_SW_4, &val);
diff --git a/arch/arm/boards/efika-mx-smartbook/lowlevel.c b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
index 3e6a0ee..11abc93 100644
--- a/arch/arm/boards/efika-mx-smartbook/lowlevel.c
+++ b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
@@ -1,9 +1,12 @@
 #include <common.h>
 #include <mach/esdctl.h>
 #include <asm/barebox-arm-head.h>
+#include <mach/imx5.h>
 
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
+	arm_setup_stack(0x20000000 - 16);
+	imx51_init_lowlevel(800);
 	imx51_barebox_entry(0);
 }
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
