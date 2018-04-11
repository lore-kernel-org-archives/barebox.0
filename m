Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6FmG-0004gZ-DZ
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 13:27:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Apr 2018 15:26:51 +0200
Message-Id: <20180411132654.10620-2-s.hauer@pengutronix.de>
In-Reply-To: <20180411132654.10620-1-s.hauer@pengutronix.de>
References: <20180411132654.10620-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: i.MX6: de-inline i.MX6 type detection
To: Barebox List <barebox@lists.infradead.org>

Having the i.MX6 type detection completely inline is less then optimal
in terms of binary size. Make the detection functions non-inline. While
at it ask the registers only once and store the result in a variable as
the i.MX6 type is unlikely to change during runtime.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c              | 26 ++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx6.h | 16 ++--------------
 2 files changed, 28 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 14a1cba5a4..5a7cb7f8bc 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -147,6 +147,32 @@ static void imx6ul_enet_clk_init(void)
 	writel(val, gprbase + IOMUXC_GPR1);
 }
 
+int imx6_cpu_type(void)
+{
+	static int cpu_type = -1;
+
+	if (!cpu_is_mx6())
+		return 0;
+
+	if (cpu_type < 0)
+		cpu_type = __imx6_cpu_type();
+
+	return cpu_type;
+}
+
+int imx6_cpu_revision(void)
+{
+	static int soc_revision = -1;
+
+	if (!cpu_is_mx6())
+		return 0;
+
+	if (soc_revision < 0)
+		soc_revision = __imx6_cpu_revision();
+
+	return soc_revision;
+}
+
 int imx6_init(void)
 {
 	const char *cputypestr;
diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index 6b08e6a521..436f8fc31b 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -55,13 +55,7 @@ static inline int __imx6_cpu_type(void)
 	return val;
 }
 
-static inline int imx6_cpu_type(void)
-{
-	if (!cpu_is_mx6())
-		return 0;
-
-	return __imx6_cpu_type();
-}
+int imx6_cpu_type(void);
 
 #define DEFINE_MX6_CPU_TYPE(str, type)					\
 	static inline int cpu_mx6_is_##str(void)			\
@@ -102,12 +96,6 @@ static inline int __imx6_cpu_revision(void)
 	return ((major_part + 1) << 4) | minor_part;
 }
 
-static inline int imx6_cpu_revision(void)
-{
-	if (!cpu_is_mx6())
-		return 0;
-
-	return __imx6_cpu_revision();
-}
+int imx6_cpu_revision(void);
 
 #endif /* __MACH_IMX6_H */
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
