Delivery-date: Mon, 04 Mar 2024 20:01:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDZM-008csA-38
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:01:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDZL-0005OB-4f
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:01:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UXUGAFcyN6c23K7SCSapULHVVTxylkzdMv+6sopYeMI=; b=Z1m6RLPF3SENhsh2LxNRAGberZ
	UfWpXxmaDUT/Hz+MyNs//ISm7BEnH9wGae6GbTN5FV/74DiP6SBahNI7oFgsR+pv5+D/FV8IYT0RB
	NjzBRyVOqgZ4mMMswmd8kT7x+3gAQkHhNirPzKdycb3PmzK9L/a1/RiZeiUFFE7x9Fwab/czEOrF8
	jGFhormIKDLR1umBxhxoOJj9Ie1Tq/gjoSz25DgiElOZfuGy7XPR1Hb30oVX7YLk9KTPISYCRPalo
	bIqbMt2axZuif4+QTRah0MMjF3n33zoTT80B6MdjFcvdii9KcZife3Vc6GEnRhP3aILjb1C5nmJYY
	/jeFGB1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDYm-0000000AHcd-0Shu;
	Mon, 04 Mar 2024 19:01:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDYL-0000000AHPe-1WFJ
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:00:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-0004V7-1j
	for barebox@lists.infradead.org; Mon, 04 Mar 2024 20:00:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-004PFS-LV
	for barebox@lists.infradead.org; Mon, 04 Mar 2024 20:00:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-0E
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 20:00:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  4 Mar 2024 19:58:45 +0100
Message-Id: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110045_884372_30BCCDB4 
X-CRM114-Status: GOOD (  18.88  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 000/113] efi: prepare for ARM64 EFI loader support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I've been working on enabling use of barebox as EFI loader for a while.
It's already functional enough to boot efi-stubbed Linux directly or via
Grub, but some key parts like proper runtime services and the EFI boot
manager are still missing.

Nevertheless, A lot of commits are already in a good enough shape to be
upstreamed, which I collected in this series. A second WIP series with
the EFI loader support will follow afterwards.

This series lays the ground work for using barebox as EFI loader (i.e.
EFI firmware) on - at first - ARM64 systems:

  - Generalize existing x86 EFI payload support, so it's usable on other
    architectures and for barebox as EFI loader

  - Rework virtual file system support, so we can easily map EFI file
    system protocol onto barebox VFS

  - Add barebox payload on ARM64 support to allow further
    experimentation and to have an in-tree payload to test barebox
    as EFI loader against

The payload has been tested with Qemu Virt64 against Tianocore, U-Boot and
my upcoming barebox EFI loader patches. It's not fully usable as Grub
replacement yet, because a boot handler isn't registered, but it was
very useful to develop the loader, which is why I am including it here,
even if not yet fully featured.

Most patches are the same between v1 and v2. Patches that changed have
a changelog.

Ahmad Fatoum (113):
  string: implement strcmp_ptr and streq_ptr helpers
  commands: efiexit: flush console and shutdown barebox
  treewide: add errno_set helper for returning positive error code in
    errno
  vsprintf: guard against NULL in UUID %pU
  common: add option to poweroff system on failure
  boot: print error code when booting fails
  common: efi: move directory to top-level
  efi: payload: rename CONFIG_EFI_BOOTUP to CONFIG_EFI_PAYLOAD
  efi: payload: image: return actual read_file() error
  of: don't report failure to of_read_file twice
  efi: payload: make missing state reporting less verbose
  libfile: factor out read_file_into_buf helper
  efi: payload: image: allocate image via loader if it exceeds malloc
    area
  efi: payload: image: use assigned barebox loader type on x86
  efi: payload: iomem: adjust types to avoid casting
  commands: kallsyms: add command-line interface
  block: define BLOCKSIZE globally in block.h
  cdev: implement setter/getter for cdev device node
  block: virtio: assign virtio-mmio device tree node to cdevs
  commands: stat: print DT node for cdevs if available
  partitions: have parsers record bootable bits
  commands: stat: display bootable partition table bit info
  block: record block device type
  include: add definitions for UAPI discoverable partitions spec
  efi: payload: restrict 8250 UART at I/O port 0x3f8 registration to x86
  fs: fix unreaddir, so readdir returns unread dirent first
  fs: turn creat into static inline helper
  fs: drop unused LOOKUP_ flags
  fs: opendir: reference mount point until closedir is called
  fs: factor out opendir iteration
  fs: implement fdopendir and rewinddir
  fs: remove unused member from struct nameidata
  fs: always check path_init for errors
  fs: set current working dir directly when mounting root
  fs: implement openat and friends
  fs: implement O_PATH
  fs: support different root directories
  fs: implement O_CHROOT
  commands: introduce new findmnt command
  fs: initialize struct nameidata::last
  fs: support opening /
  test: self: add dirfd tests
  commands: stat: add option for statat
  efi: payload: lower command line options print from error to info
  efi: payload: init: warn if /boot FS is unknown
  commands: time: switch to using getopt for -n
  commands: time: reduce strjoin runtime, drop trailing space
  commands: time: refactor into new strjoin
  test: self: add strjoin tests
  filetype: have cdev_detect_type take a cdev
  ARM: mmu-early: gracefully handle already enabled MMU
  efi: don't hide structs, enums or unions behind _t
  efi: make headers self-contained
  efi: unify whitespace for GUIDs
  efi: efi-guid: add more GUIDs
  ARM64: cpu: setupc: rewrite to be fully PIC
  ARM64: runtime-offset: make get_runtime_offset fully PIC
  pbl: introduce CONFIG_PBL_FULLY_PIC
  efi: payload: fix ARM build
  efi: payload: init: restrict barebox mem to first 1G only on x86
  efi: add efi_is_loader/efi_is_payload helpers
  efi: payload: suppress EFI payload initcalls when not EFI-loaded
  ARM: make board data definitions accessible to other architectures
  boarddata: add barebox_boarddata_is_machine helper
  common: add PE/COFF loader
  efi: use efi_handle_t where appropriate
  efi: block: move definitions into header file
  efi: define efi_handle_t as opaque pointer
  efi: constify guid_t in API
  efi: rename efi_simple_input_interface to
    efi_simple_text_input_protocol
  efi: add EFI_WARN constants
  efi-stdio: fix wait_for_event argument
  efi-stdio: wait for extended input key event when using extended input
  efi: flesh out EFI definitions in header
  efi: add efi_driver_binding_protocol
  efi: improve usability of EFI_PAGE_* macros
  fs: efi: move definitions into header
  efi: fs: flesh out file system definitions
  efi: stdio: fix efi_register_keystroke_notify prototype
  video: mark EFI_GOP driver x86-only for now
  filetype: add new file types for EFI-enabled Linux images
  efi: payload: register handler for EFI-stubbed ARM64 kernel
  efi: payload: factor C efi_main into dedicated file
  efi: payload: early-mem: simplify error message reporting
  efi: payload: early-mem: use EFI_PAGE_SIZE instead of PAGE_SIZE
  ARM64: add optional EFI stub
  efi: devicepath: improve const safety
  efi: refactor device_path_to_partuuid for code reuse
  efi: devicepath: implement device_path_to_str_buf variant
  lib: vsprintf: align documentation with current feature set
  vsprintf: add %pD for printing EFI device path
  lib: string: import Linux strreplace helper
  efi: payload: dynamically determine bootloader file name
  efi: payload: iomem: register later
  efi: payload: protect against buggy EFI implementations
  efi: payload: don't require efi_loaded_image->parent_handle for
    bootsource detection
  commands: add cpuinfo -s option for stacktrace
  efi: devicepath: align MemoryMapped name with spec
  efi: devicepath: pretty print BBS BEV DeviceType
  efi: devicepath: format GUIDs as little endian
  efi: devicepath: move END device node definitions into header
  efi: devicepath: drop underscores in hex constants
  efi: devicepath: namespace definitions
  efi: devicepath: use flexible array members for trailing strings
  efi: devicepath: drop unused macro
  efi: devicepath: let compiler worry about unaligned unpacking
  efi: devicepath: correct formatting of BBS
  commands: provide efi_handle_dump in both payload and loader
  lib: uuid: implement uuid/guid_parse
  commands: efi_handle_dump: prepare for supporting EFI loader
  commands: efi_handle_dump: print loaded image devpath
  commands: efi_handle_dump: use guid_parse instead of open-coding
  commands: efi_handle_dump: don't ignore failure to parse GUID

 Kconfig                                       |   1 +
 Makefile                                      |   7 +-
 arch/arm/Kconfig                              |   1 +
 arch/arm/cpu/Kconfig                          |   1 +
 arch/arm/cpu/board-dt-2nd-aarch64.S           |   8 +-
 arch/arm/cpu/cpu.c                            |   6 +
 arch/arm/cpu/cpuinfo.c                        |  25 +-
 arch/arm/cpu/efi-header-aarch64.S             | 122 ++++
 arch/arm/cpu/entry.c                          |   3 +
 arch/arm/cpu/interrupts_64.c                  |   6 +-
 arch/arm/cpu/mmu-common.c                     |   4 +
 arch/arm/cpu/mmu_32.c                         |   3 +
 arch/arm/cpu/mmu_64.c                         |   3 +
 arch/arm/cpu/setupc_64.S                      |  22 +-
 arch/arm/cpu/start.c                          |  16 +-
 arch/arm/include/asm/barebox-arm.h            |  30 +-
 arch/arm/include/asm/memory.h                 |  20 +
 arch/arm/include/asm/pci.h                    |   4 +-
 arch/arm/lib/pbl.lds.S                        |  31 +
 arch/arm/lib64/armlinux.c                     |  11 +
 arch/arm/lib64/runtime-offset.S               |   5 +-
 arch/riscv/lib/bootm.c                        |   7 +
 arch/sandbox/board/hostfile.c                 |   3 +-
 arch/x86/Kconfig                              |   3 +-
 arch/x86/mach-efi/clocksource.c               |   4 +-
 arch/x86/mach-efi/reloc_ia32.c                |   2 +-
 commands/Kconfig                              |  38 +-
 commands/Makefile                             |   4 +
 commands/efi_handle_dump.c                    | 144 ++++
 commands/findmnt.c                            | 108 +++
 commands/kallsyms.c                           |  50 ++
 commands/of_diff.c                            |   5 +-
 commands/of_display_timings.c                 |   4 +-
 commands/of_overlay.c                         |   4 +-
 commands/oftree.c                             |   4 +-
 commands/readlink.c                           |   2 +-
 commands/stat.c                               |  26 +-
 commands/time.c                               |  35 +-
 common/Kconfig                                |  49 +-
 common/Makefile                               |   2 +-
 common/block.c                                |  26 +-
 common/boot.c                                 |   2 +-
 common/efi/Kconfig                            |  27 -
 common/efi/payload/Makefile                   |   7 -
 common/filetype.c                             |  25 +-
 common/misc.c                                 |  12 +-
 common/partitions.c                           |   4 +-
 common/partitions/dos.c                       |  10 +
 common/partitions/efi.c                       |  18 +
 common/pe.c                                   | 379 +++++++++++
 common/startup.c                              |   3 +-
 drivers/Makefile                              |   2 +-
 drivers/ata/ahci.c                            |   1 +
 drivers/ata/disk_ata_drive.c                  |   1 +
 drivers/block/Kconfig                         |   2 +-
 drivers/block/efi-block-io.c                  |  28 +-
 drivers/block/virtio_blk.c                    |   2 +
 drivers/bus/Kconfig                           |   2 +-
 drivers/bus/acpi.c                            |   6 +-
 drivers/clocksource/Kconfig                   |   4 +-
 drivers/clocksource/efi.c                     |   4 +-
 drivers/efi/Makefile                          |   3 +-
 drivers/efi/efi-device.c                      | 220 +------
 drivers/efi/efi-handle.c                      |  43 ++
 drivers/hw_random/efi-rng.c                   |   2 +-
 drivers/mci/mci-core.c                        |   3 +-
 drivers/net/Kconfig                           |   2 +-
 drivers/net/efi-snp.c                         |  20 +-
 drivers/nvme/host/core.c                      |   1 +
 drivers/nvmem/core.c                          |   2 +-
 drivers/of/Kconfig                            |   2 +-
 drivers/of/of_path.c                          |   4 +-
 drivers/of/overlay.c                          |   4 +-
 drivers/of/partition.c                        |  12 +-
 drivers/pci/Kconfig                           |   2 +-
 drivers/serial/Kconfig                        |   4 +-
 drivers/serial/efi-stdio.c                    |  23 +-
 drivers/usb/storage/usb.c                     |   1 +
 drivers/video/Kconfig                         |   3 +-
 drivers/virtio/virtio.c                       |   1 +
 drivers/watchdog/Kconfig                      |   2 +-
 efi/Kconfig                                   |  48 ++
 {common/efi => efi}/Makefile                  |   2 +-
 {common/efi => efi}/devicepath.c              | 458 ++++++-------
 {common/efi => efi}/efivar-filename.c         |   0
 {common/efi => efi}/errno.c                   |   1 +
 {common/efi => efi}/guid.c                    |  36 +-
 efi/payload/Makefile                          |  11 +
 efi/payload/boarddata.c                       |  45 ++
 efi/payload/early-mem.c                       |  28 +
 efi/payload/entry-multi.c                     |  45 ++
 efi/payload/entry-single.c                    |  45 ++
 .../payload/env-efi/network/eth0-discover     |   0
 {common/efi => efi}/payload/fdt.c             |   5 +-
 {common/efi => efi}/payload/image.c           | 104 ++-
 {common/efi => efi}/payload/init.c            | 144 ++--
 {common/efi => efi}/payload/iomem.c           |   8 +-
 fs/Kconfig                                    |   4 +-
 fs/devfs-core.c                               |   2 +-
 fs/efi.c                                      |  59 --
 fs/efivarfs.c                                 |   2 +-
 fs/fs.c                                       | 531 ++++++++-------
 include/acpi.h                                |   3 +-
 include/ata_drive.h                           |   5 +-
 include/block.h                               |  18 +-
 include/boarddata.h                           |  49 ++
 include/dirent.h                              |   5 +
 include/driver.h                              |  21 +
 include/efi.h                                 | 617 +++++++++++-------
 include/efi/device-path.h                     | 258 ++++----
 include/efi/efi-device.h                      |  19 +-
 include/efi/efi-init.h                        |  51 ++
 include/efi/efi-mode.h                        |  30 +
 include/efi/efi-payload.h                     |  13 +-
 include/efi/efi-stdio.h                       |  11 +-
 include/efi/efi-util.h                        |   8 +-
 include/efi/partition.h                       |   6 +-
 include/efi/types.h                           |  68 ++
 include/errno.h                               |   7 +
 include/fcntl.h                               |  22 +-
 include/filetype.h                            |   6 +-
 include/fs.h                                  |   6 +-
 include/libfile.h                             |   4 +
 include/linux/export.h                        |   2 +-
 include/linux/hidden.h                        |  19 +
 include/linux/namei.h                         |  13 -
 include/linux/pagemap.h                       |   1 +
 include/linux/pe.h                            | 482 ++++++++++++++
 include/linux/string.h                        |   1 +
 include/partitions.h                          |   2 +
 include/pbl.h                                 |   4 +
 include/pe.h                                  | 124 ++++
 include/string.h                              |  13 +
 include/sys/stat.h                            |   8 +-
 include/uapi/spec/dps.h                       | 370 +++++++++++
 include/unistd.h                              |  35 +-
 lib/libfile.c                                 |  59 +-
 lib/parameter.c                               |  22 +-
 lib/string.c                                  |  49 ++
 lib/uuid.c                                    |  63 ++
 lib/vsprintf.c                                |  47 +-
 pbl/Kconfig                                   |   7 +
 scripts/Makefile.lib                          |   5 +
 scripts/Makefile.pic                          |  22 +
 test/self/Kconfig                             |   5 +
 test/self/Makefile                            |   1 +
 test/self/dirfd.c                             | 129 ++++
 test/self/mmu.c                               |   7 +
 test/self/string.c                            |  28 +
 149 files changed, 4545 insertions(+), 1520 deletions(-)
 create mode 100644 arch/arm/cpu/efi-header-aarch64.S
 create mode 100644 commands/efi_handle_dump.c
 create mode 100644 commands/findmnt.c
 create mode 100644 commands/kallsyms.c
 delete mode 100644 common/efi/Kconfig
 delete mode 100644 common/efi/payload/Makefile
 create mode 100644 common/pe.c
 create mode 100644 drivers/efi/efi-handle.c
 create mode 100644 efi/Kconfig
 rename {common/efi => efi}/Makefile (80%)
 rename {common/efi => efi}/devicepath.c (50%)
 rename {common/efi => efi}/efivar-filename.c (100%)
 rename {common/efi => efi}/errno.c (99%)
 rename {common/efi => efi}/guid.c (77%)
 create mode 100644 efi/payload/Makefile
 create mode 100644 efi/payload/boarddata.c
 create mode 100644 efi/payload/early-mem.c
 create mode 100644 efi/payload/entry-multi.c
 create mode 100644 efi/payload/entry-single.c
 rename {common/efi => efi}/payload/env-efi/network/eth0-discover (100%)
 rename {common/efi => efi}/payload/fdt.c (90%)
 rename {common/efi => efi}/payload/image.c (76%)
 rename {common/efi => efi}/payload/init.c (77%)
 rename {common/efi => efi}/payload/iomem.c (95%)
 create mode 100644 include/boarddata.h
 create mode 100644 include/efi/efi-init.h
 create mode 100644 include/efi/efi-mode.h
 create mode 100644 include/efi/types.h
 create mode 100644 include/linux/hidden.h
 create mode 100644 include/linux/pe.h
 create mode 100644 include/pe.h
 create mode 100644 include/uapi/spec/dps.h
 create mode 100644 scripts/Makefile.pic
 create mode 100644 test/self/dirfd.c

-- 
2.39.2



