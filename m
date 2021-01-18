Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1bYj-0003KA-DL
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:55:35 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1bYi-0002Nc-5E
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:55:32 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1bYh-0002aA-PH
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:55:31 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Jan 2021 21:55:27 +0100
Message-Id: <20210118205528.9797-3-m.felsch@pengutronix.de>
In-Reply-To: <20210118205528.9797-1-m.felsch@pengutronix.de>
References: <20210118205528.9797-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 3/4] nvmem: make nvmem_device_write/read public
To: barebox@lists.infradead.org

Those functions already export their symbols so make it public
available. Compared to the nvmem_device_cell_read/write() APIs these
functions are a bit easier to use.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c           |  6 ------
 include/linux/nvmem-consumer.h | 19 +++++++++++++++++++
 2 files changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 06e1414769..b9af31f4b5 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -48,12 +48,6 @@ struct nvmem_cell {
 static LIST_HEAD(nvmem_cells);
 static LIST_HEAD(nvmem_devs);
 
-int nvmem_device_read(struct nvmem_device *nvmem, unsigned int offset,
-		      size_t bytes, void *buf);
-int nvmem_device_write(struct nvmem_device *nvmem, unsigned int offset,
-		       size_t bytes, const void *buf);
-
-
 static ssize_t nvmem_cdev_read(struct cdev *cdev, void *buf, size_t count,
 			       loff_t offset, unsigned long flags)
 {
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index d86377bfda..5d3d72837b 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -40,6 +40,10 @@ int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len);
 /* direct nvmem device read/write interface */
 struct nvmem_device *nvmem_device_get(struct device_d *dev, const char *name);
 void nvmem_device_put(struct nvmem_device *nvmem);
+int nvmem_device_read(struct nvmem_device *nvmem, unsigned int offset,
+		      size_t bytes, void *buf);
+int nvmem_device_write(struct nvmem_device *nvmem, unsigned int offset,
+		       size_t bytes, const void *buf);
 ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
 			       struct nvmem_cell_info *info, void *buf);
 int nvmem_device_cell_write(struct nvmem_device *nvmem,
@@ -98,6 +102,21 @@ static inline int nvmem_device_cell_write(struct nvmem_device *nvmem,
 {
 	return -EOPNOTSUPP;
 }
+
+static inline int nvmem_device_read(struct nvmem_device *nvmem,
+				    unsigned int offset, size_t bytes,
+				    void *buf)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int nvmem_device_write(struct nvmem_device *nvmem,
+				     unsigned int offset, size_t bytes,
+				     const void *buf)
+{
+	return -EOPNOTSUPP;
+}
+
 #endif /* CONFIG_NVMEM */
 
 #if IS_ENABLED(CONFIG_NVMEM) && IS_ENABLED(CONFIG_OFTREE)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
