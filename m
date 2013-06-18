Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uoshh-0003E6-0p
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 09:59:57 +0000
Message-ID: <51C02F82.6040406@ti.com>
Date: Tue, 18 Jun 2013 12:59:30 +0300
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
MIME-Version: 1.0
References: <20130409132917.GX1568@game.jcrosoft.org>
 <1365706897.4136.24.camel@mars> <1370207222.5021.0.camel@lovely>
 <1371069946.25992.104.camel@mars>
 <B2329465-02EF-41CF-8B29-5C7A8BDFB349@jcrosoft.com>
 <1371163239.4055.180.camel@mars> <20130614062910.GA10743@x61s.8.8.8.8>
 <1371194628.3655.1.camel@lws-weitzel> <1371197742.3873.8.camel@mars>
 <20130614114312.GG27130@game.jcrosoft.org>
 <20130617161800.GI27130@game.jcrosoft.org> <51C00F29.1060601@ti.com>
 <1371542995.4055.12.camel@mars>
In-Reply-To: <1371542995.4055.12.camel@mars>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7964843404053373731=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v6] omap4-fb: add driver
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

--===============7964843404053373731==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="----enig2GPNPQQGXMNGXQTWCWRBR"

------enig2GPNPQQGXMNGXQTWCWRBR
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 18/06/13 11:09, Christoph Fritz wrote:
> Hi Tomi
>=20
> On Tue, 2013-06-18 at 10:41 +0300, Tomi Valkeinen wrote:
>> On 17/06/13 19:18, Christoph Fritz wrote:
>>> This patch adds omap4 display controller support.
>>
>> I haven't been following the discussions about this patch, so maybe
>> these have been covered:
>>
>> OMAP2/3/4/5 all have very similar DSS. Why did you go for omap_4_-fb
>> driver, not omap-fb driver?
>=20
> I'm currently only having an omap4 board here. But I could rename the
> driver to the more generic name "omap-fb" and explain in the KCONFIG
> that it currently only covers omap4 devices.
>=20
> So we could go from there up to all other OMAP devices. Okay?

That sounds good to me.

 Tomi



------enig2GPNPQQGXMNGXQTWCWRBR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQIcBAEBAgAGBQJRwC+CAAoJEPo9qoy8lh71+tAP/2ac/cv7h6T2bM5fwRWSfqWb
ep15hqL6ca6HrF/EJtqQvh5zLcvtRWI14H2K9nTw/b6Kng08D1zkcnBdGjsa17JF
oJCBZ9p6nTPOEW4TuafG/CfxDQPN9U4dtNABTknMIJp5nkPHECk/8yED9uIABTK9
xAP9hMHwFiHubqJpMupf2hzQeZAa4uCjPokamB0WSZL6bkrPGxuo3IEML3gFs04r
go1jkXlBFtgMM/rIZjATQmXvU4ri8eewAP5Z/rIZxi6NDwxZQTcTN7sWtX4Kucz6
hB69HsKCTxJhPb21rfmLQY/MI0hh90eozh2X/KX7XIFdn/4JX+17YpdVBKWDdCVe
9YxaUfRoDCVU88xna4mMnZ4qKzQ/zhcgrwHCFvFVlDqlcAj85VCtx9sK0jY0meiU
ChxQeljWLRHNmqtHCTbWWh3nsMEDTTuCSVfh8A5TdxsKiUTHvbxZdwpSwyVnvxsm
RwLvHp0GaqFeM4DAUaQFFa+okEHmTXsKHh9pP7o48GgALdXpgfIboyrKP2H4+NX+
4Aar0d2r8RkeBBYZOM5yL3g6TbF75uo5dx0KjKRQzdfMveq90ZYZ1zkrssbmafSK
qLyKRMjlUbSIHikUGQvP8/6Gs1WZXuHnH4X+T09pMR+dmbblkRkwyz9+FRgsubDt
WEsphxJDSyTHrmZNglUn
=hea9
-----END PGP SIGNATURE-----

------enig2GPNPQQGXMNGXQTWCWRBR--


--===============7964843404053373731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7964843404053373731==--
