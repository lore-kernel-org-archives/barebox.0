Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TPr4f-0004te-Qa
 for barebox@lists.infradead.org; Sun, 21 Oct 2012 08:39:58 +0000
Date: Sun, 21 Oct 2012 10:39:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121021083956.GA27665@pengutronix.de>
References: <1350560130-21431-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350560130-21431-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH] ARM OMAP: Enable gpio output
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 18, 2012 at 01:35:30PM +0200, Teresa G=E1mez wrote:
> Enable output instead of disabling it.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-omap/omap4_generic.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> =

> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap=
4_generic.c
> index 76134f2..d7771bf 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -532,7 +532,7 @@ noinline int omap4_scale_vcores(unsigned vsel0_pin)
>  		writel(val, base + 0x190);
>  =

>  		val =3D  readl(base + 0x134);
> -		val &=3D (1 << (vsel0_pin & GPIO_MASK));
> +		val &=3D ~(1 << (vsel0_pin & GPIO_MASK));
>  		writel(val, base + 0x134);
>  =

>  		val =3D 1 << (vsel0_pin & GPIO_MASK);
> -- =

> 1.7.0.4
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
