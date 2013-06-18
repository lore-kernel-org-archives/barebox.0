Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UovNa-0007hY-T7
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 12:51:23 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 18 Jun 2013 14:50:50 +0200
Message-Id: <1371559850-21867-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] devfs-core: introduce devfs_append_partition
To: barebox@lists.infradead.org

This simplifies board code for partition setup by keeping track of the
offset.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 fs/devfs-core.c  | 9 +++++++++
 include/driver.h | 2 ++
 2 files changed, 11 insertions(+)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 262e0a2..f7d79ff 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -267,6 +267,15 @@ int devfs_add_partition(const char *devname, loff_t offset, loff_t size,
 	return 0;
 }
 
+int devfs_append_partition(const char *devname, loff_t *offset, loff_t size,
+		int flags, const char *name)
+{
+	int ret;
+	ret = devfs_add_partition(devname, *offset, size, flags, name);
+	*offset += size;
+	return ret;
+}
+
 int devfs_del_partition(const char *name)
 {
 	struct cdev *cdev;
diff --git a/include/driver.h b/include/driver.h
index 716f792..3f4f7b9 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -463,6 +463,8 @@ int cdev_erase(struct cdev *cdev, size_t count, loff_t offset);
 
 int devfs_add_partition(const char *devname, loff_t offset, loff_t size,
 		int flags, const char *name);
+int devfs_append_partition(const char *devname, loff_t *offset, loff_t size,
+		int flags, const char *name);
 int devfs_del_partition(const char *name);
 
 #define DRV_OF_COMPAT(compat) \
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
