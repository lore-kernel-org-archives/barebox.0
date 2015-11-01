Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZskIf-0000yT-0W
 for barebox@lists.infradead.org; Sun, 01 Nov 2015 04:31:25 +0000
Received: by padec8 with SMTP id ec8so3817742pad.1
 for <barebox@lists.infradead.org>; Sat, 31 Oct 2015 21:31:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 31 Oct 2015 21:30:42 -0700
Message-Id: <1446352242-8053-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1446352242-8053-1-git-send-email-andrew.smirnov@gmail.com>
References: <1446352242-8053-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] memtest: Fix reference to non-existing function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

It looks like commit c674e2d5847069ff34fb05e012ff1464cc0a6b37 replaced
mem_test_moving_inversions() with mem_test_moving_inversions_pattern()
but did not include the code of the latter function. Revert that
portion of the change in order to fix the build

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/memtest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index 88656df..d784a5c 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -47,7 +47,7 @@ static int do_test_one_area(struct mem_test_resource *r, int bus_only,
 	if (bus_only)
 		return 0;

-	ret = mem_test_moving_inversions_pattern(r->r->start, r->r->end, 0xdeadbeef);
+	ret = mem_test_moving_inversions(r->r->start, r->r->end);
 	if (ret < 0)
 		return ret;
 	printf("done.\n\n");
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
