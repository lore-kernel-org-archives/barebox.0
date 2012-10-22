Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQCKb-0002Q3-S4
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 07:21:50 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so641045bkw.36
 for <barebox@lists.infradead.org>; Mon, 22 Oct 2012 00:21:48 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon, 22 Oct 2012 09:23:26 +0200
Message-Id: <1350890612-10588-3-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/8] nandtest: add progressbar instead of offset print
To: barebox@lists.infradead.org

Add progressbar and remove other outputs of current flash offset.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/nandtest.c | 42 +++++++++++++++++++++++++-----------------
 1 file changed, 25 insertions(+), 17 deletions(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index cdb837f..f614cd5 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -21,6 +21,7 @@
 #include <linux/mtd/mtd-abi.h>
 #include <fcntl.h>
 #include <stdlib.h>
+#include <progress.h>
 
 /* Max ECC Bits that can be corrected */
 #define MAX_ECC_BITS 8
@@ -64,7 +65,8 @@ static ssize_t pread(int fd, void *buf, size_t count, off_t offset)
 /*
  * Implementation of pwrite with lseek and write.
  */
-static ssize_t pwrite(int fd, const void *buf, size_t count, off_t offset)
+static ssize_t pwrite(int fd, const void *buf,
+		size_t count, off_t offset, off_t length)
 {
 	int ret;
 
@@ -77,9 +79,11 @@ static ssize_t pwrite(int fd, const void *buf, size_t count, off_t offset)
 	if (ret < 0) {
 		perror("write");
 		if (markbad) {
-			printf("Mark block bad at 0x%08x\n",
+			printf("\nMark block bad at 0x%08x\n",
 					(unsigned)(offset + memregion.offset));
 			ioctl(fd, MEMSETBADBLOCK, &offset);
+			init_progression_bar(length);
+			show_progress(offset);
 		}
 	}
 
@@ -92,21 +96,21 @@ static ssize_t pwrite(int fd, const void *buf, size_t count, off_t offset)
  * Param ofs: offset on flash_device.
  * Param data: data to write on flash.
  * Param rbuf: pointer to allocated buffer to copy readed data.
+ * Param length: length of testing area
  */
-static int erase_and_write(off_t ofs, unsigned char *data, unsigned char *rbuf)
+static int erase_and_write(off_t ofs, unsigned char *data,
+		unsigned char *rbuf, off_t length)
 {
 	struct erase_info_user er;
 	unsigned int i;
 	int ret;
 
-	printf("\r0x%08x: erasing... ", (unsigned)(ofs + memregion.offset));
-
 	er.start = ofs;
 	er.length = meminfo.erasesize;
 
 	ret = erase(fd, er.length, er.start);
 	if (ret < 0) {
-		perror("erase");
+		perror("\nerase");
 		printf("Could't not erase flash at 0x%08x length 0x%08x.\n",
 			   er.start, er.length);
 		return ret;
@@ -114,21 +118,16 @@ static int erase_and_write(off_t ofs, unsigned char *data, unsigned char *rbuf)
 
 	for (i = 0; i < meminfo.erasesize;
 			i += meminfo.writesize) {
-		printf("\r0x%08x: writing...", (unsigned)
-				(ofs + i + memregion.offset));
-
 		/* Write data to given offset */
-		pwrite(fd, data + i, meminfo.writesize, ofs + i);
-
-		printf("\r0x%08x: reading...", (unsigned)
-				(ofs + i + memregion.offset));
+		pwrite(fd, data + i, meminfo.writesize,
+				ofs + i, length);
 
 		/* Read data from offset */
 		pread(fd, rbuf + i, meminfo.writesize, ofs + i);
 
 		ret = ioctl(fd, ECCGETSTATS, &newstats);
 		if (ret < 0) {
-			perror("ECCGETSTATS");
+			perror("\nECCGETSTATS");
 			return ret;
 		}
 
@@ -136,6 +135,8 @@ static int erase_and_write(off_t ofs, unsigned char *data, unsigned char *rbuf)
 			printf("\n %d bit(s) ECC corrected at page 0x%08x\n",
 					newstats.corrected - oldstats.corrected,
 					(unsigned)(ofs + memregion.offset + i));
+			init_progression_bar(length);
+			show_progress(ofs);
 			if ((newstats.corrected-oldstats.corrected) >=
 					MAX_ECC_BITS) {
 				/* Increment ECC stats that
@@ -152,11 +153,12 @@ static int erase_and_write(off_t ofs, unsigned char *data, unsigned char *rbuf)
 		if (newstats.failed > oldstats.failed) {
 			printf("\nECC failed at page 0x%08x\n",
 					(unsigned)(ofs + memregion.offset + i));
+			init_progression_bar(length);
+			show_progress(ofs);
 			oldstats.failed = newstats.failed;
 			ecc_failed_cnt++;
 		}
 	}
-	printf("\r0x%08x: checking...", (unsigned)(ofs + memregion.offset));
 
 	/* Compared written data with read data.
 	 * If data is not identical, display a detailed
@@ -309,27 +311,33 @@ static int do_nandtest(int argc, char *argv[])
 	rbuf = wbuf + meminfo.erasesize;
 
 	for (pass = 0; pass < nr_passes; pass++) {
+		init_progression_bar(length);
 		for (test_ofs = flash_offset;
 				test_ofs < flash_offset+length;
 				test_ofs += meminfo.erasesize) {
 			loff_t __test_ofs = test_ofs;
+			show_progress(test_ofs);
 			srand(seed);
 			seed = rand();
 
 			if (ioctl(fd, MEMGETBADBLOCK, &__test_ofs)) {
-				printf("\rBad block at 0x%08x\n",
+				printf("\nBad block at 0x%08x\n",
 						(unsigned)(test_ofs +
 							memregion.offset));
+				init_progression_bar(length);
+				show_progress(test_ofs);
 				continue;
 			}
 
 			for (i = 0; i < meminfo.erasesize; i++)
 				wbuf[i] = rand();
 
-			ret = erase_and_write(test_ofs, wbuf, rbuf);
+			ret = erase_and_write(test_ofs, wbuf,
+					rbuf, length);
 			if (ret < 0)
 				goto err2;
 		}
+		show_progress(test_ofs);
 		printf("\nFinished pass %d successfully\n", pass+1);
 	}
 
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
