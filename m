Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqzeD-0000D7-D0
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 08:30:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2015 09:29:54 +0100
Message-Id: <1445934602-25903-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] memtest: move request/release regions to common/
To: Barebox List <barebox@lists.infradead.org>

Normally code providing a feature should be implemented in common/ which
is then called from the command code. Follow this rule and move some more
of the memtest code to common/.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/memtest.c | 107 +-------------------------------------------------
 common/memtest.c   | 112 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/memtest.h  |   3 ++
 3 files changed, 117 insertions(+), 105 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index 7561230..531b8e0 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -26,102 +26,8 @@
 #include <malloc.h>
 #include <common.h>
 #include <errno.h>
-
 #include <memtest.h>
 
-static int alloc_memtest_region(struct list_head *list,
-		resource_size_t start, resource_size_t size)
-{
-	struct resource *r_new;
-	struct mem_test_resource *r;
-
-	r = xzalloc(sizeof(struct mem_test_resource));
-	r_new = request_sdram_region("memtest", start, size);
-	if (!r_new)
-		return -EINVAL;
-
-	r->r = r_new;
-	list_add_tail(&r->list, list);
-
-	return 0;
-}
-
-static int request_memtest_regions(struct list_head *list)
-{
-	int ret;
-	struct memory_bank *bank;
-	struct resource *r, *r_prev = NULL;
-	resource_size_t start, end, size;
-
-	for_each_memory_bank(bank) {
-		/*
-		 * If we don't have any allocated region on bank,
-		 * we use the whole bank boundary
-		 */
-		if (list_empty(&bank->res->children)) {
-			start = PAGE_ALIGN(bank->res->start);
-			size = PAGE_ALIGN_DOWN(bank->res->end - start + 1);
-
-			if (size) {
-				ret = alloc_memtest_region(list, start, size);
-				if (ret < 0)
-					return ret;
-			}
-
-			continue;
-		}
-
-		r = list_first_entry(&bank->res->children,
-				     struct resource, sibling);
-		start = PAGE_ALIGN(bank->res->start);
-		end = PAGE_ALIGN_DOWN(r->start);
-		r_prev = r;
-		if (start != end) {
-			size = end - start;
-			ret = alloc_memtest_region(list, start, size);
-			if (ret < 0)
-				return ret;
-		}
-		/*
-		 * We assume that the regions are sorted in this list
-		 * So the first element has start boundary on bank->res->start
-		 * and the last element hast end boundary on bank->res->end.
-		 *
-		 * Between used regions. Start from second entry.
-		 */
-		list_for_each_entry_from(r, &bank->res->children, sibling) {
-			start = PAGE_ALIGN(r_prev->end + 1);
-			end = r->start - 1;
-			r_prev = r;
-			if (start >= end)
-				continue;
-
-			size = PAGE_ALIGN_DOWN(end - start + 1);
-			if (size == 0)
-				continue;
-			ret = alloc_memtest_region(list, start, size);
-			if (ret < 0)
-				return ret;
-		}
-
-		/*
-		 * Do on head element for bank boundary.
-		 */
-		r = list_last_entry(&bank->res->children,
-				     struct resource, sibling);
-		start = PAGE_ALIGN(r->end);
-		end = bank->res->end;
-		size = PAGE_ALIGN_DOWN(end - start + 1);
-		if (size && start < end && start > r->end) {
-			ret = alloc_memtest_region(list, start, size);
-			if (ret < 0)
-				return ret;
-		}
-	}
-
-	return 0;
-}
-
 static int __do_memtest(struct list_head *memtest_regions,
 		int bus_only, uint32_t cache_flag)
 {
@@ -148,7 +54,6 @@ static int do_memtest(int argc, char *argv[])
 {
 	int bus_only = 0, ret, opt;
 	uint32_t i, max_i = 1, pte_flags_cached, pte_flags_uncached;
-	struct mem_test_resource *r, *r_tmp;
 	struct list_head memtest_used_regions;
 
 	while ((opt = getopt(argc, argv, "i:b")) > 0) {
@@ -175,7 +80,7 @@ static int do_memtest(int argc, char *argv[])
 
 	INIT_LIST_HEAD(&memtest_used_regions);
 
-	ret = request_memtest_regions(&memtest_used_regions);
+	ret = mem_test_request_regions(&memtest_used_regions);
 	if (ret < 0)
 		goto out;
 
@@ -203,15 +108,7 @@ static int do_memtest(int argc, char *argv[])
 	}
 
 out:
-	list_for_each_entry_safe(r, r_tmp, &memtest_used_regions, list) {
-		/*
-		 * Ensure to leave with a cached on non used sdram regions.
-		 */
-		remap_range((void *)r->r->start, r->r->end -
-				r->r->start + 1, pte_flags_cached);
-		release_sdram_region(r->r);
-		free(r);
-	}
+	mem_test_release_regions(&memtest_used_regions);
 
 	if (ret < 0) {
 		/*
diff --git a/common/memtest.c b/common/memtest.c
index d8d1154..fc71e91 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -27,6 +27,118 @@
 #include <linux/sizes.h>
 #include <errno.h>
 #include <memtest.h>
+#include <malloc.h>
+#include <asm/mmu.h>
+
+static int alloc_memtest_region(struct list_head *list,
+		resource_size_t start, resource_size_t size)
+{
+	struct resource *r_new;
+	struct mem_test_resource *r;
+
+	r = xzalloc(sizeof(struct mem_test_resource));
+	r_new = request_sdram_region("memtest", start, size);
+	if (!r_new)
+		return -EINVAL;
+
+	r->r = r_new;
+	list_add_tail(&r->list, list);
+
+	return 0;
+}
+
+int mem_test_request_regions(struct list_head *list)
+{
+	int ret;
+	struct memory_bank *bank;
+	struct resource *r, *r_prev = NULL;
+	resource_size_t start, end, size;
+
+	for_each_memory_bank(bank) {
+		/*
+		 * If we don't have any allocated region on bank,
+		 * we use the whole bank boundary
+		 */
+		if (list_empty(&bank->res->children)) {
+			start = PAGE_ALIGN(bank->res->start);
+			size = PAGE_ALIGN_DOWN(bank->res->end - start + 1);
+
+			if (size) {
+				ret = alloc_memtest_region(list, start, size);
+				if (ret < 0)
+					return ret;
+			}
+
+			continue;
+		}
+
+		r = list_first_entry(&bank->res->children,
+				     struct resource, sibling);
+		start = PAGE_ALIGN(bank->res->start);
+		end = PAGE_ALIGN_DOWN(r->start);
+		r_prev = r;
+		if (start != end) {
+			size = end - start;
+			ret = alloc_memtest_region(list, start, size);
+			if (ret < 0)
+				return ret;
+		}
+		/*
+		 * We assume that the regions are sorted in this list
+		 * So the first element has start boundary on bank->res->start
+		 * and the last element hast end boundary on bank->res->end.
+		 *
+		 * Between used regions. Start from second entry.
+		 */
+		list_for_each_entry_from(r, &bank->res->children, sibling) {
+			start = PAGE_ALIGN(r_prev->end + 1);
+			end = r->start - 1;
+			r_prev = r;
+			if (start >= end)
+				continue;
+
+			size = PAGE_ALIGN_DOWN(end - start + 1);
+			if (size == 0)
+				continue;
+			ret = alloc_memtest_region(list, start, size);
+			if (ret < 0)
+				return ret;
+		}
+
+		/*
+		 * Do on head element for bank boundary.
+		 */
+		r = list_last_entry(&bank->res->children,
+				     struct resource, sibling);
+		start = PAGE_ALIGN(r->end);
+		end = bank->res->end;
+		size = PAGE_ALIGN_DOWN(end - start + 1);
+		if (size && start < end && start > r->end) {
+			ret = alloc_memtest_region(list, start, size);
+			if (ret < 0)
+				return ret;
+		}
+	}
+
+	return 0;
+}
+
+void mem_test_release_regions(struct list_head *list)
+{
+	struct mem_test_resource *r, *r_tmp;
+	uint32_t pte_flags_cached = mmu_get_pte_cached_flags();
+
+	list_for_each_entry_safe(r, r_tmp, list, list) {
+		/*
+		 * Ensure to leave with a cached on non used sdram regions.
+		 */
+		remap_range((void *)r->r->start, r->r->end -
+				r->r->start + 1, pte_flags_cached);
+
+		release_sdram_region(r->r);
+		free(r);
+	}
+}
 
 static void mem_test_report_failure(const char *failure_description,
 				    resource_size_t expected_value,
diff --git a/include/memtest.h b/include/memtest.h
index a337be8..1c67a73 100644
--- a/include/memtest.h
+++ b/include/memtest.h
@@ -8,6 +8,9 @@ struct mem_test_resource {
 	struct list_head list;
 };
 
+int mem_test_request_regions(struct list_head *list);
+void mem_test_release_regions(struct list_head *list);
+
 int mem_test(resource_size_t _start,
 		resource_size_t _end, int bus_only);
 
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
