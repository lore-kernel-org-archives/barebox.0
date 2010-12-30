Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PYIu0-0000Eg-R0
	for barebox@lists.infradead.org; Thu, 30 Dec 2010 13:50:49 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id oBUDoiDU009408
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 30 Dec 2010 07:50:46 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 30 Dec 2010 19:19:54 +0530
Message-Id: <1293716998-5154-2-git-send-email-premi@ti.com>
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
Subject: [PATCH 2/6] omap3: Detect cpu based on hawkeye
To: barebox@lists.infradead.org

This patch sets the cpu type based on the hawkeye value
read from the IDCODE register. So far, cpu type was
hardcoded.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/include/mach/sys_info.h |    5 +++++
 arch/arm/mach-omap/omap3_generic.c         |   14 +++++++++++++-
 2 files changed, 18 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/sys_info.h b/arch/arm/mach-omap/include/mach/sys_info.h
index 4396720..f9df51c 100644
--- a/arch/arm/mach-omap/include/mach/sys_info.h
+++ b/arch/arm/mach-omap/include/mach/sys_info.h
@@ -81,6 +81,11 @@
 #define HS_DEVICE               0x2
 #define GP_DEVICE               0x3
 
+/**
+ * Hawkeye definitions to identify silicon families
+ */
+#define OMAP_HAWKEYE_34XX	0xB7AE
+
 /** These are implemented by the System specific code in omapX-generic.c */
 u32 get_cpu_type(void);
 u32 get_cpu_rev(void);
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index a079f38..cd9aceb 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -70,7 +70,19 @@ EXPORT_SYMBOL(reset_cpu);
  */
 u32 get_cpu_type(void)
 {
-	/* FIXME: need to get register defines for 3430 */
+	u32 idcode_val;
+	u16 hawkeye;
+
+	idcode_val = readl(IDCODE_REG);
+
+	hawkeye = get_hawkeye(idcode_val);
+
+	if (hawkeye == OMAP_HAWKEYE_34XX)
+		return CPU_3430;
+
+	/*
+	 * Fallback to OMAP3430 as default.
+	 */
 	return CPU_3430;
 }
 
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
