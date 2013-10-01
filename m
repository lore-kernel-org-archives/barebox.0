Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQtLx-0000Sx-91
 for barebox@lists.infradead.org; Tue, 01 Oct 2013 06:22:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  1 Oct 2013 08:22:08 +0200
Message-Id: <1380608528-26999-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380608528-26999-1-git-send-email-s.hauer@pengutronix.de>
References: <1380608528-26999-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] mips: bcm47xx: Fix compiler warning
To: barebox@lists.infradead.org

Fixes:

arch/mips/mach-bcm47xx/include/mach/debug_ll.h: In function 'PUTC_LL':
arch/mips/mach-bcm47xx/include/mach/debug_ll.h:33: warning: passing argument 1 of '__raw_readb' makes pointer from integer without a cast
arch/mips/mach-bcm47xx/include/mach/debug_ll.h:34: warning: passing argument 2 of '__raw_writeb' makes pointer from integer without a cast

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/mach-bcm47xx/include/mach/debug_ll.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/mips/mach-bcm47xx/include/mach/debug_ll.h b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
index 0703bb0..9927b4d 100644
--- a/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
+++ b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
@@ -30,8 +30,10 @@
 
 static __inline__ void PUTC_LL(char ch)
 {
-	while (!(__raw_readb(DEBUG_LL_UART_ADDR + lsr) & LSR_THRE));
-	__raw_writeb(ch, DEBUG_LL_UART_ADDR + rbr);
+	void *base = (void *)DEBUG_LL_UART_ADDR;
+
+	while (!(__raw_readb(base + lsr) & LSR_THRE));
+	__raw_writeb(ch, base + rbr);
 }
 
 #endif  /* __INCLUDE_ARCH_DEBUG_LL_H__ */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
