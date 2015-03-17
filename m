Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXl9m-00069u-8p
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 06:39:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1YXl9Q-00085S-6l
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 07:38:52 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1YXl9Q-0006HB-5i
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 07:38:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Mar 2015 07:38:44 +0100
Message-Id: <1426574331-22797-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: i.MX6 PCI support
To: Barebox List <barebox@lists.infradead.org>

The following series adds PCIe support for i.MX6. Some PCI cleanup
patches are needed, then the designware PCIe driver from the kernel,
the i.MX6 PCIe driver, also from the kernel and finally the needed
clocks for the PCIe controller.

Sascha

----------------------------------------------------------------
Sascha Hauer (7):
      pci: Use standard pr_debug
      pci: fix copy-paste bug
      pci: pci_regs.h: Sync with Linux
      pci: Add pcie-designware driver
      ARM: i.MX: Add imx_clk_gate_exclusive
      ARM: i.MX6: Add PCI clocks
      pci: Add i.MX6 pcie support

 arch/arm/mach-imx/Kconfig              |   1 +
 arch/arm/mach-imx/Makefile             |   2 +-
 arch/arm/mach-imx/clk-gate-exclusive.c | 103 +++++
 arch/arm/mach-imx/clk-imx6.c           |  29 ++
 arch/arm/mach-imx/clk.h                |   3 +
 drivers/pci/Kconfig                    |  10 +
 drivers/pci/Makefile                   |   2 +
 drivers/pci/pci-imx6.c                 | 612 ++++++++++++++++++++++++++
 drivers/pci/pci.c                      |  36 +-
 drivers/pci/pcie-designware.c          | 564 ++++++++++++++++++++++++
 drivers/pci/pcie-designware.h          |  71 +++
 include/linux/pci_regs.h               | 769 +++++++++++++++++++++++++++++++++
 include/mfd/imx6q-iomuxc-gpr.h         |   8 +
 13 files changed, 2189 insertions(+), 21 deletions(-)
 create mode 100644 arch/arm/mach-imx/clk-gate-exclusive.c
 create mode 100644 drivers/pci/pci-imx6.c
 create mode 100644 drivers/pci/pcie-designware.c
 create mode 100644 drivers/pci/pcie-designware.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
