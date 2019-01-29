Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJk-00053c-LI
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:24 +0000
Received: by mail-pf1-x444.google.com with SMTP id y126so9238861pfb.4
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:20 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:36 -0800
Message-Id: <20190129065549.29161-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190129065549.29161-1-andrew.smirnov@gmail.com>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 06/19] devfs: Fix incorrect error check for
 cdev->ops->lseek()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Cdev->ops->lseek() will either return a negative error code on failure
or requested position on success. In order to properly check for
errors we need to test if the return value is negative, not just that
it's not -1.

Returning ret - cdev->offset, doesn't appear to be correct either,
even if ret is -1, since on failure this will lead us to return (-1 -
cdev->offset). Simplify that part by just returning 'pos', which is
what we'd end up returning on success in original code as well.

Third, make sure to return -ENOSYS, when no .lseek() callback is
provided.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/devfs.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index 81ae2c25a..ae5e6475b 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -60,15 +60,19 @@ static int devfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t s
 static loff_t devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
 {
 	struct cdev *cdev = f->priv;
-	loff_t ret = -1;
+	loff_t ret;
 
-	if (cdev->ops->lseek)
+	if (cdev->ops->lseek) {
 		ret = cdev->ops->lseek(cdev, pos + cdev->offset);
+		if (ret < 0)
+			return ret;
+	} else {
+		return -ENOSYS;
+	}
 
-	if (ret != -1)
-		f->pos = pos;
+	f->pos = pos;
 
-	return ret - cdev->offset;
+	return pos;
 }
 
 static int devfs_erase(struct device_d *_dev, FILE *f, loff_t count, loff_t offset)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
