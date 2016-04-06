Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1anjv2-0006IE-KC
 for barebox@lists.infradead.org; Wed, 06 Apr 2016 09:38:38 +0000
References: <20150617064250.GA2778@lws-weitzel2@phytec.de>
 <20150617090646.GI6325@pengutronix.de>
 <1459806291.24482.38.camel@ws-apr.office.loc>
 <20160405064930.GE9102@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <5704D8FE.7010401@pengutronix.de>
Date: Wed, 6 Apr 2016 11:38:06 +0200
MIME-Version: 1.0
In-Reply-To: <20160405064930.GE9102@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1689681528231722626=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox-state (dt-utils): dump-shell broken for state@0
To: Sascha Hauer <s.hauer@pengutronix.de>, Andreas Pretzsch <apr@cn-eng.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1689681528231722626==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="tTGdCq50xWHM7EiDcReSFls0nPOn6Wbmb"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--tTGdCq50xWHM7EiDcReSFls0nPOn6Wbmb
Content-Type: multipart/mixed; boundary="EQOhIOu8LpKSNjnrQn4WIbUBiRNJJ3GBA"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Andreas Pretzsch <apr@cn-eng.de>
Cc: barebox@lists.infradead.org
Message-ID: <5704D8FE.7010401@pengutronix.de>
Subject: Re: barebox-state (dt-utils): dump-shell broken for state@0
References: <20150617064250.GA2778@lws-weitzel2@phytec.de>
 <20150617090646.GI6325@pengutronix.de>
 <1459806291.24482.38.camel@ws-apr.office.loc>
 <20160405064930.GE9102@pengutronix.de>
In-Reply-To: <20160405064930.GE9102@pengutronix.de>

--EQOhIOu8LpKSNjnrQn4WIbUBiRNJJ3GBA
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04/05/2016 08:49 AM, Sascha Hauer wrote:
> +Cc mkl who wrote 6d58ca4
>=20
> On Mon, Apr 04, 2016 at 11:44:51PM +0200, Andreas Pretzsch wrote:
>> On Mi, 2015-06-17 at 11:06 +0200, Sascha Hauer wrote:
>>> On Wed, Jun 17, 2015 at 08:42:50AM +0200, Jan Remmet wrote:
>>>> Hello,
>>>> I'm working with barebox states and wonder if there is already a too=
l to access
>>>> states in eeprom from linux?
>>>> The states from a dtb backend should be easy to read. For raw there =
must be
>>>> looked under /proc/devicetree or a state kernel driver.
>>>
>>> Yes, there is such a tool here:
>>>
>>> git://git.pengutronix.de/git/tools/dt-utils.git
>>>
>>> The binary you'll need is barebox-state.
>>
>> barebox-state provides a command "--dump-shell" to dump the state
>> suitable for shell sourcing.
>> Essentially, it prints out variable=3Dvalue pairs.
>> So typical use would be a
>> 	eval `barebox-state --dump-shell`
>> somewhere in a shell script (incl. simple ones like busybox ash).
>>
>> Unfortunately, this breaks with indices in the state name, as @ is not=

>> escaped.
>> Tested with dt-utils v2015.10.0, but according to code this is the cas=
e
>> from v2015.05.0 up until master.
>>
>> As of commit 6d58ca4 "barebox-state: fix export of shell variables:",
>> the fixed prefix "STATE_" was replaced by the supplied state name.
>> Also in there, all '.' are replaced by '_' in the variable name. Not i=
n
>> the state name itself.
>>
>> The same would be necessary for (at least) '@', because it is invalid
>> also inside a shell variable name. As probably other chars, just I'm n=
ot
>> sure which might show up from the dts. So no premature patch from my
>> side.
>> Not only for the variable name, but also the state name itself.

I think the "@" is removed from the state name, isn't it? See
"state_convert_node_variable()":

>         /* strip trailing @<ADDRESS> */
>         short_name =3D xstrdup(node->name);
>         indexs =3D strchr(short_name, '@');
>         if (indexs)
>                 *indexs =3D 0;

>>
>> For clarification of the setup and behaviour, see below.
>>
>>
>> Now, question would be how to fix this.
>> Also replacing '@' by '_' might break existing users (e.g. when parsin=
g
>> from stdin or similar, instead of using shells eval command).
>> On the other hand, status quo breaks the "described" use of dump
>> _shell_ ...
>>
>> Talking about this, it might be also some idea to resurrect the old
>> behaviour of always printing 'STATE_' as prefix instead of the state
>> name from dts. Not sure if it's the best idea, or how to call such an
>> extra option, didn't think it through by now.
>> Just saying, as I will go this way here (as a hotfix) for my setup...
>>
>> Ideas, opinions ?
>=20
> I'm in favor for resurrecting the old 'STATE_' behaviour, but I don't
> know why Marc changed it. Maybe he has some more input.

We make use of more than one state partition in one shell script.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--EQOhIOu8LpKSNjnrQn4WIbUBiRNJJ3GBA--

--tTGdCq50xWHM7EiDcReSFls0nPOn6Wbmb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJXBNj/AAoJED07qiWsqSVqw0kH/RKLCue2uMgXWnUk2+93AchA
Lw7p7vbgNTKw6yiCRccCz2irJ3s9RBxzheIGJb75BsGNOFclb1UVZZXrPXP79V6l
UZh9Qi3MobvrFrLLUmnmlFqxv6Mbd6dbCMLgVIUdCf730O9fOnd0bG5UMZXKAMct
cJUd4q6yv3d20UZzfwhCtYC3f3snLXwwZ9hiakiDWO11HJk91AGaY0eNvAcTsNHK
EW1z5poS9YqqpKTELiGVxwfKxJa8JdFqj1OP6gMv3DPUiLM0fus3XUPfKaNw/oXD
EP23zxQuabfw+OnGtf1VLQ3xsBELPOammWaWLPIbSx10KY6QlnZn0t70kuPTBvo=
=8r6z
-----END PGP SIGNATURE-----

--tTGdCq50xWHM7EiDcReSFls0nPOn6Wbmb--


--===============1689681528231722626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1689681528231722626==--
