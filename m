Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqzeD-0000D8-D2
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 08:30:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2015 09:29:56 +0100
Message-Id: <1445934602-25903-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1445934602-25903-1-git-send-email-s.hauer@pengutronix.de>
References: <1445934602-25903-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] memtest: split tests in separate functions
To: Barebox List <barebox@lists.infradead.org>

The memtest does a bus integrity check and a moving inversions test.
Split the tests into two separate functions so that the can be called
separately.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/memtest.c |  9 ++++++++-
 common/memtest.c   | 36 +-----------------------------------
 include/memtest.h  |  4 ++--
 3 files changed, 11 insertions(+), 38 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index db9e3db..ccccc9c 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -41,7 +41,14 @@ static int __do_memtest(struct list_head *memtest_regions,
 		remap_range((void *)r->r->start, r->r->end -
 				r->r->start + 1, cache_flag);
 
-		ret = mem_test(r->r->start, r->r->end, bus_only);
+		ret = mem_test_bus_integrity(r->r->start, r->r->end);
+		if (ret < 0)
+			return ret;
+
+		if (bus_only)
+			continue;
+
+		ret = mem_test_moving_inversions(r->r->start, r->r->end);
 		if (ret < 0)
 			return ret;
 		printf("done.\n\n");
diff --git a/common/memtest.c b/common/memtest.c
index 467eea5..4a84dc3 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -331,8 +331,7 @@ int mem_test_bus_integrity(resource_size_t _start,
 	return 0;
 }
 
-int mem_test_dram(resource_size_t _start,
-		  resource_size_t _end)
+int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 {
 	volatile resource_size_t *start, num_words, offset, temp, anti_pattern;
 
@@ -438,36 +437,3 @@ int mem_test_dram(resource_size_t _start,
 
 	return 0;
 }
-
-/*
- * Perform a memory test. The complete test
- * loops until interrupted by ctrl-c.
- *
- * Prameters:
- * start: start address for memory test.
- * end: end address of memory test.
- * bus_only: skip integrity check and do only a address/data bus
- *	     testing.
- *
- * Return value can be -EINVAL for invalid parameter or -EINTR
- * if memory test was interrupted.
- */
-int mem_test(resource_size_t _start,
-	       resource_size_t _end, int bus_only)
-{
-	int ret;
-
-	ret = mem_test_bus_integrity(_start, _end);
-
-	if (ret < 0)
-		return ret;
-
-	/*
-	 * We tested only the bus if != 0
-	 * leaving here
-	 */
-	if (!bus_only)
-		ret = mem_test_dram(_start, _end);
-
-	return ret;
-}
diff --git a/include/memtest.h b/include/memtest.h
index 1c67a73..3979d65 100644
--- a/include/memtest.h
+++ b/include/memtest.h
@@ -11,7 +11,7 @@ struct mem_test_resource {
 int mem_test_request_regions(struct list_head *list);
 void mem_test_release_regions(struct list_head *list);
 
-int mem_test(resource_size_t _start,
-		resource_size_t _end, int bus_only);
+int mem_test_bus_integrity(resource_size_t _start, resource_size_t _end);
+int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end);
 
 #endif /* __MEMTEST_H */
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
