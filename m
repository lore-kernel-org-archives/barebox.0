Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-13.arcor-online.net ([151.189.21.53])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1arWEd-0006Dx-3g
 for barebox@lists.infradead.org; Sat, 16 Apr 2016 19:50:28 +0000
Received: from mail-in-16-z2.arcor-online.net (mail-in-16-z2.arcor-online.net
 [151.189.8.33])
 by mx.arcor.de (Postfix) with ESMTP id 3qnPHg2WX6z32FT
 for <barebox@lists.infradead.org>; Sat, 16 Apr 2016 21:15:11 +0200 (CEST)
Received: from mail-in-14.arcor-online.net (mail-in-14.arcor-online.net
 [151.189.21.54])
 by mail-in-16-z2.arcor-online.net (Postfix) with ESMTP id 52FCF213E55
 for <barebox@lists.infradead.org>; Sat, 16 Apr 2016 21:15:11 +0200 (CEST)
Received: from [192.168.178.23] (p549ADD59.dip0.t-ipconnect.de [84.154.221.89])
 (Authenticated sender: giorgio.nicole@arcor.de)
 by mail-in-14.arcor-online.net (Postfix) with ESMTPA id 3qnPHg0wc1z90b1
 for <barebox@lists.infradead.org>; Sat, 16 Apr 2016 21:15:10 +0200 (CEST)
From: Giorgio <giorgio.nicole@arcor.de>
Message-ID: <76f44565-7af7-107a-5b0e-acda33ac5321@arcor.de>
Date: Sat, 16 Apr 2016 21:15:04 +0200
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8991979919383835364=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: wrong count argument to erase()
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8991979919383835364==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="VOa22EK4xMPHCgpdD6jk4tnRHNPgD7ndk"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--VOa22EK4xMPHCgpdD6jk4tnRHNPgD7ndk
Content-Type: multipart/mixed; boundary="me0MGqxIgLBh6CeCxQSGtpdIbovRKAQiD"
From: Giorgio <giorgio.nicole@arcor.de>
To: barebox@lists.infradead.org
Message-ID: <76f44565-7af7-107a-5b0e-acda33ac5321@arcor.de>
Subject: wrong count argument to erase()

--me0MGqxIgLBh6CeCxQSGtpdIbovRKAQiD
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

I'm using barebox on an embedded system with an imx6 cpu, a nor and
a nand flash.

I recently updated the barebox to v2016.04.0 and noticed that the
command 'saveenv' was surprisingly quick and actually didn't work.

After a bit of debugging I could track the problem down to a call to the
function erase() within 'common/environment.c':

int envfs_save(const char *filename, const char *dirname, unsigned flags)=

{
=2E..
	ret =3D erase(envfd, ~0, 0);

	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it =
*/
	if (ret && errno !=3D ENOSYS && errno !=3D EOPNOTSUPP) {
		printf("could not erase %s: %s\n", filename, errno_str());
		goto out;
	}
=2E..

The function prototype is:

int erase(int fd, loff_t count, loff_t offset)

in particular the second argument, count, is a signed long long.

Now when calling erase() with a count of ~0 the function will cast it
to -1 instead of to a 'very big' number and actually never erase
anything.

I think in these cases it is better to use cpp macros like LLONG_MAX
or change the type of count to a size_t.

giorgio


--me0MGqxIgLBh6CeCxQSGtpdIbovRKAQiD--

--VOa22EK4xMPHCgpdD6jk4tnRHNPgD7ndk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlcSjz4ACgkQYqbc2h3T5VBjMQCfS3IquAcGp5brmja+RJrGCqLg
AWQAmgP/+2QVv01Wm76vx5eZpC5gyWA4
=3a+Y
-----END PGP SIGNATURE-----

--VOa22EK4xMPHCgpdD6jk4tnRHNPgD7ndk--


--===============8991979919383835364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8991979919383835364==--
