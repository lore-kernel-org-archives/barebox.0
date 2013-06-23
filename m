Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uqs29-0001xf-Mu
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 21:41:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 23 Jun 2013 23:40:50 +0200
Message-Id: <1372023651-13725-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX: centralize i.MX startup
To: barebox@lists.infradead.org

Each i.MX SoC has its own SoC initcall. To ease multi SoC support
move it to a single initcall.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx.c                  | 55 ++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx1.c                 | 12 +++++--
 arch/arm/mach-imx/imx21.c                |  9 ++++--
 arch/arm/mach-imx/imx25.c                |  8 +++--
 arch/arm/mach-imx/imx27.c                |  9 ++++--
 arch/arm/mach-imx/imx31.c                |  9 ++++--
 arch/arm/mach-imx/imx35.c                | 14 ++++----
 arch/arm/mach-imx/imx51.c                |  9 +++---
 arch/arm/mach-imx/imx53.c                |  8 +++--
 arch/arm/mach-imx/imx6.c                 | 10 +++---
 arch/arm/mach-imx/include/mach/generic.h | 20 ++++++++++++
 11 files changed, 134 insertions(+), 29 deletions(-)

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index d36f3d9..d6e30a8 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -12,7 +12,9 @@
  */
 
 #include <common.h>
+#include <init.h>
 #include <mach/revision.h>
+#include <mach/generic.h>
 
 static int __imx_silicon_revision = IMX_CHIP_REV_UNKNOWN;
 
@@ -29,3 +31,56 @@ void imx_set_silicon_revision(const char *soc, int revision)
 			(revision >> 4) & 0xf,
 			revision & 0xf);
 }
+
+static int imx_init(void)
+{
+	int ret;
+
+	if (cpu_is_mx1())
+		ret = imx1_init();
+	else if (cpu_is_mx21())
+		ret = imx21_init();
+	else if (cpu_is_mx25())
+		ret = imx25_init();
+	else if (cpu_is_mx27())
+		ret = imx27_init();
+	else if (cpu_is_mx31())
+		ret = imx31_init();
+	else if (cpu_is_mx35())
+		ret = imx35_init();
+	else if (cpu_is_mx51())
+		ret = imx51_init();
+	else if (cpu_is_mx53())
+		ret = imx53_init();
+	else if (cpu_is_mx6())
+		ret = imx6_init();
+	else
+		return -EINVAL;
+
+	if (of_get_root_node())
+		return ret;
+
+	if (cpu_is_mx1())
+		ret = imx1_devices_init();
+	else if (cpu_is_mx21())
+		ret = imx21_devices_init();
+	else if (cpu_is_mx25())
+		ret = imx25_devices_init();
+	else if (cpu_is_mx27())
+		ret = imx27_devices_init();
+	else if (cpu_is_mx31())
+		ret = imx31_devices_init();
+	else if (cpu_is_mx35())
+		ret = imx35_devices_init();
+	else if (cpu_is_mx51())
+		ret = imx51_devices_init();
+	else if (cpu_is_mx53())
+		ret = imx53_devices_init();
+	else if (cpu_is_mx6())
+		ret = imx6_devices_init();
+	else
+		return -EINVAL;
+
+	return ret;
+}
+postcore_initcall(imx_init);
diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index 588ac02..ecd71b8 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -17,6 +17,7 @@
 #include <mach/imx1-regs.h>
 #include <mach/weim.h>
 #include <mach/iomux-v1.h>
+#include <mach/generic.h>
 #include <reset_source.h>
 
 #define MX1_RSR MX1_SCM_BASE_ADDR
@@ -51,11 +52,17 @@ void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 
 #include <mach/esdctl.h>
 
-static int imx1_init(void)
+int imx1_init(void)
 {
-	imx_iomuxv1_init((void *)MX1_GPIO1_BASE_ADDR);
 	imx1_detect_reset_source();
 
+	return 0;
+}
+
+int imx1_devices_init(void)
+{
+	imx_iomuxv1_init((void *)MX1_GPIO1_BASE_ADDR);
+
 	add_generic_device("imx1-ccm", 0, NULL, MX1_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpt", 0, NULL, MX1_TIM1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 0, NULL, MX1_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
@@ -67,4 +74,3 @@ static int imx1_init(void)
 
 	return 0;
 }
-postcore_initcall(imx1_init);
diff --git a/arch/arm/mach-imx/imx21.c b/arch/arm/mach-imx/imx21.c
index 91cd4bd..ca074dd 100644
--- a/arch/arm/mach-imx/imx21.c
+++ b/arch/arm/mach-imx/imx21.c
@@ -17,6 +17,7 @@
 #include <mach/imx21-regs.h>
 #include <mach/weim.h>
 #include <mach/iomux-v1.h>
+#include <mach/generic.h>
 
 void imx21_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 {
@@ -24,7 +25,12 @@ void imx21_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 	writel(lower, MX21_EIM_BASE_ADDR + 4 + cs * 8);
 }
 
-static int imx21_init(void)
+int imx21_init(void)
+{
+	return 0;
+}
+
+int imx21_devices_init(void)
 {
 	imx_iomuxv1_init((void *)MX21_GPIO1_BASE_ADDR);
 
@@ -40,4 +46,3 @@ static int imx21_init(void)
 
 	return 0;
 }
-postcore_initcall(imx21_init);
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 63e91a5..1d94419 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -53,10 +53,15 @@ u64 imx_uid(void)
 	return uid;
 }
 
-static int imx25_init(void)
+int imx25_init(void)
 {
 	imx25_boot_save_loc((void *)MX25_CCM_BASE_ADDR);
 
+	return 0;
+}
+
+int imx25_devices_init(void)
+{
 	add_generic_device("imx_iim", 0, NULL, MX25_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
@@ -72,4 +77,3 @@ static int imx25_init(void)
 
 	return 0;
 }
-postcore_initcall(imx25_init);
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 45436be..e0f4765 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -20,6 +20,7 @@
 #include <mach/generic.h>
 #include <init.h>
 #include <io.h>
+#include <mach/generic.h>
 
 static int imx27_silicon_revision(void)
 {
@@ -96,11 +97,16 @@ static void imx27_init_max(void)
 	writel(val, max_base + MAX_SLAVE_PORT2_OFFSET + MAX_SLAVE_AMPR_OFFSET);
 }
 
-static int imx27_init(void)
+int imx27_init(void)
 {
 	imx27_silicon_revision();
 	imx27_boot_save_loc((void *)MX27_SYSCTRL_BASE_ADDR);
 
+	return 0;
+}
+
+int imx27_devices_init(void)
+{
 	imx_iomuxv1_init((void *)MX27_GPIO1_BASE_ADDR);
 
 	add_generic_device("imx_iim", DEVICE_ID_SINGLE, NULL,
@@ -124,4 +130,3 @@ static int imx27_init(void)
 
 	return 0;
 }
-postcore_initcall(imx27_init);
diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index f0954b5..eb0c415 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -17,6 +17,7 @@
 #include <io.h>
 #include <mach/imx31-regs.h>
 #include <mach/weim.h>
+#include <mach/generic.h>
 
 void imx31_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 		unsigned additional)
@@ -26,7 +27,12 @@ void imx31_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 	writel(additional, MX31_WEIM_BASE_ADDR + (cs * 0x10) + 0x8);
 }
 
-static int imx31_init(void)
+int imx31_init(void)
+{
+	return 0;
+}
+
+int imx31_devices_init(void)
 {
 	add_generic_device("imx_iim", 0, NULL, MX31_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
@@ -43,4 +49,3 @@ static int imx31_init(void)
 
 	return 0;
 }
-postcore_initcall(imx31_init);
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 92f6964..14ddba3 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -49,20 +49,19 @@ static void imx35_silicon_revision(void)
 
 #define L2_MEM_VAL 0x10
 
-static int imx35_l2_fix(void)
+int imx35_init(void)
 {
 	writel(0x515, MX35_CLKCTL_BASE_ADDR + L2_MEM_VAL);
 
-	return 0;
-}
-core_initcall(imx35_l2_fix);
-
-static int imx35_init(void)
-{
 	imx35_silicon_revision();
 
 	imx35_boot_save_loc((void *)MX35_CCM_BASE_ADDR);
 
+	return 0;
+}
+
+int imx35_devices_init(void)
+{
 	add_generic_device("imx_iim", 0, NULL, MX35_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
@@ -77,4 +76,3 @@ static int imx35_init(void)
 
 	return 0;
 }
-postcore_initcall(imx35_init);
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index fdf2374..7795b5b 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -53,14 +53,16 @@ static int imx51_silicon_revision(void)
 	return 0;
 }
 
-static int imx51_init(void)
+int imx51_init(void)
 {
 	imx51_silicon_revision();
 	imx51_boot_save_loc((void *)MX51_SRC_BASE_ADDR);
 
-	if (of_get_root_node())
-		return 0;
+	return 0;
+}
 
+int imx51_devices_init(void)
+{
 	add_generic_device("imx_iim", 0, NULL, MX51_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
@@ -77,7 +79,6 @@ static int imx51_init(void)
 
 	return 0;
 }
-postcore_initcall(imx51_init);
 
 /*
  * Saves the boot source media into the $bootsource environment variable
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 193406f..3e1b7fc 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -50,11 +50,16 @@ static int imx53_silicon_revision(void)
 	return 0;
 }
 
-static int imx53_init(void)
+int imx53_init(void)
 {
 	imx53_silicon_revision();
 	imx53_boot_save_loc((void *)MX53_SRC_BASE_ADDR);
 
+	return 0;
+}
+
+int imx53_devices_init(void)
+{
 	add_generic_device("imx_iim", 0, NULL, MX53_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
@@ -73,7 +78,6 @@ static int imx53_init(void)
 
 	return 0;
 }
-postcore_initcall(imx53_init);
 
 void imx53_init_lowlevel_early(unsigned int cpufreq_mhz)
 {
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 5c20aa1..b6914ae 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -17,6 +17,7 @@
 #include <sizes.h>
 #include <mach/generic.h>
 #include <mach/imx6-regs.h>
+#include <mach/generic.h>
 
 void imx6_init_lowlevel(void)
 {
@@ -53,13 +54,15 @@ void imx6_init_lowlevel(void)
 	writel(0xffffffff, 0x020c4080);
 }
 
-static int imx6_init(void)
+int imx6_init(void)
 {
 	imx6_boot_save_loc((void *)MX6_SRC_BASE_ADDR);
 
-	if (of_get_root_node())
-		return 0;
+	return 0;
+}
 
+int imx6_devices_init(void)
+{
 	add_generic_device("imx-iomuxv3", 0, NULL, MX6_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx6-ccm", 0, NULL, MX6_CCM_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpt", 0, NULL, MX6_GPT_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
@@ -75,4 +78,3 @@ static int imx6_init(void)
 
 	return 0;
 }
-postcore_initcall(imx6_init);
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 9958cb2..0c5dc8a 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -13,6 +13,26 @@ void imx51_boot_save_loc(void __iomem *src_base);
 void imx53_boot_save_loc(void __iomem *src_base);
 void imx6_boot_save_loc(void __iomem *src_base);
 
+int imx1_init(void);
+int imx21_init(void);
+int imx25_init(void);
+int imx27_init(void);
+int imx31_init(void);
+int imx35_init(void);
+int imx51_init(void);
+int imx53_init(void);
+int imx6_init(void);
+
+int imx1_devices_init(void);
+int imx21_devices_init(void);
+int imx25_devices_init(void);
+int imx27_devices_init(void);
+int imx31_devices_init(void);
+int imx35_devices_init(void);
+int imx51_devices_init(void);
+int imx53_devices_init(void);
+int imx6_devices_init(void);
+
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
 #define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
