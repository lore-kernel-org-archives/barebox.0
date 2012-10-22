Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQCKg-0002Pa-84
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 07:21:55 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so641038bkw.36
 for <barebox@lists.infradead.org>; Mon, 22 Oct 2012 00:21:53 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon, 22 Oct 2012 09:23:30 +0200
Message-Id: <1350890612-10588-7-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 6/8] nandtest: clean up code
To: barebox@lists.infradead.org

Clean up code:

	- change 'i+i' to 'i + i'.
	- change counter variable to unsigned int.
	- use spaces instead of tabs in help text.
	- remove __test_ofs variable.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/nandtest.c | 34 ++++++++++++++++------------------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index cdf9c31..ead728b 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -144,8 +144,8 @@ static int erase_and_write(off_t ofs, unsigned char *data,
 				ecc_stats_over++;
 			} else {
 				/* Increment ECC stat value */
-				ecc_stats[(newstats.corrected-
-						oldstats.corrected)-1]++;
+				ecc_stats[(newstats.corrected -
+						oldstats.corrected) - 1]++;
 			}
 			/* Set oldstats to newstats */
 			oldstats.corrected = newstats.corrected;
@@ -179,13 +179,13 @@ static int erase_and_write(off_t ofs, unsigned char *data,
 /* Print stats of nandtest. */
 static void print_stats(int nr_passes, int length)
 {
-	int i;
+	unsigned int i;
 	printf("-------- Summary --------\n");
 	printf("Tested blocks		: %d\n", (length/meminfo.erasesize)
 			* nr_passes);
 
 	for (i = 0; i < MAX_ECC_BITS; i++)
-		printf("ECC %d bit error(s)	: %d\n", i+1, ecc_stats[i]);
+		printf("ECC %d bit error(s)	: %d\n", i + 1, ecc_stats[i]);
 
 	printf("ECC >%d bit error(s)	: %d\n", MAX_ECC_BITS, ecc_stats_over);
 	printf("ECC corrections failed	: %d\n", ecc_failed_cnt);
@@ -195,10 +195,9 @@ static void print_stats(int nr_passes, int length)
 /* Main program. */
 static int do_nandtest(int argc, char *argv[])
 {
-	int opt, do_nandtest_dev = -1;
+	int opt, do_nandtest_dev = -1, ret = -1;
 	off_t flash_offset = 0, test_ofs, length = 0;
 	unsigned int nr_iterations = 1, iter;
-	int ret = -1;
 	unsigned char *wbuf, *rbuf;
 
 	ecc_failed_cnt = 0;
@@ -276,10 +275,10 @@ static int do_nandtest(int argc, char *argv[])
 	}
 
 	printf("Flash offset: 0x%08x\n",
-			(unsigned)(flash_offset+memregion.offset));
+			(unsigned)(flash_offset + memregion.offset));
 	printf("Length: 0x%08x\n", (unsigned)length);
 	printf("End address: 0x%08x\n",
-			(unsigned)(flash_offset+length+memregion.offset));
+			(unsigned)(flash_offset + length + memregion.offset));
 	printf("Erasesize: 0x%08x\n", (unsigned)(meminfo.erasesize));
 	printf("Starting nandtest...\n");
 
@@ -311,14 +310,13 @@ static int do_nandtest(int argc, char *argv[])
 	for (iter = 0; iter < nr_iterations; iter++) {
 		init_progression_bar(length);
 		for (test_ofs = flash_offset;
-				test_ofs < flash_offset+length;
+				test_ofs < flash_offset + length;
 				test_ofs += meminfo.erasesize) {
-			loff_t __test_ofs = test_ofs;
 			show_progress(test_ofs);
 			srand(seed);
 			seed = rand();
 
-			if (ioctl(fd, MEMGETBADBLOCK, &__test_ofs)) {
+			if (ioctl(fd, MEMGETBADBLOCK, &test_ofs)) {
 				printf("\nBad block at 0x%08x\n",
 						(unsigned)(test_ofs +
 							memregion.offset));
@@ -334,7 +332,7 @@ static int do_nandtest(int argc, char *argv[])
 				goto err2;
 		}
 		show_progress(test_ofs);
-		printf("\nFinished pass %d successfully\n", iter+1);
+		printf("\nFinished pass %d successfully\n", iter + 1);
 	}
 
 	print_stats(nr_iterations, length);
@@ -359,12 +357,12 @@ err:
 /* String for usage of nandtest */
 static const __maybe_unused char cmd_nandtest_help[] =
 "Usage: nandtest [OPTION] <device>\n"
-		"  -t,	Really do a nandtest on device.\n"
-		"  -m,	Mark blocks bad if they appear so.\n"
-		"  -s	<seed>,	Supply random seed.\n"
-		"  -i	<iterations>, Number of iterations.\n"
-		"  -o	<offset>, Start offset on flash.\n"
-		"  -l	<length>, Length of flash to test.\n";
+		"  -t,  Really do a nandtest on device.\n"
+		"  -m,  Mark blocks bad if they appear so.\n"
+		"  -s   <seed>, Supply random seed.\n"
+		"  -i   <iterations>, Number of iterations.\n"
+		"  -o   <offset>, Start offset on flash.\n"
+		"  -l   <length>, Length of flash to test.\n";
 
 BAREBOX_CMD_START(nandtest)
 	.cmd		= do_nandtest,
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
