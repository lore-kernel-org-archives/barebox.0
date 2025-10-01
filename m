Delivery-date: Wed, 01 Oct 2025 10:07:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3rrt-0034Fe-2I
	for lore@lore.pengutronix.de;
	Wed, 01 Oct 2025 10:07:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3rrt-0003VN-3r
	for lore@pengutronix.de; Wed, 01 Oct 2025 10:07:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nXGGdAeNH1BxBHnCToZ5Asz0BxbrElIQvOhFD0Jc0Kc=; b=hHOpE3OWNPS/nKYZ3GdrKQ+sR4
	wZ0fXZI6IbCvPBucZQQZCvx5X82Vn4XorTUbimfgRdOEk40y42oH5eIIfXI70e1NeLsuu4AJMFxWR
	z9n4yERlyoybvQ8Dzu9tuuf7ZN/f72jV9hljkwke2KntGjkxDOpgy2/U69fb2VFw+ZKwvK+Hb6d1n
	LdpsOOcrHfjEHGtkjPoeL6PxuPQkrsS44Rtlt1m+gF346dSltB+xSunM5cqMQWDbYggOAF2qhYkr5
	8dJkA2Xhc7KVe0QeAmmQFSImEGmx57ONAwrjLxFqdOH6bJdfvtKn9BKdDOid5oC4eRcQUUqfMKDEo
	/PtsPJyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3rrG-00000006yjE-2hmc;
	Wed, 01 Oct 2025 08:06:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3rrE-00000006yhz-1lUp
	for barebox@lists.infradead.org;
	Wed, 01 Oct 2025 08:06:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3rr5-0003H9-0v; Wed, 01 Oct 2025 10:06:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3rr4-001NZ6-2Z;
	Wed, 01 Oct 2025 10:06:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3rr4-00000001kP0-30ie;
	Wed, 01 Oct 2025 10:06:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 01 Oct 2025 10:06:26 +0200
Message-Id: <20251001-fs-remove-dev-argument-v1-0-1922aaf65062@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAALh3GgC/x3MQQqDMBBG4avIrDuQSZWKV5EugvnVWRjLpA2Ce
 PcGl9/ivZMyTJFpaE4yFM26pwp5NDStIS1gjdXkne/EOeE5s2HbCziicLDltyF9+dlHmby4tn8
 J1fhjmPW4x+P7uv7n/HWFaAAAAA==
X-Change-ID: 20251001-fs-remove-dev-argument-38d1c2104871
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759305990; l=2305;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=cdAhC+/DtP7l4VtumYC1N3j6lyXoF3xjddWpIu2Oncc=;
 b=GmpIx0Dk58V37GnLTSpl97gNX1L4Q/wkOspnP0Xk+WozdguU2o8Oj6W9ckFe7vjfU+M20H3+H
 Q1Vb+h+bSZmBqyBTxAVGn1v+7V7ZWGQDO0q0ND4n0MkvP4aQgmxi38b
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_010640_470958_A5948E03 
X-CRM114-Status: GOOD (  11.68  )
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
X-Spam-Status: No, score=-1.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] fs: remove dev argument from file operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All fs_driver operations like read, write and ioctl take a struct device *
argument which is mostly unused by the filesystem driver and for the few
cases where it was used the device can be retrieved from the file argument.

This series removes the dev argument and moves the the fs_driver
operation over to filesystem_operations.

This is done in preparation to support device special files later and
consequently retire devfs as a filesystem.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      fs: remove redundant dev argument from fs_driver operations
      fs: move fs_driver operations to struct file_operations

 fs/9p/v9fs.h           |  8 +++-----
 fs/9p/v9fs_vfs.h       |  2 +-
 fs/9p/vfs_addr.c       |  6 ++----
 fs/9p/vfs_dir.c        |  2 +-
 fs/9p/vfs_file.c       |  6 ++++++
 fs/9p/vfs_inode_dotl.c |  9 +--------
 fs/bpkfs.c             |  8 ++++----
 fs/cramfs/cramfs.c     |  9 +++++++--
 fs/devfs.c             | 42 +++++++++++++++++++---------------------
 fs/efi.c               |  9 ++++-----
 fs/efivarfs.c          |  8 +++-----
 fs/ext4/ext_barebox.c  |  8 ++++++--
 fs/fat/fat.c           | 19 ++++++++----------
 fs/fs.c                | 48 +++++++++++++++++++++++-----------------------
 fs/jffs2/fs.c          | 15 +++++++--------
 fs/legacy.c            | 52 ++++++++++++++++++++++++++++++++++++++++++++++++++
 fs/nfs.c               | 17 ++++++++---------
 fs/omap4_usbbootfs.c   |  3 +--
 fs/pstore/fs.c         |  8 ++++----
 fs/qemu_fw_cfg.c       | 27 +++++++++++++-------------
 fs/ramfs.c             | 20 ++++++++++---------
 fs/ratpfs.c            | 15 ++++++---------
 fs/smhfs.c             | 18 +++++++----------
 fs/squashfs/squashfs.c | 15 +++++++--------
 fs/tftp.c              | 19 +++++++++---------
 fs/ubifs/super.c       |  1 +
 fs/ubifs/ubifs.c       |  3 +--
 fs/ubifs/ubifs.h       |  1 +
 fs/uimagefs.c          | 15 +++++++--------
 include/fs.h           | 24 +++++------------------
 include/linux/fs.h     | 20 +++++++++++++++----
 31 files changed, 246 insertions(+), 211 deletions(-)
---
base-commit: 92d503132efc60305fb94d87e54a1214e1781dae
change-id: 20251001-fs-remove-dev-argument-38d1c2104871

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



