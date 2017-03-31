Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpC4-0005Ga-8o
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:34:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:16 +0200
Message-Id: <20170331053323.17821-8-s.hauer@pengutronix.de>
In-Reply-To: <20170331053323.17821-1-s.hauer@pengutronix.de>
References: <20170331053323.17821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/14] cdev: Collect partitions on list
To: Barebox List <barebox@lists.infradead.org>

We currently do not have a way to iterate over all partitions of
a cdev. Change this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c  | 8 ++++++++
 include/driver.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 75ed3b0e66..c51ea6a871 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -277,6 +277,7 @@ int devfs_create(struct cdev *new)
 		return -EEXIST;
 
 	INIT_LIST_HEAD(&new->links);
+	INIT_LIST_HEAD(&new->partitions);
 
 	list_add_tail(&new->list, &cdev_list);
 	if (new->dev) {
@@ -326,6 +327,9 @@ int devfs_remove(struct cdev *cdev)
 	list_for_each_entry_safe(c, tmp, &cdev->links, link_entry)
 		devfs_remove(c);
 
+	if (cdev->master)
+		list_del(&cdev->partition_entry);
+
 	if (cdev->link)
 		free(cdev);
 
@@ -374,6 +378,8 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 				partinfo->flags, partinfo->name);
 		if (IS_ERR(mtd))
 			return (void *)mtd;
+
+		list_add_tail(&mtd->cdev.partition_entry, &cdev->partitions);
 		return &mtd->cdev;
 	}
 
@@ -390,6 +396,8 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 	new->dev = cdev->dev;
 	new->flags = partinfo->flags | DEVFS_IS_PARTITION;
 
+	list_add_tail(&new->partition_entry, &cdev->partitions);
+
 	devfs_create(new);
 
 	return new;
diff --git a/include/driver.h b/include/driver.h
index 6abaaad8b4..b7eaf290c4 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -459,6 +459,7 @@ struct cdev {
 	u8 dos_partition_type;
 	struct cdev *link;
 	struct list_head link_entry, links;
+	struct list_head partition_entry, partitions;
 };
 
 int devfs_create(struct cdev *);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
