Delivery-date: Tue, 09 Dec 2025 13:52:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCH-009Yqy-1D
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 13:52:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCF-0001Dd-Qw
	for lore@pengutronix.de; Tue, 09 Dec 2025 13:52:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pfVgvL151OHPiyLnhGrVdJI30vpDJf8ik7hyD/dyx6s=; b=h318znTCvcBxDrT9PQms8pAtQ6
	iaYntJHWC6W5+87U/fTmZHaRz5cCAoy9eWuulDGJjgU41b8PKaLsX3AEfe0gcvjC8EN/F0eAWqYdR
	n2RvuqhOt1HsHX9lgVUBXdwt0uIt7xKzOeMPZKdvAZVfC157yJTTGoH4YyyxoM+oRD1zdWdJUKqMK
	lehYO8eDt2VvvaE1bWsQrqPb9yxdp3sVLdMNYjIe2GG97FsnWM111O5G76PAmtmLjQWuLwGVHCsQp
	eX+waJFoSiYGM6Q9qU8G9SkMBs5vNEyu/rp8uCyQ6yw0uGjrOMjbD0m0pH2mI2rhSRUZa+4Dbh0/z
	yXuXIGJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBk-0000000EHLp-2WIL;
	Tue, 09 Dec 2025 12:51:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBd-0000000EHHL-26bZ
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 12:51:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000or-D0; Tue, 09 Dec 2025 13:51:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-004muZ-0G;
	Tue, 09 Dec 2025 13:51:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBa-0000000HSGm-46bE;
	Tue, 09 Dec 2025 13:51:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 09 Dec 2025 13:51:19 +0100
Message-Id: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEcbOGkC/13MQQ6DIBCF4auYWZfGoRJIV71H44LAoLMBA0psj
 Hcvddnl//LyHVAoMxV4dgdkqlw4xRby1oGbbZxIsG8NspcKUWrhqYYiHD6MC0ENRlpo3yVT4P1
 y3mPrmcua8udiK/7Wf6Gi6MVgQ0Bp0GilXwvFaVtzirzfPcF4nucXc9Yp0p8AAAA=
X-Change-ID: 20251127-devfs-c138cff5482a
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765284682; l=2650;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=h++CYTtavXPkJaPwFQb2nSjbm36y9LoZXCErVWdk9Lc=;
 b=jwpR2rebhpdU1BUn6U+b7HlSveS/+oEdOyuBkqbm444wAW2SuOtJj/52Ae49+lY2hVkCqWcMx
 4AkA4odu7lCCyWRpTOpZjicwUL52cZZN0oeY2Goshb3SFIGiGZPx4OJ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_045125_579592_5FB54975 
X-CRM114-Status: GOOD (  14.96  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/13] fs: Use device special nodes for devfs
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
Changes in v2:
- Fix storage-by-uuid driver for devfs changes
- remove created device special files and links on devfs_remove()
- Link to v1: https://lore.barebox.org/20251127-devfs-v1-0-4aff12818757@pengutronix.de

---
Sascha Hauer (13):
      fs: devfs-core: add devfs_create_link_node()
      storage-by-alias: drop fake cdev
      fs: implement mknod
      commands: add mknod command
      fs: ramfs: add device file support
      cdev: add cdev_size() helper
      fs: fix st_size for device files
      fs: retire devfs as filesystem
      fs: include cdevname in struct stat
      fs: stat_print: get cdevname from stat
      common: cdev-alias: rename struct
      fs: replace cdev links with aliases
      ls: use ~0 for FILE_SIZE_STREAM

 commands/Kconfig                |   4 +
 commands/Makefile               |   1 +
 commands/devinfo.c              |   7 +-
 commands/ls.c                   |   8 +-
 commands/mknod.c                |  43 ++++++++
 common/cdev-alias.c             |  12 +--
 common/partitions.c             |   2 +-
 common/startup.c                |   2 +-
 drivers/block/dm/dm-core.c      |   1 -
 drivers/misc/storage-by-alias.c | 120 ++--------------------
 fs/devfs-core.c                 | 214 +++++++++++++++++++++++++---------------
 fs/devfs.c                      | 180 +++------------------------------
 fs/fs.c                         |  75 +++++++++-----
 fs/ramfs.c                      |  18 ++++
 include/block.h                 |   2 -
 include/driver.h                |  20 +++-
 include/fcntl.h                 |   6 ++
 include/linux/fs.h              |  13 +++
 include/linux/stat.h            |   1 +
 19 files changed, 327 insertions(+), 402 deletions(-)
---
base-commit: 500df27eb054f86ce232c5bb30c3a7ea8f771e61
change-id: 20251127-devfs-c138cff5482a

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



