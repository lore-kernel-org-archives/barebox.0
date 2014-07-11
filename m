Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5VPC-0006bt-2v
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 07:38:07 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1X5VOp-0006ST-Qj
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 09:37:43 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <sha@pengutronix.de>)
 id 1X5VOp-0001WP-Op
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 09:37:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jul 2014 09:36:23 +0200
Message-Id: <1405064190-1977-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] Initial EFI support
To: barebox@lists.infradead.org

Second round of barebox on EFI patches. I merged the preparatory patches
already to -next, so here are only the EFI patches again.

Changes since v1:

- Add documentation how to run this on qemu
- The root directory on EFI filesystems now works on Tianocore (tested with qemu)
- Made 64-bit mandatory since 32-bit doesn't compile and cannot be tested
- Updated defconfig. For some reason the original defconfig had all relevant drivers
  disabled
- Add patch from Jean-Christophe to print GUIDs as strings

Sascha

The following changes since commit b6a37cf0c3eb5dddf69a5067c1b1d629d48a2fa0:

  efi: Add more error codes (2014-07-11 09:27:18 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git efi

for you to fetch changes up to 873c978375a9a0b689c5bc73ac2281d748e0b809:

  EFI: introduce efi_strguid to convert GUID to human readable names (2014-07-11 09:29:13 +0200)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (1):
      EFI: introduce efi_strguid to convert GUID to human readable names

Sascha Hauer (6):
      Documentation: Add EFI documentation
      Add initial EFI architecture support
      net: Add EFI Simple Network Protocol Driver
      serial: Add EFI stdio driver
      fs: implement EFI filesystem driver
      fs: implement EFI variable filesystem driver

 .gitignore                                 |    1 +
 Documentation/boards/efi.rst               |  298 ++++++
 Documentation/glossary.rst                 |    3 +
 Makefile                                   |    3 +-
 arch/efi/Kconfig                           |   51 ++
 arch/efi/Makefile                          |   41 +
 arch/efi/configs/efi_defconfig             |   78 ++
 arch/efi/efi/Makefile                      |    2 +
 arch/efi/efi/clocksource.c                 |   60 ++
 arch/efi/efi/efi-block-io.c                |  174 ++++
 arch/efi/efi/efi-device.c                  |  349 +++++++
 arch/efi/efi/efi-image.c                   |  105 +++
 arch/efi/efi/efi.c                         |  343 +++++++
 arch/efi/efi/env-efi/network/eth0-discover |    5 +
 arch/efi/include/asm/barebox.h             |    1 +
 arch/efi/include/asm/bitops.h              |   15 +
 arch/efi/include/asm/byteorder.h           |    8 +
 arch/efi/include/asm/common.h              |    4 +
 arch/efi/include/asm/dma.h                 |   13 +
 arch/efi/include/asm/elf.h                 |   60 ++
 arch/efi/include/asm/io.h                  |   55 ++
 arch/efi/include/asm/posix_types.h         |   93 ++
 arch/efi/include/asm/sections.h            |    1 +
 arch/efi/include/asm/string.h              |    1 +
 arch/efi/include/asm/swab.h                |    6 +
 arch/efi/include/asm/types.h               |   73 ++
 arch/efi/include/asm/unaligned.h           |   19 +
 arch/efi/include/mach/debug_ll.h           |   20 +
 arch/efi/include/mach/efi-device.h         |   45 +
 arch/efi/include/mach/efi.h                |   24 +
 arch/efi/lib/.gitignore                    |    2 +
 arch/efi/lib/Makefile                      |    4 +
 arch/efi/lib/crt0-efi-ia32.S               |   76 ++
 arch/efi/lib/crt0-efi-x86_64.S             |   75 ++
 arch/efi/lib/elf_ia32_efi.lds.S            |  102 +++
 arch/efi/lib/elf_x86_64_efi.lds.S          |   93 ++
 arch/efi/lib/reloc_ia32.c                  |   97 ++
 arch/efi/lib/reloc_x86_64.c                |   96 ++
 commands/edit.c                            |   11 +-
 common/Kconfig                             |    8 +
 common/Makefile                            |    4 +-
 common/efi-devicepath.c                    | 1370 ++++++++++++++++++++++++++++
 common/efi-guid.c                          |   84 ++
 common/memory.c                            |    2 +-
 common/partitions/efi.c                    |    2 +-
 drivers/net/Kconfig                        |    4 +
 drivers/net/Makefile                       |    1 +
 drivers/net/efi-snp.c                      |  296 ++++++
 drivers/of/Kconfig                         |    2 +-
 drivers/serial/Kconfig                     |    4 +
 drivers/serial/Makefile                    |    1 +
 drivers/serial/efi-stdio.c                 |  367 ++++++++
 fs/Kconfig                                 |   15 +
 fs/Makefile                                |    2 +
 fs/efi.c                                   |  563 ++++++++++++
 fs/efivarfs.c                              |  340 +++++++
 include/efi.h                              |  572 ++++++------
 57 files changed, 5873 insertions(+), 271 deletions(-)
 create mode 100644 Documentation/boards/efi.rst
 create mode 100644 arch/efi/Kconfig
 create mode 100644 arch/efi/Makefile
 create mode 100644 arch/efi/configs/efi_defconfig
 create mode 100644 arch/efi/efi/Makefile
 create mode 100644 arch/efi/efi/clocksource.c
 create mode 100644 arch/efi/efi/efi-block-io.c
 create mode 100644 arch/efi/efi/efi-device.c
 create mode 100644 arch/efi/efi/efi-image.c
 create mode 100644 arch/efi/efi/efi.c
 create mode 100644 arch/efi/efi/env-efi/network/eth0-discover
 create mode 100644 arch/efi/include/asm/barebox.h
 create mode 100644 arch/efi/include/asm/bitops.h
 create mode 100644 arch/efi/include/asm/byteorder.h
 create mode 100644 arch/efi/include/asm/common.h
 create mode 100644 arch/efi/include/asm/dma.h
 create mode 100644 arch/efi/include/asm/elf.h
 create mode 100644 arch/efi/include/asm/io.h
 create mode 100644 arch/efi/include/asm/posix_types.h
 create mode 100644 arch/efi/include/asm/sections.h
 create mode 100644 arch/efi/include/asm/string.h
 create mode 100644 arch/efi/include/asm/swab.h
 create mode 100644 arch/efi/include/asm/types.h
 create mode 100644 arch/efi/include/asm/unaligned.h
 create mode 100644 arch/efi/include/mach/debug_ll.h
 create mode 100644 arch/efi/include/mach/efi-device.h
 create mode 100644 arch/efi/include/mach/efi.h
 create mode 100644 arch/efi/lib/.gitignore
 create mode 100644 arch/efi/lib/Makefile
 create mode 100644 arch/efi/lib/crt0-efi-ia32.S
 create mode 100644 arch/efi/lib/crt0-efi-x86_64.S
 create mode 100644 arch/efi/lib/elf_ia32_efi.lds.S
 create mode 100644 arch/efi/lib/elf_x86_64_efi.lds.S
 create mode 100644 arch/efi/lib/reloc_ia32.c
 create mode 100644 arch/efi/lib/reloc_x86_64.c
 create mode 100644 common/efi-devicepath.c
 create mode 100644 common/efi-guid.c
 create mode 100644 drivers/net/efi-snp.c
 create mode 100644 drivers/serial/efi-stdio.c
 create mode 100644 fs/efi.c
 create mode 100644 fs/efivarfs.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
