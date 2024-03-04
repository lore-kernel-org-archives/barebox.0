Delivery-date: Mon, 04 Mar 2024 20:05:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDcU-008d9f-2r
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:05:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDcS-0000Ah-RT
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:05:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tPGGMExW+V1HwEAZ2/bY1FJFaNsdvmndmYKa2SjSUak=; b=aStMlqBKA5ka+xViWntre5qNkB
	cX6fk9ORjbJq97zhiiW52EbWz+jXMc1KOBou2Gmas3pWRig4mgEfSTmUl7s44GegW5RE7wWAfnpKu
	VmlHnD7E2i88V6mmoW1abKBQONTImPWOH68+HWVoDukFnxpdznxgTuaHRndGKacqBrrFiv2lIyYXU
	/t5wxQvapZ0ft/UVLk8G2T2ivbDX9S3Q0jS4dzORszSkiugsvyrfq0IXtABFpJFjDp6s3/N6pLw1d
	RFHG/9dWXk5kYaygAkWLTYWigdz3MrA2UikNsb9ETa4cpWZyEmDCDL9iikBe4zOuCT//kVZVT7Bsu
	vE3uBdSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDbs-0000000AJWo-3YNw;
	Mon, 04 Mar 2024 19:04:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaO-0000000AIQL-0yjt
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=tPGGMExW+V1HwEAZ2/bY1FJFaNsdvmndmYKa2SjSUak=; b=bd9LcXbReZStnQ6dhohsJmphyF
	pS1t4nU4wvzPOqyXs3TJb1kWOPGqqyfIXhXLb5xLBRB2O601pQevQzvrO2l2F1mPzM8JrfTXR1LK/
	rPrP7vX+BNoJVQ+9KXbdoifmVokcGVaHSPBEnTicKJx1rYmgCjjvQXbREX/3mJ0zwq++EIG3kSsaK
	8d4QSbzAERXEqiJKrn09sHti5IaDFWFg8sepko+NJ1e7TrA2XGe2ABnKThFY6ix8Ebs5gKq1E3PXP
	bDzsVT63xxISJRLd71hvPHoa6JK7XHFGNfcItYSd76V+nftdgSNubukMaanXSnZFnB5UobS9+rnQk
	A23FSwTg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaG-000000051vp-053O
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-00063R-Ta; Mon, 04 Mar 2024 20:02:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-004PI5-EN; Mon, 04 Mar 2024 20:02:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-0K;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:08 +0100
Message-Id: <20240304190038.3486881-24-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190244_167463_B569D94A 
X-CRM114-Status: GOOD (  14.81  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 023/113] block: record block device type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Software running under EFI can query the type of a block device. For
barebox to be able to report this, start assigning types to all block
devices it can create. No functional change yet.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix typo breaking compilation of disk_ata_drive.c
---
 arch/sandbox/board/hostfile.c |  1 +
 common/block.c                | 24 ++++++++++++++++++++++++
 drivers/ata/ahci.c            |  1 +
 drivers/ata/disk_ata_drive.c  |  1 +
 drivers/block/efi-block-io.c  |  1 +
 drivers/block/virtio_blk.c    |  1 +
 drivers/mci/mci-core.c        |  1 +
 drivers/nvme/host/core.c      |  1 +
 drivers/usb/storage/usb.c     |  1 +
 include/ata_drive.h           |  5 +++--
 include/block.h               | 16 +++++++++++++++-
 11 files changed, 50 insertions(+), 3 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 88d4d6605fd1..7afad95b6d8b 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -161,6 +161,7 @@ static int hf_probe(struct device *dev)
 		priv->blk.ops = &hf_blk_ops;
 		priv->blk.blockbits = SECTOR_SHIFT;
 		priv->blk.num_blocks = reg[1] / SECTOR_SIZE;
+		priv->blk.type = BLK_TYPE_VIRTUAL;
 
 		err = blockdevice_register(&priv->blk);
 		if (err)
diff --git a/common/block.c b/common/block.c
index faf0e7c0cbe5..c7ca4fb4034a 100644
--- a/common/block.c
+++ b/common/block.c
@@ -495,3 +495,27 @@ unsigned file_list_add_blockdevs(struct file_list *files)
 
 	return count;
 }
+
+const char *blk_type_str(enum blk_type type)
+{
+	switch (type) {
+	case BLK_TYPE_UNSPEC:
+		return "unspecified";
+	case BLK_TYPE_SD:
+		return "SD";
+	case BLK_TYPE_MMC:
+		return "MMC";
+	case BLK_TYPE_VIRTUAL:
+		return "virtual";
+	case BLK_TYPE_IDE:
+		return "IDE";
+	case BLK_TYPE_AHCI:
+		return "AHCI";
+	case BLK_TYPE_USB:
+		return "USB";
+	case BLK_TYPE_NVME:
+		return "NVMe";
+	default:
+		return "unknown";
+	}
+}
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index d4d1005f6165..de6748288141 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -624,6 +624,7 @@ int ahci_add_host(struct ahci_device *ahci)
 		ahci_port->ata.dev = ahci->dev;
 		ahci_port->port_mmio = ahci_port_base(ahci->mmio_base, i);
 		ahci_port->ata.ops = &ahci_ops;
+		ahci_port->ata.ahci = true;
 		ata_port_register(&ahci_port->ata);
 	}
 
diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 2d97710b827a..a49acc1641da 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -245,6 +245,7 @@ static int ata_port_init(struct ata_port *port)
 
 	port->blk.num_blocks = ata_id_n_sectors(port->id);
 	port->blk.blockbits = SECTOR_SHIFT;
+	port->blk.type = port->ahci ? BLK_TYPE_AHCI : BLK_TYPE_IDE;
 
 	rc = blockdevice_register(&port->blk);
 	if (rc != 0) {
diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 79a62d53d30a..810b6da32d55 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -179,6 +179,7 @@ static int efi_bio_probe(struct efi_device *efidev)
 	priv->blk.num_blocks = media->last_block + 1;
 	priv->blk.ops = &efi_bio_ops;
 	priv->blk.dev = &efidev->dev;
+	priv->blk.type = BLK_TYPE_VIRTUAL;
 
 	priv->media_id = media->media_id;
 
diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index 625daf6879c0..cbef500d59b3 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -105,6 +105,7 @@ static int virtio_blk_probe(struct virtio_device *vdev)
 	virtio_cread(vdev, struct virtio_blk_config, capacity, &cap);
 	priv->blk.num_blocks = cap;
 	priv->blk.ops = &virtio_blk_ops;
+	priv->blk.type = BLK_TYPE_VIRTUAL;
 
 	return blockdevice_register(&priv->blk);
 }
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 663d366666b0..bd9083b9f77c 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1901,6 +1901,7 @@ static int mci_register_partition(struct mci_part *part)
 	 */
 	part->blk.dev = &mci->dev;
 	part->blk.ops = &mci_ops;
+	part->blk.type = IS_SD(mci) ? BLK_TYPE_SD : BLK_TYPE_MMC;
 
 	rc = blockdevice_register(&part->blk);
 	if (rc != 0) {
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 79a5f9325ef8..33a592caeb14 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -361,6 +361,7 @@ static void nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 
 	ns->blk.dev = ctrl->dev;
 	ns->blk.ops = &nvme_block_device_ops;
+	ns->blk.type = BLK_TYPE_NVME;
 	ns->blk.cdev.name = strdup(disk_name);
 
 	__nvme_revalidate_disk(&ns->blk, id);
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index f281e0186d68..cc241e69be1b 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -421,6 +421,7 @@ static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 
 	pblk_dev->blk.cdev.name = basprintf("disk%d", result);
 	pblk_dev->blk.blockbits = SECTOR_SHIFT;
+	pblk_dev->blk.type = BLK_TYPE_USB;
 
 	result = blockdevice_register(&pblk_dev->blk);
 	if (result != 0) {
diff --git a/include/ata_drive.h b/include/ata_drive.h
index 47b74826866c..e840d89f4ae8 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -134,8 +134,9 @@ struct ata_port {
 	void *drvdata;
 	struct block_device blk;
 	uint16_t *id;
-	int lba48;
-	int initialized;
+	bool lba48;
+	bool initialized;
+	bool ahci;
 	int probe;
 };
 
diff --git a/include/block.h b/include/block.h
index e27579cdbd49..a0f226c7649f 100644
--- a/include/block.h
+++ b/include/block.h
@@ -17,11 +17,25 @@ struct block_device_ops {
 
 struct chunk;
 
+enum blk_type {
+	BLK_TYPE_UNSPEC = 0,
+	BLK_TYPE_USB,
+	BLK_TYPE_SD,
+	BLK_TYPE_AHCI,
+	BLK_TYPE_IDE,
+	BLK_TYPE_NVME,
+	BLK_TYPE_VIRTUAL,
+	BLK_TYPE_MMC,
+};
+
+const char *blk_type_str(enum blk_type);
+
 struct block_device {
 	struct device *dev;
 	struct list_head list;
 	struct block_device_ops *ops;
-	int blockbits;
+	u8 blockbits;
+	u8 type; /* holds enum blk_type */
 	blkcnt_t num_blocks;
 	int rdbufsize;
 	int blkmask;
-- 
2.39.2



