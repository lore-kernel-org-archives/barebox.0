Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RzB1s-0007jg-8F
 for barebox@lists.infradead.org; Sun, 19 Feb 2012 17:58:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 19 Feb 2012 18:58:08 +0100
Message-Id: <1329674288-25583-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329674288-25583-1-git-send-email-s.hauer@pengutronix.de>
References: <1329674288-25583-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] copy_file: limit progress bar to sensible limits
To: barebox@lists.infradead.org

When copying in verbose mode from a tftp server we might
not know the size of the file being transfered. In this
case print one progress item per 16k instead of one for
each single byte.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/copy_file.c |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/lib/copy_file.c b/lib/copy_file.c
index 967806c..484b2ca 100644
--- a/lib/copy_file.c
+++ b/lib/copy_file.c
@@ -21,6 +21,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 	int ret = 1;
 	void *buf;
 	int total = 0;
+	struct stat statbuf;
 
 	rw_buf = xmalloc(RW_BUF_SIZE);
 
@@ -37,8 +38,6 @@ int copy_file(const char *src, const char *dst, int verbose)
 	}
 
 	if (verbose) {
-		struct stat statbuf;
-
 		if (stat(src, &statbuf) < 0)
 			statbuf.st_size = 0;
 
@@ -67,7 +66,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 		}
 
 		if (verbose)
-			show_progress(total);
+			show_progress(statbuf.st_size ? total : total / 16384);
 	}
 
 	ret = 0;
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
