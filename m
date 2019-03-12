Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3btW-0004uX-2X
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 07:32:15 +0000
Received: by mail-pg1-x544.google.com with SMTP id k11so1149239pgb.8
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 00:32:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 00:32:07 -0700
Message-Id: <20190312073207.27847-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] libfile: Make use of write_full() in copy_file()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Change copy_file() to rely on write_full() instead of re-implementing
it locally.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/libfile.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index c069aee40..b42753c2b 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -329,10 +329,9 @@ int copy_file(const char *src, const char *dst, int verbose)
 {
 	char *rw_buf = NULL;
 	int srcfd = 0, dstfd = 0;
-	int r, w;
+	int r;
 	int ret = 1, err1 = 0;
 	int mode;
-	void *buf;
 	int total = 0;
 	struct stat srcstat, dststat;
 
@@ -376,18 +375,13 @@ int copy_file(const char *src, const char *dst, int verbose)
 		if (!r)
 			break;
 
-		buf = rw_buf;
-		while (r) {
-			w = write(dstfd, buf, r);
-			if (w < 0) {
-				perror("write");
-				goto out;
-			}
-			buf += w;
-			r -= w;
-			total += w;
+		if (write_full(dstfd, rw_buf, r) < 0) {
+			perror("write");
+			goto out;
 		}
 
+		total += r;
+
 		if (verbose) {
 			if (srcstat.st_size && srcstat.st_size != FILESIZE_MAX)
 				show_progress(total);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
