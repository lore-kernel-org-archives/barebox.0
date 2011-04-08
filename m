Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8CE6-0000YM-6F
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 13:59:54 +0000
Message-ID: <4D9F14D8.3020402@pengutronix.de>
Date: Fri, 08 Apr 2011 15:59:52 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
	<1302257948-18174-3-git-send-email-mkl@pengutronix.de>
	<20110408133230.GB13978@game.jcrosoft.org>
In-Reply-To: <20110408133230.GB13978@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0551732322=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/7] defaultenv: boot: add backwards compatibility for
	kernel_loc=net
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, sha@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0551732322==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig5399F4130B95EE04E6B75CD5"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig5399F4130B95EE04E6B75CD5
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/08/2011 03:32 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 12:19 Fri 08 Apr     , Marc Kleine-Budde wrote:
>> Since commit 9eac282024c55fc13970189d6ace61f884917538, the boot script=

>> doesn't understand kernel_loc=3Dnet anymore. This patch adds backwards=

>> compatibility so that the kernel is loaded from tftp as before.
>>
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> ---
> please wait I'm switching boot to getopt and make more frendly

sounds interesting

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig5399F4130B95EE04E6B75CD5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk2fFNgACgkQjTAFq1RaXHMSxACeLEMln256n2YYfuFYJCS31Gcz
rIkAn32ZDFRaaJu9AZ/i2KOMha6enrOD
=zqOF
-----END PGP SIGNATURE-----

--------------enig5399F4130B95EE04E6B75CD5--


--===============0551732322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0551732322==--
