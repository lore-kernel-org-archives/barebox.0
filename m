Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhiHO-0004Rf-My
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 13:50:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jan 2012 14:50:06 +0100
Message-Id: <1325512207-16501-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] tlsf: implement malloc_stats
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/tlsf_malloc.c |   25 +++++++++++++++++++++++--
 1 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index a6f82ba..2fe443b 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -71,8 +71,29 @@ void *memalign(size_t alignment, size_t bytes)
 }
 EXPORT_SYMBOL(memalign);
 
-#ifdef CONFIG_CMD_MEMINFO
+struct malloc_stats {
+	size_t free;
+	size_t used;
+};
+
+static void malloc_walker(void* ptr, size_t size, int used, void *user)
+{
+	struct malloc_stats *s = user;
+
+	if (used)
+		s->used += size;
+	else
+		s->free += size;
+}
+
 void malloc_stats(void)
 {
+	struct malloc_stats s;
+
+	s.used = 0;
+	s.free = 0;
+
+	tlsf_walk_heap(tlsf_mem_pool, malloc_walker, &s);
+
+	printf("used: %10d\nfree: %10d\n", s.used, s.free);
 }
-#endif /* CONFIG_CMD_MEMINFO */
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
