Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dtv8e-0007X0-35
 for barebox@lists.infradead.org; Mon, 18 Sep 2017 12:27:01 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 18 Sep 2017 14:26:28 +0200
Message-Id: <20170918122628.11477-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] memtest: fix list iteration in region setup
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

When memory regions start at 0, the current mem_test_request_regions function
wrongly assumes that struct resource *r points at the correct region. It points
to the first region however (which starts at 0).

The comment states, that the code starts from the second entry.
In include/linux/list.h the macro documentation however says:

 list_for_each_entry_from - iterate over list of given type from the current point

The correct list iteration macro to use here is list_for_each_entry_continue,
where the documentation says:

 Continue to iterate over list of given type, continuing after
 the current position.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/memtest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/memtest.c b/common/memtest.c
index 8af998e883e1..0fc20467580e 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -90,7 +90,7 @@ int mem_test_request_regions(struct list_head *list)
 		 *
 		 * Between used regions. Start from second entry.
 		 */
-		list_for_each_entry_from(r, &bank->res->children, sibling) {
+		list_for_each_entry_continue(r, &bank->res->children, sibling) {
 			start = PAGE_ALIGN(r_prev->end + 1);
 			end = r->start - 1;
 			r_prev = r;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
