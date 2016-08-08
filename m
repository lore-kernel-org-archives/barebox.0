Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bWnKE-0003XF-SF
 for barebox@lists.infradead.org; Mon, 08 Aug 2016 16:22:51 +0000
Received: by mail-wm0-x242.google.com with SMTP id o80so16468546wme.0
 for <barebox@lists.infradead.org>; Mon, 08 Aug 2016 09:22:30 -0700 (PDT)
Date: Mon, 8 Aug 2016 19:25:18 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160808192518.8ced7511ddd80ceb9a208f92@gmail.com>
In-Reply-To: <1470665714-29139-1-git-send-email-l.stach@pengutronix.de>
References: <1470665714-29139-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v2] net: phy: fixed-link: read link parameters from
 devicetree
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon,  8 Aug 2016 16:15:14 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Implement the missing reading of the fixed link parameters from
> the devicetree properties.
> =

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> v2: fix coding style
> ---
>  drivers/net/phy/phy.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 13b832470926..4f228829e510 100644
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

        phy_device_create() allocated memory for the phydev structure
        via xzalloc(). with this 'return NULL' we have a memory leak here.

> +	phydev->duplex =3D of_property_read_bool(np, "full-duplex");
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
