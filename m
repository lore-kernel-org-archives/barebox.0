Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cT3Gr-0004mX-Sj
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 09:08:11 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 74C05A00233
 for <barebox@lists.infradead.org>; Mon, 16 Jan 2017 10:07:47 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 16 Jan 2017 10:07:39 +0100
Message-Id: <1484557659-5056-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2] lib: libfile: Fix copying files to a non existing
 destination
To: barebox@lists.infradead.org

If the destination file does not exist the stat call to check the file
type fails. Extend the check of the stat return value.
To allow to copy files to a new destination.

Fixes commit 0ec6bd3e1be8 ("libfile: copy_file: Only open
regular files with O_TRUNC")

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 lib/libfile.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index 049ec32..6b70306 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -276,13 +276,14 @@ int copy_file(const char *src, const char *dst, int verbose)
 		goto out;
 	}
 
+	mode = O_WRONLY | O_CREAT;
+
 	ret = stat(dst, &dststat);
-	if (ret)
+	if (ret && ret != -ENOENT)
 		goto out;
 
-	mode = O_WRONLY | O_CREAT;
-
-	if (S_ISREG(dststat.st_mode))
+	/* Set O_TRUNC only if file exist and is a regular file */
+	if (!ret && S_ISREG(dststat.st_mode))
 		mode |= O_TRUNC;
 
 	dstfd = open(dst, mode);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
