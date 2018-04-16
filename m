Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f89rY-0003sH-2j
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 19:32:31 +0000
Received: by mail-pl0-x241.google.com with SMTP id w12-v6so9674304plp.0
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 12:32:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 Apr 2018 12:31:49 -0700
Message-Id: <20180416193157.16094-12-andrew.smirnov@gmail.com>
In-Reply-To: <20180416193157.16094-1-andrew.smirnov@gmail.com>
References: <20180416193157.16094-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 11/19] ARM: i.MX: boot: Move magic values into small
 functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move code to extract appropiate BOOT_CFG bits to decode bootsource on
i.MX53, 6, and 7 into small functions for clarity and to allow sharing
the code between i.MX53 and i.MX6.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 44 ++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 40 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 4bb26d942..61ac8dadf 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -172,11 +172,38 @@ void imx51_get_boot_source(enum bootsource *src, int *instance)
 #define IMX53_SRC_SBMR	0x4
 #define SRC_SBMR_BMOD	GENMASK(25, 24)
 
+#define __BOOT_CFG(n, m, l)	GENMASK((m) + ((n) - 1) * 8, \
+					(l) + ((n) - 1) * 8)
+#define BOOT_CFG1(m, l)		__BOOT_CFG(1, m, l)
+
+#define ___BOOT_CFG(n, i)	__BOOT_CFG(n, i, i)
+#define __MAKE_BOOT_CFG_BITS(idx)					\
+	enum {								\
+		BOOT_CFG##idx##_0 = ___BOOT_CFG(idx, 0),		\
+		BOOT_CFG##idx##_1 = ___BOOT_CFG(idx, 1),		\
+		BOOT_CFG##idx##_2 = ___BOOT_CFG(idx, 2),		\
+		BOOT_CFG##idx##_3 = ___BOOT_CFG(idx, 3),		\
+		BOOT_CFG##idx##_4 = ___BOOT_CFG(idx, 4),		\
+		BOOT_CFG##idx##_5 = ___BOOT_CFG(idx, 5),		\
+		BOOT_CFG##idx##_6 = ___BOOT_CFG(idx, 6),		\
+		BOOT_CFG##idx##_7 = ___BOOT_CFG(idx, 7),		\
+	};
+
+__MAKE_BOOT_CFG_BITS(1)
+#undef __MAKE_BOOT_CFG
+#undef ___BOOT_CFG
+
+
 static unsigned int imx53_get_bmod(uint32_t r)
 {
 	return FIELD_GET(SRC_SBMR_BMOD, r);
 }
 
+static int imx53_bootsource_internal(uint32_t r)
+{
+	return FIELD_GET(BOOT_CFG1(7, 4), r);
+}
+
 void imx53_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *src_base = IOMEM(MX53_SRC_BASE_ADDR);
@@ -188,7 +215,7 @@ void imx53_get_boot_source(enum bootsource *src, int *instance)
 		return;
 	}
 
-	switch ((cfg1 & 0xff) >> 4) {
+	switch (imx53_bootsource_internal(cfg1)) {
 	case 2:
 		*src = BOOTSOURCE_HD;
 		break;
@@ -263,8 +290,7 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 		return;
 	}
 
-	/* BOOT_CFG1[7:4] */
-	switch ((sbmr1 >> 4) & 0xf) {
+	switch (imx53_bootsource_internal(sbmr1)) {
 	case 2:
 		*src = BOOTSOURCE_HD;
 		break;
@@ -301,9 +327,19 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 #define IMX7_SRC_SBMR1	0x58
 #define IMX7_SRC_SBMR2	0x70
 
+/*
+ * Re-defined to match the naming in reference manual
+ */
+#define BOOT_CFG(m, l)	BOOT_CFG1(m, l)
+
 #define IMX_BOOT_SW_INFO_POINTER_ADDR	0x000001E8
 #define IMX_BOOT_SW_INFO_BDT_SD		0x1
 
+static unsigned int imx7_bootsource_internal(uint32_t r)
+{
+	return FIELD_GET(BOOT_CFG(15, 12), r);
+}
+
 struct imx_boot_sw_info {
 	uint8_t  reserved_1;
 	uint8_t  boot_device_instance;
@@ -355,7 +391,7 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 		return;
 	}
 
-	switch ((sbmr1 >> 12) & 0xf) {
+	switch (imx7_bootsource_internal(sbmr1)) {
 	case 1:
 	case 2:
 		*src = BOOTSOURCE_MMC;
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
