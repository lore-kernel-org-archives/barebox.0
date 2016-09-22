Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmylg-0006Sx-Nt
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 07:50:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 09:49:26 +0200
Message-Id: <1474530566-23625-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] mtd: ubi: remove now unused ioctls
To: Barebox List <barebox@lists.infradead.org>

The only ioctl needed is the one to get the ubi_num from a file
descriptor. The remaining ioctls are now implemented as regular
function calls.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/barebox.c | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index cb9223e..23c4bfd 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -282,23 +282,14 @@ int ubi_api_remove_volume(struct ubi_volume_desc *desc, int no_vtbl)
 
 static int ubi_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
 {
-	struct ubi_volume_desc *desc;
 	struct ubi_device *ubi = cdev->priv;
-	struct ubi_mkvol_req *req = buf;
 
 	switch (cmd) {
-	case UBI_IOCRMVOL:
-		desc = ubi_open_volume_nm(ubi->ubi_num, req->name,
-                                           UBI_EXCLUSIVE);
-		if (IS_ERR(desc))
-			return PTR_ERR(desc);
-		ubi_remove_volume(desc, 0);
-		ubi_close_volume(desc);
-		break;
-	case UBI_IOCMKVOL:
-		if (!req->bytes)
-			req->bytes = (__s64)ubi->avail_pebs * ubi->leb_size;
-		return ubi_create_volume(ubi, req);
+	/*
+	 * Only supported ioctl is a barebox specific one to get the ubi_num
+	 * from the file descriptor. The rest is implemented as function calls
+	 * directly.
+	 */
 	case UBI_IOCGETUBINUM:
 		*(u32 *)buf = ubi->ubi_num;
 		break;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
