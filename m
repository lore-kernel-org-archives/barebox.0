Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZxxg-0002qX-Sc
 for barebox@lists.infradead.org; Tue, 15 Apr 2014 07:39:21 +0000
Received: by mail-la0-f53.google.com with SMTP id b8so6629429lan.12
 for <barebox@lists.infradead.org>; Tue, 15 Apr 2014 00:38:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 15 Apr 2014 11:38:24 +0400
Message-Id: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 00/10] MIPS: use kexec to load ELF linux images
To: barebox@lists.infradead.org

This patchseries introduces a suitable way for loading
ELF linux kernel images on MIPS. You can load normal vmlinux
images or compressed self-extractable vmlinuz images.

The patchseries and additional patch with pre-compiled demo
vmlinuz image for MIPS Malta can be obtained here:
  https://github.com/frantony/barebox/tree/next.mips-malta-elf-linux.20140415

Linux kernel ELF images use KSEG1 ("cached") addresses, so
this series adds elementary code for MIPS cache support.

The code for actual ELF loading and relocation is imported
from
  kexec-tools (git://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools)
and
  linux kernel (http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git).

There is no common standard on passing cmdline to the linux kernel
on MIPS machines. We have to realize it's own cmdline passing
routine for every MIPS machine supported by barebox.
The 'MIPS: mach-malta: add kexec-capable reboot()' patch
demonstrates how to do it for MIPS Malta.

To separate common ELF handling routines and machine-specific
cmdline handling the 'reboot()' call is introduced.
The common code checks and loads ELF-file, the MIPS-specific
code arrange ELF segments in the appropriate memory places
and tunes relocator; next reboot() is called and machine-specific
code works on cmdline passing.

Antony Pavlov (10):
  MIPS: add initial cache support for R4000-class CPUs
  MIPS: introduce arch_shutdown()
  MIPS: use arch_shutdown() for flushing caches
  MIPS: add virt_to_phys() and phys_to_virt()
  resource: add create_resource() helper function
  import initial kexec stuff
  filetype: add ELF type
  bootm: add kexec ELF support
  MIPS: add ELF support
  MIPS: mach-malta: add kexec-capable reboot()

 arch/mips/Kconfig                |   1 +
 arch/mips/include/asm/cache.h    |   8 +
 arch/mips/include/asm/cacheops.h |  27 ++
 arch/mips/include/asm/common.h   |   2 +-
 arch/mips/include/asm/elf.h      |   8 +-
 arch/mips/include/asm/io.h       |  42 +++
 arch/mips/lib/Makefile           |   5 +
 arch/mips/lib/c-r4k.c            |  89 ++++++
 arch/mips/lib/dma.c              |  27 ++
 arch/mips/lib/kexec-mips.c       | 170 +++++++++++
 arch/mips/lib/relocate_kernel.S  |  80 +++++
 arch/mips/lib/shutdown.c         |  12 +
 arch/mips/mach-malta/Makefile    |   1 +
 arch/mips/mach-malta/reboot.c    | 104 +++++++
 commands/Kconfig                 |   7 +
 common/Kconfig                   |   3 +
 common/filetype.c                |   5 +
 common/resource.c                |  15 +
 include/filetype.h               |   1 +
 include/linux/ioport.h           |   2 +
 include/linux/reboot.h           |  14 +
 lib/Makefile                     |   1 +
 lib/kexec/Makefile               |   4 +
 lib/kexec/kexec-bootm-elf.c      |  36 +++
 lib/kexec/kexec-elf-exec.c       |  82 +++++
 lib/kexec/kexec-elf.c            | 639 +++++++++++++++++++++++++++++++++++++++
 lib/kexec/kexec-elf.h            |  86 ++++++
 lib/kexec/kexec.c                | 149 +++++++++
 lib/kexec/kexec.h                |  89 ++++++
 29 files changed, 1707 insertions(+), 2 deletions(-)
 create mode 100644 arch/mips/include/asm/cache.h
 create mode 100644 arch/mips/include/asm/cacheops.h
 create mode 100644 arch/mips/lib/dma.c
 create mode 100644 arch/mips/lib/kexec-mips.c
 create mode 100644 arch/mips/lib/relocate_kernel.S
 create mode 100644 arch/mips/lib/shutdown.c
 create mode 100644 arch/mips/mach-malta/reboot.c
 create mode 100644 include/linux/reboot.h
 create mode 100644 lib/kexec/Makefile
 create mode 100644 lib/kexec/kexec-bootm-elf.c
 create mode 100644 lib/kexec/kexec-elf-exec.c
 create mode 100644 lib/kexec/kexec-elf.c
 create mode 100644 lib/kexec/kexec-elf.h
 create mode 100644 lib/kexec/kexec.c
 create mode 100644 lib/kexec/kexec.h

-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
