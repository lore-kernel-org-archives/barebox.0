Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22a.google.com ([2607:f8b0:400e:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YsjIj-0000If-7j
 for barebox@lists.infradead.org; Thu, 14 May 2015 02:55:12 +0000
Received: by pabtp1 with SMTP id tp1so69412626pab.2
 for <barebox@lists.infradead.org>; Wed, 13 May 2015 19:54:46 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 May 2015 19:54:20 -0700
Message-Id: <1431572067-4038-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/10] common/memtest.c: Refactor mem_test() into three
 surbroutines
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Original mem_test() was rather long an contained code to perform two
distinct operations. This patch moves that code into two separate
subroutines and converts mem_test into a high level interface that
calls the subroutines.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/memtest.c | 105 +++++++++++++++++++++++++++++++++++--------------------
 1 file changed, 68 insertions(+), 37 deletions(-)

diff --git a/common/memtest.c b/common/memtest.c
index 9eda788..57e2ad9 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -28,35 +28,22 @@
 #include <errno.h>
 #include <memtest.h>

-static const resource_size_t bitpattern[] = {
-	0x00000001,	/* single bit */
-	0x00000003,	/* two adjacent bits */
-	0x00000007,	/* three adjacent bits */
-	0x0000000F,	/* four adjacent bits */
-	0x00000005,	/* two non-adjacent bits */
-	0x00000015,	/* three non-adjacent bits */
-	0x00000055,	/* four non-adjacent bits */
-	0xAAAAAAAA,	/* alternating 1/0 */
-};
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
+int mem_test_bus_integrity(resource_size_t _start,
+			   resource_size_t _end)
 {
-	volatile resource_size_t *start, *dummy, val, readback, offset,
-		offset2, pattern, temp, anti_pattern, num_words;
+	static const resource_size_t bitpattern[] = {
+		0x00000001,	/* single bit */
+		0x00000003,	/* two adjacent bits */
+		0x00000007,	/* three adjacent bits */
+		0x0000000F,	/* four adjacent bits */
+		0x00000005,	/* two non-adjacent bits */
+		0x00000015,	/* three non-adjacent bits */
+		0x00000055,	/* four non-adjacent bits */
+		0xAAAAAAAA,	/* alternating 1/0 */
+	};
+
+	volatile resource_size_t *start, *dummy, num_words, val, readback, offset,
+		offset2, pattern, temp, anti_pattern;
 	int i;

 	_start = ALIGN(_start, sizeof(resource_size_t));
@@ -66,7 +53,7 @@ int mem_test(resource_size_t _start,
 		return -EINVAL;

 	start = (resource_size_t *)_start;
-	/*
+		/*
 	 * Point the dummy to start[1]
 	 */
 	dummy = start + 1;
@@ -227,15 +214,25 @@ int mem_test(resource_size_t _start,
 		start[offset2] = pattern;
 	}

-	/*
-	 * We tested only the bus if != 0
-	 * leaving here
-	 */
-	if (bus_only)
-		return 0;
+	return 0;
+}
+
+int mem_test_dram(resource_size_t _start,
+		  resource_size_t _end)
+{
+	volatile resource_size_t *start, num_words, offset, temp, anti_pattern;
+
+	_start = ALIGN(_start, sizeof(resource_size_t));
+	_end = ALIGN_DOWN(_end, sizeof(resource_size_t)) - 1;
+
+	if (_end <= _start)
+		return -EINVAL;
+
+	start = (resource_size_t *)_start;
+	num_words = (_end - _start + 1)/sizeof(resource_size_t);

 	printf("Starting integrity check of physicaly ram.\n"
-			"Filling ram with patterns...\n");
+	       "Filling ram with patterns...\n");

 	/*
 	 * Description: Test the integrity of a physical
@@ -252,16 +249,17 @@ int mem_test(resource_size_t _start,
 	 * Fill memory with a known pattern.
 	 */
 	init_progression_bar(num_words);
+
 	for (offset = 0; offset < num_words; offset++) {
 		/*
 		 * Every 4K we update the progressbar.
 		 */
+
 		if (!(offset & (SZ_4K - 1))) {
 			if (ctrlc())
 				return -EINTR;
 			show_progress(offset);
 		}
-
 		start[offset] = offset + 1;
 	}
 	show_progress(offset);
@@ -326,3 +324,36 @@ int mem_test(resource_size_t _start,

 	return 0;
 }
+
+/*
+ * Perform a memory test. The complete test
+ * loops until interrupted by ctrl-c.
+ *
+ * Prameters:
+ * start: start address for memory test.
+ * end: end address of memory test.
+ * bus_only: skip integrity check and do only a address/data bus
+ *	     testing.
+ *
+ * Return value can be -EINVAL for invalid parameter or -EINTR
+ * if memory test was interrupted.
+ */
+int mem_test(resource_size_t _start,
+	       resource_size_t _end, int bus_only)
+{
+	int ret;
+
+	ret = mem_test_bus_integrity(_start, _end);
+
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * We tested only the bus if != 0
+	 * leaving here
+	 */
+	if (!bus_only)
+		ret = mem_test_dram(_start, _end);
+
+	return ret;
+}
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
