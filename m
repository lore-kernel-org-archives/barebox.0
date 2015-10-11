Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x231.google.com ([2607:f8b0:400e:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlLbZ-0007rY-7x
 for barebox@lists.infradead.org; Sun, 11 Oct 2015 18:44:21 +0000
Received: by pablk4 with SMTP id lk4so133707010pab.3
 for <barebox@lists.infradead.org>; Sun, 11 Oct 2015 11:43:59 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 11 Oct 2015 11:43:34 -0700
Message-Id: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/8] memtest.c: Print iterations count if -i is 0
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Even if memtest is started in endless mode it is still usefult to see
current iteration count. Add the code to print that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/memtest.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index 7561230..b88290c 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -180,8 +180,12 @@ static int do_memtest(int argc, char *argv[])
 		goto out;

 	for (i = 1; (i <= max_i) || !max_i; i++) {
+		printf("Start iteration %u", i);
 		if (max_i)
-			printf("Start iteration %u of %u.\n", i, max_i);
+			printf(" of %u.\n", max_i);
+		else
+			putchar('\n');
+
 		/*
 		 * First try a memtest with caching enabled.
 		 */
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
