Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQCKa-0002Pe-Ll
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 07:21:49 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so641041bkw.36
 for <barebox@lists.infradead.org>; Mon, 22 Oct 2012 00:21:47 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon, 22 Oct 2012 09:23:25 +0200
Message-Id: <1350890612-10588-2-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/8] nandtest: stat ecc per page not per eraseblock
To: barebox@lists.infradead.org

Collect ecc statistics per page not per eraseblock.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/nandtest.c | 70 +++++++++++++++++++++++++++++------------------------
 1 file changed, 39 insertions(+), 31 deletions(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index d683b24..cdb837f 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -96,7 +96,8 @@ static ssize_t pwrite(int fd, const void *buf, size_t count, off_t offset)
 static int erase_and_write(off_t ofs, unsigned char *data, unsigned char *rbuf)
 {
 	struct erase_info_user er;
-	int i, ret;
+	unsigned int i;
+	int ret;
 
 	printf("\r0x%08x: erasing... ", (unsigned)(ofs + memregion.offset));
 
@@ -111,43 +112,50 @@ static int erase_and_write(off_t ofs, unsigned char *data, unsigned char *rbuf)
 		return ret;
 	}
 
-	printf("\r0x%08x: writing...", (unsigned)(ofs + memregion.offset));
+	for (i = 0; i < meminfo.erasesize;
+			i += meminfo.writesize) {
+		printf("\r0x%08x: writing...", (unsigned)
+				(ofs + i + memregion.offset));
 
-	/* Write data to given offset */
-	pwrite(fd, data, meminfo.erasesize, ofs);
+		/* Write data to given offset */
+		pwrite(fd, data + i, meminfo.writesize, ofs + i);
 
-	printf("\r0x%08x: reading...", (unsigned)(ofs + memregion.offset));
+		printf("\r0x%08x: reading...", (unsigned)
+				(ofs + i + memregion.offset));
 
-	/* Read data from offset */
-	pread(fd, rbuf, meminfo.erasesize, ofs);
+		/* Read data from offset */
+		pread(fd, rbuf + i, meminfo.writesize, ofs + i);
 
-	ret = ioctl(fd, ECCGETSTATS, &newstats);
-	if (ret < 0) {
-		perror("ECCGETSTATS");
-		return ret;
-	}
+		ret = ioctl(fd, ECCGETSTATS, &newstats);
+		if (ret < 0) {
+			perror("ECCGETSTATS");
+			return ret;
+		}
 
-	if (newstats.corrected > oldstats.corrected) {
-		printf("\n %d bit(s) ECC corrected at 0x%08x\n",
-				newstats.corrected - oldstats.corrected,
-				(unsigned)(ofs + memregion.offset));
-		if ((newstats.corrected-oldstats.corrected) >= MAX_ECC_BITS) {
-			/* Increment ECC stats that are over MAX_ECC_BITS */
-			ecc_stats_over++;
-		} else {
-			/* Increment ECC stat value */
-			ecc_stats[(newstats.corrected-oldstats.corrected)-1]++;
+		if (newstats.corrected > oldstats.corrected) {
+			printf("\n %d bit(s) ECC corrected at page 0x%08x\n",
+					newstats.corrected - oldstats.corrected,
+					(unsigned)(ofs + memregion.offset + i));
+			if ((newstats.corrected-oldstats.corrected) >=
+					MAX_ECC_BITS) {
+				/* Increment ECC stats that
+				 * are over MAX_ECC_BITS */
+				ecc_stats_over++;
+			} else {
+				/* Increment ECC stat value */
+				ecc_stats[(newstats.corrected-
+						oldstats.corrected)-1]++;
+			}
+			/* Set oldstats to newstats */
+			oldstats.corrected = newstats.corrected;
+		}
+		if (newstats.failed > oldstats.failed) {
+			printf("\nECC failed at page 0x%08x\n",
+					(unsigned)(ofs + memregion.offset + i));
+			oldstats.failed = newstats.failed;
+			ecc_failed_cnt++;
 		}
-		/* Set oldstats to newstats */
-		oldstats.corrected = newstats.corrected;
-	}
-	if (newstats.failed > oldstats.failed) {
-		printf("\nECC failed at 0x%08x\n",
-				(unsigned)(ofs + memregion.offset));
-		oldstats.failed = newstats.failed;
-		ecc_failed_cnt++;
 	}
-
 	printf("\r0x%08x: checking...", (unsigned)(ofs + memregion.offset));
 
 	/* Compared written data with read data.
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
