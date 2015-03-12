Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVyC1-0003yv-Tv
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 08:10:12 +0000
Message-ID: <550149C2.6010808@pengutronix.de>
Date: Thu, 12 Mar 2015 09:09:38 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <20150312120541.2e7f1bc81056c1f28a20753f@gmail.com>
In-Reply-To: <20150312120541.2e7f1bc81056c1f28a20753f@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8994051062513724629=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: git fetch issue
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8994051062513724629==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Oi9D9NkCjriHKxvNA0HT7bASDU5AgaLOq"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Oi9D9NkCjriHKxvNA0HT7bASDU5AgaLOq
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/12/2015 09:05 AM, Antony Pavlov wrote:
> Hi All!
>=20
> I have a problem with git-fetch. Here is the log:
>=20
> antony@puro:~/barebox$ git remote show pengutronix | grep "Fetch URL"
>   Fetch URL: git://git.pengutronix.de/git/barebox.git
>=20
> antony@puro:~/barebox$ git fetch pengutronix
> remote: Counting objects: 1101, done.
> remote: Compressing objects: 100% (199/199), done.
> remote: Total 771 (delta 628), reused 672 (delta 555)
> Receiving objects: 100% (771/771), 131.67 KiB | 0 bytes/s, done.
> error: index-pack died of signal 7
> fatal: index-pack failed

Signal 7 is a Bus Error, maybe your local git repo is damaged or you
having a hardware problem. Make a copy of your git repo (using "cp" or
"tar") and try running "git fsck" on it.

I've just cloned from git://git.pengutronix.de/git/barebox.git using
git-2.1.4 without problems.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--Oi9D9NkCjriHKxvNA0HT7bASDU5AgaLOq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVAUnJAAoJECte4hHFiupUXKkQAKCX8CfRt3BS2gkfVKrJwTB8
Yny52OSkd43g8WKONv4cjGTqeNg9arSODJXEEBt7tVjjUBVQaiqcW/0we/SP6Bqr
98jtPKiAr77QGcsZ/LSyfVasQu4BQigQtSoTXxsoE1Wg1YwicUmmw07weieDi9XJ
h8P5ki6Go7ppwGxGbQL0x2J4MgoJjEZ+DNfl4ZVKwFe30fM3cKdE04hZZu55RUIx
17s0n0Sgo9BMZD/RdI1RrDisYzyZ1dcpdwL4va0R0rr9Qqq4LvR5OjT6l8wW+dPP
oN+2cc/XkPEB8gGsZZgpyT9P7ye1pNAFq9i4KX6S6ddsDhz7X83+U7YipPCq8ce0
bXSN564A/MhxHAQqtyNrxtBz2bUp3DVtTdokfShH5ysYF/X+yGnFk6IBZJ8WY8Lt
eGjQ05zrTk1AQzSuBeg78FW86+MM1xC4mhbnMKDHWj9uFQhiUp7cBMveWXm76j1u
OxGyyo+1Ts0dbFfrTGOu2zO4CwRkjXCPliAGL2SPKmoHr/yYvmrL/YVKoNHWdVxt
bw4elvMR53o8y4Fp4IzNzr8Ee75/vcF7b7DJ6xZPdgA40EBatXM07icGJns2CRT0
XRf6DkMwdeotxOmWfh1nTM3GbqE3ZO4/5ZDZpv14ST/oBclBsIScADX7IFCgEVmX
mL7Vld4mKR8vBMQthIF2
=WTl6
-----END PGP SIGNATURE-----

--Oi9D9NkCjriHKxvNA0HT7bASDU5AgaLOq--


--===============8994051062513724629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8994051062513724629==--
