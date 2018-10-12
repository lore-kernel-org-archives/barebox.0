Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gAqrF-0006jM-2z
 for barebox@lists.infradead.org; Fri, 12 Oct 2018 06:23:34 +0000
References: <20181004070400.12338-1-Denis.Osterland@diehl.com>
 <20181005065537.21844-1-Denis.Osterland@diehl.com>
 <20181010075129.u67xfq247pmn7sfb@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <f20161e0-4c3b-9cd1-539b-dfd444085e24@pengutronix.de>
Date: Fri, 12 Oct 2018 08:23:15 +0200
MIME-Version: 1.0
In-Reply-To: <20181010075129.u67xfq247pmn7sfb@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1893294284617580739=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] hab: Print events on info command.
To: Sascha Hauer <s.hauer@pengutronix.de>, Denis OSTERLAND <denis.osterland@diehl.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1893294284617580739==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="gY0b3c7cBmNUZwH9NHAX4iuEEFBDMduZ0"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--gY0b3c7cBmNUZwH9NHAX4iuEEFBDMduZ0
Content-Type: multipart/mixed; boundary="hrbA83yv3HdP2fZqN2R076QWpE1cQ5uF7";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Denis OSTERLAND <denis.osterland@diehl.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <f20161e0-4c3b-9cd1-539b-dfd444085e24@pengutronix.de>
Subject: Re: [PATCH v2] hab: Print events on info command.
References: <20181004070400.12338-1-Denis.Osterland@diehl.com>
 <20181005065537.21844-1-Denis.Osterland@diehl.com>
 <20181010075129.u67xfq247pmn7sfb@pengutronix.de>
In-Reply-To: <20181010075129.u67xfq247pmn7sfb@pengutronix.de>

--hrbA83yv3HdP2fZqN2R076QWpE1cQ5uF7
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

On 10/10/2018 09:51 AM, Sascha Hauer wrote:
>> +static inline int hab_get_status(void)
>> +{
>> +	if (IS_ENABLED(CONFIG_MMU))
>> +		return -EIO;
>=20
> This restriction makes this patch rather unhandy to use. Internally we
> use imx*_hab_get_status() indeed with MMU enabled and it works fine, bu=
t
> we call it before mmu_init is called. In this state the MMU is enabled
> already, but the zero page is not yet set to faulting. So I think the
> problem is not the MMU as such, but instead the faulting zero page.

BTW:

The faulting zero page problem doesn't occur on mx25 and mx28 as the HAB
ROM doesn't live at 0x0:

#define HABV4_RVT_IMX28 0xffff8af8

int imx25_hab_get_status(void)
{
        return imx_habv3_get_status(readl(IOMEM(0x780018d4)));
}

> It would be great if we could overcome this issue. One way to do this
> would be to add a function pair mmu_zero_page_map() and
> mmu_zero_page_set_faulting() to be called in hab_get_status().
>=20
> I don't know if you are willing to add that, but I don't want to
> motivate people to disable the MMU, so the patch is not acceptable as
> is.
Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--hrbA83yv3HdP2fZqN2R076QWpE1cQ5uF7--

--gY0b3c7cBmNUZwH9NHAX4iuEEFBDMduZ0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEENrCndlB/VnAEWuH5k9IU1zQoZfEFAlvAPdMACgkQk9IU1zQo
ZfEigAf9GgBu0fDxIeafZ93skRuMngh8RMQv/RXkD9Y1VrIiZs+AeYr6HWSVOFfS
InDg+MoDYdsHwcbpeCv43V7nQIyoK3v7aEsTTFwBbc1kFwooMhY/FPPg/Ap1dWSV
oxTvVC4KY5ccHAzJPXk6zkg6wCvCjypMtcDy6fAAVNL/5SpsAjLE07AbFBPVX0c3
erxC4pO+GyQ6LfDEmgZN/BQqBjdgR+M/EXC1Ppqb5hyWxOXvcQyQC4yIFAZJqHan
FtVVVP/2aU0ZubhvY7xe0rLH5KJp6fX4/0pFyrQCR8dQn1u+dpY55MdKWnfMuugA
4JQkTa62DzOWjpJ837UPLWAnE2qExQ==
=rY+U
-----END PGP SIGNATURE-----

--gY0b3c7cBmNUZwH9NHAX4iuEEFBDMduZ0--


--===============1893294284617580739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1893294284617580739==--
