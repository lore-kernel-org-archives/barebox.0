Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo5.mail-out.ovh.net ([178.32.124.100]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TgFE3-0007lv-8f
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 13:41:24 +0000
Received: from mail634.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 0568B10383BD
 for <barebox@lists.infradead.org>; Wed,  5 Dec 2012 14:49:38 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  5 Dec 2012 14:39:29 +0100
Message-Id: <1354714769-5177-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] at91: fix debug_ll
To: barebox@lists.infradead.org

since 9d1bcab50454e06c74dc9fda42a05cd8a43265c6
debug_ll: Let architectures define PUTC_LL directly

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/include/mach/debug_ll.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/include/mach/debug_ll.h b/arch/arm/mach-at91/include/mach/debug_ll.h
index ee824cb..a85fdee 100644
--- a/arch/arm/mach-at91/include/mach/debug_ll.h
+++ b/arch/arm/mach-at91/include/mach/debug_ll.h
@@ -25,7 +25,7 @@
  *
  * This does not append a newline
  */
-static void putc(int c)
+static inline void PUTC_LL(char c)
 {
 	while (!(__raw_readl(UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXRDY))
 		barrier();
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
