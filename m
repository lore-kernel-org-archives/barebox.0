Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYeZs-0001LV-71
 for barebox@lists.infradead.org; Thu, 08 Dec 2011 14:04:01 +0000
Received: by mail-bw0-f49.google.com with SMTP id je16so2142926bkc.36
 for <barebox@lists.infradead.org>; Thu, 08 Dec 2011 06:03:59 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  8 Dec 2011 18:03:48 +0400
Message-Id: <1323353029-17281-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1323353029-17281-1-git-send-email-antonynpavlov@gmail.com>
References: <1323353029-17281-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH 2/3] adapt tlsf for barebox
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/tlsf.c  |   11 +++++++++++
 include/tlsf.h |    2 +-
 2 files changed, 12 insertions(+), 1 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 02dc8d4..b3de976 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -1,5 +1,7 @@
+#ifndef __BAREBOX__
 #include <assert.h>
 #include <limits.h>
+#endif
 #include <stddef.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -8,6 +10,13 @@
 #include "tlsf.h"
 #include "tlsfbits.h"
 
+#ifdef __BAREBOX__
+#ifndef _DEBUG
+#define _DEBUG 0
+#endif
+#define tlsf_assert(expr)           ((void) (0))
+#endif
+
 /*
 ** Constants.
 */
@@ -82,6 +91,7 @@ enum tlsf_private
 #define tlsf_static_assert(exp) \
 	typedef char _tlsf_glue(static_assert, __LINE__) [(exp) ? 1 : -1]
 
+#ifndef __BAREBOX__
 /* This code has been tested on 32- and 64-bit (LP/LLP) architectures. */
 tlsf_static_assert(sizeof(int) * CHAR_BIT == 32);
 tlsf_static_assert(sizeof(size_t) * CHAR_BIT >= 32);
@@ -92,6 +102,7 @@ tlsf_static_assert(sizeof(unsigned int) * CHAR_BIT >= SL_INDEX_COUNT);
 
 /* Ensure we've properly tuned our sizes. */
 tlsf_static_assert(ALIGN_SIZE == SMALL_BLOCK_SIZE / SL_INDEX_COUNT);
+#endif
 
 /*
 ** Data structures and associated constants.
diff --git a/include/tlsf.h b/include/tlsf.h
index de7f90b..d575e16 100644
--- a/include/tlsf.h
+++ b/include/tlsf.h
@@ -43,7 +43,7 @@ int tlsf_check_heap(tlsf_pool pool);
 size_t tlsf_block_size(void* ptr);
 
 /* Overhead of per-pool internal structures. */
-size_t tlsf_overhead();
+size_t tlsf_overhead(void);
 
 #if defined(__cplusplus)
 };
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
