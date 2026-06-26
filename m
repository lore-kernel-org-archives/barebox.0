Delivery-date: Fri, 26 Jun 2026 10:47:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DO-00A136-13
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DN-00063c-4K
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eGc5yjq9xGN3CZbFuy3It/V9qOGmIUeRzl/Xn7iNC4I=; b=tCDUAbSZEZfAXGbsgR2sw5SO8l
	7KnrL6wD+AM0Mu9EiwviMIJgG6oNBIgW5yREJnnHivK60TvmW8TKXg1uS0Ol2kFCoz8+vIY/r9b+i
	Ec03OUrbW1EzI2lWFw6RPcfKrtoMgOOdn+c78P6BVxYts2wbmXtjol1sgS4RCEmm5TDUC/Ve5MvdS
	HYZSPItPivbqpJcsPJJ8G9Jlg2SnDb8xhySUZuETuKAm7PtNVhHgkP0EW1fLvMqn/TljNgdS4Q+dv
	sQ1kX+BjZK4fni7Y2Jw4ULuDmel0y8Q42HKSkUekpP6WJog6e2EctteQPH/3H9yW8057DhH49YfxT
	+nXguBuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cb-0000000AtDe-164W;
	Fri, 26 Jun 2026 08:46:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CV-0000000At82-431T
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CR-0003ZP-Ph
	for barebox@lists.infradead.org; Fri, 26 Jun 2026 10:46:11 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Fri, 26 Jun 2026 10:42:11 +0200
Message-ID: <20260626084608.1388806-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014616_055076_053481F6 
X-CRM114-Status: GOOD (  11.19  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/26] block: add support for non-512 byte sectors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox code is currently a mixture of code that reads as if it supports
runtime-determined block sizes and code that hardcodes assumption of
512 byte sectors. End result is that use of a 4K sector will likely
crash as e.g. partition table parser is hardcoded to 512 bytes.

This series fixes most of that. Apparently there are MMCs (but not SDs)
that have 4K sectors, which this series doesn't add support for.

The parted command also doesn't yet support anything but 512 byte
sectors for now, so an erorr is printed, but most everything else should
now function correctly with either sector size.

Tested both on QEMU with USB/EFI/NVMe as well as real hardware (RK3588 +
NVMe).

Ahmad Fatoum (26):
  nvme: use barebox-appropriate 64-bit type for timeouts
  nvme: fix buffer advancement when chunking due to max_hw_sectors
  nvme: allow flush opcode
  nvme: honor namespace block size for I/O
  bootscan: fix detection of GPT
  block: clarify that writebuffer_io_len returns sector counts
  block: fix wrong type for discard_start/size byte ranges
  block: fix discard zeroing too little memory
  block: use logical block size for reparse checks
  block: require lower bound of sector size to be 512 bytes
  filetype: don't hardcode sector size in file_detect_partition_table
  block: define helpers for non-512-byte sector support
  bootscan: use block size for partition table probe
  ramdisk: validate exported sector size
  efi: block: fix sector size mismatch in block device registration and
    ops
  efi: loader: disk: report block device size in Block I/O
  efi: loader: file: report cdev block size in file info
  partitions: use byte offset for first partition policy
  partitions: dos: allocate correctly sized buffer for
    dos_partition_desc
  partition: support non-512 byte sectors
  fs: fat: fix garbage read when writing with bigger block size
  fs: fat: support larger block device sectors
  usb-storage: preserve READ CAPACITY sector size
  fuzz: add 4K-sector partition ramdisk target
  commands: parted: prepare use of non-512-byte sectors
  commands: parted: exit if block size if not 512

 Documentation/devel/fuzzing.rst               |  1 +
 .../migration-guides/migration-master.rst     | 11 +++
 commands/createnv.c                           | 18 +++-
 commands/parted.c                             | 21 +++--
 common/block.c                                | 29 ++++--
 common/bootscan.c                             | 19 +++-
 common/filetype.c                             | 16 ++--
 common/partitions.c                           | 93 +++++++++++--------
 common/partitions/dos.c                       |  6 +-
 common/partitions/efi.c                       | 28 +++---
 drivers/block/efi-block-io.c                  | 21 +++--
 drivers/block/ramdisk.c                       | 36 +++++--
 drivers/nvme/host/core.c                      |  6 +-
 drivers/nvme/host/nvme.h                      |  9 +-
 drivers/nvme/host/pci.c                       |  5 +-
 drivers/usb/storage/usb.c                     | 44 +++++----
 efi/loader/protocols/disk.c                   |  9 +-
 efi/loader/protocols/file.c                   |  3 +-
 fs/fat/diskio.h                               |  9 ++
 fs/fat/fat-diskio.c                           | 10 +-
 fs/fat/fat.c                                  | 51 +++++++---
 fs/fat/ff.c                                   |  2 +-
 fs/fat/ffconf.h                               |  6 +-
 images/Makefile.sandbox                       |  1 +
 include/block.h                               | 38 +++++++-
 include/disks.h                               |  7 ++
 include/filetype.h                            |  3 +-
 include/fuzz.h                                |  9 +-
 include/partitions.h                          |  4 +-
 29 files changed, 351 insertions(+), 164 deletions(-)

-- 
2.47.3



