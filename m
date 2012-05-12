Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ST6Xs-00043J-Dt
 for barebox@lists.infradead.org; Sat, 12 May 2012 07:15:32 +0000
Received: by lbbgg6 with SMTP id gg6so2975091lbb.36
 for <barebox@lists.infradead.org>; Sat, 12 May 2012 00:15:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 12 May 2012 11:15:04 +0400
Message-Id: <1336806904-6251-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1336806904-6251-1-git-send-email-antonynpavlov@gmail.com>
References: <1336806904-6251-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] MIPS: malta: use common DEBUG_LL code for NS16550
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-malta/include/mach/debug_ll.h |   11 +----------
 arch/mips/mach-malta/include/mach/hardware.h |    1 +
 2 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/arch/mips/mach-malta/include/mach/debug_ll.h b/arch/mips/mach-malta/include/mach/debug_ll.h
index ccc9d9b..9de469b 100644
--- a/arch/mips/mach-malta/include/mach/debug_ll.h
+++ b/arch/mips/mach-malta/include/mach/debug_ll.h
@@ -24,17 +24,8 @@
 #ifndef __INCLUDE_ARCH_DEBUG_LL_H__
 #define   __INCLUDE_ARCH_DEBUG_LL_H__
 
-#include <io.h>
 #include <mach/hardware.h>
 
-#define rbr		0
-#define lsr		5
-#define LSR_THRE	0x20	/* Xmit holding register empty */
-
-static __inline__ void putc(char ch)
-{
-	while (!(__raw_readb(DEBUG_LL_UART_ADDR + lsr) & LSR_THRE));
-	__raw_writeb(ch, DEBUG_LL_UART_ADDR + rbr);
-}
+#include <debug_ll_ns16550.h>
 
 #endif  /* __INCLUDE_ARCH_DEBUG_LL_H__ */
diff --git a/arch/mips/mach-malta/include/mach/hardware.h b/arch/mips/mach-malta/include/mach/hardware.h
index f827cc3..ddeb1b7 100644
--- a/arch/mips/mach-malta/include/mach/hardware.h
+++ b/arch/mips/mach-malta/include/mach/hardware.h
@@ -22,6 +22,7 @@
 #define   __INCLUDE_ARCH_HARDWARE_H__
 
 #define DEBUG_LL_UART_ADDR	0xb00003f8
+#define DEBUG_LL_UART_SHIFT	0
 
 /*
  * Reset register.
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
