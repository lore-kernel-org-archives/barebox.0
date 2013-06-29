Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsrIC-0006JX-Lx
 for barebox@lists.infradead.org; Sat, 29 Jun 2013 09:18:05 +0000
Date: Sat, 29 Jun 2013 11:17:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130629091741.GP516@pengutronix.de>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372443947-12599-7-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372443947-12599-7-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 6/6] ARM: mvebu: import DT files for Dove SoC and
 SolidRun CuBox
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Fri, Jun 28, 2013 at 08:25:47PM +0200, Sebastian Hesselbarth wrote:
> This imports dove.dtsi and dove-cubox.dts from Linux kernel with timer
> node added.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> Cc: barebox@lists.infradead.org
> ---
>  arch/arm/dts/dove-cubox.dts |  154 +++++++++++++++++++++++
>  arch/arm/dts/dove.dtsi      |  285 +++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 439 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/dts/dove-cubox.dts
>  create mode 100644 arch/arm/dts/dove.dtsi
> 
> diff --git a/arch/arm/dts/dove-cubox.dts b/arch/arm/dts/dove-cubox.dts
> new file mode 100644
> index 0000000..b7dc243
> --- /dev/null
> +++ b/arch/arm/dts/dove-cubox.dts
> @@ -0,0 +1,154 @@
> +/dts-v1/;
> +
> +/include/ "dove.dtsi"
> +
> +/ {
> +	compatible = "solidrun,cubox", "marvell,dove";
> +	model = "SolidRun CuBox";
> +
> +	memory {
> +		device_type = "memory";
> +		reg = <0x00000000 0x3f000000>;
> +	};
> +
> +	chosen {
> +		bootargs = "console=ttyS0,115200n8 earlyprintk";
> +	};

I would add a linux,stdoutpath property here. Then you can switch to
CONFIG_CONSOLE_ACTIVATE_NONE in the defconfig and enable multiple uarts
in the dts without risking that the first one to be activated is not the
console port.

> +
> +&sdio0 {
> +	status = "okay";
> +        bus-width = <4>;

Use tab here.

> +		};
> +		
> +		lcd0: lcd-controller@820000 {
> +			compatible = "marvell,dove-lcd";
> +			reg = <0x820000 0x200>;
> +			interrupts = <47>;
> +			clocks = <0>;
> +			status = "disabled";
> +		};
> +		

Trailing whitespaces.

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
