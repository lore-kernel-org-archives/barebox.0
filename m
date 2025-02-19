Delivery-date: Wed, 19 Feb 2025 17:41:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkn8n-004NeO-2N
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 17:41:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkn8m-0004O9-Fd
	for lore@pengutronix.de; Wed, 19 Feb 2025 17:41:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Da1oRBcEW7JjJxvvcOD8WOgTtw+eLPI/5bSBl1Fk+N0=; b=LUUMOw8vW6fRZs
	PvRGVs113izBORAF96rA0/2y7gmNpmzYYDuoI+IRoj5rtSRAsLk9avvY7SfnRPFFreArwp3VNyZ1n
	OrAVz6lqfogVGfQfjepJ/qeol18gJUDf6q4PWzis0WXZbabr0L7rsIP3t1/d1Xn+5c5KcPh05P3Ba
	dbT9OXd1UMmxERY7b/eCpmb7lCG7Om3fXGqYQMxGTPUrzQCf03k/FPSphKLEQM/zMdkS601T5zfOu
	hFsvwsXvDDJANAug32XvM85C40pDOTqMndAIroQJU6eTIsn2aAjgEI47/QWAuVgOdIubKGwGBTwda
	ljwTsMI9MVSEB8YAeknA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkn8O-0000000DsOC-0ppJ;
	Wed, 19 Feb 2025 16:41:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkug-0000000DFC5-3zfh
	for barebox@bombadil.infradead.org;
	Wed, 19 Feb 2025 14:18:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Da1oRBcEW7JjJxvvcOD8WOgTtw+eLPI/5bSBl1Fk+N0=; b=c62sz5c4AQBy/DQ2qObP6HM+HJ
	KPDTDlMCN3P/d0LtZSm31cBZYfy87wEhMo2xTnnJHrM1EI7302JJn2aGfAKui7VhuSMfdFhwTskfs
	TJ2DOlfkKMwbP8Jm7k0vwpTl2D/M0LIigfU0E1SgRaO8NyXBC+1YFIU5PPRMCrZ4q6atOYbnghKRn
	Wt9GwYzpBcZuf79SNteMxarpFN82XlAgtoa4j+D/ar44A72afDnV2G0JeAmnmVhSPd8niDYTVVFTp
	kk+AYHQW2zurlDI/kS3UPKSOZj+Fm08X2uMM7Jy0nsTOqmB/Z/uWerGt45OdadpNq9BuczQriMwm6
	eKibS71A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkuc-00000002BEQ-2pt0
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 14:18:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuZ-0005Q5-5w; Wed, 19 Feb 2025 15:18:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuY-001mVp-33;
	Wed, 19 Feb 2025 15:18:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuY-0081Wd-2h;
	Wed, 19 Feb 2025 15:18:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 19 Feb 2025 15:18:40 +0100
Message-Id: <20250219141844.1912413-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250219141844.1912413-1-s.hauer@pengutronix.de>
References: <20250219141844.1912413-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_141855_021794_9BE010B2 
X-CRM114-Status: GOOD (  14.63  )
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
Cc: Jonathan Bar Or <jonathanbaror@gmail.com>
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
Subject: [PATCH 1/5] CVE-2025-26722: fs: squashfs: Ensure positive inode length
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In squashfs_get_link() we have:

	int length = min_t(int, i_size_read(inode), PAGE_SIZE);

The inode size is a 64bit number directly read from the device which
is interpreted as a 32bit signed number above. An inode size with the
lower 32bits set to 0xffffffff results in length being -1. Later we
do a:

	symlink = malloc(length + 1);

With length being -1 this results in allocating a zero size buffer which
is then overwritten by following code.

Fix this by first making sure that the inode length is positive.
Afterwards limit the length to the desired range, explicitly using
loff_t as the type to compare to make sure we do not truncate the
original data type during comparison.

Reported-by: Jonathan Bar Or <jonathanbaror@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/squashfs/symlink.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/fs/squashfs/symlink.c b/fs/squashfs/symlink.c
index 40b9bdcc8b..cb14eb20a5 100644
--- a/fs/squashfs/symlink.c
+++ b/fs/squashfs/symlink.c
@@ -43,16 +43,20 @@
 static const char *squashfs_get_link(struct dentry *dentry, struct inode *inode)
 {
 	struct super_block *sb = inode->i_sb;
-	int index = 0;
 	u64 block = squashfs_i(inode)->start;
 	int offset = squashfs_i(inode)->offset;
-	int length = min_t(int, i_size_read(inode) - index, PAGE_SIZE);
+	size_t length;
 	int bytes;
 	unsigned char *symlink;
 
 	TRACE("Entered squashfs_symlink_readpage, start block "
 			"%llx, offset %x\n", block, offset);
 
+	if (i_size_read(inode) < 0)
+		return NULL;
+
+	length = min_t(loff_t, i_size_read(inode), PAGE_SIZE);
+
 	symlink = malloc(length + 1);
 	if (!symlink)
 		return NULL;
-- 
2.39.5



