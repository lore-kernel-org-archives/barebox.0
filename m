Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f47.google.com ([74.125.82.47])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UET4G-0005So-Me
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 23:20:45 +0000
Received: by mail-wg0-f47.google.com with SMTP id dr13so3692617wgb.2
 for <barebox@lists.infradead.org>; Sat, 09 Mar 2013 15:20:42 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 10 Mar 2013 00:19:37 +0100
Message-Id: <1362871182-25726-5-git-send-email-vicencb@gmail.com>
In-Reply-To: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 4/9] omap_uart: add low level port serial initialization
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

 some sort of UART setup has to be done in order to use PUTC_LL

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/mach-omap/include/mach/debug_ll.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
index eea6eb3..9740848 100644
--- a/arch/arm/mach-omap/include/mach/debug_ll.h
+++ b/arch/arm/mach-omap/include/mach/debug_ll.h
@@ -45,9 +45,30 @@
 #endif
 
 #define LSR_THRE	0x20	/* Xmit holding register empty */
+#define LCR_BKSE	0x80	/* Bank select enable */
 #define LSR		(5 << 2)
 #define THR		(0 << 2)
+#define DLL		(0 << 2)
+#define IER		(1 << 2)
+#define DLM		(1 << 2)
+#define FCR		(2 << 2)
+#define LCR		(3 << 2)
+#define MCR		(4 << 2)
+#define MDR		(8 << 2)
 
+static inline void INIT_LL(void)
+{
+	writeb(0x00, UART_BASE + LCR);
+	writeb(0x00, UART_BASE + IER);
+	writeb(0x07, UART_BASE + MDR);
+	writeb(LCR_BKSE, UART_BASE + LCR);
+	writeb(26, UART_BASE + DLL); /* 115200 */
+	writeb(0, UART_BASE + DLM);
+	writeb(0x03, UART_BASE + LCR);
+	writeb(0x03, UART_BASE + MCR);
+	writeb(0x07, UART_BASE + FCR);
+	writeb(0x00, UART_BASE + MDR);
+}
 static inline void PUTC_LL(char c)
 {
 	/* Wait until there is space in the FIFO */
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
