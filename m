Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ceGJi-0000kU-2W
 for barebox@lists.infradead.org; Thu, 16 Feb 2017 07:17:28 +0000
Date: Thu, 16 Feb 2017 08:17:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170216071702.pwsxvzqyiovrnxhf@pengutronix.de>
References: <20170214105358.6666-1-u.kleine-koenig@pengutronix.de>
 <20170215164248.31952-3-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170215164248.31952-3-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 6/3] mvebu: kirkwood: simplify soc init code flow
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 15, 2017 at 05:42:48PM +0100, Uwe Kleine-K=F6nig wrote:
> Similar to the two previous commits, this gets rid of a of-fixup which
> is strange because the soc init stuff is rerun then when a new dt for
> booting into Linux is loaded. It also only calls mvebu_mbus_add_range if
> we're running on a Kirkwood.
> =

> The initcall must be postponed to post-core to ensure
> of_machine_is_compatible is working correctly.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-mvebu/kirkwood.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)

Applied 6 from 3 patches, thanks

Sascha

> =

> diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwoo=
d.c
> index d5ddf05e3447..36cd2a84a6f5 100644
> --- a/arch/arm/mach-mvebu/kirkwood.c
> +++ b/arch/arm/mach-mvebu/kirkwood.c
> @@ -29,11 +29,13 @@ static void __noreturn kirkwood_restart_soc(struct re=
start_handler *rst)
>  	hang();
>  }
>  =

> -static int kirkwood_init_soc(struct device_node *root, void *context)
> +static int kirkwood_init_soc(void)
>  {
>  	if (!of_machine_is_compatible("marvell,kirkwood"))
>  		return 0;
>  =

> +	mvebu_mbus_add_range("marvell,kirkwood", 0xf0, 0x01,
> +			     MVEBU_REMAP_INT_REG_BASE);
>  	restart_handler_register_fn(kirkwood_restart_soc);
>  =

>  	barebox_set_model("Marvell Kirkwood");
> @@ -43,11 +45,4 @@ static int kirkwood_init_soc(struct device_node *root,=
 void *context)
>  =

>  	return 0;
>  }
> -
> -static int kirkwood_register_soc_fixup(void)
> -{
> -	mvebu_mbus_add_range("marvell,kirkwood", 0xf0, 0x01,
> -			     MVEBU_REMAP_INT_REG_BASE);
> -	return of_register_fixup(kirkwood_init_soc, NULL);
> -}
> -pure_initcall(kirkwood_register_soc_fixup);
> +postcore_initcall(kirkwood_init_soc);
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
