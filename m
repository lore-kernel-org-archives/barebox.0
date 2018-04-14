Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKd-0001qo-CP
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:25 +0000
Received: by mail-pl0-x241.google.com with SMTP id t20-v6so7790448ply.9
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:48 -0700
Message-Id: <20180414175103.10125-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/17] ARM: i.MX: Add function to extract BMOD value
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The location of BMDO field in SBMR/SBMR2 registers is consistent
across all i.MX SoCs starting from i.MX53. Add simple helper function
imx53_get_bmod and use it to avoid code duplication.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 4657fa017..56f9fb5d4 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -169,12 +169,23 @@ void imx51_get_boot_source(enum bootsource *src, int *instance)
 }
 
 #define IMX53_SRC_SBMR	0x4
+
+static unsigned int sbmr(uint32_t r, unsigned int msb, unsigned int lsb)
+{
+	return (r & GENMASK(msb, lsb)) >> lsb;
+}
+
+static unsigned int imx53_get_bmod(uint32_t r)
+{
+	return sbmr(r, 25, 24);
+}
+
 void imx53_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *src_base = IOMEM(MX53_SRC_BASE_ADDR);
 	uint32_t cfg1 = readl(src_base + IMX53_SRC_SBMR);
 
-	if (((cfg1 >> 24) & 0x3) == 0x3) {
+	if (imx53_get_bmod(cfg1) == 0x3) {
 		*src = BOOTSOURCE_USB;
 		*instance = 0;
 		return;
@@ -225,12 +236,8 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 	uint32_t sbmr1 = readl(src_base + IMX6_SRC_SBMR1);
 	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2);
 	uint32_t boot_cfg_4_2_0;
-	int boot_mode;
 
-	/* BMOD[1:0] */
-	boot_mode = (sbmr2 >> 24) & 0x3;
-
-	switch (boot_mode) {
+	switch (imx53_get_bmod(sbmr2)) {
 	case 0: /* Fuses, fall through */
 	case 2: /* internal boot */
 		goto internal_boot;
@@ -290,12 +297,8 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 	void __iomem *src_base = IOMEM(MX7_SRC_BASE_ADDR);
 	uint32_t sbmr1 = readl(src_base + IMX7_SRC_SBMR1);
 	uint32_t sbmr2 = readl(src_base + IMX7_SRC_SBMR2);
-	int boot_mode;
-
-	/* BMOD[1:0] */
-	boot_mode = (sbmr2 >> 24) & 0x3;
 
-	switch (boot_mode) {
+	switch (imx53_get_bmod(sbmr2)) {
 	case 0: /* Fuses, fall through */
 	case 2: /* internal boot */
 		goto internal_boot;
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
