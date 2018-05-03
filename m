Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns2.lah-a2.de ([84.19.187.99] helo=lah-a2.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fE9pi-0002Is-Af
 for barebox@lists.infradead.org; Thu, 03 May 2018 08:43:24 +0000
Received: from [192.168.0.25] (p5B019D47.dip0.t-ipconnect.de [91.1.157.71])
 by lah-a2.de (Postfix) with ESMTPSA id 3E318408232A
 for <barebox@lists.infradead.org>; Thu,  3 May 2018 10:40:13 +0200 (CEST)
References: <20180429160125.3193-1-mail@schmidt-andreas.de>
 <1525271572.17782.13.camel@pengutronix.de>
From: Andreas Schmidt <mail@schmidt-andreas.de>
Message-ID: <9451da5b-d585-34cc-9d4d-c2645329b760@schmidt-andreas.de>
Date: Thu, 3 May 2018 10:42:49 +0200
MIME-Version: 1.0
In-Reply-To: <1525271572.17782.13.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8059861930417068793=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] blspec: add checking of optional key machine-id
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8059861930417068793==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="loSoMcrN4jS6Kd1PSvQfQGV4iPFrY3Nrv"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--loSoMcrN4jS6Kd1PSvQfQGV4iPFrY3Nrv
Content-Type: multipart/mixed; boundary="TaVncybeeIhSZviGSmk2zegjLPWupCUAx";
 protected-headers="v1"
From: Andreas Schmidt <mail@schmidt-andreas.de>
To: barebox@lists.infradead.org
Message-ID: <9451da5b-d585-34cc-9d4d-c2645329b760@schmidt-andreas.de>
Subject: Re: [PATCH] blspec: add checking of optional key machine-id
References: <20180429160125.3193-1-mail@schmidt-andreas.de>
 <1525271572.17782.13.camel@pengutronix.de>
In-Reply-To: <1525271572.17782.13.camel@pengutronix.de>

--TaVncybeeIhSZviGSmk2zegjLPWupCUAx
Content-Type: multipart/mixed;
 boundary="------------E6AB0D9D7E81E0BACF0FD8BC"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------E6AB0D9D7E81E0BACF0FD8BC
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hallo Jan,


On 02.05.2018 16:32, Jan L=C3=BCbbe wrote:
> On Sun, 2018-04-29 at 18:01 +0200, Andreas Schmidt wrote:
>> I guess, for such an use case Bootloader Spec specify "machine-id"
>> key. This patch implement the support for machine-id key.
> The way I read https://www.freedesktop.org/wiki/Specifications/BootLoad=

> erSpec/ is that the "machine-id" field should contain the ID from
> /etc/machine-id, which is basically a UUID:
> "machine-id shall contain the machine ID of the OS /etc/machine-id.
> This is useful for boot loaders and applications to filter out boot
> entries, for example to show only a single newest kernel per OS, or to
> group items by OS, or to maybe filter out the currently booted OS in
> UIs that want to show only other installed operating systems."

I read this part in same way. I think, the patch isn't in conflict with
that. And, yes, you're right we would use it not exact in this way.

Out /etc/machine-id is building dynamically and would be the same as bare=
box
choose one. (Same way to set global.boot.machine_id and content of
/etc/machine-id)
But, all our FW would have different machine-id in dependent of devices
and not on
OS.

The spec says: "for example to show only ...". So I guess, it is not
hard requirement.
Was I'm wrong?

> Your use-case sound like you'd need a way to add a more specific DT
> board compatible at runtime.=20

We need a decision witch DT has to be load at runtime. But they are all
compatible with the barebox DT. We have only one barebox DT for all devic=
es.

> Then the existing selection logic would
> handle your case as well.

Ohh ... ok. And could you explain please, who we could do that? Because,
all our DTs are compatible with barebox DT and barebox would choose simpl=
e
the first one and boot it. Or is using of Bootloader Spec isn't right
way, to solve
this issue?

Regards,
Andreas


--------------E6AB0D9D7E81E0BACF0FD8BC
Content-Type: application/pgp-keys;
 name="0xFEE0A611BEA6DEA0.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="0xFEE0A611BEA6DEA0.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
v9nRtbJIJQ=3D=3D
=3DAjyc
-----END PGP PUBLIC KEY BLOCK-----

--------------E6AB0D9D7E81E0BACF0FD8BC--

--TaVncybeeIhSZviGSmk2zegjLPWupCUAx--

--loSoMcrN4jS6Kd1PSvQfQGV4iPFrY3Nrv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJa6suJAAoJEP7gphG+pt6gfMEP/RTxWvsrPIqyGX7UxhT4yzuF
7HxWbdvmtgtXYMW+Rr4qi1Yg0iwgOTJiovInTdE2D23zNr2ZbbLoiS6sPi6fqCW3
pnd3Ma90wYHbfke3BfQ0BFCq4H3R+ct5bWLlIOwuV5tdSRKIJwZEO6xr+ewuWiKf
hg+itRU9zPSfw0fj9BZzX9jnU5YodxqBGwGLQFrDTT31Ojxc99Zc8bRAraTAkxFm
20U18yFVeBuZvodGIH7Cia/WVMXeXY1SeCtVA4vKVIElqwuU1FjAE1HQNB8Ae9U+
wbFED4r+rejwaM//36O9ZYSRpLnQuIhVPkyNYc7FZGV0CEt2WyTmNX/VlGJ5HNeI
BagSfPk/gfL2EWn1OyyFinXMNctkzqDqO95cJtOnz481BBi4v85Bb5RdG0c4qlI+
Hd4pGT9BJgQTtr09v+5lc6PU8ct6YO0zEfM8+j0CtSg2jJLc08rfZeZZbxVdSUdH
is3VQgGcqvFvy8QzekdN5WF9F7K8NdSYZTBBBFKHZfiJH/bGDAFPhlWQzSmYYiZ5
7QL5DeSl0JdRCDKeW6WrtlucxXCSqzrWFTmCWMMgSggpXCqfBOAogUb6+Be1by92
9H9Q+HXOgc6LN8/nlGYKPHkSQESafAzaOmZUyh3sod/NVj9aeY1MIwx2LXk7D4yz
89OvYLAn5PAPhGHjAQo3
=FoZZ
-----END PGP SIGNATURE-----

--loSoMcrN4jS6Kd1PSvQfQGV4iPFrY3Nrv--


--===============8059861930417068793==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8059861930417068793==--
