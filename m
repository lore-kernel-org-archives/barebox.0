Delivery-date: Thu, 02 Apr 2026 12:13:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8F37-007oMP-2z
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 12:13:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8F36-00036M-PQ
	for lore@pengutronix.de; Thu, 02 Apr 2026 12:13:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1aN22InKoVj/jvHTxkSbZve3bNg6k3ThA8g4LhKKi1Y=; b=FnDDa9uMYWqZZ+dm4F0KMhwpom
	S0sSKaWOGcrZtx+Kpe6GBnlXLevU9ynjFNWNa6SNX06lbJXmxofsOdStUxT+Gnj8EXvbrrkk6HyS2
	PlY8jGj5xIrt7yjW5D7mr/udbtoQd5m/+Hl5vQkH9eRXAmesnYumvip4ec2JaxqW7+Cu1kD15kbcI
	S/qVqcAUdYZFyKX87ALpHET2UmPZPS5qOsqsSYzTEPzIT/W/FtYSd9lkcKW2HZ3zEMANAfjwu5eIF
	h+WXcxc8y78E35Pp7CPEAIWgkBYwJaXz6Rfm6CcQMaj0wXxZ6iomBtepShVRWitYpI90pAtkNjoTT
	EIGe40Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2d-0000000HNVa-1AJG;
	Thu, 02 Apr 2026 10:12:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2V-0000000HNUI-3Gzg
	for barebox@bombadil.infradead.org;
	Thu, 02 Apr 2026 10:12:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=1aN22InKoVj/jvHTxkSbZve3bNg6k3ThA8g4LhKKi1Y=; b=mI6HxMM51NSv+3g9xa3PieWlTw
	pMDhsxpbF7EmFDJEEZQ7OjL2e1bzcW/KsVX67EhcHpmLEwJGps//HF9WoRJ8fouZs/vehCYtmhzpZ
	ycM62CHajzSff+PsvpqUbDIiAfo8MPP/6osmVYe5ln6mjN66pWSJQDSmqJrBrlrPPDddU+mVKcyQz
	4qgLz85jOY8nlRQB7w0SrItEH+IrPHYwNVJtZwQbFHfHlH2TJfAcfULoZ/9rMUXpib4P0L53ROpfT
	NsCHjf9/fKynicm+nwzX3SMXTxFOBJukrHDlbDaxBKPCekaRccEYf5vYm+E7trPxh7UbVH/yvIgav
	vJr7jHVQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2N-00000002DG3-3kQu
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 10:12:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-0002lj-FJ; Thu, 02 Apr 2026 12:12:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-003MCa-0O;
	Thu, 02 Apr 2026 12:12:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-00000004I4C-07qV;
	Thu, 02 Apr 2026 12:12:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 12:12:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-fs-ext4-buffer-overflows-v1-5-b9f8a909fe58@pengutronix.de>
References: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
In-Reply-To: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775124750; l=2814;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=HDtF69VDNZ6dPOHeJP6qiwZbiSNg18iJBmVqeTKC6N8=;
 b=yJTFjkVXfZgBm9szkEgnO84sMLjmBcAJHt50FnnDNzmh/0skU4rIj5S9h9Zbmy1v5aGEG0D1Z
 sModdfELzMkAiu79xSqlXamlGduyaynpMa064qNpt+z12hwmFK91AqP
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_111234_759588_ED5BAE87 
X-CRM114-Status: GOOD (  14.93  )
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
Cc: "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] fs: ext4: validate extent eh_entries against buffer
 capacity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ext4fs_get_extent_block() and read_allocated_block() use the on-disk
eh_entries field to iterate over extent index and leaf entries without
validating it against the buffer that holds them.

The initial extent data lives in the inode's 60-byte block union,
which can hold at most 4 entries after the 12-byte header. Subsequent
extent blocks are read into a block-sized buffer. A crafted filesystem
with eh_entries larger than what fits in the buffer causes out-of-bounds
reads past the inode structure or the block allocation.

Validate eh_entries against the computed maximum capacity of the
containing buffer in both the index walk (ext4fs_get_extent_block)
and the leaf walk (read_allocated_block), returning an error if
the count exceeds what the buffer can hold.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 fs/ext4/ext4_common.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index b0c78f9e9a..a7c0c0f0ff 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -38,6 +38,29 @@
 
 #include "ext4_common.h"
 
+/*
+ * Validate that eh_entries does not exceed the capacity of the buffer
+ * holding the extent block.  Returns 0 if valid, -EINVAL otherwise.
+ */
+static int ext4_check_eh_entries(struct ext4_extent_header *ext_block,
+				 char *buf, int blksz)
+{
+	int max_entries;
+	/* ext4_extent and ext4_extent_idx are both 12 bytes */
+	const int entry_size = sizeof(struct ext4_extent);
+
+	if ((char *)ext_block == buf)
+		max_entries = (blksz - sizeof(*ext_block)) / entry_size;
+	else
+		max_entries = (sizeof(((struct ext2_inode *)0)->b) -
+			       sizeof(*ext_block)) / entry_size;
+
+	if (le16_to_cpu(ext_block->eh_entries) > max_entries)
+		return -EINVAL;
+
+	return 0;
+}
+
 static struct ext4_extent_header *ext4fs_get_extent_block(struct ext2_data *data,
 		char *buf, struct ext4_extent_header *ext_block,
 		uint32_t fileblock, int log2_blksz)
@@ -57,6 +80,10 @@ static struct ext4_extent_header *ext4fs_get_extent_block(struct ext2_data *data
 
 		if (ext_block->eh_depth == 0)
 			return ext_block;
+
+		if (ext4_check_eh_entries(ext_block, buf, blksz))
+			return NULL;
+
 		i = -1;
 		do {
 			i++;
@@ -189,6 +216,11 @@ long int read_allocated_block(struct ext2fs_node *node, int fileblock)
 
 		extent = (struct ext4_extent *)(ext_block + 1);
 
+		if (ext4_check_eh_entries(ext_block, buf, blksz)) {
+			free(buf);
+			return -EINVAL;
+		}
+
 		for (i = 0; i < le16_to_cpu(ext_block->eh_entries); i++) {
 			startblock = le32_to_cpu(extent[i].ee_block);
 			endblock = startblock + le16_to_cpu(extent[i].ee_len);

-- 
2.47.3



