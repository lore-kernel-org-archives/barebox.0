Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4ej6-0005b0-1c
 for barebox@lists.infradead.org; Fri, 26 Dec 2014 23:55:24 +0000
Received: by mail-lb0-f173.google.com with SMTP id z12so8984877lbi.18
 for <barebox@lists.infradead.org>; Fri, 26 Dec 2014 15:55:02 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 27 Dec 2014 02:56:28 +0300
Message-Id: <1419638189-5678-6-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/6] ARM: versatile: debug_ll.h: switch to debug_ll_pl011.h
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/mach-versatile/include/mach/debug_ll.h | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-versatile/include/mach/debug_ll.h b/arch/arm/mach-versatile/include/mach/debug_ll.h
index f91812b..e6ee877 100644
--- a/arch/arm/mach-versatile/include/mach/debug_ll.h
+++ b/arch/arm/mach-versatile/include/mach/debug_ll.h
@@ -16,19 +16,8 @@
 #ifndef __MACH_DEBUG_LL_H__
 #define   __MACH_DEBUG_LL_H__
 
-#include <linux/amba/serial.h>
-#include <io.h>
+#define DEBUG_LL_UART_ADDR 0x101F1000
 
-static inline void PUTC_LL(char c)
-{
-	/* Wait until there is space in the FIFO */
-	while (readl(0x101F1000 + UART01x_FR) & UART01x_FR_TXFF);
-
-	/* Send the character */
-	writel(c, 0x101F1000 + UART01x_DR);
-
-	/* Wait to make sure it hits the line, in case we die too soon. */
-	while (readl(0x101F1000 + UART01x_FR) & UART01x_FR_TXFF);
-}
+#include <asm/debug_ll_pl011.h>
 
 #endif
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
