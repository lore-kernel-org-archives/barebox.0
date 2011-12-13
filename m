Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaOuJ-0001RC-FZ
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 09:44:20 +0000
Date: Tue, 13 Dec 2011 10:44:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111213094414.GE27267@pengutronix.de>
References: <1323724779-370-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323724779-370-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/6] i.MX25: fix LD16 & LD17 iomux
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 12, 2011 at 10:19:34PM +0100, Eric B=E9nard wrote:
> without this, the pins seems to be opendrain and thus the LCD signals
> are not properly driven leading to wrong colors on the screen.

I applied all patches except the one I commented on to master.

Sascha

> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/mach-imx/include/mach/iomux-mx25.h |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/arch/arm/mach-imx/include/mach/iomux-mx25.h b/arch/arm/mach-=
imx/include/mach/iomux-mx25.h
> index ae29323..58761b5 100644
> --- a/arch/arm/mach-imx/include/mach/iomux-mx25.h
> +++ b/arch/arm/mach-imx/include/mach/iomux-mx25.h
> @@ -473,14 +473,14 @@
>  #define MX25_PAD_GPIO_C__CAN2_TX	IOMUX_PAD(0x3f8, 0x1fc, 0x16, 0, 0, PAD=
_CTL_PUS_22K_UP)
>  =

>  #define MX25_PAD_GPIO_D__GPIO_D		IOMUX_PAD(0x3fc, 0x200, 0x00, 0, 0, NO_=
PAD_CTRL)
> -#define MX25_PAD_GPIO_E__LD16		IOMUX_PAD(0x400, 0x204, 0x02, 0, 0, NO_PA=
D_CTRL)
>  #define MX25_PAD_GPIO_D__CAN2_RX	IOMUX_PAD(0x3fc, 0x200, 0x16, 0x484, 1,=
 PAD_CTL_PUS_22K_UP)
>  =

>  #define MX25_PAD_GPIO_E__GPIO_E		IOMUX_PAD(0x400, 0x204, 0x00, 0, 0, NO_=
PAD_CTRL)
> -#define MX25_PAD_GPIO_F__LD17		IOMUX_PAD(0x404, 0x208, 0x02, 0, 0, NO_PA=
D_CTRL)
> +#define MX25_PAD_GPIO_E__LD16		IOMUX_PAD(0x400, 0x204, 0x02, 0, 0, PAD_C=
TL_PUS_100K_UP)
>  #define MX25_PAD_GPIO_E__AUD7_TXD	IOMUX_PAD(0x400, 0x204, 0x04, 0, 0, NO=
_PAD_CTRL)
>  =

>  #define MX25_PAD_GPIO_F__GPIO_F		IOMUX_PAD(0x404, 0x208, 0x00, 0, 0, NO_=
PAD_CTRL)
> +#define MX25_PAD_GPIO_F__LD17		IOMUX_PAD(0x404, 0x208, 0x02, 0, 0, PAD_C=
TL_PUS_100K_UP)
>  #define MX25_PAD_GPIO_F__AUD7_TXC	IOMUX_PAD(0x404, 0x208, 0x04, 0, 0, NO=
_PAD_CTRL)
>  =

>  #define MX25_PAD_EXT_ARMCLK__EXT_ARMCLK	IOMUX_PAD(0x000, 0x20c, 0x00, 0,=
 0, NO_PAD_CTRL)
> -- =

> 1.7.6.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
