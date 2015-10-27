Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqzeD-0000De-D3
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 08:30:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2015 09:30:01 +0100
Message-Id: <1445934602-25903-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] memtest: By default only test biggest region
To: Barebox List <barebox@lists.infradead.org>

Often enough the biggest free region spans most free RAM, so
it doesn't add much value to test the remaining free regions. This
patch changes the default behaviour to only test the biggest free
region and adds the -t option to test all regions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/memtest.c | 82 ++++++++++++++++++++++++++++++++++++------------------
 common/memtest.c   | 16 +++++++++++
 include/memtest.h  |  1 +
 3 files changed, 72 insertions(+), 27 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index ccccc9c..7853cc5 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -28,42 +28,70 @@
 #include <memtest.h>
 #include <mmu.h>
 
-static int __do_memtest(struct list_head *memtest_regions,
+static int do_test_one_area(struct mem_test_resource *r, int bus_only,
+		unsigned cache_flag)
+{
+	int ret;
+
+	printf("Testing memory space: "
+			"0x%08x -> 0x%08x:\n",
+			r->r->start,  r->r->end);
+
+	remap_range((void *)r->r->start, r->r->end -
+			r->r->start + 1, cache_flag);
+
+	ret = mem_test_bus_integrity(r->r->start, r->r->end);
+	if (ret < 0)
+		return ret;
+
+	if (bus_only)
+		return 0;
+
+	ret = mem_test_moving_inversions_pattern(r->r->start, r->r->end, 0xdeadbeef);
+	if (ret < 0)
+		return ret;
+	printf("done.\n\n");
+
+	return 0;
+}
+
+static int do_memtest_thorough(struct list_head *memtest_regions,
 		int bus_only, unsigned cache_flag)
 {
 	struct mem_test_resource *r;
 	int ret;
 
 	list_for_each_entry(r, memtest_regions, list) {
-		printf("Testing memory space: "
-				"0x%08x -> 0x%08x:\n",
-				r->r->start,  r->r->end);
-		remap_range((void *)r->r->start, r->r->end -
-				r->r->start + 1, cache_flag);
-
-		ret = mem_test_bus_integrity(r->r->start, r->r->end);
-		if (ret < 0)
+		ret = do_test_one_area(r, bus_only, cache_flag);
+		if (ret)
 			return ret;
-
-		if (bus_only)
-			continue;
-
-		ret = mem_test_moving_inversions(r->r->start, r->r->end);
-		if (ret < 0)
-			return ret;
-		printf("done.\n\n");
 	}
 
 	return 0;
 }
 
+static int do_memtest_biggest(struct list_head *memtest_regions,
+		int bus_only, unsigned cache_flag)
+{
+	struct mem_test_resource *r;
+
+	r = mem_test_biggest_region(memtest_regions);
+	if (!r)
+		return -EINVAL;
+
+	return do_test_one_area(r, bus_only, cache_flag);
+}
+
 static int do_memtest(int argc, char *argv[])
 {
 	int bus_only = 0, ret, opt;
 	uint32_t i, max_i = 1;
 	struct list_head memtest_used_regions;
+	int (*memtest)(struct list_head *, int, unsigned);
+
+	memtest = do_memtest_biggest;
 
-	while ((opt = getopt(argc, argv, "i:b")) > 0) {
+	while ((opt = getopt(argc, argv, "i:bt")) > 0) {
 		switch (opt) {
 		case 'i':
 			max_i = simple_strtoul(optarg, NULL, 0);
@@ -71,6 +99,9 @@ static int do_memtest(int argc, char *argv[])
 		case 'b':
 			bus_only = 1;
 			break;
+		case 't':
+			memtest = do_memtest_thorough;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -90,25 +121,21 @@ static int do_memtest(int argc, char *argv[])
 			printf("Start iteration %u of %u.\n", i, max_i);
 
 		if (arch_can_remap()) {
-			/*
-			 * First try a memtest with caching enabled.
-			 */
+			/* First do a memtest with caching enabled. */
 			printf("Do memtest with caching enabled.\n");
-			ret = __do_memtest(&memtest_used_regions,
+			ret = memtest(&memtest_used_regions,
 					bus_only, MAP_CACHED);
 			if (ret < 0)
 				goto out;
 
-			/*
-			 * Second try a memtest with caching disabled.
-			 */
+			/* Second do a memtest with caching disabled. */
 			printf("Do memtest with caching disabled.\n");
-			ret = __do_memtest(&memtest_used_regions,
+			ret = memtest(&memtest_used_regions,
 					bus_only, MAP_UNCACHED);
 			if (ret < 0)
 				goto out;
 		} else {
-			ret = __do_memtest(&memtest_used_regions,
+			ret = memtest(&memtest_used_regions,
 					bus_only, MAP_DEFAULT);
 			if (ret < 0)
 				goto out;
@@ -139,6 +166,7 @@ BAREBOX_CMD_HELP_START(memtest)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-i ITERATIONS", "perform number of iterations (default 1, 0 is endless)")
 BAREBOX_CMD_HELP_OPT("-b", "perform only a test on bus lines")
+BAREBOX_CMD_HELP_OPT("-t", "thorough. test all free areas. If unset, only test biggest free area")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(memtest)
diff --git a/common/memtest.c b/common/memtest.c
index 026fd0d..401b902 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -139,6 +139,22 @@ void mem_test_release_regions(struct list_head *list)
 	}
 }
 
+struct mem_test_resource *mem_test_biggest_region(struct list_head *list)
+{
+	struct mem_test_resource *r, *best = NULL;
+	resource_size_t size = 0;
+
+	list_for_each_entry(r, list, list) {
+		resource_size_t now = resource_size(r->r);
+		if (now > size) {
+			size = now;
+			best = r;
+		}
+	}
+
+	return best;
+}
+
 static void mem_test_report_failure(const char *failure_description,
 				    resource_size_t expected_value,
 				    resource_size_t actual_value,
diff --git a/include/memtest.h b/include/memtest.h
index 3979d65..0100a6c 100644
--- a/include/memtest.h
+++ b/include/memtest.h
@@ -10,6 +10,7 @@ struct mem_test_resource {
 
 int mem_test_request_regions(struct list_head *list);
 void mem_test_release_regions(struct list_head *list);
+struct mem_test_resource *mem_test_biggest_region(struct list_head *list);
 
 int mem_test_bus_integrity(resource_size_t _start, resource_size_t _end);
 int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end);
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
