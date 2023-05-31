Delivery-date: Wed, 31 May 2023 17:01:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NK4-004O87-Kn
	for lore@lore.pengutronix.de; Wed, 31 May 2023 17:01:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NJy-0000wR-BN
	for lore@pengutronix.de; Wed, 31 May 2023 17:01:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xNiuB3e/xORn4BsuAxl5j+DNEYro3YHlgecP6/Cr69k=; b=sO/dTENCthkLLoimP/Y1SL13ND
	x7qXdnFX9equM4KlLPbF03LxVXVFT2wDjxVwS85mF7cpfaShNlKjG4obgbL+eUD0sC0qzSG6CpF1I
	63mdG/G8SsLmA7Ng65Uw4NItzqX7cohT6z9kf7u1vgSHbx5BgWOyF/IN48U8986iCE2YEXD2mUv4z
	vk8lNpyZEtWapu7YsekGoLoLBff4qeMGVCt5JwiJiTVQ81kgc/5oWNr6iyb7C/jMWAWd9MT/tg2l2
	rS7+Q+j4DVcnTOC9L247JMotVNlfRQeDQQUUITZdqsh0wSo0xxLY26q0Ali7Qtjp8Bw5p4UNu5N+J
	Z1fr8Hlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIg-000BwG-0f;
	Wed, 31 May 2023 14:59:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NId-000BvT-1D
	for barebox@bombadil.infradead.org;
	Wed, 31 May 2023 14:59:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=xNiuB3e/xORn4BsuAxl5j+DNEYro3YHlgecP6/Cr69k=; b=Z4/6Do6NYRyg/vYIK0uBvthJsd
	kd9U8iIGp8Au5r+0UH8xpTBgowi34HVrfpggFGqOw36PZ/tKqDfgJP6sx1ZdxrjJNMRCw121YM5Ii
	4epz9i7K845ytmirH7O2+gC3u+r7lvo9nITeKwimRBgzRZbOMyKMIM4fU5ZPWW0gsZspkMYfHDKcR
	YBw1mAWlOJ1oexYqXnMiSxJUNXgywWMzLvOUhtYMYweNztO9nZxG+pqzG9PPoDann3fm5dEImbShx
	EcN+pWmoRkLSKQAItuDdcSjPNIEXuc/0P+KHizqVYcZb8T2B+N5MosFgs6SH/MDv5rgXmRnjRKX5T
	4CvopPyA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIZ-00FUiM-0g
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 14:59:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIV-0008HF-KK
	for barebox@lists.infradead.org; Wed, 31 May 2023 16:59:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0048IK-VK
	for barebox@lists.infradead.org; Wed, 31 May 2023 16:59:34 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIQ-005sCR-57
	for barebox@lists.infradead.org; Wed, 31 May 2023 16:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 31 May 2023 16:59:09 +0200
Message-Id: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_155939_366456_BF359CC2 
X-CRM114-Status: GOOD (  13.23  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/18] state: allow lookup of barebox state partition by Type GUID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, we had basically three ways to reference barebox,state on block
devices:

  - On platforms with device tree, we point at a fixed partition
    described in the DT

  - On platforms without device tree, we have a custom binding that
    does a global lookup by partuuid (or a more obscure one by diskuuid).

Both are less than optimal. The first clashes with the need to use
a GPT partition for the state and the second doesn't allow relating the
UUID with an actual device for the case where e.g. both an SD-Card and
an eMMC are flashed with the same image.

This series fixes that by:

  - Supporting definition of fixed partitions that are identical to
    GPT/MBR partitions.

  - Alternatively, support pointing barebox-state backend at a
    GPT-partitioned device and the partition with the barebox-state
    Type GUID will be taken.

Ahmad Fatoum (18):
  common: partitions: decouple from EFI GUID definition
  efi: define efi_guid_t as 32-bit aligned guid_t
  cdev: fix for_each_cdev macro
  of: partition: support of_partition_ensure_probed on parent device
  of: of_path: always call of_partition_ensure_probed before resolving
  driver: add new cdev_is_partition helper
  commands: stat: remove code duplication for type info
  cdev: use more descriptive struct cdev::diskuuid/partuuid
  cdev: record whether partition is parsed from OF
  cdev: have devfs_add_partition return existing identical partition,
    not NULL
  block: parse partition table on block device registration
  common: partitions: record whether disk is GPT or MBR partitioned
  block: add cdev_is_block_(device,partition,disk) helpers
  of: export new of_cdev_find helper
  state: factor device path lookup into helper function
  cdev: use cdev::dos_partition_type only if cdev_is_mbr_partitioned
  common: partitions: efi: record type UUID in cdev
  state: allow lookup of barebox state partition by Type GUID

 arch/sandbox/board/hostfile.c  |  4 ---
 common/block.c                 |  6 ++++
 common/blspec.c                |  2 +-
 common/bootm.c                 |  2 +-
 common/partitions.c            |  4 +--
 common/partitions/dos.c        |  4 ++-
 common/partitions/efi.c        | 11 +++---
 common/partitions/parser.h     |  6 +++-
 common/state/state.c           | 56 +++++++++++++++++++++++++------
 drivers/ata/disk_ata_drive.c   |  5 ---
 drivers/base/driver.c          |  2 +-
 drivers/block/efi-block-io.c   |  9 +----
 drivers/block/virtio_blk.c     |  8 +----
 drivers/mci/mci-core.c         |  6 ----
 drivers/misc/storage-by-uuid.c |  4 +--
 drivers/nvme/host/core.c       |  5 ---
 drivers/of/of_path.c           | 61 +++++++++++++++++++++++-----------
 drivers/of/partition.c         | 31 +++++++++++++----
 drivers/of/platform.c          |  2 +-
 drivers/usb/storage/usb.c      |  5 ---
 fs/devfs-core.c                | 60 ++++++++++++++++++++++++---------
 fs/fs.c                        | 33 ++++++++++++------
 include/block.h                | 15 +++++++++
 include/driver.h               | 58 +++++++++++++++++++++++++++++---
 include/efi.h                  | 19 ++++++++---
 include/efi/partition.h        | 27 +++++++--------
 include/of.h                   |  1 +
 include/state.h                |  4 +++
 lib/Makefile                   |  1 +
 lib/uuid.c                     | 15 +++++++++
 30 files changed, 328 insertions(+), 138 deletions(-)
 create mode 100644 lib/uuid.c

-- 
2.39.2



