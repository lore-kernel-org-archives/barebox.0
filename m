Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Vjs8Y-0003Fa-7Z
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:55:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:54:31 +0100
Message-Id: <1385132083-7484-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/16] ARM: OMAP: Make cpu_is_* macros runtime if necessary
To: barebox@lists.infradead.org

Currently unused, just preparation for the next steps when we'll
get multiarch support for OMAP.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/generic.h | 40 ++++++++++++++++++++++---------
 arch/arm/mach-omap/omap_generic.c         | 11 +++++----
 2 files changed, 36 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-omap/include/mach/generic.h
index b05fdee..f4e18f3 100644
--- a/arch/arm/mach-omap/include/mach/generic.h
+++ b/arch/arm/mach-omap/include/mach/generic.h
@@ -10,28 +10,46 @@
 #define OMAP_I2C_REV_ON_3630            0x00000040
 #define OMAP_I2C_REV_ON_4430_PLUS       0x50400002
 
-#ifdef CONFIG_ARCH_OMAP
-#define cpu_is_omap2430()	(1)
-#else
-#define cpu_is_omap2430()	(0)
-#endif
+extern unsigned int __omap_cpu_type;
+
+#define OMAP_CPU_OMAP3		3
+#define OMAP_CPU_OMAP4		4
+#define OMAP_CPU_AM33XX		33
 
 #ifdef CONFIG_ARCH_OMAP3
-#define cpu_is_omap34xx()	(1)
+# ifdef omap_cpu_type
+#  undef omap_cpu_type
+#  define omap_cpu_type __omap_cpu_type
+# else
+#  define omap_cpu_type OMAP_CPU_OMAP3
+# endif
+# define cpu_is_omap3()		(omap_cpu_type == OMAP_CPU_OMAP3)
 #else
-#define cpu_is_omap34xx()	(0)
+# define cpu_is_omap3()		(0)
 #endif
 
 #ifdef CONFIG_ARCH_OMAP4
-#define cpu_is_omap4xxx()	(1)
+# ifdef omap_cpu_type
+#  undef omap_cpu_type
+#  define omap_cpu_type __omap_cpu_type
+# else
+#  define omap_cpu_type OMAP_CPU_OMAP4
+# endif
+# define cpu_is_omap4()		(omap_cpu_type == OMAP_CPU_OMAP4)
 #else
-#define cpu_is_omap4xxx()	(0)
+# define cpu_is_omap4()		(0)
 #endif
 
 #ifdef CONFIG_ARCH_AM33XX
-#define cpu_is_am33xx()		(1)
+# ifdef omap_cpu_type
+#  undef omap_cpu_type
+#  define omap_cpu_type __omap_cpu_type
+# else
+#  define omap_cpu_type OMAP_CPU_AM33XX
+# endif
+# define cpu_is_am33xx()		(omap_cpu_type == OMAP_CPU_AM33XX)
 #else
-#define cpu_is_am33xx()		(0)
+# define cpu_is_am33xx()	(0)
 #endif
 
 struct omap_barebox_part {
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 2c12ad4..b999ea4 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -29,14 +29,17 @@
 #include <mach/omap3-generic.h>
 #include <mach/omap4-generic.h>
 
+unsigned int __omap_cpu_type;
+
 static void *omap_sram_start(void)
 {
 	if (cpu_is_am33xx())
 		return (void *)AM33XX_SRAM0_START;
-	if (cpu_is_omap34xx())
+	if (cpu_is_omap3())
 		return (void *)OMAP3_SRAM_BASE;
-	if (cpu_is_omap4xxx())
+	if (cpu_is_omap4())
 		return (void *)OMAP44XX_SRAM_BASE;
+	return NULL;
 }
 
 void __noreturn omap_start_barebox(void *barebox)
@@ -136,9 +139,9 @@ late_initcall(omap_env_init);
 
 void __noreturn reset_cpu(unsigned long addr)
 {
-	if (cpu_is_omap34xx())
+	if (cpu_is_omap3())
 		omap3_reset_cpu(addr);
-	if (cpu_is_omap4xxx())
+	if (cpu_is_omap4())
 		omap4_reset_cpu(addr);
 	if (cpu_is_am33xx())
 		am33xx_reset_cpu(addr);
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
