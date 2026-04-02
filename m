Delivery-date: Thu, 02 Apr 2026 12:13:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8F38-007oMk-0c
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 12:13:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8F36-00036I-Hs
	for lore@pengutronix.de; Thu, 02 Apr 2026 12:13:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0LEg0mTeFDgpxvrN52C1fuVn6sx1PGfnP9l5bI6iGkE=; b=pVyKuAbxRnJUrm
	HDFDge9RA4UgLrI9gz4T/vvwYsddjtCPdgEEeZVsevNSYRTEBlMXEOKzwnUJc9AWml283X0ObmcUp
	/5a384l+el4jimWT9jh9PPQ6jDVj6ae1WT3Tt4lmisQar6UstjOK1zIj56RjpkjGCQmlbsDJrt4ZI
	BX2lyT5znk7lOD93VCkPHHh0xInoKWb779oDw5qsvVvH0n5FdH28hJlhLtoUwUuBhIiyJEb2oCC4H
	0WlxZjyQY9hz8svXY34iu/KjuLi78IQBui+c9Hv3Dk/Z+mS4YTE8Rlz6IWMycerNE2XN4tjfgcqz6
	QRfdTp3hEr0IGTFGmYEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2V-0000000HNUJ-1Sr4;
	Thu, 02 Apr 2026 10:12:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2U-0000000HNU5-275F
	for barebox@bombadil.infradead.org;
	Thu, 02 Apr 2026 10:12:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=0LEg0mTeFDgpxvrN52C1fuVn6sx1PGfnP9l5bI6iGkE=; b=cB+2JwDvk7GlUN8kOPDuoL0Omc
	vAp3iDdliJvUKsfTmRfE9UncHQbP6yVbpdjhaEykvaoO5+vj51IP4QfSrjkUPoxKKBsVY/8bSnipv
	OTL/TeBelMtneGQOf17NQ2vt9YkcJiWW0IOGark6OU/N87N/j+tyUXmwmjpsnutSJBjR3zxwPIZk8
	MhKDU6FYeFNZlpqwACJU9+NfJaCo17IfygrX8u+8g0fbOXKye31aiTP873CgOYb5l+ab+Tyt6E39H
	CY9IVKYBNDARBkKNxEos6Xufr20Xe07BY83Xm47sHsky38HPx/2d/xEHnTtpjMy4AoOiHi5BPBzMX
	dlG20XOQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2N-00000002DG2-3kY8
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 10:12:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-0002lf-FJ; Thu, 02 Apr 2026 12:12:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-003MCV-0M;
	Thu, 02 Apr 2026 12:12:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-00000004I4C-03XR;
	Thu, 02 Apr 2026 12:12:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 12:12:28 +0200
Message-Id: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAxBzmkC/x3MwQqDMAyA4VeRnBfoau1grzJ2WGuiAbEj2VQQ3
 93i8Tv8/w5GKmTwbHZQWsSkzBX3WwN5/MwDofTV4J2PLjiPbEjbL2D6M5NiWUh5Kqth8rHvQmx
 zemSo+VeJZbvWr/dxnPwbHrZqAAAA
X-Change-ID: 20260402-fs-ext4-buffer-overflows-b26d5463cb7c
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775124749; l=985;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nvnqjkErBOL/gKN/Uv4lDf8T00aiuKA5anbsKu3mxIA=;
 b=vFWUQ2mN9XnYraLgvN7r0nO7Z/F/VDOoHn73vi28Bn0vVYXFE5vxM9pl4YX8c2A8MZa7oAv/P
 ettTZfdXXU1D0uuren+RINbxKNlRmI9CeqSS1uT2Opm92JWrWyCGQyy
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_111234_805136_4C78C39E 
X-CRM114-Status: UNSURE (   6.02  )
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
Subject: [PATCH 0/5] fs: ext4: protection against corrupted filesystems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series contains fixes against corrupted filesystems leading to
buffer overflows or division-by-zero. All patches have been tested to be
effective with manipulated fs images.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (5):
      fs: ext4: validate log2_block_size from superblock at mount
      fs: ext4: reject superblocks with zero inodesz, gdsize or inodes_per_group
      fs: ext4: fix OOB read and infinite loop in ext_iterate()
      fs: ext4: reject dirents with too-small direntlen to prevent infinite loops
      fs: ext4: validate extent eh_entries against buffer capacity

 fs/ext4/ext4_common.c | 51 +++++++++++++++++++++++++++++++++++++++++++++++++++
 fs/ext4/ext_barebox.c | 13 ++++++++++---
 2 files changed, 61 insertions(+), 3 deletions(-)
---
base-commit: 0933e8f2ebf0d91dfcf177a4e4292b02921a53f1
change-id: 20260402-fs-ext4-buffer-overflows-b26d5463cb7c

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



