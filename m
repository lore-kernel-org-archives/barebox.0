Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x229.google.com ([2a00:1450:400c:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCPQi-0003QH-Gs
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 08:40:13 +0000
Received: by mail-we0-f169.google.com with SMTP id u56so832504wes.28
 for <barebox@lists.infradead.org>; Wed, 30 Jul 2014 01:39:50 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 30 Jul 2014 10:39:32 +0200
Message-Id: <1406709580-5585-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v3 0/8] Marvell EBU PCIe driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Third and hopefully last round of the Marvell EBU PCIe driver patch
set. Compared to v2, I disabled MBUS error propagation on Armada
370/XP as it hangs the SoC on unanswered PCIe accesses. Also, 64b
BARs are now properly handled. I added two more pci core fixes that
move PCI device registration after BAR setup and temporarely disable
PCI_COMMAND' IO and MEM bits during BAR setup.

The MVEBU PCIe driver now gained support for Armada XP PHY setup
which is anticipating a minor DT binding tweak to allow more than
one marvell,pcie-lane passed to the node. Also, PCI address space
does now also start at where we see it on MBUS. Some devices were
not so happy about starting at 0.

The whole series has been tested on Armada 370 Mirabox and
Armada XP Lenovo Iomega ix4-300d (not mainline yet).

Sebastian

Sebastian Hesselbarth (8):
  bus: mvebu: fix resource size handling
  ARM: mvebu: armada-370-xp: disable MBUS error propagation
  pci: pci_scan_bus: respect 64b BARs
  pci: register device after BAR setup
  pci: ensure device does ignore BAR mangling
  pci: set auto-incremented bus number
  of: pci: import of_pci_get_devfn()
  pci: mvebu: Add PCIe driver

 arch/arm/Kconfig                                   |   1 +
 arch/arm/mach-mvebu/armada-370-xp.c                |   6 +
 .../mach-mvebu/include/mach/armada-370-xp-regs.h   |   2 +
 drivers/bus/mvebu-mbus.c                           |   8 +-
 drivers/of/Kconfig                                 |   6 +
 drivers/of/Makefile                                |   1 +
 drivers/of/of_pci.c                                |  27 ++
 drivers/pci/Kconfig                                |   6 +
 drivers/pci/Makefile                               |   2 +
 drivers/pci/pci-mvebu-phy.c                        | 208 ++++++++++
 drivers/pci/pci-mvebu.c                            | 446 +++++++++++++++++++++
 drivers/pci/pci-mvebu.h                            |  37 ++
 drivers/pci/pci.c                                  |  28 +-
 include/linux/pci.h                                |  12 +-
 include/of_pci.h                                   |  17 +
 15 files changed, 790 insertions(+), 17 deletions(-)
 create mode 100644 drivers/of/of_pci.c
 create mode 100644 drivers/pci/pci-mvebu-phy.c
 create mode 100644 drivers/pci/pci-mvebu.c
 create mode 100644 drivers/pci/pci-mvebu.h
 create mode 100644 include/of_pci.h

---
Cc: barebox@lists.infradead.org
Cc: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
