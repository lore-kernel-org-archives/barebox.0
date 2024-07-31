Delivery-date: Wed, 31 Jul 2024 10:05:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LM-004jWF-2d
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 10:05:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LL-0004N2-8M
	for lore@pengutronix.de; Wed, 31 Jul 2024 10:05:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Fn+Wvzht6r1wUHOM1ZaETcUrxqnrX/pN1aF1jriduhs=; b=SlCuJKxWMWCY/jBuSMUVs768/e
	KbELPYwHy5aEFz18z+4ydAIwMo7EtNmQeSSNfUzCGkZ22IW4CED7yL39Lh7aISUsFE+3iXvycq3yF
	mJBjjknGZLAl/KG/wTOljuU7U3DC35EOgPOpg3NiKvjZALJ0ZxLTAgE3fR/Wt7cL4RfAeWc4mdaCG
	hXAz4ObxkwcFEJVMj7uQCkfopfZVE1iRc2hcR1rSUCRTNkaX3m8yg5+uYIH3jUWgdfOMcZnyjO1Nx
	RycFYIqsU84jVZJ1Eip1oRjkRy5jlfajQ+0gr0YtN+9NQjCcncKRVKE7u5HBr5FtQy2QkCMLGKM8O
	J9lcQ/+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Kk-00000000F5X-110l;
	Wed, 31 Jul 2024 08:05:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Ke-00000000F3O-2vNP
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 08:05:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-0003y4-BC
	for barebox@lists.infradead.org; Wed, 31 Jul 2024 10:05:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kc-003TfZ-Uh
	for barebox@lists.infradead.org; Wed, 31 Jul 2024 10:05:10 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kc-001Wt2-2l
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 10:05:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 31 Jul 2024 10:05:00 +0200
Message-Id: <20240731080510.364706-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_010512_975879_04F3A707 
X-CRM114-Status: GOOD (  21.18  )
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
Subject: [PATCH v2 00/10] mmc: add SD/eMMC erase support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A common optimization for flashing is to skip gaps between partitions
and only flash actual data. The problem with that is that data from
the previous installation may persist and confuse later software, e.g.
an existing barebox state partition not contained in the image may
survive, when the expectation is that a new state is created.

eMMCs can support three different commands for erasing data:

  - Erase: This has the widest support, but works on only on the level
    of erase groups that may span multiple write blocks.
    The region reads as either '0' or '1' afterwards.

  - Trim: New in eMMC v4.4. This erases write blocks.
    The region reads as either '0' or '1' afterwards.

  - Discard: New in eMMC v4.5. This discards write blocks. It's up to the
    card what action if any is taken.
    All or part of the data may remain accessible.

All of these don't enforce a actual physical NAND erase operation.
In case erasure does happen, it may happen later at a convenient time.

All of them, except for discard guarantee that a fixed pattern (either
all zeroes or all ones) will be read back after the erase operation
concludes. Therefore let's use them in barebox to implement the erase
command.

The behavior of the erase command will be similar to the Linux
blkdiscard -z command when the erase byte value is all-zeroes. In Linux
blkdiscard -z is emulated with zero writes if the erased byte is 0xFF,
but for barebox, the erase operation won't care whether it writes 0x00
or 0xFF.

Note that this is considerably slower than need be, because we don't
erase multiple erase groups at once. Doing so could run into the
send_cmd timeout of the host hardware or its drivers. The correct
workaround is to calculate the duration of the erase operation and split
up the erases, so we always stay below a specific erase operation
duration. There's a comment that explains this and implementing it is
left as future exercise.

Ahmad Fatoum (10):
  fs: give erase() a new erase_type parameter
  cdev: factor out range identical/overlap check
  block: factor out chunk_flush helper
  block: allow block devices to implement the cdev erase operation
  mci: turn bool members into bitfield in struct mci
  mci: describe more command structure in mci.h
  mci: core: use CONFIG_MCI_WRITE, not CONFIG_BLOCK_WRITE
  mci: add support for discarding write blocks
  commands: sync: add new command to flush cached writes
  commands: blkstats: add command to print block device statistics

 arch/arm/mach-imx/imx-bbu-external-nand.c |   2 +-
 arch/arm/mach-imx/imx-bbu-internal.c      |   4 +-
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c   |   2 +-
 commands/Kconfig                          |  25 ++
 commands/Makefile                         |   2 +
 commands/blkstats.c                       |  66 ++++
 commands/flash.c                          |   2 +-
 commands/nandtest.c                       |   2 +-
 commands/sync.c                           |  42 +++
 common/Kconfig                            |   3 +
 common/bbu.c                              |   2 +-
 common/block.c                            | 114 ++++--
 common/environment.c                      |   7 +-
 common/fastboot.c                         |   2 +-
 common/partitions.c                       |  16 +-
 common/state/backend_bucket_circular.c    |   2 +-
 drivers/mci/Kconfig                       |   5 +
 drivers/mci/mci-core.c                    | 401 ++++++++++++++++++++--
 drivers/misc/storage-by-uuid.c            |   3 +
 drivers/usb/gadget/function/dfu.c         |   4 +-
 fs/devfs-core.c                           |  26 +-
 fs/devfs.c                                |   5 +-
 fs/fs.c                                   |   4 +-
 include/block.h                           |  11 +
 include/driver.h                          |  13 +
 include/fs.h                              |  26 +-
 include/mci.h                             |  75 +++-
 include/range.h                           |  57 +++
 lib/libfile.c                             |   2 +-
 29 files changed, 824 insertions(+), 101 deletions(-)
 create mode 100644 commands/blkstats.c
 create mode 100644 commands/sync.c
 create mode 100644 include/range.h

-- 
2.39.2



