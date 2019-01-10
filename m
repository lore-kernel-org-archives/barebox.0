Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSPi-0003AE-G2
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:57:55 +0000
Received: by mail-pl1-x629.google.com with SMTP id w4so4654902plz.1
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:57:53 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:18 -0800
Message-Id: <20190110045739.19399-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/21] PCI improvements
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

Thanks,
Andrey Smirnov

Andrey Smirnov (21):
  PCI: Switch to using %pa to print memory addresses
  PCI: Replace last_* variables with an array
  PCI: Consolidate limit/base settting code
  PCI: Convert prescan_setup_bridge() to use a loop
  PCI: Convert postscan_setup_bridge() to use a loop
  PCI: Replace magic number in setup_device()
  PCI: Remove superfluous parens in setup_device()
  PCI: Simplify resource setup code in setup_device()
  PCI: Store and reuse BAR offsets
  PCI: Conver register_pci_controller() to use a loop
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
 drivers/pci/pci.c                  | 281 +++++++++++++----------------
 drivers/pci/pci_iomap.c            |   6 +-
 drivers/pci/pcie-designware-host.c |  10 +-
 include/linux/pci.h                |  12 +-
 7 files changed, 139 insertions(+), 189 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
