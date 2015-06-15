Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0b-00176a03.pphosted.com ([67.231.157.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4QoM-0000pf-El
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 09:36:11 +0000
Received: from pps.filterd (m0048205.ppops.net [127.0.0.1])
 by m0048205.ppops.net-00176a03. (8.15.0.59/8.15.0.59) with SMTP id
 t5F9Wi7C008039
 for <barebox@lists.infradead.org>; Mon, 15 Jun 2015 05:35:45 -0400
Received: from alpmlip11.e2k.ad.ge.com ([12.43.191.1])
 by m0048205.ppops.net-00176a03. with ESMTP id 1v0fs51kmv-6
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Mon, 15 Jun 2015 05:35:45 -0400
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon, 15 Jun 2015 10:35:41 +0100
Message-Id: <1434360941-22892-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/2] memtest: skip memory region smaller than one page
To: barebox@lists.infradead.org

If the size between memory regions is smaller than one page, the
size is rounded down to 0. This results in a region request failure.
This commit skips the memory region whose size is smaller than a page.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 commands/memtest.c |   12 ++++++++----
 1 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index 9dec0ef..7561230 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -62,9 +62,11 @@ static int request_memtest_regions(struct list_head *list)
 			start = PAGE_ALIGN(bank->res->start);
 			size = PAGE_ALIGN_DOWN(bank->res->end - start + 1);
 
-			ret = alloc_memtest_region(list, start, size);
-			if (ret < 0)
-				return ret;
+			if (size) {
+				ret = alloc_memtest_region(list, start, size);
+				if (ret < 0)
+					return ret;
+			}
 
 			continue;
 		}
@@ -95,6 +97,8 @@ static int request_memtest_regions(struct list_head *list)
 				continue;
 
 			size = PAGE_ALIGN_DOWN(end - start + 1);
+			if (size == 0)
+				continue;
 			ret = alloc_memtest_region(list, start, size);
 			if (ret < 0)
 				return ret;
@@ -108,7 +112,7 @@ static int request_memtest_regions(struct list_head *list)
 		start = PAGE_ALIGN(r->end);
 		end = bank->res->end;
 		size = PAGE_ALIGN_DOWN(end - start + 1);
-		if (start < end && start > r->end) {
+		if (size && start < end && start > r->end) {
 			ret = alloc_memtest_region(list, start, size);
 			if (ret < 0)
 				return ret;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
