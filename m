Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQXG4-0000fF-HR
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 10:00:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 12:00:11 +0200
Message-Id: <1469181611-16622-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs: Check for correct open mode
To: Barebox List <barebox@lists.infradead.org>

Check that readonly openen files is not written to and writeonly
files is not read from.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index f63a2dd..b7e7c63 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -738,6 +738,11 @@ static ssize_t __read(FILE *f, void *buf, size_t count)
 	struct fs_driver_d *fsdrv;
 	int ret;
 
+	if ((f->flags & O_ACCMODE) == O_WRONLY) {
+		ret = -EBADF;
+		goto out;
+	}
+
 	fsdrv = f->fsdev->driver;
 
 	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size)
@@ -747,7 +752,7 @@ static ssize_t __read(FILE *f, void *buf, size_t count)
 		return 0;
 
 	ret = fsdrv->read(&f->fsdev->dev, f, buf, count);
-
+out:
 	if (ret < 0)
 		errno = -ret;
 	return ret;
@@ -796,6 +801,11 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 	struct fs_driver_d *fsdrv;
 	int ret;
 
+	if (!(f->flags & O_ACCMODE)) {
+		ret = -EBADF;
+		goto out;
+	}
+
 	fsdrv = f->fsdev->driver;
 	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size) {
 		ret = fsdrv->truncate(&f->fsdev->dev, f, f->pos + count);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
