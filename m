Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x235.google.com ([2607:f8b0:400e:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YsjIq-0000K3-6l
 for barebox@lists.infradead.org; Thu, 14 May 2015 02:55:17 +0000
Received: by pacwv17 with SMTP id wv17so69484172pac.0
 for <barebox@lists.infradead.org>; Wed, 13 May 2015 19:54:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 May 2015 19:54:25 -0700
Message-Id: <1431572067-4038-8-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/10] i.MX51: babbage: Add UART RXD pin configuration
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add UART RXD pin pinmux configuration to support input in DEBUG_LL
functions.

Also use appropriate pad configuration constant in TXD pin
configuraion.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index 57a324e..09a7a67 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -1,5 +1,6 @@
 #include <debug_ll.h>
 #include <mach/clock-imx51_53.h>
+#include <mach/iomux-mx51.h>
 #include <common.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
@@ -27,11 +28,14 @@ static inline void setup_uart(void)
 	 * The code below should be more or less a "moral equivalent"
 	 * of:
 	 *	 MX51_PAD_UART1_TXD__UART1_TXD 0x1c5
-	 *
+	 *       MX51_PAD_UART1_TXD__UART1_RXD 0x1c5
 	 * in device tree
 	 */
 	writel(0x00000000, iomuxbase + 0x022c);
-	writel(0x000001c5, iomuxbase + 0x061c);
+	writel(MX51_UART_PAD_CTRL, iomuxbase + 0x061c);
+	writel(0, iomuxbase + 0x0228);
+	writel(0, iomuxbase + 0x09e4);
+	writel(MX51_UART_PAD_CTRL, iomuxbase + 0x0618);

 	imx51_uart_setup_ll();

--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
