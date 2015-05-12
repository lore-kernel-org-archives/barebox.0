Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ys5nA-0004hh-6L
 for barebox@lists.infradead.org; Tue, 12 May 2015 08:43:57 +0000
Received: by lagv1 with SMTP id v1so137426lag.3
 for <barebox@lists.infradead.org>; Tue, 12 May 2015 01:43:33 -0700 (PDT)
Received: from puro.NIISI (t35.niisi.ras.ru. [193.232.173.35])
 by mx.google.com with ESMTPSA id p6sm3627736laj.41.2015.05.12.01.43.31
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 12 May 2015 01:43:32 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 12 May 2015 11:45:05 +0300
Message-Id: <1431420306-23337-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1431420306-23337-1-git-send-email-antonynpavlov@gmail.com>
References: <1431420306-23337-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] MIPS: bcm47xx: use PUTC_LL() from common
 debug_ll_ns16550.h header
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-bcm47xx/include/mach/debug_ll.h | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/arch/mips/mach-bcm47xx/include/mach/debug_ll.h b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
index 9927b4d..3e74e0f 100644
--- a/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
+++ b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
@@ -24,16 +24,12 @@
 #include <io.h>
 #include <mach/hardware.h>
 
-#define rbr		0
-#define lsr		5
-#define LSR_THRE	0x20	/* Xmit holding register empty */
+#define DEBUG_LL_UART_SHIFT	0
 
-static __inline__ void PUTC_LL(char ch)
-{
-	void *base = (void *)DEBUG_LL_UART_ADDR;
+#define DEBUG_LL_UART_CLK   (25804800 / 16)
+#define DEBUG_LL_UART_BPS   CONFIG_BAUDRATE
+#define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
 
-	while (!(__raw_readb(base + lsr) & LSR_THRE));
-	__raw_writeb(ch, base + rbr);
-}
+#include <asm/debug_ll_ns16550.h>
 
 #endif  /* __INCLUDE_ARCH_DEBUG_LL_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
