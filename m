Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQCKf-0002Q3-1p
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 07:21:53 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so641045bkw.36
 for <barebox@lists.infradead.org>; Mon, 22 Oct 2012 00:21:52 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon, 22 Oct 2012 09:23:29 +0200
Message-Id: <1350890612-10588-6-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1350890612-10588-1-git-send-email-alex.aring@gmail.com>
References: <1350890612-10588-1-git-send-email-alex.aring@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/8] nandtest: use get_random_bytes instead of for loop
To: barebox@lists.infradead.org

Use already builtin get_random_bytes instead of for loop.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/nandtest.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index e25f062..cdf9c31 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -198,7 +198,6 @@ static int do_nandtest(int argc, char *argv[])
 	int opt, do_nandtest_dev = -1;
 	off_t flash_offset = 0, test_ofs, length = 0;
 	unsigned int nr_iterations = 1, iter;
-	int i;
 	int ret = -1;
 	unsigned char *wbuf, *rbuf;
 
@@ -328,9 +327,7 @@ static int do_nandtest(int argc, char *argv[])
 				continue;
 			}
 
-			for (i = 0; i < meminfo.erasesize; i++)
-				wbuf[i] = rand();
-
+			get_random_bytes(wbuf, meminfo.erasesize);
 			ret = erase_and_write(test_ofs, wbuf,
 					rbuf, length);
 			if (ret < 0)
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
