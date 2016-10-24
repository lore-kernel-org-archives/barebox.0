Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1byYl8-0007Mk-6D
 for barebox@lists.infradead.org; Mon, 24 Oct 2016 06:29:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Oct 2016 08:28:42 +0200
Message-Id: <20161024062843.2796-6-s.hauer@pengutronix.de>
In-Reply-To: <20161024062843.2796-1-s.hauer@pengutronix.de>
References: <20161024062843.2796-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] fs: squashfs: append linux rootarg for ubi volume
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Jorns <ejo@pengutronix.de>

From: Enrico Jorns <ejo@pengutronix.de>

If squashfs runs from an ubi volume, append appropriate root kernel
options.

Note that ubiblock support is required in the kernel for that.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/squashfs/squashfs.c | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 6d04681..c4d0bac 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -9,12 +9,16 @@
 #include <linux/fs.h>
 #include <linux/stat.h>
 #include <linux/pagemap.h>
+#include <linux/mtd/ubi.h>
+#include <linux/mtd/mtd.h>
 
 #include "squashfs_fs.h"
 #include "squashfs_fs_sb.h"
 #include "squashfs_fs_i.h"
 #include "squashfs.h"
 
+struct ubi_volume_desc;
+
 char *squashfs_devread(struct squashfs_sb_info *fs, int byte_offset,
 		int byte_len)
 {
@@ -108,6 +112,31 @@ static struct inode *squashfs_findfile(struct super_block *sb,
 	return NULL;
 }
 
+void squashfs_set_rootarg(struct squashfs_priv *priv, struct fs_device_d *fsdev)
+{
+	struct ubi_volume_desc *ubi_vol;
+	struct ubi_volume_info vi = {};
+	struct ubi_device_info di = {};
+	struct mtd_info *mtd;
+	char *str;
+
+	ubi_vol = ubi_open_volume_cdev(fsdev->cdev, UBI_READONLY);
+
+	if (IS_ERR(ubi_vol))
+		return;
+
+	ubi_get_volume_info(ubi_vol, &vi);
+	ubi_get_device_info(vi.ubi_num, &di);
+	mtd = di.mtd;
+
+	str = basprintf("root=/dev/ubiblock%d_%d ubi.mtd=%s ubi.block=%d,%d rootfstype=squashfs",
+			vi.ubi_num, vi.vol_id, mtd->cdev.partname, vi.ubi_num, vi.vol_id);
+
+	fsdev_set_linux_rootarg(fsdev, str);
+
+	free(str);
+}
+
 static int squashfs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev;
@@ -130,6 +159,8 @@ static int squashfs_probe(struct device_d *dev)
 		goto err_out;
 	}
 
+	squashfs_set_rootarg(priv, fsdev);
+
 	return 0;
 
 err_out:
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
