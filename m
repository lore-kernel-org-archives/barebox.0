Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo4.mail-out.ovh.net ([178.33.251.8])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e7ygD-0002R4-FE
 for barebox@lists.infradead.org; Fri, 27 Oct 2017 07:03:47 +0000
Received: from player798.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with ESMTP id 7D0BCEB055
 for <barebox@lists.infradead.org>; Fri, 27 Oct 2017 09:03:21 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Oct 2017 09:05:48 +0200
Message-Id: <1509087948-15969-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1509087948-15969-1-git-send-email-plagnioj@jcrosoft.com>
References: <1509087948-15969-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] efi-block: detect when the block device is a USB Disk
To: barebox@lists.infradead.org

use usbdisk as a basename

This will be usefull as example when we want to search for a usb disk for
failsafe update or install.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/block/efi-block-io.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index a4d9d3a95..2bbeb99e6 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -130,6 +130,18 @@ static void efi_bio_print_info(struct efi_bio_priv *priv)
 			media->optimal_transfer_length_granularity);
 }
 
+static int is_bio_usbdev(struct efi_device *efidev)
+{
+	int i;
+
+	for (i = 0; i < efidev->num_guids; i++) {
+		if (!efi_guidcmp(efidev->guids[i], EFI_USB_IO_PROTOCOL_GUID))
+			return 1;
+	}
+
+	return 0;
+}
+
 int efi_bio_probe(struct efi_device *efidev)
 {
 	int ret;
@@ -147,7 +159,10 @@ int efi_bio_probe(struct efi_device *efidev)
 	efi_bio_print_info(priv);
 	priv->dev = &efidev->dev;
 
-	priv->blk.cdev.name = xasprintf("disk%d", cdev_find_free_index("disk"));
+	if (is_bio_usbdev(efidev))
+		priv->blk.cdev.name = xasprintf("usbdisk%d", cdev_find_free_index("usbdisk"));
+	else
+		priv->blk.cdev.name = xasprintf("disk%d", cdev_find_free_index("disk"));
 	priv->blk.blockbits = ffs(media->block_size) - 1;
 	priv->blk.num_blocks = media->last_block + 1;
 	priv->blk.ops = &efi_bio_ops;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
