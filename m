Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPOzd-0006nt-8b
 for barebox@lists.infradead.org; Wed, 21 Nov 2018 09:40:22 +0000
Date: Wed, 21 Nov 2018 10:40:05 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20181121094005.bmjdpt3fz7pa62rh@pengutronix.de>
References: <20181120200714.3692-1-linux@rempel-privat.de>
 <20181120200714.3692-3-linux@rempel-privat.de>
 <1542791818.23859.1.camel@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <1542791818.23859.1.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4971635903398599098=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 2/9] pinctrl: tegra30: fix "Possible null pointer
 dereference: group" warning
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>


--===============4971635903398599098==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="koztx2s2fu6rxuh4"
Content-Disposition: inline


--koztx2s2fu6rxuh4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 21, 2018 at 10:16:58AM +0100, Lucas Stach wrote:
> Am Dienstag, den 20.11.2018, 21:07 +0100 schrieb Oleksij Rempel:
> > The code is correct but it takes more seconds for me to understand.
> > And static code analyzer do not understand it at all.
> >=20
> > > Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> > ---
> > =A0drivers/pinctrl/pinctrl-tegra30.c | 4 ++--
> > =A01 file changed, 2 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctr=
l-tegra30.c
> > index d9b49c57d..ffb04eebb 100644
> > --- a/drivers/pinctrl/pinctrl-tegra30.c
> > +++ b/drivers/pinctrl/pinctrl-tegra30.c
> > @@ -658,8 +658,8 @@ static int pinctrl_tegra30_set_drvstate(struct pinc=
trl_tegra30 *ctrl,
> > > =A0			break;
> > > =A0		}
> > > =A0	}
> > > -	/* if no matching drivegroup is found */
> > > -	if (i =3D=3D ctrl->drvdata->num_drvgrps)
> > +
> > > +	if (!group)
> > > =A0		return 0;
>=20
> Huh? This is a pretty standard idiom in C codebases to check if we
> broke out of a loop early.
>=20
> Actually this change breaks the code, as this check is inside of an
> outer loop that doesn't reinitialize the group variable. So while the
> code as-is correctly checks if a group was found in the current
> iteration of the outer loop, after this patch it also matches a group
> that was found on a previous iteration of the outer loop.

Probably I still do not understand it:

static const struct pinctrl_tegra30_drvdata tegra124_drvdata =3D {
	.pingrps =3D tegra124_pin_groups,
	.num_pingrps =3D ARRAY_SIZE(tegra124_pin_groups),
	.drvgrps =3D tegra124_drive_groups,
	.num_drvgrps =3D ARRAY_SIZE(tegra124_drive_groups),=20
	^^^^^ this is constant.
};

static int pinctrl_tegra30_set_drvstate(struct pinctrl_tegra30 *ctrl,
                                        struct device_node *np)
{
	const char *pins =3D NULL;
	const struct tegra_drive_pingroup *group =3D NULL;
	^^^^ here we init *group to NULL

	int hsm =3D -1, schmitt =3D -1, pds =3D -1, pus =3D -1, srr =3D -1, srf =
=3D -1;
	int i;
	u32 __iomem *regaddr;
	u32 val;

	if (of_property_read_string(np, "nvidia,pins", &pins))
		return 0;

	for (i =3D 0; i < ctrl->drvdata->num_drvgrps; i++) {
	^^^^ here we init i
		if (!strcmp(pins, ctrl->drvdata->drvgrps[i].name)) {
			group =3D &ctrl->drvdata->drvgrps[i];
			^^^^^ -- only here group is not NULL
			break;
		}
	}
	/* if no matching drivegroup is found */
	if (i =3D=3D ctrl->drvdata->num_drvgrps)
	^^^^^ if i =3D=3D num_drvgrps, group is also NULL..
		return 0;

I don't see any technical problems. Or i do oversee some thing?

> This is a prime example where static checker warnings can prompt wrong
> fixes. Frankly codacy should smart up to correctly analyze the
> controlflow interdependency.

Well, amount of real problems found by this code check is still higher.
So why not to use it?

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--koztx2s2fu6rxuh4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAlv1J/EACgkQdQOiSHVI
77RRQgf/f4hvwaBTmADsFn2Yx78j5iA5xmWhzuZNS9FJG+5XByWUNyQsseYdXbiA
ycLxChnjLI+QDilEQx5cW3AyGycN3hdgMlBc34y96DqToB5glIXpS9F0PmSHaFNK
el/ynNRg8+iSmA5NpPdpoQCL0lto63wWzXpf8wYhaqHBzZLChquB8VNB2z0+Ouee
P55OXS/+DJzlsTSp0Wh0rJB3qi0QNCSEfD9ckVuTTz2xwc1+JwQMsiSshloitZcW
W/IWcx1zmBR0fvpcB1TSVQF0ouNcBT8PzgMiYgzNiT8ncW7nKa7GYt2M6+yaUGw/
gK2dQjb3x69K/sMBe5RCCH30w28sMA==
=i/XF
-----END PGP SIGNATURE-----

--koztx2s2fu6rxuh4--


--===============4971635903398599098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4971635903398599098==--
