Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9SR-0000iz-Nt
 for barebox@lists.infradead.org; Tue, 03 Dec 2019 14:47:21 +0000
References: <20191202102449.23535-1-jbe@pengutronix.de>
 <20191202130736.xgs53nadr5uvokea@pengutronix.de>
 <fa5ac462-27f0-d9c5-e771-1c6775616f05@pengutronix.de>
 <c2d8530aa1da0e5e8e7ae950fe445b200776667f.camel@pengutronix.de>
 <c141e85b-4da6-f33e-559c-52706ebb4cf4@pengutronix.de>
 <20191203143640.cyk6gorjqkj2twtq@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <004f884e-f8a4-0646-8571-96952468a350@pengutronix.de>
Date: Tue, 3 Dec 2019 15:47:12 +0100
MIME-Version: 1.0
In-Reply-To: <20191203143640.cyk6gorjqkj2twtq@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4189310377674682691=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] HABv4: remove useless error message
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, jbe@pengutronix.de, Roland Hieber <rhi@pengutronix.de>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4189310377674682691==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="xUzwtvt6uenU2vXruvIDmC9rGs74sB3eE"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--xUzwtvt6uenU2vXruvIDmC9rGs74sB3eE
Content-Type: multipart/mixed; boundary="SEzwZ1FtUpctMPosF2cIO4cwcVkEyDsIn";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: jbe@pengutronix.de, Roland Hieber <rhi@pengutronix.de>,
 barebox@lists.infradead.org
Message-ID: <004f884e-f8a4-0646-8571-96952468a350@pengutronix.de>
Subject: Re: [PATCH 1/2] HABv4: remove useless error message
References: <20191202102449.23535-1-jbe@pengutronix.de>
 <20191202130736.xgs53nadr5uvokea@pengutronix.de>
 <fa5ac462-27f0-d9c5-e771-1c6775616f05@pengutronix.de>
 <c2d8530aa1da0e5e8e7ae950fe445b200776667f.camel@pengutronix.de>
 <c141e85b-4da6-f33e-559c-52706ebb4cf4@pengutronix.de>
 <20191203143640.cyk6gorjqkj2twtq@pengutronix.de>
In-Reply-To: <20191203143640.cyk6gorjqkj2twtq@pengutronix.de>

--SEzwZ1FtUpctMPosF2cIO4cwcVkEyDsIn
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

On 12/3/19 3:36 PM, Sascha Hauer wrote:
>> I think there is just one warning in the buffer:
>>
>>> HABv4: Status: Operation completed with warning (0x69)
>>> HABv4: Config: Secure IC (0xcc)
>>> HABv4: State: Trusted state (0x99)
>>> HABv4: ERROR: Recompile with larger event data buffer (at least 36 by=
tes)
>>
>> The barebox producing that output is missing both patches:
>>
>> 81e2b508e785 i.MX habv4: habv4_get_status(): display warning events, t=
oo
>> e7c33540d0c0 i.MX: HABv4: Reset index variable after error type
>>
>> The question is, do we know why we see this error message? I don't hav=
e
>> good feeling when we remove it, because it's annoying and we don't
>> understand why we see it.
>=20
> The message is wrong because the code is wrong. Let's see:
>=20
>         /* Check reason for stopping */
>         len =3D sizeof(data);
>         index =3D 0;
>         if (rvt->report_event(HAB_STATUS_ANY, index, NULL, &len) =3D=3D=
 HAB_STATUS_SUCCESS)
>                 pr_err("ERROR: Recompile with larger event data buffer =
(at least %d bytes)\n\n", len);
>=20
> report_event() like called above will give you the first message of any=

> type (HAB_STATUS_ANY) with index 0. It will do so successfully, so it
> returns HAB_STATUS_SUCCESS.
>=20
> &len on entry means the length of the buffer (here sizeof(data), large
> enough). &len on exit is the length of the actual message returned. If
> &len is smaller than on entry it means the message buffer was big
> enough. If it's bigger, then we must increase the buffer size and call
> again.
>=20
> The message buffer is big enough, so report_event copies the buffer
> and returns 36 bytes were copied, but we answer with "Error: Recompile
> with a larger event data buffer".

I see, this means since:

| e7c33540d0c0 i.MX: HABv4: Reset index variable after error type

the check is even more broken and fires every time we have at least one
warning and/or error.

So we can either remove the check/message with a proper commit log or
change the code to semething like:

> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> index e3c1de1a4dbe..013cdea1bc43 100644
> --- a/drivers/hab/habv4.c
> +++ b/drivers/hab/habv4.c
> @@ -507,7 +507,7 @@ static int habv4_get_status(const struct habv4_rvt =
*rvt)
>  {
>         uint8_t data[256];
>         uint32_t len;
> -       uint32_t index =3D 0;
> +       uint32_t index =3D 0, done =3D 0;
>         enum hab_status status;
>         enum hab_config config =3D 0x0;
>         enum hab_state state =3D 0x0;
> @@ -542,6 +542,7 @@ static int habv4_get_status(const struct habv4_rvt =
*rvt)
> =20
>                 len =3D sizeof(data);
>                 index++;
> +               done++;
>         }
> =20
>         len =3D sizeof(data);
> @@ -553,13 +554,13 @@ static int habv4_get_status(const struct habv4_rv=
t *rvt)
>                 habv4_display_event(data, len);
>                 len =3D sizeof(data);
>                 index++;
> +               done++;
>         }
> =20
> -       /* Check reason for stopping */
> +       /* Check if we've handled every event */
>         len =3D sizeof(data);
> -       index =3D 0;
> -       if (rvt->report_event(HAB_STATUS_ANY, index, NULL, &len) =3D=3D=
 HAB_STATUS_SUCCESS)
> -               pr_err("ERROR: Recompile with larger event data buffer =
(at least %d bytes)\n\n", len);
> +       if (rvt->report_event(HAB_STATUS_ANY, done, NULL, &len) =3D=3D =
HAB_STATUS_SUCCESS)
> +               pr_err("ERROR: unhandled HAB event!\n\n", len);
> =20
>         return -EPERM;
>  }

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |


--SEzwZ1FtUpctMPosF2cIO4cwcVkEyDsIn--

--xUzwtvt6uenU2vXruvIDmC9rGs74sB3eE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEmvEkXzgOfc881GuFWsYho5HknSAFAl3mdXAACgkQWsYho5Hk
nSBXdAf/Yjsug6Be1iA5BSNb4f63H1q3hkErwPDvWWAWPsYbqDtemEDvXv+96iyA
O0iBjo5CcNxKe+iC6WcxFw3MYXDOqk3IH8cai4u41oLrApyBRN6z2zckHPQ1xoHf
j/mXpiGw0oxMt5hldqmS5VCW4A1CSoQ50Wwj8aH1UfXQInKofHP6Y9ZNYqb+4qCW
JSgRHM+9kC2yGYFuc92FTsdb39jFnaUk1iD+PbGvoDg8FYYT3OsgiuYb768x/z/5
kGxA8RUCfpZi4xdvSdLSeXQGLWu/EXzwzF6lMsIpQqfAQyx2tM017y3wL5DQetp6
39VsuD0urbjpJXcxmLcamvBx1dYzZQ==
=yvJA
-----END PGP SIGNATURE-----

--xUzwtvt6uenU2vXruvIDmC9rGs74sB3eE--


--===============4189310377674682691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4189310377674682691==--
