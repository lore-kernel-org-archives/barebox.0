Delivery-date: Sun, 14 Mar 2021 13:29:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsM-0007nD-En
	for lore@lore.pengutronix.de; Sun, 14 Mar 2021 13:29:42 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsI-00078D-6F
	for lore@pengutronix.de; Sun, 14 Mar 2021 13:29:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HDQ3haUycLJc8PnYOko203S8EFO6thowJnDIk8Pdnn8=; b=Jzi2hDsqny7t8QwoL1lQOTZlIA
	5UcOClaJ0aQcgQAKOWAkby+PCfy+ln5qgFsYV4YPrYmGP7EsuMuC82cK8LoR0kSp08Z6VurWEO0qX
	hyYj+Zq/9CWRr3EAnc0+kLOIEdDZD0tDIMHuDXYSVYal91VchiJRKy+mrPdx7oT7POTPjbgfRY/72
	Gr6oRr60A2TIBhxEtDn+lbxL1rvcc/O/HqooPw26dXvMwgO41kNEPhf9ulAI5Iviy36u02WkuGndG
	fr9ij/1wiCu0wOyXtDlDjY3YtVXyTMKZsHLrt4ADaW4419bvX9TKY0nET7m2W/w7GdFFJITHRkIJA
	pIRpf5Jg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLPrB-00EBza-9v; Sun, 14 Mar 2021 12:28:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLPqr-00EBrx-8q
 for barebox@lists.infradead.org; Sun, 14 Mar 2021 12:28:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqo-0006LR-Mc; Sun, 14 Mar 2021 13:28:06 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqn-00015s-Fm; Sun, 14 Mar 2021 13:28:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 14 Mar 2021 13:27:44 +0100
Message-Id: <20210314122804.4128-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210314_122809_475100_421C9CC3 
X-CRM114-Status: GOOD (  13.52  )
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
Cc: rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/20] RISC-V: rework for PBL, VIRT and 64-Bit support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With these changes applied, barebox can now generate images that can
be booted on qemu/tinyemu virt32 and virt64 machines.

The boards have clocksource, virtio, cfi-flash,  reboot and poweroff
support.

Cheers,
Ahmad Fatoum (18):
  partitions: don't allocate dma capable memory
  images: make BOARD_ARM_GENERIC_DT available for other arches
  ARM: rename CONFIG_ARM_USE_COMPRESSED_DTB to CONFIG_USE_COMPRESSED_DTB
  ARM: aarch64: ommit unused label in assembly
  serial: virtio-console: depend on, but don't select VIRTIO
  filetype: detect RISC-V Linux kernel image
  asm: unaligned: don't do unaligned accesses
  RISC-V: debug_ll: ns16550: align C access size with assembly's
  RISC-V: drop duplicate or unneeded cflags
  RISC-V: add cacheless HAS_DMA support
  RISC-V: erizo: move to arch/riscv/boards/erizo
  RISC-V: import Linux' optimized string functions
  RISC-V: implement PBL and relocation support
  RISC-V: erizo: migrate to PBL
  RISC-V: support symbol names in barebox image
  RISC-V: add generic DT image
  clocksource: add driver for RISC-V CLINT timer
  power: reset: add drivers for generic syscon reset and poweroff

Rouven Czerwinski (2):
  RISC-V: add 64-bit support
  RISC-V: add Qemu virt support

 Documentation/boards/riscv.rst               |  72 ++++++-
 Makefile                                     |   1 +
 arch/arm/Kconfig                             |   9 +-
 arch/arm/cpu/start.c                         |   2 +-
 arch/arm/lib64/runtime-offset.S              |   2 +-
 arch/arm/mach-at91/Kconfig                   |   2 +-
 arch/arm/mach-imx/Kconfig                    |  26 +--
 arch/arm/mach-omap/Kconfig                   |   2 +-
 arch/riscv/Kconfig                           |  66 +++++--
 arch/riscv/Makefile                          |  34 ++--
 arch/riscv/boards/Makefile                   |   2 +
 arch/riscv/boards/erizo/Makefile             |   3 +
 arch/riscv/boards/erizo/lowlevel.c           |  18 ++
 arch/riscv/boot/Makefile                     |   5 +-
 arch/riscv/boot/board-dt-2nd-entry.S         |  26 +++
 arch/riscv/boot/board-dt-2nd.c               |  29 +++
 arch/riscv/boot/dtb.c                        |  25 ---
 arch/riscv/boot/entry.c                      |  33 ++++
 arch/riscv/boot/entry.h                      |  15 ++
 arch/riscv/boot/entry_ll.S                   |  15 ++
 arch/riscv/boot/main_entry.c                 |  35 ----
 arch/riscv/boot/start.S                      |  68 -------
 arch/riscv/boot/start.c                      | 197 +++++++++++++++++++
 arch/riscv/boot/uncompress.c                 |  74 +++++++
 arch/riscv/configs/erizo_generic_defconfig   |   5 -
 arch/riscv/configs/virt32_defconfig          | 117 +++++++++++
 arch/riscv/configs/virt64_defconfig          | 118 +++++++++++
 arch/riscv/dts/Makefile                      |   9 +-
 arch/riscv/include/asm/barebox-riscv.h       | 101 ++++++++++
 arch/riscv/include/asm/common.h              |  10 +-
 arch/riscv/include/asm/debug_ll_ns16550.h    |  16 +-
 arch/riscv/include/asm/dma.h                 |  44 +++++
 arch/riscv/include/asm/elf.h                 |   8 +-
 arch/riscv/include/asm/image.h               |  65 ++++++
 arch/riscv/include/asm/linkage.h             |   4 +
 arch/riscv/include/asm/sections.h            |  15 ++
 arch/riscv/include/asm/string.h              |  21 +-
 arch/riscv/include/asm/types.h               |   8 +-
 arch/riscv/include/asm/unaligned.h           |  16 +-
 arch/riscv/lib/Makefile                      |   6 +-
 arch/riscv/lib/barebox.lds.S                 |  55 ++++--
 arch/riscv/lib/dtb.c                         |  26 +++
 arch/riscv/lib/memcpy.S                      | 108 ++++++++++
 arch/riscv/lib/memmove.S                     |  64 ++++++
 arch/riscv/lib/memset.S                      | 113 +++++++++++
 arch/riscv/lib/pbl.lds.S                     |  88 +++++++++
 arch/riscv/lib/reloc.c                       |  64 ++++++
 arch/riscv/lib/runtime-offset.S              |  12 ++
 arch/riscv/lib/sections.c                    |   9 +
 arch/riscv/lib/setupc.S                      |  55 ++++++
 arch/riscv/mach-virt/Makefile                |   3 +
 arch/riscv/mach-virt/include/mach/debug_ll.h |  25 +++
 common/Kconfig                               |   8 +-
 common/filetype.c                            |   3 +
 common/partitions.c                          |   5 +-
 common/partitions/dos.c                      |   7 +-
 common/partitions/efi.c                      |   1 -
 drivers/clocksource/Kconfig                  |   7 +
 drivers/clocksource/Makefile                 |   1 +
 drivers/clocksource/timer-clint.c            |  98 +++++++++
 drivers/power/reset/Kconfig                  |  14 ++
 drivers/power/reset/Makefile                 |   2 +
 drivers/power/reset/syscon-poweroff.c        |  76 +++++++
 drivers/power/reset/syscon-reboot.c          |  92 +++++++++
 drivers/serial/Kconfig                       |   2 +-
 images/Makefile                              |   8 +-
 images/Makefile.erizo                        |  12 ++
 include/dma.h                                |   1 +
 include/filetype.h                           |   1 +
 pbl/Kconfig                                  |   6 +-
 scripts/.gitignore                           |   1 +
 scripts/Makefile                             |   1 +
 scripts/Makefile.lib                         |  11 ++
 scripts/prelink-riscv.c                      | 122 ++++++++++++
 scripts/prelink-riscv.inc                    | 123 ++++++++++++
 75 files changed, 2285 insertions(+), 263 deletions(-)
 create mode 100644 arch/riscv/boards/Makefile
 create mode 100644 arch/riscv/boards/erizo/Makefile
 create mode 100644 arch/riscv/boards/erizo/lowlevel.c
 create mode 100644 arch/riscv/boot/board-dt-2nd-entry.S
 create mode 100644 arch/riscv/boot/board-dt-2nd.c
 delete mode 100644 arch/riscv/boot/dtb.c
 create mode 100644 arch/riscv/boot/entry.c
 create mode 100644 arch/riscv/boot/entry.h
 create mode 100644 arch/riscv/boot/entry_ll.S
 delete mode 100644 arch/riscv/boot/main_entry.c
 delete mode 100644 arch/riscv/boot/start.S
 create mode 100644 arch/riscv/boot/start.c
 create mode 100644 arch/riscv/boot/uncompress.c
 create mode 100644 arch/riscv/configs/virt32_defconfig
 create mode 100644 arch/riscv/configs/virt64_defconfig
 create mode 100644 arch/riscv/include/asm/barebox-riscv.h
 create mode 100644 arch/riscv/include/asm/dma.h
 create mode 100644 arch/riscv/include/asm/image.h
 create mode 100644 arch/riscv/lib/dtb.c
 create mode 100644 arch/riscv/lib/memcpy.S
 create mode 100644 arch/riscv/lib/memmove.S
 create mode 100644 arch/riscv/lib/memset.S
 create mode 100644 arch/riscv/lib/pbl.lds.S
 create mode 100644 arch/riscv/lib/reloc.c
 create mode 100644 arch/riscv/lib/runtime-offset.S
 create mode 100644 arch/riscv/lib/sections.c
 create mode 100644 arch/riscv/lib/setupc.S
 create mode 100644 arch/riscv/mach-virt/Makefile
 create mode 100644 arch/riscv/mach-virt/include/mach/debug_ll.h
 create mode 100644 drivers/clocksource/timer-clint.c
 create mode 100644 drivers/power/reset/syscon-poweroff.c
 create mode 100644 drivers/power/reset/syscon-reboot.c
 create mode 100644 images/Makefile.erizo
 create mode 100644 scripts/prelink-riscv.c
 create mode 100644 scripts/prelink-riscv.inc

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

