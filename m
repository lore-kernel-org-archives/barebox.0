Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXPpy-0007Tc-0m
 for barebox@lists.infradead.org; Tue, 08 Apr 2014 06:48:51 +0000
Received: from mail622.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 66661FFA615
 for <barebox@lists.infradead.org>; Tue,  8 Apr 2014 08:48:02 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <A5DB3EAC-DA3A-4BF2-8C21-7C57B5CF9AAE@reverze.net>
Date: Tue, 8 Apr 2014 14:47:52 +0800
Message-Id: <7333B557-37B1-4CEF-8084-2AF713055F24@jcrosoft.com>
References: <20140405230029.876959920a802447aeb9720f@gmail.com>
 <A5DB3EAC-DA3A-4BF2-8C21-7C57B5CF9AAE@reverze.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7898396535182076875=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: RFC: barebox-x86 as a coreboot payload
To: Michel Stam <michel@reverze.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


--===============7898396535182076875==
Content-Type: multipart/signed; boundary="Apple-Mail=_D4579A71-07C9-444F-865B-0E027820A4CF"; protocol="application/pgp-signature"; micalg=pgp-sha512


--Apple-Mail=_D4579A71-07C9-444F-865B-0E027820A4CF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Apr 6, 2014, at 10:32 PM, Michel Stam <michel@reverze.net> wrote:

> Hello Antony,
>=20
> Interesting idea- I wonder if its difficult given that U-boot is =
already supported?
>=20
> Personally I have no experience with coreboot, the systems I test on =
are industrial x86 SBCs with their own BIOS. I suppose it is oossible, =
maybe we can borrow code from u-boot.
>=20

Should be fairly easy

> Another thing along the sane lines that crossed my mind is EFI support =
for barebox, I wonder if theres interest in that?

EFI yes as ARM will use UEFI too

>=20
> Next on my list is keyboard/VGA, maybe VESA support if I have the =
time. I would like to see a console, possibly a framebuffer driver. No =
idea how difficult that will be.
>=20

good idea

> Cheers,
>=20
> Michel Stam
>=20
>=20
>> On 5 apr. 2014, at 21:00, Antony Pavlov <antonynpavlov@gmail.com> =
wrote:
>>=20
>> Hi!
>>=20
>> I have seen your recent activity on barebox-x86 improvements.
>>=20
>> IMHO using barebox-x86 as a coreboot payload can be beneficial for =
barebox promotion.
>>=20
>> Please see http://www.coreboot.org/Payloads
>>=20
>> --=20
>> Best regards,
>>  Antony Pavlov
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


--Apple-Mail=_D4579A71-07C9-444F-865B-0E027820A4CF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJTQ5uYAAoJEOrjwV5ZMRf2CzQQAMTqwXgFxF94vtaFr90s/E6g
nWiBDu6OPoRCRzeY9prUtQ2a8Cq/98Jw5rvsm0XxvWrI4MNADFURymZLjvxOOHLR
hNuWoRmS27aLG4cbOPD3EaeTEdKcqBDCFag9Satio/oh0u5vb1NuNf7Vuo2H0CmB
YefTD72kUcEv045FYZiUBBoPADH2pmyhAZS+1/T3UFPWnuSBe0PaO7kB+P8hEHHR
fEBeMTa3k/qAJnU73L8PZZqA3TMDRVbJSfRIciNUcs3VK3jnIKEOJCqY/F9N9PXv
3Z0cL+cdxR2rMcF82jHlEyNcug4FehdbSnJAL46Nk5S6QK4v8Pe021EVkco9tLYn
IJk1zJ/pE9Id4yvJrlX5kbuqPduiU3hR6QF2w6wtwvg8GH5UqdKvXZfJoME18Wo4
hemnH7Y10UpmpFeexPbndXybMyD+KctEgui7AJmxJak1bHC2feRy1Kjg7DIMFBSJ
HaOgUeUDwfKwlqLwWx/17xBCvs565H53hH6yMSP4yVoKnHCmvnH51Dys5li2TgKH
jVXM8OR65HFCbJFTlVpLSw249LtzSf8dvf6O7FCUMAUTY8OuY3VsAt4BR/bf8+2/
VEOttSlzbGb5p10FxaHWHpD7H1tin34PeoZ7Uz7xlvJFOYj3abR0lpGNiwOoguEb
RYjxZjBluTgfrSQWMUSQ
=HjnH
-----END PGP SIGNATURE-----

--Apple-Mail=_D4579A71-07C9-444F-865B-0E027820A4CF--


--===============7898396535182076875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7898396535182076875==--
