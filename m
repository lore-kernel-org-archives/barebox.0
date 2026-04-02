Delivery-date: Thu, 02 Apr 2026 12:13:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8F3B-007oOC-2M
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 12:13:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8F3A-00038O-Ho
	for lore@pengutronix.de; Thu, 02 Apr 2026 12:13:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5wEzTGjy/X+e7leMEqQi2CSZLTn9QXXBgtmwBL/qhtw=; b=mUuThiin7wt0odpg52/lJBhSJs
	ejXFgbZTvDQhZ+i5JzwD41AOo6nxGhg0+cz7wSgblzv/XNJLxCSlxhQGSKS9dOL/XRAZb3ODpqsHW
	/eIoimAiqJBXvQlEZf28fdQmd+iEZf5xKfyceoD5cjPmI8wMtHYmlBu+dIs2Zx+4Mt4lfN+Ld/6vf
	6ugBeux3Q9VJta3KSUmKBsLgxft0WHbJ5AIxS3oK0L9GnyrT1V+CNpCxuiobcMY0AUsn8DkC5dRnN
	Jv9x1KP+x9Czo9VNrAwZ1FbIXAQttd3bCSqfkuoh0VeNNyML+osOPFIur8OE0R0M03fqwvlDmEDBe
	S2Snd/tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2d-0000000HNVx-3cfA;
	Thu, 02 Apr 2026 10:12:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2X-0000000HNUb-3GpV
	for barebox@bombadil.infradead.org;
	Thu, 02 Apr 2026 10:12:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=5wEzTGjy/X+e7leMEqQi2CSZLTn9QXXBgtmwBL/qhtw=; b=p7Ppib5YMM6zY1ZPVVJti14YBl
	izyL67AfcdMiFgUqgsbpupxdLn6uL3ElpQLApku1nDUfBaOILJt/gWgYYlvUYkJ6vGvk4weYff+xS
	qSc9Kq1zDHIBR3A19N5MG+Ps5R0TvM7Gtuq29Zpp7NuNr1/p8jV2Jzt/wBHAbDWVpNMl/9ALxc7vG
	AjdqKXPHUG+UJc47jB4W2OC+xoLijg3TceA6327gTxn01amGzkGCAN7wVHSR9QrZt9FcX+gMOXTQn
	YHuvnM3fpeF9i+/pkoPCpOVwC/vzsHieEiZXRf6JzNm3ZNFc836x47sO3qAWcrudzXWrZ9ChVSzl4
	1C5iRjBQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2U-00000002DHK-3Ly2
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 10:12:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-0002le-FI; Thu, 02 Apr 2026 12:12:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-003MCW-0L;
	Thu, 02 Apr 2026 12:12:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-00000004I4C-04az;
	Thu, 02 Apr 2026 12:12:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 12:12:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-fs-ext4-buffer-overflows-v1-1-b9f8a909fe58@pengutronix.de>
References: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
In-Reply-To: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775124749; l=1413;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Dq7lFzZTts3lICz1zi6ii9s90bMMOBrv8HTjT/CwObI=;
 b=4AGHS5Mk2fmmeUhn3oIWjt9Qi98orOGhhH2BN8ozP2xFYOXciIUfHiCVXZZVmpNPUfb8+4ccY
 TT9EBkO1VT7CjCkl9Xp6nIlQJmeEer8MFzMxDkZQ3M1Gk+v/xyad8me
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_111238_995630_24CAC560 
X-CRM114-Status: GOOD (  10.80  )
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
Subject: [PATCH 1/5] fs: ext4: validate log2_block_size from superblock at
 mount
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The superblock's log2_block_size field is read from disk and used
throughout the ext4 code without validation. EXT2_BLOCK_SIZE() computes
1 << (log2_block_size + 10), so a crafted value of 22 or larger causes
undefined behavior from shifting an int by >= 32 bits.

This leads to wrong allocation sizes for indirect block buffers and
enables downstream buffer overflows in every function that reads
block-sized data.

Validate that log2_block_size does not exceed the maximum defined by
EXT2_MAX_BLOCK_LOG_SIZE (65536 byte blocks) at mount time, rejecting
the filesystem early if it does.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 fs/ext4/ext4_common.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index a38593105f..094293a069 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -514,6 +514,14 @@ int ext4fs_mount(struct ext_filesystem *fs)
 		goto fail;
 	}
 
+	if (le32_to_cpu(data->sblock.log2_block_size) >
+	    EXT2_MAX_BLOCK_LOG_SIZE - EXT2_MIN_BLOCK_LOG_SIZE) {
+		dev_err(fs->dev, "invalid block size %u\n",
+			le32_to_cpu(data->sblock.log2_block_size));
+		ret = -EINVAL;
+		goto fail;
+	}
+
 	if (le32_to_cpu(data->sblock.revision_level) == 0) {
 		fs->inodesz = 128;
 		fs->gdsize = 32;

-- 
2.47.3



