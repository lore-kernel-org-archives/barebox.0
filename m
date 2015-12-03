Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4IeY-0002bi-6O
 for barebox@lists.infradead.org; Thu, 03 Dec 2015 01:25:46 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 3 Dec 2015 01:24:56 +0000
Message-ID: <1449105900.26955.1.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <A2F88369B6EE94419A12688D3CB33518@kymetacorp.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: Remove kernel booting call for thumb2 mode
To: barebox <barebox@lists.infradead.org>

The asm code to do the actual call into the kernel (or another
barebox) when compiled in thumb2 mode isn't necessary.  gcc generates
a perfectly good calling sequence from a normal function pointer call.
If it didn't, the code in bootstrap_boot() that uses a function
pointer to jump to the 2nd stage barebox from an xloader wouldn't
work.

It appears to be allowed that the call to kernel() could return, as
neither start_linux() nor kernel() are marked noreturn, and there is
code after calls to start_linux().

The asm code has a bug in this case, as it uses bx and not blx, and
thus doesn't set the link register.  Since it's a tail call, this
would be okay, but only if the LR value from the start of
start_linux() (and the callee-saved registers) are restored
beforehand, which isn't done.  The gcc generated call sequence will do
this.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 arch/arm/lib/armlinux.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 16879f8..47b9bd3 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -277,17 +277,5 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
 	}
 
-#ifdef CONFIG_THUMB2_BAREBOX
-	__asm__ __volatile__ (
-		"mov r0, #0\n"
-		"mov r1, %0\n"
-		"mov r2, %1\n"
-		"bx %2\n"
-		:
-		: "r" (architecture), "r" (params), "r" (kernel)
-		: "r0", "r1", "r2"
-	);
-#else
 	kernel(0, architecture, params);
-#endif
 }
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
