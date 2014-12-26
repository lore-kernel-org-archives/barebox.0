Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4ej3-0005Rq-PW
 for barebox@lists.infradead.org; Fri, 26 Dec 2014 23:55:22 +0000
Received: by mail-la0-f49.google.com with SMTP id hs14so8962416lab.8
 for <barebox@lists.infradead.org>; Fri, 26 Dec 2014 15:54:59 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 27 Dec 2014 02:56:26 +0300
Message-Id: <1419638189-5678-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1419638189-5678-1-git-send-email-antonynpavlov@gmail.com>
References: <1419638189-5678-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/6] ARM: highbank: debug_ll.h: switch to debug_ll_pl011.h
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/mach-highbank/include/mach/debug_ll.h | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-highbank/include/mach/debug_ll.h b/arch/arm/mach-highbank/include/mach/debug_ll.h
index 4cdbb3c..1820eb1 100644
--- a/arch/arm/mach-highbank/include/mach/debug_ll.h
+++ b/arch/arm/mach-highbank/include/mach/debug_ll.h
@@ -7,20 +7,8 @@
 #ifndef __MACH_DEBUG_LL_H__
 #define   __MACH_DEBUG_LL_H__
 
-#include <linux/amba/serial.h>
-#include <io.h>
+#define DEBUG_LL_UART_ADDR 0xfff36000
 
-#define UART_BASE 0xfff36000
+#include <asm/debug_ll_pl011.h>
 
-static inline void PUTC_LL(char c)
-{
-	/* Wait until there is space in the FIFO */
-	while (readl(UART_BASE + UART01x_FR) & UART01x_FR_TXFF);
-
-	/* Send the character */
-	writel(c, UART_BASE + UART01x_DR);
-
-	/* Wait to make sure it hits the line, in case we die too soon. */
-	while (readl(UART_BASE + UART01x_FR) & UART01x_FR_TXFF);
-}
 #endif
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
