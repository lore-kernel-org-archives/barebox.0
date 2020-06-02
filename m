Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg5cZ-0004RG-M8
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 12:02:22 +0000
Date: Tue, 2 Jun 2020 14:02:15 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20200602120215.GZ31450@pengutronix.de>
References: <20200529125122.8561-1-m.grzeschik@pengutronix.de>
 <81baec3b23d148e9085bb73b28c52dd1f9ba818f.camel@lynxeye.de>
MIME-Version: 1.0
In-Reply-To: <81baec3b23d148e9085bb73b28c52dd1f9ba818f.camel@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0368262078697815382=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: MXS: duckbill: set duart to serial0
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org


--===============0368262078697815382==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ggEtdcIX3XIOBw6T"
Content-Disposition: inline


--ggEtdcIX3XIOBw6T
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 29, 2020 at 03:56:53PM +0200, Lucas Stach wrote:
>Am Freitag, den 29.05.2020, 14:51 +0200 schrieb Michael Grzeschik:
>> In the imx28.dtsi the serial0 is set to auart0 which is not the one
>> used on the duckbill. We set duart to serial0 so the console will be
>> properly set.
>
>If the aliases are the same in the Barebox and Linux DTs there should
>be no need to override the alias numbering in the individual board DTs.
>
>Is the Linux driver ignoring the alias, or what is the issue being
>fixed here?

The duart (debugging uart) is completely missing in the aliases list.
The first set serial alias in dts/src/arm/imx28.dtsi is auart0, which
are the application uarts.

mgr

>> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
>> ---
>>  arch/arm/dts/imx28-duckbill.dts | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm/dts/imx28-duckbill.dts b/arch/arm/dts/imx28-
>> duckbill.dts
>> index 2a995a7938..299c33e270 100644
>> --- a/arch/arm/dts/imx28-duckbill.dts
>> +++ b/arch/arm/dts/imx28-duckbill.dts
>> @@ -4,6 +4,10 @@
>>  	chosen {
>>  		stdout-path =3D &duart;
>>  	};
>> +
>> +	aliases {
>> +		serial0 =3D &duart;
>> +	};
>>  };
>>
>>  &duart {
>
>

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--ggEtdcIX3XIOBw6T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAl7WP8MACgkQC+njFXoe
LGTM4RAAvTms6Iv/ap8txYWOOvLtOYWqHh1Upnbpp5WRGQ9gGPeQoOdPYh/vl7n3
HoQHT1CncZFaRYhzp61cFjtuJFiMZSAFP4+tvtOlPlr7T9c9eLPBf71iRy0Fmxbf
spgwVWRppDq03l33dVhblJzQ5Q/xxCS4+QwkDlfbx+3iwhaRqpzi/ZJaXRLKs10X
B7vuFJqyCP0MhoJAYLlGFeKRqY1tXU2ObRpJZPxgB09c0m3e0zHN/JVH82u3Glqp
6Si6wL4MMYofkHUVjO1xpCOnWzr/JtvdYa37wQF1/aB/adyktOujpPiKvsIDsynY
bR/GqPK+RGWyZ2LzBn96DGFfEjH+RMCCh4ZYrodnlMFTR7K1IuYsc3/6D39jeqtJ
/IxWGsEAWmH5v+IEVUt734wf4zKaqRkRdWBjG3waw9rPwk44q/YRoAlLgRq7zoEP
HSLxXxj32mBbjJd53bpeBW0LVURntC5dNRhPSCBgTLAd1dCq+KJW8WyH+La2L4jo
eJcRU0UaF8sThWOMnF3N0fg9HEDqBWSNn23t//h5yTfi7bjyHDl9N0OoahgcPWlP
w6vwdGrxx99teAZBeep5LKneW5qGQjkP/xtyILydjhRJ3aLY/KFjZ00AZRHx1spC
YpH9dEYM1rR9eqa+eYDFbZm0CdXlMVk6BmV8TVCop+VJdBDQHD0=
=PgKp
-----END PGP SIGNATURE-----

--ggEtdcIX3XIOBw6T--


--===============0368262078697815382==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0368262078697815382==--
