Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f89rg-0003rQ-N8
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 19:32:38 +0000
Received: by mail-pf0-x241.google.com with SMTP id o16so10996332pfk.9
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 12:32:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 Apr 2018 12:31:48 -0700
Message-Id: <20180416193157.16094-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 10/19] ARM: i.MX: boot: Remove unnecessary returns
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index f9d730f6d..4bb26d942 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -296,8 +296,6 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 	/* BOOT_CFG1[7:0] */
 	if (sbmr1 & (1 << 7))
 		*src = BOOTSOURCE_NAND;
-
-	return;
 }
 
 #define IMX7_SRC_SBMR1	0x58
@@ -379,8 +377,6 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 	default:
 		break;
 	}
-
-	return;
 }
 
 static void
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
