Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3JO6-0004cs-Dx
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 11:14:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Sep 2018 13:14:05 +0200
Message-Id: <20180921111405.26959-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] kfifo: roundup fifo size to next power of two
To: Barebox List <barebox@lists.infradead.org>

Comments in include/kfifo.h state that the FIFO size will be rounded up
to the next power of two, but so far we haven't actually done this,
probably because we didn't have roundup_pow_of_two() back then when
kfifo support was added.

Fix that now and do what the comments state.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/kfifo.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/lib/kfifo.c b/lib/kfifo.c
index 307dae1441..fa22feb7e0 100644
--- a/lib/kfifo.c
+++ b/lib/kfifo.c
@@ -18,6 +18,7 @@
 #include <malloc.h>
 #include <kfifo.h>
 #include <errno.h>
+#include <linux/log2.h>
 
 /**
  * kfifo_init - allocates a new FIFO using a preallocated buffer
@@ -49,6 +50,15 @@ struct kfifo *kfifo_alloc(unsigned int size)
 	unsigned char *buffer;
 	struct kfifo *fifo;
 
+	/*
+	 * round up to the next power of 2, since our 'let the indices
+	 * wrap' tachnique works only in this case.
+	 */
+	if (size & (size - 1)) {
+		BUG_ON(size > 0x80000000);
+		size = roundup_pow_of_two(size);
+	}
+
 	buffer = malloc(size);
 	if (!buffer)
 		return NULL;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
