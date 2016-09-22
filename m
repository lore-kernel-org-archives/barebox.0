Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmylR-0006SJ-Q8
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 07:49:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 09:49:24 +0200
Message-Id: <1474530566-23625-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] mtd: ubi: introduce barebox specific ioctl to get ubi_num
To: Barebox List <barebox@lists.infradead.org>

Code wishing to manipulate ubi devices from outside the ubi
layer needs the ubi_num as reference. Add an ioctl to get
the ubi_num from a filedescriptor.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/barebox.c | 3 +++
 include/mtd/ubi-user.h    | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index 13c2a47..cb9223e 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -299,6 +299,9 @@ static int ubi_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
 		if (!req->bytes)
 			req->bytes = (__s64)ubi->avail_pebs * ubi->leb_size;
 		return ubi_create_volume(ubi, req);
+	case UBI_IOCGETUBINUM:
+		*(u32 *)buf = ubi->ubi_num;
+		break;
 	};
 
 	return 0;
diff --git a/include/mtd/ubi-user.h b/include/mtd/ubi-user.h
index 8c02f96..9425533 100644
--- a/include/mtd/ubi-user.h
+++ b/include/mtd/ubi-user.h
@@ -161,6 +161,8 @@
 /* Re-name volumes */
 #define UBI_IOCRNVOL _IOW(UBI_IOC_MAGIC, 3, struct ubi_rnvol_req)
 
+#define UBI_IOCGETUBINUM _IOR(UBI_IOC_MAGIC, 32, __u32)
+
 /* ioctl commands of the UBI control character device */
 
 #define UBI_CTRL_IOC_MAGIC 'o'
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
