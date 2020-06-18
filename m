Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltOq-0003Bq-Ke
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 12:12:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Jun 2020 14:12:06 +0200
Message-Id: <20200618121206.5013-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] Arm: i.MX5: Do not disable L2 cache
To: Barebox List <barebox@lists.infradead.org>

Disabling the L2 cache is not working in imx5_init_lowlevel() because
the necessary cache maintenance operations are missing. This often
results in cache corruption in a chainloaded barebox.
Disabling the cache is unnecessary: when we come from the ROM the L2
cache is disabled anyway, so disabling it is a no-op. When we get here
in a chainloaded barebox the L2 cache is already enabled and correctly
configured. So instead of initializing it again we can take an enabled
L2 cache as a sign to skip initialization and just return from the
function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx5.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx5.c b/arch/arm/mach-imx/imx5.c
index 96288f99e0..dd6c079fe3 100644
--- a/arch/arm/mach-imx/imx5.c
+++ b/arch/arm/mach-imx/imx5.c
@@ -37,10 +37,13 @@ void imx5_init_lowlevel(void)
 {
 	u32 r;
 
-	/* ARM errata ID #468414 */
 	__asm__ __volatile__("mrc 15, 0, %0, c1, c0, 1":"=r"(r));
+
+	if (r & (1 << 1))
+		return;
+
+	/* ARM errata ID #468414 */
 	r |= (1 << 5);    /* enable L1NEON bit */
-	r &= ~(1 << 1);   /* explicitly disable L2 cache */
 	__asm__ __volatile__("mcr 15, 0, %0, c1, c0, 1" : : "r"(r));
 
         /* reconfigure L2 cache aux control reg */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
