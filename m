Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OGfiI-0005kw-5b
	for barebox@lists.infradead.org; Mon, 24 May 2010 22:01:35 +0000
Message-ID: <4BFAF732.8010904@pengutronix.de>
Date: Tue, 25 May 2010 00:01:22 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1274708768-20607-1-git-send-email-eric@eukrea.com>
	<1274708768-20607-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1274708768-20607-2-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2084751028=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/4] i2c: implement i2c_get_adapter()
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============2084751028==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigFEE91FD811EEFC146C14ABD3"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigFEE91FD811EEFC146C14ABD3
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,

Eric B=E9nard wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

You have to add you S-o-b, if the patch goes through your hands.

Cheers, Marc
> ---
> v2 : add i2c_get_adapter to include/i2c/i2c.h
>=20
>  drivers/i2c/i2c.c |   24 +++++++++++++++++++++++-
>  include/i2c/i2c.h |    2 ++
>  2 files changed, 25 insertions(+), 1 deletions(-)
>=20
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index 32fd026..1fa114a 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -39,7 +39,7 @@ struct boardinfo {
>  };
> =20
>  static LIST_HEAD(board_list);
> -
> +static LIST_HEAD(adapter_list);
> =20
>  /**
>   * i2c_transfer - execute a single or combined I2C message
> @@ -327,6 +327,23 @@ static void scan_boardinfo(struct i2c_adapter *ada=
pter)
>  }
> =20
>  /**
> + *
> + * i2c_get_adapter - get an i2c adapter from its busnum
> + *
> + * @param	busnum	the desired bus number
> + *
> + */
> +struct i2c_adapter *i2c_get_adapter(int busnum)
> +{
> +	struct i2c_adapter *adap;
> +
> +	list_for_each_entry(adap, &adapter_list, list)
> +		if (adap->nr =3D=3D busnum)
> +			return adap;
> +	return NULL;
> +}
> +
> +/**
>   * i2c_register_master - register I2C master controller
>   *
>   * @param	master	initialized master, originally from i2c_alloc_master(=
)
> @@ -345,6 +362,11 @@ static void scan_boardinfo(struct i2c_adapter *ada=
pter)
>   */
>  int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>  {
> +	if (i2c_get_adapter(adapter->nr))
> +		return -EBUSY;
> +
> +	list_add_tail(&adapter_list, &adapter->list);
> +
>  	/* populate children from any i2c device tables */
>  	scan_boardinfo(adapter);
> =20
> diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
> index 0760fdc..c031bbb 100644
> --- a/include/i2c/i2c.h
> +++ b/include/i2c/i2c.h
> @@ -66,6 +66,7 @@ struct i2c_adapter {
>  	struct device_d		*dev;	/* ptr to device */
>  	int			nr;	/* bus number */
>  	int (*master_xfer)(struct i2c_adapter *adap, struct i2c_msg *msgs, in=
t num);
> +	struct list_head	list;
>  };
> =20
> =20
> @@ -120,6 +121,7 @@ static inline int i2c_register_board_info(int busnu=
m,
>  }
>  #endif
>  extern int i2c_add_numbered_adapter(struct i2c_adapter *adapter);
> +struct i2c_adapter *i2c_get_adapter(int busnum);
> =20
>  extern int i2c_transfer(struct i2c_adapter *adap, struct i2c_msg *msgs=
, int num);
>  extern int i2c_master_send(struct i2c_client *client, const char *buf,=
 int count);


--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigFEE91FD811EEFC146C14ABD3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkv69zkACgkQjTAFq1RaXHNXAwCeLkK8FbSFFuo4tN2KtbZ4dOM/
jmsAnjY4JhuMD30/rdbmvyaTRgobWb0+
=pCyv
-----END PGP SIGNATURE-----

--------------enigFEE91FD811EEFC146C14ABD3--


--===============2084751028==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2084751028==--
