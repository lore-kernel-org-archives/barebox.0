Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiCa-0007K0-0Q
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 06:02:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jun 2020 08:02:28 +0200
Message-Id: <20200615060229.7533-11-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] libfile: copy_file: Fix calling discard_range
To: Barebox List <barebox@lists.infradead.org>

discard range is called with unitialized size argument. Call it after
stat() on the source filedescriptor. Also there's no point in continuing
when stat() on the source filedescriptor fails, so bail out in this
case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/libfile.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index b4d87b624a..9de938b2d3 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -364,14 +364,15 @@ int copy_file(const char *src, const char *dst, int verbose)
 		goto out;
 	}
 
-	discard_range(dstfd, srcstat.st_size, 0);
+	ret = stat(src, &srcstat);
+	if (ret)
+		goto out;
 
-	if (verbose) {
-		if (stat(src, &srcstat) < 0)
-			srcstat.st_size = 0;
+	if (srcstat.st_size != FILESIZE_MAX)
+		discard_range(dstfd, srcstat.st_size, 0);
 
+	if (verbose)
 		init_progression_bar(srcstat.st_size);
-	}
 
 	while (1) {
 		r = read(srcfd, rw_buf, RW_BUF_SIZE);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
