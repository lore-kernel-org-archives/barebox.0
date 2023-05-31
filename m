Delivery-date: Wed, 31 May 2023 17:01:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NKD-004OBt-Qk
	for lore@lore.pengutronix.de; Wed, 31 May 2023 17:01:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NK8-00016I-Sl
	for lore@pengutronix.de; Wed, 31 May 2023 17:01:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=APZkjSQXpWBg1UyURI2juKxG3mq/LerGho1L7BSppXo=; b=PbaAckM/Z40U0uv3Jrq6Vsv2mU
	w4l+QLYekRiZVw5DhqQ9NP2+WHW+1f5S3h/mye497LpAEiP7I13YuBmyGzNNTCr4q3fDonUNRFRFm
	i5SsclfA9Dv2jisE2n0oBzN1LYu4UO/AaITrc4ZCGGdFOoSuwkMxs3hZz0ufXR5k2OFPhdp249Z6i
	QpDu2B1Jti9LQlnzHIlEEomnN2th+3mqG0Z8IjOtJX/9smTVhtrBslxtqjqxfKJLstTycZk2Ieko9
	sJ4fvfPQhCiuLhVBSxpsfzekrnsBEhwybwIt4Ef25DxF0asEIc/cTLgLdOfAXmvlJ/rLeLlSMyQfm
	5rfanVcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIz-000CFV-2R;
	Wed, 31 May 2023 15:00:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIb-000BsO-1h
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 14:59:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0008EC-5L; Wed, 31 May 2023 16:59:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIS-0048HL-JT; Wed, 31 May 2023 16:59:32 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIQ-005sD8-8d; Wed, 31 May 2023 16:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 16:59:20 +0200
Message-Id: <20230531145927.1399282-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_075941_727755_7643FC2D 
X-CRM114-Status: GOOD (  16.92  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/18] block: parse partition table on block device registration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Every instance where we register a block device, it's followed by an
attempt to parse the partition table, most often with a warning when
it fails. Thus let's move partition table parsing into
blockdevice_register.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/hostfile.c | 4 ----
 common/block.c                | 6 ++++++
 drivers/ata/disk_ata_drive.c  | 5 -----
 drivers/block/efi-block-io.c  | 9 +--------
 drivers/block/virtio_blk.c    | 8 +-------
 drivers/mci/mci-core.c        | 6 ------
 drivers/nvme/host/core.c      | 5 -----
 drivers/usb/storage/usb.c     | 5 -----
 8 files changed, 8 insertions(+), 40 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index d0f400787d7a..a1ab06b87770 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -166,10 +166,6 @@ static int hf_probe(struct device *dev)
 		if (err)
 			return err;
 
-		err = parse_partition_table(&priv->blk);
-		if (err)
-			dev_warn(dev, "No partition table found\n");
-
 		dev_info(dev, "registered as block device\n");
 	} else {
 		cdev->name = np->name;
diff --git a/common/block.c b/common/block.c
index c39269d3a692..98adcfdf3dab 100644
--- a/common/block.c
+++ b/common/block.c
@@ -6,6 +6,7 @@
  */
 #include <common.h>
 #include <block.h>
+#include <disks.h>
 #include <malloc.h>
 #include <linux/err.h>
 #include <linux/list.h>
@@ -408,6 +409,11 @@ int blockdevice_register(struct block_device *blk)
 
 	cdev_create_default_automount(&blk->cdev);
 
+	/* Lack of partition table is unusual, but not a failure */
+	ret = parse_partition_table(blk);
+	if (ret)
+		dev_warn(blk->dev, "No partition table found\n");
+
 	return 0;
 }
 
diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index c1c736a0a88a..2d97710b827a 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -254,11 +254,6 @@ static int ata_port_init(struct ata_port *port)
 
 	dev_info(dev, "registered /dev/%s\n", port->blk.cdev.name);
 
-	/* create partitions on demand */
-	rc = parse_partition_table(&port->blk);
-	if (rc != 0)
-		dev_warn(dev, "No partition table found\n");
-
 	return 0;
 
 on_error:
diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index eb4981e86298..7162106ab8ea 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -12,7 +12,6 @@
 #include <fcntl.h>
 #include <efi.h>
 #include <block.h>
-#include <disks.h>
 #include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 #include <bootsource.h>
@@ -184,16 +183,10 @@ static int efi_bio_probe(struct efi_device *efidev)
 
 	priv->media_id = media->media_id;
 
-	ret = blockdevice_register(&priv->blk);
-	if (ret)
-		return ret;
-
 	if (efi_get_bootsource() == efidev)
 		bootsource_set_raw_instance(instance);
 
-	parse_partition_table(&priv->blk);
-
-	return 0;
+	return blockdevice_register(&priv->blk);
 }
 
 static struct efi_driver efi_bio_driver = {
diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index 660f3a7b6b9b..11e52d9e6457 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -105,13 +105,7 @@ static int virtio_blk_probe(struct virtio_device *vdev)
 	priv->blk.num_blocks = cap;
 	priv->blk.ops = &virtio_blk_ops;
 
-	ret = blockdevice_register(&priv->blk);
-	if (ret)
-		return ret;
-
-	parse_partition_table(&priv->blk);
-
-	return 0;
+	return blockdevice_register(&priv->blk);
 }
 
 static void virtio_blk_remove(struct virtio_device *vdev)
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 6d0d6473770c..32edd5382386 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1900,12 +1900,6 @@ static int mci_register_partition(struct mci_part *part)
 		return 0;
 	}
 
-	rc = parse_partition_table(&part->blk);
-	if (rc != 0) {
-		/* Lack of partition table is unusual, but not a failure */
-		dev_warn(&mci->dev, "No partition table found\n");
-	}
-
 	if (np) {
 		of_parse_partitions(&part->blk.cdev, np);
 
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index bf9176ce0922..79a5f9325ef8 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1,6 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
-#include <disks.h>
 
 #include "nvme.h"
 
@@ -373,10 +372,6 @@ static void nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 		goto out_free_id;
 	}
 
-	ret = parse_partition_table(&ns->blk);
-	if (ret)
-		dev_warn(ctrl->dev, "No partition table found\n");
-
 	return;
 out_free_id:
 	kfree(id);
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 103ae293a3a4..dda713196071 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -420,11 +420,6 @@ static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 		goto BadDevice;
 	}
 
-	/* create partitions on demand */
-	result = parse_partition_table(&pblk_dev->blk);
-	if (result != 0)
-		dev_warn(dev, "No partition table found\n");
-
 	list_add_tail(&pblk_dev->list, &us->blk_dev_list);
 	dev_dbg(dev, "USB disk device successfully added\n");
 
-- 
2.39.2



