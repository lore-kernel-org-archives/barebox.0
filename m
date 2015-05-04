Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpAak-0000QV-Kr
 for barebox@lists.infradead.org; Mon, 04 May 2015 07:15:03 +0000
Date: Mon, 4 May 2015 09:14:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150504071439.GL6325@pengutronix.de>
References: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [RFC, PATCH] i.MX: Add provisions to boot from IRAM
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

This series contains very nice cleanups. It needs some polishing, but
the patches are very welcomed.

On Sat, May 02, 2015 at 07:26:12PM -0700, Andrey Smirnov wrote:
> This commit add a very basic code to allow Barebox to be booted from
> IRAM. Given that the amount of IRAM on most i.MX variants is
> insufficient to contain a copy of Barebox with any reasonable degree
> of functionality this code uses IRAM only as a temporary location and
> eventually bootstraps from DRAM. But the presense of the intermediate
> IRAM-only stage allows to add provisions to test the area of DRAM that
> Barebox would be using to facilitate various testing scenarious.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/freescale-mx51-babbage/Makefile    |  3 ++
>  .../flash-header-imx51-babbage-xload.imxcfg        | 59 ++++++++++++++++++++++
>  arch/arm/boards/freescale-mx51-babbage/lowlevel.c  | 25 +++++++++
>  arch/arm/configs/imx_v7-xload_defconfig            | 46 +++++++++++++++++
>  arch/arm/mach-imx/Kconfig                          | 15 ++++++
>  arch/arm/mach-imx/Makefile                         |  1 +
>  arch/arm/mach-imx/xload.c                          | 54 ++++++++++++++++++++
>  images/Makefile.imx                                | 20 +++++++-
>  8 files changed, 222 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage-xload.imxcfg
>  create mode 100644 arch/arm/configs/imx_v7-xload_defconfig
>  create mode 100644 arch/arm/mach-imx/xload.c
> 
> diff --git a/arch/arm/boards/freescale-mx51-babbage/Makefile b/arch/arm/boards/freescale-mx51-babbage/Makefile
> index 6252c88..31b8fcd 100644
> --- a/arch/arm/boards/freescale-mx51-babbage/Makefile
> +++ b/arch/arm/boards/freescale-mx51-babbage/Makefile
> @@ -1,3 +1,6 @@
>  obj-y += board.o flash-header-imx51-babbage.dcd.o
>  extra-y += flash-header-imx51-babbage.dcd.S flash-header-imx51-babbage.dcd
>  lwl-y += lowlevel.o
> +
> +obj-$(CONFIG_ARCH_IMX_XLOAD) += flash-header-imx51-babbage-xload.dcd.o
> +extra-$(CONFIG_ARCH_IMX_XLOAD) += flash-header-imx51-babbage-xload.dcd.S flash-header-imx51-babbage-xload.dcd
> diff --git a/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage-xload.imxcfg b/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage-xload.imxcfg
> new file mode 100644
> index 0000000..a04ac75
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage-xload.imxcfg
> @@ -0,0 +1,59 @@
> +loadaddr CONFIG_ARCH_IMX_UNUSED_IRAM_BASE
> +soc imx51
> +dcdofs 0x400
> +wm 32 0x73fa88a0 0x00000200

Can't this and the rest of this file shared with the regular imxcfg
file?

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
