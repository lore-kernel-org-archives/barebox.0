Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtvMD-00075J-0h
 for barebox@lists.infradead.org; Wed, 13 Feb 2019 14:17:50 +0000
From: Jan Remmet <j.remmet@phytec.de>
Date: Wed, 13 Feb 2019 15:17:46 +0100
Message-Id: <1550067466-48228-1-git-send-email-j.remmet@phytec.de>
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
Subject: [PATCH] commands: nandtest: provide readonly test
To: barebox@lists.infradead.org

Test will read the device and report the corrected or failed ECC states.

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
 commands/nandtest.c | 125 ++++++++++++++++++++++++++++++++++------------------
 1 file changed, 83 insertions(+), 42 deletions(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index 6d0b770f1642..112bb012a59d 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -67,6 +67,72 @@ static ssize_t __pwrite(int fd, const void *buf,
 	return ret;
 }
 
+static int _read_get_stats(loff_t ofs, unsigned char *buf, loff_t totallength)
+{
+	int ret;
+
+	/* Read data from offset */
+	pread(fd, buf, meminfo.writesize, ofs);
+
+	ret = ioctl(fd, ECCGETSTATS, &newstats);
+	if (ret < 0) {
+		perror("\nECCGETSTATS");
+		return ret;
+	}
+
+	if (newstats.corrected > oldstats.corrected) {
+		printf("\n %d bit(s) ECC corrected at page 0x%08llx\n",
+				newstats.corrected - oldstats.corrected,
+				ofs + memregion.offset);
+		init_progression_bar(totallength);
+		show_progress(ofs);
+		if ((newstats.corrected-oldstats.corrected) >=
+				MAX_ECC_BITS) {
+			/* Increment ECC stats that
+			 * are over MAX_ECC_BITS */
+			ecc_stats_over++;
+		} else {
+			/* Increment ECC stat value */
+			ecc_stats[(newstats.corrected -
+					oldstats.corrected) - 1]++;
+		}
+		/* Set oldstats to newstats */
+		oldstats.corrected = newstats.corrected;
+	}
+
+	if (newstats.failed > oldstats.failed) {
+		printf("\nECC failed at page 0x%08llx\n",
+				ofs + memregion.offset);
+		init_progression_bar(totallength);
+		show_progress(ofs);
+		oldstats.failed = newstats.failed;
+		ecc_failed_cnt++;
+	}
+
+	return 0;
+}
+
+/*
+ * Read and report correctec ECC bits.
+ * Param ofs: offset on flash_device.
+ * Param rbuf: pointer to allocated buffer to copy readed data.
+ * Param length: length of testing area
+ */
+static int read_corrected(loff_t ofs, unsigned char *rbuf, loff_t length)
+{
+	unsigned int i;
+	int ret;
+
+	for (i = 0; i < meminfo.erasesize;
+			i += meminfo.writesize) {
+		ret = _read_get_stats(ofs + i, rbuf + i, length);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 /*
  * Erase and write function.
  * Param ofs: offset on flash_device.
@@ -98,42 +164,9 @@ static int erase_and_write(loff_t ofs, unsigned char *data,
 		__pwrite(fd, data + i, meminfo.writesize,
 				ofs + i, length);
 
-		/* Read data from offset */
-		pread(fd, rbuf + i, meminfo.writesize, ofs + i);
-
-		ret = ioctl(fd, ECCGETSTATS, &newstats);
-		if (ret < 0) {
-			perror("\nECCGETSTATS");
+		ret = _read_get_stats(ofs + i, rbuf + i, length);
+		if (ret)
 			return ret;
-		}
-
-		if (newstats.corrected > oldstats.corrected) {
-			printf("\n %d bit(s) ECC corrected at page 0x%08llx\n",
-					newstats.corrected - oldstats.corrected,
-					ofs + memregion.offset + i);
-			init_progression_bar(length);
-			show_progress(ofs + i);
-			if ((newstats.corrected-oldstats.corrected) >=
-					MAX_ECC_BITS) {
-				/* Increment ECC stats that
-				 * are over MAX_ECC_BITS */
-				ecc_stats_over++;
-			} else {
-				/* Increment ECC stat value */
-				ecc_stats[(newstats.corrected -
-						oldstats.corrected) - 1]++;
-			}
-			/* Set oldstats to newstats */
-			oldstats.corrected = newstats.corrected;
-		}
-		if (newstats.failed > oldstats.failed) {
-			printf("\nECC failed at page 0x%08llx\n",
-					ofs + memregion.offset + i);
-			init_progression_bar(length);
-			show_progress(ofs + i);
-			oldstats.failed = newstats.failed;
-			ecc_failed_cnt++;
-		}
 	}
 
 	/* Compared written data with read data.
@@ -171,7 +204,7 @@ static void print_stats(int nr_passes, int length)
 /* Main program. */
 static int do_nandtest(int argc, char *argv[])
 {
-	int opt, do_nandtest_dev = -1, ret = -1;
+	int opt, do_nandtest_dev = -1, do_nandtest_ro = 0, ret = -1;
 	loff_t flash_offset = 0, test_ofs, length = 0;
 	unsigned int nr_iterations = 1, iter;
 	unsigned char *wbuf, *rbuf;
@@ -183,7 +216,7 @@ static int do_nandtest(int argc, char *argv[])
 
 	memset(ecc_stats, 0, sizeof(*ecc_stats));
 
-	while ((opt = getopt(argc, argv, "ms:i:o:l:t")) > 0) {
+	while ((opt = getopt(argc, argv, "ms:i:o:l:tr")) > 0) {
 		switch (opt) {
 		case 'm':
 			markbad = 1;
@@ -203,6 +236,10 @@ static int do_nandtest(int argc, char *argv[])
 		case 't':
 			do_nandtest_dev = 1;
 			break;
+		case 'r':
+			do_nandtest_dev = 1;
+			do_nandtest_ro = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -213,7 +250,7 @@ static int do_nandtest(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	if (do_nandtest_dev == -1) {
-		printf("Please add -t parameter to start nandtest.\n");
+		printf("Please add -t or -r parameter to start nandtest.\n");
 		return 0;
 	}
 
@@ -306,10 +343,13 @@ static int do_nandtest(int argc, char *argv[])
 				show_progress(test_ofs);
 				continue;
 			}
-
-			get_random_bytes(wbuf, meminfo.erasesize);
-			ret = erase_and_write(test_ofs, wbuf,
-					rbuf, length);
+			if (do_nandtest_ro) {
+				ret = read_corrected(test_ofs, rbuf, length);
+			} else {
+				get_random_bytes(wbuf, meminfo.erasesize);
+				ret = erase_and_write(test_ofs, wbuf,
+						rbuf, length);
+			}
 			if (ret < 0)
 				goto err2;
 		}
@@ -339,6 +379,7 @@ err:
 BAREBOX_CMD_HELP_START(nandtest)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-t",  "Really do a nandtest on device")
+BAREBOX_CMD_HELP_OPT ("-r",  "Readonly nandtest on device")
 BAREBOX_CMD_HELP_OPT ("-m",  "Mark blocks bad if they appear so")
 BAREBOX_CMD_HELP_OPT ("-s SEED",   "supply random seed")
 BAREBOX_CMD_HELP_OPT ("-i ITERATIONS",  "nNumber of iterations")
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
