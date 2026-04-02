Delivery-date: Thu, 02 Apr 2026 12:13:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8F37-007oMO-2y
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 12:13:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8F36-00036O-QJ
	for lore@pengutronix.de; Thu, 02 Apr 2026 12:13:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J8LDASTOZ919JjlH7MreB+Jk1WnqpEFfvzB/P0rn+Ms=; b=11Jcf1BZBcGygidC4F9cFvqj5/
	IEVdVlIgmOgQhORUyY7nxkQktQo5Y76vYYvkHR/RI1epUdX8dNz7DYPUq0VFlaiRuZRUgKiSBVNVv
	lTlCcalmgsv5Ys6Xli9x6XX0EzO8hSAE2m7abjukOYhBb1UBHpejf8gvZsuksk+mz2/p54Eb5+/fU
	fStVSQrGvaxUQZMlzTpNf4PYgrzzGw5wHiLDdVWc76fmL/Aopte3ycPpH1EgsxUsoBOqGowSqpdH9
	r8ObCi7NlRiCDnjPBUJnERgq3f53eOXE92gMqNTPn7VHrdyTq0KRl2r+9F7vj6P25rEo9FlD5hzSW
	GGTs7JFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2d-0000000HNVm-2RvY;
	Thu, 02 Apr 2026 10:12:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2X-0000000HNUc-3JrM
	for barebox@bombadil.infradead.org;
	Thu, 02 Apr 2026 10:12:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=J8LDASTOZ919JjlH7MreB+Jk1WnqpEFfvzB/P0rn+Ms=; b=dmfS/6eQZyCqf9TX+4SzDCioNs
	dWVgIGUJxtetUprjyZTqhdQB//30KMixxJaCzwszgMQAg9cMtQEZHDk+mkJS4/FX0Ht2VTDT2Cz/P
	4tVaXAqn1wTfz2c9EEE59uE8rQACgB3FdiWy6r1FJwqjN+MJOgYaeM5efVMEhNHFo7e9tpAyK/Phj
	YJnWCvvn0lKkOSJXPeBHvPq52vqMKaDJfnSfTJ9+qqeFOWwj7pxS3JenjxkEk7p4cvuS1qRWeb24I
	T2dIDiwWKJCQ0xoKcT/iXKQzfmsatgGWFbwXsrfd8EKvy9us+ejbqKLVtAuhc7gu9ttb+LsBOStui
	4qpZFsgw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2U-00000002DHL-3NKR
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 10:12:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-0002lh-FJ; Thu, 02 Apr 2026 12:12:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-003MCX-0N;
	Thu, 02 Apr 2026 12:12:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-00000004I4C-05Od;
	Thu, 02 Apr 2026 12:12:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 12:12:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-fs-ext4-buffer-overflows-v1-2-b9f8a909fe58@pengutronix.de>
References: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
In-Reply-To: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775124749; l=1404;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nakW48BlP5PVx7basjtUYgpT06noJShIo0sSeGcp10Y=;
 b=S60LkhF6FqTAFgJfQlTblJqj5IRor99YVr6VsF1utZXuy5fPXhiLeufsTcyd0Bzz/fpM8pLC6
 34T5h0jHWQDBu+2J4e/Y6iMbY9+nNPMl9LbWTYwfgcrsL8QIGYQNi/1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_111239_014290_DE839FF0 
X-CRM114-Status: UNSURE (   7.58  )
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
Subject: [PATCH 2/5] fs: ext4: reject superblocks with zero inodesz, gdsize
 or inodes_per_group
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The superblock fields inode_size, descriptor_size, and inodes_per_group
are read from disk and used as divisors without validation:

  - inodesz == 0: division by zero in ext4fs_read_inode()
  - gdsize == 0: division by zero in ext4fs_blockgroup()
  - inodes_per_group == 0: division by zero in ext4fs_read_inode()

All three are trivially triggered by a crafted filesystem image.

Validate these fields are non-zero at mount time and reject the
filesystem if they aren't.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 fs/ext4/ext4_common.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index 094293a069..5d252b4a2c 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -541,6 +541,15 @@ int ext4fs_mount(struct ext_filesystem *fs)
 	      le32_to_cpu(data->sblock.revision_level),
 	      fs->inodesz, fs->gdsize);
 
+	if (!fs->inodesz || !fs->gdsize ||
+	    !le32_to_cpu(data->sblock.inodes_per_group)) {
+		dev_err(fs->dev, "invalid superblock: inodesz=%u gdsize=%u inodes_per_group=%u\n",
+			fs->inodesz, fs->gdsize,
+			le32_to_cpu(data->sblock.inodes_per_group));
+		ret = -EINVAL;
+		goto fail;
+	}
+
 	data->diropen.data = data;
 	data->diropen.ino = 2;
 	data->diropen.inode_read = 1;

-- 
2.47.3



