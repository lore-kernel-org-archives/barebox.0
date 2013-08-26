Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqix-0006bp-1A
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:55:48 +0200
Message-Id: <1377500163-28962-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/22] ARM: omap: rename INIT_LL to omap_uart_lowlevel_init
To: barebox@lists.infradead.org

Function should use lower case letters. Also give this function
more namespace. While at it include io.h rather than asm/io.h.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/debug_ll.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
index 38ca562..2917558 100644
--- a/arch/arm/mach-omap/include/mach/debug_ll.h
+++ b/arch/arm/mach-omap/include/mach/debug_ll.h
@@ -17,7 +17,7 @@
 #ifndef __MACH_DEBUG_LL_H__
 #define   __MACH_DEBUG_LL_H__
 
-#include <asm/io.h>
+#include <io.h>
 
 #ifdef CONFIG_ARCH_OMAP3
 #include <mach/omap3-silicon.h>
@@ -56,7 +56,7 @@
 #define MCR		(4 << 2)
 #define MDR		(8 << 2)
 
-static inline void INIT_LL(void)
+static inline void omap_uart_lowlevel_init(void)
 {
 	writeb(0x00, UART_BASE + LCR);
 	writeb(0x00, UART_BASE + IER);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
