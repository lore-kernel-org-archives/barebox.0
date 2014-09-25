Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXE60-0002ba-Dg
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 18:48:53 +0000
Received: by mail-lb0-f175.google.com with SMTP id w7so7643992lbi.34
 for <barebox@lists.infradead.org>; Thu, 25 Sep 2014 11:48:29 -0700 (PDT)
Date: Thu, 25 Sep 2014 23:02:38 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140925230238.18b41a52be8f3d5cc45d9bc7@gmail.com>
In-Reply-To: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
References: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/15] PCI bridges and Tegra PCI stuff
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Thu, 25 Sep 2014 19:04:54 +0200
Lucas Stach <dev@lynxeye.de> wrote:

> Ok, I'm sending this out before it gathers any more dust.
> =

> This still doesn't work on Tegra K1 and I also haven't got
> around to finish the rtl8169 network driver, but it seems
> this pile is already a worthwile improvement.
> =

> First 7 patches are general barebox PCI improvements for
> better tracking of PCI resources and handling bridge setup.

I have tryed this series.

I have got several =

  'BAR does not fit within bus IO res'
messages on qemu-malta. So not all available pci devices were registered.


> Others are Tegra related and at least provide working
> PCIe on the Tegra30 Beaver board.
> =

> More to come later...
> =

> Lucas Stach (15):
>   pci: split out device init
>   pci: add resource enum
>   pci: properly populate prefetchable BARs
>   pci: setup bridges and traverse buses behind them
>   pci: prettyprint device names
>   pci: track parent<->child relationship
>   commands: lspci: go down into subordinate busses
>   clk: tegra: add PLLE setup functions
>   clk: tegra30: add PCIe clocks
>   i2c: tegra: move to fs initcall
>   ARM: tegra: beaver: enable PEX voltage rail
>   tegra: pmc: add powerdomain handling
>   of: import pci range parser from linux
>   pci: add Tegra host controller driver
>   ARM: tegra: advertise PCI support
> =

>  arch/arm/Kconfig                                   |    1 +
>  arch/arm/boards/nvidia-beaver/board.c              |   13 +-
>  arch/arm/configs/tegra_v7_defconfig                |    1 +
>  arch/arm/mach-tegra/include/mach/tegra-powergate.h |   93 ++
>  arch/arm/mach-tegra/include/mach/tegra20-car.h     |    2 +
>  arch/arm/mach-tegra/include/mach/tegra30-car.h     |    2 +
>  arch/arm/mach-tegra/tegra20-pmc.c                  |  139 ++-
>  commands/lspci.c                                   |   25 +-
>  drivers/clk/tegra/clk-pll.c                        |  116 ++
>  drivers/clk/tegra/clk-tegra30.c                    |   31 +
>  drivers/clk/tegra/clk.h                            |    6 +
>  drivers/i2c/busses/i2c-tegra.c                     |    2 +-
>  drivers/of/address.c                               |   68 ++
>  drivers/pci/Kconfig                                |    7 +
>  drivers/pci/Makefile                               |    1 +
>  drivers/pci/bus.c                                  |    3 +-
>  drivers/pci/pci-tegra.c                            | 1193 ++++++++++++++=
++++++
>  drivers/pci/pci.c                                  |  272 +++--
>  include/linux/pci.h                                |    9 +
>  include/linux/pci_regs.h                           |   28 +
>  include/of_address.h                               |   51 +-
>  21 files changed, 1977 insertions(+), 86 deletions(-)
>  create mode 100644 arch/arm/mach-tegra/include/mach/tegra-powergate.h
>  create mode 100644 drivers/pci/pci-tegra.c
> =

> -- =

> 1.9.3
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
