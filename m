Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKc-0001vV-2B
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:24 +0000
Received: by mail-pf0-x243.google.com with SMTP id p6so8522723pfn.4
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:54 -0700
Message-Id: <20180414175103.10125-9-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/17] ARM: i.MX: boot: Remove unnecessary retruns
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 42ea2ccd6..cc54ea15a 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -299,8 +299,6 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 	/* BOOT_CFG1[7:0] */
 	if (sbmr1 & (1 << 7))
 		*src = BOOTSOURCE_NAND;
-
-	return;
 }
 
 #define IMX7_SRC_SBMR1	0x58
@@ -382,8 +380,6 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
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
