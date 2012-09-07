Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9txG-0006tw-O1
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 08:30:23 +0000
Date: Fri, 7 Sep 2012 10:30:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120907083020.GO24458@pengutronix.de>
References: <1346960371-4129-1-git-send-email-eric@eukrea.com>
 <1346960371-4129-2-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346960371-4129-2-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 2/3] i.MX51: unbreak FEC iomux
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Thu, Sep 06, 2012 at 09:39:30PM +0200, Eric B=E9nard wrote:
> in commit 2bdc9f57a86dff41cfc1f87b644a2e53fdcce2b6 the iomux was synced
> with the kernel but this leads to some changes in the PAD_CTRL of some
> FEC pins leading to a non working FEC on our cpuimx51 board.
> =

> This patch set back the PAD_CTRL of the missing pins to the initial
> value.

I normally say that I want to keep the iomux files in sync with the
kernel which means send it for inclusion to the kernel first.

Anyway, the days of these files in the kernel seem to be counted, they
will go away pretty soon I guess.

So I applied this one.

Sascha

> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/mach-imx/include/mach/iomux-mx51.h |   14 +++++++-------
>  1 files changed, 7 insertions(+), 7 deletions(-)
> =

> diff --git a/arch/arm/mach-imx/include/mach/iomux-mx51.h b/arch/arm/mach-=
imx/include/mach/iomux-mx51.h
> index 36c8989..0252d41 100644
> --- a/arch/arm/mach-imx/include/mach/iomux-mx51.h
> +++ b/arch/arm/mach-imx/include/mach/iomux-mx51.h
> @@ -649,20 +649,20 @@
>  #define MX51_PAD_DI2_PIN2__DI2_PIN2		IOMUX_PAD(0x74c, 0x344, 0, __NA_, 0=
, NO_PAD_CTRL)
>  #define MX51_PAD_DI2_PIN2__FEC_MDC		IOMUX_PAD(0x74c, 0x344, 2, __NA_, 0,=
 MX51_PAD_CTRL_5)
>  #define MX51_PAD_DI2_PIN3__DI2_PIN3		IOMUX_PAD(0x750, 0x348, 0, __NA_, 0=
, NO_PAD_CTRL)
> -#define MX51_PAD_DI2_PIN3__FEC_MDIO		IOMUX_PAD(0x750, 0x348, 2, 0x954, 1=
, NO_PAD_CTRL)
> +#define MX51_PAD_DI2_PIN3__FEC_MDIO		IOMUX_PAD(0x750, 0x348, 2, 0x954, 1=
, MX51_PAD_CTRL_5)
>  #define MX51_PAD_DI2_DISP_CLK__DI2_DISP_CLK	IOMUX_PAD(0x754, 0x34c, 0, _=
_NA_, 0, NO_PAD_CTRL)
>  #define MX51_PAD_DI2_DISP_CLK__FEC_RDATA1	IOMUX_PAD(0x754, 0x34c, 2, 0x9=
5c, 1, NO_PAD_CTRL)
>  #define MX51_PAD_DI_GP4__DI2_PIN15		IOMUX_PAD(0x758, 0x350, 4, __NA_, 0,=
 NO_PAD_CTRL)
>  #define MX51_PAD_DI_GP4__DISP1_SER_DIN		IOMUX_PAD(0x758, 0x350, 0, 0x9c0=
, 1, NO_PAD_CTRL)
>  #define MX51_PAD_DI_GP4__DISP2_PIN1		IOMUX_PAD(0x758, 0x350, 3, __NA_, 0=
, NO_PAD_CTRL)
> -#define MX51_PAD_DI_GP4__FEC_RDATA2		IOMUX_PAD(0x758, 0x350, 2, 0x960, 1=
, NO_PAD_CTRL)
> +#define MX51_PAD_DI_GP4__FEC_RDATA2		IOMUX_PAD(0x758, 0x350, 2, 0x960, 1=
, MX51_PAD_CTRL_5)
>  #define MX51_PAD_DISP2_DAT0__DISP2_DAT0		IOMUX_PAD(0x75c, 0x354, 0, __NA=
_, 0, NO_PAD_CTRL)
> -#define MX51_PAD_DISP2_DAT0__FEC_RDATA3		IOMUX_PAD(0x75c, 0x354, 2, 0x96=
4, 1, NO_PAD_CTRL)
> +#define MX51_PAD_DISP2_DAT0__FEC_RDATA3		IOMUX_PAD(0x75c, 0x354, 2, 0x96=
4, 1, MX51_PAD_CTRL_5)
>  #define MX51_PAD_DISP2_DAT0__KEY_COL6		IOMUX_PAD(0x75c, 0x354, 4, 0x9c8,=
 1, NO_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT0__UART3_RXD		IOMUX_PAD(0x75c, 0x354, 5, 0x9f4=
, 8, MX51_UART_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT0__USBH3_CLK		IOMUX_PAD(0x75c, 0x354, 3, 0x9f8=
, 1, MX51_UART_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT1__DISP2_DAT1		IOMUX_PAD(0x760, 0x358, 0, __NA=
_, 0, NO_PAD_CTRL)
> -#define MX51_PAD_DISP2_DAT1__FEC_RX_ER		IOMUX_PAD(0x760, 0x358, 2, 0x970=
, 1, NO_PAD_CTRL)
> +#define MX51_PAD_DISP2_DAT1__FEC_RX_ER		IOMUX_PAD(0x760, 0x358, 2, 0x970=
, 1, MX51_PAD_CTRL_5)
>  #define MX51_PAD_DISP2_DAT1__KEY_COL7		IOMUX_PAD(0x760, 0x358, 4, 0x9cc,=
 1, NO_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT1__UART3_TXD		IOMUX_PAD(0x760, 0x358, 5, __NA_=
, 0, MX51_UART_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT1__USBH3_DIR		IOMUX_PAD(0x760, 0x358, 3, 0xa1c=
, 1, NO_PAD_CTRL)
> @@ -692,17 +692,17 @@
>  #define MX51_PAD_DISP2_DAT9__USBH3_DATA1	IOMUX_PAD(0x780, 0x378, 3, 0xa0=
0, 1, NO_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT10__DISP2_DAT10	IOMUX_PAD(0x784, 0x37c, 0, __N=
A_, 0, NO_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT10__DISP2_SER_CS	IOMUX_PAD(0x784, 0x37c, 5, __=
NA_, 0, NO_PAD_CTRL)
> -#define MX51_PAD_DISP2_DAT10__FEC_COL		IOMUX_PAD(0x784, 0x37c, 2, 0x94c,=
 1, NO_PAD_CTRL)
> +#define MX51_PAD_DISP2_DAT10__FEC_COL		IOMUX_PAD(0x784, 0x37c, 2, 0x94c,=
 1, MX51_PAD_CTRL_5)
>  #define MX51_PAD_DISP2_DAT10__KEY_ROW7		IOMUX_PAD(0x784, 0x37c, 4, 0x9dc=
, 1, NO_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT10__USBH3_DATA2	IOMUX_PAD(0x784, 0x37c, 3, 0xa=
04, 1, NO_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT11__AUD6_TXD		IOMUX_PAD(0x788, 0x380, 4, 0x8f0=
, 1, NO_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT11__DISP2_DAT11	IOMUX_PAD(0x788, 0x380, 0, __N=
A_, 0, NO_PAD_CTRL)
> -#define MX51_PAD_DISP2_DAT11__FEC_RX_CLK	IOMUX_PAD(0x788, 0x380, 2, 0x96=
8, 1, NO_PAD_CTRL)
> +#define MX51_PAD_DISP2_DAT11__FEC_RX_CLK	IOMUX_PAD(0x788, 0x380, 2, 0x96=
8, 1, MX51_PAD_CTRL_5)
>  #define MX51_PAD_DISP2_DAT11__GPIO1_10		IOMUX_PAD(0x788, 0x380, 7, __NA_=
, 0, MX51_GPIO_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT11__USBH3_DATA3	IOMUX_PAD(0x788, 0x380, 3, 0xa=
08, 1, NO_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT12__AUD6_RXD		IOMUX_PAD(0x78c, 0x384, 4, 0x8ec=
, 1, NO_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT12__DISP2_DAT12	IOMUX_PAD(0x78c, 0x384, 0, __N=
A_, 0, NO_PAD_CTRL)
> -#define MX51_PAD_DISP2_DAT12__FEC_RX_DV		IOMUX_PAD(0x78c, 0x384, 2, 0x96=
c, 1, NO_PAD_CTRL)
> +#define MX51_PAD_DISP2_DAT12__FEC_RX_DV		IOMUX_PAD(0x78c, 0x384, 2, 0x96=
c, 1, MX51_PAD_CTRL_5)
>  #define MX51_PAD_DISP2_DAT12__USBH3_DATA4	IOMUX_PAD(0x78c, 0x384, 3, 0xa=
0c, 1, NO_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT13__AUD6_TXC		IOMUX_PAD(0x790, 0x388, 4, 0x8fc=
, 1, NO_PAD_CTRL)
>  #define MX51_PAD_DISP2_DAT13__DISP2_DAT13	IOMUX_PAD(0x790, 0x388, 0, __N=
A_, 0, NO_PAD_CTRL)
> -- =

> 1.7.7.6
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
