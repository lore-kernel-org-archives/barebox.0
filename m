Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f89rj-0003tS-Mf
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 19:32:41 +0000
Received: by mail-pl0-x243.google.com with SMTP id 91-v6so10595481pld.3
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 12:32:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 Apr 2018 12:31:50 -0700
Message-Id: <20180416193157.16094-13-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 12/19] ARM: i.MX: boot: Share code to detect NAND as a boot
 source
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Share code to detect NAND as a boot source between i.MX53 and i.MX6
which behave the same in that aspect.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 61ac8dadf..a5dff77df 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -204,6 +204,11 @@ static int imx53_bootsource_internal(uint32_t r)
 	return FIELD_GET(BOOT_CFG1(7, 4), r);
 }
 
+static bool imx53_bootsource_nand(uint32_t r)
+{
+	return FIELD_GET(BOOT_CFG1_7, r);
+}
+
 void imx53_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *src_base = IOMEM(MX53_SRC_BASE_ADDR);
@@ -235,7 +240,7 @@ void imx53_get_boot_source(enum bootsource *src, int *instance)
 		break;
 	}
 
-	if (cfg1 & (1 << 7))
+	if (imx53_bootsource_nand(cfg1))
 		*src = BOOTSOURCE_NAND;
 
 
@@ -319,8 +324,7 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
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
