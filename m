Delivery-date: Fri, 26 Jun 2026 10:47:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DM-00A11p-31
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DL-0005zE-FW
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cfnI/dujmtG8drBEa6mdPcbJzCkVwoSbutt/OhpkQ24=; b=AmnNPU/uqrTET9gxUW+I9ipY6z
	we7O87HlE/yJHGtHUsyieja3m/6nHeO1nbwxj5HBVtsIblkHRLs1AG4c8yWdRtVDc1uzl3Jqw7LFt
	9qyFFbdH7sttBMI6WxqDJxzi6QuG9erEv+COpuQsL5v/D/VPzmPx+TZKx504M5C5fNXSGmgLUfDct
	tSpd9I/YFuz+JLmqvDx/Cb+uCIslLqPjpQ7tjBeAGH2xHTct7kjo1qqp/LCLe4JBsilK8UvMEWmdx
	ckWJRpfD+z0PeVPxScdbJZQsqzOcQfx2nAVD7K3YIn+BzXTr+cSs2kq/fNRtYg5kWDl8Jsznq06Na
	oYgxWHbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cf-0000000AtJM-2SzM;
	Fri, 26 Jun 2026 08:46:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cc-0000000AtEp-49tD
	for barebox@bombadil.infradead.org;
	Fri, 26 Jun 2026 08:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=cfnI/dujmtG8drBEa6mdPcbJzCkVwoSbutt/OhpkQ24=; b=j0axQBIOnPyMp5syKdQYfnjPqc
	zQ/0S4htUXoFcjfygyWkjjwBtPu+EKkXR2a58JkM4fcG2WBGMv/2KVeqCkYvy3xJXouZ4HQoOkdfd
	eBA1xSHAX8AkzaqNrgZFhRm01fgymMwIwEVZznIShgeSAhxEFj+ByUkCD7ofwDRdHBre9kFzOK2uq
	yKXbud1cErHxmTbEvXPhx+J1AyNR0CXq7IQcSm9fH4T/VqJHCUYyU6Lf3BAmE9x2sbmaXd4QhS+f/
	+QDE5+ITzlSmgad8sE/hajftpfPaLSAXuxUN/IP8dQDlbnlGTabNQRVEQZ3j0dElEXBpf6MXv9Wxc
	ndolrEug==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wd2CY-00000004clu-0twu
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CU-0003ZP-Si; Fri, 26 Jun 2026 10:46:14 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:26 +0200
Message-ID: <20260626084608.1388806-16-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_094618_449102_3AF8C732 
X-CRM114-Status: GOOD (  11.62  )
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
Subject: [PATCH 15/26] efi: block: fix sector size mismatch in block device registration and ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi_bio_read/efi_bio_write use a hardcoded 512 byte multiplier for the
block sizes, while registration happens with whatever block size the EFI
Block I/O protocol had reported.

Drop the hardcoded 512 byte sector sizes and while at it, use
block_size_bits(), so invalid block sizes are rejected early.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/block/efi-block-io.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 8955a8c2b585..5f38409fb76d 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -34,7 +34,7 @@ static int efi_bio_read(struct block_device *blk, void *buffer, sector_t block,
 	efi_status_t efiret;
 
 	efiret = priv->protocol->read(priv->protocol, priv->media_id,
-			block, num_blocks * 512, buffer);
+			block, num_blocks << blk->blockbits, buffer);
 
 	if (EFI_ERROR(efiret))
 		return -efi_errno(efiret);
@@ -49,7 +49,7 @@ static int efi_bio_write(struct block_device *blk,
 	efi_status_t efiret;
 
 	efiret = priv->protocol->write(priv->protocol, priv->media_id,
-			block, num_blocks * 512, (void *)buffer);
+			block, num_blocks << blk->blockbits, (void *)buffer);
 	if (EFI_ERROR(efiret))
 		return -efi_errno(efiret);
 
@@ -115,7 +115,7 @@ static bool is_bio_usbdev(struct efi_device *efidev)
 static int efi_bio_probe(struct efi_device *efidev)
 {
 	bool is_usbdev;
-	int instance;
+	int blockbits, instance;
 	struct efi_bio_priv *priv;
 	struct efi_block_io_media *media;
 	struct device *dev = &efidev->dev;
@@ -124,13 +124,22 @@ static int efi_bio_probe(struct efi_device *efidev)
 
 	BS->handle_protocol(efidev->handle, &efi_block_io_protocol_guid,
 			(void **)&priv->protocol);
-	if (!priv->protocol)
+	if (!priv->protocol) {
+		free(priv);
 		return -ENODEV;
+	}
+
+
+	media = priv->protocol->media;
+	blockbits = block_size_bits(dev, media->block_size);
+	if (blockbits < 0) {
+		free(priv);
+		return blockbits;
+	}
 
 	dev->priv = priv;
 	devinfo_add(dev, efi_bio_print_info);
 
-	media = priv->protocol->media;
 	if (__is_defined(DEBUG))
 		efi_bio_print_info(dev);
 	priv->dev = &efidev->dev;
@@ -147,7 +156,7 @@ static int efi_bio_probe(struct efi_device *efidev)
 		priv->blk.cdev.name = xasprintf("disk%d", instance);
 	}
 
-	priv->blk.blockbits = ffs(media->block_size) - 1;
+	priv->blk.blockbits = blockbits;
 	priv->blk.num_blocks = media->last_block + 1;
 	priv->blk.ops = &efi_bio_ops;
 	priv->blk.dev = &efidev->dev;
-- 
2.47.3



