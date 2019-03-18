Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5oME-0001xL-Ij
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 09:15:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Mar 2019 10:14:51 +0100
Message-Id: <20190318091454.11386-9-s.hauer@pengutronix.de>
In-Reply-To: <20190318091454.11386-1-s.hauer@pengutronix.de>
References: <20190318091454.11386-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] ARM: PXA: Provide prototype for pxa_clear_reset_source()
To: Barebox List <barebox@lists.infradead.org>

Move pxa_clear_reset_source() declaration to a header file where the
file implementing it can see it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-pxa/common.c                | 2 --
 arch/arm/mach-pxa/include/mach/hardware.h | 4 ++++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
index c0281d69ef..f2648f4687 100644
--- a/arch/arm/mach-pxa/common.c
+++ b/arch/arm/mach-pxa/common.c
@@ -29,8 +29,6 @@
 #define OWER_WME	(1 << 0)	/* Watch-dog Match Enable */
 #define OSSR_M3		(1 << 3)	/* Match status channel 3 */
 
-extern void pxa_clear_reset_source(void);
-
 static void __noreturn pxa_restart_soc(struct restart_handler *rst)
 {
 	/* Clear last reset source */
diff --git a/arch/arm/mach-pxa/include/mach/hardware.h b/arch/arm/mach-pxa/include/mach/hardware.h
index 902d11ddfc..d968a11880 100644
--- a/arch/arm/mach-pxa/include/mach/hardware.h
+++ b/arch/arm/mach-pxa/include/mach/hardware.h
@@ -46,6 +46,10 @@
 
 #ifdef __ASSEMBLY__
 #define __REG(x) (x)
+#else
+
+void pxa_clear_reset_source(void);
+
 #endif
 
 #endif	/* !__MACH_HARDWARE_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
