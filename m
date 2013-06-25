Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrTsh-0000zF-1f
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 14:06:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Jun 2013 16:05:40 +0200
Message-Id: <1372169140-9918-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX6: Add cputype detection
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c              | 16 +++++++++++++++-
 arch/arm/mach-imx/include/mach/imx6.h | 31 +++++++++++++++++++++++++++++++
 2 files changed, 46 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 9e7dd7a..ed1edd7 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -15,6 +15,7 @@
 #include <common.h>
 #include <io.h>
 #include <sizes.h>
+#include <mach/imx6.h>
 #include <mach/generic.h>
 #include <mach/revision.h>
 #include <mach/imx6-regs.h>
@@ -59,6 +60,7 @@ void imx6_init_lowlevel(void)
 
 int imx6_init(void)
 {
+	const char *cputypestr;
 	u32 rev;
 	u32 mx6_silicon_revision;
 
@@ -82,7 +84,19 @@ int imx6_init(void)
 		mx6_silicon_revision = IMX_CHIP_REV_UNKNOWN;
 	}
 
-	imx_set_silicon_revision("i.MX6", mx6_silicon_revision);
+	switch (imx6_cpu_type()) {
+	case IMX6_CPUTYPE_IMX6Q:
+		cputypestr = "i.MX6 Dual/Quad";
+		break;
+	case IMX6_CPUTYPE_IMX6DL:
+		cputypestr = "i.MX6 Solo/DualLite";
+		break;
+	default:
+		cputypestr = "unknown i.MX6";
+		break;
+	}
+
+	imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index 518cf98..4b2b1c7 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -1,6 +1,37 @@
 #ifndef __MACH_IMX6_H
 #define __MACH_IMX6_H
 
+#include <io.h>
+#include <mach/generic.h>
+#include <mach/imx6-regs.h>
+
 void imx6_init_lowlevel(void);
 
+#define IMX6_ANATOP_SI_REV 0x260
+
+#define IMX6_CPUTYPE_IMX6Q	0x63
+#define IMX6_CPUTYPE_IMX6DL	0x61
+
+static inline int imx6_cpu_type(void)
+{
+	uint32_t val;
+
+	if (!cpu_is_mx6())
+		return 0;
+
+	val = readl(MX6_ANATOP_BASE_ADDR + IMX6_ANATOP_SI_REV);
+
+	return (val >> 16) & 0xff;
+}
+
+static inline int cpu_is_mx6q(void)
+{
+	return imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
+}
+
+static inline int cpu_is_mx6dl(void)
+{
+	return imx6_cpu_type() == IMX6_CPUTYPE_IMX6DL;
+}
+
 #endif /* __MACH_IMX6_H */
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
