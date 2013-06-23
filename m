Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uqs29-0001xg-Mr
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 21:41:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 23 Jun 2013 23:40:51 +0200
Message-Id: <1372023651-13725-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372023651-13725-1-git-send-email-s.hauer@pengutronix.de>
References: <1372023651-13725-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX: adopt cpu_is_* for multiple SoCs
To: barebox@lists.infradead.org

This makes cpu_is_* functions when necessary for upcoming multisoc
support. When only one SoC type is compiled in cpu_is_* still expand
to static values.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx.c                  |  36 ++++++++++-
 arch/arm/mach-imx/include/mach/generic.h | 102 +++++++++++++++++++++++++------
 2 files changed, 119 insertions(+), 19 deletions(-)

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index d6e30a8..6e80bd6 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -32,9 +32,43 @@ void imx_set_silicon_revision(const char *soc, int revision)
 			revision & 0xf);
 }
 
+unsigned int __imx_cpu_type;
+
+static int imx_soc_from_dt(void)
+{
+	if (of_machine_is_compatible("fsl,imx1"))
+		return IMX_CPU_IMX1;
+	if (of_machine_is_compatible("fsl,imx21"))
+		return IMX_CPU_IMX21;
+	if (of_machine_is_compatible("fsl,imx25"))
+		return IMX_CPU_IMX25;
+	if (of_machine_is_compatible("fsl,imx27"))
+		return IMX_CPU_IMX27;
+	if (of_machine_is_compatible("fsl,imx31"))
+		return IMX_CPU_IMX31;
+	if (of_machine_is_compatible("fsl,imx35"))
+		return IMX_CPU_IMX35;
+	if (of_machine_is_compatible("fsl,imx51"))
+		return IMX_CPU_IMX51;
+	if (of_machine_is_compatible("fsl,imx53"))
+		return IMX_CPU_IMX53;
+	if (of_machine_is_compatible("fsl,imx6"))
+		return IMX_CPU_IMX6;
+
+	return 0;
+}
+
 static int imx_init(void)
 {
 	int ret;
+	struct device_node *root;
+
+	root = of_get_root_node();
+	if (root) {
+		__imx_cpu_type = imx_soc_from_dt();
+		if (!__imx_cpu_type)
+			hang();
+	}
 
 	if (cpu_is_mx1())
 		ret = imx1_init();
@@ -57,7 +91,7 @@ static int imx_init(void)
 	else
 		return -EINVAL;
 
-	if (of_get_root_node())
+	if (root)
 		return ret;
 
 	if (cpu_is_mx1())
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 0c5dc8a..506b1da 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -37,58 +37,124 @@ int imx6_devices_init(void);
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
 #define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))
 
+#define IMX_CPU_IMX1	1
+#define IMX_CPU_IMX21	21
+#define IMX_CPU_IMX25	25
+#define IMX_CPU_IMX27	27
+#define IMX_CPU_IMX31	31
+#define IMX_CPU_IMX35	35
+#define IMX_CPU_IMX51	51
+#define IMX_CPU_IMX53	53
+#define IMX_CPU_IMX6	6
+
+extern unsigned int __imx_cpu_type;
+
 #ifdef CONFIG_ARCH_IMX1
-#define cpu_is_mx1()	(1)
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_IMX1
+# endif
+# define cpu_is_mx1()		(imx_cpu_type == IMX_CPU_IMX1)
 #else
-#define cpu_is_mx1()	(0)
+# define cpu_is_mx1()		(0)
 #endif
 
 #ifdef CONFIG_ARCH_IMX21
-#define cpu_is_mx21()	(1)
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_IMX21
+# endif
+# define cpu_is_mx21()		(imx_cpu_type == IMX_CPU_IMX21)
 #else
-#define cpu_is_mx21()	(0)
+# define cpu_is_mx21()		(0)
 #endif
 
 #ifdef CONFIG_ARCH_IMX25
-#define cpu_is_mx25()	(1)
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_IMX25
+# endif
+# define cpu_is_mx25()		(imx_cpu_type == IMX_CPU_IMX25)
 #else
-#define cpu_is_mx25()	(0)
+# define cpu_is_mx25()		(0)
 #endif
 
 #ifdef CONFIG_ARCH_IMX27
-#define cpu_is_mx27()	(1)
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_IMX27
+# endif
+# define cpu_is_mx27()		(imx_cpu_type == IMX_CPU_IMX27)
 #else
-#define cpu_is_mx27()	(0)
+# define cpu_is_mx27()		(0)
 #endif
 
 #ifdef CONFIG_ARCH_IMX31
-#define cpu_is_mx31()	(1)
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_IMX31
+# endif
+# define cpu_is_mx31()		(imx_cpu_type == IMX_CPU_IMX31)
 #else
-#define cpu_is_mx31()	(0)
+# define cpu_is_mx31()		(0)
 #endif
 
 #ifdef CONFIG_ARCH_IMX35
-#define cpu_is_mx35()	(1)
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_IMX35
+# endif
+# define cpu_is_mx35()		(imx_cpu_type == IMX_CPU_IMX35)
 #else
-#define cpu_is_mx35()	(0)
+# define cpu_is_mx35()		(0)
 #endif
 
 #ifdef CONFIG_ARCH_IMX51
-#define cpu_is_mx51()	(1)
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_IMX51
+# endif
+# define cpu_is_mx51()		(imx_cpu_type == IMX_CPU_IMX51)
 #else
-#define cpu_is_mx51()	(0)
+# define cpu_is_mx51()		(0)
 #endif
 
 #ifdef CONFIG_ARCH_IMX53
-#define cpu_is_mx53()	(1)
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_IMX53
+# endif
+# define cpu_is_mx53()		(imx_cpu_type == IMX_CPU_IMX53)
 #else
-#define cpu_is_mx53()	(0)
+# define cpu_is_mx53()		(0)
 #endif
 
 #ifdef CONFIG_ARCH_IMX6
-#define cpu_is_mx6()	(1)
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_IMX6
+# endif
+# define cpu_is_mx6()		(imx_cpu_type == IMX_CPU_IMX6)
 #else
-#define cpu_is_mx6()	(0)
+# define cpu_is_mx6()		(0)
 #endif
 
 #define cpu_is_mx23()	(0)
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
