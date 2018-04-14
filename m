Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKc-0001q2-1E
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:24 +0000
Received: by mail-pf0-x243.google.com with SMTP id h69so8513804pfe.13
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:47 -0700
Message-Id: <20180414175103.10125-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180414175103.10125-1-andrew.smirnov@gmail.com>
References: <20180414175103.10125-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/17] ARM: i.MX: boot: Coalesce copy-pasted code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All of the instances of imx*_boot_save_loc() do exactly the same thing with
the only difference being SoC-specific imx*_get_boot_source
call. Convert the code into a generic function taking function pointer
+ a macro to take care of the boilerplate.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 85 ++++++++++--------------------------------------
 1 file changed, 17 insertions(+), 68 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 72597f5e2..4657fa017 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -89,17 +89,6 @@ void imx25_get_boot_source(enum bootsource *src, int *instance)
 				    (val >> MX25_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
 }
 
-void imx25_boot_save_loc(void)
-{
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
-
-	imx25_get_boot_source(&src, &instance);
-
-	bootsource_set(src);
-	bootsource_set_instance(instance);
-}
-
 void imx35_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *ccm_base = IOMEM(MX35_CCM_BASE_ADDR);
@@ -110,17 +99,6 @@ void imx35_get_boot_source(enum bootsource *src, int *instance)
 				    (val >> MX35_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
 }
 
-void imx35_boot_save_loc(void)
-{
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
-
-	imx35_get_boot_source(&src, &instance);
-
-	bootsource_set(src);
-	bootsource_set_instance(instance);
-}
-
 #define IMX27_SYSCTRL_GPCR	0x18
 #define IMX27_GPCR_BOOT_SHIFT			16
 #define IMX27_GPCR_BOOT_MASK			(0xf << IMX27_GPCR_BOOT_SHIFT)
@@ -157,17 +135,6 @@ void imx27_get_boot_source(enum bootsource *src, int *instance)
 	}
 }
 
-void imx27_boot_save_loc(void)
-{
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
-
-	imx27_get_boot_source(&src, &instance);
-
-	bootsource_set(src);
-	bootsource_set_instance(instance);
-}
-
 #define IMX51_SRC_SBMR			0x4
 #define IMX51_SBMR_BT_MEM_TYPE_SHIFT	7
 #define IMX51_SBMR_BT_MEM_CTL_SHIFT	0
@@ -201,17 +168,6 @@ void imx51_get_boot_source(enum bootsource *src, int *instance)
 	}
 }
 
-void imx51_boot_save_loc(void)
-{
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
-
-	imx51_get_boot_source(&src, &instance);
-
-	bootsource_set(src);
-	bootsource_set_instance(instance);
-}
-
 #define IMX53_SRC_SBMR	0x4
 void imx53_get_boot_source(enum bootsource *src, int *instance)
 {
@@ -260,17 +216,6 @@ void imx53_get_boot_source(enum bootsource *src, int *instance)
 	}
 }
 
-void imx53_boot_save_loc(void)
-{
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
-
-	imx53_get_boot_source(&src, &instance);
-
-	bootsource_set(src);
-	bootsource_set_instance(instance);
-}
-
 #define IMX6_SRC_SBMR1	0x04
 #define IMX6_SRC_SBMR2	0x1c
 
@@ -337,17 +282,6 @@ internal_boot:
 	return;
 }
 
-void imx6_boot_save_loc(void)
-{
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
-
-	imx6_get_boot_source(&src, &instance);
-
-	bootsource_set(src);
-	bootsource_set_instance(instance);
-}
-
 #define IMX7_SRC_SBMR1	0x58
 #define IMX7_SRC_SBMR2	0x70
 
@@ -406,13 +340,28 @@ internal_boot:
 	return;
 }
 
-void imx7_boot_save_loc(void)
+static void
+imx_boot_save_loc(void (*get_boot_source)(enum bootsource *, int *))
 {
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
 	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
 
-	imx7_get_boot_source(&src, &instance);
+	get_boot_source(&src, &instance);
 
 	bootsource_set(src);
 	bootsource_set_instance(instance);
 }
+
+#define IMX_BOOT_SAVE_LOC(soc)					\
+	void soc##_boot_save_loc(void)				\
+	{							\
+		imx_boot_save_loc(soc##_get_boot_source);	\
+	}
+
+IMX_BOOT_SAVE_LOC(imx25)
+IMX_BOOT_SAVE_LOC(imx27)
+IMX_BOOT_SAVE_LOC(imx35)
+IMX_BOOT_SAVE_LOC(imx51)
+IMX_BOOT_SAVE_LOC(imx53)
+IMX_BOOT_SAVE_LOC(imx6)
+IMX_BOOT_SAVE_LOC(imx7)
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
