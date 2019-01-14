Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1givYr-0007mh-TV
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 06:17:27 +0000
Received: by mail-pg1-x541.google.com with SMTP id g189so9011622pgc.5
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2019 22:17:25 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 13 Jan 2019 22:16:53 -0800
Message-Id: <20190114061709.13948-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 00/16] PCI improvements
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

Changes since [v2]:

  - Collected Reviewed-by from Sam Ravnborg

  - Trivial renames 'r' -> 'busres', 'last' -> 'last_addr' in "PCI:
    Simplify resource setup code in setup_device()"

Changes since [v1]:

  - Dropped all of the rejected patches

Thanks,
Andrey Smirnov

[v2] http://lists.infradead.org/pipermail/barebox/2019-January/036426.html
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
 drivers/pci/pci.c                  | 156 +++++++++++------------------
 drivers/pci/pci_iomap.c            |   6 +-
 drivers/pci/pcie-designware-host.c |  10 +-
 include/linux/pci.h                |  12 +--
 7 files changed, 78 insertions(+), 125 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
