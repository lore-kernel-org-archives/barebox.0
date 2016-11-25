Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cABWk-0004Mk-3g
 for barebox@lists.infradead.org; Fri, 25 Nov 2016 08:06:42 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B16C2A00438
 for <barebox@lists.infradead.org>; Fri, 25 Nov 2016 09:06:50 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 25 Nov 2016 09:06:04 +0100
Message-Id: <1480061167-21590-4-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1480061167-21590-1-git-send-email-t.remmet@phytec.de>
References: <1480061167-21590-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 3/6] ubi: Add truncate callback
To: barebox@lists.infradead.org

The size of static ubi volumes changes depending on the content.
Add truncate callback to handle resizes.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/barebox.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index 329cf45..2ad731a 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -162,6 +162,21 @@ static loff_t ubi_volume_cdev_lseek(struct cdev *cdev, loff_t ofs)
 	return ofs;
 }
 
+static int ubi_volume_cdev_truncate(struct cdev *cdev, size_t size)
+{
+	struct ubi_volume_cdev_priv *priv = cdev->priv;
+	struct ubi_device *ubi = priv->ubi;
+	struct ubi_volume *vol = priv->vol;
+	uint64_t rsvd_bytes;
+
+	rsvd_bytes = (long long)vol->reserved_pebs *
+			ubi->leb_size - vol->data_pad;
+	if (size > rsvd_bytes)
+		return -ENOSPC;
+
+	return 0;
+}
+
 static int ubi_volume_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
 {
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
@@ -210,6 +225,7 @@ static struct file_operations ubi_volume_fops = {
 	.write  = ubi_volume_cdev_write,
 	.lseek	= ubi_volume_cdev_lseek,
 	.ioctl  = ubi_volume_cdev_ioctl,
+	.truncate = ubi_volume_cdev_truncate,
 };
 
 int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
