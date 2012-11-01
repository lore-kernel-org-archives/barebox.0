Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTwkt-00016P-HD
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 15:32:28 +0000
Date: Thu, 1 Nov 2012 16:32:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121101153225.GX1641@pengutronix.de>
References: <1351679790-15305-1-git-send-email-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351679790-15305-1-git-send-email-uwe@kleine-koenig.org>
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
Subject: Re: [PATCH] iomux-imx35: add missing comma in pad definition
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Wed, Oct 31, 2012 at 11:36:30AM +0100, Uwe Kleine-K=F6nig wrote:
> The same issue was fixed in the Linux kernel in commit
> =

> 	66ddfc6 (mx35: add a missing comma in a pad definition)
> =

> for 2.6.33-rc7.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/include/mach/iomux-mx35.h |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/arch/arm/mach-imx/include/mach/iomux-mx35.h b/arch/arm/mach-=
imx/include/mach/iomux-mx35.h
> index ad7ff56..0d76e43 100644
> --- a/arch/arm/mach-imx/include/mach/iomux-mx35.h
> +++ b/arch/arm/mach-imx/include/mach/iomux-mx35.h
> @@ -671,7 +671,7 @@
>  #define MX35_PAD_LD8__SDMA_SDMA_DEBUG_PC_8			IOMUX_PAD(0x634, 0x1d0, 6, =
0x0,   0, NO_PAD_CTRL)
>  =

>  #define MX35_PAD_LD9__IPU_DISPB_DAT_9				IOMUX_PAD(0x638, 0x1d4, 0, 0x0,=
   0, NO_PAD_CTRL)
> -#define MX35_PAD_LD9__GPIO2_9					IOMUX_PAD(0x638, 0x1d4, 5, 0x8e4  0, N=
O_PAD_CTRL)
> +#define MX35_PAD_LD9__GPIO2_9					IOMUX_PAD(0x638, 0x1d4, 5, 0x8e4, 0, N=
O_PAD_CTRL)
>  #define MX35_PAD_LD9__SDMA_SDMA_DEBUG_PC_9			IOMUX_PAD(0x638, 0x1d4, 6, =
0x0,   0, NO_PAD_CTRL)
>  =

>  #define MX35_PAD_LD10__IPU_DISPB_DAT_10				IOMUX_PAD(0x63c, 0x1d8, 0, 0x=
0,   0, NO_PAD_CTRL)
> -- =

> 1.7.10.4
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
