Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZACGM-0008AA-Ty
 for barebox@lists.infradead.org; Wed, 01 Jul 2015 07:16:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  1 Jul 2015 09:16:31 +0200
Message-Id: <1435734991-14002-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: OMAP3: Change DSS divider to the one U-Boot uses
To: Barebox List <barebox@lists.infradead.org>

U-Boot uses 2 as the DSS divider, so do the same in barebox. This
shouldn't currently have any effect to barebox, but makes porting
some U-Boot code easier which makes assumptions about the DSS clock
rate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/omap3-clock.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/include/mach/omap3-clock.h b/arch/arm/mach-omap/include/mach/omap3-clock.h
index 1ef46aa..7c52da7 100644
--- a/arch/arm/mach-omap/include/mach/omap3-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap3-clock.h
@@ -107,7 +107,7 @@
 /* PER DPLL */
 #define PER_M6X2		3         /* 288MHz: CM_CLKSEL1_EMU */
 #define PER_M5X2		4         /* 216MHz: CM_CLKSEL_CAM */
-#define PER_M4X2		9         /* 96MHz : CM_CLKSEL_DSS-dss1 */
+#define PER_M4X2		2         /* 432MHz: CM_CLKSEL_DSS-dss1 */
 #define PER_M3X2		16        /* 54MHz : CM_CLKSEL_DSS-tv */
 
 #define CLSEL1_EMU_VAL ((CORE_M3X2 << 16) | (PER_M6X2 << 24) | (0x0a50))
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
