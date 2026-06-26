Delivery-date: Fri, 26 Jun 2026 10:47:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DO-00A13d-2h
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DN-000656-Tw
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iXCaz+I3TcI1BIZlKXB+hN2d1ADI1+3SxmkmQzMLWqY=; b=IuVeMzxdGq4U9+rREVivtTQxAX
	63x/8Xg46a8RLGuObZTykE7NCd2HGo6Oc0pj/SojUSzua0t7X/W9GH2Vkh+2nhJWk1HqDwOzEMRYS
	u+2At/hvefPutXi/YLoIxXrRuZ2881CDupB7WpNYY/jKVg/poHdaGAtcHC9corIbL+eQx4h8cHDWk
	12UWACT/u9/UEGZhRTHSSgf9zPKHSBOI88u8yZ0QHUtxvYDvzoJvPCTDNAjiCXIzOXs0uNJNeIuQ4
	o+2d/oqWfzoQIl8BZ3SUbrsKMM78zbr0H/Kdgdk/VmhbOvZBPy8IGvgkWo1ZFgn+WsjogdzjyOdZV
	AMoAj4vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cn-0000000Atam-3j7U;
	Fri, 26 Jun 2026 08:46:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cg-0000000AtIg-0fud
	for barebox@bombadil.infradead.org;
	Fri, 26 Jun 2026 08:46:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=iXCaz+I3TcI1BIZlKXB+hN2d1ADI1+3SxmkmQzMLWqY=; b=EGMsHWW1X6L0c+lx+ZhOLudz8S
	ZW8pM1fpS/svvWvED6mV7YckVWWHdcXEGBEliFvJJomZscHWYk0DN/PnYb84AJ7dDfCjX1ceso/qR
	BDkni6WkA3c6Gvm3t560zTvV6IE+ZwOOgx4GtK06CckWKg/O+5oDMFs4uiMtHbV5lKEEBzb9FzQYC
	DIoGVA1BXe3ewYZ2exLAhF6Wxa6ILEYg+7ULPnXvQvYi7/truIKOKmAJyzJYMoJSZ8WkOIlM4z1rH
	4lclvzpnpHbBpGbwtPOUwkQ4ikqd3LOF+4eKPCXrQmKy/L7aA9fsBVedVBwxli9+41ZRsnEQfcKgZ
	NvrncUyg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wd2CY-00000004clx-2rxt
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CV-0003ZP-2z; Fri, 26 Jun 2026 10:46:15 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:27 +0200
Message-ID: <20260626084608.1388806-17-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_094620_100722_BCDAC40A 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 16/26] efi: loader: disk: report block device size in Block I/O
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we hardcoded 512 byte block sizes in what we report. This didn't
matter much as we didn't support other block sizes, but when we do soon,
we either need to do block size translation or pass devices as-is.

We will go with the second option, so drop the hardcoded 512-byte sector
sizes.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/protocols/disk.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/efi/loader/protocols/disk.c b/efi/loader/protocols/disk.c
index 5494f9197cb4..5c5447acca20 100644
--- a/efi/loader/protocols/disk.c
+++ b/efi/loader/protocols/disk.c
@@ -22,6 +22,7 @@
 #include <malloc.h>
 #include <bootsource.h>
 #include <block.h>
+#include <disks.h>
 #include <fs.h>
 
 const efi_guid_t efi_system_partition_guid = PARTITION_SYSTEM_GUID;
@@ -194,6 +195,7 @@ static efi_status_t efi_disk_add_cdev(efi_handle_t parent,
 	struct efi_disk_obj *diskobj;
 	struct efi_object *handle;
 	const efi_guid_t *esp_guid = NULL;
+	unsigned int blockbits = cdev_blockbits(cdev);
 	int score = 0;
 	efi_status_t ret;
 
@@ -251,9 +253,9 @@ static efi_status_t efi_disk_add_cdev(efi_handle_t parent,
 	diskobj->media.removable_media = removable;
 	diskobj->media.media_present = true;
 	diskobj->media.read_only = cdev->flags & DEVFS_PARTITION_READONLY;
-	diskobj->media.block_size = 512;
-	diskobj->media.io_align = 512;
-	diskobj->media.last_block = cdev->size / diskobj->media.block_size - 1;
+	diskobj->media.block_size = diskobj->media.io_align = 1u << blockbits;
+	diskobj->media.last_block = (cdev->size >> blockbits) - 1;
+	diskobj->blockbits = blockbits;
 
 	diskobj->ops = block_io_disk_template;
 	diskobj->ops.media = &diskobj->media;
@@ -380,7 +382,6 @@ static efi_status_t efi_disk_register(void *data)
 			return ret;
 		}
 
-		disk->blockbits = bdev->blockbits;
 		ndisks++;
 
 		/* Partitions show up as block devices in EFI */
-- 
2.47.3



