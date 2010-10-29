Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PBlEB-0001ZH-Vy
	for barebox@lists.infradead.org; Fri, 29 Oct 2010 09:26:30 +0000
Message-ID: <4CCA9336.8030807@pengutronix.de>
Date: Fri, 29 Oct 2010 11:26:14 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <AANLkTimj3WiRQaeP+tQ7-AHy3WcVG0MKpwt5uNfo_cWf@mail.gmail.com>	<AANLkTim9C1gxiGNj3gyso0aqcM_r1qxf0M3dDCWDmMMO@mail.gmail.com>	<AANLkTikBmg33g-Uh=_fEtvkN6n6GZAi71Lc5tFm51yjJ@mail.gmail.com>	<201010291904.16717.marc@cpdesign.com.au>	<AANLkTikYV-vFVU-QF09yC-wzF5nSDmcy1rG0xz2WJLpj@mail.gmail.com>	<20101029083451.GB21232@tarshish>	<AANLkTim_NDWXcHj7oPuaTMymHKVtMZCnmCKwVkKuLFBJ@mail.gmail.com>	<4CCA8ADF.2020209@pengutronix.de>	<AANLkTi==CwV+WZZ5Mb=1+usVAheaEi11F+=KDf=drXQp@mail.gmail.com>	<4CCA8FE0.3080006@pengutronix.de>
	<AANLkTi=69fM38iyvP3VbwvYYqif7FfvTHCnyuzHuwpho@mail.gmail.com>
In-Reply-To: <AANLkTi=69fM38iyvP3VbwvYYqif7FfvTHCnyuzHuwpho@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1641791762=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: command bootu to start kernel
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1641791762==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigDED13B58E22F08AD4383DA42"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigDED13B58E22F08AD4383DA42
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 10/29/2010 11:21 AM, Belisko Marek wrote:
>>>> do you have a "MEM=3D32" on your command line?
>>> Well I add it but same result:
>>
>> BTW: It must be "mem=3D", in lowercase, but you did this.
>>
>> What I was meant to ask was, if you forget to add the "M" to "32".
>> Because with mem=3D32 you tell Linux just to use 32 bytes of memory. M=
aybe
>> your ATAGs are broken, Linux might not see the whole RAM or any if it.=


> yes it was typo I forgot put M after 32. Kernel now properly boot :).

How much RAM you you have? Adjust mem=3D accordingly.

> U-boot somehow
> add kernel this parameter? Because for u-boot I don't need to set this
> parameter.

Nope - u-boot and barebox set up this information in the ATAG list.
Seems something is broken with your ATAG list.

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigDED13B58E22F08AD4383DA42
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAkzKkzoACgkQjTAFq1RaXHPpswCffWWcZUdu2OTA+IdSEz+4pYPl
ISIAn0AKy27sk3lBwHD1Nrpo8hHSBR58
=2iNV
-----END PGP SIGNATURE-----

--------------enigDED13B58E22F08AD4383DA42--


--===============1641791762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1641791762==--
