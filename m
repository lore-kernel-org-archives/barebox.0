Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZdnRy-0002zM-NQ
 for barebox@lists.infradead.org; Sun, 20 Sep 2015 22:51:15 +0000
Received: by lagj9 with SMTP id j9so58572987lag.2
 for <barebox@lists.infradead.org>; Sun, 20 Sep 2015 15:50:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 Sep 2015 01:50:43 +0300
Message-Id: <1442789445-10778-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442789445-10778-1-git-send-email-antonynpavlov@gmail.com>
References: <1442789445-10778-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] MIPS: mach-ath79: make ar71xx_regs.h assembler-tolerant
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h | 4 ++++
 arch/mips/mach-ath79/include/mach/debug_ll.h    | 5 +----
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
index 0c6ddd6..77138ab 100644
--- a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
+++ b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
@@ -15,7 +15,11 @@
 #ifndef __ASM_MACH_AR71XX_REGS_H
 #define __ASM_MACH_AR71XX_REGS_H
 
+#ifndef __ASSEMBLER__
 #include <linux/bitops.h>
+#else
+#define BIT(nr)  (1 << (nr))
+#endif
 
 #define AR71XX_APB_BASE		0x18000000
 
diff --git a/arch/mips/mach-ath79/include/mach/debug_ll.h b/arch/mips/mach-ath79/include/mach/debug_ll.h
index 64db674..d3813af 100644
--- a/arch/mips/mach-ath79/include/mach/debug_ll.h
+++ b/arch/mips/mach-ath79/include/mach/debug_ll.h
@@ -19,10 +19,7 @@
 #define __AR933X_DEBUG_LL__
 
 #include <asm/addrspace.h>
-
-/* Alas! <mach/ar71xx_regs.h> isn't assembly-tolerant */
-#define AR71XX_APB_BASE     0x18000000
-#define AR933X_UART_BASE    (AR71XX_APB_BASE + 0x00020000)
+#include <mach/ar71xx_regs.h>
 
 #define DEBUG_LL_UART_ADDR	KSEG1ADDR(AR933X_UART_BASE)
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
