Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e2eF2-0005Vj-N5
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 14:13:41 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu, 12 Oct 2017 16:13:13 +0200
Message-Id: <20171012141313.27237-1-p.zabel@pengutronix.de>
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
Subject: [PATCH] ARM: imx: imx6ull-evk: select ARCH_IMX6UL instead of
 ARCH_IMX6ULL
To: barebox@lists.infradead.org

There is no need for a separate ARCH_IMX6ULL Kconfig symbol, and the
shared clock driver is only enabled with ARCH_IMX6UL.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index dab19a33ec..1578875e95 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -162,10 +162,6 @@ config ARCH_IMX6UL
 	bool
 	select ARCH_IMX6
 
-config ARCH_IMX6ULL
-	bool
-	select ARCH_IMX6
-
 config ARCH_IMX7
 	bool
 	select CPU_V7
@@ -420,7 +416,7 @@ config MACH_FREESCALE_MX7_SABRESD
 
 config MACH_NXP_IMX6ULL_EVK
 	bool "NXP i.MX6ull EVK Board"
-	select ARCH_IMX6ULL
+	select ARCH_IMX6UL
 
 endif
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
