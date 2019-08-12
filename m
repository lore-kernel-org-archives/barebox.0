Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGnB-0003hF-Az
 for barebox@lists.infradead.org; Mon, 12 Aug 2019 20:19:46 +0000
Received: by mail-pg1-x542.google.com with SMTP id d1so17227519pgp.4
 for <barebox@lists.infradead.org>; Mon, 12 Aug 2019 13:19:44 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Aug 2019 13:19:12 -0700
Message-Id: <20190812201915.12414-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190812201915.12414-1-andrew.smirnov@gmail.com>
References: <20190812201915.12414-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/5] nvmem: Use already existing dev pointer in
 nvmem_register_cdev()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There's already a struct device_d * pointer variable. Use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 092e3b4f4a..122aac5990 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -97,7 +97,7 @@ static int nvmem_register_cdev(struct nvmem_device *nvmem, const char *name)
 
 	cdev->name = xstrdup(alias ?: name);
 	cdev->ops = &nvmem_chrdev_ops;
-	cdev->dev = &nvmem->dev;
+	cdev->dev = dev;
 	cdev->size = nvmem->size;
 
 	return devfs_create(cdev);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
