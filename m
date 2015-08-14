Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x233.google.com ([2607:f8b0:400e:c02::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQLeo-0000iL-EX
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 20:32:54 +0000
Received: by pdbfa8 with SMTP id fa8so34465827pdb.1
 for <barebox@lists.infradead.org>; Fri, 14 Aug 2015 13:32:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 14 Aug 2015 13:31:58 -0700
Message-Id: <1439584319-4068-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2] lib: libfile: Do not ignore errors in close()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Some character devices may perform meaningful operations in their
implementation of close() -- a good example would be socfpga.c which
checks if the FPGA was programmed succesfully in it's close() method
-- so ignoring return value of this call may cause false positives in
checking exit status for success.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/libfile.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index ba03700..a27460c 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -262,7 +262,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 	char *rw_buf = NULL;
 	int srcfd = 0, dstfd = 0;
 	int r, w;
-	int ret = 1;
+	int ret = 1, err1 = 0;
 	void *buf;
 	int total = 0;
 	struct stat statbuf;
@@ -326,9 +326,9 @@ out:
 	if (srcfd > 0)
 		close(srcfd);
 	if (dstfd > 0)
-		close(dstfd);
+		err1 = close(dstfd);

-	return ret;
+	return ret ?: err1;
 }
 EXPORT_SYMBOL(copy_file);

--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
