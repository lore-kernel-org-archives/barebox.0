Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f89rY-0003qt-2d
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 19:32:31 +0000
Received: by mail-pl0-x241.google.com with SMTP id a39-v6so10579362pla.10
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 12:32:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 Apr 2018 12:31:47 -0700
Message-Id: <20180416193157.16094-10-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 09/19] ARM: i.MX7: boot: Fix SPI-NOR/QSPI boot source mixup
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
index 5484812a6..f9d730f6d 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -366,11 +366,11 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
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
