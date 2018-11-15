Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gND4z-0004N0-CX
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 08:32:51 +0000
References: <20181114110427.10433-1-mkl@pengutronix.de>
 <20181115080214.4iyo6jojt6oclxhb@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <6b21d190-ee47-5ffc-bfe8-59604ac217a3@pengutronix.de>
Date: Thu, 15 Nov 2018 09:32:28 +0100
MIME-Version: 1.0
In-Reply-To: <20181115080214.4iyo6jojt6oclxhb@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7335890697963897640=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand: fix nand_lock/unlock() function
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7335890697963897640==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="PSoj8pWiqoxJugNHkW8neffAFbSwp9zmk"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--PSoj8pWiqoxJugNHkW8neffAFbSwp9zmk
Content-Type: multipart/mixed; boundary="UKSpGluZnMB0Bg1avKFqsJHFd39X8qZkP";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <6b21d190-ee47-5ffc-bfe8-59604ac217a3@pengutronix.de>
Subject: Re: [PATCH] mtd: nand: fix nand_lock/unlock() function
References: <20181114110427.10433-1-mkl@pengutronix.de>
 <20181115080214.4iyo6jojt6oclxhb@pengutronix.de>
In-Reply-To: <20181115080214.4iyo6jojt6oclxhb@pengutronix.de>

--UKSpGluZnMB0Bg1avKFqsJHFd39X8qZkP
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

On 11/15/18 9:02 AM, Sascha Hauer wrote:
> On Wed, Nov 14, 2018 at 12:04:27PM +0100, Marc Kleine-Budde wrote:
>> From: White Ding <bpqw@micron.com>
>>
>> Do nand reset before write protect check.
>>
>> If we want to check the WP# low or high through STATUS READ and check =
bit 7,
>> we must reset the device, other operation (eg.erase/program a locked b=
lock) can
>> also clear the bit 7 of status register.
>>
>> As we know the status register can be refreshed, if we do some operati=
on to trigger it,
>> for example if we do erase/program operation to one block that is lock=
ed, then READ STATUS,
>> the bit 7 of READ STATUS will be 0 indicate the device in write protec=
t, then if we do
>> erase/program operation to another block that is unlocked, the bit 7 o=
f READ STATUS will
>> be 1 indicate the device is not write protect.
>> Suppose we checked the bit 7 of READ STATUS is 0 then judge the WP# is=
 low (write protect),
>> but in this case the WP# maybe high if we do erase/program operation t=
o a locked block,
>> so we must reset the device if we want to check the WP# low or high th=
rough STATUS READ and
>> check bit 7.
>=20
> Have you observed a failure this patch fixes or what is your motivation=

> to send this patch?

A $CUSTOMER send me in private a fix needed for the micron NAND chip
found his Phytec board or a board they derived from it. I noticed that
the fix is in mainline Linux, too and I decided to cherry pick it into
barebox.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--UKSpGluZnMB0Bg1avKFqsJHFd39X8qZkP--

--PSoj8pWiqoxJugNHkW8neffAFbSwp9zmk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEENrCndlB/VnAEWuH5k9IU1zQoZfEFAlvtLxwACgkQk9IU1zQo
ZfEbIAf9Hl6TPChrqw83AANSL4dpc827rqH8TCxdW4mNDbefNmW81KLy0L36uoxj
LCZ98c2xh5KuF/iBEz4njlDVJ43d7G6NTZYg2OTqgkN3YJFu91GoPmyI74idD9zH
arB/BeXGRhKMCvMQu/rzkmKMqzqjbWdRFeZLDudwgibWTsTYlu9aBor/g6CFTT1m
CL6O/TwyGP8Gz9ywwYI0se+fQ/ycWvqPcw7jrosviGiFg+/HhIPRAll2fyzVCC5k
4Uey5rkWeRJAwgLxFr0OeHofgd/nSLpw6xjXgrhYhyDjVkP1GGDFQJRItaP1Zf8K
5HaDdW/0NsUOxT3ELtHTlEZNtB8LBg==
=fL4K
-----END PGP SIGNATURE-----

--PSoj8pWiqoxJugNHkW8neffAFbSwp9zmk--


--===============7335890697963897640==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7335890697963897640==--
