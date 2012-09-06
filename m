Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9YlH-0000fw-FU
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 09:52:37 +0000
Date: Thu, 6 Sep 2012 11:52:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120906095232.GQ26594@pengutronix.de>
References: <1346503513-23046-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346503513-23046-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Calao boards: enable the pbl
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 01, 2012 at 02:45:12PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we are smaller than the 256KiB reserved for barebox
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  arch/arm/configs/qil_a9260_128mib_defconfig |    1 +
>  arch/arm/configs/qil_a9260_defconfig        |    1 +
>  arch/arm/configs/tny_a9260_defconfig        |    1 +
>  arch/arm/configs/tny_a9263_defconfig        |    1 +
>  arch/arm/configs/tny_a9g20_defconfig        |    1 +
>  arch/arm/configs/usb_a9260_defconfig        |    1 +
>  arch/arm/configs/usb_a9263_128mib_defconfig |    1 +
>  arch/arm/configs/usb_a9263_defconfig        |    1 +
>  arch/arm/configs/usb_a9g20_128mib_defconfig |    1 +
>  arch/arm/configs/usb_a9g20_defconfig        |    1 +
>  10 files changed, 10 insertions(+)
> 
> diff --git a/arch/arm/configs/qil_a9260_128mib_defconfig b/arch/arm/configs/qil_a9260_128mib_defconfig
> index 555d94f..cc2c6ac 100644
> --- a/arch/arm/configs/qil_a9260_128mib_defconfig
> +++ b/arch/arm/configs/qil_a9260_128mib_defconfig
> @@ -5,6 +5,7 @@ CONFIG_CALAO_MB_QIL_A9260=y
>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PBL_IMAGE=y
>  CONFIG_MMU=y
>  CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
>  CONFIG_EXPERIMENTAL=y
> diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
> index 9e54a14..225f785 100644
> --- a/arch/arm/configs/qil_a9260_defconfig
> +++ b/arch/arm/configs/qil_a9260_defconfig
> @@ -4,6 +4,7 @@ CONFIG_CALAO_MB_QIL_A9260=y
>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PBL_IMAGE=y
>  CONFIG_MMU=y
>  CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
>  CONFIG_EXPERIMENTAL=y
> diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
> index 83293fb..e525966 100644
> --- a/arch/arm/configs/tny_a9260_defconfig
> +++ b/arch/arm/configs/tny_a9260_defconfig
> @@ -4,6 +4,7 @@ CONFIG_CALAO_MOB_TNY_MD2=y
>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PBL_IMAGE=y
>  CONFIG_MMU=y
>  CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
>  CONFIG_EXPERIMENTAL=y
> diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
> index dd68ba4..0a83b05 100644
> --- a/arch/arm/configs/tny_a9263_defconfig
> +++ b/arch/arm/configs/tny_a9263_defconfig
> @@ -4,6 +4,7 @@ CONFIG_CALAO_MOB_TNY_MD2=y
>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PBL_IMAGE=y
>  CONFIG_MMU=y
>  CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
>  CONFIG_EXPERIMENTAL=y
> diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
> index 62250cb..8d606d1 100644
> --- a/arch/arm/configs/tny_a9g20_defconfig
> +++ b/arch/arm/configs/tny_a9g20_defconfig
> @@ -4,6 +4,7 @@ CONFIG_CALAO_MOB_TNY_MD2=y
>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PBL_IMAGE=y
>  CONFIG_MMU=y
>  CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
>  CONFIG_EXPERIMENTAL=y
> diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
> index a9574c4..8fd2a18 100644
> --- a/arch/arm/configs/usb_a9260_defconfig
> +++ b/arch/arm/configs/usb_a9260_defconfig
> @@ -3,6 +3,7 @@ CONFIG_MACH_USB_A9260=y
>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PBL_IMAGE=y
>  CONFIG_MMU=y
>  CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
>  CONFIG_EXPERIMENTAL=y
> diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
> index d31057f..efd68a8 100644
> --- a/arch/arm/configs/usb_a9263_128mib_defconfig
> +++ b/arch/arm/configs/usb_a9263_128mib_defconfig
> @@ -4,6 +4,7 @@ CONFIG_AT91_HAVE_SRAM_128M=y
>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PBL_IMAGE=y
>  CONFIG_MMU=y
>  CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
>  CONFIG_EXPERIMENTAL=y
> diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
> index b57c300..9706d65 100644
> --- a/arch/arm/configs/usb_a9263_defconfig
> +++ b/arch/arm/configs/usb_a9263_defconfig
> @@ -3,6 +3,7 @@ CONFIG_MACH_USB_A9263=y
>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PBL_IMAGE=y
>  CONFIG_MMU=y
>  CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
>  CONFIG_EXPERIMENTAL=y
> diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
> index 6b02342..026cbcc 100644
> --- a/arch/arm/configs/usb_a9g20_128mib_defconfig
> +++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
> @@ -4,6 +4,7 @@ CONFIG_AT91_HAVE_SRAM_128M=y
>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PBL_IMAGE=y
>  CONFIG_MMU=y
>  CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
>  CONFIG_EXPERIMENTAL=y
> diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
> index 30bf380..f32593f 100644
> --- a/arch/arm/configs/usb_a9g20_defconfig
> +++ b/arch/arm/configs/usb_a9g20_defconfig
> @@ -3,6 +3,7 @@ CONFIG_MACH_USB_A9G20=y
>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PBL_IMAGE=y
>  CONFIG_MMU=y
>  CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
>  CONFIG_EXPERIMENTAL=y
> -- 
> 1.7.10.4
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
