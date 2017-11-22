Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHWus-0001Lj-CA
 for barebox@lists.infradead.org; Wed, 22 Nov 2017 15:26:24 +0000
References: <1511294675-14438-1-git-send-email-linux@rempel-privat.de>
 <20171122055253.GA27325@ravnborg.org>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <ababcf41-3dd5-515d-5970-bd558a6ffb34@rempel-privat.de>
Date: Wed, 22 Nov 2017 16:25:59 +0100
MIME-Version: 1.0
In-Reply-To: <20171122055253.GA27325@ravnborg.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9004179595427217660=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 1/3] watchdog: add ar9344-wdt driver
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============9004179595427217660==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="nr7pssuCxdp6m2aTuCWufk3Imoq3WOo8s"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--nr7pssuCxdp6m2aTuCWufk3Imoq3WOo8s
Content-Type: multipart/mixed; boundary="B0e1rxwqVAf1MWl29UP8jvNClbA1jK5CR";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org
Message-ID: <ababcf41-3dd5-515d-5970-bd558a6ffb34@rempel-privat.de>
Subject: Re: [PATCH v1 1/3] watchdog: add ar9344-wdt driver
References: <1511294675-14438-1-git-send-email-linux@rempel-privat.de>
 <20171122055253.GA27325@ravnborg.org>
In-Reply-To: <20171122055253.GA27325@ravnborg.org>

--B0e1rxwqVAf1MWl29UP8jvNClbA1jK5CR
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Hi Sam,

thank you for review. Next version is on the way.

Am 22.11.2017 um 06:52 schrieb Sam Ravnborg:
> Hi Oleksij.
>=20
> nitpick mode..
>=20
> 	Sam
>=20
> On Tue, Nov 21, 2017 at 09:04:33PM +0100, Oleksij Rempel wrote:
>> this driver was developed and tested on QCA AR9344 WiSoC
>   ^ Capital T
>> but it may work on most know Atheros/QCA WiSoCs.
>                           ^known
>=20
>>
>> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
>> ---
>>  drivers/watchdog/Kconfig      |   6 ++
>>  drivers/watchdog/Makefile     |   1 +
>>  drivers/watchdog/ar9344_wdt.c | 136 +++++++++++++++++++++++++++++++++=
+++++++++
>>  3 files changed, 143 insertions(+)
>>  create mode 100644 drivers/watchdog/ar9344_wdt.c
>>
>> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
>> index 83b6528..1f04c7f 100644
>> --- a/drivers/watchdog/Kconfig
>> +++ b/drivers/watchdog/Kconfig
>> @@ -10,6 +10,12 @@ menuconfig WATCHDOG
>> =20
>>  if WATCHDOG
>> =20
>> +config WATCHDOG_AR9344
>> +	bool "QCA AR9344"
>> +	depends on SOC_QCA_AR9344
>> +	help
>> +	  Add support for watchdog on the QCA AR9344 SoC.
>> +
>>  config WATCHDOG_DAVINCI
>>  	bool "TI Davinci"
>>  	depends on ARCH_DAVINCI
>> diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
>> index a3b2667..c607f75 100644
>> --- a/drivers/watchdog/Makefile
>> +++ b/drivers/watchdog/Makefile
>> @@ -1,4 +1,5 @@
>>  obj-$(CONFIG_WATCHDOG) +=3D wd_core.o
>> +obj-$(CONFIG_WATCHDOG_AR9344) +=3D ar9344_wdt.o
>>  obj-$(CONFIG_WATCHDOG_DAVINCI) +=3D davinci_wdt.o
>>  obj-$(CONFIG_WATCHDOG_OMAP) +=3D omap_wdt.o
>>  obj-$(CONFIG_WATCHDOG_MXS28) +=3D im28wd.o
>> diff --git a/drivers/watchdog/ar9344_wdt.c b/drivers/watchdog/ar9344_w=
dt.c
>> new file mode 100644
>> index 0000000..1f44604
>> --- /dev/null
>> +++ b/drivers/watchdog/ar9344_wdt.c
>> @@ -0,0 +1,136 @@
>> +/*
>> + *  AR9344 Watchdog driver
>> + *
>> + *  Copyright (C) 2017 Oleksij Rempel <linux@rempel-privat.de>
>> + *
>> + *  This program is free software; you can redistribute it and/or mod=
ify it
>> + *  under  the terms of the GNU General  Public License as published =
by the
>> + *  Free Software Foundation;  either version 2 of the License, or (a=
t your
>> + *  option) any later version.
>> + *
>> + */
>> +
>> +#include <common.h>
>> +#include <errno.h>
>> +#include <init.h>
>> +#include <io.h>
>> +#include <linux/clk.h>
>> +#include <of.h>
>> +#include <reset_source.h>
>> +#include <watchdog.h>
>> +
>> +#define AR9344_WD_REG_CTRL		0x00
>> +#define AR9344_WD_CTRL_LAST_RESET	BIT(31)
>> +#define AR9344_WD_CTRL_ACTION_MASK	3
>> +#define AR9344_WD_CTRL_ACTION_NONE	0	/* no action */
>> +#define AR9344_WD_CTRL_ACTION_GPI	1	/* general purpose interrupt */
>> +#define AR9344_WD_CTRL_ACTION_NMI	2	/* NMI */
>> +#define AR9344_WD_CTRL_ACTION_FCR	3	/* full chip reset */
>> +
>> +#define AR9344_WD_REG_TIMER		0x04
>> +
>> +#define to_ar9344_wd(h) container_of(h, struct ar9344_wd, wd)
>> +
>> +struct ar9344_wd {
>> +	struct watchdog		wd;
>> +	void __iomem		*base;
>> +	struct clk		*clk;
>> +	struct device_d		*dev;
>> +};
>> +
>> +static int ar9344_watchdog_set_timeout(struct watchdog *wd, unsigned =
timeout)
>> +{
>> +	struct ar9344_wd *priv =3D (struct ar9344_wd *)to_ar9344_wd(wd);
> Is this cast necessary when container_of is used?
> I did not think, but I think not.
>=20
>> +	u32 val, ctrl, rate, max_timout;
>> +
>> +	rate =3D clk_get_rate(priv->clk);
>> +	max_timout =3D U32_MAX / rate;
>> +
>> +	if (timeout > max_timout) {
>> +		dev_err(priv->dev, "timeout value out of range: %d > %d\n",
>> +			timeout, max_timout);
>> +		return -EINVAL;
>> +	}
>> +
>> +	if (timeout) {
>> +		ctrl =3D AR9344_WD_CTRL_ACTION_FCR;
>> +		val =3D timeout * rate;
>> +	} else {
>> +		ctrl =3D AR9344_WD_CTRL_ACTION_NONE;
>> +		val =3D U32_MAX;
>> +	}
>> +
>> +	dev_dbg(priv->dev, "%s: %d, timer:%x, ctrl: %x \n", __func__,
>> +		timeout, val, ctrl);
>> +
>> +	iowrite32be(val, priv->base + AR9344_WD_REG_TIMER);
>> +	iowrite32be(ctrl, priv->base + AR9344_WD_REG_CTRL);
>> +
>> +	return 0;
>> +}
>> +
>> +static void ar9344_watchdog_detect_reset_source(struct ar9344_wd *pri=
v)
>> +{
>> +	u32 val =3D readw(priv->base + AR9344_WD_REG_CTRL);
>> +
>> +	if (val & AR9344_WD_CTRL_LAST_RESET)
>> +		reset_source_set(RESET_WDG);
>> +
>> +	/* else keep the default 'unknown' state */
>> +}
>> +
>> +static int ar9344_wdt_probe(struct device_d *dev)
>> +{
>> +	struct resource *iores;
>> +	struct ar9344_wd *priv;
>> +	int ret;
>> +
>> +	priv =3D xzalloc(sizeof(struct ar9344_wd));
>> +	iores =3D dev_request_mem_resource(dev, 0);
>> +	if (IS_ERR(iores)) {
>> +		dev_err(dev, "could not get memory region\n");
>> +		return PTR_ERR(iores);
> priv is not released is this error situation.
>=20
>> +	}
>> +
>> +	priv->base =3D IOMEM(iores->start);
>> +	priv->wd.set_timeout =3D ar9344_watchdog_set_timeout;
>> +	priv->wd.dev =3D dev;
>> +	priv->dev =3D dev;
>> +
>> +	dev->priv =3D priv;
>> +
>> +	ar9344_watchdog_detect_reset_source(priv);
>> +
>> +	priv->clk =3D clk_get(dev, NULL);
>> +	if (WARN_ON(IS_ERR(priv->clk))) {
> dev_err - to log what is wrong?
>=20
>> +		ret =3D PTR_ERR(priv->clk);
>> +		goto on_error;
>> +	}
>> +
>> +	clk_enable(priv->clk);
>> +
>> +	ret =3D watchdog_register(&priv->wd);
>> +	if (ret)
>> +		goto on_error;
>> +
>> +	return 0;
>> +
>> +on_error:
>> +	free(priv);
>> +	return ret;
>> +}
>> +
>> +static __maybe_unused struct of_device_id ar9344_wdt_dt_ids[] =3D {
>> +	{
>> +		.compatible =3D "qca,ar9344-wdt",
>> +	}, {
>> +		/* sentinel */
>> +	}
>> +};
>> +
>> +static struct driver_d ar9344_wdt_driver =3D {
>> +	.name   =3D "ar9344-wdt",
>> +	.probe  =3D ar9344_wdt_probe,
>> +	.of_compatible =3D DRV_OF_COMPAT(ar9344_wdt_dt_ids),
>> +};
>> +device_platform_driver(ar9344_wdt_driver);
>> --=20
>> 2.7.4
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox


--=20
Regards,
Oleksij


--B0e1rxwqVAf1MWl29UP8jvNClbA1jK5CR--

--nr7pssuCxdp6m2aTuCWufk3Imoq3WOo8s
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iF4EAREIAAYFAloVlwcACgkQHwImuRkmbWmKUAD/RwkiI46RJsF/WFlXIBcB+N0L
gBLF6Xjj0SbW1ExRJusBAJFgmH+YHN9G16EVTVHXlnk3VhdckcFaqT+4RvpeeoBv
=qZmo
-----END PGP SIGNATURE-----

--nr7pssuCxdp6m2aTuCWufk3Imoq3WOo8s--


--===============9004179595427217660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9004179595427217660==--
