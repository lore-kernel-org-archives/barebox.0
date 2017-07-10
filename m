Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUW1P-0005w7-IQ
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 10:34:35 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 10 Jul 2017 12:33:50 +0200
Message-Id: <20170710103355.15652-4-s.trumtrar@pengutronix.de>
In-Reply-To: <20170710103355.15652-1-s.trumtrar@pengutronix.de>
References: <20170710103355.15652-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 4/9] devfs-core: add function to find cdev by partuuid
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 fs/devfs-core.c  | 14 ++++++++++++++
 include/driver.h |  1 +
 2 files changed, 15 insertions(+)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 3368d3ed68bd..be56edd18d80 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -95,6 +95,20 @@ struct cdev *cdev_by_device_node(struct device_node *node)
 	return NULL;
 }
 
+struct cdev *cdev_by_partuuid(const char *partuuid)
+{
+	struct cdev *cdev;
+
+	if (!partuuid)
+		return NULL;
+
+	list_for_each_entry(cdev, &cdev_list, list) {
+		if (!strcmp(cdev->partuuid, partuuid))
+			return cdev;
+	}
+	return NULL;
+}
+
 /**
  * device_find_partition - find a partition belonging to a physical device
  *
diff --git a/include/driver.h b/include/driver.h
index 3d701f24398a..8617872053d8 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -472,6 +472,7 @@ struct cdev *cdev_by_name(const char *filename);
 struct cdev *lcdev_by_name(const char *filename);
 struct cdev *cdev_readlink(struct cdev *cdev);
 struct cdev *cdev_by_device_node(struct device_node *node);
+struct cdev *cdev_by_partuuid(const char *partuuid);
 struct cdev *cdev_open(const char *name, unsigned long flags);
 struct cdev *cdev_create_loop(const char *path, ulong flags);
 void cdev_remove_loop(struct cdev *cdev);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
