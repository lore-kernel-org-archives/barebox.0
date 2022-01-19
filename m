Delivery-date: Wed, 19 Jan 2022 10:30:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nA7IL-006VBI-UN
	for lore@lore.pengutronix.de; Wed, 19 Jan 2022 10:30:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nA7IK-0001kF-Bh
	for lore@pengutronix.de; Wed, 19 Jan 2022 10:30:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MNFjU7mz3WGnuHipaZIySrrvTFnKo4LtO6WE/d2CxA0=; b=pAksby4tNLtZdv
	4DluMtLZEB2YGSN+uBrvBEU5x+WyVRK6HRdJNT6yr6QvlbqLG0iff6IhmPMIwdJGy8CbbKFP5jIkC
	COQKCkMw83JZEBEoLVKn569zoVWMlrVq7oMsmLUkV9ttK5NnH2q5Sxgv8QS1OvMl8aqofxmxPp/UK
	GwomNqvJSSvS4v6vfMfELzOunbNhiTPrWyjvsKoLlF8lzHE3PtP8PEUMS/xv0bVxmCDOs+qKXoyPM
	wFxGGRtRULVrGlC5MRMEwfJpqCZR9UK7WqF+eGgciJzmeU3paQqZ/1hGoErWvxoLFbM64Tq6JqAdD
	LpezS1pV2x0FanScTMAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA7Gg-004ZQB-Ve; Wed, 19 Jan 2022 09:28:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA7Gb-004ZOJ-BQ
 for barebox@lists.infradead.org; Wed, 19 Jan 2022 09:28:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nA7GW-0001VU-RM; Wed, 19 Jan 2022 10:28:28 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nA7GW-006C25-CZ; Wed, 19 Jan 2022 10:28:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 19 Jan 2022 10:28:27 +0100
Message-Id: <20220119092827.1476170-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_012833_433038_05DEA101 
X-CRM114-Status: GOOD (  15.41  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] block: efi-block-io: add devinfo callback for media info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's some useful info in efi_block_io_media that's only compiled in
at debug log level. While we need not print it always, it would be nice
to have this printed when doing devinfo. Add a custom devinfo callback
that does so and that invokes the normal EFI devinfo afterwards.

Defining DEBUG in the file will still print it early in probe as before.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/block/efi-block-io.c | 42 +++++++++++++++++++++++-------------
 1 file changed, 27 insertions(+), 15 deletions(-)

diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index ff0e467d2c4f..fc6832294b37 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -52,6 +52,7 @@ struct efi_bio_priv {
 	struct device_d *dev;
 	struct block_device blk;
 	u32 media_id;
+	void (*efi_info)(struct device_d *);
 };
 
 static int efi_bio_read(struct block_device *blk, void *buffer, sector_t block,
@@ -101,35 +102,40 @@ static struct block_device_ops efi_bio_ops = {
 	.flush = efi_bio_flush,
 };
 
-static void efi_bio_print_info(struct efi_bio_priv *priv)
+static void efi_bio_print_info(struct device_d *dev)
 {
+	struct efi_bio_priv *priv = dev->priv;
 	struct efi_block_io_media *media = priv->protocol->media;
 	u64 revision = priv->protocol->revision;
 
-	dev_dbg(priv->dev, "revision: 0x%016llx\n", revision);
-	dev_dbg(priv->dev, "media_id: 0x%08x\n", media->media_id);
-	dev_dbg(priv->dev, "removable_media: %d\n", media->removable_media);
-	dev_dbg(priv->dev, "media_present: %d\n", media->media_present);
-	dev_dbg(priv->dev, "logical_partition: %d\n", media->logical_partition);
-	dev_dbg(priv->dev, "read_only: %d\n", media->read_only);
-	dev_dbg(priv->dev, "write_caching: %d\n", media->write_caching);
-	dev_dbg(priv->dev, "block_size: 0x%08x\n", media->block_size);
-	dev_dbg(priv->dev, "io_align: 0x%08x\n", media->io_align);
-	dev_dbg(priv->dev, "last_block: 0x%016llx\n", media->last_block);
+	printf("Protocols:\n");
+	printf("  revision: 0x%016llx\n", revision);
+	printf("  media_id: 0x%08x\n", media->media_id);
+	printf("  removable_media: %d\n", media->removable_media);
+	printf("  media_present: %d\n", media->media_present);
+	printf("  logical_partition: %d\n", media->logical_partition);
+	printf("  read_only: %d\n", media->read_only);
+	printf("  write_caching: %d\n", media->write_caching);
+	printf("  block_size: 0x%08x\n", media->block_size);
+	printf("  io_align: 0x%08x\n", media->io_align);
+	printf("  last_block: 0x%016llx\n", media->last_block);
 
 	if (revision < EFI_BLOCK_IO_PROTOCOL_REVISION2)
 		return;
 
-	dev_dbg(priv->dev, "u64 lowest_aligned_lba: 0x%08llx\n",
+	printf("  lowest_aligned_lba: 0x%08llx\n",
 			media->lowest_aligned_lba);
-	dev_dbg(priv->dev, "logical_blocks_per_physical_block: 0x%08x\n",
+	printf("  logical_blocks_per_physical_block: 0x%08x\n",
 			media->logical_blocks_per_physical_block);
 
 	if (revision < EFI_BLOCK_IO_PROTOCOL_REVISION3)
 		return;
 
-	dev_dbg(priv->dev, "optimal_transfer_length_granularity: 0x%08x\n",
+	printf("  optimal_transfer_length_granularity: 0x%08x\n",
 			media->optimal_transfer_length_granularity);
+
+	if (priv->efi_info)
+		priv->efi_info(dev);
 }
 
 static bool is_bio_usbdev(struct efi_device *efidev)
@@ -143,6 +149,7 @@ static int efi_bio_probe(struct efi_device *efidev)
 	int instance;
 	struct efi_bio_priv *priv;
 	struct efi_block_io_media *media;
+	struct device_d *dev = &efidev->dev;
 
 	priv = xzalloc(sizeof(*priv));
 
@@ -151,8 +158,13 @@ static int efi_bio_probe(struct efi_device *efidev)
 	if (!priv->protocol)
 		return -ENODEV;
 
+	dev->priv = priv;
+	priv->efi_info = dev->info;
+	dev->info = efi_bio_print_info;
+
 	media = priv->protocol->media;
-	efi_bio_print_info(priv);
+	if (__is_defined(DEBUG))
+		efi_bio_print_info(dev);
 	priv->dev = &efidev->dev;
 
 	if (is_bio_usbdev(efidev)) {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

