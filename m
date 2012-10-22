Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQCKh-0002Pe-Iv
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 07:21:56 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so641041bkw.36
 for <barebox@lists.infradead.org>; Mon, 22 Oct 2012 00:21:55 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon, 22 Oct 2012 09:23:31 +0200
Message-Id: <1350890612-10588-8-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 7/8] nandtest: use loff_t instead off_t
To: barebox@lists.infradead.org

Use the same offset type like mtd interface.
Replace modulo operation with IS_ALIGNED macro.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/nandtest.c | 57 ++++++++++++++++++++++++++---------------------------
 1 file changed, 28 insertions(+), 29 deletions(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index ead728b..f9c9318 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -45,7 +45,7 @@ static unsigned int ecc_failed_cnt;
 /*
  * Implementation of pread with lseek and read.
  */
-static ssize_t pread(int fd, void *buf, size_t count, off_t offset)
+static ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
 {
 	int ret;
 
@@ -66,7 +66,7 @@ static ssize_t pread(int fd, void *buf, size_t count, off_t offset)
  * Implementation of pwrite with lseek and write.
  */
 static ssize_t pwrite(int fd, const void *buf,
-		size_t count, off_t offset, off_t length)
+		size_t count, loff_t offset, loff_t length)
 {
 	int ret;
 
@@ -79,8 +79,8 @@ static ssize_t pwrite(int fd, const void *buf,
 	if (ret < 0) {
 		perror("write");
 		if (markbad) {
-			printf("\nMark block bad at 0x%08x\n",
-					(unsigned)(offset + memregion.offset));
+			printf("\nMark block bad at 0x%08llx\n",
+					offset + memregion.offset);
 			ioctl(fd, MEMSETBADBLOCK, &offset);
 			init_progression_bar(length);
 			show_progress(offset);
@@ -98,8 +98,8 @@ static ssize_t pwrite(int fd, const void *buf,
  * Param rbuf: pointer to allocated buffer to copy readed data.
  * Param length: length of testing area
  */
-static int erase_and_write(off_t ofs, unsigned char *data,
-		unsigned char *rbuf, off_t length)
+static int erase_and_write(loff_t ofs, unsigned char *data,
+		unsigned char *rbuf, loff_t length)
 {
 	struct erase_info_user er;
 	unsigned int i;
@@ -132,9 +132,9 @@ static int erase_and_write(off_t ofs, unsigned char *data,
 		}
 
 		if (newstats.corrected > oldstats.corrected) {
-			printf("\n %d bit(s) ECC corrected at page 0x%08x\n",
+			printf("\n %d bit(s) ECC corrected at page 0x%08llx\n",
 					newstats.corrected - oldstats.corrected,
-					(unsigned)(ofs + memregion.offset + i));
+					ofs + memregion.offset + i);
 			init_progression_bar(length);
 			show_progress(ofs);
 			if ((newstats.corrected-oldstats.corrected) >=
@@ -151,8 +151,8 @@ static int erase_and_write(off_t ofs, unsigned char *data,
 			oldstats.corrected = newstats.corrected;
 		}
 		if (newstats.failed > oldstats.failed) {
-			printf("\nECC failed at page 0x%08x\n",
-					(unsigned)(ofs + memregion.offset + i));
+			printf("\nECC failed at page 0x%08llx\n",
+					ofs + memregion.offset + i);
 			init_progression_bar(length);
 			show_progress(ofs);
 			oldstats.failed = newstats.failed;
@@ -196,7 +196,7 @@ static void print_stats(int nr_passes, int length)
 static int do_nandtest(int argc, char *argv[])
 {
 	int opt, do_nandtest_dev = -1, ret = -1;
-	off_t flash_offset = 0, test_ofs, length = 0;
+	loff_t flash_offset = 0, test_ofs, length = 0;
 	unsigned int nr_iterations = 1, iter;
 	unsigned char *wbuf, *rbuf;
 
@@ -274,28 +274,28 @@ static int do_nandtest(int argc, char *argv[])
 		length -= flash_offset;
 	}
 
-	printf("Flash offset: 0x%08x\n",
-			(unsigned)(flash_offset + memregion.offset));
-	printf("Length: 0x%08x\n", (unsigned)length);
-	printf("End address: 0x%08x\n",
-			(unsigned)(flash_offset + length + memregion.offset));
-	printf("Erasesize: 0x%08x\n", (unsigned)(meminfo.erasesize));
+	printf("Flash offset: 0x%08llx\n",
+			flash_offset + memregion.offset);
+	printf("Length: 0x%08llx\n", length);
+	printf("End address: 0x%08llx\n",
+			flash_offset + length + memregion.offset);
+	printf("Erasesize: 0x%08x\n", meminfo.erasesize);
 	printf("Starting nandtest...\n");
 
-	if (flash_offset % meminfo.erasesize) {
-		printf("Offset 0x%08x not multiple of erase size 0x%08x\n",
-			(unsigned)flash_offset, meminfo.erasesize);
+	if (!IS_ALIGNED(flash_offset, meminfo.erasesize)) {
+		printf("Offset 0x%08llx not multiple of erase size 0x%08x\n",
+			flash_offset, meminfo.erasesize);
 		goto err;
 	}
-	if (length % meminfo.erasesize) {
-		printf("Length 0x%08x not multiple of erase size 0x%08x\n",
-			(unsigned)length, meminfo.erasesize);
+	if (!IS_ALIGNED(length, meminfo.erasesize)) {
+		printf("Length 0x%08llx not multiple of erase size 0x%08x\n",
+			length, meminfo.erasesize);
 		goto err;
 	}
 	if (length + flash_offset > meminfo.size) {
-		printf("Length 0x%08x + offset 0x%08x exceeds "
-				"device size 0x%08x\n", (unsigned)length,
-				(unsigned)flash_offset, meminfo.size);
+		printf("Length 0x%08llx + offset 0x%08llx exceeds "
+				"device size 0x%08x\n", length,
+				flash_offset, meminfo.size);
 		goto err;
 	}
 
@@ -317,9 +317,8 @@ static int do_nandtest(int argc, char *argv[])
 			seed = rand();
 
 			if (ioctl(fd, MEMGETBADBLOCK, &test_ofs)) {
-				printf("\nBad block at 0x%08x\n",
-						(unsigned)(test_ofs +
-							memregion.offset));
+				printf("\nBad block at 0x%08llx\n",
+						test_ofs + memregion.offset);
 				init_progression_bar(length);
 				show_progress(test_ofs);
 				continue;
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
