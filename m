Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cprMT-0002SZ-LY
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 07:04:16 +0000
Date: Mon, 20 Mar 2017 08:03:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170320070352.blag4bpzoitkg6f7@pengutronix.de>
References: <20170317080853.11470-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170317080853.11470-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] ARM: mvebu: remove obsolete select
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Mar 17, 2017 at 09:08:53AM +0100, Ulrich =D6lmann wrote:
> This is a user choice now and has been removed for all other boards in co=
mmit
> 790980bf18af ("Make generic default environment type a use choice").
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  arch/arm/Kconfig | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 4d952698fc5c..c665eae30a2a 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -117,7 +117,6 @@ config ARCH_MVEBU
>  	select CLKDEV_LOOKUP
>  	select GPIOLIB
>  	select HAS_DEBUG_LL
> -	select HAVE_DEFAULT_ENVIRONMENT_NEW
>  	select HAVE_MACH_ARM_HEAD
>  	select HAVE_PBL_MULTI_IMAGES
>  	select HW_HAS_PCI
> -- =

> 2.11.0
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
