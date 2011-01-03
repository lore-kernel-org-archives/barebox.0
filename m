Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PZlLS-0003SI-UL
	for barebox@lists.infradead.org; Mon, 03 Jan 2011 14:25:11 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id p03EP7iE023031
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Mon, 3 Jan 2011 08:25:09 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Mon,  3 Jan 2011 19:54:49 +0530
Message-Id: <1294064695-10865-3-git-send-email-premi@ti.com>
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
Subject: [PATCH 2/8] omap36x: Detect silicon revisions
To: barebox@lists.infradead.org

This patch adds support to detect the different
OMAP36XX silicon revisions.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/include/mach/sys_info.h |    4 ++
 arch/arm/mach-omap/omap3_generic.c         |   60 +++++++++++++++++++--------
 2 files changed, 46 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/sys_info.h b/arch/arm/mach-omap/include/mach/sys_info.h
index 37a4a71..f557068 100644
--- a/arch/arm/mach-omap/include/mach/sys_info.h
+++ b/arch/arm/mach-omap/include/mach/sys_info.h
@@ -62,6 +62,10 @@
 #define OMAP34XX_ES3		cpu_revision(CPU_3430, 3)
 #define OMAP34XX_ES3_1		cpu_revision(CPU_3430, 4)
 
+#define OMAP36XX_ES1		cpu_revision(CPU_3630, 0)
+#define OMAP36XX_ES1_1		cpu_revision(CPU_3630, 1)
+#define OMAP36XX_ES1_2		cpu_revision(CPU_3630, 2)
+
 #define GPMC_MUXED		1
 #define GPMC_NONMUXED		0
 
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index e9083bc..843143b 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -92,6 +92,7 @@ u32 get_cpu_type(void)
 /**
  * @brief Extract the OMAP ES revision
  *
+ * The significance of the CPU revision depends upon the cpu type.
  * Latest known revision is considered default.
  *
  * @return silicon version
@@ -105,31 +106,54 @@ u32 get_cpu_rev(void)
 
 	version = get_version(idcode_val);
 
-	/*
-	 * On OMAP3430 ES1.0 the IDCODE register is not exposed on L4.
-	 * Use CPU ID to check for the same.
-	 */
-	__asm__ __volatile__("mrc p15, 0, %0, c0, c0, 0":"=r"(retval));
-	if ((retval & 0xf) == 0x0) {
-		retval = OMAP34XX_ES1;
-	} else {
+	switch (get_cpu_type()) {
+	case CPU_3630:
 		switch (version) {
-		case 0: /* This field was not set in early samples */
+		case 0:
+			retval = OMAP36XX_ES1;
+			break;
 		case 1:
-			retval = OMAP34XX_ES2;
+			retval = OMAP36XX_ES1_1;
 			break;
 		case 2:
-			retval = OMAP34XX_ES2_1;
-			break;
-		case 3:
-			retval = OMAP34XX_ES3;
-			break;
-		case 4:
 			/*
-			 * Same as default case
+			 * Fall through the default case.
 			 */
 		default:
-			retval = OMAP34XX_ES3_1;
+			retval = OMAP36XX_ES1_2;
+		}
+		break;
+	case CPU_3430:
+		/*
+		 * Same as default case
+		 */
+	default:
+		/*
+		 * On OMAP3430 ES1.0 the IDCODE register is not exposed on L4.
+		 * Use CPU ID to check for the same.
+		 */
+		__asm__ __volatile__("mrc p15, 0, %0, c0, c0, 0":"=r"(retval));
+		if ((retval & 0xf) == 0x0) {
+			retval = OMAP34XX_ES1;
+		} else {
+			switch (version) {
+			case 0: /* This field was not set in early samples */
+			case 1:
+				retval = OMAP34XX_ES2;
+				break;
+			case 2:
+				retval = OMAP34XX_ES2_1;
+				break;
+			case 3:
+				retval = OMAP34XX_ES3;
+				break;
+			case 4:
+				/*
+				 * Same as default case
+				 */
+			default:
+				retval = OMAP34XX_ES3_1;
+			}
 		}
 	}
 
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
