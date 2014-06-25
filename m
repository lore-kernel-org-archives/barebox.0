Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzvkV-0006xw-AP
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 22:33:04 +0000
Received: by mail-la0-f41.google.com with SMTP id hz20so1263729lab.14
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 15:32:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 26 Jun 2014 02:32:13 +0400
Message-Id: <1403735538-25437-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v3 0/5] barebox PCI support
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20Leger?= <cleger@kalray.eu>

This patchseries introduce simple PCI bus support for barebox.

Previous (RFC v2) version can be found here:

  http://lists.infradead.org/pipermail/barebox/2012-March/006327.html

TODOs for RFC v3:

  * no PCI bridges support;
  * introduce dma_alloc_coherent();
  * introduce pci_resource_start();
  * introduce pci_iomap();
  * introduce pci_set_master() & pci_clear_master();
  * clean '#if 0'.

This patchseries can be found on github:

  https://github.com/frantony/barebox/tree/pci.20140626

Antony Pavlov (5):
  PCI: initial commit
  commands: add 'lspci' command
  net: add RealTek RTL-8139 PCI Ethernet driver
  MIPS: add PCI support for GT64120-based Malta board
  MIPS: qemu-malta_defconfig: enable PCI & network stuff

 arch/mips/Kconfig                                |  22 +
 arch/mips/configs/qemu-malta_defconfig           |   4 +
 arch/mips/include/asm/gt64120.h                  |  53 ++
 arch/mips/mach-malta/Makefile                    |   1 +
 arch/mips/mach-malta/include/mach/mach-gt64120.h |   2 +
 arch/mips/mach-malta/pci.c                       | 246 +++++++++
 commands/Kconfig                                 |   8 +
 commands/Makefile                                |   1 +
 commands/lspci.c                                 |  49 ++
 drivers/Makefile                                 |   1 +
 drivers/net/Kconfig                              |   8 +
 drivers/net/Makefile                             |   1 +
 drivers/net/rtl8139.c                            | 621 +++++++++++++++++++++++
 drivers/pci/Kconfig                              |  12 +
 drivers/pci/Makefile                             |   8 +
 drivers/pci/bus.c                                | 110 ++++
 drivers/pci/pci.c                                | 282 ++++++++++
 include/linux/mod_devicetable.h                  |  20 +
 include/linux/pci.h                              | 241 +++++++++
 include/linux/pci_ids.h                          | 141 +++++
 include/linux/pci_regs.h                         | 118 +++++
 21 files changed, 1949 insertions(+)
 create mode 100644 arch/mips/mach-malta/pci.c
 create mode 100644 commands/lspci.c
 create mode 100644 drivers/net/rtl8139.c
 create mode 100644 drivers/pci/Kconfig
 create mode 100644 drivers/pci/Makefile
 create mode 100644 drivers/pci/bus.c
 create mode 100644 drivers/pci/pci.c
 create mode 100644 include/linux/mod_devicetable.h
 create mode 100644 include/linux/pci.h
 create mode 100644 include/linux/pci_ids.h
 create mode 100644 include/linux/pci_regs.h

-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
