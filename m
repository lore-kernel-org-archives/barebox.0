Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dfWsR-00061a-Et
 for barebox@lists.infradead.org; Wed, 09 Aug 2017 19:42:49 +0000
References: <20170809041320.28874-1-gael.portay@savoirfairelinux.com>
 <0ec3c31c-1ede-6108-28bc-af15ab67d0f9@rempel-privat.de>
 <20170809185853.lvlar7vyder6supt@gportay>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <f5129a96-709e-da38-0453-78e424a3dc5d@rempel-privat.de>
Date: Wed, 9 Aug 2017 21:41:36 +0200
MIME-Version: 1.0
In-Reply-To: <20170809185853.lvlar7vyder6supt@gportay>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0087996609951813787=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] readline_simple: return -1 if getc fails
To: =?UTF-8?Q?Ga=c3=abl_PORTAY?= <gael.portay@savoirfairelinux.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0087996609951813787==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="oduCheJ9ajXHv3wQAtECk9K3pGdnNuPah"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--oduCheJ9ajXHv3wQAtECk9K3pGdnNuPah
Content-Type: multipart/mixed; boundary="t6OLbjedmLVfKfCLkUoftWcetdlOOasUl";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: =?UTF-8?Q?Ga=c3=abl_PORTAY?= <gael.portay@savoirfairelinux.com>
Cc: barebox@lists.infradead.org
Message-ID: <f5129a96-709e-da38-0453-78e424a3dc5d@rempel-privat.de>
Subject: Re: [PATCH 0/2] readline_simple: return -1 if getc fails
References: <20170809041320.28874-1-gael.portay@savoirfairelinux.com>
 <0ec3c31c-1ede-6108-28bc-af15ab67d0f9@rempel-privat.de>
 <20170809185853.lvlar7vyder6supt@gportay>
In-Reply-To: <20170809185853.lvlar7vyder6supt@gportay>

--t6OLbjedmLVfKfCLkUoftWcetdlOOasUl
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Am 09.08.2017 um 20:58 schrieb Ga=C3=ABl PORTAY:
> Hi,
>=20
> On Wed, Aug 09, 2017 at 08:05:57AM +0200, Oleksij Rempel wrote:
>> Am 09.08.2017 um 06:13 schrieb Ga=C3=ABl PORTAY:
>>> Dear maintainers,
>>>
>>> I came accross this issue when I was trying to add support for a new =
MIPS
>>> board.
>>
>> Just out of curiosity, what MIPS board are you working on? If it is no=
t
>> a secret :)
>>
>=20
> I am working on VoCore2[1]; it is a board based on a mediatek mt7628 CP=
U.
>=20
> I am doing this to learn myself how works barebox=20
>=20
> Offtopic: For now it is booting on a really really old version of u-boo=
t. I am
> able de boot barebox from u-boot. I had to hack the mips_disable_interr=
upts to
> remove the reset of flag ERL in CP0; but I don't know why yet. This fla=
g is
> supposed to be set when CPU reboots; but because I am running barebox f=
rom a the
> command go of u-boot, this flag is unset.
>=20
> Are you able to re-run barebox from barebox on your MIPS board?

Yes, usually i prefer to make a binaries wich are able to start from
RAM, Jtag and Flash. Currently we test if it is running from spi flash
adn skip most of the low level init:
https://github.com/olerem/barebox/blob/ar9344-2017.08.01.1/arch/mips/boar=
ds/tplink-mr3020/include/board/board_pbl_start.h#L29

On this board i decided to use SRAM for low level init testing:
https://github.com/olerem/barebox/blob/ar9344-2017.08.01.1/arch/mips/boar=
ds/tplink-wdr4300/include/board/board_pbl_start.h#L38

> 	.macro	mips_disable_interrupts
> 	.set	push
> 	.set	noreorder
> 	mfc0	k0, CP0_STATUS
> -	li	k1, ~(ST0_ERL | ST0_IE)
> +	li	k1, ~ST0_IE
> 	and	k0, k1
> 	mtc0	k0, CP0_STATUS
> 	.set	pop
> 	.endm
>=20
> For now, I have splitted mips_disable_interrupts into two macros. The s=
econd
> macro mips_reset_error_level checks if the ERL flag is armed before res=
etting it
> to 0.
>=20
> 	.macro	mips_reset_error_level
> 	.set	push
> 	.set	noreorder
> 	mfc0	k0, CP0_STATUS
> 	li	k1, ST0_ERL
> 	and	k1, k0
> 	bne	k1, zero, 1f
> 	li	k1, ~(ST0_ERL)
> 	and	k0, k1
> 	mtc0	k0, CP0_STATUS
> 1:	.set	pop
> 	.endm
>=20
> But I don't know if this is the right thing to do.
> =20
> [1]: https://www.indiegogo.com/projects/vocore2-4-coin-sized-linux-comp=
uter-with-wifi#/
>=20


--=20
Regards,
Oleksij


--t6OLbjedmLVfKfCLkUoftWcetdlOOasUl--

--oduCheJ9ajXHv3wQAtECk9K3pGdnNuPah
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF4EAREIAAYFAlmLZXAACgkQHwImuRkmbWmwuAD/YxfwrMOwXO2pzbWtTLNXMIIj
qGOgJBBwRGraXchvYeAA/AxYnZy0WJhu8E/A2ViltAtDKJQtJEmT8vrpyajsmHqG
=vf8i
-----END PGP SIGNATURE-----

--oduCheJ9ajXHv3wQAtECk9K3pGdnNuPah--


--===============0087996609951813787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0087996609951813787==--
