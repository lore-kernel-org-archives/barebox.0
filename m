Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqzeI-0000z2-24
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 08:30:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2015 09:29:58 +0100
Message-Id: <1445934602-25903-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] memtest: Make comments single line when appropriate
To: Barebox List <barebox@lists.infradead.org>

Make the comments single line when they fit into a single line
to make the code a bit shorter.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memtest.c | 21 +++++----------------
 1 file changed, 5 insertions(+), 16 deletions(-)

diff --git a/common/memtest.c b/common/memtest.c
index 0559359..9bd9025 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -360,14 +360,9 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 
 	init_progression_bar(3 * num_words);
 
-	/*
-	 * Fill memory with a known pattern.
-	 */
+	/* Fill memory with a known pattern */
 	for (offset = 0; offset < num_words; offset++) {
-		/*
-		 * Every 4K we update the progressbar.
-		 */
-
+		/* Every 4K we update the progressbar */
 		if (!(offset & (SZ_4K - 1))) {
 			if (ctrlc())
 				return -EINTR;
@@ -376,9 +371,7 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 		start[offset] = offset + 1;
 	}
 
-	/*
-	 * Check each location and invert it for the second pass.
-	 */
+	/* Check each location and invert it for the second pass */
 	for (offset = 0; offset < num_words; offset++) {
 		if (!(offset & (SZ_4K - 1))) {
 			if (ctrlc())
@@ -399,9 +392,7 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 		start[offset] = anti_pattern;
 	}
 
-	/*
-	 * Check each location for the inverted pattern and zero it.
-	 */
+	/* Check each location for the inverted pattern and zero it */
 	for (offset = 0; offset < num_words; offset++) {
 		if (!(offset & (SZ_4K - 1))) {
 			if (ctrlc())
@@ -424,9 +415,7 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 	}
 	show_progress(3 * num_words);
 
-	/*
-	 * end of progressbar
-	 */
+	/* end of progressbar */
 	printf("\n");
 
 	return 0;
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
