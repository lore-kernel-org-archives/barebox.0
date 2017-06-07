Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dIZc6-0000cB-SS
 for barebox@lists.infradead.org; Wed, 07 Jun 2017 11:59:04 +0000
Date: Wed, 7 Jun 2017 13:58:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170607115840.xfa7pyko777phet6@pengutronix.de>
References: <20170607103422.4673-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170607103422.4673-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH v3 0/4] imx6ul: add Technexion Pico Hobbit support
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 07, 2017 at 12:34:18PM +0200, Michael Grzeschik wrote:
> This series adds support for the Technexion Pico Hobbit. It also
> prepares the TX_CLK_DIR pins for imx6ul platforms. This way it
> will not be needed in every imx6ul based board files. We also
> add support for post PHY reset delay as this is needed for the
> pico hobbit.
> 
> Michael Grzeschik (4):
>   ARM: i.MX: setup ENET_TX_CLK_DIR in imx6_init for every imx6ul
>   ARM: phytec-som-imx6: remove needles enet refclk setup
>   i.MX: fec: add post PHY reset delay DT property
>   ARM: i.MX6: add Technexion Pico Hobbit support

Updated with this series. Thanks

Sascha

> 
>  arch/arm/boards/Makefile                           |  1 +
>  arch/arm/boards/phytec-som-imx6/board.c            | 23 ++-----
>  arch/arm/boards/technexion-pico-hobbit/Makefile    |  7 ++
>  arch/arm/boards/technexion-pico-hobbit/board.c     | 63 +++++++++++++++++
>  .../defaultenv-pico-hobbit/init/automount          | 11 +++
>  .../defaultenv-pico-hobbit/network/eth1            | 18 +++++
>  .../flash-header-imx6ul-pico-hobbit-256.imxcfg     | 64 ++++++++++++++++++
>  .../flash-header-imx6ul-pico-hobbit-512.imxcfg     | 65 ++++++++++++++++++
>  arch/arm/boards/technexion-pico-hobbit/lowlevel.c  | 78 ++++++++++++++++++++++
>  arch/arm/configs/imx_v7_defconfig                  |  1 +
>  arch/arm/dts/Makefile                              |  1 +
>  arch/arm/dts/imx6ul-pico-hobbit.dts                | 35 ++++++++++
>  arch/arm/mach-imx/Kconfig                          |  6 ++
>  arch/arm/mach-imx/imx6.c                           | 11 +++
>  drivers/net/fec_imx.c                              | 10 ++-
>  images/Makefile.imx                                | 10 +++
>  16 files changed, 384 insertions(+), 20 deletions(-)
>  create mode 100644 arch/arm/boards/technexion-pico-hobbit/Makefile
>  create mode 100644 arch/arm/boards/technexion-pico-hobbit/board.c
>  create mode 100644 arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/init/automount
>  create mode 100644 arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/network/eth1
>  create mode 100644 arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
>  create mode 100644 arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
>  create mode 100644 arch/arm/boards/technexion-pico-hobbit/lowlevel.c
>  create mode 100644 arch/arm/dts/imx6ul-pico-hobbit.dts
> 
> -- 
> 2.11.0
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
