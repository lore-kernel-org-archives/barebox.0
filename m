Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCJHe-0006aR-KK
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 06:56:52 +0000
Date: Tue, 16 Oct 2018 08:56:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181016065638.t5mwfenlcb4iz5tp@pengutronix.de>
References: <1034587066.7904413.1539615604832.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1034587066.7904413.1539615604832.JavaMail.zimbra@kalray.eu>
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
Subject: Re: [PATCH] phy: call adjust_link in attach if using fixed-link
To: =?iso-8859-15?Q?Cl=E9ment?= Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Oct 15, 2018 at 05:00:04PM +0200, Cl=E9ment Leger wrote:
> Normally, phy_update_status is in charge of reporting a change in link
> status when phy is updated. When using fixed-link, speed and duplex are
> initialized directly after registering the phy and there is no driver.
> Hence when phy_update_status is called, the check for new values fails
> and returns directly. Since update_link call is mandatory for some
> network devices to work, call it directly when using fixed link in
> phy_device_attach to force update of link.
> =

> Signed-off-by: Clement Leger <clement.leger@kalray.eu>
> ---
>  drivers/net/phy/phy.c | 4 ++++
>  1 file changed, 4 insertions(+)

Indeed, sounds logical. Applied, thanks

Sascha

> =

> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 42dcad906..63f249fcf 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -398,6 +398,10 @@ static int phy_device_attach(struct phy_device *phy,=
 struct eth_device *edev,
>  =

>  	phy->adjust_link =3D adjust_link;
>  =

> +	/* If the phy is a fixed-link, then call adjust_link directly */
> +	if (!phy->bus && adjust_link)
> +		adjust_link(edev);
> +
>  	return 0;
>  }
>  =

> -- =

> 2.15.0.276.g89ea799
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
