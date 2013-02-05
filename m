Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2eXd-0004H1-GD
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 09:10:14 +0000
Date: Tue, 5 Feb 2013 10:10:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130205091011.GQ1906@pengutronix.de>
References: <1359998781-31956-1-git-send-email-m.grzeschik@pengutronix.de>
 <1359998781-31956-2-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359998781-31956-2-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH 1/3] mxs: ssp move to common register layout
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org


The commit log looks a bit sparse. Subject should include

"ARM mxs:"

Also, why are you doing this? (The next patch makes this clear, but this
one should contain an explanation)

On Mon, Feb 04, 2013 at 06:26:19PM +0100, Michael Grzeschik wrote:
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  arch/arm/mach-mxs/include/mach/imx23-regs.h |   16 ++++
>  arch/arm/mach-mxs/include/mach/imx28-regs.h |   21 +++++
>  arch/arm/mach-mxs/include/mach/ssp.h        |   77 +++++++++++++++++
>  drivers/mci/mxs.c                           |  118 +--------------------------
>  4 files changed, 115 insertions(+), 117 deletions(-)
>  create mode 100644 arch/arm/mach-mxs/include/mach/ssp.h
> 
> diff --git a/arch/arm/mach-mxs/include/mach/imx23-regs.h b/arch/arm/mach-mxs/include/mach/imx23-regs.h
> index 7fb664b..9e8e86c 100644
> --- a/arch/arm/mach-mxs/include/mach/imx23-regs.h
> +++ b/arch/arm/mach-mxs/include/mach/imx23-regs.h
> @@ -36,4 +36,20 @@
>  #define IMX_DIGCTL_BASE		0x8001c000
>  #define IMX_USB_BASE		0x80080000
>  
> +#define HW_SSP_CTRL0		0x000
> +#define HW_SSP_CMD0		0x010
> +#define HW_SSP_CMD1		0x020
> +#define HW_SSP_COMPREF		0x030
> +#define HW_SSP_COMPMASK		0x040
> +#define HW_SSP_TIMING		0x050
> +#define HW_SSP_CTRL1		0x060
> +#define HW_SSP_DATA		0x070
> +#define HW_SSP_SDRESP0		0x080
> +#define HW_SSP_SDRESP1		0x090
> +#define HW_SSP_SDRESP2		0x0A0
> +#define HW_SSP_SDRESP3		0x0B0
> +#define HW_SSP_STATUS		0x0C0
> +#define HW_SSP_DEBUG		0x100
> +#define HW_SSP_VERSION		0x110
> +
>  #endif /* __ASM_ARCH_MX23_REGS_H */
> diff --git a/arch/arm/mach-mxs/include/mach/imx28-regs.h b/arch/arm/mach-mxs/include/mach/imx28-regs.h
> index fa8edd7..bbe1848 100644
> --- a/arch/arm/mach-mxs/include/mach/imx28-regs.h
> +++ b/arch/arm/mach-mxs/include/mach/imx28-regs.h
> @@ -45,4 +45,25 @@
>  #define IMX_FEC0_BASE		0x800F0000
>  #define IMX_FEC1_BASE		0x800F4000
>  
> +#define HW_SSP_CTRL0		0x000
> +#define HW_SSP_CMD0		0x010
> +#define HW_SSP_CMD1		0x020
> +#define HW_SSP_XFER_COUNT	0x030
> +#define HW_SSP_BLOCK_SIZE	0x040
> +#define HW_SSP_COMPREF		0x050
> +#define HW_SSP_COMPMASK		0x060
> +#define HW_SSP_TIMING		0x070
> +#define HW_SSP_CTRL1		0x080
> +#define HW_SSP_DATA		0x090
> +#define HW_SSP_SDRESP0		0x0A0
> +#define HW_SSP_SDRESP1		0x0B0
> +#define HW_SSP_SDRESP2		0x0C0
> +#define HW_SSP_SDRESP3		0x0D0
> +#define HW_SSP_DDR_CTRL		0x0E0
> +#define HW_SSP_DLL_CTRL		0x0F0
> +#define HW_SSP_STATUS		0x100
> +#define HW_SSP_DLL_STS		0x110
> +#define HW_SSP_DEBUG		0x120
> +#define HW_SSP_VERSION		0x130

I prefer having these in mach/ssp.h. include files should not have
conflicting defines. Ideally some code working on i.MX23 and i.MX28
should be able to include both files without errors.

In an even better world there wouldn't be #ifdefs in include files
at all, but ok, there must remain something to improve for the future...

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
