Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqzeI-0000z3-0u
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 08:30:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2015 09:30:00 +0100
Message-Id: <1445934602-25903-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] memtest: move error handling to end of function
To: Barebox List <barebox@lists.infradead.org>

Move error handling out of the test code to make the actual test
better visible.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memtest.c | 38 ++++++++++++++++++--------------------
 1 file changed, 18 insertions(+), 20 deletions(-)

diff --git a/common/memtest.c b/common/memtest.c
index dc7d032..026fd0d 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -347,7 +347,8 @@ static int update_progress(resource_size_t offset)
 
 int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 {
-	volatile resource_size_t *start, num_words, offset, temp, anti_pattern;
+	volatile resource_size_t *start, num_words, offset, pattern, expected;
+	int ret;
 
 	_start = ALIGN(_start, sizeof(resource_size_t));
 	_end = ALIGN_DOWN(_end, sizeof(resource_size_t)) - 1;
@@ -388,17 +389,13 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 		if (ret)
 			return ret;
 
-		temp = start[offset];
-		if (temp != (offset + 1)) {
-			printf("\n");
-			mem_test_report_failure("read/write",
-						(offset + 1),
-						temp, &start[offset]);
-			return -EIO;
-		}
+		pattern = start[offset];
+		expected = offset + 1;
+
+		if (pattern != expected)
+			goto mem_err;
 
-		anti_pattern = ~(offset + 1);
-		start[offset] = anti_pattern;
+		start[offset] = ~start[offset];
 	}
 
 	/* Check each location for the inverted pattern and zero it */
@@ -407,16 +404,11 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 		if (ret)
 			return ret;
 
-		anti_pattern = ~(offset + 1);
-		temp = start[offset];
+		pattern = start[offset];
+		expected = ~(offset + 1);
 
-		if (temp != anti_pattern) {
-			printf("\n");
-			mem_test_report_failure("read/write",
-						anti_pattern,
-						temp, &start[offset]);
-			return -EIO;
-		}
+		if (pattern != expected)
+			goto mem_err;
 
 		start[offset] = 0;
 	}
@@ -426,4 +418,10 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 	printf("\n");
 
 	return 0;
+
+mem_err:
+	printf("\n");
+	mem_test_report_failure("read/write", expected, pattern, &start[offset]);
+
+	return -EIO;
 }
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
