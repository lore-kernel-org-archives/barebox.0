Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAZRL-0005CY-QF
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 06:57:16 +0000
Date: Fri, 25 Jul 2014 08:56:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140725065649.GM23235@pengutronix.de>
References: <1404915308-23981-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404915308-23981-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH] ARM: am335x Phytec phyCORE: Enable ethernet
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 09, 2014 at 04:15:08PM +0200, Teresa G=E1mez wrote:
> With an update of the am33xx.dtsi (commit 9313920df6) the mdio and mac
> nodes are not enabled on default any more. Enable them explicit
> in the board dts now.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied now, thanks

Sascha

> ---
>  arch/arm/dts/am335x-phytec-phycore.dts |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> =

> diff --git a/arch/arm/dts/am335x-phytec-phycore.dts b/arch/arm/dts/am335x=
-phytec-phycore.dts
> index 6196eb3..63debd2 100644
> --- a/arch/arm/dts/am335x-phytec-phycore.dts
> +++ b/arch/arm/dts/am335x-phytec-phycore.dts
> @@ -214,6 +214,7 @@
>  &davinci_mdio {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&davinci_mdio_default>;
> +	status =3D "okay";
>  };
>  =

>  &phy_sel {
> @@ -236,6 +237,7 @@
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&emac_rmii1_pins>;
>  	dual_emac =3D <1>;
> +	status =3D "okay";
>  };
>  =

>  &gpmc {
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
