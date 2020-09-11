Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGiFn-0002mV-Qa
 for barebox@lists.infradead.org; Fri, 11 Sep 2020 12:34:12 +0000
Received: by mail-pf1-x442.google.com with SMTP id o68so7360565pfg.2
 for <barebox@lists.infradead.org>; Fri, 11 Sep 2020 05:34:11 -0700 (PDT)
From: Du Huanpeng <u74147@gmail.com>
Date: Fri, 11 Sep 2020 20:33:58 +0800
Message-Id: <1599827638-15320-2-git-send-email-u74147@gmail.com>
In-Reply-To: <1599827638-15320-1-git-send-email-u74147@gmail.com>
References: <1599827638-15320-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] MIPS: DEBUG_LL_UART_DIVISOR is 0, use a0 instead
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

this make it possiable pass a0 as divisor to calculate uart baudrate
in run time on boot.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 arch/mips/include/asm/debug_ll_ns16550.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
index df58c4c..a33587a 100644
--- a/arch/mips/include/asm/debug_ll_ns16550.h
+++ b/arch/mips/include/asm/debug_ll_ns16550.h
@@ -66,6 +66,9 @@ static inline void PUTC_LL(char ch)
 	sb	t1, UART_LCR(t0)		/* Write it out */
 
 	li	t1, DEBUG_LL_UART_DIVISOR
+#if DEBUG_LL_UART_DIVISOR == 0
+	move	t1, a0
+#endif
 	sb	t1, UART_DLL(t0)		/* write low order byte */
 	srl	t1, t1, 8
 	sb	t1, UART_DLM(t0)		/* write high order byte */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
