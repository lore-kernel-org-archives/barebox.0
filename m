Delivery-date: Tue, 24 Jun 2025 21:55:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU9jl-00AhPR-1j
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 21:55:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU9jk-0005y3-Ho
	for lore@pengutronix.de; Tue, 24 Jun 2025 21:55:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sw6WYEBqK3UgAt5RJ213a01M2Z0RWa6LPCNiiHI5dkg=; b=pFTHt8Se6QcYvzLI12/irNoreo
	vZin6dKq72fAB1JJDocxsDKvl8FCDPNW7VgsNFbrHlVMNa0L+EixrXGF9g8tCpEP4pjaReLsym2VF
	76ovNMl990+0wq/x1dS+w0Y7E828a0Mri36I8oHsrxyVLyQ3Rw7vOidHN4B7KI+i7Y+ClRT/WZcks
	fUO3KSz7MPI6myvZBlveafgzrYZwC4ezgyHLVV4BxJ5VygnGAD+ixNsGMfSIMM9qbYcsI4dKWc66Q
	smYa3lNoTkRxLSlFV9RoivHcnJ4YSTdSD2Rg6DRoXh7KbazYW3k7fIVKWeKpuszi4NAzECpmSrPJt
	IbvI8nXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU9ix-00000006f9j-1UmM;
	Tue, 24 Jun 2025 19:54:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU5T5-000000065W5-1E9C
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 15:21:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU5T3-00080U-9I; Tue, 24 Jun 2025 17:21:49 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU5T3-0058Q1-0K;
	Tue, 24 Jun 2025 17:21:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU5T3-009MDM-00;
	Tue, 24 Jun 2025 17:21:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 24 Jun 2025 17:21:48 +0200
Message-Id: <20250624152148.2230298-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_082151_332480_26557C95 
X-CRM114-Status: GOOD (  11.90  )
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
Subject: [PATCH master] fs: fix file creation by not pointing file dentry at parent dir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A last-minute regression fix to allow unmounting file systems in some
situations unfortunately introduced a regression of its own:
Creating new files with O_CREAT associated a file descriptor's struct
file with the dentry of the parent directory instead of the dentry
of the newly created file.

Opening already existing files worked fine though, leading to e.g.
problems when saving a fresh environment to a directory:

  barebox@TI AM335x BeagleBone black:/ rm /mnt/mmc0.0/barebox.env
  barebox@TI AM335x BeagleBone black:/ saveenv
  saving environment to /mnt/mmc0.0/barebox.env
  could not open /mnt/mmc0.0/barebox.env: Invalid argument
  saveenv: Invalid argument
  barebox@TI AM335x BeagleBone black:/ saveenv
  saving environment to /mnt/mmc0.0/barebox.env

Opening existing files did not regress, because filename_lookup stores
the dentry of the actual file, unlike filename_create, which stores the
dentry of the parent directory.

Fixes: a3ef153fdf26 ("fs: unreference path on file close")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I noticed this with saveenv to FAT, because FAT doesn't like opening /,
but I could imagine other subtle errors creeping up elsewhere.
I think a v2025.06.1 may be in order..
---
 fs/fs.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 8689e14e68ef..4a500bbdd9da 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2604,6 +2604,12 @@ int openat(int dirfd, const char *pathname, int flags)
 			error = create(path.dentry, dentry);
 			if (error)
 				goto out1;
+			/* repoint path.dentry from parent to newly created entry.
+			 * path.mnt already points at the correct vfsmount, even
+			 * for a dirfd of the root directory, so that's fine.
+			 */
+			dput(path.dentry);
+			path.dentry = dentry;
 		} else {
 			dput(dentry);
 			error = -ENOENT;
-- 
2.39.5



