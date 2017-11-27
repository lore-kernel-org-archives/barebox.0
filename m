Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x231.google.com ([2a00:1450:400c:c0c::231])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJMuo-0006VA-Qk
 for barebox@lists.infradead.org; Mon, 27 Nov 2017 17:09:56 +0000
Received: by mail-wr0-x231.google.com with SMTP id 55so10818863wrx.0
 for <barebox@lists.infradead.org>; Mon, 27 Nov 2017 09:09:32 -0800 (PST)
Received: from [192.168.10.55] (pd95b3e8c.dip0.t-ipconnect.de. [217.91.62.140])
 by smtp.gmail.com with ESMTPSA id x13sm5273828wre.65.2017.11.27.09.01.18
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Nov 2017 09:01:18 -0800 (PST)
From: Holger Birkmeyer <holger.birkmeyer@ebee.berlin>
Message-ID: <311f4693-85fc-e2bc-6e07-7714cd89c522@ebee.berlin>
Date: Mon, 27 Nov 2017 18:01:15 +0100
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1476244305545135610=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: ASIX USB dongle problem: asix_rx_fixup() Bad Header Length
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1476244305545135610==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="udDaREhv4JRIP4841Ag8Wqax3imi2U746"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--udDaREhv4JRIP4841Ag8Wqax3imi2U746
Content-Type: multipart/mixed; boundary="4Bep58ieTpaGueUPP3GGWMxRDbMqmTW1R";
 protected-headers="v1"
From: Holger Birkmeyer <holger.birkmeyer@ebee.berlin>
To: barebox@lists.infradead.org
Message-ID: <311f4693-85fc-e2bc-6e07-7714cd89c522@ebee.berlin>
Subject: ASIX USB dongle problem: asix_rx_fixup() Bad Header Length

--4Bep58ieTpaGueUPP3GGWMxRDbMqmTW1R
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Dear all,

I am struggling to get networking up and running on my Atmel at91sam9260-=
ek.

I am trying to use an ASIX USB dongle. I got pretty far. Here is the
console log:

=2E..snip...

barebox 2017.11.0-gdf1d493-dirty #50 Mon Nov 27 17:20:57 CET 2017

=2E..snip...

Board: Atmel at91sam9260-ek
AT91: Detected soc type: at91sam9260
AT91: Detected soc subtype: Unknown

=2E..snip...

usb: USB: scanning bus for devices...
usb: Bus 001 Device 001: ID 0000:0000 OHCI Root Hub
usb: Bus 001 Device 002: ID 0b95:7720 AX88772A
mdio_bus: miibus1: probed
eth1: got preset MAC address: 8c:ae:4c:eb:1f:83
usb: 2 USB Device(s) found

But as soon as I start using the device eth1, the following error
messages appear in the serial console and the dongle LEDs will turn dark.=


ping 8.8.8.8
eth1: 100Mbps full duplex link detected
eth1: asix_rx_fixup() Bad Header Length 0xffffffc3, offset 4
eth1: asix_rx_fixup() Bad Header Length 0xd526003c, offset 514
eth1: asix_rx_fixup() Bad Header Length 0x97001127, offset 4
eth1: asix_rx_fixup() Bad Header Length 0xffffffc3, offset 4
T ERROR: OHCI Unrecoverable Error, controller usb-ohci disabled
ERROR: sohci_submit_job failed with -32

Could anyone give me a hint, what to do?

Best regards,

Holger

--=20
Holger Birkmeyer
Ebee Smart Technologies GmbH
Torgauer Str. 12-15
10829 Berlin
Phone: +49 30 6098371-52
Mail: holger.birkmeyer@ebee.berlin



--4Bep58ieTpaGueUPP3GGWMxRDbMqmTW1R--

--udDaREhv4JRIP4841Ag8Wqax3imi2U746
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJaHETbAAoJEHk8IiZD620JL74P/j9qsmsf4RX6YyAGpWAiUnWN
1HNETKXt8Z9U1dlf2vLpSOyekWFuzI5csuKifn3lU4X/nAYj1e9AlEeikssbT82A
0LhqAMDpE3fY3VCYUdBJqDWFrGgVn32g9KJbvITc8UEUmy7zFMmWGOX3gNPLx647
zTjwu2O5eXSSVLpoQ4rkMdwKEmHvHWrxlJwtgw5G1D/BdERPXXvF0gfxPvSZoj+P
mYpcS8TYP52XPsBS7vg0E07dFfUm4AQEhjhoFnJtIPYsPKq9luggKpFzfLov4QFq
bJygC4EjD/1eE+25EVwo20mf1h53ZvgPytzWgFh33GkiG+w12vSSlZgJbT8/Iybn
+XYxsXjHfMrHycr2mELue7+Q/UVFwFzNMLGqVfPaTvozc39FQnbsQowE+UA0hqGc
t6PlOGvYRHbRzmr6uhVn6PTwed3c2djieEFYJqJGIXnsNZtqj8AR5MEwc95E4Q2O
3XavSqpPivM1ds9V6E91mcMAUFQ8VVGbKAJpCknxnFVUO+bQP/x9dFlH3Ea5BfMi
sQK09dw70bNx0znBfxp5HlL8Rv0WdiT7KoeMuxyfjlGgx1XAcyajJL//tFvQG1On
OYjju+zcOVYnGK3ZnT+ixueL6qVKf1paBeQ3jgWPCbS1rJCMfa/rC9JagSCvd+GZ
28BJOdtaJ/w01uVDz7AA
=FWm4
-----END PGP SIGNATURE-----

--udDaREhv4JRIP4841Ag8Wqax3imi2U746--


--===============1476244305545135610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1476244305545135610==--
