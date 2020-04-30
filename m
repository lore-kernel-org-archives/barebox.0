Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5Wp-0007Tv-RP
 for barebox@lists.infradead.org; Thu, 30 Apr 2020 09:30:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 Apr 2020 11:30:42 +0200
Message-Id: <20200430093042.25219-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ubi: Refuse to attach partitioned mtd devices
To: Barebox List <barebox@lists.infradead.org>

When a mtd device has partitions it is wrong to attach the whole device
as this would corrupt the partitions. Refuse to attach it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/build.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 604fe87e53..da409010f7 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -508,6 +508,14 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	struct ubi_device *ubi;
 	int i, err, ref = 0;
 
+	/*
+	 * Do not try to attach an UBI device if this device has partitions
+	 * as it's not a good idea to attach UBI on a raw device when the
+	 * real UBI only spans the first partition.
+	 */
+	if (!list_empty(&mtd->partitions))
+		return -EBUSY;
+
 	if (max_beb_per1024 < 0 || max_beb_per1024 > MAX_MTD_UBI_BEB_LIMIT)
 		return -EINVAL;
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
