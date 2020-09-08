Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFX48-0002vf-1X
 for barebox@lists.infradead.org; Tue, 08 Sep 2020 06:25:16 +0000
Received: by mail-pj1-x1041.google.com with SMTP id u3so4256757pjr.3
 for <barebox@lists.infradead.org>; Mon, 07 Sep 2020 23:25:13 -0700 (PDT)
From: Du Huanpeng <u74147@gmail.com>
Date: Tue,  8 Sep 2020 14:25:05 +0800
Message-Id: <1599546305-10121-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] MIPS: asm/debug_ll_ns16550.h: add nop in delay slot
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

In the debug_ll_outc_a0 macro, a0 is written to the uart data
register many times in a delay slot when the uart is not ready
to send data. insert a nop to avoid this.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 arch/mips/include/asm/debug_ll_ns16550.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
index df58c4c..cf666d1 100644
--- a/arch/mips/include/asm/debug_ll_ns16550.h
+++ b/arch/mips/include/asm/debug_ll_ns16550.h
@@ -88,6 +88,7 @@ static inline void PUTC_LL(char ch)
 201:	lbu	t1, UART_LSR(t0)	/* get line status */
 	andi	t1, t1, UART_LSR_THRE	/* check for transmitter empty */
 	beqz	t1, 201b			/* try again */
+	nop
 
 	sb	a0, UART_THR(t0)	/* write the character */
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
