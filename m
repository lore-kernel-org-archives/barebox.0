Delivery-date: Tue, 08 Sep 2026 10:32:55 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x3rGB-001TKo-2E
	for lore@lore.pengutronix.de;
	Tue, 08 Sep 2026 10:32:55 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VyVls1gi;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7BCC8201CD1
	for <lore@pengutronix.de>; Tue, 08 Sep 2026 10:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PMahfrXlBVg35v/WuJgNwobOO9vjKDOSQMl64yZjAPs=; b=VyVls1gi85Pw9ywnBPmu2HqRF6
	tTWgquqBbncYJ3QlfyF/i1qkpCAmCkaebu3AHZMk/v7Pe/tLLZcpFovPtSpSpaFyE7rOFTqNWSOX6
	+KDidt8tH3auX8bFnPWYK0ohkzM9ITE6ycL9kNH+2srKcWGgNLyFkaR7v9P/FIxXAuAFLFdkGw/at
	I/JaKmUqupRqEdtFN8LWQXlT7VH71wWQCOBK+sYM4cUx3IyVKHbOP2FIW1KxpMGHd7HhA5vhZSqI4
	6xSuqy7p4+6va83N8X3WMvI4rhn41U2prx6KV+vYu2c68zLOFAO3RgWE6tSt27GGEDdRXSB53rmyh
	Zp9X7L4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3rFa-00000008Pkm-23OI;
	Tue, 08 Sep 2026 08:32:18 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3rFX-00000008Pih-0PpZ
	for barebox@lists.infradead.org;
	Tue, 08 Sep 2026 08:32:16 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 787B3202062;
	Tue, 08 Sep 2026 10:32:11 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 08 Sep 2026 10:32:10 +0200
Subject: [PATCH 2/2] fs: reject inodes whose size the superblock cannot
 address
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260908-fs-filesize-fixes-v1-2-8cf3e781a4d0@pengutronix.de>
References: <20260908-fs-filesize-fixes-v1-0-8cf3e781a4d0@pengutronix.de>
In-Reply-To: <20260908-fs-filesize-fixes-v1-0-8cf3e781a4d0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788856331; l=2505;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=mVEVk4LZ5IBe6pocDUNdk8qwE2uxWCkdc1TXUw9x068=;
 b=UWaXpRZbDbIfM5OuqqtepWBWN0Z9bnq0Tlfrj7dOZsAzH8NkZ1QWrn2pOt+3MK896kUxbzNI3
 JtkA3YPYthCDkhi+AmCbrb/8XMP8VFvzw1KCHwRWFCEdjdkyt8Lkjul
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_013215_290987_2B45F73F 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  f_size is an alias for the inode's i_size, and filesystems
    read that size straight from untrusted media. ext4's ext4_isize() builds
   it as ((loff_t)size_high << 32) | size, so bit 31 of size_high lands [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: yne4h7kw1xat7u4m6kqi4nrdxfkmxup4
X-Rspamd-Queue-Id: 7BCC8201CD1
X-Spamd-Result: default: False [-57.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

f_size is an alias for the inode's i_size, and filesystems read that
size straight from untrusted media. ext4's ext4_isize() builds it as
((loff_t)size_high << 32) | size, so bit 31 of size_high lands in the
sign bit; squashfs takes an unchecked le64 for LREG inodes. A negative
i_size then feeds the offset arithmetic in __read(), __write() and
friends, where it either wraps a size_t count to something huge or --
depending on whether size_t is 32 or 64 bit -- turns the comparison
unsigned and skips the EOF clamp altogether.

Catch this the way Linux does: give the superblock a ceiling and refuse
sizes beyond it, instead of hardening every arithmetic site. Default
s_maxbytes to MAX_LFS_FILESIZE in init_super(), which runs before the
driver probe, so the filesystems that already lower it (jffs2, ubifs,
squashfs, 9p) keep doing so and everyone else stops sitting at zero.

The check goes into do_dentry_open() rather than into iget: ten drivers
only learn the size in their ->open() callback and write it to the
inode through file->f_size, so a lookup time check would miss them.
Casting to u64 makes a negative size exceed any sane s_maxbytes, so the
sign is covered too; streaming files carry no size of their own and are
exempted on the i_stream flag rather than on an i_size value.

Assisted-by: Claude:claude-opus-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 85881f6cf1..29478cb419 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -998,6 +998,7 @@ int fsdev_open_cdev(struct fs_device *fsdev)
 static void init_super(struct super_block *sb)
 {
 	INIT_LIST_HEAD(&sb->s_inodes);
+	sb->s_maxbytes = MAX_LFS_FILESIZE;
 }
 
 static int fsdev_umount(struct fs_device *fsdev)
@@ -2627,6 +2628,14 @@ static int rmdirat(int dirfd, const char *pathname)
 	return errno_set(error);
 }
 
+static bool i_size_valid(struct inode *inode)
+{
+	if (inode->i_stream)
+		return true;
+
+	return (u64)inode->i_size <= inode->i_sb->s_maxbytes;
+}
+
 static int do_dentry_open(struct file *f)
 {
 	int error;
@@ -2642,6 +2651,12 @@ static int do_dentry_open(struct file *f)
 			return error;
 	}
 
+	if (!i_size_valid(f->f_inode)) {
+		dev_warn(&f->fsdev->dev, "%s: bad i_size value: %lld\n",
+			 f->path, f->f_size);
+		return -EUCLEAN;
+	}
+
 	if (f->f_flags & O_TRUNC) {
 		error = fsdev_truncate(f, 0);
 		f->f_size = 0;

-- 
2.47.3



