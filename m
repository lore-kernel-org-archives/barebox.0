Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRp7w-0003p7-Ej
 for barebox@lists.infradead.org; Sat, 28 Feb 2015 21:40:53 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sat, 28 Feb 2015 22:40:06 +0100
Message-Id: <1425159621-22805-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
References: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 01/16] drivers: remove unused function dev_protect()
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/base/driver.c | 6 ------
 include/driver.h      | 2 --
 2 files changed, 8 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 81b35031a111..3363b56675ee 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -350,12 +350,6 @@ void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 }
 EXPORT_SYMBOL(dev_request_mem_region);
 
-int dev_protect(struct device_d *dev, size_t count, unsigned long offset, int prot)
-{
-	printf("%s: currently broken\n", __func__);
-	return -EINVAL;
-}
-
 int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
 {
 	if (!cdev->dev)
diff --git a/include/driver.h b/include/driver.h
index 76fd4b1720b2..0ee3b4554f98 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -331,8 +331,6 @@ struct driver_d *get_driver_by_name(const char *name);
 
 struct cdev;
 
-int     dev_protect(struct device_d *dev, size_t count, unsigned long offset, int prot);
-
 /* These are used by drivers which work with direct memory accesses */
 ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
 ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
