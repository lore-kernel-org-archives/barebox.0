Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z044Z-0007Bt-HT
 for barebox@lists.infradead.org; Wed, 03 Jun 2015 08:30:52 +0000
Received: by lbcue7 with SMTP id ue7so2053552lbc.0
 for <barebox@lists.infradead.org>; Wed, 03 Jun 2015 01:30:29 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  3 Jun 2015 11:32:33 +0300
Message-Id: <1433320353-31777-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: asm/debug_ll_ns16550.h: use plain inline instead of
 __inline__
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/debug_ll_ns16550.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
index a3e1c52..4a6562f 100644
--- a/arch/mips/include/asm/debug_ll_ns16550.h
+++ b/arch/mips/include/asm/debug_ll_ns16550.h
@@ -57,7 +57,7 @@
 
 #include <asm/io.h>
 
-static __inline__ void PUTC_LL(char ch)
+static inline void PUTC_LL(char ch)
 {
 #ifdef CONFIG_DEBUG_LL
 	while (!(__raw_readb((u8 *)DEBUG_LL_UART_ADDR + UART_LSR) & UART_LSR_THRE))
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
