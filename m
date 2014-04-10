Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYJ8M-0007jE-Vh
 for barebox@lists.infradead.org; Thu, 10 Apr 2014 17:51:31 +0000
Received: by mail-ee0-f45.google.com with SMTP id d17so3321087eek.32
 for <barebox@lists.infradead.org>; Thu, 10 Apr 2014 10:51:09 -0700 (PDT)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu, 10 Apr 2014 14:04:05 +0200
Message-Id: <1397131446-4816-3-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1397131446-4816-1-git-send-email-alex.aring@gmail.com>
References: <1397131446-4816-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/3] memtest: cleanup requests of regions
To: barebox@lists.infradead.org

This patch removes the first and last entry check inside the loop.
There should be no functional changes there.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/memtest.c | 66 +++++++++++++++++++++++-------------------------------
 1 file changed, 28 insertions(+), 38 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index dc05e9e..5854375 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -74,34 +74,25 @@ static int request_memtest_regions(struct list_head *list)
 			continue;
 		}
 
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
 		/*
 		 * We assume that the regions are sorted in this list
 		 * So the first element has start boundary on bank->res->start
-		 * and the last element hast end boundary on bank->res->end
+		 * and the last element hast end boundary on bank->res->end.
+		 *
+		 * Between used regions. Start from second entry.
 		 */
-		list_for_each_entry(r, &bank->res->children, sibling) {
-			/*
-			 * Do on head element for bank boundary
-			 */
-			if (r->sibling.prev == &bank->res->children) {
-				/*
-				 * remember last used element
-				 */
-				start = PAGE_ALIGN(bank->res->start);
-				end = PAGE_ALIGN_DOWN(r->start);
-				r_prev = r;
-				if (start == end)
-					continue;
-				size = end - start;
-
-				ret = alloc_memtest_region(list, start, size);
-				if (ret < 0)
-					return ret;
-				continue;
-			}
-			/*
-			 * Between used regions
-			 */
+		list_for_each_entry_from(r, &bank->res->children, sibling) {
 			start = PAGE_ALIGN(r_prev->end);
 			end = PAGE_ALIGN_DOWN(r->start);
 			r_prev = r;
@@ -112,21 +103,20 @@ static int request_memtest_regions(struct list_head *list)
 			ret = alloc_memtest_region(list, start, size);
 			if (ret < 0)
 				return ret;
+		}
 
-			if (list_is_last(&r->sibling, &bank->res->children)) {
-				/*
-				 * Do on head element for bank boundary
-				 */
-				start = PAGE_ALIGN(r->end);
-				end = PAGE_ALIGN_DOWN(bank->res->end) - 1;
-				size = end - start + 1;
-				if (start >= end)
-					continue;
-
-				ret = alloc_memtest_region(list, start, size);
-				if (ret < 0)
-					return ret;
-			}
+		/*
+		 * Do on head element for bank boundary.
+		 */
+		r = list_last_entry(&bank->res->children,
+				     struct resource, sibling);
+		start = PAGE_ALIGN(r->end);
+		end = PAGE_ALIGN_DOWN(bank->res->end) - 1;
+		size = end - start + 1;
+		if (start < end) {
+			ret = alloc_memtest_region(list, start, size);
+			if (ret < 0)
+				return ret;
 		}
 	}
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
