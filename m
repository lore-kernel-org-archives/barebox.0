Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9wjG-0000h9-8Q
	for barebox@lists.infradead.org; Wed, 13 Apr 2011 09:51:19 +0000
Message-ID: <4DA5720E.7020601@pengutronix.de>
Date: Wed, 13 Apr 2011 11:51:10 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <4D9ED2EC.8070406@telemotive.de>	<20110408132127.GW7285@pengutronix.de>
	<4DA56CC1.6040904@gmx.de>
In-Reply-To: <4DA56CC1.6040904@gmx.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1993084491=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Update barebox on mmc without touching partition table
To: Thomas Mayer <tm.telemotive@gmx.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1993084491==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigD6A4A886AB880B2D6E83E27D"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigD6A4A886AB880B2D6E83E27D
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/13/2011 11:28 AM, Thomas Mayer wrote:
>>> to copy barebox to a mmc I use the command "dd if=3Dbarebox.bin
>>> of=3D/dev/sdb bs=3D512 seek=3D2 skip=3D2&&  sync". So I don't touch t=
he
>>> first 0x400 bytes with contains the partition table and everything
>>> is fine.
>>>
>>> But I want to write a little script to update barebox itself via
>>> tftp. So I create a partition "/dev/self0" (0x00000 to 0x40000) and
>>> update barebox with "tftp barebox.bin /dev/self0". The problem is
>>> that barebox write the first 0x400 bytes too and overwrite the
>>> partition table .
>>>
>>> Is there any way to "seek" and "skip" with barebox?
>> Not directly. What you can do is this:
>>
>> tftp barebox.bin
>> memcpy -s barebox.bin -d /dev/self0 512 0
> It's working, but I have to use "1024" instead of "512". Also I have to=

> change my partition init from
> "devfs_add_partition("disk0", 0x000000, 0x040000, PARTITION_FIXED,
> "self0");"
> to
> devfs_add_partition("disk0", 0x000400, 0x040000, PARTITION_FIXED, "self=
0");

what about using:

memcpy -s barebox.bin -d /dev/self0 1024 1024

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigD6A4A886AB880B2D6E83E27D
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk2lchIACgkQjTAFq1RaXHNQzQCeP4YHxw89naThHQ+Flx73gw2t
rnkAnRjnLxgEpbG3wcbc94XrgqP7U+pV
=HM5x
-----END PGP SIGNATURE-----

--------------enigD6A4A886AB880B2D6E83E27D--


--===============1993084491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1993084491==--
