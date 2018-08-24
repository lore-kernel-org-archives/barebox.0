Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2J0-00028c-LX
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:58:36 +0000
Received: by mail-pf1-x442.google.com with SMTP id h79-v6so2935554pfk.8
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:58:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:58:11 -0700
Message-Id: <20180824025814.20886-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025814.20886-1-andrew.smirnov@gmail.com>
References: <20180824025814.20886-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/5] give up on gcc ilog2() constant optimizations
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com

From: Linus Torvalds <torvalds@linux-foundation.org>

gcc-7 has an "optimization" pass that completely screws up, and
generates the code expansion for the (impossible) case of calling
ilog2() with a zero constant, even when the code gcc compiles does not
actually have a zero constant.

And we try to generate a compile-time error for anybody doing ilog2() on
a constant where that doesn't make sense (be it zero or negative).  So
now gcc7 will fail the build due to our sanity checking, because it
created that constant-zero case that didn't actually exist in the source
code.

There's a whole long discussion on the kernel mailing about how to work
around this gcc bug.  The gcc people themselevs have discussed their
"feature" in

   https://gcc.gnu.org/bugzilla/show_bug.cgi?id=72785

but it's all water under the bridge, because while it looked at one
point like it would be solved by the time gcc7 was released, that was
not to be.

So now we have to deal with this compiler braindamage.

And the only simple approach seems to be to just delete the code that
tries to warn about bad uses of ilog2().

So now "ilog2()" will just return 0 not just for the value 1, but for
any non-positive value too.

It's not like I can recall anybody having ever actually tried to use
this function on any invalid value, but maybe the sanity check just
meant that such code never made it out in public.

Reported-by: Laura Abbott <labbott@redhat.com>
Cc: John Stultz <john.stultz@linaro.org>,
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
[andrew.smirnov@gmail.com: Applied kernel patch to Barebox as-is, but
specifying --exclude=tools/include/linux/log2.h]
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/log2.h | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/include/linux/log2.h b/include/linux/log2.h
index da4f60f94..919a22790 100644
--- a/include/linux/log2.h
+++ b/include/linux/log2.h
@@ -15,12 +15,6 @@
 #include <linux/types.h>
 #include <linux/bitops.h>
 
-/*
- * deal with unrepresentable constant logarithms
- */
-extern __attribute__((const, noreturn))
-int ____ilog2_NaN(void);
-
 /*
  * non-constant log of base 2 calculators
  * - the arch may override these in asm/bitops.h if they can be implemented
@@ -85,7 +79,7 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
 #define ilog2(n)				\
 (						\
 	__builtin_constant_p(n) ? (		\
-		(n) < 1 ? ____ilog2_NaN() :	\
+		(n) < 2 ? 0 :			\
 		(n) & (1ULL << 63) ? 63 :	\
 		(n) & (1ULL << 62) ? 62 :	\
 		(n) & (1ULL << 61) ? 61 :	\
@@ -148,10 +142,7 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
 		(n) & (1ULL <<  4) ?  4 :	\
 		(n) & (1ULL <<  3) ?  3 :	\
 		(n) & (1ULL <<  2) ?  2 :	\
-		(n) & (1ULL <<  1) ?  1 :	\
-		(n) & (1ULL <<  0) ?  0 :	\
-		____ilog2_NaN()			\
-				   ) :		\
+		1 ) :				\
 	(sizeof(n) <= 4) ?			\
 	__ilog2_u32(n) :			\
 	__ilog2_u64(n)				\
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
