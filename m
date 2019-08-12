Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGnB-0003hE-3W
 for barebox@lists.infradead.org; Mon, 12 Aug 2019 20:19:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id v12so2472063pfn.10
 for <barebox@lists.infradead.org>; Mon, 12 Aug 2019 13:19:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Aug 2019 13:19:11 -0700
Message-Id: <20190812201915.12414-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/5] nvmem: Use helper variable in nvmem_register_cdev()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add struct cdev * helper variable to nvmem_register_cdev() in order to
avoid repeating &nvmem->cdev a bunch of times

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/core.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 6cf98f62af..092e3b4f4a 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -90,16 +90,17 @@ static struct cdev_operations nvmem_chrdev_ops = {
 static int nvmem_register_cdev(struct nvmem_device *nvmem, const char *name)
 {
 	struct device_d *dev = &nvmem->dev;
+	struct cdev *cdev = &nvmem->cdev;
 	const char *alias;
 
 	alias = of_alias_get(dev->device_node);
 
-	nvmem->cdev.name = xstrdup(alias ?: name);
-	nvmem->cdev.ops = &nvmem_chrdev_ops;
-	nvmem->cdev.dev = &nvmem->dev;
-	nvmem->cdev.size = nvmem->size;
+	cdev->name = xstrdup(alias ?: name);
+	cdev->ops = &nvmem_chrdev_ops;
+	cdev->dev = &nvmem->dev;
+	cdev->size = nvmem->size;
 
-	return devfs_create(&nvmem->cdev);
+	return devfs_create(cdev);
 }
 
 static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
