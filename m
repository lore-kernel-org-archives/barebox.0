Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUL-0003QI-Hb
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:22 +0000
Received: by mail-ww0-f49.google.com with SMTP id 40so1440230wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:17 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:45 +0100
Message-Id: <4d701d44.9009d80a.2cd3.5e92@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 31/54] Add arch/nios2/include/asm/early_printf.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/early_printf.h

---
 arch/nios2/include/asm/early_printf.h |   23 +++++++++++++++++++++++
 1 files changed, 23 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/early_printf.h

diff --git a/arch/nios2/include/asm/early_printf.h b/arch/nios2/include/asm/early_printf.h
new file mode 100644
index 0000000..7b9269a
--- /dev/null
+++ b/arch/nios2/include/asm/early_printf.h
@@ -0,0 +1,23 @@
+#ifndef _EARLY_PRINTF_
+#define _EARLY_PRINTF_
+
+#include <asm/nios2-io.h>
+
+#ifdef CONFIG_EARLY_PRINTF        
+#define PUTC_LL(x) early_putc(x)
+#define PUTHEX_LL(value)  ({ unsigned long v = (unsigned long) (value); \
+			     int i; unsigned char ch; \
+			     for (i = 8; i--; ) {\
+			     ch = ((v >> (i*4)) & 0xf);\
+			     ch += (ch >= 10) ? 'a' - 10 : '0';\
+			     PUTC_LL (ch); }})
+#else
+# define PUTC_LL(c) do {} while (0)
+# define PUTHEX_LL(v) do {} while (0)
+#endif
+
+void early_putc( char ch );
+void early_puts(const char *s);
+int early_printf(const char *fmt, ...);
+
+#endif  /* _EARLY_PRINTF_ */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
