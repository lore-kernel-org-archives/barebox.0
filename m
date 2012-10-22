Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQCKc-0002Pa-QN
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 07:21:51 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so641038bkw.36
 for <barebox@lists.infradead.org>; Mon, 22 Oct 2012 00:21:50 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon, 22 Oct 2012 09:23:27 +0200
Message-Id: <1350890612-10588-4-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 3/8] nandtest: rename command argument p to i
To: barebox@lists.infradead.org

Rename command argument p for 'passes' to 'i' iteration.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/nandtest.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index f614cd5..656fb65 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -198,7 +198,7 @@ static int do_nandtest(int argc, char *argv[])
 	int opt, length = -1, do_nandtest_dev = -1;
 	off_t flash_offset = 0;
 	off_t test_ofs;
-	unsigned int nr_passes = 1, pass;
+	unsigned int nr_iterations = 1, iter;
 	int i;
 	int ret = -1;
 	unsigned char *wbuf, *rbuf;
@@ -210,7 +210,7 @@ static int do_nandtest(int argc, char *argv[])
 
 	memset(ecc_stats, 0, MAX_ECC_BITS);
 
-	while ((opt = getopt(argc, argv, "ms:p:o:l:t")) > 0) {
+	while ((opt = getopt(argc, argv, "ms:i:o:l:t")) > 0) {
 		switch (opt) {
 		case 'm':
 			markbad = 1;
@@ -218,8 +218,8 @@ static int do_nandtest(int argc, char *argv[])
 		case 's':
 			seed = simple_strtoul(optarg, NULL, 0);
 			break;
-		case 'p':
-			nr_passes = simple_strtoul(optarg, NULL, 0);
+		case 'i':
+			nr_iterations = simple_strtoul(optarg, NULL, 0);
 			break;
 		case 'o':
 			flash_offset = simple_strtoul(optarg, NULL, 0);
@@ -310,7 +310,7 @@ static int do_nandtest(int argc, char *argv[])
 	}
 	rbuf = wbuf + meminfo.erasesize;
 
-	for (pass = 0; pass < nr_passes; pass++) {
+	for (iter = 0; iter < nr_iterations; iter++) {
 		init_progression_bar(length);
 		for (test_ofs = flash_offset;
 				test_ofs < flash_offset+length;
@@ -338,10 +338,10 @@ static int do_nandtest(int argc, char *argv[])
 				goto err2;
 		}
 		show_progress(test_ofs);
-		printf("\nFinished pass %d successfully\n", pass+1);
+		printf("\nFinished pass %d successfully\n", iter+1);
 	}
 
-	print_stats(nr_passes, length);
+	print_stats(nr_iterations, length);
 
 	ret = close(fd);
 	if (ret < 0) {
@@ -366,7 +366,7 @@ static const __maybe_unused char cmd_nandtest_help[] =
 		"  -t,	Really do a nandtest on device.\n"
 		"  -m,	Mark blocks bad if they appear so.\n"
 		"  -s	<seed>,	Supply random seed.\n"
-		"  -p	<passes>, Number of passes.\n"
+		"  -i	<iterations>, Number of iterations.\n"
 		"  -o	<offset>, Start offset on flash.\n"
 		"  -l	<length>, Length of flash to test.\n";
 
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
