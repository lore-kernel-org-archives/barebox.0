Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDli9-0002Mw-I2
 for barebox@lists.infradead.org; Fri, 27 Sep 2019 08:34:48 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Fri, 27 Sep 2019 10:34:41 +0200
Message-Id: <1569573281-12592-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH] nvmem: Fix read/write access to partition devices
To: barebox@lists.infradead.org

Partition devices are not directly associated with the nvmem instance but via
their master cdev. Thus reading and writing needs to be handled via the
master.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 drivers/nvmem/core.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 25924872efa2..82e9d1996428 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -57,9 +57,14 @@ int nvmem_device_write(struct nvmem_device *nvmem, unsigned int offset,
 static ssize_t nvmem_cdev_read(struct cdev *cdev, void *buf, size_t count,
 			       loff_t offset, unsigned long flags)
 {
-	struct nvmem_device *nvmem = container_of(cdev, struct nvmem_device, cdev);
+	struct nvmem_device *nvmem;
 	ssize_t retlen;
 
+	if (!cdev->master)
+		nvmem = container_of(cdev, struct nvmem_device, cdev);
+	else
+		nvmem = container_of(cdev->master, struct nvmem_device, cdev);
+
 	dev_dbg(cdev->dev, "read ofs: 0x%08llx count: 0x%08zx\n",
 		offset, count);
 
@@ -71,9 +76,14 @@ static ssize_t nvmem_cdev_read(struct cdev *cdev, void *buf, size_t count,
 static ssize_t nvmem_cdev_write(struct cdev *cdev, const void *buf, size_t count,
 				loff_t offset, unsigned long flags)
 {
-	struct nvmem_device *nvmem = container_of(cdev, struct nvmem_device, cdev);
+	struct nvmem_device *nvmem;
 	ssize_t retlen;
 
+	if (!cdev->master)
+		nvmem = container_of(cdev, struct nvmem_device, cdev);
+	else
+		nvmem = container_of(cdev->master, struct nvmem_device, cdev);
+
 	dev_dbg(cdev->dev, "write ofs: 0x%08llx count: 0x%08zx\n",
 		offset, count);
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
