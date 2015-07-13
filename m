Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x234.google.com ([2607:f8b0:400e:c02::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZERK6-0007N0-8r
 for barebox@lists.infradead.org; Mon, 13 Jul 2015 00:10:18 +0000
Received: by pdjr16 with SMTP id r16so52379533pdj.3
 for <barebox@lists.infradead.org>; Sun, 12 Jul 2015 17:09:57 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 12 Jul 2015 17:09:47 -0700
Message-Id: <1436746187-8652-1-git-send-email-asmirnov@kymetacorp.com>
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
Subject: [PATCH] lib: libfile: Do not ignore errors in close()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

From: Andrey Smirnov <andrew.smirnov@gmail.com>

Some character devices may perform meaningful operations in their
implementation of close() -- a good example would be socfpga.c which
checks if the FPGA was programmed succesfully in it's close() method
-- so ignoring return value of this call may cause false positives in
checking exit status for success.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/libfile.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index 8acff04..4f21e70 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -262,7 +262,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 	char *rw_buf = NULL;
 	int srcfd = 0, dstfd = 0;
 	int r, w;
-	int ret = 1;
+	int ret = 1, err1 = 0, err2 = 0;
 	void *buf;
 	int total = 0;
 	struct stat statbuf;
@@ -324,11 +324,11 @@ out:
 
 	free(rw_buf);
 	if (srcfd > 0)
-		close(srcfd);
+		err1 = close(srcfd);
 	if (dstfd > 0)
-		close(dstfd);
+		err2 = close(dstfd);
 
-	return ret;
+	return ret ?: err1 ?: err2;
 }
 EXPORT_SYMBOL(copy_file);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
