Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLcfA-0004Pm-TF
	for barebox@lists.infradead.org; Wed, 02 Nov 2011 15:23:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Nov 2011 16:23:30 +0100
Message-Id: <1320247410-29411-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM i.MX53: enable l2 cache
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx53.c |   13 ++++++-------
 1 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 698a05a..7f3c5ba 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -85,16 +85,11 @@ int mx53_init_lowlevel(void)
 	u32 r;
 
 	/* ARM errata ID #468414 */
-        __asm__ __volatile__("mrc 15, 0, %0, c1, c0, 1":"=r"(r));
+	__asm__ __volatile__("mrc 15, 0, %0, c1, c0, 1":"=r"(r));
 	r |= (1 << 5);    /* enable L1NEON bit */
+	r &= ~(1 << 1);   /* explicitly disable L2 cache */
 	__asm__ __volatile__("mcr 15, 0, %0, c1, c0, 1" : : "r"(r));
 
-	/* explicitly disable L2 cache */
-        __asm__ __volatile__("mrc 15, 0, %0, c1, c0, 1":"=r"(r));
-	r &= ~(1 << 1);
-	__asm__ __volatile__("mcr 15, 0, %0, c1, c0, 1" : : "r"(r));
-
-
         /* reconfigure L2 cache aux control reg */
 	r = 0xc0 |		/* tag RAM */
 		0x4 |		/* data RAM */
@@ -104,6 +99,10 @@ int mx53_init_lowlevel(void)
 
 	__asm__ __volatile__("mcr 15, 1, %0, c9, c0, 2" : : "r"(r));
 
+	__asm__ __volatile__("mrc 15, 0, %0, c1, c0, 1":"=r"(r));
+	r |= 1 << 1; 	/* enable L2 cache */
+	__asm__ __volatile__("mcr 15, 0, %0, c1, c0, 1" : : "r"(r));
+
 	/*
 	 * AIPS setup - Only setup MPROTx registers.
 	 * The PACR default values are good.
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
