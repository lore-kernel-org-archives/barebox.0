Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8nO-0007SQ-7N
 for barebox@lists.infradead.org; Tue, 03 Dec 2019 14:04:56 +0000
References: <20191202102449.23535-1-jbe@pengutronix.de>
 <20191202130736.xgs53nadr5uvokea@pengutronix.de>
 <fa5ac462-27f0-d9c5-e771-1c6775616f05@pengutronix.de>
 <c2d8530aa1da0e5e8e7ae950fe445b200776667f.camel@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <c141e85b-4da6-f33e-559c-52706ebb4cf4@pengutronix.de>
Date: Tue, 3 Dec 2019 15:04:45 +0100
MIME-Version: 1.0
In-Reply-To: <c2d8530aa1da0e5e8e7ae950fe445b200776667f.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3444066839773473329=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] HABv4: remove useless error message
To: jbe@pengutronix.de, Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3444066839773473329==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="cS7ZOBuWDHKrmbYGddZsrVjBveVNduYRQ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--cS7ZOBuWDHKrmbYGddZsrVjBveVNduYRQ
Content-Type: multipart/mixed; boundary="y56I1alGtra2aRPt8Y22ufwVqjh2a5nRn";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: jbe@pengutronix.de, Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <c141e85b-4da6-f33e-559c-52706ebb4cf4@pengutronix.de>
Subject: Re: [PATCH 1/2] HABv4: remove useless error message
References: <20191202102449.23535-1-jbe@pengutronix.de>
 <20191202130736.xgs53nadr5uvokea@pengutronix.de>
 <fa5ac462-27f0-d9c5-e771-1c6775616f05@pengutronix.de>
 <c2d8530aa1da0e5e8e7ae950fe445b200776667f.camel@pengutronix.de>
In-Reply-To: <c2d8530aa1da0e5e8e7ae950fe445b200776667f.camel@pengutronix.de>

--y56I1alGtra2aRPt8Y22ufwVqjh2a5nRn
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

On 12/2/19 3:30 PM, Juergen Borleis wrote:
> Am Montag, den 02.12.2019, 14:24 +0100 schrieb Marc Kleine-Budde:
>> On 12/2/19 2:07 PM, Roland Hieber wrote:
>>> On Mon, Dec 02, 2019 at 11:24:48AM +0100, Juergen Borleis wrote:
>>>> This change removes the stupid error message at the end of the gener=
ated
>>>
>>> I think there was some reason behind that code, so it is probably not=

>>> stupid, and you've run into an edge case that never happened before (=
at
>>> least I've never seen this on any of my boards when using HABv4).
>>
>> The last time, I've seen this messages was before implementing:
>>
>> 81e2b508e785 i.MX habv4: habv4_get_status(): display warning events, t=
oo
>>
>> So Roland is probably right, you've hit a corner case, that's not
>> correctly handled.
>=20
> Hmmm:
>=20
> [=E2=80=A6]
> barebox 2019.11.0-20191121-3 #1 Thu Nov 21 14:28:21 UTC 2019
>=20
> Board: <some customer board>
> detected i.MX6 UltraLite revision 1.2
> i.MX reset reason WDG (SRSR: 0x00000010)
> i.MX6 UltraLite unique ID: xxxxxxxxxxxxxxxx
> HABv4: Status: Operation failed (0x33)
> HABv4: Config: Non-secure IC (0xf0)
> HABv4: State: Non-secure state (0x66)
> HABv4: -------- HAB failure Event 0 --------
> HABv4: event data:
> HABv4:  db 00 08 42  33 22 0a 00
> HABv4: Status: Operation failed (0x33)
> HABv4: Reason: Invalid address: access denied (0x22)
> HABv4: Context: Logged in hab_rvt.authenticate_image() (0x0a)
> HABv4: Engine: Select first compatible engine (0x00)
> HABv4: -------- HAB failure Event 1 --------
> HABv4: event data:
> HABv4:  db 00 14 42  33 0c a0 00
> HABv4:  00 00 00 00  80 00 04 00
> HABv4:  00 00 00 20
> HABv4: Status: Operation failed (0x33)
> HABv4: Reason: Invalid assertion (0x0c)
> HABv4: Context: Event logged in hab_rvt.assert() (0xa0)
> HABv4: Engine: Select first compatible engine (0x00)
> HABv4: -------- HAB failure Event 2 --------
> HABv4: event data:
> HABv4:  db 00 14 42  33 0c a0 00
> HABv4:  00 00 00 00  80 00 04 20
> HABv4:  00 00 00 01
> HABv4: Status: Operation failed (0x33)
> HABv4: Reason: Invalid assertion (0x0c)
> HABv4: Context: Event logged in hab_rvt.assert() (0xa0)
> HABv4: Engine: Select first compatible engine (0x00)
> HABv4: -------- HAB failure Event 3 --------
> HABv4: event data:
> HABv4:  db 00 14 42  33 0c a0 00
> HABv4:  00 00 00 00  80 00 10 00
> HABv4:  00 00 00 04
> HABv4: Status: Operation failed (0x33)
> HABv4: Reason: Invalid assertion (0x0c)
> HABv4: Context: Event logged in hab_rvt.assert() (0xa0)
> HABv4: Engine: Select first compatible engine (0x00)
> HABv4: ERROR: Recompile with larger event data buffer (at least 8 bytes=
)
> [=E2=80=A6]
>=20
> barebox 2019.11.0-20191126-1 #1 Wed Nov 27 10:19:22 UTC 2019
>=20
> Board: <some customer board>
> detected i.MX6 UltraLite revision 1.2
> i.MX reset reason POR (SRSR: 0x00000001)
> i.MX6 UltraLite unique ID: xxxxxxxxxxxxxxxx
> HABv4: Status: Operation failed (0x33)
> HABv4: Config: Secure IC (0xcc)
> HABv4: State: Trusted state (0x99)
> HABv4: -------- HAB failure Event 0 --------
> HABv4: event data:
> HABv4:  db 00 14 42  33 22 33 00
> HABv4:  00 00 00 55  02 1d 01 08
> HABv4:  00 00 00 04
> HABv4: Status: Operation failed (0x33)
> HABv4: Reason: Invalid address: access denied (0x22)
> HABv4: Context: Event logged in hab_rvt.check_target() (0x33)
> HABv4: Engine: Select first compatible engine (0x00)
> HABv4: ERROR: Recompile with larger event data buffer (at least 20 byte=
s)
> [=E2=80=A6]
>=20
>>> The code goes back until the first incarnaction of HABv4 in commit
>>> 29abc10d44c2 - Marc, do you still know more details why it was done t=
his
>>> way?
>>
>> This was part of the patches I picked up from fsl, see commit message
>> for more details:
>>
>> 29abc10d44c2 habv4: add High Assurance Boot v4
>>
>> Albeit giving an incorrect error message, it showed that there were
>> warnings events on the new mx6 silicon revisions that were not handled=

>> before 81e2b508e785.
>=20
> Hmm, 81e2b508e785 does not match the documented API and breaks the repo=
rt. It
> was fixed by e7c33540d0c092c28b227d4b7602cef8ab203ef3 later on.
>=20
> But also with e7c33540d0c092c28b227d4b7602cef8ab203ef3 the query relate=
d to this
> error message was changed to index 0 as well. And now, if at least one =
event is
> in the  buffer, this error message will always be printed. Before
> e7c33540d0c092c28b227d4b7602cef8ab203ef3 it was (most of the time) neve=
r be
> printed, because it tries once again to query an index which was alread=
y the
> cause to leave the loop before.
> And let me guess: you saw the error message, because your event buffer =
contained
> one failure and two warnings...

I think there is just one warning in the buffer:

> HABv4: Status: Operation completed with warning (0x69)
> HABv4: Config: Secure IC (0xcc)
> HABv4: State: Trusted state (0x99)
> HABv4: ERROR: Recompile with larger event data buffer (at least 36 byte=
s)

The barebox producing that output is missing both patches:

81e2b508e785 i.MX habv4: habv4_get_status(): display warning events, too
e7c33540d0c0 i.MX: HABv4: Reset index variable after error type

The question is, do we know why we see this error message? I don't have
good feeling when we remove it, because it's annoying and we don't
understand why we see it.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |


--y56I1alGtra2aRPt8Y22ufwVqjh2a5nRn--

--cS7ZOBuWDHKrmbYGddZsrVjBveVNduYRQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEmvEkXzgOfc881GuFWsYho5HknSAFAl3ma34ACgkQWsYho5Hk
nSAUVAf9HRgd5yO4MBs9Tjpaa/AHunhO0JMtTz/6SsfPzVKeQ+cR333VYSzGGMVa
BMs7zIpWDox4QeOtdoemhpJ820ihxN5pHsjInukxnvfa0YmP8KVHXAZA26Dn4AoD
/J7ODAPKHwdo171UgIvT5y0AzNJkk+wsBeXZfNu54Z4Cty+Ikl7oDGbucAEjWuVr
MFXvWLkCaGLuIvVd5Ty4kSUNpz3R1N1+9z+YK10Qp8NSJiV8Q9Zu2YoK0QySp4pC
aHd6SGDzh8LeQ6xrNeYUVmSjKCgF/A/YJr4MfdyiVpfpdxuwU3eHdwjlnyXYjUBY
8q84oYy5vW0vMK2gJ+mBOS+/vlXAiQ==
=N/uN
-----END PGP SIGNATURE-----

--cS7ZOBuWDHKrmbYGddZsrVjBveVNduYRQ--


--===============3444066839773473329==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3444066839773473329==--
