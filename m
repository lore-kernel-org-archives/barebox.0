Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV4gs-00013L-RU
 for barebox@lists.infradead.org; Thu, 17 May 2012 17:40:43 +0000
Date: Thu, 17 May 2012 19:40:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120517174040.GE30400@pengutronix.de>
References: <1337269578-20570-1-git-send-email-eric@eukrea.com>
 <1337269578-20570-11-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337269578-20570-11-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 11/16] iim: don't try to set ethaddr when NET is not
 selected
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, May 17, 2012 at 05:46:13PM +0200, Eric B=E9nard wrote:
> an otther way to solve this would be to put the #ifdef CONFIG_NET
> around xxx__iim_register_fec_ethaddr in the board support but that's
> less generic.

Maybe better to provide a static inline function for
eth_register_ethaddr if !CONFIG_NET?

Sascha

> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/mach-imx/include/mach/iim.h |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)
> =

> diff --git a/arch/arm/mach-imx/include/mach/iim.h b/arch/arm/mach-imx/inc=
lude/mach/iim.h
> index b97c742..61d68e3 100644
> --- a/arch/arm/mach-imx/include/mach/iim.h
> +++ b/arch/arm/mach-imx/include/mach/iim.h
> @@ -66,7 +66,9 @@ static inline int imx51_iim_register_fec_ethaddr(void)
>  	if (ret !=3D 6)
>  		return -EINVAL;
>  =

> +#ifdef CONFIG_NET
>  	eth_register_ethaddr(0, buf);
> +#endif
>  =

>  	return 0;
>  }
> @@ -85,7 +87,9 @@ static inline int imx25_iim_register_fec_ethaddr(void)
>  	if (ret !=3D 6)
>  		return -EINVAL;
>  =

> +#ifdef CONFIG_NET
>  	eth_register_ethaddr(0, buf);
> +#endif
>  =

>  	return 0;
>  }
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
