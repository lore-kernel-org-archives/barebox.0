Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiCn-0007XR-FO
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 06:02:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jun 2020 08:02:27 +0200
Message-Id: <20200615060229.7533-10-s.hauer@pengutronix.de>
In-Reply-To: <20200615060229.7533-1-s.hauer@pengutronix.de>
References: <20200615060229.7533-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] fs: ramfs: Implement memmap
To: Barebox List <barebox@lists.infradead.org>

When an inode only has a single chunk then we can support memmap for
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ramfs.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index ebe03de736..84aa56f83e 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -387,6 +387,25 @@ static int ramfs_truncate(struct device_d *dev, FILE *f, loff_t size)
 	return 0;
 }
 
+static int ramfs_memmap(struct device_d *_dev, FILE *f, void **map, int flags)
+{
+	struct inode *inode = f->f_inode;
+	struct ramfs_inode *node = to_ramfs_inode(inode);
+	struct ramfs_chunk *data;
+
+	if (list_empty(&node->data))
+		return -EINVAL;
+
+	if (!list_is_singular(&node->data))
+		return -EINVAL;
+
+	data = list_first_entry(&node->data, struct ramfs_chunk, list);
+
+	*map = data->data;
+
+	return 0;
+}
+
 static struct inode *ramfs_alloc_inode(struct super_block *sb)
 {
 	struct ramfs_inode *node;
@@ -434,6 +453,7 @@ static void ramfs_remove(struct device_d *dev)
 static struct fs_driver_d ramfs_driver = {
 	.read      = ramfs_read,
 	.write     = ramfs_write,
+	.memmap    = ramfs_memmap,
 	.truncate  = ramfs_truncate,
 	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
