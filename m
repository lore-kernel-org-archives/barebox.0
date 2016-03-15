Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn3u-00015k-Fi
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:22:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:22:29 +0100
Message-Id: <1458040952-6826-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040952-6826-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040952-6826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] mtd: ubi: umount mounted volumes before detaching a ubi
 device
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/barebox.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index 1643f7c..f81705e 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -261,10 +261,25 @@ void ubi_cdev_remove(struct ubi_device *ubi)
 	kfree(cdev->name);
 }
 
+static void ubi_umount_volumes(struct ubi_device *ubi)
+{
+	int i;
+
+	for (i = 0; i < ubi->vtbl_slots; i++) {
+		struct ubi_volume *vol = ubi->volumes[i];
+		if (!vol)
+			continue;
+		umount_by_cdev(&vol->cdev);
+	}
+}
+
 /**
  * ubi_detach - detach an UBI device
  * @ubi_num: The UBI device number
  *
+ * UBI volumes used by UBIFS will be unmounted before detaching the
+ * UBI device.
+ *
  * @return: 0 for success, negative error code otherwise
  */
 int ubi_detach(int ubi_num)
@@ -278,5 +293,7 @@ int ubi_detach(int ubi_num)
 	if (!ubi)
 		return -ENOENT;
 
+	ubi_umount_volumes(ubi);
+
 	return ubi_detach_mtd_dev(ubi_num, 1);
 }
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
