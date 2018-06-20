Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVRPK-0001xp-AF
 for barebox@lists.infradead.org; Wed, 20 Jun 2018 00:55:35 +0000
Received: by mail-pl0-x241.google.com with SMTP id 31-v6so763854plc.4
 for <barebox@lists.infradead.org>; Tue, 19 Jun 2018 17:55:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Jun 2018 17:55:01 -0700
Message-Id: <20180620005501.12891-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: i.MX: babbage: Make use of imx_setup_pad()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index 1c20b6a7a..216576ca2 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -1,5 +1,6 @@
 #include <debug_ll.h>
 #include <mach/clock-imx51_53.h>
+#include <mach/iomux-mx51.h>
 #include <common.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
@@ -22,15 +23,7 @@ static inline void setup_uart(void)
 	writel(MX5_CCM_CSCMR1_RESET_VALUE, ccmbase + MX5_CCM_CSCMR1);
 	writel(MX5_CCM_CSCDR1_RESET_VALUE, ccmbase + MX5_CCM_CSCDR1);
 
-	/*
-	 * The code below should be more or less a "moral equivalent"
-	 * of:
-	 *	 MX51_PAD_UART1_TXD__UART1_TXD 0x1c5
-	 *
-	 * in device tree
-	 */
-	writel(0x00000000, iomuxbase + 0x022c);
-	writel(0x000001c5, iomuxbase + 0x061c);
+	imx_setup_pad(iomuxbase, MX51_PAD_UART1_TXD__UART1_TXD);
 
 	imx51_uart_setup_ll();
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
