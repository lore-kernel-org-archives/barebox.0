Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22d.google.com ([2a00:1450:400c:c09::22d])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJg0c-0007fr-Af
 for barebox@lists.infradead.org; Tue, 28 Nov 2017 13:33:12 +0000
Received: by mail-wm0-x22d.google.com with SMTP id r68so1888155wmr.3
 for <barebox@lists.infradead.org>; Tue, 28 Nov 2017 05:32:48 -0800 (PST)
References: <311f4693-85fc-e2bc-6e07-7714cd89c522@ebee.berlin>
 <20171128084351.wcdzcp7m43iijsun@pengutronix.de>
 <51e9790a-364c-782d-cd81-721dcba52d78@ebee.berlin>
 <20171128132006.cbcplw7rr2lqvme3@pengutronix.de>
From: Holger Birkmeyer <holger.birkmeyer@ebee.berlin>
Message-ID: <3c3039a6-f5f3-b39f-9887-ca55b464a071@ebee.berlin>
Date: Tue, 28 Nov 2017 14:32:44 +0100
MIME-Version: 1.0
In-Reply-To: <20171128132006.cbcplw7rr2lqvme3@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5407383471733705823=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: ASIX USB dongle problem: asix_rx_fixup() Bad Header Length
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5407383471733705823==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="jSJfdHQdNEd0EbGwp5ihsfOpEUuX2g8fx"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--jSJfdHQdNEd0EbGwp5ihsfOpEUuX2g8fx
Content-Type: multipart/mixed; boundary="g00XwFjq5mRpqBRNCRk76ajRWgHv09hH4";
 protected-headers="v1"
From: Holger Birkmeyer <holger.birkmeyer@ebee.berlin>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <3c3039a6-f5f3-b39f-9887-ca55b464a071@ebee.berlin>
Subject: Re: ASIX USB dongle problem: asix_rx_fixup() Bad Header Length
References: <311f4693-85fc-e2bc-6e07-7714cd89c522@ebee.berlin>
 <20171128084351.wcdzcp7m43iijsun@pengutronix.de>
 <51e9790a-364c-782d-cd81-721dcba52d78@ebee.berlin>
 <20171128132006.cbcplw7rr2lqvme3@pengutronix.de>
In-Reply-To: <20171128132006.cbcplw7rr2lqvme3@pengutronix.de>

--g00XwFjq5mRpqBRNCRk76ajRWgHv09hH4
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


> Hm, comparing that to the traffic my device receives that may look
> somewhat shifted. Do you have CONFIG_MMU enabled? If yes, please try
> with MMU disabled.=20
#CONFIG_MMU is not set
> Also, maybe the buffer is not sufficiently aligned.
> Could you print the pointer address of buf?
>
> The buffer is statically allocated in drivers/net/usb/usbnet.c:
>
> static char rx_buf[4096];
rx_buf addr 0x23f52a8c


--=20
Holger Birkmeyer
Ebee Smart Technologies GmbH
Torgauer Str. 12-15
10829 Berlin
Phone: +49 30 6098371-52
Mail: holger.birkmeyer@ebee.berlin



--g00XwFjq5mRpqBRNCRk76ajRWgHv09hH4--

--jSJfdHQdNEd0EbGwp5ihsfOpEUuX2g8fx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJaHWV8AAoJEHk8IiZD620JjlcP/ipuyRKyIt9rfCDU9jpA1wxv
ZwxLLSxqZPg7yThZJxIrrXL/6Un0MKxGzCuOs8/tHpEWDLzNgmXL8lI1fhpHIell
5CCc7uoQT3wMuoA0v8oOcJiyOTFS4eawYvZINAcfqTb4SRXHzOlzqVVOzwNzP1Gq
tPBWvEdGnmmmdU3/wylIEZI5pluLZ5UOwT7+XAZoHF7J1vBKPYlbLDiCUJKfKgh8
O5m8pMfhjpflwqUTd4DG+fw/SesqRPzX8B6sBualgx/qrOuxneg9C81vWswRCITd
+m3RUmUejkwiWSf/JjBIylPV75vw95V3YRHegEgH9C4iN3ICpjFhVIgUno9uxN21
3XfuFgfIPs+mLHRHjPIwExScc5CiuDa8KdU0ooOAfhKK87ZZ7dVXoguclUma6Y3h
/JWkKUuBuGwEqr3/u/ziumkvkqYosJH9lY6DsdTNERdRhfhWBIRK8Vj1YJIDurs6
j0i+GAdl5sK7qj7/NKXdJakjpG2sx0EJOwNcrksMM5rfCrJCp4rhFv0VhRxTpmPt
tpyX9UtqrLtsv4qcI4OOVX7LYk8196qc1KvzXeL0Qp7w7OLNiwtIrqAFmsJhIsjs
NzSR6gviwEgTCUDfEasXFKyI0Q0VdtQVKecvOG/NVUuR4xUMwAS/zGzTF1SOnm2U
S/0QwVJ3ViWD8AAXuiam
=MS0J
-----END PGP SIGNATURE-----

--jSJfdHQdNEd0EbGwp5ihsfOpEUuX2g8fx--


--===============5407383471733705823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5407383471733705823==--
