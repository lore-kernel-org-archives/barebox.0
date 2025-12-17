Delivery-date: Wed, 17 Dec 2025 11:56:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVpCx-00CRen-0a
	for lore@lore.pengutronix.de;
	Wed, 17 Dec 2025 11:56:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVpCw-0008Vl-K5
	for lore@pengutronix.de; Wed, 17 Dec 2025 11:56:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RvFGRHGqpFn24q5dPR5Uwmw6aYRlOFMY/xiTAhFVPyk=; b=z1o4AvSPPrQ/UpnyPPEVSoGBCy
	AHm5iJWvEwNDbd8GmbpPCKPV8OZxMOFyhVdAzTLwRsxuxYYLuQ/KX7VnIO1Xg/oyA/IDtPKKqsiTN
	+cywkEa0AUGKGDOI9sM86szc6gJO8FMfgv3mTWe4k5mjD3qpYxq0P0PlnDL3v4xg6296TVfTxfwnh
	5sQ19NipI8w5kOaeUCwFOnCToir/f4zOd+q2q3iVpcIy/C1u1L+j0NBx4bhrpBvNL6nB1dxXJGiYM
	rD6Cixd1dGiE9t9jl7yR2+eaoS58xYLtrhXEIM0HSfeJcHmM9sCuEpk2OcZP9nYGxcQE7wYCx75i5
	Mg1BfZJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVpCI-00000006g8S-0I3s;
	Wed, 17 Dec 2025 10:55:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVpCG-00000006g7z-1e6z
	for barebox@lists.infradead.org;
	Wed, 17 Dec 2025 10:55:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vVpCE-0008PW-Jc; Wed, 17 Dec 2025 11:55:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vVpCD-00669w-2A;
	Wed, 17 Dec 2025 11:55:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vVpCD-00000001vqf-2QKk;
	Wed, 17 Dec 2025 11:55:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Dec 2025 11:55:00 +0100
Message-ID: <20251217105552.434834-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_025556_450038_C3DBAB63 
X-CRM114-Status: GOOD (  13.39  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] cdev: maintain partition index in struct cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by the EFI loader, we will need to know a partition's number
within the partition table on disk, so have the devfs-core keep track
of that.

Mere iteration over the cdev list doesn't work for thus purpose as there
may be invalid PTEs, which cause e.g. the first on-disk partition to
have a higher number.

See 9dfffaf2ef47 ("partitions: efi: Continue partition enumeration on
invalid pte") for more info. A real world example is the current
debian-13-nocloud-arm64.raw image, which has two partitions:
0 and 14 (or 1 and 15 in barebox).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - record actual partition number from the table.
    I compared against EDK-II and Linux and both take the actual
    number, which may not be either the number in our cdev list
    or the location on disk.
---
 common/partitions.c | 1 +
 include/driver.h    | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/common/partitions.c b/common/partitions.c
index 1a4e046c5f55..40f4c629e1ac 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -52,6 +52,7 @@ static int register_one_partition(struct block_device *blk, struct partition *pa
 		goto out;
 	}
 
+	cdev->partition_table_index = part->num;
 	cdev->flags |= DEVFS_PARTITION_FROM_TABLE | part->flags;
 	cdev->typeflags |= part->typeflags;
 	cdev->typeuuid = part->typeuuid;
diff --git a/include/driver.h b/include/driver.h
index 14d1731fd976..01e16e7a73ab 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -436,6 +436,9 @@ struct cdev {
 	loff_t size;
 	unsigned int flags;
 	u16 typeflags; /* GPT type-specific attributes */
+	s8 partition_table_index;    /* For GPT/MBR-formatted disks only:
+				      * 1-based index of partition on disk
+				      */
 	int open;
 	struct mtd_info *mtd;
 	struct list_head aliases;
-- 
2.47.3



