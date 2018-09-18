Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28BN-0001em-Mg
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:04:19 +0000
Received: by mail-pl1-x642.google.com with SMTP id u11-v6so376505plq.5
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:04:06 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:03:42 -0700
Message-Id: <20180918050343.19637-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] memtest: Adjust code for 64-bit architectures
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Make use of %pa specifier to avoid warnings when building against
64-bit CPU (specifically AArch64) as well as adjust a number of
patterns to be 64-bits wide.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/memtest.c |  5 ++---
 common/memtest.c   | 35 ++++++++++++++++++++---------------
 2 files changed, 22 insertions(+), 18 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index 99d4864e7..403ab91f6 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -33,9 +33,8 @@ static int do_test_one_area(struct mem_test_resource *r, int bus_only,
 {
 	int ret;
 
-	printf("Testing memory space: "
-			"0x%08x -> 0x%08x:\n",
-			r->r->start,  r->r->end);
+	printf("Testing memory space: %pa -> %pa:\n",
+	       &r->r->start,  &r->r->end);
 
 	remap_range((void *)r->r->start, r->r->end -
 			r->r->start + 1, cache_flag);
diff --git a/common/memtest.c b/common/memtest.c
index 0fc204675..5c96d46e9 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -160,24 +160,29 @@ static void mem_test_report_failure(const char *failure_description,
 				    resource_size_t actual_value,
 				    volatile resource_size_t *address)
 {
+	/*
+	 * expected_value and actual_value below are not really
+	 * pointers, but we want them to be printed exactly the same
+	 * as pointers would, so we use %pa regardless
+	 */
 	printf("FAILURE (%s): "
-	       "expected 0x%08x, actual 0x%08x at address 0x%08x.\n",
-	       failure_description, expected_value, actual_value,
-	       (resource_size_t)address);
+	       "expected %pa, actual %pa at address %pa.\n",
+	       failure_description, &expected_value, &actual_value,
+	       &address);
 }
 
 int mem_test_bus_integrity(resource_size_t _start,
 			   resource_size_t _end)
 {
-	static const resource_size_t bitpattern[] = {
-		0x00000001,	/* single bit */
-		0x00000003,	/* two adjacent bits */
-		0x00000007,	/* three adjacent bits */
-		0x0000000F,	/* four adjacent bits */
-		0x00000005,	/* two non-adjacent bits */
-		0x00000015,	/* three non-adjacent bits */
-		0x00000055,	/* four non-adjacent bits */
-		0xAAAAAAAA,	/* alternating 1/0 */
+	static const uint64_t bitpattern[] = {
+		0x0000000000000001ULL,	/* single bit */
+		0x0000000000000003ULL,	/* two adjacent bits */
+		0x0000000000000007ULL,	/* three adjacent bits */
+		0x000000000000000FULL,	/* four adjacent bits */
+		0x0000000000000005ULL,	/* two non-adjacent bits */
+		0x0000000000000015ULL,	/* three non-adjacent bits */
+		0x0000000000000055ULL,	/* four non-adjacent bits */
+		0xAAAAAAAAAAAAAAAAULL,	/* alternating 1/0 */
 	};
 
 	volatile resource_size_t *start, *dummy, num_words, val, readback, offset,
@@ -217,7 +222,7 @@ int mem_test_bus_integrity(resource_size_t _start,
 	 * pattern and ~pattern).
 	 */
 	for (i = 0; i < ARRAY_SIZE(bitpattern); i++) {
-		val = bitpattern[i];
+		val = (resource_size_t)bitpattern[i];
 
 		for (; val != 0; val <<= 1) {
 			*start = val;
@@ -282,8 +287,8 @@ int mem_test_bus_integrity(resource_size_t _start,
 	 *              01ffffff is perfect.
 	 */
 
-	pattern = 0xAAAAAAAA;
-	anti_pattern = 0x55555555;
+	pattern = (resource_size_t)0xAAAAAAAAAAAAAAAAULL;
+	anti_pattern = (resource_size_t)0x5555555555555555ULL;
 
 	/*
 	 * Write the default pattern at each of the
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
