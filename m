Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlv56-0004e8-H4
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 13:59:54 +0000
Date: Thu, 18 Jun 2020 15:59:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200618135950.GM11869@pengutronix.de>
References: <20200618091102.30150-1-a.fatoum@pengutronix.de>
 <20200618091102.30150-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618091102.30150-4-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 03/15] ARM: dts: align all applicable memory nodes with
 spec and convention
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 18, 2020 at 11:10:50AM +0200, Ahmad Fatoum wrote:
> The spec[1] says that top level memory nodes `shall have device_type =
> "memory"'. Since 8226f7f9 ("of: base: parse all available memory nodes"),
> we parse only nodes with device_type = "memory", so we should add the
> device_type property where ever it's missing. When the nodes were first
> added, this wasn't an issue because the skeleton.dtsi defined a memory
> skeleton with correct device_type, but this was removed upstream and
> imported into barebox along with 1dc748b3 ("dts: update to v5.1-rc1").
> 
> Upstream device trees with a memory node were adapted to have
> device_type = "memory" in-line. This wasn't the case for nodes defined
> only within barebox. Rectify this now and rename the nodes to feature a
> unit name as well to be aligned with the upstream trend.
> 
> [1]: https://github.com/devicetree-org/devicetree-specification/releases/download/v0.3/devicetree-specification-v0.3.pdf
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/dts/am335x-afi-gf.dts         | 2 +-
>  arch/arm/dts/am35xx-pfc-750_820x.dts   | 2 +-
>  arch/arm/dts/imx51-genesi-efika-sb.dts | 3 ++-
>  arch/arm/dts/imx6dl-eltec-hipercam.dts | 3 ++-
>  arch/arm/dts/imx6dl-mba6x.dts          | 3 ++-
>  arch/arm/dts/imx6q-guf-santaro.dts     | 3 ++-
>  arch/arm/dts/imx6q-mba6x.dts           | 3 ++-
>  arch/arm/dts/imx6q-var-som.dtsi        | 3 ++-
>  arch/arm/dts/imx6qdl-udoo.dtsi         | 3 ++-
>  arch/arm/dts/imx7d-phyboard-zeta.dts   | 4 ++--
>  arch/arm/dts/imx7d-phycore-som.dtsi    | 5 +++--
>  arch/arm/dts/imx7d-sdb.dts             | 2 +-
>  arch/arm/dts/module-mb7707.dts         | 3 ++-
>  arch/arm/dts/rk3288-phycore-som.dts    | 3 ++-
>  arch/arm/dts/virt2real.dts             | 2 +-
>  15 files changed, 27 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm/dts/am335x-afi-gf.dts b/arch/arm/dts/am335x-afi-gf.dts
> index 961fe2e241bc..cba8cbc8d6b7 100644
> --- a/arch/arm/dts/am335x-afi-gf.dts
> +++ b/arch/arm/dts/am335x-afi-gf.dts
> @@ -29,7 +29,7 @@
>  		};
>  	};
>  
> -	memory {
> +	memory@80000000 {
>  		device_type = "memory";
>  		reg = <0x80000000 0x10000000>; /* 128 MB */
>  	};

The am335x devices register their memory banks with values read back
from the memory controller in arch/arm/mach-omap/am33xx_scrm.c

> diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
> index 23e6ea416534..fb62fe2c7295 100644
> --- a/arch/arm/dts/imx51-genesi-efika-sb.dts
> +++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
> @@ -35,7 +35,8 @@
>  		};
>  	};
>  
> -	memory {
> +	memory@90000000 {
> +		device_type = "memory";
>  		reg = <0x90000000 0x20000000>;
>  	};

The i.MX devices register their memory banks with values read back from
the memory controller in arch/arm/mach-imx/esdctl.c

For these boards it's probably better to remove the memory nodes
entirely.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
