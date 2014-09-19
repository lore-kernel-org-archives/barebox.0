Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XUr0o-0006mA-9s
 for barebox@lists.infradead.org; Fri, 19 Sep 2014 05:45:43 +0000
Date: Fri, 19 Sep 2014 07:45:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140919054518.GC4992@pengutronix.de>
References: <1410949512-16562-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410949512-16562-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 0/4] KaRo TX6u support
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 17, 2014 at 12:25:08PM +0200, Steffen Trumtrar wrote:
> Hi!
> 
> Changes since v1:
> 
> 	- removed clocks.imxcfg -> actually not needed
> 	- removed magic values in flash-header-tx6dl-1g -> not needed
> 	- removed barebox-usdhc-environment
> 	- include imx6qdl.dtsi for pwm aliases
> 
> Regards,
> Steffen

Applied, thanks

Sascha

> 
> Sascha Hauer (2):
>   imx-usb-loader: Skip unknown tags
>   imx-image: Handle check commands correctly
> 
> Steffen Trumtrar (2):
>   arm: mach-imx: add more ddr register defines
>   ARM: i.MX6: add support for Karo TX6X family
> 
>  Documentation/boards/imx/Karo-TX6                  |  13 ++
>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg | 101 +++++++++++
>  arch/arm/boards/karo-tx6x/Makefile                 |   2 +
>  arch/arm/boards/karo-tx6x/board.c                  | 202 +++++++++++++++++++++
>  .../boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg  |  11 ++
>  arch/arm/boards/karo-tx6x/lowlevel.c               |  75 ++++++++
>  arch/arm/boards/karo-tx6x/ram-base.imxcfg          |  71 ++++++++
>  arch/arm/dts/Makefile                              |   1 +
>  arch/arm/dts/imx6dl-tx6u-801x.dts                  |  65 +++++++
>  arch/arm/mach-imx/Kconfig                          |   4 +
>  arch/arm/mach-imx/include/mach/imx6-ddr-regs.h     |   6 +
>  arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h   |  20 ++
>  images/Makefile.imx                                |   5 +
>  scripts/imx/imx-image.c                            |  36 ++--
>  scripts/imx/imx-usb-loader.c                       |   6 +-
>  16 files changed, 596 insertions(+), 23 deletions(-)
>  create mode 100644 Documentation/boards/imx/Karo-TX6
>  create mode 100644 arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg
>  create mode 100644 arch/arm/boards/karo-tx6x/Makefile
>  create mode 100644 arch/arm/boards/karo-tx6x/board.c
>  create mode 100644 arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
>  create mode 100644 arch/arm/boards/karo-tx6x/lowlevel.c
>  create mode 100644 arch/arm/boards/karo-tx6x/ram-base.imxcfg
>  create mode 100644 arch/arm/dts/imx6dl-tx6u-801x.dts
> 
> -- 
> 2.1.0
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
