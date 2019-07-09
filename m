Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hknAQ-0002nR-9J
 for barebox@lists.infradead.org; Tue, 09 Jul 2019 10:16:12 +0000
Date: Tue, 9 Jul 2019 12:15:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190709101559.dj3ud35igitjcx5c@pengutronix.de>
References: <20190708072510.4169-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708072510.4169-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH 1/2] arm: port imx28-evk to devicetree
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Oleksij,

On Mon, Jul 08, 2019 at 09:25:09AM +0200, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/freescale-mx28-evk/Makefile   |   1 -
>  arch/arm/boards/freescale-mx28-evk/lowlevel.c |  10 +-
>  arch/arm/boards/freescale-mx28-evk/mx28-evk.c | 306 ------------------
>  arch/arm/configs/freescale-mx28-evk_defconfig |  11 +-
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/imx28-evk.dts                    |  40 +++
>  6 files changed, 58 insertions(+), 311 deletions(-)
>  delete mode 100644 arch/arm/boards/freescale-mx28-evk/mx28-evk.c
>  create mode 100644 arch/arm/dts/imx28-evk.dts
> 
> diff --git a/arch/arm/boards/freescale-mx28-evk/Makefile b/arch/arm/boards/freescale-mx28-evk/Makefile
> index a74ec2451b..b08c4a93ca 100644
> --- a/arch/arm/boards/freescale-mx28-evk/Makefile
> +++ b/arch/arm/boards/freescale-mx28-evk/Makefile
> @@ -1,2 +1 @@
> -obj-y += mx28-evk.o
>  lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
> index 22cae1374c..3062ecf3ce 100644
> --- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
> @@ -12,9 +12,17 @@
>  #include <mach/iomux.h>
>  #include <stmp-device.h>
>  
> +extern char __dtb_imx28_evk_start[];
> +
>  ENTRY_FUNCTION(start_barebox_freescale_mx28evk, r0, r1, r2)
>  {
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, NULL);
> +	void *fdt;
> +
> +	pr_debug("here we are!\n");

functions using static strings shouldn't be used here. Yes, it's copied
from the duckbill board code and it shouldn't be there aswell ;)

> -static void mx28_evk_get_ethaddr(void)
> -{
> -	u8 mac_ocotp[3], mac[6];
> -	int ret;
> -
> -	ret = mxs_ocotp_read(mac_ocotp, 3, 0);
> -	if (ret != 3) {
> -		pr_err("Reading MAC from OCOTP failed!\n");
> -		return;
> -	}
> -
> -	mac[0] = 0x00;
> -	mac[1] = 0x04;
> -	mac[2] = 0x9f;
> -	mac[3] = mac_ocotp[2];
> -	mac[4] = mac_ocotp[1];
> -	mac[5] = mac_ocotp[0];
> -
> -	eth_register_ethaddr(0, mac);
> -}

Have you checked the MAC address is read from ocotp without this?

> +&duart {
> +	arm,primecell-periphid = <0x00041011>;
> +};

Is this needed? If yes, then we should create arch/arm/dts/imx28.dtsi
and put it there as the duckbill does have this aswell.

> +
> +&ocotp {
> +	status = "okay";
> +};
> +
> +&gpmi {
> +	partition@0 {
> +		label = "boot";
> +		reg = <0x0 0x80000>;
> +	};
> +
> +	partition@80000 {
> +		label = "environment";
> +		reg = <0x80000 0x80000>;
> +	};
> +};
> +
> +&reg_fec_3v3 {
> +	gpio = <&gpio2 15 1>;
> +};

Erm, no. Please don't silently change the polarity without even leaving
a comment why this is done.

Also, this is wrong. The binding says that the default for fixed gpio
regulators is active-low. The presence of the enable-active-high
property demotes a GPIO regulator as active-high. barebox doesn't handle
this correctly, what you need is an adoption of Kernel commit:

| commit a603a2b8d86ee93ee2107da8ca75fd854fd4ff32
| Author: Linus Walleij <linus.walleij@linaro.org>
| Date:   Sat Dec 30 16:26:36 2017 +0100
| 
|     gpio: of: Add special quirk to parse regulator flags
|     
|     While most GPIOs are indicated to be active low or open drain using
|     their twocell flags, we have legacy regulator bindings to take into
|     account.
|     
|     Add a quirk respecting the special boolean active-high and open
|     drain flags when parsing regulator nodes for GPIOs.
|     
|     This makes it possible to get rid of duplicated inversion semantics
|     handling in the regulator core and any regulator drivers parsing
|     and handling this separately.
|     
|     Unfortunately the old regulator inversion semantics are specified
|     such that the presence or absence of "enable-active-high" solely
|     controls the semantics, so we cannot deprecate this in favor
|     of the phandle-provided inversion flag, instead any such phandle
|     inversion flag provided in the second cell of a GPIO handle must be
|     actively ignored, so we print a warning to contain the situation
|     and make things easy for the users.

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
