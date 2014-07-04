Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2wDI-00068Z-EC
 for barebox@lists.infradead.org; Fri, 04 Jul 2014 05:39:13 +0000
Date: Fri, 4 Jul 2014 07:38:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140704053848.GF26384@pengutronix.de>
References: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v5 0/7] barebox PCI support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 04, 2014 at 01:26:59AM +0400, Antony Pavlov wrote:
> This patchseries introduce simple PCI bus support for barebox.
> 
> This patchseries can be found on github:
> 
>   https://github.com/frantony/barebox/tree/pci.20140704

Applied, thanks

Sascha

> 
> Changes since RFC v4:
> 
>   * introduce pci_iomap();
>   * rtl8139: use dev_err instead of printk;
>   * rtl8139: clean '#if 0';
>   * struct pci_bus: drop unused fields.
> 
> Changes since RFC v3:
> 
>   * rebase over latest 'next';
>   * use list for pci_root_buses;
>   * move common PCI Kconfig stuff from arch/mips to drivers/pci;
>   * make pci_*_write_config_* PCIe-friendly (use 'int' type for
>     config register address);
>   * drop some unused stuff;
>   * change lspci "no pci" error message to "No PCI bus detected";
>   * rtl8139: use dma_alloc_coherent();
>   * rtl8139: use pci_set_master() & pci_clear_master().
> 
> Antony Pavlov (7):
>   linux/ioport.h: include missed <linux/list.h>
>   MIPS: add dma_alloc_coherent()
>   PCI: initial commit
>   commands: add 'lspci' command
>   net: add RealTek RTL-8139 PCI Ethernet driver
>   MIPS: add PCI support for GT64120-based Malta board
>   MIPS: qemu-malta_defconfig: enable PCI & network stuff
> 
>  arch/mips/Kconfig                                |   1 +
>  arch/mips/configs/qemu-malta_defconfig           |   4 +
>  arch/mips/include/asm/dma-mapping.h              |  25 +
>  arch/mips/include/asm/gt64120.h                  |  53 ++
>  arch/mips/mach-malta/Makefile                    |   1 +
>  arch/mips/mach-malta/include/mach/mach-gt64120.h |   2 +
>  arch/mips/mach-malta/pci.c                       | 236 +++++++++
>  commands/Kconfig                                 |   8 +
>  commands/Makefile                                |   1 +
>  commands/lspci.c                                 |  52 ++
>  drivers/Kconfig                                  |   1 +
>  drivers/Makefile                                 |   1 +
>  drivers/net/Kconfig                              |   8 +
>  drivers/net/Makefile                             |   1 +
>  drivers/net/rtl8139.c                            | 605 +++++++++++++++++++++++
>  drivers/pci/Kconfig                              |  29 ++
>  drivers/pci/Makefile                             |   8 +
>  drivers/pci/bus.c                                | 110 +++++
>  drivers/pci/pci.c                                | 292 +++++++++++
>  drivers/pci/pci_iomap.c                          |  29 ++
>  include/linux/ioport.h                           |   1 +
>  include/linux/mod_devicetable.h                  |  20 +
>  include/linux/pci.h                              | 297 +++++++++++
>  include/linux/pci_ids.h                          | 141 ++++++
>  include/linux/pci_regs.h                         | 110 +++++
>  25 files changed, 2036 insertions(+)
>  create mode 100644 arch/mips/include/asm/dma-mapping.h
>  create mode 100644 arch/mips/mach-malta/pci.c
>  create mode 100644 commands/lspci.c
>  create mode 100644 drivers/net/rtl8139.c
>  create mode 100644 drivers/pci/Kconfig
>  create mode 100644 drivers/pci/Makefile
>  create mode 100644 drivers/pci/bus.c
>  create mode 100644 drivers/pci/pci.c
>  create mode 100644 drivers/pci/pci_iomap.c
>  create mode 100644 include/linux/mod_devicetable.h
>  create mode 100644 include/linux/pci.h
>  create mode 100644 include/linux/pci_ids.h
>  create mode 100644 include/linux/pci_regs.h
> 
> -- 
> 2.0.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
