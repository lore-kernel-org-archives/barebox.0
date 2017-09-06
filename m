Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpZiw-0000lh-Dy
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 12:46:32 +0000
Date: Wed, 6 Sep 2017 14:46:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170906124605.euisfttxsywl4thj@pengutronix.de>
References: <1566403872.328360912.1504601784430.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566403872.328360912.1504601784430.JavaMail.zimbra@kalray.eu>
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
Subject: Re: [PATCH] Phy: Check NULL bus case and undetected phy via of
To: =?iso-8859-15?Q?Cl=E9ment?= Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Sep 05, 2017 at 10:56:24AM +0200, Cl=E9ment Leger wrote:
> From 5e87dc2c24051c2cd2985e513c5a825d51d9bb00 Mon Sep 17 00:00:00 2001
> From: Clement Leger <clement.leger@kalray.eu>
> Date: Tue, 5 Sep 2017 10:37:23 +0200
> Subject: [PATCH] Phy: Check NULL bus case and undetected phy via of
> =

> phy_device_connect can be called with NULL miibus for automatic match
> with the phy described in the device tree. In the case where the phy
> was not detected for some unknown reason, the next calls will be done
> with a NULL bus. This will lead to undefined behavior and more probably
> crashes.
> ---
>  drivers/net/phy/phy.c | 5 +++++
>  1 file changed, 5 insertions(+)
> =


Applied, thanks

Sascha

> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 7132516..e8f7726 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -405,6 +405,11 @@ int phy_device_connect(struct eth_device *edev, stru=
ct mii_bus *bus, int addr,
>  		goto out;
>  	}
>  =

> +	if (!bus) {
> +		ret =3D -ENODEV;
> +		goto out;
> +	}
> +
>  	if (addr >=3D 0) {
>  		phy =3D mdiobus_scan(bus, addr);
>  		if (IS_ERR(phy)) {
> -- =

> 1.8.3.1
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
