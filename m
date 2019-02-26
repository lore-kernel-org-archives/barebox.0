Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyin2-0004Gl-9W
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 19:53:22 +0000
Received: by mail-pg1-x542.google.com with SMTP id r124so6708263pgr.3
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 11:53:20 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 11:53:01 -0800
Message-Id: <20190226195303.24733-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190226195303.24733-1-andrew.smirnov@gmail.com>
References: <20190226195303.24733-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/6] fs: Make use of cdev_flush()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop extra checks and explicit indirect call in devfs_flush() in
favour of using cdev_flush(), since it already does all of the above.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/devfs.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index ce04d0243..d088c1a66 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -152,10 +152,7 @@ static int devfs_flush(struct device_d *_dev, FILE *f)
 {
 	struct cdev *cdev = f->priv;
 
-	if (cdev->ops->flush)
-		return cdev->ops->flush(cdev);
-
-	return 0;
+	return cdev_flush(cdev);
 }
 
 static int devfs_ioctl(struct device_d *_dev, FILE *f, int request, void *buf)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
