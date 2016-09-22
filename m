Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmylR-0006SK-Q9
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 07:49:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 09:49:23 +0200
Message-Id: <1474530566-23625-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1474530566-23625-1-git-send-email-s.hauer@pengutronix.de>
References: <1474530566-23625-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] mtd: ubi: Add API calls to create/remove volumes
To: Barebox List <barebox@lists.infradead.org>

Currently we use a ioctl API to create/remove ubi volumes. This
means we always have to carry all function code for ubi volume
manipulation when the ioctl is compiled in.
This adds a function API to create/remove volumes so that the linker
can throw the unused code away later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/barebox.c | 23 +++++++++++++++++++++++
 include/linux/mtd/ubi.h   |  3 +++
 2 files changed, 26 insertions(+)

diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index fc60aae..13c2a47 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -257,6 +257,29 @@ void ubi_volume_cdev_remove(struct ubi_volume *vol)
 	kfree(priv);
 }
 
+int ubi_api_create_volume(int ubi_num, struct ubi_mkvol_req *req)
+{
+	struct ubi_device *ubi;
+	int ret;
+
+	ubi = ubi_get_device(ubi_num);
+	if (!ubi)
+		return -ENODEV;
+
+	if (!req->bytes)
+		req->bytes = (__s64)ubi->avail_pebs * ubi->leb_size;
+	ret = ubi_create_volume(ubi, req);
+
+	ubi_put_device(ubi);
+
+	return ret;
+}
+
+int ubi_api_remove_volume(struct ubi_volume_desc *desc, int no_vtbl)
+{
+	return ubi_remove_volume(desc, no_vtbl);
+}
+
 static int ubi_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
 {
 	struct ubi_volume_desc *desc;
diff --git a/include/linux/mtd/ubi.h b/include/linux/mtd/ubi.h
index 0614681..c72f95b 100644
--- a/include/linux/mtd/ubi.h
+++ b/include/linux/mtd/ubi.h
@@ -218,6 +218,9 @@ int ubi_is_mapped(struct ubi_volume_desc *desc, int lnum);
 int ubi_sync(int ubi_num);
 int ubi_flush(int ubi_num, int vol_id, int lnum);
 
+int ubi_api_create_volume(int ubi_num, struct ubi_mkvol_req *req);
+int ubi_api_remove_volume(struct ubi_volume_desc *desc, int no_vtbl);
+
 /*
  * This function is the same as the 'ubi_leb_read()' function, but it does not
  * provide the checking capability.
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
