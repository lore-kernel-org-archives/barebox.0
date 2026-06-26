Delivery-date: Fri, 26 Jun 2026 10:46:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2D7-00A10I-2E
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:46:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2D2-0005Ot-NF
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:46:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0jzbGuH+M4WlPY85ZepWljjScRvm9FJ1Yzxsopwsd/E=; b=sAHKnTNc4/f3pwwzSLF+TQlUkV
	dm2WLX2ISa8wDPIb4w83hF326kPSS6uEBGGbW0zpIDGrf8j5rgCVL/73axS8MLjLR7AVUzdL8FvNr
	Zw705lXtxi6FlbOrmyd+Ld6Rb0DXOQVgVfutHA6L6r8Vdwt53B8DYgK2P9FAr6IbNaDmF4fo466Ym
	zColmzUWVUZKMXn8JH0laWueu+vbv/PWbHwK9aaoLDY/9p4REBYSnvleNiquXv7Ioc/ft0PtprKfB
	lpuiOpAy08YEO/bzawIy1paHy/Kl5G3MvbZev08fNuZE8tXvH+tx2LA0qmC0VD2SBuFrEe4KtKXuS
	twAW7uxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cg-0000000AtJe-0AZi;
	Fri, 26 Jun 2026 08:46:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cd-0000000AtEs-0Gnf
	for barebox@bombadil.infradead.org;
	Fri, 26 Jun 2026 08:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=0jzbGuH+M4WlPY85ZepWljjScRvm9FJ1Yzxsopwsd/E=; b=gaIUzEfseNo1Nfb1qvlO5qmntM
	M/gId8Cp2aRC1vF9v7kpzBNkYR15J+VszI53+rN60NPiqF39xdh3yXgstaT7aE/M1PVs0PY8N80IJ
	RkRWDwxZlos42C21F0tb/LBTmgavWvAGbYekk3Rrmlur68HiKpqdwFOOEfHSjOl4PtVwZN52xSHF+
	F7vQwyVK07XmIKodV/IiDYMqpFCSVOTA1hwfXsBjGIZCjwG9vPrMD50pQ4Gwnka85cdNC50MWw9JY
	YWc4j9uwWu0efozblFS72KjSmfrXrIymVOumgZapCMuLjBuiiYe+yIxHWal/lxRpnzx9cFkv1ndsg
	KYaD9eQw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wd2CY-00000004cm6-0Dbm
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CW-0003ZP-H4; Fri, 26 Jun 2026 10:46:16 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:34 +0200
Message-ID: <20260626084608.1388806-24-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_094618_478502_973C2F45 
X-CRM114-Status: GOOD (  12.74  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 23/26] usb-storage: preserve READ CAPACITY sector size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

READ CAPACITY reports the logical sector size, but as the common block and
partition support used to be incompatible with non-512-byte sectors, it
just warned about non-512-byte media and forced SECTOR_SHIFT anyway.

Remove the hardcoded SECTOR_SHIFT/SECTOR_SIZE instances to gain support
for 4K-sectors and more.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/usb/storage/usb.c | 44 +++++++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 18 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index b3116dc6e6c2..a991a589dd48 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -11,6 +11,7 @@
 #include <init.h>
 #include <malloc.h>
 #include <dma.h>
+#include <disks.h>
 #include <errno.h>
 #include <scsi.h>
 #include <linux/usb/usb.h>
@@ -150,6 +151,22 @@ static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev, u64 timeout_n
 	return ret ? -ENODEV : 0;
 }
 
+static int usb_stor_set_capacity(struct us_blk_dev *usb_blkdev, sector_t lba,
+				 unsigned int sector_size)
+{
+	struct device *dev = &usb_blkdev->us->pusb_dev->dev;
+	int blockbits;
+
+	blockbits = block_size_bits(dev, sector_size);
+	if (blockbits < 0)
+		return blockbits;
+
+	usb_blkdev->blk.blockbits = blockbits;
+	usb_blkdev->blk.num_blocks = lba + 1;
+
+	return 0;
+}
+
 static int read_capacity_16(struct us_blk_dev *usb_blkdev)
 {
 	struct device *dev = &usb_blkdev->us->pusb_dev->dev;
@@ -186,10 +203,7 @@ static int read_capacity_16(struct us_blk_dev *usb_blkdev)
 		goto fail;
 	}
 
-	usb_blkdev->blk.blockbits = SECTOR_SHIFT;
-	usb_blkdev->blk.num_blocks = lba + 1;
-
-	ret = sector_size;
+	ret = usb_stor_set_capacity(usb_blkdev, lba, sector_size);
 fail:
 	dma_free(data);
 	return ret;
@@ -222,13 +236,7 @@ static int read_capacity_10(struct us_blk_dev *usb_blkdev)
 	dev_dbg(dev, "LBA (10) = 0x%llx w/ sector size = %u\n",
 		lba, sector_size);
 
-	if (sector_size != SECTOR_SIZE)
-		dev_warn(dev, "Support only %d bytes sectors\n", SECTOR_SIZE);
-
-	usb_blkdev->blk.num_blocks = lba + 1;
-	usb_blkdev->blk.blockbits = SECTOR_SHIFT;
-
-	ret = SECTOR_SIZE;
+	ret = usb_stor_set_capacity(usb_blkdev, lba, sector_size);
 fail:
 	dma_free(data);
 	return ret;
@@ -237,6 +245,7 @@ static int read_capacity_10(struct us_blk_dev *usb_blkdev)
 static int usb_stor_io_16(struct us_blk_dev *usb_blkdev, u8 opcode,
 			  sector_t start, u8 *data, u16 blocks)
 {
+	u32 bytes = (u32)blocks << usb_blkdev->blk.blockbits;
 	u8 cmd[16];
 
 	memset(cmd, 0, sizeof(cmd));
@@ -244,13 +253,14 @@ static int usb_stor_io_16(struct us_blk_dev *usb_blkdev, u8 opcode,
 	put_unaligned_be64(start, &cmd[2]);
 	put_unaligned_be32(blocks, &cmd[10]);
 
-	return usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data,
-				  blocks * SECTOR_SIZE, 10, 0);
+	return usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data, bytes,
+				  10, 0);
 }
 
 static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 opcode,
 			  sector_t start, u8 *data, u16 blocks)
 {
+	u32 bytes = (u32)blocks << usb_blkdev->blk.blockbits;
 	u8 cmd[10];
 
 	memset(cmd, 0, sizeof(cmd));
@@ -258,8 +268,8 @@ static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 opcode,
 	put_unaligned_be32(start, &cmd[2]);
 	put_unaligned_be16(blocks, &cmd[7]);
 
-	return usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data,
-				  blocks * SECTOR_SIZE, 10, 0);
+	return usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data, bytes,
+				  10, 0);
 }
 
 /***********************************************************************
@@ -315,7 +325,7 @@ static int usb_stor_blk_io(struct block_device *disk_dev,
 
 		sector_start += n;
 		sector_count -= n;
-		buffer += n * SECTOR_SIZE;
+		buffer += (u32)n << disk_dev->blockbits;
 	}
 
 	return sector_count ? -EIO : 0;
@@ -420,7 +430,6 @@ static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 	dev_info(dev, "registering as disk%d\n", result);
 
 	pblk_dev->blk.cdev.name = basprintf("disk%d", result);
-	pblk_dev->blk.blockbits = SECTOR_SHIFT;
 	pblk_dev->blk.type = BLK_TYPE_USB;
 	pblk_dev->blk.removable = true;
 	pblk_dev->blk.rootwait = true;
@@ -631,4 +640,3 @@ static int __init usb_stor_init(void)
 	return usb_driver_register(&usb_storage_driver);
 }
 device_initcall(usb_stor_init);
-
-- 
2.47.3



