Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RERoP-0002Gn-5H
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 20:23:29 +0000
Received: by eye3 with SMTP id 3so572175eye.36
	for <barebox@lists.infradead.org>; Thu, 13 Oct 2011 13:23:27 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 13 Oct 2011 22:23:08 +0200
Message-Id: <1318537394-8555-2-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
References: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/8] base:driver: Fix sparse warning.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

warnings:
drivers/base/driver.c:247:7: warning: incorrect type in assignment (different address spaces)
drivers/base/driver.c:247:7:    expected void *<noident>
drivers/base/driver.c:247:7:    got void [noderef] <asn:2>*
drivers/base/driver.c:256:7: warning: incorrect type in assignment (different address spaces)
drivers/base/driver.c:256:7:    expected void *<noident>
drivers/base/driver.c:256:7:    got void [noderef] <asn:2>*

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 drivers/base/driver.c |    4 ++--
 include/driver.h      |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 0b80103..ddbba6b 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -237,7 +237,7 @@ int dev_protect(struct device_d *dev, size_t count, unsigned long offset, int pr
 	return -EINVAL;
 }
 
-int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
+int generic_memmap_ro(struct cdev *cdev, void __iomem **map, int flags)
 {
 	if (!cdev->dev)
 		return -EINVAL;
@@ -248,7 +248,7 @@ int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
 	return 0;
 }
 
-int generic_memmap_rw(struct cdev *cdev, void **map, int flags)
+int generic_memmap_rw(struct cdev *cdev, void __iomem **map, int flags)
 {
 	if (!cdev->dev)
 		return -EINVAL;
diff --git a/include/driver.h b/include/driver.h
index 80de0c8..39ced2c 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -303,8 +303,8 @@ int dummy_probe(struct device_d *);
  */
 void devices_shutdown(void);
 
-int generic_memmap_ro(struct cdev *dev, void **map, int flags);
-int generic_memmap_rw(struct cdev *dev, void **map, int flags);
+int generic_memmap_ro(struct cdev *dev, void __iomem **map, int flags);
+int generic_memmap_rw(struct cdev *dev, void __iomem **map, int flags);
 
 static inline off_t dev_lseek_default(struct cdev *cdev, off_t ofs)
 {
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
