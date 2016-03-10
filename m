Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1advzM-0002xN-KO
 for barebox@lists.infradead.org; Thu, 10 Mar 2016 08:30:35 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Thu, 10 Mar 2016 09:29:57 +0100
Message-Id: <1457598600-10669-5-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1457598600-10669-1-git-send-email-mpa@pengutronix.de>
References: <1457598600-10669-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 5/8] ubi: Helper to iterate over all ubi volumes
To: barebox@lists.infradead.org

To find all the ubi volume ids on a given UBI, we need a helper. The
added functions allow to use ubi_volume_for_each() to get each volume id
of a UBI.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/mtd/ubi/kapi.c  | 42 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/mtd/ubi.h | 11 +++++++++++
 2 files changed, 53 insertions(+)

diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
index c2e58e865753..f3b0f0d85d84 100644
--- a/drivers/mtd/ubi/kapi.c
+++ b/drivers/mtd/ubi/kapi.c
@@ -308,6 +308,48 @@ void ubi_close_volume(struct ubi_volume_desc *desc)
 }
 EXPORT_SYMBOL_GPL(ubi_close_volume);
 
+int ubi_volume_first(int ubi_num, struct ubi_device **ubi, int *vol_id)
+{
+	int i;
+
+	/* We keep the device until the last call of ubi_volume_next
+	 * or ubi_volume_abort */
+	*ubi = ubi_get_device(ubi_num);
+	if (!*ubi)
+		return -ENODEV;
+
+	for (i = 0; i < (*ubi)->vtbl_slots; ++i) {
+		if ((*ubi)->volumes[i]) {
+			*vol_id = i;
+			return 0;
+		}
+	}
+
+	ubi_put_device(*ubi);
+	return -ENOENT;
+}
+
+int ubi_volume_next(struct ubi_device *ubi, int *vol_id)
+{
+	int i;
+
+	for (i = *vol_id + 1; i < ubi->vtbl_slots; ++i) {
+		if (ubi->volumes[i]) {
+			*vol_id = i;
+			return 0;
+		}
+	}
+
+	ubi_put_device(ubi);
+
+	return -ENOENT;
+}
+
+void ubi_volume_abort(struct ubi_device *ubi)
+{
+	ubi_put_device(ubi);
+}
+
 struct cdev *ubi_volume_get_cdev(struct ubi_volume_desc *vol)
 {
 	return &vol->vol->cdev;
diff --git a/include/linux/mtd/ubi.h b/include/linux/mtd/ubi.h
index 0725b04f9dfd..344842e4ed97 100644
--- a/include/linux/mtd/ubi.h
+++ b/include/linux/mtd/ubi.h
@@ -220,6 +220,17 @@ int ubi_flush(int ubi_num, int vol_id, int lnum);
 
 struct cdev *ubi_volume_get_cdev(struct ubi_volume_desc *vol);
 
+struct ubi_device;
+int ubi_volume_first(int ubi_num, struct ubi_device **ubi, int *vol_id);
+int ubi_volume_next(struct ubi_device *ubi, int *vol_id);
+void ubi_volume_abort(struct ubi_device *ubi);
+
+#define ubi_volume_for_each(ubi_num, ubi, vol_id, ret) \
+	for (ret = ubi_volume_first(ubi_num, &(ubi), &(vol_id)); \
+	     !ret; \
+	     ret = ubi_volume_next(ubi, &(vol_id)))
+
+
 /*
  * This function is the same as the 'ubi_leb_read()' function, but it does not
  * provide the checking capability.
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
