Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNWVE-0003iU-9j
 for barebox@lists.infradead.org; Thu, 24 Oct 2019 06:21:45 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 24 Oct 2019 08:21:37 +0200
Message-Id: <20191024062137.2135-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] efi: populate boot source instance
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We already determine the boot source variable at core init level, but so
far we didn't populate the instance because the numbering of the block
devices isn't known that early. Introduce a helper to check if a block
device is the boot source and if it is, have the block device driver
populate the missing boot source instance.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/block/efi-block-io.c | 17 +++++++++++++----
 drivers/efi/efi-device.c     |  8 +++++++-
 include/efi/efi-device.h     |  1 +
 3 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index d167d814c2a4..39dbfb0f7ada 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -14,6 +14,7 @@
 #include <disks.h>
 #include <efi/efi.h>
 #include <efi/efi-device.h>
+#include <bootsource.h>
 
 #define EFI_BLOCK_IO_PROTOCOL_REVISION2 0x00020001
 #define EFI_BLOCK_IO_PROTOCOL_REVISION3 ((2<<16) | (31))
@@ -145,6 +146,7 @@ static int is_bio_usbdev(struct efi_device *efidev)
 static int efi_bio_probe(struct efi_device *efidev)
 {
 	int ret;
+	int instance;
 	struct efi_bio_priv *priv;
 	struct efi_block_io_media *media;
 
@@ -159,10 +161,14 @@ static int efi_bio_probe(struct efi_device *efidev)
 	efi_bio_print_info(priv);
 	priv->dev = &efidev->dev;
 
-	if (is_bio_usbdev(efidev))
-		priv->blk.cdev.name = xasprintf("usbdisk%d", cdev_find_free_index("usbdisk"));
-	else
-		priv->blk.cdev.name = xasprintf("disk%d", cdev_find_free_index("disk"));
+	if (is_bio_usbdev(efidev)) {
+		instance = cdev_find_free_index("usbdisk");
+		priv->blk.cdev.name = xasprintf("usbdisk%d", instance);
+	} else {
+		instance = cdev_find_free_index("disk");
+		priv->blk.cdev.name = xasprintf("disk%d", instance);
+	}
+
 	priv->blk.blockbits = ffs(media->block_size) - 1;
 	priv->blk.num_blocks = media->last_block + 1;
 	priv->blk.ops = &efi_bio_ops;
@@ -174,6 +180,9 @@ static int efi_bio_probe(struct efi_device *efidev)
 	if (ret)
 		return ret;
 
+	if (efi_get_bootsource() == efidev)
+		bootsource_set_instance(instance);
+
 	parse_partition_table(&priv->blk);
 
 	return 0;
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 68d81caf010b..a1aac2dd31be 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -398,13 +398,19 @@ static int is_bio_usbdev(struct efi_device *efidev)
 	return 0;
 }
 
+static struct efi_device *bootdev;
+
+struct efi_device *efi_get_bootsource(void)
+{
+	return bootdev;
+}
+
 static void efi_set_bootsource(void)
 {
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
 	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
 
 	efi_handle_t *efi_parent;
-	struct efi_device *bootdev;
 
 	if (!efi_loaded_image->parent_handle)
 		goto out;
diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
index 15c293bb1b8f..5eaf1f260d56 100644
--- a/include/efi/efi-device.h
+++ b/include/efi/efi-device.h
@@ -43,5 +43,6 @@ static inline int efi_driver_register(struct efi_driver *efidrv)
 
 int efi_connect_all(void);
 void efi_register_devices(void);
+struct efi_device *efi_get_bootsource(void);
 
 #endif /* __EFI_EFI_DEVICE_H */
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
