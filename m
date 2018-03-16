Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosF-0008BX-Fi
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:38 +0100
Message-Id: <20180316125354.23462-63-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 62/78] ARM: aarch64: Allow to leave exceptions
To: Barebox List <barebox@lists.infradead.org>

So far exceptions can only be entered but never left. Add code to leave
exceptions based on U-Boot commit 4c2cc7c4e (arm64: Allow exceptions to return).
This will be useful to implement ignoring data aborts on a 'md' command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions_64.S | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm/cpu/exceptions_64.S b/arch/arm/cpu/exceptions_64.S
index a7069a8475..58ca50b709 100644
--- a/arch/arm/cpu/exceptions_64.S
+++ b/arch/arm/cpu/exceptions_64.S
@@ -80,34 +80,68 @@ vectors:
 _do_bad_sync:
 	exception_entry
 	bl	do_bad_sync
+	b	exception_exit
 
 _do_bad_irq:
 	exception_entry
 	bl	do_bad_irq
+	b	exception_exit
 
 _do_bad_fiq:
 	exception_entry
 	bl	do_bad_fiq
+	b	exception_exit
 
 _do_bad_error:
 	exception_entry
 	bl	do_bad_error
+	b	exception_exit
 
 _do_sync:
 	exception_entry
 	bl	do_sync
+	b	exception_exit
 
 _do_irq:
 	exception_entry
 	bl	do_irq
+	b	exception_exit
 
 _do_fiq:
 	exception_entry
 	bl	do_fiq
+	b	exception_exit
 
 _do_error:
 	exception_entry
 	bl	do_error
+	b	exception_exit
+
+exception_exit:
+	ldp	x2, x0, [sp],#16
+	switch_el x11, 3f, 2f, 1f
+3:     	msr	elr_el3, x2
+	b	0f
+2:     	msr	elr_el2, x2
+	b	0f
+1:     	msr	elr_el1, x2
+0:
+	ldp	x1, x2, [sp],#16
+	ldp	x3, x4, [sp],#16
+	ldp	x5, x6, [sp],#16
+	ldp	x7, x8, [sp],#16
+	ldp	x9, x10, [sp],#16
+	ldp	x11, x12, [sp],#16
+	ldp	x13, x14, [sp],#16
+	ldp	x15, x16, [sp],#16
+	ldp	x17, x18, [sp],#16
+	ldp	x19, x20, [sp],#16
+	ldp	x21, x22, [sp],#16
+	ldp	x23, x24, [sp],#16
+	ldp	x25, x26, [sp],#16
+	ldp	x27, x28, [sp],#16
+	ldp	x29, x30, [sp],#16
+	eret
 
 .section .data
 .align 4
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
