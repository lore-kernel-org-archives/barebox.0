Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJu0z-0006ME-Jm
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 06:39:35 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 08:39:18 +0200
Message-Id: <20191014063922.17233-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191014063922.17233-1-a.fatoum@pengutronix.de>
References: <20191014063922.17233-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/5] fs: devfs-core: have device_find_partition search symlinks
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The barebox,environment binding documentation notes following for
the device-path property's second string:
> <partname> can be the label for MTD partitions, the number for DOS
> partitions (beginning with 0) or the name for GPT partitions.

This doesn't work currently because the named partitions are realized as
symlinks and those aren't searched by device_find_partition.

Fix this by having symlinks feature an appropriate partname if the cdev
they link at has one and then have device_find_partition search those as
well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 2b93a951f269..258bb2dbaaee 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -122,10 +122,17 @@ struct cdev *device_find_partition(struct device_d *dev, const char *name)
 	struct device_d *child;
 
 	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
+		struct cdev *cdevl;
+
 		if (!cdev->partname)
 			continue;
 		if (!strcmp(cdev->partname, name))
 			return cdev;
+
+		list_for_each_entry(cdevl, &cdev->links, link_entry) {
+			if (!strcmp(cdevl->partname, name))
+				return cdev_readlink(cdevl);
+		}
 	}
 
 	device_for_each_child(dev, child) {
@@ -252,6 +259,20 @@ int devfs_create_link(struct cdev *cdev, const char *name)
 	new = xzalloc(sizeof(*new));
 	new->name = xstrdup(name);
 	new->link = cdev;
+
+	if (cdev->partname) {
+		size_t partnameoff = 0;
+
+		if (cdev->master) {
+			size_t masterlen = strlen(cdev->master->name);
+
+			if (!strncmp(name, cdev->master->name, masterlen))
+				partnameoff += masterlen + 1;
+		}
+
+		new->partname = xstrdup(name + partnameoff);
+	}
+
 	INIT_LIST_HEAD(&new->links);
 	list_add_tail(&new->list, &cdev_list);
 	list_add_tail(&new->link_entry, &cdev->links);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
