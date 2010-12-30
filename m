Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PYIu1-0000F0-Fg
	for barebox@lists.infradead.org; Thu, 30 Dec 2010 13:50:50 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id oBUDokBX009413
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 30 Dec 2010 07:50:48 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 30 Dec 2010 19:19:55 +0530
Message-Id: <1293716998-5154-3-git-send-email-premi@ti.com>
In-Reply-To: <1293716998-5154-1-git-send-email-premi@ti.com>
References: <1293716998-5154-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 3/6] omap3: Update method to detect si revision
To: barebox@lists.infradead.org

This patch ensures that all silicon revisions
are detected. (Current implementation cannot
detect ES1.0).

In the process, the 'seemingly' hardcoded macros
identifying cpu revision (e.g. CPU_ES1P1) have
been updated to include the CPU name as well.
(The mapping of IDCODE value to silicon revision
may not be same across different OMAP families).

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/include/mach/sys_info.h |   21 ++++++---------
 arch/arm/mach-omap/omap3_generic.c         |   38 +++++++++++++++++++++++++---
 2 files changed, 42 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/sys_info.h b/arch/arm/mach-omap/include/mach/sys_info.h
index f9df51c..8b8d332 100644
--- a/arch/arm/mach-omap/include/mach/sys_info.h
+++ b/arch/arm/mach-omap/include/mach/sys_info.h
@@ -51,20 +51,15 @@
 #define CPU_1610	0x1610
 
 /**
- * CPU revision
+ * Define CPU revisions
  */
-#define CPU_ES1		1
-#define CPU_ES1P1	2
-#define CPU_ES1P2	3
-#define CPU_ES2		4
-#define CPU_ES2P1	5
-#define CPU_ES2P2	6
-#define CPU_ES3		7
-#define CPU_ES3P1	8
-#define CPU_ES3P2	9
-#define CPU_ES4		10
-#define CPU_ES4P1	11
-#define CPU_ES4P2	12
+#define	cpu_revision(cpu,rev)	(((cpu) << 16) | (rev))
+
+#define OMAP34XX_ES1		cpu_revision(CPU_3430, 0)
+#define OMAP34XX_ES2		cpu_revision(CPU_3430, 1)
+#define OMAP34XX_ES2_1		cpu_revision(CPU_3430, 2)
+#define OMAP34XX_ES3		cpu_revision(CPU_3430, 3)
+#define OMAP34XX_ES3_1		cpu_revision(CPU_3430, 4)
 
 #define GPMC_MUXED		1
 #define GPMC_NONMUXED		0
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index cd9aceb..e146780 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -87,20 +87,50 @@ u32 get_cpu_type(void)
 }
 
 /**
- * @brief Extract the OMAP ES rev
+ * @brief Extract the OMAP ES revision
  *
- * @return CPU_ES version
+ * Latest known revision is considered default.
+ *
+ * @return silicon version
  */
 u32 get_cpu_rev(void)
 {
 	u32 idcode_val;
-	u32 version;
+	u32 version, retval;
 
 	idcode_val = readl(IDCODE_REG);
 
 	version = get_version(idcode_val);
 
-	return version;
+	/*
+	 * On OMAP3430 ES1.0 the IDCODE register is not exposed on L4.
+	 * Use CPU ID to check for the same.
+	 */
+	__asm__ __volatile__("mrc p15, 0, %0, c0, c0, 0":"=r"(retval));
+	if ((retval & 0xf) == 0x0) {
+		retval = OMAP34XX_ES1;
+	} else {
+		switch (version) {
+		case 0: /* This field was not set in early samples */
+		case 1:
+			retval = OMAP34XX_ES2;
+			break;
+		case 2:
+			retval = OMAP34XX_ES2_1;
+			break;
+		case 3:
+			retval = OMAP34XX_ES3;
+			break;
+		case 4:
+			/*
+			 * Same as default case
+			 */
+		default:
+			retval = OMAP34XX_ES3_1;
+		}
+	}
+
+	return retval;
 }
 
 /**
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
