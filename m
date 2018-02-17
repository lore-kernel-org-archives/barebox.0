Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns1.lah-a2.de ([84.19.186.99] helo=lah-a2.de)
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1emydr-000182-Lw
 for barebox@lists.infradead.org; Sat, 17 Feb 2018 09:18:49 +0000
References: <20180216073946.1120-1-s.hauer@pengutronix.de>
From: Andreas Schmidt <list@schmidt-andreas.de>
Message-ID: <075169cf-a231-eb73-427a-65c37b8d5465@schmidt-andreas.de>
Date: Sat, 17 Feb 2018 10:18:16 +0100
MIME-Version: 1.0
In-Reply-To: <20180216073946.1120-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0401910921039173489=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] net: cpsw: remove unnecessary mdiobus_scan()
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0401910921039173489==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="0EJkjNtS1ZPY4pZIT2cztf58BoKOzYxiA"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--0EJkjNtS1ZPY4pZIT2cztf58BoKOzYxiA
Content-Type: multipart/mixed; boundary="DUIcufg0do1E1FaDbCUtLilct3WyBDKVx";
 protected-headers="v1"
From: Andreas Schmidt <list@schmidt-andreas.de>
To: barebox@lists.infradead.org
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <075169cf-a231-eb73-427a-65c37b8d5465@schmidt-andreas.de>
Subject: Re: [PATCH] net: cpsw: remove unnecessary mdiobus_scan()
References: <20180216073946.1120-1-s.hauer@pengutronix.de>
In-Reply-To: <20180216073946.1120-1-s.hauer@pengutronix.de>

--DUIcufg0do1E1FaDbCUtLilct3WyBDKVx
Content-Type: multipart/mixed;
 boundary="------------9367275F9AC1F81517175A85"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9367275F9AC1F81517175A85
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Sascha,


On 16.02.2018 08:39, Sascha Hauer wrote:
> No need to call mdiobus_scan() manually. it is called from
> phy_device_connect() already in cpsw_open() which does all
> the magic to connect a network device with its phy.
You added call of mdiobus_scan to check if the slave has valid phy, I gue=
ss.
Or I misunderstood your commit: b2568de82d62c18fd5dc8affb0e4dc050403c498
net: cpsw: ignore error on slave setup ?

I guess it should work in follow:
If slave has a valid phy (determined by mdiobus_scan), slave will be
continue to register (call eth_register),
if not, cpsw_clave_setup function will exit with an error and next slave
will be try to register.

In case of a real phy (not fixed-link), I guess, it make sense to check
is phy work and exists.
If we not check phy, cpsw register eth device with maybe invalid phy.
(maybe never added in oftree)
Later, while calling cpsw_open, it maybe will be failed, because phy not
exists.

IHMO, it is a complex way checking if phy exists and is valid, but I
know no easier way to do that.

If I'm wrong and this part not needed anymore, this would make
my patch ([PATCH] net: cpsw: fix probe with fixed-link) shorter and
easier :)

[...]

Regards,
Andreas

--------------9367275F9AC1F81517175A85
Content-Type: application/pgp-keys;
 name="0xBEA6DEA0.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="0xBEA6DEA0.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
v9nRtbJIJQ=3D=3D
=3DAjyc
-----END PGP PUBLIC KEY BLOCK-----

--------------9367275F9AC1F81517175A85--

--DUIcufg0do1E1FaDbCUtLilct3WyBDKVx--

--0EJkjNtS1ZPY4pZIT2cztf58BoKOzYxiA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJah/NfAAoJEP7gphG+pt6gWeEP+gO1bVUWv36GdXl7Iy9wbdCp
inzQ/cuqdbLrH/K2dL6J8YttbQowvaGFQCKYFA77A+VilTJiZA3nspajoPEEJ1zt
euqqbwn8wS5OWoSaFw9CGIqtw5RgoFjT2uOQFBNE80pSRchUp5pDHoaoQsTsP7rx
RmZvJ982qbqE3t5TvjMuVBarBrNjw14XmDIWAWrYdUFd83lsX9JaGe6k9zIxRs+6
diTGQ90wx+oxGoU/rH08iRTRp7UIHtWj6hwH6Vow+PBxH9dpiVRG/4+HQfqRO3KK
+Z8X7jVJG63PfQR82lDP08tbiTjM97gOGCUu5WF6opf+8Z8ya0eRJU1RKIQE5nYV
eveqzNKtRRVUv7WZqzQ1XeNASRHlPyNYm7/vjKz9v8gKtKzlZyMWzeIYLuNJ90KG
i0D06alt9g1sBL+PLg/XcReO25vQyHW/fo88KzlhWQSuSasyS2RwLLD9qSseADPb
UQXJOEUnQqE01L01rUNDOPvrLfZFNLXfuiPGmGaQ0d8HJGmcy5uJ+PJBu2zNduq8
A7BKBXuhb/eyU1Uwk+nOun3X26ueR+U2Q0QLPDmD3C9VnLl9w9eAlHPz8hoWOq9U
qildZZowELLGBR1TWD6sxxUYS1Tjef9WYqNEPYUgxrOhHxGYCRM924G8wpBXxSxP
mcpCkduMoCRE2FpbW8fx
=VFZk
-----END PGP SIGNATURE-----

--0EJkjNtS1ZPY4pZIT2cztf58BoKOzYxiA--


--===============0401910921039173489==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0401910921039173489==--
