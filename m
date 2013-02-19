Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f44.google.com ([209.85.214.44])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7uE4-0006PQ-I7
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 20:55:45 +0000
Received: by mail-bk0-f44.google.com with SMTP id j4so3248129bkw.3
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2013 12:55:42 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue, 19 Feb 2013 21:56:33 +0100
Message-Id: <1361307394-24649-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/2] nandtest: use new pread and pwrite functions
To: barebox@lists.infradead.org

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/nandtest.c | 36 ++++++------------------------------
 1 file changed, 6 insertions(+), 30 deletions(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index f08f8eb..4e6024b 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -43,41 +43,17 @@ static unsigned int ecc_stats_over;
 static unsigned int ecc_failed_cnt;
 
 /*
- * Implementation of pread with lseek and read.
- */
-static ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
-{
-	int ret;
-
-	/* Seek to offset */
-	ret = lseek(fd, offset, SEEK_SET);
-	if (ret < 0)
-		perror("lseek");
-
-	/* Read from flash and put it into buf  */
-	ret = read(fd, buf, count);
-	if (ret < 0)
-		perror("read");
-
-	return 0;
-}
-
-/*
  * Implementation of pwrite with lseek and write.
  */
-static ssize_t pwrite(int fd, const void *buf,
+static ssize_t __pwrite(int fd, const void *buf,
 		size_t count, loff_t offset, loff_t length)
 {
-	int ret;
-
-	ret = lseek(fd, offset, SEEK_SET);
-	if (ret < 0)
-		perror("lseek");
+	ssize_t ret;
 
 	/* Write buf to flash */
-	ret = write(fd, buf, count);
+	ret = pwrite(fd, buf, count, offset);
 	if (ret < 0) {
-		perror("write");
+		perror("pwrite");
 		if (markbad) {
 			printf("\nMark block bad at 0x%08llx\n",
 					offset + memregion.offset);
@@ -88,7 +64,7 @@ static ssize_t pwrite(int fd, const void *buf,
 	}
 
 	flush(fd);
-	return 0;
+	return ret;
 }
 
 /*
@@ -119,7 +95,7 @@ static int erase_and_write(loff_t ofs, unsigned char *data,
 	for (i = 0; i < meminfo.erasesize;
 			i += meminfo.writesize) {
 		/* Write data to given offset */
-		pwrite(fd, data + i, meminfo.writesize,
+		__pwrite(fd, data + i, meminfo.writesize,
 				ofs + i, length);
 
 		/* Read data from offset */
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
