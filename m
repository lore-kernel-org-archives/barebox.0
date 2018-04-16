Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f89ra-0003pr-Og
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 19:32:32 +0000
Received: by mail-pl0-x242.google.com with SMTP id e7-v6so10596248plt.6
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 12:32:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 Apr 2018 12:31:43 -0700
Message-Id: <20180416193157.16094-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 05/19] ARM: i.MX: Simplify serial bootsource detection for
 i.MX6 and 7
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The algorithm to detect serial mode can be shared between i.M6 and
i.MX7 as wall as simplified a bit by replacing swich goto/break/return
termination logic with more trivial if statements.

This commit also sets the stage for additional improvements in the
commits that follow.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 50 +++++++++++++++++++++++-------------------------
 1 file changed, 24 insertions(+), 26 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 9f5ddf629..dc385ceae 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -226,6 +226,18 @@ void imx53_get_boot_source(enum bootsource *src, int *instance)
 
 #define IMX6_SRC_SBMR1	0x04
 #define IMX6_SRC_SBMR2	0x1c
+#define IMX6_BMOD_SERIAL	0b01
+#define IMX6_BMOD_RESERVED	0b11
+
+static bool imx6_bootsource_reserved(uint32_t sbmr2)
+{
+	return imx53_get_bmod(sbmr2) == IMX6_BMOD_RESERVED;
+}
+
+static bool imx6_bootsource_serial(uint32_t sbmr2)
+{
+	return imx53_get_bmod(sbmr2) == IMX6_BMOD_SERIAL;
+}
 
 void imx6_get_boot_source(enum bootsource *src, int *instance)
 {
@@ -234,20 +246,13 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2);
 	uint32_t boot_cfg_4_2_0;
 
-	switch (imx53_get_bmod(sbmr2)) {
-	case 0: /* Fuses, fall through */
-	case 2: /* internal boot */
-		goto internal_boot;
-	case 1: /* Serial Downloader */
-		*src = BOOTSOURCE_SERIAL;
-		break;
-	case 3: /* reserved */
-		break;
-	};
-
-	return;
+	if (imx6_bootsource_reserved(sbmr2))
+		return;
 
-internal_boot:
+	if (imx6_bootsource_serial(sbmr2)) {
+		*src = BOOTSOURCE_SERIAL;
+		return;
+	}
 
 	/* BOOT_CFG1[7:4] */
 	switch ((sbmr1 >> 4) & 0xf) {
@@ -295,20 +300,13 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 	uint32_t sbmr1 = readl(src_base + IMX7_SRC_SBMR1);
 	uint32_t sbmr2 = readl(src_base + IMX7_SRC_SBMR2);
 
-	switch (imx53_get_bmod(sbmr2)) {
-	case 0: /* Fuses, fall through */
-	case 2: /* internal boot */
-		goto internal_boot;
-	case 1: /* Serial Downloader */
-		*src = BOOTSOURCE_SERIAL;
-		break;
-	case 3: /* reserved */
-		break;
-	};
-
-	return;
+	if (imx6_bootsource_reserved(sbmr2))
+		return;
 
-internal_boot:
+	if (imx6_bootsource_serial(sbmr2)) {
+		*src = BOOTSOURCE_SERIAL;
+		return;
+	}
 
 	switch ((sbmr1 >> 12) & 0xf) {
 	case 1:
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
