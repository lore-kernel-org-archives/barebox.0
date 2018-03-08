Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1etwLa-0000Md-DZ
 for barebox@lists.infradead.org; Thu, 08 Mar 2018 14:16:44 +0000
References: <20180308110515.29574-1-o.rempel@pengutronix.de>
 <20180308110515.29574-6-o.rempel@pengutronix.de>
 <1520516969.31759.115.camel@pengutronix.de>
From: Oleksij Rempel <fishor@gmx.net>
Message-ID: <cd46083c-123e-8ec9-015b-cd121c87434b@gmx.net>
Date: Thu, 8 Mar 2018 15:16:19 +0100
MIME-Version: 1.0
In-Reply-To: <1520516969.31759.115.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3811955564697058299=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 6/6] watchdog: add watchdog poller
To: =?UTF-8?Q?Jan_L=c3=bcbbe?= <jlu@pengutronix.de>, Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3811955564697058299==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="mfUjxyDeo2jAKNrOA7uurhev4gFeeuO8i"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--mfUjxyDeo2jAKNrOA7uurhev4gFeeuO8i
Content-Type: multipart/mixed; boundary="NU1PeyZDNeKRAnINNhltsmoqyf6UWz0CN";
 protected-headers="v1"
From: Oleksij Rempel <fishor@gmx.net>
To: =?UTF-8?Q?Jan_L=c3=bcbbe?= <jlu@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <cd46083c-123e-8ec9-015b-cd121c87434b@gmx.net>
Subject: Re: [PATCH v1 6/6] watchdog: add watchdog poller
References: <20180308110515.29574-1-o.rempel@pengutronix.de>
 <20180308110515.29574-6-o.rempel@pengutronix.de>
 <1520516969.31759.115.camel@pengutronix.de>
In-Reply-To: <1520516969.31759.115.camel@pengutronix.de>

--NU1PeyZDNeKRAnINNhltsmoqyf6UWz0CN
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

thank you for review.

Am 08.03.2018 um 14:49 schrieb Jan L=C3=BCbbe:
> Hi Oleksij,
>=20
> On Thu, 2018-03-08 at 12:05 +0100, Oleksij Rempel wrote:
>> In some cases it is practical to supervise as match as possible of
> s/match/much/
>> barebox execution with watchdog (or multiple watchdogs). This
>  ^ the                  ^ a
>> patch provide async poller for watchdog core framework which can
>               ^-s an
>> be enabled by user and store this configuration to nv.
>                ^the           ^-s
>=20
> Also, does this patch make the poller support required for using
> watchdogs? It unconditionally calls the poller_* functions.
>=20
> Also, it should be documented explicitly, that this will cause barebox
> to keep triggering the watchdog, even when it drops to the shell after
> a boot error. This makes it unsuitable for unattended use.

I would prefer to use controlled reboot over uncontrolled watchdog reset.=

For example it would be better to have boot and fail strategy. In case
of network boot, it would be better to retry download in some time and
not cause watchdog reset. If retry count exceeded then some thing should
be done. It can be power off, reboot, fall back to CLI.

The reason for controlled reboot is the fact that the reset impact (or
Reset Sensitivity) is different for every product and source of reset.

This example is take from MiniRISC EZ4021-FC documentation:
				Soft				TAP Ctrl
Module			Reset	Reset	PrRst	ERst	TRST	Reset
CPU			yes	yes	yes	no	no	no
CP0			yes	yes	yes	no	no	no
ICCi			yes	yes	yes	no	no	no
DCC			yes	yes	yes	no	no	no
BIU			yes	yes	yes	no	no	no
MMU			yes	no	no	no	no	no
MDU			yes	yes	yes	no	no	no
EJTAG iface:
- DMA/CPU Acc		yes	yes	yes	yes	yes	yes
  logic=09
- Protocol engine	yes	no	no	yes	yes	yes
- Breakpoint		yes	no	no	yes	no	no
- PC trace yes no no yes no no


Most Atheros/QCA WiSoCs will not reset complete SoC even with watchdog
triggered reset.


> I'd prefer to make this optional at compile time.
>=20
>>
>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>> ---
>>  drivers/watchdog/wd_core.c | 54
>> ++++++++++++++++++++++++++++++++++++++++------
>>  include/watchdog.h         |  4 ++++
>>  2 files changed, 52 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
>> index 3162dd59c..6f1cadaf8 100644
>> --- a/drivers/watchdog/wd_core.c
>> +++ b/drivers/watchdog/wd_core.c
>> @@ -31,6 +31,16 @@ static const char *watchdog_name(struct watchdog
>> *wd)
>>  	return "unknown";
>>  }
>> =20
>> +static int _watchdog_set_timeout(struct watchdog *wd, unsigned
>> timeout)
>> +{
>> +	if (timeout > wd->timeout_max)
>> +		return -EINVAL;
>> +
>> +	pr_debug("setting timeout on %s to %ds\n",
>> watchdog_name(wd), timeout);
>> +
>> +	return wd->set_timeout(wd, timeout);
>> +}
>> +
>>  static int watchdog_set_cur(struct param_d *param, void *priv)
>>  {
>>  	struct watchdog *wd =3D priv;
>> @@ -41,6 +51,37 @@ static int watchdog_set_cur(struct param_d *param,
>> void *priv)
>>  	return 0;
>>  }
>> =20
>> +static void watchdog_poller_cb(void *priv);
>> +
>> +static void watchdog_poller_start(struct watchdog *wd)
>> +{
>> +	_watchdog_set_timeout(wd, wd->timeout_cur);
>> +	poller_call_async(&wd->poller, 500 * MSECOND,
>> +			watchdog_poller_cb, wd);
>> +
>> +}
>> +
>> +static void watchdog_poller_cb(void *priv)
>> +{
>> +	struct watchdog *wd =3D priv;
>> +
>> +	if (wd->poller_enable)
>> +		watchdog_poller_start(wd);
>> +}
>> +
>> +static int watchdog_set_poller(struct param_d *param, void *priv)
>> +{
>> +	struct watchdog *wd =3D priv;
>> +
>> +
>> +	if (wd->poller_enable)
>> +		watchdog_poller_start(wd);
>> +	else
>> +		poller_async_cancel(&wd->poller);
>> +
>> +	return 0;
>> +}
>> +
>>  int watchdog_register(struct watchdog *wd)
>>  {
>> =20
>> @@ -63,6 +104,10 @@ int watchdog_register(struct watchdog *wd)
>>  	dev_add_param_uint32(&wd->dev, "timeout_cur",
>> watchdog_set_cur, NULL,
>>  			&wd->timeout_cur, "%u", wd);
>> =20
>> +	poller_async_register(&wd->poller);
>> +	dev_add_param_bool(&wd->dev, "poller_enable",
>> watchdog_set_poller, NULL,
>> +			&wd->poller_enable, wd);
> Isn't the usage of the poller an implementation detail? Perhaps calls
> this something like "auto_trigger"?
>=20
>> +
>>  	list_add_tail(&wd->list, &watchdog_list);
>> =20
>>  	pr_debug("registering watchdog %s with priority %d\n",
>> watchdog_name(wd),
>> @@ -74,6 +119,8 @@ EXPORT_SYMBOL(watchdog_register);
>> =20
>>  int watchdog_deregister(struct watchdog *wd)
>>  {
>> +	poller_async_cancel(&wd->poller);
>> +	poller_async_unregister(&wd->poller);
>>  	unregister_device(&wd->dev);
>>  	list_del(&wd->list);
>> =20
>> @@ -109,12 +156,7 @@ int watchdog_set_timeout(unsigned timeout)
>>  	if (!wd)
>>  		return -ENODEV;
>> =20
>> -	if (timeout > wd->timeout_max)
>> -		return -EINVAL;
>> -
>> -	pr_debug("setting timeout on %s to %ds\n",
>> watchdog_name(wd), timeout);
>> -
>> -	return wd->set_timeout(wd, timeout);
>> +	return _watchdog_set_timeout(wd, timeout);
>>  }
>>  EXPORT_SYMBOL(watchdog_set_timeout);
>> =20
>> diff --git a/include/watchdog.h b/include/watchdog.h
>> index 2f1874c19..0db4263a3 100644
>> --- a/include/watchdog.h
>> +++ b/include/watchdog.h
>> @@ -13,6 +13,8 @@
>>  #ifndef INCLUDE_WATCHDOG_H
>>  # define INCLUDE_WATCHDOG_H
>> =20
>> +#include <poller.h>
>> +
>>  struct watchdog {
>>  	int (*set_timeout)(struct watchdog *, unsigned);
>>  	const char *name;
>> @@ -21,6 +23,8 @@ struct watchdog {
>>  	unsigned int priority;
>>  	unsigned int timeout_max;
>>  	unsigned int timeout_cur;
>> +	unsigned int poller_enable;
>> +	struct poller_async poller;
>>  	struct list_head list;
>>  };
>> =20



--NU1PeyZDNeKRAnINNhltsmoqyf6UWz0CN--

--mfUjxyDeo2jAKNrOA7uurhev4gFeeuO8i
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJaoUW5AAoJEHUDokh1SO+035oH/AmODu3T9nJ5AmrdRAVR6B4F
D8x+sf6xx3ofJ+pK14nVFXOWPG5MatfItYVfELsr4ROrhqpJ6JEU9S8M8fmuGpuA
ztpOCgOkD6X1Jl21IK4IPmPC6t9jLnCKywusfFP2DSJsVWJKINNJ0ep2jc/f1PxT
AWgUp2eiaORA9+/lF8/I8pwOHDCPv3+ifET/gHTpSVscQ+quNjde3yNkDDrNByyd
BT01tQBO7znpm8DnvzMR8d3ZhjDWD97Xiu4m1TJr2tDYEVemgdInugUbz1RsT0DL
V6DMPXUm2TKTLuZd2n/8steIV8wLuFUOTZnadIRPb39Max/2kDd+ETAg9dXJSLs=
=7VJY
-----END PGP SIGNATURE-----

--mfUjxyDeo2jAKNrOA7uurhev4gFeeuO8i--


--===============3811955564697058299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3811955564697058299==--
