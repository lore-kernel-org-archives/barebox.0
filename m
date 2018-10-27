Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDTA-00018M-Ac
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:33:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id p5-v6so1245434plq.8
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:42 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:32:25 -0700
Message-Id: <20181027013230.24387-2-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013230.24387-1-andrew.smirnov@gmail.com>
References: <20181027013230.24387-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/6] drivers: base: Simplify generic_memmap_ro()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Simplify generic_memmap_ro() by re-implementing it using
generic_memmap_rw().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/driver.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 1941a972c..c74fee99f 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -440,29 +440,23 @@ void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 }
 EXPORT_SYMBOL(dev_request_mem_region);
 
-int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
+int generic_memmap_rw(struct cdev *cdev, void **map, int flags)
 {
 	if (!cdev->dev)
 		return -EINVAL;
 
-	if (flags & PROT_WRITE)
-		return -EACCES;
 	*map = dev_get_mem_region(cdev->dev, 0);
 	if (IS_ERR(*map))
 		return PTR_ERR(*map);
 	return 0;
 }
 
-int generic_memmap_rw(struct cdev *cdev, void **map, int flags)
+int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
 {
-	if (!cdev->dev)
-		return -EINVAL;
-
-	*map = dev_get_mem_region(cdev->dev, 0);
-	if (IS_ERR(*map))
-		return PTR_ERR(*map);
+	if (flags & PROT_WRITE)
+		return -EACCES;
 
-	return 0;
+	return generic_memmap_rw(cdev, map, flags);
 }
 
 int dummy_probe(struct device_d *dev)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
