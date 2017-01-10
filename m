Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQy3s-0001Jk-Jq
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:10:13 +0000
Received: by mail-pf0-x241.google.com with SMTP id f144so10456542pfa.2
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:09:48 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:09:06 -0800
Message-Id: <20170110150913.31416-14-andrew.smirnov@gmail.com>
In-Reply-To: <20170110150913.31416-1-andrew.smirnov@gmail.com>
References: <20170110150913.31416-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 13/20] i.MX6: sabresd: Remove magic numbers in setup_uart
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Remove magic numbers in setup_uart and replace them with calls to
iomuxv3 helper functions.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
index b329f46..5743dbc 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
@@ -2,6 +2,7 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
+#include <mach/iomux-mx6.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
@@ -11,12 +12,8 @@ static inline void setup_uart(void)
 
 	imx6_ungate_all_peripherals();
 
-	writel(0x1b0b1, iomuxbase + 0x0650);
-	writel(3, iomuxbase + 0x0280);
-
-	writel(0x1b0b1, iomuxbase + 0x0654);
-	writel(3, iomuxbase + 0x0284);
-	writel(1, iomuxbase + 0x0920);
+	imx_setup_pad(iomuxbase, MX6Q_PAD_CSI0_DAT10__UART1_TXD);
+	imx_setup_pad(iomuxbase, MX6Q_PAD_CSI0_DAT11__UART1_RXD);
 
 	imx6_uart_setup_ll();
 
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
