Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fCm53-0008W0-K3
 for barebox@lists.infradead.org; Sun, 29 Apr 2018 13:09:31 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sun, 29 Apr 2018 15:09:00 +0200
Message-Id: <20180429130907.20506-1-linux@rempel-privat.de>
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
Subject: [RFC PATCH 0/7] provide ELF/KEXEC support for MIPS ath79 and malta
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

This patch set is a squashed and rebased patch set of work done by:
Antony Pavlov and Yegor Yefremov.

This code suppose provide kernel start support for some MIPS machines.
For example ath79 (Atheros) and malta should be able to work with it.

So far only kernel and cmdline passing is supported. ARM and other arches would
probably work with some more or less work.

Antony Pavlov (5):
  resource: add create_resource() helper function
  filetype: add ELF type
  bootm: add kexec ELF support
  MIPS: add kexec ELF loading support
  MIPS: malta: enable kexec

Oleksij Rempel (2):
  MIPS: ath79: add kexec support
  MIPS: configs: add KEXEC=y to atheros devices

 arch/mips/Kconfig                                 |   2 +
 arch/mips/configs/8devices-lima_defconfig         |   1 +
 arch/mips/configs/black-swift_defconfig           |   1 +
 arch/mips/configs/dptechnics-dpt-module_defconfig |   1 +
 arch/mips/configs/tplink-mr3020_defconfig         |   1 +
 arch/mips/configs/tplink-wdr4300_defconfig        |   1 +
 arch/mips/include/asm/elf.h                       |   8 +-
 arch/mips/lib/Makefile                            |   3 +
 arch/mips/lib/kexec-mips.c                        | 272 +++++++++
 arch/mips/lib/machine_kexec.h                     |  21 +
 arch/mips/lib/relocate_kernel.S                   | 108 ++++
 arch/mips/mach-ath79/Makefile                     |   1 +
 arch/mips/mach-ath79/reboot.c                     |  42 ++
 arch/mips/mach-malta/Makefile                     |   1 +
 arch/mips/mach-malta/reboot.c                     | 106 ++++
 commands/Kconfig                                  |   7 +
 common/Kconfig                                    |   3 +
 common/filetype.c                                 |   5 +
 common/resource.c                                 |  15 +
 include/bootm.h                                   |   3 +
 include/filetype.h                                |   1 +
 include/linux/ioport.h                            |   2 +
 include/linux/reboot.h                            |  14 +
 lib/Makefile                                      |   1 +
 lib/kexec/Makefile                                |   4 +
 lib/kexec/kexec-bootm-elf.c                       |  37 ++
 lib/kexec/kexec-elf-exec.c                        |  79 +++
 lib/kexec/kexec-elf.c                             | 678 ++++++++++++++++++++++
 lib/kexec/kexec-elf.h                             |  66 +++
 lib/kexec/kexec.c                                 | 281 +++++++++
 lib/kexec/kexec.h                                 |  92 +++
 31 files changed, 1856 insertions(+), 1 deletion(-)
 create mode 100644 arch/mips/lib/kexec-mips.c
 create mode 100644 arch/mips/lib/machine_kexec.h
 create mode 100644 arch/mips/lib/relocate_kernel.S
 create mode 100644 arch/mips/mach-ath79/reboot.c
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
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
