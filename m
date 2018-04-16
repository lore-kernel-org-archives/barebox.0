Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f89rW-0003qS-Ht
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 19:32:28 +0000
Received: by mail-pl0-x243.google.com with SMTP id 61-v6so10593475plb.2
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 12:32:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 Apr 2018 12:31:46 -0700
Message-Id: <20180416193157.16094-9-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 08/19] ARM: i.MX7: boot: Remove incorrect NAND bootsource
 detection
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

i.MX7 differs from i.MX6 and i.MX53 and bit 7 in SBMR is not used to
signify boot from NAND.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index e2696a934..5484812a6 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -380,10 +380,6 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 		break;
 	}
 
-	/* BOOT_CFG1[7:0] */
-	if (sbmr1 & (1 << 7))
-		*src = BOOTSOURCE_NAND;
-
 	return;
 }
 
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
