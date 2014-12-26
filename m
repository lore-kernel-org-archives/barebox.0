Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4ej1-0005RD-VZ
 for barebox@lists.infradead.org; Fri, 26 Dec 2014 23:55:20 +0000
Received: by mail-la0-f48.google.com with SMTP id gf13so9015145lab.7
 for <barebox@lists.infradead.org>; Fri, 26 Dec 2014 15:54:56 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 27 Dec 2014 02:56:24 +0300
Message-Id: <1419638189-5678-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/6] ARM: introduce debug_ll_pl011.h
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/include/asm/debug_ll_pl011.h | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm/include/asm/debug_ll_pl011.h b/arch/arm/include/asm/debug_ll_pl011.h
new file mode 100644
index 0000000..db015a3
--- /dev/null
+++ b/arch/arm/include/asm/debug_ll_pl011.h
@@ -0,0 +1,25 @@
+#ifndef __INCLUDE_ARM_ASM_DEBUG_LL_PL011_H__
+#define __INCLUDE_ARM_ASM_DEBUG_LL_PL011_H__
+
+#ifndef DEBUG_LL_UART_ADDR
+#error DEBUG_LL_UART_ADDR is undefined!
+#endif
+
+#include <io.h>
+#include <linux/amba/serial.h>
+
+static inline void PUTC_LL(char c)
+{
+	/* Wait until there is space in the FIFO */
+	while (readl(DEBUG_LL_UART_ADDR + UART01x_FR) & UART01x_FR_TXFF)
+		;
+
+	/* Send the character */
+	writel(c, DEBUG_LL_UART_ADDR + UART01x_DR);
+
+	/* Wait to make sure it hits the line, in case we die too soon. */
+	while (readl(DEBUG_LL_UART_ADDR + UART01x_FR) & UART01x_FR_TXFF)
+		;
+}
+
+#endif /* __INCLUDE_ARM_ASM_DEBUG_LL_PL011_H__ */
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
