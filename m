Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKi-0001ww-0Y
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:36 +0000
Received: by mail-pf0-x241.google.com with SMTP id l27so8513400pfk.12
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:56 -0700
Message-Id: <20180414175103.10125-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/17] ARM: i.MX: boot: Share code to detect NAND as a boot
 source
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Share code to detect NAND as a boot source between i.MX53 and i.MX6
which behave the same in that aspect.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 66e1a9254..c092dc827 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -175,6 +175,8 @@ static unsigned int sbmr(uint32_t r, unsigned int msb, unsigned int lsb)
 	return (r & GENMASK(msb, lsb)) >> lsb;
 }
 
+#define BOOT_CFG1(r, n)	sbmr(r, n, n)
+
 static unsigned int imx53_get_bmod(uint32_t r)
 {
 	return sbmr(r, 25, 24);
@@ -185,6 +187,11 @@ static int imx53_bootsource_internal(uint32_t r)
 	return sbmr(r, 7, 4);	/* BOOT_CFG1[7:4] */
 }
 
+static bool imx53_bootsource_nand(uint32_t r)
+{
+	return BOOT_CFG1(r, 7);
+}
+
 void imx53_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *src_base = IOMEM(MX53_SRC_BASE_ADDR);
@@ -216,7 +223,7 @@ void imx53_get_boot_source(enum bootsource *src, int *instance)
 		break;
 	}
 
-	if (cfg1 & (1 << 7))
+	if (imx53_bootsource_nand(cfg1))
 		*src = BOOTSOURCE_NAND;
 
 
@@ -300,8 +307,7 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 		break;
 	}
 
-	/* BOOT_CFG1[7:0] */
-	if (sbmr1 & (1 << 7))
+	if (imx53_bootsource_nand(sbmr1))
 		*src = BOOTSOURCE_NAND;
 }
 
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
