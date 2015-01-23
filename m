Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YEcct-00040L-5I
 for barebox@lists.infradead.org; Fri, 23 Jan 2015 11:42:12 +0000
Received: from s326.sam-solutions.net ([217.21.35.11])
 by s250.sam-solutions.net with esmtps (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <D.Lavnikevich@sam-solutions.com>)
 id 1YEccR-0000NO-Uc
 for barebox@lists.infradead.org; Fri, 23 Jan 2015 14:41:43 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Date: Fri, 23 Jan 2015 14:41:41 +0300
Message-ID: <1422013301-16827-1-git-send-email-d.lavnikevich@sam-solutions.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] memtest: fix 4GB overflow fail
To: barebox@lists.infradead.org
Cc: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>

Add condition for checking size_t overflow. This fixes memtest fail
> Memtest failed. Error: -22
which appears when 4GB RAM is present.

Was tested on phyFLEX-i.MX6 modules with 4GB and 1GB RAM.

Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
---
 commands/memtest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index d384436afb73..5e7896cc711c 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -109,7 +109,7 @@ static int request_memtest_regions(struct list_head *list)
 		start = PAGE_ALIGN(r->end);
 		end = PAGE_ALIGN_DOWN(bank->res->end) - 1;
 		size = end - start + 1;
-		if (start < end) {
+		if (start < end && start > r->end) {
 			ret = alloc_memtest_region(list, start, size);
 			if (ret < 0)
 				return ret;
-- 
2.2.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
