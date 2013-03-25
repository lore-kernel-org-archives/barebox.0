Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UK983-0003ud-71
 for barebox@lists.infradead.org; Mon, 25 Mar 2013 15:16:08 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 814D1BF0F9
 for <barebox@lists.infradead.org>; Mon, 25 Mar 2013 16:16:03 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Mon, 25 Mar 2013 16:15:57 +0100
Message-Id: <1364224557-1840-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] ubiformat: get buffer from malloc
To: barebox@lists.infradead.org

There was a erase block sized (here 131072) char buf array on the stack.
Changed this to get the space from malloc preventing stack overflows.
Also fix a wrong return without clean up.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 commands/ubiformat.c |   22 +++++++++++++++-------
 1 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 47941be..121816f 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -296,13 +296,20 @@ static int mark_bad(const struct mtd_dev_info *mtd, struct ubi_scan_info *si, in
 static int flash_image(const struct mtd_dev_info *mtd,
 		       const struct ubigen_info *ui, struct ubi_scan_info *si)
 {
-	int fd, img_ebs, eb, written_ebs = 0, divisor;
+	int fd, img_ebs, eb, written_ebs = 0, divisor, ret = -1;
 	off_t st_size;
+	char *buf = NULL;
 
 	fd = open_file(&st_size);
 	if (fd < 0)
 		return fd;
 
+	buf = malloc(mtd->eb_size);
+	if (!buf) {
+		sys_errmsg("cannot allocate %d bytes of memory", mtd->eb_size);
+		goto out_close;
+	}
+
 	img_ebs = st_size / mtd->eb_size;
 
 	if (img_ebs > si->good_cnt) {
@@ -312,8 +319,9 @@ static int flash_image(const struct mtd_dev_info *mtd,
 	}
 
 	if (st_size % mtd->eb_size) {
-		return sys_errmsg("file \"%s\" (size %lld bytes) is not multiple of ""eraseblock size (%d bytes)",
-				  args.image, (long long)st_size, mtd->eb_size);
+		sys_errmsg("file \"%s\" (size %lld bytes) is not multiple of "
+			   "eraseblock size (%d bytes)",
+			   args.image, (long long)st_size, mtd->eb_size);
 		goto out_close;
 	}
 
@@ -321,7 +329,6 @@ static int flash_image(const struct mtd_dev_info *mtd,
 	divisor = img_ebs;
 	for (eb = 0; eb < mtd->eb_cnt; eb++) {
 		int err, new_len;
-		char buf[mtd->eb_size];
 		long long ec;
 
 		if (!args.quiet && !args.verbose) {
@@ -404,12 +411,13 @@ static int flash_image(const struct mtd_dev_info *mtd,
 
 	if (!args.quiet && !args.verbose)
 		printf("\n");
-	close(fd);
-	return eb + 1;
+
+	ret = eb + 1;
 
 out_close:
+	free(buf);
 	close(fd);
-	return -1;
+	return ret;
 }
 
 static int format(const struct mtd_dev_info *mtd,
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
