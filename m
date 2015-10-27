Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqzeS-00010I-0v
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 08:30:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2015 09:29:57 +0100
Message-Id: <1445934602-25903-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] memtest: Make output more compact
To: Barebox List <barebox@lists.infradead.org>

Especially when called multiple times the output of the memory test
is quite verbose. Make it more compact by only describing once what
is being done and only use one progress bare instead of three.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memtest.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/common/memtest.c b/common/memtest.c
index 4a84dc3..0559359 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -344,8 +344,8 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 	start = (resource_size_t *)_start;
 	num_words = (_end - _start + 1)/sizeof(resource_size_t);
 
-	printf("Starting integrity check of physicaly ram.\n"
-	       "Filling ram with patterns...\n");
+	printf("Starting moving inversions test of RAM:\n"
+	       "Fill with address, compare, fill with inverted address, compare again\n");
 
 	/*
 	 * Description: Test the integrity of a physical
@@ -358,11 +358,11 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 	 *		selected by the caller.
 	 */
 
+	init_progression_bar(3 * num_words);
+
 	/*
 	 * Fill memory with a known pattern.
 	 */
-	init_progression_bar(num_words);
-
 	for (offset = 0; offset < num_words; offset++) {
 		/*
 		 * Every 4K we update the progressbar.
@@ -375,18 +375,15 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 		}
 		start[offset] = offset + 1;
 	}
-	show_progress(offset);
 
-	printf("\nCompare written patterns...\n");
 	/*
 	 * Check each location and invert it for the second pass.
 	 */
-	init_progression_bar(num_words - 1);
 	for (offset = 0; offset < num_words; offset++) {
 		if (!(offset & (SZ_4K - 1))) {
 			if (ctrlc())
 				return -EINTR;
-			show_progress(offset);
+			show_progress(num_words + offset);
 		}
 
 		temp = start[offset];
@@ -401,18 +398,15 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 		anti_pattern = ~(offset + 1);
 		start[offset] = anti_pattern;
 	}
-	show_progress(offset);
 
-	printf("\nFilling ram with inverted pattern and compare it...\n");
 	/*
 	 * Check each location for the inverted pattern and zero it.
 	 */
-	init_progression_bar(num_words - 1);
 	for (offset = 0; offset < num_words; offset++) {
 		if (!(offset & (SZ_4K - 1))) {
 			if (ctrlc())
 				return -EINTR;
-			show_progress(offset);
+			show_progress(2 * num_words + offset);
 		}
 
 		anti_pattern = ~(offset + 1);
@@ -428,7 +422,7 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 
 		start[offset] = 0;
 	}
-	show_progress(offset);
+	show_progress(3 * num_words);
 
 	/*
 	 * end of progressbar
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
