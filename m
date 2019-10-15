Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPEA-0007kc-Rb
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 15:59:16 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Tue, 15 Oct 2019 17:59:10 +0200
Message-Id: <1571155150-124984-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [PATCH] libfile: copy_file: prevent spurious error message
To: barebox@lists.infradead.org

Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
 lib/libfile.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/libfile.c b/lib/libfile.c
index 3f3ec21..319e66b 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -349,6 +349,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 	ret = stat(dst, &dststat);
 	if (ret && ret != -ENOENT)
 		goto out;
+	ret = 0;
 
 	/* Set O_TRUNC only if file exist and is a regular file */
 	if (!ret && S_ISREG(dststat.st_mode))
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
