Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cc7rk-000844-56
 for barebox@lists.infradead.org; Fri, 10 Feb 2017 09:51:49 +0000
Received: from player734.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 352BAA2F2C
 for <barebox@lists.infradead.org>; Fri, 10 Feb 2017 10:51:17 +0100 (CET)
Received: from localhost (unknown [91.134.156.222])
 (Authenticated sender: plagnioj@jcrosoft.com)
 by player734.ha.ovh.net (Postfix) with ESMTPA id 1AEF6280070
 for <barebox@lists.infradead.org>; Fri, 10 Feb 2017 10:51:16 +0100 (CET)
Date: Fri, 10 Feb 2017 10:56:55 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170210095655.GA25859@mail.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/9] EFI: drop arch efi
To: barebox@lists.infradead.org

Today the EFI is build as an other ARCH when in fact it's just a boot mode

so move it back to arch/x86 for the spicific x86 part and the common
to common and driver

The following changes since commit 55d29525146dcd280987dfd565bfd34f08858fb3:

  ata: ide-sff: don't call free for ide_port in error path (2017-01-18 12:01:38 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git

for you to fetch changes up to 3e07e7f43bcfb5160cc6104f06535f147222570b:

  efi: bus: add firmware vendor and resision and tables info (2017-02-09 17:13:41 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (9):
      efi: move block io driver to driver/block
      efi: move clocksource out of arch
      efi: move bus driver to driver/efi
      efi: move debug_ll.h to include/efi
      efi: move startup and payload to common/efi
      x86: move bios bootup code to arch/x86/bios
      efi: move x86 efi boot support to x86 arch
      ARCH: efi: Finally drop it as now we can build efi bootup from x86
      efi: bus: add firmware vendor and resision and tables info

 Documentation/boards/efi.rst                            |  2 +-
 arch/efi/Kconfig                                        | 51 ---------------------------------------------------
 arch/efi/Makefile                                       | 43 -------------------------------------------
 arch/efi/efi/Makefile                                   |  2 --
 arch/efi/include/asm/barebox.h                          |  1 -
 arch/efi/include/asm/bitops.h                           | 22 ----------------------
 arch/efi/include/asm/bitsperlong.h                      | 10 ----------
 arch/efi/include/asm/byteorder.h                        |  8 --------
 arch/efi/include/asm/common.h                           |  4 ----
 arch/efi/include/asm/dma.h                              | 13 -------------
 arch/efi/include/asm/elf.h                              | 60 ------------------------------------------------------------
 arch/efi/include/asm/io.h                               | 55 -------------------------------------------------------
 arch/efi/include/asm/posix_types.h                      |  1 -
 arch/efi/include/asm/sections.h                         |  1 -
 arch/efi/include/asm/string.h                           |  1 -
 arch/efi/include/asm/swab.h                             |  6 ------
 arch/efi/include/asm/types.h                            | 65 -----------------------------------------------------------------
 arch/efi/include/asm/unaligned.h                        | 19 -------------------
 arch/efi/lib/.gitignore                                 |  2 --
 arch/efi/lib/asm-offsets.c                              | 12 ------------
 arch/x86/Kconfig                                        | 53 ++++++++++++++++++++++++++++++++++++++++++++++-------
 arch/x86/Makefile                                       | 75 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------
 arch/x86/bios/Makefile                                  |  3 +++
 arch/x86/{lib => bios}/bios_disk.S                      |  0
 arch/x86/{lib => bios}/memory16.S                       |  0
 arch/x86/{lib => bios}/traveler.S                       |  0
 arch/{efi => x86}/configs/efi_defconfig                 |  2 +-
 arch/x86/configs/generic_defconfig                      |  1 +
 arch/x86/include/asm/elf.h                              | 74 ++++++++++++++++++++++++++++++++++++++++++++++++++++++--------------------
 arch/x86/include/asm/io.h                               | 71 +++++++++++++++++++++++++++++++++--------------------------------------
 arch/x86/include/asm/types.h                            | 51 +++++++++++++++++++++++++++++++++------------------
 arch/x86/include/asm/unaligned.h                        |  5 +++++
 arch/x86/lib/Makefile                                   |  5 ++---
 arch/x86/lib/asm-offsets.c                              |  7 +++++++
 arch/{efi/lib => x86/mach-efi}/Makefile                 |  0
 arch/{efi/lib => x86/mach-efi}/crt0-efi-ia32.S          |  0
 arch/{efi/lib => x86/mach-efi}/crt0-efi-x86_64.S        |  0
 arch/{efi/lib => x86/mach-efi}/elf_ia32_efi.lds.S       |  0
 arch/{efi/lib => x86/mach-efi}/elf_x86_64_efi.lds.S     |  0
 arch/x86/mach-efi/include/mach/debug_ll.h               |  1 +
 arch/{efi/lib => x86/mach-efi}/reloc_ia32.c             |  0
 arch/{efi/lib => x86/mach-efi}/reloc_x86_64.c           |  0
 commands/Kconfig                                        |  2 +-
 commands/edit.c                                         |  2 +-
 common/Kconfig                                          |  5 +++++
 common/Makefile                                         |  1 +
 common/efi/Makefile                                     |  3 +++
 {arch/efi => common}/efi/efi-image.c                    |  4 ++--
 {arch/efi => common}/efi/efi.c                          |  6 +++---
 {arch/efi => common}/efi/env-efi/network/eth0-discover  |  0
 common/memory.c                                         |  2 +-
 drivers/Makefile                                        |  2 ++
 drivers/block/Makefile                                  |  1 +
 {arch/efi/efi => drivers/block}/efi-block-io.c          |  4 ++--
 drivers/clocksource/Kconfig                             |  4 ++++
 drivers/clocksource/Makefile                            |  1 +
 arch/efi/efi/clocksource.c => drivers/clocksource/efi.c |  2 +-
 drivers/efi/Makefile                                    |  1 +
 {arch/efi => drivers}/efi/efi-device.c                  | 27 +++++++++++++++++++++++++--
 drivers/net/Kconfig                                     |  2 +-
 drivers/net/efi-snp.c                                   |  4 ++--
 drivers/of/Kconfig                                      |  2 +-
 drivers/serial/Kconfig                                  |  2 +-
 drivers/serial/efi-stdio.c                              |  2 +-
 fs/Kconfig                                              |  4 ++--
 fs/efi.c                                                |  4 ++--
 fs/efivarfs.c                                           |  4 ++--
 include/efi.h                                           |  9 +++++++--
 {arch/efi/include/mach => include/efi}/debug_ll.h       |  2 +-
 {arch/efi/include/mach => include/efi}/efi-device.h     |  0
 {arch/efi/include/mach => include/efi}/efi.h            |  0
 71 files changed, 329 insertions(+), 499 deletions(-)
 delete mode 100644 arch/efi/Kconfig
 delete mode 100644 arch/efi/Makefile
 delete mode 100644 arch/efi/efi/Makefile
 delete mode 100644 arch/efi/include/asm/barebox.h
 delete mode 100644 arch/efi/include/asm/bitops.h
 delete mode 100644 arch/efi/include/asm/bitsperlong.h
 delete mode 100644 arch/efi/include/asm/byteorder.h
 delete mode 100644 arch/efi/include/asm/common.h
 delete mode 100644 arch/efi/include/asm/dma.h
 delete mode 100644 arch/efi/include/asm/elf.h
 delete mode 100644 arch/efi/include/asm/io.h
 delete mode 100644 arch/efi/include/asm/posix_types.h
 delete mode 100644 arch/efi/include/asm/sections.h
 delete mode 100644 arch/efi/include/asm/string.h
 delete mode 100644 arch/efi/include/asm/swab.h
 delete mode 100644 arch/efi/include/asm/types.h
 delete mode 100644 arch/efi/include/asm/unaligned.h
 delete mode 100644 arch/efi/lib/.gitignore
 delete mode 100644 arch/efi/lib/asm-offsets.c
 create mode 100644 arch/x86/bios/Makefile
 rename arch/x86/{lib => bios}/bios_disk.S (100%)
 rename arch/x86/{lib => bios}/memory16.S (100%)
 rename arch/x86/{lib => bios}/traveler.S (100%)
 rename arch/{efi => x86}/configs/efi_defconfig (98%)
 rename arch/{efi/lib => x86/mach-efi}/Makefile (100%)
 rename arch/{efi/lib => x86/mach-efi}/crt0-efi-ia32.S (100%)
 rename arch/{efi/lib => x86/mach-efi}/crt0-efi-x86_64.S (100%)
 rename arch/{efi/lib => x86/mach-efi}/elf_ia32_efi.lds.S (100%)
 rename arch/{efi/lib => x86/mach-efi}/elf_x86_64_efi.lds.S (100%)
 create mode 100644 arch/x86/mach-efi/include/mach/debug_ll.h
 rename arch/{efi/lib => x86/mach-efi}/reloc_ia32.c (100%)
 rename arch/{efi/lib => x86/mach-efi}/reloc_x86_64.c (100%)
 create mode 100644 common/efi/Makefile
 rename {arch/efi => common}/efi/efi-image.c (99%)
 rename {arch/efi => common}/efi/efi.c (99%)
 rename {arch/efi => common}/efi/env-efi/network/eth0-discover (100%)
 create mode 100644 drivers/block/Makefile
 rename {arch/efi/efi => drivers/block}/efi-block-io.c (98%)
 rename arch/efi/efi/clocksource.c => drivers/clocksource/efi.c (97%)
 create mode 100644 drivers/efi/Makefile
 rename {arch/efi => drivers}/efi/efi-device.c (93%)
 rename {arch/efi/include/mach => include/efi}/debug_ll.h (93%)
 rename {arch/efi/include/mach => include/efi}/efi-device.h (100%)
 rename {arch/efi/include/mach => include/efi}/efi.h (100%)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
