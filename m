Delivery-date: Thu, 09 Jan 2025 12:25:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVqf4-0018sg-1Q
	for lore@lore.pengutronix.de;
	Thu, 09 Jan 2025 12:25:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVqf4-00063t-Aa
	for lore@pengutronix.de; Thu, 09 Jan 2025 12:25:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y7AguZBqx634DgXIb75qC0IKZWBJwjzAlT4F7lVu12k=; b=CxBxIR31yFbx4R8Jz7rwEyovl7
	Ke4xnF9pFKgerKDRzTVi3kg8yuTI6vVaM9RiEOUBmA7/qpbbbqovSOxKGLMw8LPlYj5BWTpX3aIlV
	UivA3+S1N2ut+Wz3ZVX0G9ctPSFnRblpzsdF6ngpQd2Lo9MbUOoDQsxeYItnQndVX+/FfjPMPWgDy
	1bFzy3Q3WliOU+pGs25VTkvVU9oqWsCMHgT+ZJONbdS4JmIvq/3uTaPcDKD1rs9pjnvHpVLvfC74A
	EuLSpY0BD4QVSDV3x8D/8XrTdcINJqSezj81dd7rA5eNY05cyUKXWdIrtbHr1TzCnfqZI+GjBN1g4
	ZjVeiiuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVqeY-0000000BhhZ-3ey3;
	Thu, 09 Jan 2025 11:24:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVqeW-0000000BhgD-0jDo
	for barebox@lists.infradead.org;
	Thu, 09 Jan 2025 11:24:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVqeU-0005pt-Kq; Thu, 09 Jan 2025 12:24:38 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVqeT-007gUd-0I;
	Thu, 09 Jan 2025 12:24:37 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVqeT-00DJxm-2T;
	Thu, 09 Jan 2025 12:24:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <Renaud.Barbier@ametek.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jan 2025 12:24:36 +0100
Message-Id: <20250109112437.3174977-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_032440_222614_CC3BD616 
X-CRM114-Status: GOOD (  15.12  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFT PATCH master 1/2] partitions: dos: allocate NT signature param when recreating partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We used to only allocate the device parameter when parsing a MBR from
disk, but not when creating the partition dynamically at runtime.

This didn't cause acute problems until we started freeing the parameter
again and triggering a NULL pointer dereference when removing dynamically
created partitions.

Fix this by always allocating the parameter.

Fixes: 19f4033db59e ("partitions: dos: fix memory leaks")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/dos.c | 40 +++++++++++++++++++++++-----------------
 1 file changed, 23 insertions(+), 17 deletions(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 5a055efec7d1..95b71af7ff8f 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -200,6 +200,26 @@ static void extract_flags(const struct partition_entry *p,
 		pentry->flags |= DEVFS_PARTITION_BOOTABLE_ESP;
 }
 
+static void add_nt_signature_param(struct disk_signature_priv *dsp,
+				   struct block_device *blk)
+{
+	dsp->blk = blk;
+
+	/*
+	 * This parameter contains the NT disk signature. This allows to
+	 * to specify the Linux rootfs using the following syntax:
+	 *
+	 *   root=PARTUUID=ssssssss-pp
+	 *
+	 * where ssssssss is a zero-filled hex representation of the 32-bit
+	 * signature and pp is a zero-filled hex representation of the 1-based
+	 * partition number.
+	 */
+	dsp->param = dev_add_param_uint32(blk->dev, "nt_signature",
+			dos_set_disk_signature, dos_get_disk_signature,
+			&dsp->signature, "%08x", dsp);
+}
+
 /**
  * Check if a DOS like partition describes this block device
  * @param blk Block device to register to
@@ -216,7 +236,6 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 	struct partition *extended_partition = NULL;
 	uint8_t *buffer = buf;
 	int i;
-	struct disk_signature_priv *dsp;
 	uint32_t signature = get_unaligned_le32(buf + 0x1b8);
 	struct dos_partition_desc *dpd;
 
@@ -275,22 +294,7 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 	if (extended_partition)
 		dos_extended_partition(blk, dpd, extended_partition, signature);
 
-	dsp = &dpd->disksig;
-	dsp->blk = blk;
-
-	/*
-	 * This parameter contains the NT disk signature. This allows to
-	 * to specify the Linux rootfs using the following syntax:
-	 *
-	 *   root=PARTUUID=ssssssss-pp
-	 *
-	 * where ssssssss is a zero-filled hex representation of the 32-bit
-	 * signature and pp is a zero-filled hex representation of the 1-based
-	 * partition number.
-	 */
-	dsp->param = dev_add_param_uint32(blk->dev, "nt_signature",
-			dos_set_disk_signature, dos_get_disk_signature,
-			&dsp->signature, "%08x", dsp);
+	add_nt_signature_param(&dpd->disksig, blk);
 
 	return &dpd->pd;
 }
@@ -320,6 +324,8 @@ static __maybe_unused struct partition_desc *dos_partition_create_table(struct b
 
 	dpd->signature = random32();
 
+	add_nt_signature_param(&dpd->disksig, blk);
+
 	return &dpd->pd;
 }
 
-- 
2.39.5



