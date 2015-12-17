Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a9VTX-0001jt-Bq
 for barebox@lists.infradead.org; Thu, 17 Dec 2015 10:07:56 +0000
Date: Thu, 17 Dec 2015 11:07:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151217100733.GD11966@pengutronix.de>
References: <1450313304.26955.188.camel@rtred1test09.kymeta.local>
 <1450313640.26955.192.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1450313640.26955.192.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 4/4] socfpga: Find partition with environment via device
 tree
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Dec 17, 2015 at 12:53:59AM +0000, Trent Piepho wrote:
> socfpga would load the environment from a file named "barebox.env"
> located on the device "/dev/mmc0.1".  Both those names are hard-coded
> in the socfpga code and can't be changed.
> 
> Barebox supports selecting the location of the environment using a
> "barebox,environment" node in device tree's "chosen" node.  And
> recently supports specifying that the env should come from a file on
> this device.
> 
> Change socfpga to use this mechanism by adding the appropriate device
> node.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
>  arch/arm/configs/socfpga_defconfig |  1 +
>  arch/arm/dts/socfpga.dtsi          |  8 ++++++++
>  arch/arm/mach-socfpga/generic.c    | 38 --------------------------------------
>  3 files changed, 9 insertions(+), 38 deletions(-)
> 
> diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
> index 0a31de5..7fbe045 100644
> --- a/arch/arm/configs/socfpga_defconfig
> +++ b/arch/arm/configs/socfpga_defconfig
> @@ -67,6 +67,7 @@ CONFIG_NET=y
>  CONFIG_NET_NETCONSOLE=y
>  CONFIG_NET_RESOLV=y
>  CONFIG_OF_BAREBOX_DRIVERS=y
> +CONFIG_OF_BAREBOX_ENV_IN_FS=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
>  CONFIG_DRIVER_NET_DESIGNWARE=y
>  CONFIG_MCI=y
> diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
> index d4d498b..d16758f 100644
> --- a/arch/arm/dts/socfpga.dtsi
> +++ b/arch/arm/dts/socfpga.dtsi
> @@ -1,4 +1,12 @@
>  / {
> +	chosen {
> +		environment@0 {
> +			compatible = "barebox,environment";
> +			device-path = &mmc, "partname:1";
> +			file-path = "barebox.env";
> +		};
> +	};
> +

I applied this series as is. We might have to move this to the board dts
files later as putting this into the SoC dtsi file does not allow the
boards to put the environment somewhere else. That was not possible
before this patch either, so this doesn't change much at the moment.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
