Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2J0-00028W-1S
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:58:35 +0000
Received: by mail-pg1-x544.google.com with SMTP id k8-v6so3611072pgq.5
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:58:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:58:10 -0700
Message-Id: <20180824025814.20886-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/5] log2: make order_base_2() behave correctly on const input
 value zero
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

The function order_base_2() is defined (according to the comment block)
as returning zero on input zero, but subsequently passes the input into
roundup_pow_of_two(), which is explicitly undefined for input zero.

This has gone unnoticed until now, but optimization passes in GCC 7 may
produce constant folded function instances where a constant value of
zero is passed into order_base_2(), resulting in link errors against the
deliberately undefined '____ilog2_NaN'.

So update order_base_2() to adhere to its own documented interface.

[ See

     http://marc.info/?l=linux-kernel&m=147672952517795&w=2

  and follow-up discussion for more background. The gcc "optimization
  pass" is really just broken, but now the GCC trunk problem seems to
  have escaped out of just specially built daily images, so we need to
  work around it in mainline.    - Linus ]

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
[andrew.smirnov@gmail.com: Applied kernel patch to Barebox as-is]
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/log2.h | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/include/linux/log2.h b/include/linux/log2.h
index 36519e3aa..da4f60f94 100644
--- a/include/linux/log2.h
+++ b/include/linux/log2.h
@@ -203,6 +203,17 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
  *  ... and so on.
  */
 
-#define order_base_2(n) ilog2(roundup_pow_of_two(n))
+static inline __attribute_const__
+int __order_base_2(unsigned long n)
+{
+	return n > 1 ? ilog2(n - 1) + 1 : 0;
+}
 
+#define order_base_2(n)				\
+(						\
+	__builtin_constant_p(n) ? (		\
+		((n) == 0 || (n) == 1) ? 0 :	\
+		ilog2((n) - 1) + 1) :		\
+	__order_base_2(n)			\
+)
 #endif /* _LINUX_LOG2_H */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
