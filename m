Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAzmb-00013M-4p
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 08:55:53 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 10 Sep 2012 10:55:47 +0200
Message-Id: <1347267347-9739-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1347267347-9739-1-git-send-email-jlu@pengutronix.de>
References: <1347267347-9739-1-git-send-email-jlu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] drivers/nor/cfi_flash: use IS_ENABLED instead of an ifdef
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/nor/cfi_flash.c |    8 +++-----
 drivers/nor/cfi_flash.h |    2 --
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 16885c0..d9347b2 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -917,7 +917,6 @@ struct file_operations cfi_ops = {
 	.memmap  = generic_memmap_ro,
 };
 
-#ifdef CONFIG_PARTITION_NEED_MTD
 static int cfi_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
 		size_t *retlen, u_char *buf)
 {
@@ -977,7 +976,6 @@ static void cfi_init_mtd(struct flash_info *info)
 	mtd->flags = MTD_CAP_NORFLASH;
 	info->cdev.mtd = mtd;
 }
-#endif
 
 static int cfi_probe (struct device_d *dev)
 {
@@ -1006,9 +1004,9 @@ static int cfi_probe (struct device_d *dev)
 	info->cdev.ops = &cfi_ops;
 	info->cdev.priv = info;
 
-#ifdef CONFIG_PARTITION_NEED_MTD
-	cfi_init_mtd(info);
-#endif
+	if (IS_ENABLED(CONFIG_PARTITION_NEED_MTD))
+		cfi_init_mtd(info);
+
 	devfs_create(&info->cdev);
 
 	return 0;
diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index fec0894..1bfe81c 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -75,9 +75,7 @@ struct flash_info {
 	ulong	addr_unlock2;		/* unlock address 2 for AMD flash roms	*/
 	struct cfi_cmd_set *cfi_cmd_set;
 	struct cdev cdev;
-#ifdef CONFIG_PARTITION_NEED_MTD
 	struct mtd_info mtd;
-#endif
 	int numeraseregions;
 	struct mtd_erase_region_info *eraseregions;
 	void *base;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
