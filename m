Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKi-0001ul-34
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:38 +0000
Received: by mail-pf0-x241.google.com with SMTP id p15so8519593pff.11
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:18 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:53 -0700
Message-Id: <20180414175103.10125-8-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/17] ARM: i.MX7: boot: Fix SPI-NOR/QSPI boot source mixup
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

As per "Table 6-33. Boot device selection" from "i.MX 7Dual
Applications Processor Reference Manual, Rev. 1, 01/2018" QSPI is
encoded with 0b0100 and Serial ROM with 0b0110. Fix the original code
to use correct values.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 1c5a47f37..42ea2ccd6 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -369,11 +369,11 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 	case 3:
 		*src = BOOTSOURCE_NAND;
 		break;
-	case 4:
+	case 6:
 		*src = BOOTSOURCE_SPI_NOR,
 		*instance = (sbmr1 >> 9 & 0x7);
 		break;
-	case 6:
+	case 4:
 		*src = BOOTSOURCE_SPI; /* Really: qspi */
 		break;
 	case 5:
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
