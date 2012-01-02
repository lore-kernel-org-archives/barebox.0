Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhiHO-0000VM-0M
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 13:50:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jan 2012 14:50:04 +0100
Message-Id: <1325512207-16501-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1325512207-16501-1-git-send-email-s.hauer@pengutronix.de>
References: <1325512207-16501-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] tlsf: enable assertions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/tlsf.c |   17 +++++++----------
 1 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index b3de976..c810e8d 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -1,20 +1,17 @@
-#ifndef __BAREBOX__
-#include <assert.h>
-#include <limits.h>
-#endif
 #include <stddef.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
+#include <linux/stringify.h>
 
 #include "tlsf.h"
 #include "tlsfbits.h"
 
-#ifdef __BAREBOX__
-#ifndef _DEBUG
-#define _DEBUG 0
-#endif
-#define tlsf_assert(expr)           ((void) (0))
+#ifdef DEBUG
+#define tlsf_assert(expr)	\
+	((expr) ? (void)(0) : printf("%s\n", __stringify(expr)))
+#else
+#define tlsf_assert(expr)	(void)(0)
 #endif
 
 /*
@@ -759,7 +756,7 @@ tlsf_pool tlsf_create(void* mem, size_t bytes)
 	const size_t pool_bytes = align_down(bytes - pool_overhead, ALIGN_SIZE);
 	pool_t* pool = tlsf_cast(pool_t*, mem);
 
-#if _DEBUG
+#ifdef DEBUG
 	/* Verify ffs/fls work properly. */
 	int rv = 0;
 	rv += (tlsf_ffs(0) == -1) ? 0 : 0x1;
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
