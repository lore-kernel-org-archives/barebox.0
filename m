Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo68.mail-out.ovh.net ([46.105.59.63]
 helo=mo68.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4RAA-0000wg-HC
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:54:12 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 4D65BFF9E1B
 for <barebox@lists.infradead.org>; Tue,  8 Jul 2014 10:53:41 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.2\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
Date: Tue, 8 Jul 2014 16:53:30 +0800
Message-Id: <28D3DE7A-9B10-4AE0-858F-4C211B9D71C1@jcrosoft.com>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: Initial EFI Support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


On Jul 8, 2014, at 4:49 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> 
> The following adds initial support for running barebox as an EFI
> payload on X86 PCs.
> 
> Several things are implemented already to make it useful and
> to look around in an EFI system:
> 
> - Simple Network Protocol for networking
> - Start applications for installing drivers and starting Linux
> - Access EFI provided filesystems
> - Block device access
> 
> The EFI Port still has some rough edges. The screen output is limited
> to 80x25 and the keyboard driver doesn't recognize ctrl-C. I couldn't
> get find a proper UEFI serial driver yet, so the serial port is accessed
> via inb/outb on ioport 0x3f8 and not via UEFI.
> 
> For those interested in EFI and X86 hardware this port still offers
> some interesting insights in EFI.
> 
> There's also even Documentation available, see Patch 16/21.
> 
> Sascha

can you put on a git somewhere
> 
> ----------------------------------------------------------------
> Sascha Hauer (21):
>      Make IPaddr_t a 32bit type
>      oftree command: Use size_t for size
>      fat: Use correct format specifier
>      readkey: keys are unsugned char
>      of: platform: Use PRINTF_CONVERSION_RESOURCE for printing resources
>      console: Add puts callback to console devices
>      Add hex_byte_pack and hex_byte_pack_upper from kernel
>      vsprintf: Support pU for printing UUIDs
>      Add beginning wchar support
>      block: Add flush callback
>      Move efi.h to include/
>      filetype: Add DOS EXE file detection support
>      efi: Add more error codes
>      serial: ns16550: Add mmiobase to private data
>      serial: ns16550: Add register read/write function pointers to private data
>      Documentation: Add EFI documentation
>      Add initial EFI architecture support
>      net: Add EFI Simple Network Protocol Driver
>      serial: Add EFI stdio driver
>      fs: implement EFI filesystem driver
>      fs: implement EFI variable filesystem driver
> 
> Documentation/boards/efi.rst               |  279 ++++++
> Documentation/glossary.rst                 |    3 +
> arch/efi/Kconfig                           |   47 +
> arch/efi/Makefile                          |   41 +
> arch/efi/configs/efi_defconfig             |   73 ++
> arch/efi/efi/Makefile                      |    2 +
> arch/efi/efi/clocksource.c                 |   60 ++
> arch/efi/efi/efi-block-io.c                |  174 ++++
> arch/efi/efi/efi-device.c                  |  348 +++++++
> arch/efi/efi/efi-image.c                   |  105 +++
> arch/efi/efi/efi.c                         |  342 +++++++
> arch/efi/efi/env-efi/network/eth0-discover |    5 +
> arch/efi/include/asm/barebox.h             |    1 +
> arch/efi/include/asm/bitops.h              |   15 +
> arch/efi/include/asm/byteorder.h           |    8 +
> arch/efi/include/asm/common.h              |    4 +
> arch/efi/include/asm/dma.h                 |   13 +
> arch/efi/include/asm/elf.h                 |   60 ++
> arch/efi/include/asm/io.h                  |   55 ++
> arch/efi/include/asm/posix_types.h         |   93 ++
> arch/efi/include/asm/sections.h            |    1 +
> arch/efi/include/asm/string.h              |    1 +
> arch/efi/include/asm/swab.h                |    6 +
> arch/efi/include/asm/types.h               |   73 ++
> arch/efi/include/asm/unaligned.h           |   19 +
> arch/efi/include/mach/debug_ll.h           |   20 +
> arch/efi/include/mach/efi-device.h         |   45 +
> arch/efi/include/mach/efi.h                |   24 +
> arch/efi/lib/.gitignore                    |    2 +
> arch/efi/lib/Makefile                      |    4 +
> arch/efi/lib/crt0-efi-ia32.S               |   76 ++
> arch/efi/lib/crt0-efi-x86_64.S             |   75 ++
> arch/efi/lib/elf_ia32_efi.lds.S            |  102 +++
> arch/efi/lib/elf_x86_64_efi.lds.S          |   93 ++
> arch/efi/lib/reloc_ia32.c                  |   97 ++
> arch/efi/lib/reloc_x86_64.c                |   96 ++
> commands/edit.c                            |   11 +-
> commands/oftree.c                          |    2 +-
> common/Kconfig                             |    8 +
> common/Makefile                            |    4 +-
> common/block.c                             |    3 +
> common/console.c                           |   29 +
> common/efi-devicepath.c                    | 1370 ++++++++++++++++++++++++++++
> common/efi-guid.c                          |   11 +
> common/filetype.c                          |    4 +
> common/memory.c                            |    2 +-
> common/partitions/efi.c                    |    2 +-
> common/partitions/efi.h                    |    2 +-
> drivers/net/Kconfig                        |    4 +
> drivers/net/Makefile                       |    1 +
> drivers/net/efi-snp.c                      |  296 ++++++
> drivers/of/Kconfig                         |    2 +-
> drivers/of/platform.c                      |    3 +-
> drivers/serial/Kconfig                     |    4 +
> drivers/serial/Makefile                    |    1 +
> drivers/serial/efi-stdio.c                 |  367 ++++++++
> drivers/serial/serial_ns16550.c            |  237 ++---
> fs/Kconfig                                 |   15 +
> fs/Makefile                                |    2 +
> fs/efi.c                                   |  559 ++++++++++++
> fs/efivarfs.c                              |  340 +++++++
> fs/fat/fat.c                               |    4 +-
> include/block.h                            |    1 +
> include/console.h                          |    1 +
> include/efi.h                              |  508 +++++++++++
> include/filetype.h                         |    1 +
> include/linux/efi.h                        |  547 -----------
> include/linux/kernel.h                     |   23 +-
> include/param.h                            |    2 +-
> include/wchar.h                            |   16 +
> lib/Kconfig                                |    3 +
> lib/Makefile                               |    1 +
> lib/misc.c                                 |    3 +
> lib/readkey.c                              |    2 +-
> lib/vsprintf.c                             |   62 ++
> lib/wchar.c                                |   80 ++
> 76 files changed, 6319 insertions(+), 676 deletions(-)
> create mode 100644 Documentation/boards/efi.rst
> create mode 100644 arch/efi/Kconfig
> create mode 100644 arch/efi/Makefile
> create mode 100644 arch/efi/configs/efi_defconfig
> create mode 100644 arch/efi/efi/Makefile
> create mode 100644 arch/efi/efi/clocksource.c
> create mode 100644 arch/efi/efi/efi-block-io.c
> create mode 100644 arch/efi/efi/efi-device.c
> create mode 100644 arch/efi/efi/efi-image.c
> create mode 100644 arch/efi/efi/efi.c
> create mode 100644 arch/efi/efi/env-efi/network/eth0-discover
> create mode 100644 arch/efi/include/asm/barebox.h
> create mode 100644 arch/efi/include/asm/bitops.h
> create mode 100644 arch/efi/include/asm/byteorder.h
> create mode 100644 arch/efi/include/asm/common.h
> create mode 100644 arch/efi/include/asm/dma.h
> create mode 100644 arch/efi/include/asm/elf.h
> create mode 100644 arch/efi/include/asm/io.h
> create mode 100644 arch/efi/include/asm/posix_types.h
> create mode 100644 arch/efi/include/asm/sections.h
> create mode 100644 arch/efi/include/asm/string.h
> create mode 100644 arch/efi/include/asm/swab.h
> create mode 100644 arch/efi/include/asm/types.h
> create mode 100644 arch/efi/include/asm/unaligned.h
> create mode 100644 arch/efi/include/mach/debug_ll.h
> create mode 100644 arch/efi/include/mach/efi-device.h
> create mode 100644 arch/efi/include/mach/efi.h
> create mode 100644 arch/efi/lib/.gitignore
> create mode 100644 arch/efi/lib/Makefile
> create mode 100644 arch/efi/lib/crt0-efi-ia32.S
> create mode 100644 arch/efi/lib/crt0-efi-x86_64.S
> create mode 100644 arch/efi/lib/elf_ia32_efi.lds.S
> create mode 100644 arch/efi/lib/elf_x86_64_efi.lds.S
> create mode 100644 arch/efi/lib/reloc_ia32.c
> create mode 100644 arch/efi/lib/reloc_x86_64.c
> create mode 100644 common/efi-devicepath.c
> create mode 100644 common/efi-guid.c
> create mode 100644 drivers/net/efi-snp.c
> create mode 100644 drivers/serial/efi-stdio.c
> create mode 100644 fs/efi.c
> create mode 100644 fs/efivarfs.c
> create mode 100644 include/efi.h
> delete mode 100644 include/linux/efi.h
> create mode 100644 include/wchar.h
> create mode 100644 lib/wchar.c
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
