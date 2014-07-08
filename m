Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4OzF-0000vW-92
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 06:34:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 08:34:22 +0200
Message-Id: <1404801262-27616-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404801262-27616-1-git-send-email-s.hauer@pengutronix.de>
References: <1404801262-27616-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] malloc.h: fix codingstyle
To: barebox@lists.infradead.org

- Remove trailing newline
- use void *fn instead of void* fn

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/malloc.h | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/include/malloc.h b/include/malloc.h
index 46147bc..a36f3c0 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -3,15 +3,12 @@
 
 #include <types.h>
 
-/* Public routines */
-
-void* malloc(size_t);
-void free(void*);
-void* realloc(void*, size_t);
-void* memalign(size_t, size_t);
-void* calloc(size_t, size_t);
+void *malloc(size_t);
+void free(void *);
+void *realloc(void *, size_t);
+void *memalign(size_t, size_t);
+void *calloc(size_t, size_t);
 void malloc_stats(void);
 void *sbrk(ptrdiff_t increment);
 
-#endif
-
+#endif /* __MALLOC_H */
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
