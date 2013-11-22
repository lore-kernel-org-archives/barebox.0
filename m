Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs8P-0008Ez-PM
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:55:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:54:30 +0100
Message-Id: <1385132083-7484-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
References: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/16] ARM: OMAP: select correct reset_cpu function at runtime
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_generic.c              |  2 +-
 arch/arm/mach-omap/include/mach/am33xx-generic.h |  2 ++
 arch/arm/mach-omap/include/mach/omap3-generic.h  |  2 ++
 arch/arm/mach-omap/include/mach/omap4-generic.h  |  2 ++
 arch/arm/mach-omap/omap3_generic.c               |  2 +-
 arch/arm/mach-omap/omap4_generic.c               |  2 +-
 arch/arm/mach-omap/omap_generic.c                | 14 ++++++++++++++
 7 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 8a883e3..864f210 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -30,7 +30,7 @@
 #include <mach/am33xx-generic.h>
 #include <mach/gpmc.h>
 
-void __noreturn reset_cpu(unsigned long addr)
+void __noreturn am33xx_reset_cpu(unsigned long addr)
 {
 	writel(AM33XX_PRM_RSTCTRL_RESET, AM33XX_PRM_RSTCTRL);
 
diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/arch/arm/mach-omap/include/mach/am33xx-generic.h
index 07c72e4..ed77b64 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-generic.h
@@ -26,4 +26,6 @@ u32 am33xx_running_in_flash(void);
 u32 am33xx_running_in_sram(void);
 u32 am33xx_running_in_sdram(void);
 
+void __noreturn am33xx_reset_cpu(unsigned long addr);
+
 #endif /* __MACH_AM33XX_GENERIC_H */
diff --git a/arch/arm/mach-omap/include/mach/omap3-generic.h b/arch/arm/mach-omap/include/mach/omap3-generic.h
index a6af2ff..c847bfa 100644
--- a/arch/arm/mach-omap/include/mach/omap3-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap3-generic.h
@@ -23,4 +23,6 @@ u32 omap3_running_in_flash(void);
 u32 omap3_running_in_sram(void);
 u32 omap3_running_in_sdram(void);
 
+void __noreturn omap3_reset_cpu(unsigned long addr);
+
 #endif /* __MACH_OMAP3_GENERIC_H */
diff --git a/arch/arm/mach-omap/include/mach/omap4-generic.h b/arch/arm/mach-omap/include/mach/omap4-generic.h
index 44f5a12..06bc031 100644
--- a/arch/arm/mach-omap/include/mach/omap4-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap4-generic.h
@@ -18,4 +18,6 @@ static inline void omap4_save_bootinfo(uint32_t *info)
 	omap_save_bootinfo(info);
 }
 
+void __noreturn omap4_reset_cpu(unsigned long addr);
+
 #endif /* __MACH_OMAP4_GENERIC_H */
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 1046417..e53b363 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -52,7 +52,7 @@
  *
  * @return void
  */
-void __noreturn reset_cpu(unsigned long addr)
+void __noreturn omap3_reset_cpu(unsigned long addr)
 {
 	writel(OMAP3_PRM_RSTCTRL_RESET, OMAP3_PRM_REG(RSTCTRL));
 
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 64b0024..58051a3 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -34,7 +34,7 @@
 #define EMIF_L3_CONFIG_VAL_SYS_10_LL_0		0x0A0000FF
 #define EMIF_L3_CONFIG_VAL_SYS_10_MPU_3_LL_0	0x0A300000
 
-void __noreturn reset_cpu(unsigned long addr)
+void __noreturn omap4_reset_cpu(unsigned long addr)
 {
 	writel(OMAP44XX_PRM_RSTCTRL_RESET, OMAP44XX_PRM_RSTCTRL);
 
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 79e37e2..2c12ad4 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -25,6 +25,9 @@
 #include <mach/am33xx-silicon.h>
 #include <mach/omap3-silicon.h>
 #include <mach/omap4-silicon.h>
+#include <mach/am33xx-generic.h>
+#include <mach/omap3-generic.h>
+#include <mach/omap4-generic.h>
 
 static void *omap_sram_start(void)
 {
@@ -130,3 +133,14 @@ static int omap_env_init(void)
 }
 late_initcall(omap_env_init);
 #endif
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	if (cpu_is_omap34xx())
+		omap3_reset_cpu(addr);
+	if (cpu_is_omap4xxx())
+		omap4_reset_cpu(addr);
+	if (cpu_is_am33xx())
+		am33xx_reset_cpu(addr);
+	while (1);
+}
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
