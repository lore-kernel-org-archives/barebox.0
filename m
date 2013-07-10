Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uws0d-0000Kk-3c
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 10:52:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 12:52:05 +0200
Message-Id: <1373453528-3723-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
References: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] cdev: add device_find_partition
To: barebox@lists.infradead.org

device_find_partition allows to find a partition of a device with
a particular name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c  | 27 +++++++++++++++++++++++++++
 include/driver.h |  1 +
 2 files changed, 28 insertions(+)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 816f244..a92d434 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -56,6 +56,33 @@ struct cdev *cdev_by_name(const char *filename)
 	return NULL;
 }
 
+/**
+ * device_find_partition - find a partition belonging to a physical device
+ *
+ * @dev: the device which should be searched for partitions
+ * @name: the partition name
+ */
+struct cdev *device_find_partition(struct device_d *dev, const char *name)
+{
+	struct cdev *cdev;
+	struct device_d *child;
+
+	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
+		if (!cdev->partname)
+			continue;
+		if (!strcmp(cdev->partname, name))
+			return cdev;
+	}
+
+	device_for_each_child(dev, child) {
+		cdev = device_find_partition(child, name);
+		if (cdev)
+			return cdev;
+	}
+
+	return NULL;
+}
+
 int cdev_find_free_index(const char *basename)
 {
 	int i;
diff --git a/include/driver.h b/include/driver.h
index 7ac2eef..f95c93c 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -458,6 +458,7 @@ struct cdev {
 int devfs_create(struct cdev *);
 int devfs_remove(struct cdev *);
 int cdev_find_free_index(const char *);
+struct cdev *device_find_partition(struct device_d *dev, const char *name);
 struct cdev *cdev_by_name(const char *filename);
 struct cdev *cdev_open(const char *name, unsigned long flags);
 int cdev_do_open(struct cdev *, unsigned long flags);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
