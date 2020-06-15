Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiCf-0007ND-Ie
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 06:02:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jun 2020 08:02:29 +0200
Message-Id: <20200615060229.7533-12-s.hauer@pengutronix.de>
In-Reply-To: <20200615060229.7533-1-s.hauer@pengutronix.de>
References: <20200615060229.7533-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/11] libfile: copy_file: explicitly truncate to final size
To: Barebox List <barebox@lists.infradead.org>

When possible truncate the destination file to the final size
explicitly. This allows for example ramfs to put the resulting
file contiguously into memory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/libfile.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index 9de938b2d3..863b6833a5 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -353,10 +353,6 @@ int copy_file(const char *src, const char *dst, int verbose)
 		goto out;
 	}
 
-	/* Set O_TRUNC only if file exist and is a regular file */
-	if (!s && S_ISREG(dststat.st_mode))
-		mode |= O_TRUNC;
-
 	dstfd = open(dst, mode);
 	if (dstfd < 0) {
 		printf("could not open %s: %s\n", dst, errno_str());
@@ -364,12 +360,22 @@ int copy_file(const char *src, const char *dst, int verbose)
 		goto out;
 	}
 
+	ret = ftruncate(dstfd, 0);
+	if (ret)
+		goto out;
+
 	ret = stat(src, &srcstat);
 	if (ret)
 		goto out;
 
-	if (srcstat.st_size != FILESIZE_MAX)
+	if (srcstat.st_size != FILESIZE_MAX) {
 		discard_range(dstfd, srcstat.st_size, 0);
+		if (S_ISREG(dststat.st_mode)) {
+			ret = ftruncate(dstfd, srcstat.st_size);
+			if (ret)
+				goto out;
+		}
+	}
 
 	if (verbose)
 		init_progression_bar(srcstat.st_size);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
