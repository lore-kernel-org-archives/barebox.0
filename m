Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2J3-00028g-A3
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:58:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id ba4-v6so448898plb.11
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:58:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:58:14 -0700
Message-Id: <20180824025814.20886-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/5] scsi: ilog2: create truly constant version for sparse
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com

From: Martin Wilck <mwilck@suse.com>

Sparse emits errors about ilog2() in array indices because of the use of
__ilog2_32() and __ilog2_64(), rightly so
(https://www.spinics.net/lists/linux-sparse/msg03471.html).

Create a const_ilog2() variant that works with sparse for this scenario.

(Note: checkpatch.pl complains about missing parentheses, but that
appears to be a false positive. I can get rid of the warning simply by
inserting whitespace, making checkpatch "see" the whole macro).

Signed-off-by: Martin Wilck <mwilck@suse.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
[andrew.smirnov@gmail.com: Applied kernel patch to Barebox as-is]
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/log2.h | 35 ++++++++++++++++++++++++-----------
 1 file changed, 24 insertions(+), 11 deletions(-)

diff --git a/include/linux/log2.h b/include/linux/log2.h
index 41a1ae010..2af7f7786 100644
--- a/include/linux/log2.h
+++ b/include/linux/log2.h
@@ -72,16 +72,13 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
 }
 
 /**
- * ilog2 - log base 2 of 32-bit or a 64-bit unsigned value
+ * const_ilog2 - log base 2 of 32-bit or a 64-bit constant unsigned value
  * @n: parameter
  *
- * constant-capable log of base 2 calculation
- * - this can be used to initialise global variables from constant data, hence
- * the massive ternary operator construction
- *
- * selects the appropriately-sized optimised version depending on sizeof(n)
+ * Use this where sparse expects a true constant expression, e.g. for array
+ * indices.
  */
-#define ilog2(n)				\
+#define const_ilog2(n)				\
 (						\
 	__builtin_constant_p(n) ? (		\
 		(n) < 2 ? 0 :			\
@@ -147,10 +144,26 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
 		(n) & (1ULL <<  4) ?  4 :	\
 		(n) & (1ULL <<  3) ?  3 :	\
 		(n) & (1ULL <<  2) ?  2 :	\
-		1 ) :				\
-	(sizeof(n) <= 4) ?			\
-	__ilog2_u32(n) :			\
-	__ilog2_u64(n)				\
+		1) :				\
+	-1)
+
+/**
+ * ilog2 - log base 2 of 32-bit or a 64-bit unsigned value
+ * @n: parameter
+ *
+ * constant-capable log of base 2 calculation
+ * - this can be used to initialise global variables from constant data, hence
+ * the massive ternary operator construction
+ *
+ * selects the appropriately-sized optimised version depending on sizeof(n)
+ */
+#define ilog2(n) \
+( \
+	__builtin_constant_p(n) ?	\
+	const_ilog2(n) :		\
+	(sizeof(n) <= 4) ?		\
+	__ilog2_u32(n) :		\
+	__ilog2_u64(n)			\
  )
 
 /**
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
