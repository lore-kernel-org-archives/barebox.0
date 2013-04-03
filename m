Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNHpG-0000Ke-JY
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 07:09:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Apr 2013 09:09:40 +0200
Message-Id: <1364972980-32527-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1364972980-32527-1-git-send-email-s.hauer@pengutronix.de>
References: <1364972980-32527-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: tqma53: call SoC lowlevel function early
To: barebox@lists.infradead.org

With CONFIG_MMU_EARLY enabled the board does not survive the call
to imx53_init_lowlevel(). This should not happen, but the reasons
are currently unknown. This works on other boards like the i.MX53
QSB.
This patch moves the call to imx53_init_lowlevel to
barebox_arm_reset_vector() which is executed with MMU disabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma53/board.c    | 1 -
 arch/arm/boards/tqma53/lowlevel.c | 2 ++
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 03cb8ea..432f29f 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -253,7 +253,6 @@ late_initcall(tqma53_part_init);
 static int tqma53_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(tqma53_pads, ARRAY_SIZE(tqma53_pads));
-	imx53_init_lowlevel(800);
 	imx53_add_uart0();
 
 	return 0;
diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
index 60c28f7..a6eaa46 100644
--- a/arch/arm/boards/tqma53/lowlevel.c
+++ b/arch/arm/boards/tqma53/lowlevel.c
@@ -1,9 +1,11 @@
 #include <common.h>
 #include <mach/esdctl.h>
 #include <asm/barebox-arm-head.h>
+#include <mach/imx5.h>
 
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
+	imx53_init_lowlevel_early(800);
 	imx53_barebox_entry(0);
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
