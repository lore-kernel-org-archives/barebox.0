Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUB9y-0008F2-FG
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 07:27:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Apr 2013 09:27:22 +0200
Message-Id: <1366615643-22213-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366615643-22213-1-git-send-email-s.hauer@pengutronix.de>
References: <1366615643-22213-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] of: partitions: pass struct cdev as argument
To: barebox@lists.infradead.org

pass a struct cdev instead of the cdev name to of_parse_partitions.
This is available to the caller anyway and makes it easier to use
additional stuff from the cdev (like knowing whether it's a mtd
device).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 9 ++++-----
 include/of.h           | 7 ++++---
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 6a57a60..a78466b 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -22,8 +22,7 @@
 #include <malloc.h>
 #include <linux/mtd/mtd.h>
 
-int of_parse_partitions(const char *cdevname,
-				   struct device_node *node)
+int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 {
 	struct device_node *n;
 	const char *partname;
@@ -48,14 +47,14 @@ int of_parse_partitions(const char *cdevname,
 			partname = of_get_property(n, "name", &len);
 		name = (char *)partname;
 
-		debug("add partition: %s.%s 0x%08lx 0x%08lx\n", cdevname, partname, offset, size);
+		debug("add partition: %s.%s 0x%08lx 0x%08lx\n", cdev->name, partname, offset, size);
 
 		if (of_get_property(n, "read-only", &len))
 			flags = DEVFS_PARTITION_READONLY;
 
-		filename = asprintf("%s.%s", cdevname, partname);
+		filename = asprintf("%s.%s", cdev->name, partname);
 
-		devfs_add_partition(cdevname, offset, size, flags, filename);
+		devfs_add_partition(cdev->name, offset, size, flags, filename);
 
 		free(filename);
 	}
diff --git a/include/of.h b/include/of.h
index 9349e6a..4dcf37e 100644
--- a/include/of.h
+++ b/include/of.h
@@ -170,9 +170,10 @@ struct device_node *of_create_node(struct device_node *root, const char *path);
 struct device_node *of_get_root_node(void);
 int of_set_root_node(struct device_node *);
 
+struct cdev;
+
 #ifdef CONFIG_OFTREE
-int of_parse_partitions(const char *cdevname,
-			    struct device_node *node);
+int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 
 int of_alias_get_id(struct device_node *np, const char *stem);
 int of_device_is_stdout_path(struct device_d *dev);
@@ -180,7 +181,7 @@ const char *of_get_model(void);
 void *of_flatten_dtb(struct device_node *node);
 int of_add_memory(struct device_node *node, bool dump);
 #else
-static inline int of_parse_partitions(const char *cdevname,
+static inline int of_parse_partitions(struct cdev *cdev,
 					  struct device_node *node)
 {
 	return -EINVAL;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
