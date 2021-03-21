Delivery-date: Sun, 21 Mar 2021 16:20:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzsj-00022s-Ee
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:20:45 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzsg-0002OO-1S
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:20:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MLAjORawoZPmV1EvL0p4Vo5HwEttM2wIO0ByDiQHO6c=; b=L4KKw8L1RagnFZhpW9kFuTlBbe
	UowX58uh7YlVqD8lF73Ic+KQkJz7ziVCHxtXysrLHUkB+WBJN2GdwQd4f0fhCFU8kw0J99WYCrOMi
	6kSK0js2j+a6oOG14MtfguWv0dSFL1ClmC33uGmufxOwyBGXGCaQKIea9lfOeUeFlGGEtXktKEK1k
	iukOCxy5xb1HQBanCapOQM2rwRKKj5pM+FsG/rcJBHFiThlRhmseXgXdayMdctA453IopIRocHDU5
	tdSU8hqeevFBjzmypomRE7HzjbvafbkM2flfwQEe96v2HtaDOD1udZp3Z4y1S9+npa1Wsuu3o2fc2
	W3Iq4AsA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzr1-00A4Ry-2K; Sun, 21 Mar 2021 15:18:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzmB-00A41S-UR
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:14:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm1-00011J-RK; Sun, 21 Mar 2021 16:13:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm0-0007vs-R7; Sun, 21 Mar 2021 16:13:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 21 Mar 2021 16:13:23 +0100
Message-Id: <20210321151344.5810-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151441_862170_E20AEF33 
X-CRM114-Status: GOOD (  18.01  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 00/21] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With these changes applied, barebox can now generate images that can
be booted on qemu/tinyemu virt32 and virt64 machines.

The boards have clocksource, virtio, cfi-flash,  reboot and poweroff
support.

This can also be pulled from Github:
https://github.com/a3f/barebox/tree/multi-image-riscv-v3

v2 -> v3:
 - reworded some commit titles
 - added new header format for barebox images
 - added filetype detection for new barebox image format
 - fixed use of uninitialized sp in Erizo ENTRY_POINT (Antony)
 - Replaced assembly entry point of generic DT image with customized
   version of new header format macro
 - early exit relocation if runtime offset == 0
 - remove note about TLSF error that's now fixed after Antony's bisection
 - replace 2 line assembly function in entry_ll.S with inline code

v1 -> v2:
 - moved compressed dtb helpers into common header for both ARM and
   RISC-V to use
 - relocate_to_adr(fixed_base) can now be called multiple times in a row
 - removed some extra spaces (Antony)
 - as arch is DT only, bumped pr_debug to pr_err if dt is not found.
   no panic, because with debug_ll you might still be able to boot to shell
   for further debugging
 - rename Makefile.erizo to Makefile.riscv. Let's just build all board images
   out of the same Makefile now
 - HAS_ARCH_SJLJ selected for 64-bit as well
 - don't require compiler to support atomics or floating point on rv64 (Rouven)
 - added RISCV timer for SBI and rdcycle mode. This is used on tinyemu virt.
   rdcycle mode could be used on erizo as well if suitable timerbase chosen.
 - activate first console because Tinyemu only describes virtio mmio region
   for console and no stdout-path

Cheers,
Ahmad Fatoum (19):
  partitions: don't allocate dma capable memory
  images: make BOARD_ARM_GENERIC_DT available for other arches
  ARM: make ARM_USE_COMPRESSED_DTB available for other arches
  ARM: aarch64: omit unused label in assembly
  serial: virtio-console: depend on, but don't select VIRTIO
  RISC-V: <asm/unaligned.h>: don't do unaligned accesses
  RISC-V: debug_ll: ns16550: align C access size with assembly's
  RISC-V: drop duplicate or unneeded cflags
  RISC-V: add cacheless HAS_DMA support
  RISC-V: erizo: move to arch/riscv/boards/erizo
  RISC-V: import Linux' optimized string functions
  filetype: detect RISC-V images
  RISC-V: implement PBL image header
  RISC-V: implement PBL and relocation support
  RISC-V: erizo: migrate to PBL
  RISC-V: support symbol names in barebox image
  RISC-V: add generic DT image
  clocksource: add driver for RISC-V and CLINT timers
  power: reset: add drivers for generic syscon reset and poweroff

Rouven Czerwinski (2):
  RISC-V: add 64-bit support
  RISC-V: add Qemu virt support

 Documentation/boards/riscv.rst               |  72 ++++++-
 Makefile                                     |   1 +
 arch/arm/Kconfig                             |   7 +-
 arch/arm/cpu/start.c                         |  20 +-
 arch/arm/include/asm/barebox-arm.h           |   7 -
 arch/arm/lib64/runtime-offset.S              |   2 +-
 arch/riscv/Kconfig                           |  81 +++++--
 arch/riscv/Makefile                          |  35 ++-
 arch/riscv/boards/Makefile                   |   2 +
 arch/riscv/boards/erizo/Makefile             |   3 +
 arch/riscv/boards/erizo/lowlevel.c           |  18 ++
 arch/riscv/boot/Makefile                     |   5 +-
 arch/riscv/boot/board-dt-2nd.c               |  36 ++++
 arch/riscv/boot/dtb.c                        |  25 ---
 arch/riscv/boot/entry.c                      |  29 +++
 arch/riscv/boot/entry.h                      |  15 ++
 arch/riscv/boot/main_entry.c                 |  35 ---
 arch/riscv/boot/start.S                      |  68 ------
 arch/riscv/boot/start.c                      | 185 ++++++++++++++++
 arch/riscv/boot/uncompress.c                 |  74 +++++++
 arch/riscv/configs/erizo_generic_defconfig   |   5 -
 arch/riscv/configs/virt32_defconfig          | 116 ++++++++++
 arch/riscv/configs/virt64_defconfig          | 117 ++++++++++
 arch/riscv/cpu/Makefile                      |   3 +
 arch/riscv/cpu/core.c                        |  50 +++++
 arch/riscv/cpu/time.c                        |  38 ++++
 arch/riscv/dts/Makefile                      |   9 +-
 arch/riscv/dts/erizo.dtsi                    |   2 +-
 arch/riscv/include/asm/barebox-riscv-head.h  |  36 ++++
 arch/riscv/include/asm/barebox-riscv.h       | 105 +++++++++
 arch/riscv/include/asm/common.h              |  10 +-
 arch/riscv/include/asm/csr.h                 | 211 +++++++++++++++++++
 arch/riscv/include/asm/debug_ll_ns16550.h    |  16 +-
 arch/riscv/include/asm/dma.h                 |  44 ++++
 arch/riscv/include/asm/elf.h                 |   8 +-
 arch/riscv/include/asm/image.h               |  65 ++++++
 arch/riscv/include/asm/linkage.h             |   4 +
 arch/riscv/include/asm/sbi.h                 | 153 ++++++++++++++
 arch/riscv/include/asm/sections.h            |  15 ++
 arch/riscv/include/asm/string.h              |  21 +-
 arch/riscv/include/asm/timer.h               |   9 +
 arch/riscv/include/asm/types.h               |   8 +-
 arch/riscv/include/asm/unaligned.h           |  16 +-
 arch/riscv/lib/Makefile                      |   6 +-
 arch/riscv/lib/barebox.lds.S                 |  55 +++--
 arch/riscv/lib/dtb.c                         |  30 +++
 arch/riscv/lib/memcpy.S                      | 108 ++++++++++
 arch/riscv/lib/memmove.S                     |  64 ++++++
 arch/riscv/lib/memset.S                      | 113 ++++++++++
 arch/riscv/lib/pbl.lds.S                     |  85 ++++++++
 arch/riscv/lib/reloc.c                       |  66 ++++++
 arch/riscv/lib/runtime-offset.S              |  12 ++
 arch/riscv/lib/sections.c                    |   9 +
 arch/riscv/lib/setupc.S                      |  55 +++++
 arch/riscv/mach-virt/Makefile                |   3 +
 arch/riscv/mach-virt/include/mach/debug_ll.h |  25 +++
 common/Kconfig                               |   8 +-
 common/filetype.c                            |   6 +
 common/partitions.c                          |   5 +-
 common/partitions/dos.c                      |   7 +-
 common/partitions/efi.c                      |   1 -
 drivers/clocksource/Kconfig                  |  15 ++
 drivers/clocksource/Makefile                 |   2 +
 drivers/clocksource/timer-clint.c            |  93 ++++++++
 drivers/clocksource/timer-riscv.c            |  66 ++++++
 drivers/power/reset/Kconfig                  |  14 ++
 drivers/power/reset/Makefile                 |   2 +
 drivers/power/reset/syscon-poweroff.c        |  76 +++++++
 drivers/power/reset/syscon-reboot.c          |  92 ++++++++
 drivers/serial/Kconfig                       |   2 +-
 images/.gitignore                            |   1 +
 images/Makefile                              |   8 +-
 images/Makefile.riscv                        |  12 ++
 include/compressed-dtb.h                     |  33 +++
 include/dma.h                                |   1 +
 include/filetype.h                           |   2 +
 pbl/Kconfig                                  |   6 +-
 scripts/.gitignore                           |   1 +
 scripts/Makefile                             |   1 +
 scripts/Makefile.lib                         |  11 +
 scripts/prelink-riscv.c                      | 122 +++++++++++
 scripts/prelink-riscv.inc                    | 123 +++++++++++
 82 files changed, 2853 insertions(+), 269 deletions(-)
 create mode 100644 arch/riscv/boards/Makefile
 create mode 100644 arch/riscv/boards/erizo/Makefile
 create mode 100644 arch/riscv/boards/erizo/lowlevel.c
 create mode 100644 arch/riscv/boot/board-dt-2nd.c
 delete mode 100644 arch/riscv/boot/dtb.c
 create mode 100644 arch/riscv/boot/entry.c
 create mode 100644 arch/riscv/boot/entry.h
 delete mode 100644 arch/riscv/boot/main_entry.c
 delete mode 100644 arch/riscv/boot/start.S
 create mode 100644 arch/riscv/boot/start.c
 create mode 100644 arch/riscv/boot/uncompress.c
 create mode 100644 arch/riscv/configs/virt32_defconfig
 create mode 100644 arch/riscv/configs/virt64_defconfig
 create mode 100644 arch/riscv/cpu/Makefile
 create mode 100644 arch/riscv/cpu/core.c
 create mode 100644 arch/riscv/cpu/time.c
 create mode 100644 arch/riscv/include/asm/barebox-riscv-head.h
 create mode 100644 arch/riscv/include/asm/barebox-riscv.h
 create mode 100644 arch/riscv/include/asm/csr.h
 create mode 100644 arch/riscv/include/asm/dma.h
 create mode 100644 arch/riscv/include/asm/image.h
 create mode 100644 arch/riscv/include/asm/sbi.h
 create mode 100644 arch/riscv/include/asm/timer.h
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
 create mode 100644 drivers/clocksource/timer-riscv.c
 create mode 100644 drivers/power/reset/syscon-poweroff.c
 create mode 100644 drivers/power/reset/syscon-reboot.c
 create mode 100644 images/Makefile.riscv
 create mode 100644 include/compressed-dtb.h
 create mode 100644 scripts/prelink-riscv.c
 create mode 100644 scripts/prelink-riscv.inc

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

