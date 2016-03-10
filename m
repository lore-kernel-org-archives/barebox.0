Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1advzM-0002xH-Kg
 for barebox@lists.infradead.org; Thu, 10 Mar 2016 08:30:34 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Thu, 10 Mar 2016 09:29:55 +0100
Message-Id: <1457598600-10669-3-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 3/8] ubi: Add getter ubi_volume_get_cdev()
To: barebox@lists.infradead.org

cdev is used in a future commit to find the mounted filesystems.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/mtd/ubi/kapi.c  | 5 +++++
 include/linux/mtd/ubi.h | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
index 7fc1aa8d70cc..c2e58e865753 100644
--- a/drivers/mtd/ubi/kapi.c
+++ b/drivers/mtd/ubi/kapi.c
@@ -308,6 +308,11 @@ void ubi_close_volume(struct ubi_volume_desc *desc)
 }
 EXPORT_SYMBOL_GPL(ubi_close_volume);
 
+struct cdev *ubi_volume_get_cdev(struct ubi_volume_desc *vol)
+{
+	return &vol->vol->cdev;
+}
+
 /**
  * ubi_leb_read - read data.
  * @desc: volume descriptor
diff --git a/include/linux/mtd/ubi.h b/include/linux/mtd/ubi.h
index 0614681d731c..0725b04f9dfd 100644
--- a/include/linux/mtd/ubi.h
+++ b/include/linux/mtd/ubi.h
@@ -218,6 +218,8 @@ int ubi_is_mapped(struct ubi_volume_desc *desc, int lnum);
 int ubi_sync(int ubi_num);
 int ubi_flush(int ubi_num, int vol_id, int lnum);
 
+struct cdev *ubi_volume_get_cdev(struct ubi_volume_desc *vol);
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
