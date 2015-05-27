Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from secure11.t-systems.com ([46.29.101.1])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YxUWr-0006o4-UV
 for barebox@lists.infradead.org; Wed, 27 May 2015 06:09:27 +0000
From: Alexander Richter <Alexander.Richter@ATSonline.de>
Date: Wed, 27 May 2015 06:08:49 +0000
Message-ID: <D72B6FFF-645F-41CC-9B99-2ACE13B05BFC@atsonline.de>
References: <CABP==CLFeG59X3OyMxJrxTzWDg-Xm8dURb-k-JXu3as+pY5mKA@mail.gmail.com>
In-Reply-To: <CABP==CLFeG59X3OyMxJrxTzWDg-Xm8dURb-k-JXu3as+pY5mKA@mail.gmail.com>
Content-Language: de-DE
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3043335313986088851=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Programatically write in a file in the environnent with a hush
 command
To: Jean-Christophe BEGUE <begue.jc@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============3043335313986088851==
Content-Language: de-DE
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C37F4692-1549-4A6F-B2C6-7A649292018B";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_C37F4692-1549-4A6F-B2C6-7A649292018B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello,
> Am 26.05.2015 um 17:42 schrieb Jean-Christophe BEGUE =
<begue.jc@gmail.com>:
>=20
> Hello,
>=20
> I'm trying to pass a value from Barebox to the operating system, using
> the usreland command bareboxenv -l.
>=20
> My problem is : How should I write that status from my hush barebox =
script?
>=20
> echo $mystatus > /env/data/my_status_file
You can use the command nv to create non volatile shell variables. =
Don=E2=80=99t forget to save the Environment.
>=20
> The above command doesn't work as '>' is not implemented.
>=20
> I've the feeling that I'm missing something?
>=20
To access the new variable (/env/nv/foo.bar) from userspace, you can use =
the =E2=80=9Ebareboxenv=E2=80=9C tool

Alexander Richter

--Apple-Mail=_C37F4692-1549-4A6F-B2C6-7A649292018B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJVZV9xAAoJEMOrH03rJsFuJ60P/R8LhfYMcsqhn+/5dk5IdFum
Xo7SBR+ElG44Sln0YVdike+QWH5GT8NqqsqDrqUl2BETq3//io1xB5BIF34OICZE
5Yy4kqZ+bO83UatSebxjrHWptKPVT+oTLRURkS9flW/EA+0jzX8wp8LwrKrmLJw3
W/WIJoxJo9S8pVadh240PfurDr9m/4BW+HODNVP/Mun+RNOmqesFCeLMFgsBiY0u
uHksDKZw/dcrPSxDd5yTVZ7OWvh3eUxAnVneAmTmcWUxhYwyyKYWVRG/mPoYdkkz
p+gjaDx1zYAqMOwcqtTcI0mXoT/LuD+RwkQ2WMlF4SKFNo7B83Yep4kwQdViqChC
GcPW5th5e/2HNmvv5fh9vXcbCy2IDRHFBi+SKS2nyMPpNatXMkE/MZGdu7VR8YRa
j72N3E6fc7495i9U/r2MqrsRsIcCHc0fejT0oqAMqUI+qxtybTbD2kj/lMGtItWs
eIIVm7kRW2qak8gcUENM+YBOAMsfZ6sHmZlPBwg/gnD2I3icoXi7JKVaPeRzl+o4
DG1mTupVGc09wKYcBfDiGAfCRIduTWS9tR4kw7RKIAythjjwLtF9ex5jcBVxrkGl
Z3N/9i8fKpNfbLGHAe7Rt4E+F9j7i1ogMq60dsPsShNdZHwVUS38ohgLAOEsGU7B
yeQqeRvwCI0CQ1eS3WQH
=T0Nf
-----END PGP SIGNATURE-----

--Apple-Mail=_C37F4692-1549-4A6F-B2C6-7A649292018B--


--===============3043335313986088851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3043335313986088851==--
