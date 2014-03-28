Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTTUK-0007R7-7I
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 09:54:12 +0000
Date: Fri, 28 Mar 2014 10:53:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140328095349.GH17250@pengutronix.de>
References: <20140328133144.83922cc5506a8d980d2cbd14@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140328133144.83922cc5506a8d980d2cbd14@gmail.com>
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
Subject: Re: tegra: clk_fixed_factor
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 28, 2014 at 01:31:44PM +0400, Antony Pavlov wrote:
> Hi!
> =

> This latest commit in next breaks tegra build
> =

>   Author: Sascha Hauer <s.hauer@pengutronix.de>
>   Date:   Thu Mar 13 09:41:28 2014 +0100
> =

>       clk: clk-fixed-factor: pass flags to initializers
>      =

>       Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> =

> I can't check this trivial fix properly by myself as my tegra board is co=
nserved:

Thanks for noting. I have just squashed it into the commit breaking it
(Not puseh yet)

Sascha

> =

> --- a/drivers/clk/tegra/clk-tegra20.c
> +++ b/drivers/clk/tegra/clk-tegra20.c
> @@ -62,7 +62,7 @@ static void tegra20_osc_clk_init(void)
>         clks[clk_32k] =3D clk_fixed("clk_32k", 32768);
>  =

>         clks[pll_ref] =3D clk_fixed_factor("pll_ref", "clk_m", 1,
> -                                        get_pll_ref_div());
> +                                        get_pll_ref_div(), 0);
>  }
> =

> --=A0
> Best regards,
> =A0 Antony Pavlov
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
