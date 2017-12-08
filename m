Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eNQi5-00070Z-BA
 for barebox@lists.infradead.org; Fri, 08 Dec 2017 22:01:35 +0000
Received: from [192.168.1.241] ([31.18.254.73]) by mail.gmx.com (mrgmx101
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MFPyK-1eKBUH2aiC-00EQMj for
 <barebox@lists.infradead.org>; Fri, 08 Dec 2017 22:56:05 +0100
References: <20171201112256.20196-1-s.hauer@pengutronix.de>
 <20171201112256.20196-16-s.hauer@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <05d17fa7-ec5e-961c-c52e-c3a3d60ee2ff@rempel-privat.de>
Date: Fri, 8 Dec 2017 22:56:04 +0100
MIME-Version: 1.0
In-Reply-To: <20171201112256.20196-16-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4637183366079265435=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 15/27] net: dhcp: rework
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4637183366079265435==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="apO3bSv9VDXHel5ncDxIkHx0fDmduTTJQ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--apO3bSv9VDXHel5ncDxIkHx0fDmduTTJQ
Content-Type: multipart/mixed; boundary="0OfJmEphK9w0PPlIim1nN1wH4CqBw5hdG";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <05d17fa7-ec5e-961c-c52e-c3a3d60ee2ff@rempel-privat.de>
Subject: Re: [PATCH 15/27] net: dhcp: rework
References: <20171201112256.20196-1-s.hauer@pengutronix.de>
 <20171201112256.20196-16-s.hauer@pengutronix.de>
In-Reply-To: <20171201112256.20196-16-s.hauer@pengutronix.de>

--0OfJmEphK9w0PPlIim1nN1wH4CqBw5hdG
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi.

Am 01.12.2017 um 12:22 schrieb Sascha Hauer:
> The DHCP code is a mess. It is not clear which options are sent to the
> server and which options are returned from the server. Also environment=

> variables are read from and written to all over the place.
>=20
> This patch cleans this up. There now is struct dhcp_req_param which is
> used for options sent to the server and struct dhcp_result which contai=
ns
> the values sent from the server. The values from the server are written=

> to the barebox variables in a single place. Also it's now possible to
> call the dhcp code without modifying barebox variables at all, storing
> the result only in the dhcp result struct.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/dhcp.c |  15 +-
>  include/dhcp.h  |  22 ++-
>  net/dhcp.c      | 532 ++++++++++++++++++++++--------------------------=
--------
>  3 files changed, 234 insertions(+), 335 deletions(-)

=2E......

> @@ -693,56 +516,122 @@ int dhcp(struct eth_device *edev, int retries, s=
truct dhcp_req_param *param)
>  			printf("T ");
>  			ret =3D bootp_request();
>  			/* no need to check if retries > 0 as we check if !=3D 0 */
> -			retries--;
> +			dhcp_param.retries--;
>  			if (ret)
>  				goto out1;
>  		}
>  	}
> =20
> -	if (dhcp_tftpname[0] !=3D 0) {
> -		IPaddr_t tftpserver =3D resolv(dhcp_tftpname);
> -		if (tftpserver)
> -			net_set_serverip_empty(tftpserver);
> -	}

Without this part tftp is not working in my network. On LEDE/OpenWrt
with web interface i can set tftp server and root path, which is done by
setting additional DHCP options:
66,192.168.1.100
17,192.168.1.100

Adding "54,192.168.1.100" to overwrite serverip is not working.

I'm not sure what is the proper way to fix it.
--=20
Regards,
Oleksij


--0OfJmEphK9w0PPlIim1nN1wH4CqBw5hdG--

--apO3bSv9VDXHel5ncDxIkHx0fDmduTTJQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJaKwp0AAoJEOKJofQ1GlGz958P/imZ0vL/EuJhN5bpzNG8C4Wm
0f0na1ZkcjZ6L9GxrhIeMbCSkCvCV4vSkxKIE/r9eQB3atQkphkz8jvhI4T42KPV
4liGMY5Cf6sLCNrHLQ3dEsypei3ChKkxSCnmbFVE6VoNVjHgtb+sFA6MMG+gFx8l
XMR+6Ej4QcJc/rFRkQcFWewrb8OpDkcurUiaFb12lCHRuUStIDwD+0TZOcsGFMuy
qQkIoc5A/d6ub5aaUP2P7iR1ucJmdp10lBLX5LO8Ro0gdNWeDNb5/9/+0a/Sx0DP
y+rFwPp9/GZsO49UM5cz0EmV6BlGMS00Ba0+fvcRb0GhSIyT3dYVwFvfCfjW+I8B
kusiUM971xNdkyantT5ynemqcS9rz2C/hoME5Pgpzd5W/Y5sABOYFZN3NfpYzWDx
Za24yVOyu+xOkem9f7BKBgDisHLaOhS/+4MFxd4Y5+syrzHZFTV6s9czHJnTdnHe
luF9ott10cto4cw6kjm0I85A5LBBfBY0VbXUA4Hg3uoW+NGgXIqHa3BnxdSK1ncL
DL2K6bzJKoJuwSa4CfA3wMDT9720H5tQtXrPhDFV2FHodqHSBIhd018Ugg8vokHQ
HM5EP88XCgx5abhLiyoTl7MRVZ4rb27nYTowqgNsaK/PsEo/iXCInZbHLq+q3NiI
6qSnmGKCBpsu9iULvVYI
=DMr/
-----END PGP SIGNATURE-----

--apO3bSv9VDXHel5ncDxIkHx0fDmduTTJQ--


--===============4637183366079265435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4637183366079265435==--
