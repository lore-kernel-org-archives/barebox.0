Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-db3lp0083.outbound.protection.outlook.com
 ([213.199.154.83] helo=emea01-db3-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViM1i-0006sl-Dz
 for barebox@lists.infradead.org; Mon, 18 Nov 2013 10:25:55 +0000
Message-ID: <5289EB17.1030802@groupe-cahors.com>
Date: Mon, 18 Nov 2013 11:25:27 +0100
From: Mathieu Anquetin <mathieu.anquetin@groupe-cahors.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9118035520161121102=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Lowlevel questions
To: barebox@lists.infradead.org

--===============9118035520161121102==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature";
	boundary="niPEtJ58ievSsoVE11CArgLpcsXaoEOD6"

--niPEtJ58ievSsoVE11CArgLpcsXaoEOD6
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

I am currently trying to port Barebox to a new ARM-based machine and I
am facing some questions concerning low level initialization (before
relocation to RAM). Reading the header files, I came across 3 functions
that may be of interest during startup but I can't find an example of
them being called, they are :
    - board_init
    - dram_init
    - board_init_lowlevel

AFAIK, every other board in the barebox tree defines functions that
resemble those but never implements them directly. Can someone confirm
that this is the case ? Should I do the same or is it a new
implementation that future boards may use ?

Thanks in advance,
--=20

*Mathieu ANQUETIN*

/Software Engineer
/


Logo CAHORS Mail


CRDE
ZI des Grands Camps
46090 MERCUES
T=E9l. : +33 (0)5 65 30 38 27
*www.groupe-cahors.com*


*GROUPE CAHORS soutient le pacte mondial.*



--niPEtJ58ievSsoVE11CArgLpcsXaoEOD6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQJ8BAEBCgBmBQJSiesXXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ3QjJERkIzOEY2MUNDMUU1N0JFODdGMzYx
NEVCNTMyNzFBRTgxOTBFAAoJEBTrUyca6BkOnh8P/2fs8xZ+DMJNH65nY12UanQ1
RYrvHx9qUZCpfklKVq566oXKAv932f533KnzTmbRzi5qipfoDO6pw2E1CKIvrqVY
HX5MZKYtniDH5D879cDucJ1EvythQvvyUBEsuzy+mSGbLnWd6zA/t+oYRKiLsqRk
6e9sNaux0LhLaDZr7DEmYFaLy/pmA0+7cgEjrVEYnVuPjGfqg4EwvL1Go3Eyfh8K
fWfkx2pudAcdLlru6Jfs0+Gvk4jHiGXsC4I+fwZR8WG0yox3gL4T83dgIxOiQNY8
r7sGeWKzjTHYF4UCSlza7BJG5Y0oMEn0YkzlOn8Uy+vwXHspvYmzdKr1Nun+oUVo
7g1gaCr9YLiQnft19OUwjofjK5ONCKpAOExfzWkmkRfkisQmbxKn6YdLy2lT84mZ
ejExXcvBhkmzQ/j2jBfbDPgaAiXz35LzhYqHN20VLPoIoqSLPL2tuM+KyHLHmmGN
e1/tR+g0JI0rSIshGf6ogzzZ4/RplNFXvh4BGfo5W5OF3h1IVFcvErh6AyXQfuQI
2NsLqPmzqR8SYm7Rohl8/2Ah3DwUlsHI6Nni09lNAw6GLoWq6PdA4cw8CaMqSnHL
jD4NRFMl3VhuuAaGu5fn7E0UmYCOh09ttr9xLw/F8YUR6Z+qvHZoZOAtCBod8gaX
VeiG5i20s3rwTk/2ptXf
=gaa6
-----END PGP SIGNATURE-----

--niPEtJ58ievSsoVE11CArgLpcsXaoEOD6--


--===============9118035520161121102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9118035520161121102==--
