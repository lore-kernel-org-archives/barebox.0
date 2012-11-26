Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tcvgx-0001U6-ST
 for barebox@lists.infradead.org; Mon, 26 Nov 2012 10:13:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Nov 2012 11:13:25 +0100
Message-Id: <1353924807-519-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] debug_ll: Let architectures define PUTC_LL directly
To: barebox@lists.infradead.org

putc already is a regular barebox function. To avoid conflicts and
confusions just let architectures define PUTC_LL directly instead
of going through this addiotional redirection.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/debug_ll.h      |    2 +-
 arch/arm/mach-tegra/include/mach/debug_ll.h     |    2 +-
 arch/arm/mach-versatile/include/mach/debug_ll.h |    2 +-
 arch/mips/include/debug_ll_ns16550.h            |    2 +-
 arch/mips/mach-bcm47xx/include/mach/debug_ll.h  |    2 +-
 include/debug_ll.h                              |    1 -
 6 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
index c1fcc9d..b2714c5 100644
--- a/arch/arm/mach-omap/include/mach/debug_ll.h
+++ b/arch/arm/mach-omap/include/mach/debug_ll.h
@@ -39,7 +39,7 @@
 #define LSR		(5 << 2)
 #define THR		(0 << 2)
 
-static inline void putc(char c)
+static inline void PUTC_LL(char c)
 {
 	/* Wait until there is space in the FIFO */
 	while ((readb(UART_BASE + LSR) & LSR_THRE) == 0);
diff --git a/arch/arm/mach-tegra/include/mach/debug_ll.h b/arch/arm/mach-tegra/include/mach/debug_ll.h
index 18024eb..290ad58 100644
--- a/arch/arm/mach-tegra/include/mach/debug_ll.h
+++ b/arch/arm/mach-tegra/include/mach/debug_ll.h
@@ -31,7 +31,7 @@
 #define lsr		(5 << DEBUG_LL_UART_RSHFT)
 #define LSR_THRE	0x20	/* Xmit holding register empty */
 
-static inline void putc(char ch)
+static inline void PUTC_LL(char ch)
 {
 	while (!(__raw_readb(DEBUG_LL_UART_ADDR + lsr) & LSR_THRE))
 		;
diff --git a/arch/arm/mach-versatile/include/mach/debug_ll.h b/arch/arm/mach-versatile/include/mach/debug_ll.h
index 20fbc7c..f91812b 100644
--- a/arch/arm/mach-versatile/include/mach/debug_ll.h
+++ b/arch/arm/mach-versatile/include/mach/debug_ll.h
@@ -19,7 +19,7 @@
 #include <linux/amba/serial.h>
 #include <io.h>
 
-static inline void putc(char c)
+static inline void PUTC_LL(char c)
 {
 	/* Wait until there is space in the FIFO */
 	while (readl(0x101F1000 + UART01x_FR) & UART01x_FR_TXFF);
diff --git a/arch/mips/include/debug_ll_ns16550.h b/arch/mips/include/debug_ll_ns16550.h
index a8b74d2..e9c7ecf 100644
--- a/arch/mips/include/debug_ll_ns16550.h
+++ b/arch/mips/include/debug_ll_ns16550.h
@@ -28,7 +28,7 @@
 
 #define LSR_THRE	0x20	/* Xmit holding register empty */
 
-static __inline__ void putc(char ch)
+static __inline__ void PUTC_LL(char ch)
 {
 	while (!(__raw_readb((u8 *)DEBUG_LL_UART_ADDR + lsr) & LSR_THRE));
 	__raw_writeb(ch, (u8 *)DEBUG_LL_UART_ADDR + rbr);
diff --git a/arch/mips/mach-bcm47xx/include/mach/debug_ll.h b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
index 4bf1817..0703bb0 100644
--- a/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
+++ b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
@@ -28,7 +28,7 @@
 #define lsr		5
 #define LSR_THRE	0x20	/* Xmit holding register empty */
 
-static __inline__ void putc(char ch)
+static __inline__ void PUTC_LL(char ch)
 {
 	while (!(__raw_readb(DEBUG_LL_UART_ADDR + lsr) & LSR_THRE));
 	__raw_writeb(ch, DEBUG_LL_UART_ADDR + rbr);
diff --git a/include/debug_ll.h b/include/debug_ll.h
index c744573..c5f2df4 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -22,7 +22,6 @@
 #if defined (CONFIG_DEBUG_LL)
 # include <mach/debug_ll.h>
 
-#define PUTC_LL(x) putc(x)
 # define PUTHEX_LL(value)  ({ unsigned long v = (unsigned long) (value); \
 			     int i; unsigned char ch; \
 			     for (i = 8; i--; ) {\
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
