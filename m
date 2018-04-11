Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6FmG-0004kc-CK
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 13:27:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Apr 2018 15:26:52 +0200
Message-Id: <20180411132654.10620-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: i.MX6: factor out function to read si_rev
To: Barebox List <barebox@lists.infradead.org>

The i.MX6sl has another silicon revision register offset than the
other i.MX6 SoCs. Finding the register is done twice. Factor out
a function to get a common place to find the register.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx6.h | 61 +++++++++++++++++++++--------------
 1 file changed, 36 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index 436f8fc31b..9b538db2ea 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -33,26 +33,43 @@ static inline int scu_get_core_count(void)
 	return (ncores & 0x03) + 1;
 }
 
+#define SI_REV_CPUTYPE(s)	(((s) >> 16) & 0xff)
+#define SI_REV_MAJOR(s)		(((s) >> 8) & 0xf)
+#define SI_REV_MINOR(s)		((s) & 0xf)
+
+static inline uint32_t __imx6_read_si_rev(void)
+{
+	uint32_t si_rev;
+	uint32_t cpu_type;
+
+	si_rev = readl(MX6_ANATOP_BASE_ADDR + IMX6_ANATOP_SI_REV);
+	cpu_type = SI_REV_CPUTYPE(si_rev);
+
+	if (cpu_type >= 0x61 && cpu_type <= 0x65)
+		return si_rev;
+
+	/* try non-MX6-standard SI_REV reg offset for MX6SL */
+	si_rev = readl(MX6_ANATOP_BASE_ADDR + IMX6SL_ANATOP_SI_REV);
+	cpu_type = SI_REV_CPUTYPE(si_rev);
+
+	if (si_rev == 0x60)
+		return si_rev;
+
+	return 0;
+}
+
 static inline int __imx6_cpu_type(void)
 {
-	uint32_t val;
-
-	val = readl(MX6_ANATOP_BASE_ADDR + IMX6_ANATOP_SI_REV);
-	val = (val >> 16) & 0xff;
-	/* non-MX6-standard SI_REV reg offset for MX6SL */
-	if (IS_ENABLED(CONFIG_ARCH_IMX6SL) &&
-	    val < (IMX6_CPUTYPE_IMX6S & 0xff)) {
-		uint32_t tmp;
-		tmp = readl(MX6_ANATOP_BASE_ADDR + IMX6SL_ANATOP_SI_REV);
-		tmp = (tmp >> 16) & 0xff;
-		if ((IMX6_CPUTYPE_IMX6SL & 0xff) == tmp)
-			/* intentionally skip scu_get_core_count() for MX6SL */
-			return IMX6_CPUTYPE_IMX6SL;
-	}
+	uint32_t si_rev = __imx6_read_si_rev();
+	uint32_t cpu_type = SI_REV_CPUTYPE(si_rev);
 
-	val |= scu_get_core_count() << 8;
+	/* intentionally skip scu_get_core_count() for MX6SL */
+	if (cpu_type == IMX6_CPUTYPE_IMX6SL)
+		return IMX6_CPUTYPE_IMX6SL;
 
-	return val;
+	cpu_type |= scu_get_core_count() << 8;
+
+	return cpu_type;
 }
 
 int imx6_cpu_type(void);
@@ -81,17 +98,11 @@ DEFINE_MX6_CPU_TYPE(mx6ull, IMX6_CPUTYPE_IMX6ULL);
 
 static inline int __imx6_cpu_revision(void)
 {
-	uint32_t rev;
-	uint32_t si_rev_offset = IMX6_ANATOP_SI_REV;
+	uint32_t si_rev = __imx6_read_si_rev();
 	u8 major_part, minor_part;
 
-	if (IS_ENABLED(CONFIG_ARCH_IMX6SL) && cpu_mx6_is_mx6sl())
-		si_rev_offset = IMX6SL_ANATOP_SI_REV;
-
-	rev = readl(MX6_ANATOP_BASE_ADDR + si_rev_offset);
-
-	major_part = (rev >> 8) & 0xf;
-	minor_part = rev & 0xf;
+	major_part = (si_rev >> 8) & 0xf;
+	minor_part = si_rev & 0xf;
 
 	return ((major_part + 1) << 4) | minor_part;
 }
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
