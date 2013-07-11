Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UxNV8-00014O-1I
 for barebox@lists.infradead.org; Thu, 11 Jul 2013 20:30:07 +0000
Received: from mail636.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 400E5DC74BF
 for <barebox@lists.infradead.org>; Thu, 11 Jul 2013 22:29:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 11 Jul 2013 22:29:40 +0200
Message-Id: <1373574580-11324-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] ARM: at91: fix debug_ll typo on CONFIG_HAVE_AT91_DBGU0
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/include/mach/debug_ll.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/include/mach/debug_ll.h b/arch/arm/mach-at91/include/mach/debug_ll.h
index 1a85ae4..42728a4 100644
--- a/arch/arm/mach-at91/include/mach/debug_ll.h
+++ b/arch/arm/mach-at91/include/mach/debug_ll.h
@@ -11,7 +11,7 @@
 #include <asm/io.h>
 #include <mach/hardware.h>
 
-#ifdef COFNIG_HAVE_AT91_DBGU0
+#ifdef CONFIG_HAVE_AT91_DBGU0
 #define UART_BASE	AT91_BASE_DBGU0
 #else
 #define UART_BASE	AT91_BASE_DBGU1
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
