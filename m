Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4Qp-0008GN-M4
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:28 +0000
Received: by mail-pf0-x244.google.com with SMTP id i85so2311042pfa.0
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:06 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:38 -0700
Message-Id: <1475505657-898-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/20] i.MX: Add primitive functions for VF610 family
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add very basic functions to support VF610 family.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Kconfig                      | 10 ++++++++++
 arch/arm/mach-imx/cpu_init.c                   |  5 +++++
 arch/arm/mach-imx/imx.c                        |  4 ++++
 arch/arm/mach-imx/include/mach/generic.h       | 13 +++++++++++++
 arch/arm/mach-imx/include/mach/imx_cpu_types.h |  1 +
 5 files changed, 33 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a80bc6b..71862ef 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -149,6 +149,16 @@ config ARCH_IMX6SX
 	select OFTREE
 	select COMMON_CLK_OF_PROVIDER
 
+config ARCH_VF610
+	bool
+	select ARCH_HAS_L2X0
+	select ARCH_HAS_FEC_IMX
+	select CPU_V7
+	select PINCTRL
+	select OFTREE
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+
 config IMX_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index 7603883..6971d89 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -33,3 +33,8 @@ void imx6_cpu_lowlevel_init(void)
 	enable_arm_errata_794072_war();
 	enable_arm_errata_845369_war();
 }
+
+void vf610_cpu_lowlevel_init(void)
+{
+	arm_cpu_lowlevel_init();
+}
diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 5ab6afc..eb2adcd 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -63,6 +63,8 @@ static int imx_soc_from_dt(void)
 		return IMX_CPU_IMX6;
 	if (of_machine_is_compatible("fsl,imx6qp"))
 		return IMX_CPU_IMX6;
+	if (of_machine_is_compatible("fsl,vf610"))
+		return IMX_CPU_VF610;
 
 	return 0;
 }
@@ -99,6 +101,8 @@ static int imx_init(void)
 		ret = imx53_init();
 	else if (cpu_is_mx6())
 		ret = imx6_init();
+	else if (cpu_is_vf610())
+		ret = 0;
 	else
 		return -EINVAL;
 
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index cadc501..ec35edc 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -41,6 +41,7 @@ int imx6_devices_init(void);
 
 void imx5_cpu_lowlevel_init(void);
 void imx6_cpu_lowlevel_init(void);
+void vf610_cpu_lowlevel_init(void);
 
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
@@ -169,6 +170,18 @@ extern unsigned int __imx_cpu_type;
 # define cpu_is_mx6()		(0)
 #endif
 
+#ifdef CONFIG_ARCH_VF610
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_VF610
+# endif
+# define cpu_is_vf610()		(imx_cpu_type == IMX_CPU_VF610)
+#else
+# define cpu_is_vf610()		(0)
+#endif
+
 #define cpu_is_mx23()	(0)
 #define cpu_is_mx28()	(0)
 
diff --git a/arch/arm/mach-imx/include/mach/imx_cpu_types.h b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
index 8472488..50be0b6 100644
--- a/arch/arm/mach-imx/include/mach/imx_cpu_types.h
+++ b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
@@ -11,5 +11,6 @@
 #define IMX_CPU_IMX51	51
 #define IMX_CPU_IMX53	53
 #define IMX_CPU_IMX6	6
+#define IMX_CPU_VF610	610
 
 #endif /* __MACH_IMX_CPU_TYPES_H */
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
