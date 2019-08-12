Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGnC-0003he-BW
 for barebox@lists.infradead.org; Mon, 12 Aug 2019 20:19:47 +0000
Received: by mail-pg1-x544.google.com with SMTP id t132so50042129pgb.9
 for <barebox@lists.infradead.org>; Mon, 12 Aug 2019 13:19:45 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Aug 2019 13:19:13 -0700
Message-Id: <20190812201915.12414-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/5] nvmem: Parse partitions information
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to parse partition information that might be specified as a
part of the DT config.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/core.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 122aac5990..25924872ef 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -92,6 +92,7 @@ static int nvmem_register_cdev(struct nvmem_device *nvmem, const char *name)
 	struct device_d *dev = &nvmem->dev;
 	struct cdev *cdev = &nvmem->cdev;
 	const char *alias;
+	int ret;
 
 	alias = of_alias_get(dev->device_node);
 
@@ -100,7 +101,14 @@ static int nvmem_register_cdev(struct nvmem_device *nvmem, const char *name)
 	cdev->dev = dev;
 	cdev->size = nvmem->size;
 
-	return devfs_create(cdev);
+	ret = devfs_create(cdev);
+	if (ret)
+		return ret;
+
+	of_parse_partitions(cdev, dev->device_node);
+	of_partitions_register_fixup(cdev);
+
+	return 0;
 }
 
 static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
