Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TofRI-0004Gr-9R
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 19:17:58 +0000
Received: from mail637.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6687DFF972C
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 20:30:32 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Dec 2012 20:16:06 +0100
Message-Id: <1356722174-22598-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121228191327.GC7216@game.jcrosoft.org>
 <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 05/13] at91: introduce Kconfig to select the dbgu for lowlevel
 debug
To: barebox@lists.infradead.org

so we can drop AT91_BASE_SYS too

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig                 |   15 +++++++++++++++
 arch/arm/mach-at91/include/mach/debug_ll.h |    6 +++++-
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 4c2e319..0ab7e7e 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -1,5 +1,11 @@
 if ARCH_AT91
 
+config HAVE_AT91_DBGU0
+	bool
+
+config HAVE_AT91_DBGU1
+	bool
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x73f00000 if ARCH_AT91SAM9G45
@@ -49,6 +55,7 @@ choice
 config ARCH_AT91RM9200
 	bool "AT91RM9200"
 	select CPU_ARM920T
+	select HAVE_AT91_DBGU0
 	select HAS_AT91_ETHER
 	select MACH_HAS_LOWLEVEL_INIT
 	select MACH_DO_LOWLEVEL_INIT
@@ -56,46 +63,54 @@ config ARCH_AT91RM9200
 config ARCH_AT91SAM9260
 	bool "AT91SAM9260"
 	select CPU_ARM926T
+	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	select AT91SAM9_RESET
 
 config ARCH_AT91SAM9261
 	bool "AT91SAM9261"
 	select CPU_ARM926T
+	select HAVE_AT91_DBGU0
 	select AT91SAM9_RESET
 
 config ARCH_AT91SAM9263
 	bool "AT91SAM9263"
 	select CPU_ARM926T
+	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select AT91SAM9_RESET
 
 config ARCH_AT91SAM9G10
 	bool "AT91SAM9G10"
 	select CPU_ARM926T
+	select HAVE_AT91_DBGU0
 	select AT91SAM9_RESET
 
 config ARCH_AT91SAM9G20
 	bool "AT91SAM9G20"
 	select CPU_ARM926T
+	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	select AT91SAM9_RESET
 
 config ARCH_AT91SAM9G45
 	bool "AT91SAM9G45 or AT91SAM9M10"
 	select CPU_ARM926T
+	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select AT91SAM9G45_RESET
 
 config ARCH_AT91SAM9X5
 	bool "AT91SAM9X5"
 	select CPU_ARM926T
+	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	select AT91SAM9G45_RESET
 
 config ARCH_AT91SAM9N12
 	bool "AT91SAM9N12"
 	select CPU_ARM926T
+	select HAVE_AT91_DBGU0
 	select AT91SAM9G45_RESET
 
 endchoice
diff --git a/arch/arm/mach-at91/include/mach/debug_ll.h b/arch/arm/mach-at91/include/mach/debug_ll.h
index a85fdee..1a85ae4 100644
--- a/arch/arm/mach-at91/include/mach/debug_ll.h
+++ b/arch/arm/mach-at91/include/mach/debug_ll.h
@@ -11,7 +11,11 @@
 #include <asm/io.h>
 #include <mach/hardware.h>
 
-#define UART_BASE	(AT91_BASE_SYS + AT91_DBGU)
+#ifdef COFNIG_HAVE_AT91_DBGU0
+#define UART_BASE	AT91_BASE_DBGU0
+#else
+#define UART_BASE	AT91_BASE_DBGU1
+#endif
 
 #define ATMEL_US_CSR		0x0014
 #define ATMEL_US_THR		0x001c
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
