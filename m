Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqzeD-0000DN-Cy
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 08:30:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2015 09:29:59 +0100
Message-Id: <1445934602-25903-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] memtest: move ctrlc check / progress showing into
 separate function
To: Barebox List <barebox@lists.infradead.org>

To make the actual test a bit better visible in the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memtest.c | 39 +++++++++++++++++++++++----------------
 1 file changed, 23 insertions(+), 16 deletions(-)

diff --git a/common/memtest.c b/common/memtest.c
index 9bd9025..dc7d032 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -331,6 +331,20 @@ int mem_test_bus_integrity(resource_size_t _start,
 	return 0;
 }
 
+static int update_progress(resource_size_t offset)
+{
+	/* Only check every 4k to reduce overhead */
+	if (offset & (SZ_4K - 1))
+		return 0;
+
+	if (ctrlc())
+		return -EINTR;
+
+	show_progress(offset);
+
+	return 0;
+}
+
 int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 {
 	volatile resource_size_t *start, num_words, offset, temp, anti_pattern;
@@ -362,22 +376,17 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 
 	/* Fill memory with a known pattern */
 	for (offset = 0; offset < num_words; offset++) {
-		/* Every 4K we update the progressbar */
-		if (!(offset & (SZ_4K - 1))) {
-			if (ctrlc())
-				return -EINTR;
-			show_progress(offset);
-		}
+		ret = update_progress(offset);
+		if (ret)
+			return ret;
 		start[offset] = offset + 1;
 	}
 
 	/* Check each location and invert it for the second pass */
 	for (offset = 0; offset < num_words; offset++) {
-		if (!(offset & (SZ_4K - 1))) {
-			if (ctrlc())
-				return -EINTR;
-			show_progress(num_words + offset);
-		}
+		ret = update_progress(num_words + offset);
+		if (ret)
+			return ret;
 
 		temp = start[offset];
 		if (temp != (offset + 1)) {
@@ -394,11 +403,9 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 
 	/* Check each location for the inverted pattern and zero it */
 	for (offset = 0; offset < num_words; offset++) {
-		if (!(offset & (SZ_4K - 1))) {
-			if (ctrlc())
-				return -EINTR;
-			show_progress(2 * num_words + offset);
-		}
+		ret = update_progress(2 * num_words + offset);
+		if (ret)
+			return ret;
 
 		anti_pattern = ~(offset + 1);
 		temp = start[offset];
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
