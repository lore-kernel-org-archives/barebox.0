Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCiwm-0000dG-IO
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 05:30:37 +0000
Date: Thu, 31 Jul 2014 07:30:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140731053012.GN23235@pengutronix.de>
References: <1406709580-5585-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406709580-5585-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v3 0/8] Marvell EBU PCIe driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Wed, Jul 30, 2014 at 10:39:32AM +0200, Sebastian Hesselbarth wrote:
> Third and hopefully last round of the Marvell EBU PCIe driver patch
> set. Compared to v2, I disabled MBUS error propagation on Armada
> 370/XP as it hangs the SoC on unanswered PCIe accesses. Also, 64b
> BARs are now properly handled. I added two more pci core fixes that
> move PCI device registration after BAR setup and temporarely disable
> PCI_COMMAND' IO and MEM bits during BAR setup.
> 
> The MVEBU PCIe driver now gained support for Armada XP PHY setup
> which is anticipating a minor DT binding tweak to allow more than
> one marvell,pcie-lane passed to the node. Also, PCI address space
> does now also start at where we see it on MBUS. Some devices were
> not so happy about starting at 0.
> 
> The whole series has been tested on Armada 370 Mirabox and
> Armada XP Lenovo Iomega ix4-300d (not mainline yet).
> 
> Sebastian

Ok, applied, thanks

Sascha

> 
> Sebastian Hesselbarth (8):
>   bus: mvebu: fix resource size handling
>   ARM: mvebu: armada-370-xp: disable MBUS error propagation
>   pci: pci_scan_bus: respect 64b BARs
>   pci: register device after BAR setup
>   pci: ensure device does ignore BAR mangling
>   pci: set auto-incremented bus number
>   of: pci: import of_pci_get_devfn()
>   pci: mvebu: Add PCIe driver
> 
>  arch/arm/Kconfig                                   |   1 +
>  arch/arm/mach-mvebu/armada-370-xp.c                |   6 +
>  .../mach-mvebu/include/mach/armada-370-xp-regs.h   |   2 +
>  drivers/bus/mvebu-mbus.c                           |   8 +-
>  drivers/of/Kconfig                                 |   6 +
>  drivers/of/Makefile                                |   1 +
>  drivers/of/of_pci.c                                |  27 ++
>  drivers/pci/Kconfig                                |   6 +
>  drivers/pci/Makefile                               |   2 +
>  drivers/pci/pci-mvebu-phy.c                        | 208 ++++++++++
>  drivers/pci/pci-mvebu.c                            | 446 +++++++++++++++++++++
>  drivers/pci/pci-mvebu.h                            |  37 ++
>  drivers/pci/pci.c                                  |  28 +-
>  include/linux/pci.h                                |  12 +-
>  include/of_pci.h                                   |  17 +
>  15 files changed, 790 insertions(+), 17 deletions(-)
>  create mode 100644 drivers/of/of_pci.c
>  create mode 100644 drivers/pci/pci-mvebu-phy.c
>  create mode 100644 drivers/pci/pci-mvebu.c
>  create mode 100644 drivers/pci/pci-mvebu.h
>  create mode 100644 include/of_pci.h
> 
> ---
> Cc: barebox@lists.infradead.org
> Cc: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> -- 
> 2.0.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
