Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIQMs-0001kz-FQ
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 20:11:47 +0000
Date: Thu, 12 Apr 2012 22:11:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120412201141.GB3852@pengutronix.de>
References: <1334247624-24896-1-git-send-email-shc_work@mail.ru>
 <1334247624-24896-3-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334247624-24896-3-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 3/7] i.MX51: Add iomux definitions for SDHC3
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Apr 12, 2012 at 08:20:20PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/mach-imx/include/mach/iomux-mx51.h |   13 +++++++++++++

We should not hand-patch these files. It's much more convenient to keep
them in sync with the kernel. Please check the series I just sent out,
they (hopefully) contain the defines you need.

Sascha


>  1 files changed, 13 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/iomux-mx51.h b/arch/arm/mach-imx/include/mach/iomux-mx51.h
> index 872072e..bba9990 100644
> --- a/arch/arm/mach-imx/include/mach/iomux-mx51.h
> +++ b/arch/arm/mach-imx/include/mach/iomux-mx51.h
> @@ -150,24 +150,37 @@
>  
>  #define MX51_PAD_NANDF_CS7__NANDF_CS7			IOMUX_PAD(0x534, 0x14C, 0, 0x0, 0, NO_PAD_CTRL)
>  #define MX51_PAD_NANDF_CS7__FEC_TX_EN			IOMUX_PAD(0x534, 0x14C, 1, 0x0, 0, MX51_FEC_PAD_CTRL)
> +#define MX51_PAD_NANDF_CS7__SD3_CLK			IOMUX_PAD(0x534, 0x14C, 5, 0x0, 0, MX51_SDHCI_PAD_CTRL | PAD_CTL_HYS)
>  
>  #define MX51_PAD_NANDF_RDY_INT__NANDF_RDY_INT		IOMUX_PAD(0x538, 0x150, 0, 0x938, 0, NO_PAD_CTRL)
>  #define MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK		IOMUX_PAD(0x538, 0x150, 1, 0x974, 0, MX51_FEC_PAD_CTRL)
> +#define MX51_PAD_NANDF_RDY_INT__SD3_CMD			IOMUX_PAD(0x538, 0x150, 0x15, 0, 0, MX51_SDHCI_PAD_CTRL)
>  
>  #define MX51_PAD_NANDF_D15__NANDF_D15			IOMUX_PAD(0x53C, 0x154, 0, 0x0, 0, NO_PAD_CTRL)
> +#define MX51_PAD_NANDF_D15__SD3_DATA7			IOMUX_PAD(0x53C, 0x154, 5, 0x0, 0, MX51_SDHCI_PAD_CTRL)
> +
>  #define MX51_PAD_NANDF_D14__NANDF_D14			IOMUX_PAD(0x540, 0x158, 0, 0x0, 0, NO_PAD_CTRL)
> +#define MX51_PAD_NANDF_D14__SD3_DATA6			IOMUX_PAD(0x540, 0x158, 5, 0x0, 0, MX51_SDHCI_PAD_CTRL)
> +
>  #define MX51_PAD_NANDF_D13__NANDF_D13			IOMUX_PAD(0x544, 0x15C, 0, 0x0, 0, NO_PAD_CTRL)
> +#define MX51_PAD_NANDF_D13__SD3_DATA5			IOMUX_PAD(0x544, 0x15C, 5, 0x0, 0, MX51_SDHCI_PAD_CTRL)
> +
>  #define MX51_PAD_NANDF_D12__NANDF_D12			IOMUX_PAD(0x548, 0x160, 0, 0x0, 0, NO_PAD_CTRL)
> +#define MX51_PAD_NANDF_D12__SD3_DATA4			IOMUX_PAD(0x548, 0x160, 5, 0x0, 0, MX51_SDHCI_PAD_CTRL)
>  
>  #define MX51_PAD_NANDF_D11__NANDF_D11			IOMUX_PAD(0x54C, 0x164, 0, 0x0, 0, NO_PAD_CTRL)
>  #define MX51_PAD_NANDF_D11__FEC_RX_DV			IOMUX_PAD(0x54C, 0x164, 2, 0x96c, 0, MX51_FEC_PAD_CTRL)
> +#define MX51_PAD_NANDF_D11__SD3_DATA3			IOMUX_PAD(0x54C, 0x164, 5, 0x948, 1, MX51_SDHCI_PAD_CTRL)
>  
>  #define MX51_PAD_NANDF_D10__NANDF_D10			IOMUX_PAD(0x550, 0x168, 0, 0x0, 0, NO_PAD_CTRL)
> +#define MX51_PAD_NANDF_D10__SD3_DATA2			IOMUX_PAD(0x550, 0x168, 5, 0x944, 1, MX51_SDHCI_PAD_CTRL)
>  
>  #define MX51_PAD_NANDF_D9__NANDF_D9			IOMUX_PAD(0x554, 0x16C, 0, 0x0, 0, NO_PAD_CTRL)
> +#define MX51_PAD_NANDF_D9__SD3_DATA1			IOMUX_PAD(0x554, 0x16C, 5, 0x940, 1, MX51_SDHCI_PAD_CTRL)
>  
>  #define MX51_PAD_NANDF_D8__NANDF_D8			IOMUX_PAD(0x558, 0x170, 0, 0x0, 0, NO_PAD_CTRL)
>  #define MX51_PAD_NANDF_D8__FEC_TDATA0			IOMUX_PAD(0x558, 0x170, 2, 0x0, 0, MX51_FEC_PAD_CTRL)
> +#define MX51_PAD_NANDF_D8__SD3_DATA0			IOMUX_PAD(0x558, 0x170, 5, 0x93c, 1, MX51_SDHCI_PAD_CTRL)
>  
>  #define MX51_PAD_NANDF_D7__NANDF_D7			IOMUX_PAD(0x55C, 0x174, 0, 0x0, 0, NO_PAD_CTRL)
>  #define MX51_PAD_NANDF_D6__NANDF_D6			IOMUX_PAD(0x560, 0x178, 0, 0x0, 0, NO_PAD_CTRL)
> -- 
> 1.7.3.4
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
