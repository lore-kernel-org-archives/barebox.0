Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBgW-0004w1-Sy
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:31:02 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 13 Dec 2012 17:30:42 +0100
Message-Id: <1355416249-22364-8-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 07/14] ARM omap4: make PRM defines SoC specific
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/omap4-silicon.h |    8 ++++----
 arch/arm/mach-omap/omap4_generic.c              |    2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index 127257d..0f0d88d 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -147,11 +147,11 @@
  */
 
 /* PRM */
-#define PRM_BASE		0x4A306000
-#define PRM_DEVICE_BASE		(PRM_BASE + 0x1B00)
+#define OMAP44XX_PRM_BASE		0x4A306000
+#define OMAP44XX_PRM_DEVICE_BASE	(OMAP44XX_PRM_BASE + 0x1B00)
 
-#define PRM_RSTCTRL		PRM_DEVICE_BASE
-#define PRM_RSTCTRL_RESET	0x01
+#define OMAP44XX_PRM_RSTCTRL		OMAP44XX_PRM_DEVICE_BASE
+#define OMAP44XX_PRM_RSTCTRL_RESET	0x01
 
 /*
  * Non-secure SRAM Addresses
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 4653b17..f4841a6 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -36,7 +36,7 @@
 
 void __noreturn reset_cpu(unsigned long addr)
 {
-	writel(PRM_RSTCTRL_RESET, PRM_RSTCTRL);
+	writel(OMAP44XX_PRM_RSTCTRL_RESET, OMAP44XX_PRM_RSTCTRL);
 
 	while (1);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
