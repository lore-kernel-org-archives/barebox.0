Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arroyo.ext.ti.com ([192.94.94.40])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PYIts-0000E6-58
	for barebox@lists.infradead.org; Thu, 30 Dec 2010 13:50:40 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id oBUDoWwp010797
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 30 Dec 2010 07:50:34 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 30 Dec 2010 19:19:53 +0530
Message-Id: <1293716998-5154-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 1/6] omap3: Add macros to extract hawkeye and version
To: barebox@lists.infradead.org

This patch adds macros to extract the hawkeye
and version number from IDCODE value.

Updated function get_cpu_rev() to use new macro.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/include/mach/omap3-silicon.h |   16 ++++++++--------
 arch/arm/mach-omap/omap3_generic.c              |   12 ++++++------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap3-silicon.h b/arch/arm/mach-omap/include/mach/omap3-silicon.h
index 62e612b..0e6a45f 100644
--- a/arch/arm/mach-omap/include/mach/omap3-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap3-silicon.h
@@ -116,17 +116,17 @@
 #define OMAP_TAP_BASE		(OMAP_L4_WKUP_BASE + 0xA000)
 #define IDCODE_REG		(OMAP_TAP_BASE + 0x204)
 
-/************ Generic Chip specific Definitions **********/
-/**
- * CHIP			F number	HAWKEYE (hex)
- * OMAP3430 ES1.0	F771609		B6D6
- * OMAP3430 ES2.0	F771609A	B7AE
- */
+/** Masks to extract information from ID code register */
+#define IDCODE_HAWKEYE_MASK	0x0FFFF000
+#define IDCODE_VERSION_MASK	0xF0000000
+
+ #define get_hawkeye(v)		(((v) & IDCODE_HAWKEYE_MASK) >> 12)
+ #define get_version(v)		(((v) & IDCODE_VERSION_MASK) >> 28)
+
 #define HAWKEYE_ES1		0x0B6D6000
 #define HAWKEYE_ES2		0x0B7AE000
 #define HAWKEYE_ES2_1		0x1B7AE000
-#define HAWKEYE_MASK		0x0FFFF000
-#define VERSION_MASK		0xF0000000
+
 #define DEVICE_MASK		((0x1 << 8)|(0x1 << 9)|(0x1 << 10))
 
 #define OMAP_SDRC_CS0		0x80000000
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index f780794..a079f38 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -82,13 +82,13 @@ u32 get_cpu_type(void)
 u32 get_cpu_rev(void)
 {
 	u32 idcode_val;
+	u32 version;
+
 	idcode_val = readl(IDCODE_REG);
-	if ((idcode_val & (HAWKEYE_MASK | VERSION_MASK)) == HAWKEYE_ES2_1)
-		return CPU_ES2P1;
-	if ((idcode_val & HAWKEYE_MASK) == HAWKEYE_ES2)
-		return CPU_ES2;
-	/* unsupported! */
-	return CPU_ES1;
+
+	version = get_version(idcode_val);
+
+	return version;
 }
 
 /**
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
