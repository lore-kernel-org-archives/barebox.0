Delivery-date: Mon, 22 Nov 2021 09:49:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp50o-0003LH-J5
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:49:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp50m-0008PW-KA
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:49:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CpmxRzpbnfFI0mu0+a2ryDbrO/cPiO1EqwarzXzkp4U=; b=Ezb+VOU66DRMkN
	43Ixaub6+3yTkZM2d0XSWT1RcuVavE1lND3vx7RiUJ9CSkxAOJf4Ao7WQwvsKZ+A0QfYL/NPhC8O5
	upk9db1+IH90cdrTJpZX0WPvdR7mS8KcKSZAtv5S1oF8Z0ruSXmYPQter13Mbuscuja/mUWPxfRqv
	8rIOftM7peER7aCGYy3otR05Ihx/kChtAEdo+zbZ7eBBivZ96H73rkao00wsMF2wBPFpvEt8K5LqZ
	CM5JvRr6phiqseIjN1qRg7jFjBFrybvzZ90L9dqnBITqf1QI8GQQkCMhxMPkxsbPnRb3hXMGbdpQ7
	aDkMMNkK+ak4tydblulw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp4zS-00FL8R-Cn; Mon, 22 Nov 2021 08:47:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zD-00FKyp-DJ
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1mp4z9-0007wB-Tq
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 09:47:35 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>) id 1mp4z9-00AteT-83
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 Nov 2021 09:47:02 +0100
Message-Id: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004739_503046_F2E0CF7E 
X-CRM114-Status: GOOD (  12.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/30] efi: refactor for upcoming loader support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Nothing EFI loader support specific yet, just shifting around code to
enable future reuse, fixing some typos found along the way and improving
wide char support a bit.

Ahmad Fatoum (30):
  fs: remove useless AT_FDCWD references
  fs: remove unused struct node_d in struct dir
  block : efi: rename driver variable from efi_fs_driver to
    efi_bio_driver
  include: <linux/types.h>: wrap in #ifndef __ASSEMBLY__
  hw_random: stm32: propagate error codes from rng read
  efi: align LOAD_FILE_PROTOCOL_GUID's name with other PROTOCOL_GUIDs
  asm-generic: move sync_caches_for_execution declaration to
    <asm/cache.h>
  common: move EFI code into new efi/ top level directory
  serial: efi-stdio: move efi-stdio.h header to central location
  efi: use SPDX-License-Identifier where appropriate
  drivers: efi: move Kconfig options to new menu
  efi: factor out errno translation
  efi: rename <efi/efi.h> to <efi/efi-payload.h>
  efi: centralize efivarfs_parse_filename
  kbuild: force 16-bit wchar_t treewide
  include: <linux/nls.h>: remove duplicate wchar_t typedef
  lib: wchar: add wctomb and mbtowc
  lib: implement wcsnlen
  vsprintf: add optional support for %ls format modifier
  libfile: null-terminate read_file of wchar_t buffer
  commands: echo: add wide file output via wecho alias
  efi: make efi_main __noreturn
  efi: define and use new EFI_ERROR_MASK macro
  common: move CONFIG_ELF into General Settings
  efi: don't zero executable buffer before freeing
  partitions: efi: move header to central location
  efi: print early efi_main string on CONFIG_DEBUG_LL=y
  ARM64: board-dt-2nd: remove no longer needed noinline function split
  bus: acpi: register bus even if without ACPI EFI table
  efi: guid: fix typos

 Makefile                                      |   2 +-
 arch/arm/cpu/board-dt-2nd.c                   |  21 ++--
 arch/arm/include/asm/cache.h                  |   3 +
 arch/kvx/include/asm/cache.h                  |   3 +
 arch/riscv/include/asm/barebox-riscv.h        |   3 +-
 .../include/asm/{cacheflush.h => cache.h}     |   9 +-
 arch/riscv/lib/reloc.c                        |   2 +-
 arch/x86/Kconfig                              |   3 -
 arch/x86/Makefile                             |   2 +-
 commands/echo.c                               |  55 ++++++++-
 common/Kconfig                                |  16 +--
 common/Makefile                               |   4 +-
 common/efi/Kconfig                            |  27 ++++
 common/efi/Makefile                           |  10 +-
 common/{efi-devicepath.c => efi/devicepath.c} |   2 +
 common/efi/efivar-filename.c                  | 116 ++++++++++++++++++
 common/efi/errno.c                            |  90 ++++++++++++++
 common/{efi-guid.c => efi/guid.c}             |   8 +-
 common/efi/payload/Makefile                   |   6 +
 .../env-efi/network/eth0-discover             |   0
 common/efi/{efi-image.c => payload/image.c}   |  16 +--
 common/efi/{efi.c => payload/init.c}          | 111 ++---------------
 common/efi/{efi-iomem.c => payload/iomem.c}   |   2 +-
 common/partitions/efi.c                       |   2 +-
 drivers/Kconfig                               |   1 -
 drivers/block/efi-block-io.c                  |   6 +-
 drivers/bus/acpi.c                            |  10 +-
 drivers/clocksource/efi.c                     |   2 +-
 drivers/clocksource/efi_x86.c                 |   2 +-
 drivers/efi/Kconfig                           |   6 -
 drivers/efi/efi-device.c                      |   2 +-
 drivers/hw_random/stm32-rng.c                 |   8 +-
 drivers/net/efi-snp.c                         |   2 +-
 drivers/pci/pci-efi.c                         |   2 +-
 drivers/serial/efi-stdio.c                    |  45 +------
 drivers/serial/efi-stdio.h                    |  59 ---------
 drivers/serial/serial_efi.c                   |   2 +-
 drivers/video/efi_gop.c                       |   2 +-
 drivers/watchdog/efi_wdt.c                    |   2 +-
 fs/efi.c                                      |   2 +-
 fs/efivarfs.c                                 |  78 +-----------
 fs/fs.c                                       |  56 ++++-----
 include/asm-generic/cache.h                   |   9 ++
 include/dirent.h                              |   1 -
 include/efi.h                                 |  71 ++++++-----
 include/efi/debug_ll.h                        |   3 +-
 include/efi/efi-device.h                      |   1 +
 include/efi/{efi.h => efi-payload.h}          |  12 +-
 include/efi/efi-stdio.h                       | 100 +++++++++++++++
 include/efi/efi-util.h                        |  14 +++
 .../efi.h => include/efi/partition.h          |   0
 include/linux/namei.h                         |   4 -
 include/linux/nls.h                           |   3 +-
 include/linux/types.h                         |   2 +
 include/wchar.h                               |   7 ++
 lib/Kconfig                                   |   3 +
 lib/libfile.c                                 |   3 +-
 lib/vsprintf.c                                |  67 ++++++++--
 lib/wchar.c                                   |  31 ++++-
 59 files changed, 667 insertions(+), 464 deletions(-)
 rename arch/riscv/include/asm/{cacheflush.h => cache.h} (59%)
 create mode 100644 common/efi/Kconfig
 rename common/{efi-devicepath.c => efi/devicepath.c} (99%)
 create mode 100644 common/efi/efivar-filename.c
 create mode 100644 common/efi/errno.c
 rename common/{efi-guid.c => efi/guid.c} (96%)
 create mode 100644 common/efi/payload/Makefile
 rename common/efi/{ => payload}/env-efi/network/eth0-discover (100%)
 rename common/efi/{efi-image.c => payload/image.c} (93%)
 rename common/efi/{efi.c => payload/init.c} (66%)
 rename common/efi/{efi-iomem.c => payload/iomem.c} (99%)
 delete mode 100644 drivers/efi/Kconfig
 delete mode 100644 drivers/serial/efi-stdio.h
 create mode 100644 include/asm-generic/cache.h
 rename include/efi/{efi.h => efi-payload.h} (80%)
 create mode 100644 include/efi/efi-stdio.h
 create mode 100644 include/efi/efi-util.h
 rename common/partitions/efi.h => include/efi/partition.h (100%)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

