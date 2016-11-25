Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cABWk-0004Mj-3Z
 for barebox@lists.infradead.org; Fri, 25 Nov 2016 08:06:38 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 90602A003C0
 for <barebox@lists.infradead.org>; Fri, 25 Nov 2016 09:06:50 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 25 Nov 2016 09:06:02 +0100
Message-Id: <1480061167-21590-2-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1480061167-21590-1-git-send-email-t.remmet@phytec.de>
References: <1480061167-21590-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 1/6] libfile: copy_file: Only open regular files with O_TRUNC
To: barebox@lists.infradead.org

Device files can not truncate in the most cases. Check if the
destination is a regular file and open only those with O_TRUNC.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 lib/libfile.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index cba2f02..049ec32 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -263,9 +263,10 @@ int copy_file(const char *src, const char *dst, int verbose)
 	int srcfd = 0, dstfd = 0;
 	int r, w;
 	int ret = 1, err1 = 0;
+	int mode;
 	void *buf;
 	int total = 0;
-	struct stat statbuf;
+	struct stat srcstat, dststat;
 
 	rw_buf = xmalloc(RW_BUF_SIZE);
 
@@ -275,17 +276,26 @@ int copy_file(const char *src, const char *dst, int verbose)
 		goto out;
 	}
 
-	dstfd = open(dst, O_WRONLY | O_CREAT | O_TRUNC);
+	ret = stat(dst, &dststat);
+	if (ret)
+		goto out;
+
+	mode = O_WRONLY | O_CREAT;
+
+	if (S_ISREG(dststat.st_mode))
+		mode |= O_TRUNC;
+
+	dstfd = open(dst, mode);
 	if (dstfd < 0) {
 		printf("could not open %s: %s\n", dst, errno_str());
 		goto out;
 	}
 
 	if (verbose) {
-		if (stat(src, &statbuf) < 0)
-			statbuf.st_size = 0;
+		if (stat(src, &srcstat) < 0)
+			srcstat.st_size = 0;
 
-		init_progression_bar(statbuf.st_size);
+		init_progression_bar(srcstat.st_size);
 	}
 
 	while (1) {
@@ -310,7 +320,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 		}
 
 		if (verbose) {
-			if (statbuf.st_size && statbuf.st_size != FILESIZE_MAX)
+			if (srcstat.st_size && srcstat.st_size != FILESIZE_MAX)
 				show_progress(total);
 			else
 				show_progress(total / 16384);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
