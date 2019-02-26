Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyin2-0004GU-08
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 19:53:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id n74so6735524pfi.9
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 11:53:18 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 11:53:00 -0800
Message-Id: <20190226195303.24733-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/6] fs: Make use of cdev_erase()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop extra checks and explicit indirect call in devfs_erase() in
favour of using cdev_erase(), since it already does all of the above.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/devfs.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index a7400df1c..ce04d0243 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -78,13 +78,10 @@ static int devfs_erase(struct device_d *_dev, FILE *f, loff_t count, loff_t offs
 	if (cdev->flags & DEVFS_PARTITION_READONLY)
 		return -EPERM;
 
-	if (!cdev->ops->erase)
-		return -ENOSYS;
-
 	if (count + offset > cdev->size)
 		count = cdev->size - offset;
 
-	return cdev->ops->erase(cdev, count, offset + cdev->offset);
+	return cdev_erase(cdev, count, offset);
 }
 
 static int devfs_protect(struct device_d *_dev, FILE *f, size_t count, loff_t offset, int prot)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
