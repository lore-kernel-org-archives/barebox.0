Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Zdu-0006IO-DL
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 10:48:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 11:48:16 +0100
Message-Id: <1389350897-9038-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX: Add correct SoC type detection for i.MX6
To: barebox@lists.infradead.org

Using the ANATOP_SI_REV register we can only distinguish between
i.MX6q/d and i.MX6dl/s SoCs. Take the number of cores into account
to get the exact SoC type.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c              | 10 +++++--
 arch/arm/mach-imx/include/mach/imx6.h | 49 +++++++++++++++++++++++++++++------
 2 files changed, 49 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index ed1edd7..13d8bfa 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -86,10 +86,16 @@ int imx6_init(void)
 
 	switch (imx6_cpu_type()) {
 	case IMX6_CPUTYPE_IMX6Q:
-		cputypestr = "i.MX6 Dual/Quad";
+		cputypestr = "i.MX6 Quad";
+		break;
+	case IMX6_CPUTYPE_IMX6D:
+		cputypestr = "i.MX6 Dual";
 		break;
 	case IMX6_CPUTYPE_IMX6DL:
-		cputypestr = "i.MX6 Solo/DualLite";
+		cputypestr = "i.MX6 DualLite";
+		break;
+	case IMX6_CPUTYPE_IMX6S:
+		cputypestr = "i.MX6 Solo";
 		break;
 	default:
 		cputypestr = "unknown i.MX6";
diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index 4b2b1c7..1898d81 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -9,24 +9,47 @@ void imx6_init_lowlevel(void);
 
 #define IMX6_ANATOP_SI_REV 0x260
 
-#define IMX6_CPUTYPE_IMX6Q	0x63
-#define IMX6_CPUTYPE_IMX6DL	0x61
+#define IMX6_CPUTYPE_IMX6S	0x161
+#define IMX6_CPUTYPE_IMX6DL	0x261
+#define IMX6_CPUTYPE_IMX6D	0x263
+#define IMX6_CPUTYPE_IMX6Q	0x463
 
-static inline int imx6_cpu_type(void)
+#define SCU_CONFIG              0x04
+
+static inline int scu_get_core_count(void)
+{
+	unsigned long base;
+	unsigned int ncores;
+
+	asm("mrc p15, 4, %0, c15, c0, 0" : "=r" (base));
+
+	ncores = readl(base + SCU_CONFIG);
+	return (ncores & 0x03) + 1;
+}
+
+static inline int __imx6_cpu_type(void)
 {
 	uint32_t val;
 
+	val = readl(MX6_ANATOP_BASE_ADDR + IMX6_ANATOP_SI_REV);
+	val = (val >> 16) & 0xff;
+
+	val |= scu_get_core_count() << 8;
+
+	return val;
+}
+
+static inline int imx6_cpu_type(void)
+{
 	if (!cpu_is_mx6())
 		return 0;
 
-	val = readl(MX6_ANATOP_BASE_ADDR + IMX6_ANATOP_SI_REV);
-
-	return (val >> 16) & 0xff;
+	return __imx6_cpu_type();
 }
 
-static inline int cpu_is_mx6q(void)
+static inline int cpu_is_mx6s(void)
 {
-	return imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
+	return imx6_cpu_type() == IMX6_CPUTYPE_IMX6S;
 }
 
 static inline int cpu_is_mx6dl(void)
@@ -34,4 +57,14 @@ static inline int cpu_is_mx6dl(void)
 	return imx6_cpu_type() == IMX6_CPUTYPE_IMX6DL;
 }
 
+static inline int cpu_is_mx6d(void)
+{
+	return imx6_cpu_type() == IMX6_CPUTYPE_IMX6D;
+}
+
+static inline int cpu_is_mx6q(void)
+{
+	return imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
+}
+
 #endif /* __MACH_IMX6_H */
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
