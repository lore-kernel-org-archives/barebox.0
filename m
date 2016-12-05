Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-x242.google.com ([2607:f8b0:400d:c0d::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDplo-00025Q-GI
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 09:41:17 +0000
Received: by mail-qt0-x242.google.com with SMTP id n34so35026220qtb.3
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 01:40:51 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Dec 2016 12:40:25 +0300
Message-Id: <20161205094033.31569-1-antonynpavlov@gmail.com>
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
Subject: [RFC v2 0/8] MIPS: use kexec to load ELF linux images
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

This patchseries introduces a suitable way for loading
ELF linux kernel images on MIPS. You can load normal vmlinux
images or compressed self-extractable vmlinuz images.

The patchseries and additional patch with pre-compiled demo
vmlinux image for MIPS Malta can be obtained here:
  https://github.com/frantony/barebox/tree/20161205.malta-bootm-vmlinux
Please see this commit message
  https://github.com/frantony/barebox/commit/23b24122a4bd1d59266ae585364c792dc9140ecb
for instructions.

The code for actual ELF loading and relocation is imported
from
  kexec-tools (git://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools)
and
  linux kernel (http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git).

There is no common practice on passing cmdline to the linux kernel
on MIPS machines. We have to realize it's own cmdline passing
routine for every MIPS machine supported by barebox.
The 'MIPS: malta: enable kexec' patch
demonstrates how to do it for MIPS Malta.

To separate common ELF handling routines and machine-specific
cmdline handling the 'reboot()' call is introduced.
The common code checks and loads ELF-file, the MIPS-specific
code arrange ELF segments in the appropriate memory places
and tunes relocator; next reboot() is called and machine-specific
code works on cmdline passing.

The 'import initial kexec stuff' contains some codes stealed from kexec-tools as-is.
These codes have some checkpatch.pl issues.


Antony Pavlov (7):
  MIPS: add virt_to_phys() and phys_to_virt()
  resource: add create_resource() helper function
  import initial kexec stuff
  filetype: add ELF type
  bootm: add kexec ELF support
  MIPS: add kexec ELF loading support
  MIPS: malta: enable kexec

Peter Mamonov (1):
  MIPS: c-r4k: add support for secondary cache

Changes since RFC v1 (http://lists.infradead.org/pipermail/barebox/2014-April/018651.html):

   * add 64 bit ELF support by Peter Mamonov;
   * update relocate_new_kernel arguments passing mechanism;
   * test with linux-4.9-rc8.

TODOs:

   * add DT and initrd passing support.

 arch/mips/Kconfig                |   1 +
 arch/mips/include/asm/cacheops.h |  10 +
 arch/mips/include/asm/elf.h      |   8 +-
 arch/mips/include/asm/io.h       |  35 ++
 arch/mips/lib/Makefile           |   3 +
 arch/mips/lib/c-r4k.c            |  19 +-
 arch/mips/lib/kexec-mips.c       | 171 +++++++++
 arch/mips/lib/relocate_kernel.S  |  97 +++++
 arch/mips/mach-malta/Makefile    |   1 +
 arch/mips/mach-malta/reboot.c    | 104 ++++++
 commands/Kconfig                 |   7 +
 common/Kconfig                   |   3 +
 common/filetype.c                |   5 +
 common/resource.c                |  15 +
 include/filetype.h               |   1 +
 include/linux/ioport.h           |   2 +
 include/linux/reboot.h           |  14 +
 lib/Makefile                     |   1 +
 lib/kexec/Makefile               |   4 +
 lib/kexec/kexec-bootm-elf.c      |  37 ++
 lib/kexec/kexec-elf-exec.c       |  82 ++++
 lib/kexec/kexec-elf.c            | 783 +++++++++++++++++++++++++++++++++++++++
 lib/kexec/kexec-elf.h            |  86 +++++
 lib/kexec/kexec.c                | 151 ++++++++
 lib/kexec/kexec.h                |  89 +++++
 25 files changed, 1722 insertions(+), 7 deletions(-)
 create mode 100644 arch/mips/lib/kexec-mips.c
 create mode 100644 arch/mips/lib/relocate_kernel.S
 create mode 100644 arch/mips/mach-malta/reboot.c
 create mode 100644 include/linux/reboot.h
 create mode 100644 lib/kexec/Makefile
 create mode 100644 lib/kexec/kexec-bootm-elf.c
 create mode 100644 lib/kexec/kexec-elf-exec.c
 create mode 100644 lib/kexec/kexec-elf.c
 create mode 100644 lib/kexec/kexec-elf.h
 create mode 100644 lib/kexec/kexec.c
 create mode 100644 lib/kexec/kexec.h

Cc: Peter Mamonov <pmamonov@gmail.com>

-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
