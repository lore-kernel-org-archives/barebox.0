Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyj0a-0001cP-Fh
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 20:07:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id c17so3573331plz.13
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 12:07:20 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 12:07:12 -0800
Message-Id: <20190226200712.3007-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] drivers: Drop dummy_porbe()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop dummy_porbe() due to lack of users in the tree.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/driver.c | 6 ------
 include/driver.h      | 3 ---
 2 files changed, 9 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 1fd6bbc01..eec2a2d8a 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -439,12 +439,6 @@ int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
 	return generic_memmap_rw(cdev, map, flags);
 }
 
-int dummy_probe(struct device_d *dev)
-{
-	return 0;
-}
-EXPORT_SYMBOL(dummy_probe);
-
 /**
  * dev_set_name - set a device name
  * @dev: device
diff --git a/include/driver.h b/include/driver.h
index 0ed830d29..26c447015 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -353,9 +353,6 @@ struct cdev;
 ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
 ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
 
-/* Use this if you have nothing to do in your drivers probe function */
-int dummy_probe(struct device_d *);
-
 int generic_memmap_ro(struct cdev *dev, void **map, int flags);
 int generic_memmap_rw(struct cdev *dev, void **map, int flags);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
