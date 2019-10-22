Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuVf-00080C-Aj
 for barebox@lists.infradead.org; Tue, 22 Oct 2019 13:47:41 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Tue, 22 Oct 2019 15:47:32 +0200
Message-Id: <1571752052-101565-1-git-send-email-r.karszniewicz@phytec.de>
In-Reply-To: <20191021073706.m3k2f4vop3ryu64c@pengutronix.de>
References: <20191021073706.m3k2f4vop3ryu64c@pengutronix.de>
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
Subject: [PATCH v4] libfile: copy_file: fix error handling
To: barebox@lists.infradead.org

Before this, ret was falsely polluted, which caused a misleading error
message if the function bailed out at a later point.

Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
 lib/libfile.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index 3f3ec21..7bade39 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -330,7 +330,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 {
 	char *rw_buf = NULL;
 	int srcfd = 0, dstfd = 0;
-	int r;
+	int r, s;
 	int ret = 1, err1 = 0;
 	int mode;
 	int total = 0;
@@ -341,22 +341,27 @@ int copy_file(const char *src, const char *dst, int verbose)
 	srcfd = open(src, O_RDONLY);
 	if (srcfd < 0) {
 		printf("could not open %s: %s\n", src, errno_str());
+		ret = srcfd;
 		goto out;
 	}
 
 	mode = O_WRONLY | O_CREAT;
 
-	ret = stat(dst, &dststat);
-	if (ret && ret != -ENOENT)
+	s = stat(dst, &dststat);
+	if (s && s != -ENOENT) {
+		printf("could not stat %s: %s\n", dst, errno_str());
+		ret = s;
 		goto out;
+	}
 
 	/* Set O_TRUNC only if file exist and is a regular file */
-	if (!ret && S_ISREG(dststat.st_mode))
+	if (!s && S_ISREG(dststat.st_mode))
 		mode |= O_TRUNC;
 
 	dstfd = open(dst, mode);
 	if (dstfd < 0) {
 		printf("could not open %s: %s\n", dst, errno_str());
+		ret = dstfd;
 		goto out;
 	}
 
@@ -371,12 +376,14 @@ int copy_file(const char *src, const char *dst, int verbose)
 		r = read(srcfd, rw_buf, RW_BUF_SIZE);
 		if (r < 0) {
 			perror("read");
+			ret = r;
 			goto out;
 		}
 		if (!r)
 			break;
 
-		if (write_full(dstfd, rw_buf, r) < 0) {
+		ret = write_full(dstfd, rw_buf, r);
+		if (ret < 0) {
 			perror("write");
 			goto out;
 		}
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
