Delivery-date: Fri, 04 Sep 2026 11:16:25 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2Q24-00Afsz-2o
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 11:16:25 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rJc9yFcC;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 73A24200F53
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 11:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9ZUFfBJvAK64QzojQX0T5eQDVJT0w4MYaJIwhcxurJQ=; b=rJc9yFcCbj7D1C
	VckO4d9uSRpoVRU5JXHKyiXX/vyxBHyahRUpQElWNlC52O8/ISKxCk0P8wtvgFwUdZN/JebQeBoo+
	h/eunxAZG/g8t3Yg+rSi3dkqMxCqPNIZjtnG0baqFdTHtQ+dsLd7g89FspQHZyWPzb0oEvVXxqV5F
	b6EDpIC3FTl4GHrY0g+/dItAcXqA1FqG1IVf2Lk/0EnSOvVmohtmrmwoC703Q0XI5JfDXb5rTao4q
	3Q3bamHA4bgkcJcRPbFkF6ZiX75WtOhf9j1CSKsjIuSQiT0tZRTdj4pRR79OJ3e4DJC/yyFzzuCyB
	KqSoNy2Y8yKg/r9mvwAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Q1f-00000001V3o-0c76;
	Fri, 04 Sep 2026 09:15:59 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Q1b-00000001V37-3Wk6
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 09:15:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 51EB5200F53;
	Fri, 04 Sep 2026 11:15:52 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x2Q1Y-004tRe-0p;
	Fri, 04 Sep 2026 11:15:52 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x2Q1Y-0000000Fa7B-0bHH;
	Fri, 04 Sep 2026 11:15:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] fs: reject inodes whose size the superblock cannot address
Date: Fri,  4 Sep 2026 11:15:51 +0200
Message-ID: <20260904091551.3713729-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_021556_031774_4C8BD722 
X-CRM114-Status: GOOD (  12.90  )
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
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: gixwf93sqbjw37wcxu7d3urk1bsjsywq
X-Rspamd-Queue-Id: 73A24200F53
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]

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
sign is covered too; FILE_SIZE_STREAM is negative on purpose and has to
be excluded.

Assisted-by: Claude:claude-opus-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index ce41f23f88..9518f28539 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -986,6 +986,7 @@ int fsdev_open_cdev(struct fs_device *fsdev)
 static void init_super(struct super_block *sb)
 {
 	INIT_LIST_HEAD(&sb->s_inodes);
+	sb->s_maxbytes = MAX_LFS_FILESIZE;
 }
 
 static int fsdev_umount(struct fs_device *fsdev)
@@ -2613,6 +2614,14 @@ static int rmdirat(int dirfd, const char *pathname)
 	return errno_set(error);
 }
 
+static bool i_size_valid(struct inode *inode)
+{
+	if (inode->i_size == FILE_SIZE_STREAM)
+		return true;
+
+	return (u64)inode->i_size <= inode->i_sb->s_maxbytes;
+}
+
 static int do_dentry_open(struct file *f)
 {
 	int error;
@@ -2628,6 +2637,12 @@ static int do_dentry_open(struct file *f)
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



