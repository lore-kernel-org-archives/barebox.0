Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvNO-0005pM-Sh
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:20:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:20:39 +0100
Message-Id: <20191127112051.9427-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 00/12] Designware PCIe updates and Layerscape support
To: Barebox List <barebox@lists.infradead.org>

s series has some updates to the Designware PCIe controller driver
taken from Linux and finally adds support for the Layerscape incarnation
of the Designware PCIe core.

Sascha Hauer (12):
  PCI: dwc: Don't hard-code DBI/ATU offset
  PCI: dwc: Make use of IS_ALIGNED()
  PCI: dwc: Add dw_pcie_disable_atu()
  PCI: dwc: Make use of BIT() in constant definitions
  PCI: dwc: Enable iATU unroll for endpoint too
  PCI: dwc: Fix ATU identification for designware version >= 4.80
  PCI: dwc: imx6: Share PHY debug register definitions
  PCI: dwc: Cleanup DBI,ATU read and write APIs
  PCI: dwc: rename readl/writel_dbi ops to read/write_dbi
  PCI: dwc: Sync register definitions with Linux-5.4
  PCI: dwc: Return directly when num-lanes is not found
  PCI: Add layerscape PCIe driver

 arch/arm/Kconfig                   |   1 +
 drivers/pci/Kconfig                |   7 +
 drivers/pci/Makefile               |   1 +
 drivers/pci/pci-imx6.c             |  11 +-
 drivers/pci/pci-layerscape.c       | 484 +++++++++++++++++++++++++++++
 drivers/pci/pcie-designware-host.c |  16 -
 drivers/pci/pcie-designware.c      | 108 +++++--
 drivers/pci/pcie-designware.h      | 152 ++++++---
 8 files changed, 688 insertions(+), 92 deletions(-)
 create mode 100644 drivers/pci/pci-layerscape.c

-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
