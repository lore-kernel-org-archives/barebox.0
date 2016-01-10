Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIKWR-0006PG-93
 for barebox@lists.infradead.org; Sun, 10 Jan 2016 18:15:24 +0000
References: <1452259447-32006-1-git-send-email-yegorslists@googlemail.com>
 <568FDF95.2080302@pengutronix.de>
 <CAGm1_ku4Q=diLnYF+d8vRUFPJcFCiGt1rrFvuik7xWC0JNLk1g@mail.gmail.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <56929F9C.2090900@pengutronix.de>
Date: Sun, 10 Jan 2016 19:14:52 +0100
MIME-Version: 1.0
In-Reply-To: <CAGm1_ku4Q=diLnYF+d8vRUFPJcFCiGt1rrFvuik7xWC0JNLk1g@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4342760645423063125=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] FIT: make RSA signature verification configurable
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4342760645423063125==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="lLvvrOl5OqRh9UUsFb2n0r4S6l1I4xP5B"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--lLvvrOl5OqRh9UUsFb2n0r4S6l1I4xP5B
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 01/08/2016 05:43 PM, Yegor Yefremov wrote:
> On Fri, Jan 8, 2016 at 5:11 PM, Marc Kleine-Budde <mkl@pengutronix.de> =
wrote:
>> On 01/08/2016 02:24 PM, yegorslists@googlemail.com wrote:
>>> From: Yegor Yefremov <yegorslists@googlemail.com>
>>>
>>> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>

[...]

>>> diff --git a/common/image-fit.c b/common/image-fit.c
>>> index 296285b..96cc3e2 100644
>>> --- a/common/image-fit.c
>>> +++ b/common/image-fit.c
>>> @@ -40,6 +40,7 @@
>>>  #define CHECK_LEVEL_SIG 2
>>>  #define CHECK_LEVEL_MAX 3
>>>
>>> +#ifdef CONFIG_CMD_BOOTM_FITIMAGE_SIGNATURE
>>>  static uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt,=
 int size)
>>
>> remove the ifdef.
>=20
> What about compile warnings, i.e. function defined, but not used?

add __maybe_unused if needed.

>=20
>>>  {
>>>       dt +=3D size;
>>> @@ -342,6 +343,7 @@ static int fit_verify_signature(struct device_nod=
e *sig_node, void *fit)
>>>   out:
>>>       return ret;
>>>  }
>>> +#endif
>>>
>>>  static int fit_verify_hash(struct device_node *hash, const void *dat=
a, int data_len)
>>>  {
>>> @@ -453,10 +455,13 @@ static int fit_open_image(struct fit_handle *ha=
ndle, const char* unit)
>>>
>>>  static int fit_open_configuration(struct fit_handle *handle, int num=
)
>>>  {
>>> -     struct device_node *conf_node =3D NULL, *sig_node;
>>> +     struct device_node *conf_node =3D NULL;
>>>       char unit_name[10];
>>>       const char *unit, *desc;
>>> -     int ret, level;
>>> +     int level;
>>> +#ifdef CONFIG_CMD_BOOTM_FITIMAGE_SIGNATURE
>>> +     struct device_node *sig_node;
>>> +#endif
>>
>> please remove the ifdef
>>
>>>
>>>       conf_node =3D of_get_child_by_name(handle->root, "configuration=
s");
>>>       if (!conf_node)
>>> @@ -482,7 +487,10 @@ static int fit_open_configuration(struct fit_han=
dle *handle, int num)
>>>       }
>>>
>>>       level =3D CHECK_LEVEL_MAX;
>>> +
>>> +#ifdef CONFIG_CMD_BOOTM_FITIMAGE_SIGNATURE
>>
>> please replace the ifdef by
>>
>> if (IS_ENABLED(CONFIG_CMD_BOOTM_FITIMAGE_SIGNATURE))
>>
>>>       for_each_child_of_node(conf_node, sig_node) {
>>> +             int ret;
>>>               if (handle->verbose)
>>>                       of_print_nodes(sig_node, 0);
>>>               ret =3D fit_verify_signature(sig_node, handle->fit);
>>> @@ -495,6 +503,9 @@ static int fit_open_configuration(struct fit_hand=
le *handle, int num)
>>>
>>>       if (level !=3D CHECK_LEVEL_SIG)
>>>               return -EINVAL;
>>> +#else
>>> +     level =3D CHECK_LEVEL_SIG;
>>> +#endif
>>>
>>>       if (of_property_read_string(conf_node, "kernel", &unit) =3D=3D =
0)
>>>               level =3D min(level, fit_open_image(handle, unit));
>>>
>=20
> Will you include my patch in your patch series, if you'll send v3 or
> are you just going to squash my patch into your FIT patch?

I'll take your patch as a separate patch in my series.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--lLvvrOl5OqRh9UUsFb2n0r4S6l1I4xP5B
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWkp+cAAoJEP5prqPJtc/H2N0H/10/v4w/GjJnzNvhn9P0iSJY
zIJoVrGyYqswjzsTx07FMrWgqeGP+T+urEfRIhQ5nJNKPxtLQl6LHGlebsAt7V56
XYoF+G1kMstn4+OGARqCVZz1OKDurGGFBuRhziESD0RH0focY/fRmFauYhPj01sn
rWbdBJzC95ckslamXXnpkG71tXfWKdmV4oW9gpHj5xDG13lgu9XsR5qd++4buDJx
jpOPoV/W1/zAbsPW69H5yIN6ELaN2yFZuBg6QWRLmsC5pVn8/ECfzG69hhuPyekm
TbaJZI4BlAGPsEev1wSvi1j7QrpPs4sCvJvryXih57RLL5a2moUxzlDngBUsLbk=
=GknH
-----END PGP SIGNATURE-----

--lLvvrOl5OqRh9UUsFb2n0r4S6l1I4xP5B--


--===============4342760645423063125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4342760645423063125==--
