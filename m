Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKe-0001rb-C6
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:26 +0000
Received: by mail-pl0-x243.google.com with SMTP id a39-v6so7781738pla.10
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:14 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:49 -0700
Message-Id: <20180414175103.10125-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/17] ARM: i.MX: Simplify serial bootsource detection for
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
index 56f9fb5d4..7eb7a16f3 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -229,6 +229,18 @@ void imx53_get_boot_source(enum bootsource *src, int *instance)
 
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
@@ -237,20 +249,13 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
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
@@ -298,20 +303,13 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
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
