Delivery-date: Thu, 27 Nov 2025 10:20:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAX-005NWf-1o
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 10:20:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAW-0003Vb-Ga
	for lore@pengutronix.de; Thu, 27 Nov 2025 10:20:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0a08VShCrX9dBIW5Npnif8z3y1ZUFZQnfpj7n4oH73A=; b=y0cDXv3MKEqJ2MlPGL9wCmVmpA
	p4dgy4uWaQT3N10mCfM2rb5bIqVxbQE1Hlj+Sbbf6PA9SOQT5XsjZyu59imFUCJdhP/vvkiAqi+ZJ
	iXn9o0s+cilgebSum6cKBIvkZR+55zi6rbQedIxA7EEgZLdeWM3LWGrCMx1kFUJep1QUbhgrd5juI
	q5hOcEkBYHdexHbC9wXyFf3BB9+FaWgRU49uDD1txz+R9bUfkvs9btshvY+xaLk5t+QLDSzhgJiA7
	z2zyVPsLsUKg8fc6eXoC5R1lzO3BDOA2aAyrrd5K8bqxfB1EE8iDPZ+zXEh9NfHjBEolSAQYHSdgm
	V1PKonWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOY9y-0000000GGhw-3Gpr;
	Thu, 27 Nov 2025 09:19:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOY9v-0000000GGfD-3TzT
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 09:19:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00035F-8w; Thu, 27 Nov 2025 10:19:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9t-002lPA-2z;
	Thu, 27 Nov 2025 10:19:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00000000tc4-18MQ;
	Thu, 27 Nov 2025 10:19:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2025 10:19:22 +0100
Message-Id: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJoXKGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQyNz3ZTUsrRi3WRDY4vktDRTEwujRCWg2oKi1LTMCrA50bG1tQDMDpQ
 fVwAAAA==
X-Change-ID: 20251127-devfs-c138cff5482a
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764235165; l=2124;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jRdunqqWSpNuC4pN9L6mPFP0TEZRlsab4iBvBV2ujaI=;
 b=xejCGjM8WYMEJbuGfHODTE9kNZbhSW8WLK3HDavfLzZeOyWn3Ak6gNX75j+fYGA3rj71XMzII
 4xzlqE4JyWRDFiXTyBJzcZ2qHGL+ky6TvzLGZqYduqNrTqQ0GU4VWOQ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_011927_876648_487781D6 
X-CRM114-Status: GOOD (  13.31  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/10] fs: Use device special nodes for devfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Until now we have a devfs which is a filesystem of its own. This
comes with a few limitations:

- we cannot create directories under /dev/
- Links are implemented in the devfs filesystem. They do not show
  up as regular links

This series overcomes these limitations by implementing device special
nodes. These nodes are limited to ramfs, so we cannot mount arbitrary
filesystems and use the device special files found on them. Nevertheless
we can create and use device special files on ramfs which is enough
to drop the devfs filesystem implementation and just use ramfs on /dev/.

This will in future allow us to create /dev/disk/by-* structures under
/dev/.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (10):
      fs: implement mknod
      commands: add mknod command
      fs: ramfs: add device file support
      cdev: add cdev_size() helper
      fs: fix st_size for device files
      fs: retire devfs as filesystem
      fs: include cdevname in struct stat
      fs: stat_print: get cdevname from stat
      fs: replace cdev links with aliases
      ls: use ~0 for FILE_SIZE_STREAM

 commands/Kconfig           |   4 +
 commands/Makefile          |   1 +
 commands/devinfo.c         |   7 +-
 commands/ls.c              |   8 +-
 commands/mknod.c           |  43 +++++++++++
 common/partitions.c        |   2 +-
 common/startup.c           |   2 +-
 drivers/block/dm/dm-core.c |   1 -
 fs/devfs-core.c            | 179 ++++++++++++++++++++++++--------------------
 fs/devfs.c                 | 180 +++------------------------------------------
 fs/fs.c                    |  75 +++++++++++++------
 fs/ramfs.c                 |  18 +++++
 include/block.h            |   2 -
 include/driver.h           |  10 +--
 include/fcntl.h            |   6 ++
 include/linux/fs.h         |  13 ++++
 include/linux/stat.h       |   1 +
 17 files changed, 266 insertions(+), 286 deletions(-)
---
base-commit: f018a6e4606ef31c6975af6b960aa7824f79df73
change-id: 20251127-devfs-c138cff5482a

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



