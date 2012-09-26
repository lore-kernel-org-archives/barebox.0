Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGo7v-00051E-B9
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 09:41:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Sep 2012 11:41:52 +0200
Message-Id: <1348652512-2162-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM i.MX clocksource: fix timer source selection
To: barebox@lists.infradead.org

- The i.MX1 timer does not have IPG clock as source, so rename
  the define accordingly
- for the i.MX31 timer we want to use the per clock, not the ipg
  clock.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clocksource.c |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 5fa6201..69a688c 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -43,8 +43,9 @@
 #define TCTL_SWR			(1 << 15)	/* Software reset */
 #define IMX1_TCTL_FRR			(1 << 8)	/* Freerun / restart */
 #define IMX31_TCTL_FRR			(1 << 9)	/* Freerun / restart */
-#define IMX1_TCTL_CLKSOURCE_IPG		(1 << 1)	/* Clock source bit position */
+#define IMX1_TCTL_CLKSOURCE_PER		(1 << 1)	/* Clock source bit position */
 #define IMX31_TCTL_CLKSOURCE_IPG	(1 << 6)	/* Clock source bit position */
+#define IMX31_TCTL_CLKSOURCE_PER	(2 << 6)	/* Clock source bit position */
 #define TCTL_TEN			(1 << 0)	/* Timer enable */
 
 static struct clk *clk_gpt;
@@ -56,12 +57,12 @@ struct imx_gpt_regs {
 
 static struct imx_gpt_regs regs_imx1 = {
 	.tcn = 0x10,
-	.tctl_val = IMX1_TCTL_FRR | IMX1_TCTL_CLKSOURCE_IPG | TCTL_TEN,
+	.tctl_val = IMX1_TCTL_FRR | IMX1_TCTL_CLKSOURCE_PER | TCTL_TEN,
 };
 
 static struct imx_gpt_regs regs_imx31 = {
 	.tcn = 0x24,
-	.tctl_val = IMX31_TCTL_FRR | IMX31_TCTL_CLKSOURCE_IPG | TCTL_TEN,
+	.tctl_val = IMX31_TCTL_FRR | IMX31_TCTL_CLKSOURCE_PER | TCTL_TEN,
 };
 
 static struct imx_gpt_regs *regs;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
