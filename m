Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKd-0001yK-QL
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:26 +0000
Received: by mail-pl0-x241.google.com with SMTP id a39-v6so7781826pla.10
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:57 -0700
Message-Id: <20180414175103.10125-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/17] ARM: i.MX: boot: Check for NAND boot only if necessary
 on i.MX53, 6
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

We don't need to check if the boot source is NAND in cases when we
already know for a fact that we booted from something else. To avoid
that, move the NAND check to be done inside of default branch of
the preceeding switch statement.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index c092dc827..8fbccb260 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -220,13 +220,11 @@ void imx53_get_boot_source(enum bootsource *src, int *instance)
 		*src = BOOTSOURCE_MMC;
 		break;
 	default:
+		if (imx53_bootsource_nand(cfg1))
+			*src = BOOTSOURCE_NAND;
 		break;
 	}
 
-	if (imx53_bootsource_nand(cfg1))
-		*src = BOOTSOURCE_NAND;
-
-
 	switch (*src) {
 	case BOOTSOURCE_MMC:
 	case BOOTSOURCE_SPI:
@@ -304,11 +302,10 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 		*instance = (sbmr1 >> 11) & 0x3;
 		break;
 	default:
+		if (imx53_bootsource_nand(sbmr1))
+			*src = BOOTSOURCE_NAND;
 		break;
 	}
-
-	if (imx53_bootsource_nand(sbmr1))
-		*src = BOOTSOURCE_NAND;
 }
 
 #define IMX7_SRC_SBMR1	0x58
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
