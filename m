Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIzVx-0002w8-Ud
 for barebox@lists.infradead.org; Wed, 16 May 2018 16:43:14 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 16 May 2018 18:42:23 +0200
Message-Id: <20180516164233.27581-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 00/10] provide ELF/KEXEC support for MIPS ath79 and malta
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

This patch set is a squashed and rebased patch set of work primely done by:
Antony Pavlov, Peter Mamonov and Yegor Yefremov.

I did some clean-ups and updates.

This code suppose provide kernel start support for some MIPS machines.
For example ath79 (Atheros) and malta should be able to work with it.

So far only two UHI boot protocols are supported:
- second argument is command line
- second argument is address to devicetree

Some work should be done to start using barebox internal devicetree patching to provide
cmdline over patched devicetree.

ARM and other arches would probably work with some more or less work.

Antony Pavlov (5):
  resource: add create_resource() helper function
  filetype: add ELF type
  bootm: add kexec ELF support
  MIPS: add kexec ELF loading support
  MIPS: malta: enable kexec

Oleksij Rempel (5):
  port resource_overlaps() from kernel
  MIPS: ath79: enable kexec
  MIPS: configs: add KEXEC=y to atheros devices
  MIPS: configs: dptechnics-dpt-module: enable watchdog poller
  MIPS: malta: update malta qemu defconfig

 arch/mips/Kconfig                                 |   2 +
 arch/mips/configs/8devices-lima_defconfig         |   1 +
 arch/mips/configs/black-swift_defconfig           |   1 +
 arch/mips/configs/dptechnics-dpt-module_defconfig |   2 +
 arch/mips/configs/qemu-malta_defconfig            |  13 +-
 arch/mips/configs/tplink-mr3020_defconfig         |   1 +
 arch/mips/configs/tplink-wdr4300_defconfig        |   1 +
 arch/mips/include/asm/elf.h                       |   8 +-
 arch/mips/lib/Makefile                            |   4 +
 arch/mips/lib/kexec-mach-generic.c                |  21 +
 arch/mips/lib/kexec-mips.c                        | 307 ++++++++++++
 arch/mips/lib/machine_kexec.h                     |  21 +
 arch/mips/lib/relocate_kernel.S                   | 108 +++++
 commands/Kconfig                                  |   7 +
 common/Kconfig                                    |   3 +
 common/filetype.c                                 |   5 +
 common/resource.c                                 |  15 +
 include/bootm.h                                   |   3 +
 include/filetype.h                                |   1 +
 include/kexec.h                                   | 118 +++++
 include/linux/ioport.h                            |   8 +
 lib/Makefile                                      |   1 +
 lib/kexec/Makefile                                |   4 +
 lib/kexec/kexec-bootm-elf.c                       |  42 ++
 lib/kexec/kexec-elf-exec.c                        |  70 +++
 lib/kexec/kexec-elf.c                             | 565 ++++++++++++++++++++++
 lib/kexec/kexec.c                                 | 255 ++++++++++
 27 files changed, 1583 insertions(+), 4 deletions(-)
 create mode 100644 arch/mips/lib/kexec-mach-generic.c
 create mode 100644 arch/mips/lib/kexec-mips.c
 create mode 100644 arch/mips/lib/machine_kexec.h
 create mode 100644 arch/mips/lib/relocate_kernel.S
 create mode 100644 include/kexec.h
 create mode 100644 lib/kexec/Makefile
 create mode 100644 lib/kexec/kexec-bootm-elf.c
 create mode 100644 lib/kexec/kexec-elf-exec.c
 create mode 100644 lib/kexec/kexec-elf.c
 create mode 100644 lib/kexec/kexec.c

-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
