Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVlo-0004kn-G1
 for barebox@lists.infradead.org; Fri, 18 Oct 2019 17:10:35 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Fri, 18 Oct 2019 19:10:27 +0200
Message-Id: <1571418627-279424-1-git-send-email-r.karszniewicz@phytec.de>
In-Reply-To: <20191018114546.dbalujyk2x6oyqyi@pengutronix.de>
References: <20191018114546.dbalujyk2x6oyqyi@pengutronix.de>
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
Subject: [PATCH v3] libfile: copy_file: prevent spurious error message
To: barebox@lists.infradead.org

Before this, ret was falsely polluted, which caused a misleading error
message if the function bailed out at a later point.

Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
 lib/libfile.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index 3f3ec21..fe11d34 100644
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
@@ -346,12 +346,12 @@ int copy_file(const char *src, const char *dst, int verbose)
 
 	mode = O_WRONLY | O_CREAT;
 
-	ret = stat(dst, &dststat);
-	if (ret && ret != -ENOENT)
+	s = stat(dst, &dststat);
+	if (s && s != -ENOENT)
 		goto out;
 
 	/* Set O_TRUNC only if file exist and is a regular file */
-	if (!ret && S_ISREG(dststat.st_mode))
+	if (!s && S_ISREG(dststat.st_mode))
 		mode |= O_TRUNC;
 
 	dstfd = open(dst, mode);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
