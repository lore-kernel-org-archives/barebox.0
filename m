Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBgX-0004w4-7R
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:31:02 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 13 Dec 2012 17:30:43 +0100
Message-Id: <1355416249-22364-9-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1355416249-22364-1-git-send-email-jlu@pengutronix.de>
References: <1355416249-22364-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 08/14] ARM omap3: make PRM defines SoC specific
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/omap3-silicon.h |    3 +--
 arch/arm/mach-omap/omap3_generic.c              |    2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap3-silicon.h b/arch/arm/mach-omap/include/mach/omap3-silicon.h
index a655729..1921923 100644
--- a/arch/arm/mach-omap/include/mach/omap3-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap3-silicon.h
@@ -128,7 +128,6 @@
 #define OMAP_SDRC_CS1		0xA0000000
 
 /* PRM */
-#define PRM_RSTCTRL_RESET       0x04
+#define OMAP3_PRM_RSTCTRL_RESET	0x04
 
 #endif /* __ASM_ARCH_OMAP3_H */
-
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index cbac06f..9932103 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -52,7 +52,7 @@
  */
 void __noreturn reset_cpu(unsigned long addr)
 {
-	writel(PRM_RSTCTRL_RESET, PRM_REG(RSTCTRL));
+	writel(OMAP3_PRM_RSTCTRL_RESET, PRM_REG(RSTCTRL));
 
 	while (1);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
