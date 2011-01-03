Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PZlLR-0003Ri-RO
	for barebox@lists.infradead.org; Mon, 03 Jan 2011 14:25:10 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id p03EP5k0012728
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Mon, 3 Jan 2011 08:25:07 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Mon,  3 Jan 2011 19:54:48 +0530
Message-Id: <1294064695-10865-2-git-send-email-premi@ti.com>
In-Reply-To: <1294064695-10865-1-git-send-email-premi@ti.com>
References: <1294064695-10865-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 1/8] omap36x: Add support for dynamic detection
To: barebox@lists.infradead.org

This patch adds the support to detect OMAP3630.

It also re-organizes the CPU_xxxx definitions in sys_info.h
to ascending order so that newer silicons can be added at
bottom.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/include/mach/sys_info.h |   10 ++++++----
 arch/arm/mach-omap/omap3_generic.c         |    5 ++++-
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/sys_info.h b/arch/arm/mach-omap/include/mach/sys_info.h
index 8b8d332..37a4a71 100644
--- a/arch/arm/mach-omap/include/mach/sys_info.h
+++ b/arch/arm/mach-omap/include/mach/sys_info.h
@@ -44,11 +44,12 @@
 #define DDR_133		133    /* most combo, some mem d-boards */
 #define DDR_165		165    /* future parts */
 
-#define CPU_3430	0x3430
-#define CPU_2430	0x2430
-#define CPU_2420	0x2420
-#define CPU_1710	0x1710
 #define CPU_1610	0x1610
+#define CPU_1710	0x1710
+#define CPU_2420	0x2420
+#define CPU_2430	0x2430
+#define CPU_3430	0x3430
+#define CPU_3630	0x3630
 
 /**
  * Define CPU revisions
@@ -80,6 +81,7 @@
  * Hawkeye definitions to identify silicon families
  */
 #define OMAP_HAWKEYE_34XX	0xB7AE
+#define OMAP_HAWKEYE_36XX	0xB891
 
 /** These are implemented by the System specific code in omapX-generic.c */
 u32 get_cpu_type(void);
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index e146780..e9083bc 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -66,7 +66,7 @@ EXPORT_SYMBOL(reset_cpu);
 /**
  * @brief Low level CPU type
  *
- * @return CPU_3430
+ * @return Detected CPU type
  */
 u32 get_cpu_type(void)
 {
@@ -80,6 +80,9 @@ u32 get_cpu_type(void)
 	if (hawkeye == OMAP_HAWKEYE_34XX)
 		return CPU_3430;
 
+	if (hawkeye == OMAP_HAWKEYE_36XX)
+		return CPU_3630;
+
 	/*
 	 * Fallback to OMAP3430 as default.
 	 */
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
