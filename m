Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTfrH-0006PJ-F5
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 20:25:24 +0000
Message-ID: <4ECEA825.1050005@pengutronix.de>
Date: Thu, 24 Nov 2011 21:25:09 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <87ipm9yd88.fsf@free.fr> <20111124120400.GC27267@pengutronix.de>
 <87d3chxoxp.fsf@free.fr>
In-Reply-To: <87d3chxoxp.fsf@free.fr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3576258500267359962=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: ARM, MMU and IO space mapping
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============3576258500267359962==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigEDA8CEA72BEB2E66A918039F"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigEDA8CEA72BEB2E66A918039F
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 11/24/2011 09:09 PM, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
>> I remember Marc had some trouble with the mmu/cache implementation on
>> PXA. I don't know the details though. Maybe you have to dig through
>> the manuals/kernel code to find out the differences between the normal=

>> arm v5 and pxa.
>=20
> Ah, I know what happens now, and it's tricky.
> First of all, you're right, there's a flat uncached mapping, I was misl=
ed by
> the function name "create_section", without looking closely at it. I th=
ought
> it created the first section, not all the 4096 1MBytes section of a 4GB=

> address space.
> It would deserve a "create_sections" name, in plural form.
>=20
> Now, for the serial UDC not working, there comes the fun.
> What's happening is that I'm using a default environment, with the init=

> script in [1]. This script has an error somewhere.
> In barebox_startup(), we have :
>    if (!stat("/env/bin/init", &s)) {
>       run_command("source /env/bin/init", 0);
>=20
> And here is the trickery:
>  - in the NOMMU case, the run_command() returns, and the code continues=
 to the
>    eternal loop of run_shell(), which calls console.getc(), which calls=

>    poller(), which call the UDC poll method
>    =3D> the gadget does work
>    =3D> I have a console, hurray !
>=20
>  - in the MMU case, the run_command() never returns, and the poller met=
hod is
>    never called. I traced that with my leds.
>    =3D> the gadget does *not* work
>=20
> So the problem was not the IO mapping, but a difference in run_command(=
) between
> MMU and non-MMU config. Moreover, in non-MMU case, once my console is c=
onnected,
> I see a message :
>> running /env/bin/init...
>> syntax error
> I the MMU case, as the gadget doesn't work, I'm blind, so I can't reall=
y tell
> what is happening and which is the impact of MMU over run_command()...

As I said in my other mail, we had problems with the MMU turned on.
There is one patch fiddeling with the armv5 vs armv4 cache code, but
this is all very fragile. As Sascha pointed out, someone should have a
look at the kernel and figure out what are the differences between armv5
and an pxa270.

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigEDA8CEA72BEB2E66A918039F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk7OqCgACgkQjTAFq1RaXHM6xACggt3g9mfqMBaQlz4a+PBzhByQ
anMAn3/iQASwIT6tXsWWJ0NoHTxnuiGp
=hpBK
-----END PGP SIGNATURE-----

--------------enigEDA8CEA72BEB2E66A918039F--


--===============3576258500267359962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3576258500267359962==--
