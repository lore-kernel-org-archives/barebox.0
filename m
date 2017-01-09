Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQXHB-0003PQ-2P
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 10:34:07 +0000
Date: Mon, 9 Jan 2017 11:33:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109103342.4433bletaovkoclj@pengutronix.de>
References: <20161216090249.24877-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161216090249.24877-1-u.kleine-koenig@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: mvebu: enable MMU in defconfig
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 16, 2016 at 10:02:49AM +0100, Uwe Kleine-K=F6nig wrote:
> Enabling the MMU (and so the caches) gives a nice performance boost, so
> opt in for mvebu_defconfig.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Applied, thanks

Sascha

>  arch/arm/configs/mvebu_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_de=
fconfig
> index 39e7ef1798f5..dab3d7a45e4c 100644
> --- a/arch/arm/configs/mvebu_defconfig
> +++ b/arch/arm/configs/mvebu_defconfig
> @@ -10,6 +10,7 @@ CONFIG_MACH_PLATHOME_OPENBLOCKS_A6=3Dy
>  CONFIG_MACH_USI_TOPKICK=3Dy
>  CONFIG_AEABI=3Dy
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
> +CONFIG_MMU=3Dy
>  CONFIG_TEXT_BASE=3D0x0
>  CONFIG_MALLOC_SIZE=3D0x0
>  CONFIG_MALLOC_TLSF=3Dy
> -- =

> 2.10.2
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
