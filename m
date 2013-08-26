Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1VDqjA-0003D9-Gc
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:55:58 +0200
Message-Id: <1377500163-28962-18-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/22] rework debug_ll
To: barebox@lists.infradead.org

Convert to static inline functions and use lower case letters for function
names. Also, include mach/debug_ll.h when an architecture provides support
for debug_ll, not only when it's actually enabled. This allows architecures
to put some UART initialization code into mach/debug_ll.h which is compiled
out when debug_ll is disabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c        |  8 +++----
 common/console_simple.c |  2 +-
 include/debug_ll.h      | 61 ++++++++++++++++++++++++++++++++++---------------
 3 files changed, 48 insertions(+), 23 deletions(-)

diff --git a/common/console.c b/common/console.c
index 1518ed8..6ca94e2 100644
--- a/common/console.c
+++ b/common/console.c
@@ -93,9 +93,9 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 	if (initialized < CONSOLE_INIT_FULL) {
 		char ch;
 		initialized = CONSOLE_INIT_FULL;
-		PUTS_LL("Switch to console [");
-		PUTS_LL(dev_name(dev));
-		PUTS_LL("]\n");
+		puts_ll("Switch to console [");
+		puts_ll(dev_name(dev));
+		puts_ll("]\n");
 		barebox_banner();
 		while (kfifo_getc(console_output_fifo, &ch) == 0)
 			console_putc(CONSOLE_STDOUT, ch);
@@ -286,7 +286,7 @@ void console_putc(unsigned int ch, char c)
 
 	case CONSOLE_INITIALIZED_BUFFER:
 		kfifo_putc(console_output_fifo, c);
-		PUTC_LL(c);
+		putc_ll(c);
 		return;
 
 	case CONSOLE_INIT_FULL:
diff --git a/common/console_simple.c b/common/console_simple.c
index 1fe569e..101064b 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -28,7 +28,7 @@ EXPORT_SYMBOL(console_puts);
 void console_putc(unsigned int ch, char c)
 {
 	if (!console) {
-		PUTC_LL(c);
+		putc_ll(c);
 		return;
 	}
 
diff --git a/include/debug_ll.h b/include/debug_ll.h
index f0034ba..ffb7654 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -20,8 +20,7 @@
 #ifndef __INCLUDE_DEBUG_LL_H__
 #define   __INCLUDE_DEBUG_LL_H__
 
-#if defined (CONFIG_DEBUG_LL)
-
+#ifdef CONFIG_HAS_DEBUG_LL
 /*
  * mach/debug_ll.h should implement PUTC_LL. This can be a macro or a static
  * inline function. Note that several SoCs expect the UART to be initialized
@@ -29,35 +28,61 @@
  * this initialization. Depending on the PUTC_LL implementation the board might
  * also hang in PUTC_LL without proper initialization.
  */
-# include <mach/debug_ll.h>
+#include <mach/debug_ll.h>
+#endif
 
-# define PUTHEX_LL(value)  ({ unsigned long v = (unsigned long) (value); \
-			     int i; unsigned char ch; \
-			     for (i = 8; i--; ) {\
-			     ch = ((v >> (i*4)) & 0xf);\
-			     ch += (ch >= 10) ? 'a' - 10 : '0';\
-			     PUTC_LL (ch); }})
+#if defined (CONFIG_DEBUG_LL)
+
+static inline void putc_ll(unsigned char value)
+{
+	PUTC_LL(value);
+}
+
+static inline void putxhex_ll(unsigned long value)
+{
+	int i; unsigned char ch;
+
+	for (i = 8; i--; ) {
+		ch = ((value >> (i * 4)) & 0xf);
+		ch += (ch >= 10) ? 'a' - 10 : '0';
+		putc_ll(ch);
+	}
+}
 
 /*
- * Be careful with PUTS_LL, it only works if the binary is running at the
+ * Be careful with puts_ll, it only works if the binary is running at the
  * link address which often is not the case during early startup. If in doubt
  * don't use it.
  */
-static __inline__ void PUTS_LL(const char * str)
+static inline void puts_ll(const char * str)
 {
 	while (*str) {
-		if (*str == '\n') {
-			PUTC_LL('\r');
-		}
-		PUTC_LL(*str);
+		if (*str == '\n')
+			putc_ll('\r');
+
+		putc_ll(*str);
 		str++;
 	}
 }
 
 #else
-# define PUTC_LL(c) do {} while (0)
-# define PUTHEX_LL(v) do {} while (0)
-# define PUTS_LL(c) do {} while (0)
+
+static inline void putc_ll(unsigned char value)
+{
+}
+
+static inline void putxhex_ll(unsigned long value)
+{
+}
+
+/*
+ * Be careful with puts_ll, it only works if the binary is running at the
+ * link address which often is not the case during early startup. If in doubt
+ * don't use it.
+ */
+static inline void puts_ll(const char * str)
+{
+}
 
 #endif
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
