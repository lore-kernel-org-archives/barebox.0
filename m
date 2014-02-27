Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og107.obsmtp.com ([64.18.0.184])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ1Jf-0006Af-8s
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 13:47:59 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 27 Feb 2014 13:46:58 +0000
Message-Id: <1393508819-3693-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1393508819-3693-1-git-send-email-renaud.barbier@ge.com>
References: <1393508819-3693-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 3/4] memtest: exclude page starting at address 0.
To: barebox@lists.infradead.org

memtest fails when a reserved sdram region is at the bank start at
address 0. This patch supports the exclusion of memory region at
the bank start.

Tested on P2020RDB and DA923RC, qemuarm versatilepb.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 commands/memtest.c |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index c82badc..a71576e 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -88,11 +88,11 @@ static int request_memtest_regions(struct list_head *list)
 				 * remember last used element
 				 */
 				start = PAGE_ALIGN(bank->res->start);
-				end = PAGE_ALIGN_DOWN(r->start) - 1;
-				size = end - start + 1;
+				end = PAGE_ALIGN_DOWN(r->start);
 				r_prev = r;
-				if (start >= end)
+				if (start == end)
 					continue;
+				size = end - start;
 
 				ret = alloc_memtest_region(list, start, size);
 				if (ret < 0)
@@ -103,12 +103,12 @@ static int request_memtest_regions(struct list_head *list)
 			 * Between used regions
 			 */
 			start = PAGE_ALIGN(r_prev->end);
-			end = PAGE_ALIGN_DOWN(r->start) - 1;
-			size = end - start + 1;
+			end = PAGE_ALIGN_DOWN(r->start);
 			r_prev = r;
 			if (start >= end)
 				continue;
 
+			size = end - start;
 			ret = alloc_memtest_region(list, start, size);
 			if (ret < 0)
 				return ret;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
