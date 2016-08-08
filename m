Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bWiWJ-0006sz-RH
 for barebox@lists.infradead.org; Mon, 08 Aug 2016 11:15:00 +0000
Received: by mail-wm0-x241.google.com with SMTP id o80so14777783wme.0
 for <barebox@lists.infradead.org>; Mon, 08 Aug 2016 04:14:39 -0700 (PDT)
Date: Mon, 8 Aug 2016 14:17:25 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160808141725.887e9032d0928dd67e5166fd@gmail.com>
In-Reply-To: <1470654177-29951-1-git-send-email-l.stach@pengutronix.de>
References: <1470654177-29951-1-git-send-email-l.stach@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] net: phy: fixed-link: read link parameters from devicetree
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon,  8 Aug 2016 13:02:57 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Implement the missing reading of the fixed link parameters from
> the devicetree properties.
> =

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/net/phy/phy.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 13b832470926..fc39c5d8c750 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -309,11 +309,14 @@ static struct phy_device *of_phy_register_fixed_lin=
k(struct device_node *np,
>  =

>  	phydev->dev.parent =3D &edev->dev;
>  	phydev->registered =3D 1;
> -	phydev->speed =3D 1000;
> -	phydev->duplex =3D 1;
> -	phydev->pause =3D phydev->asym_pause =3D 0;
>  	phydev->link =3D 1;
>  =

> +	if (of_property_read_u32(np, "speed", &phydev->speed))
> +		return NULL;
> +	phydev->duplex =3D of_property_read_bool(np,"full-duplex");
                                                ^^^^
                                                  please fix coding style h=
ere.
> +	phydev->pause =3D of_property_read_bool(np, "pause");
> +	phydev->asym_pause =3D of_property_read_bool(np, "asym-pause");
> +
>  	return phydev;
>  }
>  =

> -- =

> 2.8.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
