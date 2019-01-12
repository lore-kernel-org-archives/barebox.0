Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giDd2-0006Tb-Da
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 07:22:50 +0000
Received: by mail-pl1-x62c.google.com with SMTP id t13so7782113ply.13
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 23:22:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 23:22:18 -0800
Message-Id: <20190112072234.21878-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 00/16] PCI improvements
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series is a number of various small improvementes (or at least
they seemed so to me) as well as a couple of small fixes for 64-bit
builds. With exception of "PCI: Switch to using %pa to print memory
addresses" and "Convert ->res_start() to return resource_size_t" none
of the patches are fixing problems so all of them are optional and can
be dropped from the series.

Hopefully all of the patches are self-explanatory.

Feedback is welcome!

Changes since [v1]:

  - Dropped all of the rejected patches

Thanks,
Andrey Smirnov

[v1] http://lists.infradead.org/pipermail/barebox/2019-January/036355.html

Andrey Smirnov (16):
  PCI: Switch to using %pa to print memory addresses
  PCI: Replace magic number in setup_device()
  PCI: Remove superfluous parens in setup_device()
  PCI: Simplify resource setup code in setup_device()
  PCI: Store and reuse BAR offsets
  PCI: Remove unused variables/code
  PCI: Make pci_scan_bus static
  PCI: Drop "slots" from struct pci_bus
  PCI: Drop "resources" from struct pci_bus
  PCI: Drop "name" from struct pci_bus
  PCI: Drop "ops" from struct pci_bus
  PCI: Drop "rom_address" from struct pci_dev
  PCI: Simplify alloc_pci_dev()
  PCI: Assume 1:1 mapping if .res_start callback is NULL
  PCI: Convert ->res_start() to return resource_size_t
  PCI: Consify pci_ops in struct pci_controller

 arch/mips/mach-malta/pci.c         |   3 +-
 drivers/pci/pci-mvebu.c            |   8 +-
 drivers/pci/pci-tegra.c            |   8 +-
 drivers/pci/pci.c                  | 155 +++++++++++------------------
 drivers/pci/pci_iomap.c            |   6 +-
 drivers/pci/pcie-designware-host.c |  10 +-
 include/linux/pci.h                |  12 +--
 7 files changed, 77 insertions(+), 125 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
