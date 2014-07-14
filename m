Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X6abi-0004zs-2y
 for barebox@lists.infradead.org; Mon, 14 Jul 2014 07:23:32 +0000
Date: Mon, 14 Jul 2014 09:23:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140714072307.GV23235@pengutronix.de>
References: <1405112170-29606-1-git-send-email-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1405112170-29606-1-git-send-email-rockford@yandex.ru>
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
Subject: Re: [PATCH v2] ARM: i.MX6Q: Add support for Embedsky E9 board.
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org


Hi Andrey,

Some comments inline, nothing huge. Most of the patch looks fine.

On Sat, Jul 12, 2014 at 12:56:10AM +0400, Andrey Panov wrote:
> This will add support for Embedsky E9 board.
> It is a small board based on i.MX6 Quad with 2G of RAM.
> 
> http://en.embedsky.com/product_info.php?cateid=169&id=169
> 
> Signed-off-by: Andrey Panov <rockford@yandex.ru>
> ---
> diff --git a/arch/arm/boards/embedsky-e9/env/config-board b/arch/arm/boards/embedsky-e9/env/config-board
> new file mode 100644
> index 0000000..ee0472a
> --- /dev/null
> +++ b/arch/arm/boards/embedsky-e9/env/config-board
> @@ -0,0 +1,6 @@
> +#!/bin/sh
> +
> +# board defaults, do not change in running system. Change /env/config
> +# instead
> +
> +global.linux.bootargs.base="earlyprintk loglevel=10 panic=10 rootwait root=/dev/mmcblk0p2"

You shouldn't add earlyprintk to the default bootargs. earlyprintk
only works when the Kernel is compiled exactly for your board which
is not the case for many standard config Kernels. When your kernel
doesn't boot you don't want to find earlyprintk being the culprit ;)

The "root=/dev/mmcblk0p2" parameter should be in a /env/boot/flash (or
similar) file. Putting it into the base bootargs means that network
boot won't work properly anymore.

> diff --git a/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg b/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
> +wm 32 0x021b001c 0x09408030
> +wm 32 0x021b001c 0x04008040
> +wm 32 0x021b0020 0x00005800
> +wm 32 0x021b0818 0x00011117
> +wm 32 0x021b4818 0x00011117
> +wm 32 0x021b0004 0x00025576
> +wm 32 0x021b0404 0x00011006
> +wm 32 0x021b001c 0x00000000
> +
> +wm 32 0x021b0404 0x00011006
> +
> +/* set the default clock gate to save power */
> +wm 32 0x020c4068 0x00C03F3F
> +wm 32 0x020c406c 0x0030FC03
> +wm 32 0x020c4070 0x0FFFC000
> +wm 32 0x020c4074 0x3FF00000
> +wm 32 0x020c4078 0x00FFF300
> +wm 32 0x020c407c 0x0F0000C3
> +wm 32 0x020c4080 0x000003FF

Please remove these. The ROM Code first evaluates the DCD list and
loads the rest of the image from the Boot medium afterwards. If you
happen to disable the Clocks for the Boot medium above your board won't
boot anymore. Finding this can take some time. Besides, the i.MX6 clock
driver reenables all clocks anyway during initialisation to have
the clocks in a known state.

> diff --git a/arch/arm/configs/embedsky-e9_defconfig b/arch/arm/configs/embedsky-e9_defconfig
> new file mode 100644
> index 0000000..96fb176
> --- /dev/null
> +++ b/arch/arm/configs/embedsky-e9_defconfig
> @@ -0,0 +1,94 @@
> +CONFIG_MMU=y
> +CONFIG_MALLOC_SIZE=0x4000000
> +CONFIG_BROKEN=y
> +CONFIG_EXPERIMENTAL=y
> +CONFIG_MALLOC_TLSF=y
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +CONFIG_MENU=y
> +CONFIG_CONSOLE_ACTIVATE_ALL=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/embedsky-e9/env"

Rather than adding your own defconfig file please add your board to the
existing imx_v7_defconfig. For your environment move the
arch/arm/boards/embedsky-e9/env directory to a name specific for your
board, maybe arch/arm/boards/embedsky-e9/defaultenv-e9. Then add this
directory to the build system with: bbenv-y += defaultenv-e9. In the
board startup code then add:

defaultenv_append_directory(defaultenv_e9).

See arch/arm/boards/phytec-phycore-am335x/ for an example.

> +
> +/ {
> +	model = "Embedsky E9";
> +	compatible = "embedsky,e9", "fsl,imx6q";
> +
> +	memory {
> +		reg = <0x10000000 0x80000000>;
> +	};

Specifying the amount of memory here is not necessary. barebox will
read back the SDRAM controller configuration and fill in the correct
here. This makes sure you have the correct amount of SDRAM in the
devicetree, even if you have different board versions.

> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rgmii";
> +//	local-mac-address = [00 04 9F 01 1B B8];

Please remove this and other commented lines. from the devicetree.

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
