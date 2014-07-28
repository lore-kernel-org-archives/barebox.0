Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBkwv-0006Dp-DB
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 13:26:46 +0000
Received: by mail-we0-f175.google.com with SMTP id t60so7405463wes.20
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 06:26:21 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 28 Jul 2014 15:26:05 +0200
Message-Id: <1406553970-18157-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 0/5] Marvell EBU PCIe driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Second round of the Marvell EBU PCIe driver patch set. Compared
to v1, I reworked pci_scan_bus to properly set IORESOURCE flags
for all resources, and added auto-incrementing pci bus numbering.

Patch 1 is unchanged and still fixes resource computation of mbus
driver. Patch 2 now properly sets IORESOURCE flags for I/O, 32b
MEM, and 64b MEM resources.

Patch 3 is a squashed and reworked patch dealing with pci host
controller registration: bus number is now assigned from an auto-
incremented bus_index and already provided pci_controller's
set_busno is called right before pci_scan_bus to allow the
controller to update internal registers related with bus number.
This patch also sets a back-reference to the pci_controller of
a pci_bus and cleans up some unused left-overs from Linux import.

Patch 4 is unchanged import of of_pci_get_devfn() and Patch 5
finally adds the PCIe controller driver for Marvell MVEBU SoCs.
Individual changelogs are also at the corresponding patch mails.

Again, this has been tested on Armada 370 Mirabox.

I added Lucas's Acked-by to all individual patches except new
Patch 3, although I did not respect his request for
'#if defined(FOO)' removal in MVEBU PCIe driver.

Sebastian

Sebastian Hesselbarth (5):
  bus: mvebu: fix resource size handling
  pci: pci_scan_bus: respect 64b BARs
  pci: set auto-incremented bus number
  of: pci: import of_pci_get_devfn()
  pci: mvebu: Add PCIe driver

 arch/arm/Kconfig            |   1 +
 drivers/bus/mvebu-mbus.c    |   8 +-
 drivers/of/Kconfig          |   6 +
 drivers/of/Makefile         |   1 +
 drivers/of/of_pci.c         |  27 +++
 drivers/pci/Kconfig         |   6 +
 drivers/pci/Makefile        |   2 +
 drivers/pci/pci-mvebu-phy.c | 102 +++++++++++
 drivers/pci/pci-mvebu.c     | 434 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/pci/pci-mvebu.h     |  35 ++++
 drivers/pci/pci.c           |  14 +-
 include/linux/pci.h         |  12 +-
 include/of_pci.h            |  17 ++
 13 files changed, 651 insertions(+), 14 deletions(-)
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
