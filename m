Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cABX9-0004eN-8I
 for barebox@lists.infradead.org; Fri, 25 Nov 2016 08:07:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 686EBA00447
 for <barebox@lists.infradead.org>; Fri, 25 Nov 2016 09:06:51 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 25 Nov 2016 09:06:07 +0100
Message-Id: <1480061167-21590-7-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 6/6] ubi: barebox: Remove character device flag from static
 volumes
To: barebox@lists.infradead.org

Character device flag was set for ubi static volumes to vary the device
file size. This is now done with the truncate option. So no need for
the character device flag. This makes it also possible to dump a image from
the static volume.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/barebox.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index 2ad731a..d67e566 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -244,9 +244,6 @@ int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
 	cdev->priv = priv;
 	cdev->size = vol->used_bytes;
 
-	if (vol->vol_type == UBI_STATIC_VOLUME)
-		cdev->flags = DEVFS_IS_CHARACTER_DEV;
-
 	cdev->dev = &vol->dev;
 	ubi_msg(ubi, "registering %s as /dev/%s", vol->name, cdev->name);
 	ret = devfs_create(cdev);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
