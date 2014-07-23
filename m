Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9son-0000cl-7Z
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 09:26:37 +0000
Received: by mail-wg0-f50.google.com with SMTP id n12so853836wgh.33
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 02:26:15 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 11:26:02 +0200
Message-Id: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH RESEND 0/6] Marvell EBU PCIe driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

[Resending because I made a mistake when calling git send-email causing
the barebox ML to be dropped]

This patch set adds support for PCIe controllers found on Marvell EBU
SoCs.

First, it fixes mvebu-mbus to properly compute resources from DT and
extends pci_scan_bus for 64-bit BAR detection. Then it prepares PCI
framework to allow to access the host controller struct from struct
pci_bus and set a non-zero bus number. Also, a DT helper for parsing
devfn number is imported from Linux.

Finally, it adds the PCIe host controller driver and SoC specific PHY
setup (for Armada 370 only yet) allowing to access PCI devices attached
to it.

I have tested the driver on Armada 370 Mirabox on both mini-PCIe slot
and on-board USB 3.0 controller. The dts is missing reset-gpios
properties for gpio1.28 and gpio1.22 respectively. A corresponding
patch to add them to armada-370-mirabox.dts will be sent on Linux ML.

As soon as I get barebox running on Dove and Kirkwood boards with
accessible/populated PCIe slots, I'll add PHY support for those.
For Armada XP, I still struggle to fully understand the DT binding
which IMHO allows to configure both available ports to Nx1 but not
to 1x4. Anyway, I don't have an Armada XP board available, but maybe
Thomas or Ezequiel can shed some light into it.

Sebastian

Sebastian Hesselbarth (6):
  bus: mvebu: fix resource size handling
  pci: pci_scan_bus: respect 64b BARs
  pci: add host controller struct to sysdata
  pci: allow to set bus number on register_pci_controller
  of: pci: import of_pci_get_devfn()
  pci: mvebu: Add PCIe driver

 arch/arm/Kconfig            |   1 +
 arch/mips/mach-malta/pci.c  |   2 +-
 drivers/bus/mvebu-mbus.c    |   8 +-
 drivers/of/Kconfig          |   6 +
 drivers/of/Makefile         |   1 +
 drivers/of/of_pci.c         |  27 +++
 drivers/pci/Kconfig         |   6 +
 drivers/pci/Makefile        |   2 +
 drivers/pci/pci-mvebu-phy.c | 102 +++++++++++
 drivers/pci/pci-mvebu.c     | 436 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/pci/pci-mvebu.h     |  35 ++++
 drivers/pci/pci.c           |  12 +-
 include/linux/pci.h         |   2 +-
 include/of_pci.h            |  17 ++
 14 files changed, 649 insertions(+), 8 deletions(-)
 create mode 100644 drivers/of/of_pci.c
 create mode 100644 drivers/pci/pci-mvebu-phy.c
 create mode 100644 drivers/pci/pci-mvebu.c
 create mode 100644 drivers/pci/pci-mvebu.h
 create mode 100644 include/of_pci.h

---
To: barebox@lists.infradead.org
Cc: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
