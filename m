Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tcvgx-0001UB-SV
 for barebox@lists.infradead.org; Mon, 26 Nov 2012 10:13:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Nov 2012 11:13:26 +0100
Message-Id: <1353924807-519-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1353924807-519-1-git-send-email-s.hauer@pengutronix.de>
References: <1353924807-519-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] debug_ll: Add some usage comments
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig     |    2 ++
 include/debug_ll.h |   16 +++++++++++++++-
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index d60db80..57119dc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -667,6 +667,8 @@ config DEBUG_LL
 	prompt "low level debug messages"
 	help
 	  Enable this to get low level debug messages during barebox initialization.
+	  This requires SoC specific support. Most SoCs require the debug UART to be
+	  initialized by a debugger or first stage bootloader.
 
 endmenu
 
diff --git a/include/debug_ll.h b/include/debug_ll.h
index c5f2df4..f0034ba 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -1,4 +1,5 @@
-/* debug_ll.h
+/*
+ * debug_ll.h
  *
  *  written by Marc Singer
  *  12 Feb 2005
@@ -20,6 +21,14 @@
 #define   __INCLUDE_DEBUG_LL_H__
 
 #if defined (CONFIG_DEBUG_LL)
+
+/*
+ * mach/debug_ll.h should implement PUTC_LL. This can be a macro or a static
+ * inline function. Note that several SoCs expect the UART to be initialized
+ * by a debugger or a first stage bootloader. You won't see anything without
+ * this initialization. Depending on the PUTC_LL implementation the board might
+ * also hang in PUTC_LL without proper initialization.
+ */
 # include <mach/debug_ll.h>
 
 # define PUTHEX_LL(value)  ({ unsigned long v = (unsigned long) (value); \
@@ -29,6 +38,11 @@
 			     ch += (ch >= 10) ? 'a' - 10 : '0';\
 			     PUTC_LL (ch); }})
 
+/*
+ * Be careful with PUTS_LL, it only works if the binary is running at the
+ * link address which often is not the case during early startup. If in doubt
+ * don't use it.
+ */
 static __inline__ void PUTS_LL(const char * str)
 {
 	while (*str) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
