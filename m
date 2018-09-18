Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28BP-0001eo-2v
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:04:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id j26-v6so386135pfi.10
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:04:08 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:03:43 -0700
Message-Id: <20180918050343.19637-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180918050343.19637-1-andrew.smirnov@gmail.com>
References: <20180918050343.19637-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] memtest: Make use of resource_size()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/memtest.c | 3 +--
 common/memtest.c   | 4 ++--
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index 403ab91f6..dc8f7db27 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -36,8 +36,7 @@ static int do_test_one_area(struct mem_test_resource *r, int bus_only,
 	printf("Testing memory space: %pa -> %pa:\n",
 	       &r->r->start,  &r->r->end);
 
-	remap_range((void *)r->r->start, r->r->end -
-			r->r->start + 1, cache_flag);
+	remap_range((void *)r->r->start, resource_size(r->r), cache_flag);
 
 	ret = mem_test_bus_integrity(r->r->start, r->r->end);
 	if (ret < 0)
diff --git a/common/memtest.c b/common/memtest.c
index 5c96d46e9..44ddedd3d 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -131,8 +131,8 @@ void mem_test_release_regions(struct list_head *list)
 		/*
 		 * Ensure to leave with a cached on non used sdram regions.
 		 */
-		remap_range((void *)r->r->start, r->r->end -
-				r->r->start + 1, MAP_DEFAULT);
+		remap_range((void *)r->r->start, resource_size(r->r),
+			    MAP_DEFAULT);
 
 		release_sdram_region(r->r);
 		free(r);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
