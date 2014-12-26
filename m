Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4ej2-0005RL-CL
 for barebox@lists.infradead.org; Fri, 26 Dec 2014 23:55:21 +0000
Received: by mail-lb0-f180.google.com with SMTP id l4so8846047lbv.39
 for <barebox@lists.infradead.org>; Fri, 26 Dec 2014 15:54:58 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 27 Dec 2014 02:56:25 +0300
Message-Id: <1419638189-5678-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/6] ARM: vexpress: debug_ll.h: switch to debug_ll_pl011.h
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/mach-vexpress/include/mach/debug_ll.h | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-vexpress/include/mach/debug_ll.h b/arch/arm/mach-vexpress/include/mach/debug_ll.h
index 15d6e85..89b0692 100644
--- a/arch/arm/mach-vexpress/include/mach/debug_ll.h
+++ b/arch/arm/mach-vexpress/include/mach/debug_ll.h
@@ -14,20 +14,11 @@
 #define DEBUG_LL_PHYS_BASE_RS1		0x1c000000
 
 #ifdef MP
-#define UART_BASE DEBUG_LL_PHYS_BASE
+#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE
 #else
-#define UART_BASE DEBUG_LL_PHYS_BASE_RS1
+#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE_RS1
 #endif
 
-static inline void PUTC_LL(char c)
-{
-	/* Wait until there is space in the FIFO */
-	while (readl(UART_BASE + UART01x_FR) & UART01x_FR_TXFF);
+#include <asm/debug_ll_pl011.h>
 
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
