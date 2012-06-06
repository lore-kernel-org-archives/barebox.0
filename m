Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bar.sig21.net ([80.81.252.164])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ScIju-0006mR-Gt
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 16:05:44 +0000
Received: from p5099b351.dip0.t-ipconnect.de ([80.153.179.81] helo=zzz.local)
 by bar.sig21.net with esmtpsa (TLS1.0:RSA_ARCFOUR_SHA1:16)
 (Exim 4.72) (envelope-from <js@sig21.net>) id 1ScIjO-00080V-Gn
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 18:05:18 +0200
Received: from js by zzz.local with local (Exim 4.80)
 (envelope-from <js@sig21.net>) id 1ScIjN-00060R-Rs
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 18:05:09 +0200
From: Johannes Stezenbach <js@sig21.net>
Date: Wed,  6 Jun 2012 18:05:00 +0200
Message-Id: <1338998700-23012-6-git-send-email-js@sig21.net>
In-Reply-To: <1338998700-23012-1-git-send-email-js@sig21.net>
References: <1338998700-23012-1-git-send-email-js@sig21.net>
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
Subject: [PATCH 5/5] fs: limit flash erase and protect to the partiton boundary
To: barebox@lists.infradead.org

Passing a too large size or offset to erase could
affect flash outside the partition boundary.
Addresses for SPI flash wrap around, thus giving a
count + offset going past the end of the flash would
wrap around and erase flash at offset 0.

Add the same check for protect.

Signed-off-by: Johannes Stezenbach <js@sig21.net>
---
 fs/fs.c |   18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 9cda1d9..af73c8c 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -751,14 +751,13 @@ int erase(int fd, size_t count, unsigned long offset)
 
 	if (check_fd(fd))
 		return -errno;
+	if (offset >= f->size)
+		return 0;
+	if (count > f->size - offset)
+		count = f->size - offset;
 
 	dev = f->dev;
-
 	fsdrv = dev_to_fs_driver(dev);
-
-	if (f->pos + count > f->size)
-		count = f->size - f->pos;
-
 	if (fsdrv->erase)
 		ret = fsdrv->erase(dev, f, count, offset);
 	else
@@ -780,14 +779,13 @@ int protect(int fd, size_t count, unsigned long offset, int prot)
 
 	if (check_fd(fd))
 		return -errno;
+	if (offset >= f->size)
+		return 0;
+	if (count > f->size - offset)
+		count = f->size - offset;
 
 	dev = f->dev;
-
 	fsdrv = dev_to_fs_driver(dev);
-
-	if (f->pos + count > f->size)
-		count = f->size - f->pos;
-
 	if (fsdrv->protect)
 		ret = fsdrv->protect(dev, f, count, offset, prot);
 	else
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
