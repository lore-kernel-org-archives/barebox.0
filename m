Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoEtw-0000cC-RA
 for barebox@lists.infradead.org; Wed, 04 Dec 2013 16:02:14 +0000
Date: Wed, 4 Dec 2013 17:01:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131204160149.GM24559@pengutronix.de>
References: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 0/8] tegra-next
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 03, 2013 at 08:56:53PM +0100, Lucas Stach wrote:
> In an attempt to sneak those into -next before the .12 release,
> just a quick dump.
> For the first time barebox is now able to load and boot a
> Linux kernel from SDcard on Tegra. Makes it a lot more useful in
> the real world.

Indeed ;)

Applied, thanks

Sascha

> 
> Lucas Stach (8):
>   tegra: fix fallout from relocatable code changes in PLLX init
>   tegra: speed up system bus
>   tegra: switch main CPU complex to PLLX early
>   gpio: tegra: remove leftover debug code
>   clk: tegra: add SDMMC clocks
>   tegra: add SDMMC controller driver
>   dts: tegra: add SDMMC nodes
>   dts: tegra: activate SDMMC on Colibri T20
> 
>  arch/arm/dts/tegra20-colibri-iris.dts          |   5 +
>  arch/arm/dts/tegra20-colibri.dtsi              |   4 +
>  arch/arm/dts/tegra20.dtsi                      |  32 ++
>  arch/arm/mach-tegra/include/mach/tegra20-car.h |  44 +++
>  arch/arm/mach-tegra/tegra_avp_init.c           |   2 +
>  arch/arm/mach-tegra/tegra_maincomplex_init.c   |   9 +
>  drivers/clk/tegra/clk-tegra20.c                |  25 ++
>  drivers/gpio/gpio-tegra.c                      |   2 -
>  drivers/mci/Kconfig                            |   7 +
>  drivers/mci/Makefile                           |   1 +
>  drivers/mci/tegra-sdmmc.c                      | 465 +++++++++++++++++++++++++
>  11 files changed, 594 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/mci/tegra-sdmmc.c
> 
> -- 
> 1.8.3.1
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
