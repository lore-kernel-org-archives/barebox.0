Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f170.google.com ([209.85.217.170])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6fUw-0005JV-FR
 for barebox@lists.infradead.org; Mon, 14 Jul 2014 12:36:52 +0000
Received: by mail-lb0-f170.google.com with SMTP id 10so2819252lbg.1
 for <barebox@lists.infradead.org>; Mon, 14 Jul 2014 05:36:23 -0700 (PDT)
Date: Mon, 14 Jul 2014 16:48:44 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140714164844.4650208b0577aec2f59eb588@gmail.com>
In-Reply-To: <1405335380-17996-4-git-send-email-antonynpavlov@gmail.com>
References: <1405335380-17996-1-git-send-email-antonynpavlov@gmail.com>
 <1405335380-17996-4-git-send-email-antonynpavlov@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC v2 3/5] rtc: import ds1307 driver from linux-3.15
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, 14 Jul 2014 14:56:18 +0400
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> Current ds1307 rtc driver supports only ds1307 and ds1338 chips;
> it has no nvram support at the moment.
> =

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/rtc/Kconfig      |  29 ++++
>  drivers/rtc/Makefile     |   4 +
>  drivers/rtc/rtc-ds1307.c | 345 +++++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 378 insertions(+)
> =

> diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
> index f148266..8771933 100644
> --- a/drivers/rtc/Kconfig
> +++ b/drivers/rtc/Kconfig
> @@ -14,3 +14,32 @@ menuconfig RTC_CLASS
>            Generic RTC class support. If you say yes here, you will
>            be allowed to plug one or more RTCs to your system. You will
>            probably want to enable one or more of the interfaces below.
> +
> +if RTC_CLASS
> +
> +comment "I2C RTC drivers"
> +        depends on I2C
> +
> +if I2C
> +
> +config RTC_DRV_DS1307
> +        tristate "Dallas/Maxim DS1307/37/38/39/40, ST M41T00, EPSON RX-8=
025"
> +        help
> +          If you say yes here you get support for various compatible RTC
> +          chips (often with battery backup) connected with I2C. This dri=
ver
> +          should handle DS1307, DS1337, DS1338, DS1339, DS1340, ST M41T0=
0,
> +          EPSON RX-8025 and probably other chips. In some cases the RTC
> +          must already have been initialized (by manufacturing or a
> +          bootloader).
> +
> +          The first seven registers on these chips hold an RTC, and other
> +          registers may add features such as NVRAM, a trickle charger for
> +          the RTC/NVRAM backup power, and alarms. NVRAM is visible in
> +          sysfs, but other chip features may not be available.
> +
> +          This driver can also be built as a module. If so, the module
> +          will be called rtc-ds1307.

I should thin out this help text.

> +endif # I2C
> +
> +endif # RTC_CLASS
> diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
> index 7d1b5bc..2c5a50e 100644
> --- a/drivers/rtc/Makefile
> +++ b/drivers/rtc/Makefile
> @@ -4,3 +4,7 @@
>  =

>  obj-$(CONFIG_RTC_LIB)           +=3D rtc-lib.o
>  obj-$(CONFIG_RTC_CLASS)         +=3D class.o
> +
> +# Keep the list ordered.
> +
> +obj-$(CONFIG_RTC_DRV_DS1307)    +=3D rtc-ds1307.o
> diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
> new file mode 100644
> index 0000000..acbb41e
> --- /dev/null
> +++ b/drivers/rtc/rtc-ds1307.c
> @@ -0,0 +1,345 @@
> +/*
> + * rtc-ds1307.c - RTC driver for some mostly-compatible I2C chips.
> + *
> + *  Copyright (C) 2005 James Chapman (ds1337 core)
> + *  Copyright (C) 2006 David Brownell
> + *  Copyright (C) 2009 Matthias Fuchs (rx8025 support)
> + *  Copyright (C) 2012 Bertrand Achard (nvram access fixes)
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <xfuncs.h>
> +#include <errno.h>
> +#include <i2c/i2c.h>
> +#include <rtc.h>
> +#include <linux/rtc.h>
> +#include <linux/bcd.h>
> +
> +/*
> + * We can't determine type by probing, but if we expect pre-Linux code
> + * to have set the chip up as a clock (turning on the oscillator and
> + * setting the date and time), Linux can ignore the non-clock features.
> + * That's a natural job for a factory or repair bench.
> + */
> +enum ds_type {
> +	ds_1307,
> +	ds_1338,
> +	last_ds_type /* always last */
> +};
> +
> +/* RTC registers don't differ much, except for the century flag */
> +#define DS1307_REG_SECS		0x00	/* 00-59 */
> +#	define DS1307_BIT_CH		0x80
> +#	define DS1340_BIT_nEOSC		0x80
> +#define DS1307_REG_MIN		0x01	/* 00-59 */
> +#define DS1307_REG_HOUR		0x02	/* 00-23, or 1-12{am,pm} */
> +#	define DS1307_BIT_12HR		0x40	/* in REG_HOUR */
> +#	define DS1307_BIT_PM		0x20	/* in REG_HOUR */
> +#	define DS1340_BIT_CENTURY_EN	0x80	/* in REG_HOUR */
> +#	define DS1340_BIT_CENTURY	0x40	/* in REG_HOUR */
> +#define DS1307_REG_WDAY		0x03	/* 01-07 */
> +#define DS1307_REG_MDAY		0x04	/* 01-31 */
> +#define DS1307_REG_MONTH	0x05	/* 01-12 */
> +#	define DS1337_BIT_CENTURY	0x80	/* in REG_MONTH */
> +#define DS1307_REG_YEAR		0x06	/* 00-99 */
> +
> +/*
> + * Other registers (control, status, alarms, trickle charge, NVRAM, etc)
> + * start at 7, and they differ a LOT. Only control and status matter for
> + * basic RTC date and time functionality; be careful using them.
> + */
> +#define DS1307_REG_CONTROL	0x07		/* or ds1338 */
> +#	define DS1307_BIT_OUT		0x80
> +#	define DS1338_BIT_OSF		0x20
> +#	define DS1307_BIT_SQWE		0x10
> +#	define DS1307_BIT_RS1		0x02
> +#	define DS1307_BIT_RS0		0x01
> +
> +struct ds1307 {
> +	struct rtc_device	rtc;
> +	u8			offset; /* register's offset */
> +	u8			regs[11];
> +	enum ds_type		type;
> +	unsigned long		flags;
> +	struct i2c_client	*client;
> +	s32 (*read_block_data)(const struct i2c_client *client, u8 command,
> +			       u8 length, u8 *values);
> +	s32 (*write_block_data)(const struct i2c_client *client, u8 command,
> +				u8 length, const u8 *values);
> +};
> +
> +static struct platform_device_id ds1307_id[] =3D {
> +	{ "ds1307", ds_1307 },
> +	{ "ds1338", ds_1338 },
> +	{ "pt7c4338", ds_1307 },
> +	{ }
> +};
> +
> +/*----------------------------------------------------------------------=
*/
> +
> +#define BLOCK_DATA_MAX_TRIES 10
> +
> +static s32 ds1307_read_block_data_once(const struct i2c_client *client,
> +				       u8 command, u8 length, u8 *values)
> +{
> +	s32 i, data;
> +
> +	for (i =3D 0; i < length; i++) {
> +		data =3D i2c_smbus_read_byte_data(client, command + i);
> +		if (data < 0)
> +			return data;
> +		values[i] =3D data;
> +	}
> +	return i;
> +}
> +
> +static s32 ds1307_read_block_data(const struct i2c_client *client, u8 co=
mmand,
> +				  u8 length, u8 *values)
> +{
> +	u8 oldvalues[255];
> +	s32 ret;
> +	int tries =3D 0;
> +
> +	dev_dbg(&client->dev, "ds1307_read_block_data (length=3D%d)\n", length);
> +	ret =3D ds1307_read_block_data_once(client, command, length, values);
> +	if (ret < 0)
> +		return ret;
> +	do {
> +		if (++tries > BLOCK_DATA_MAX_TRIES) {
> +			dev_err(&client->dev,
> +				"ds1307_read_block_data failed\n");
> +			return -EIO;
> +		}
> +		memcpy(oldvalues, values, length);
> +		ret =3D ds1307_read_block_data_once(client, command, length,
> +						  values);
> +		if (ret < 0)
> +			return ret;
> +	} while (memcmp(oldvalues, values, length));
> +	return length;
> +}
> +
> +static s32 ds1307_write_block_data(const struct i2c_client *client, u8 c=
ommand,
> +				   u8 length, const u8 *values)
> +{
> +	u8 currvalues[255];
> +	int tries =3D 0;
> +
> +	dev_dbg(&client->dev, "ds1307_write_block_data (length=3D%d)\n", length=
);
> +	do {
> +		s32 i, ret;
> +
> +		if (++tries > BLOCK_DATA_MAX_TRIES) {
> +			dev_err(&client->dev,
> +				"ds1307_write_block_data failed\n");
> +			return -EIO;
> +		}
> +		for (i =3D 0; i < length; i++) {
> +			ret =3D i2c_smbus_write_byte_data(client, command + i,
> +							values[i]);
> +			if (ret < 0)
> +				return ret;
> +		}
> +		ret =3D ds1307_read_block_data_once(client, command, length,
> +						  currvalues);
> +		if (ret < 0)
> +			return ret;
> +	} while (memcmp(currvalues, values, length));
> +	return length;
> +}
> +
> +static inline struct ds1307 *to_ds1307_priv(struct rtc_device *rtcdev)
> +{
> +	return container_of(rtcdev, struct ds1307, rtc);
> +}
> +
> +static int ds1307_get_time(struct rtc_device *rtcdev, struct rtc_time *t)
> +{
> +	struct device_d *dev =3D rtcdev->dev;
> +	struct ds1307 *ds1307 =3D to_ds1307_priv(rtcdev);
> +	int		tmp;
> +
> +	/* read the RTC date and time registers all at once */
> +	tmp =3D ds1307->read_block_data(ds1307->client,
> +		ds1307->offset, 7, ds1307->regs);
> +	if (tmp !=3D 7) {
> +		dev_err(dev, "%s error %d\n", "read", tmp);
> +		return -EIO;
> +	}
> +
> +	dev_dbg(dev, "%s: %7ph\n", "read", ds1307->regs);
> +
> +	t->tm_sec =3D bcd2bin(ds1307->regs[DS1307_REG_SECS] & 0x7f);
> +	t->tm_min =3D bcd2bin(ds1307->regs[DS1307_REG_MIN] & 0x7f);
> +	tmp =3D ds1307->regs[DS1307_REG_HOUR] & 0x3f;
> +	t->tm_hour =3D bcd2bin(tmp);
> +	t->tm_wday =3D bcd2bin(ds1307->regs[DS1307_REG_WDAY] & 0x07) - 1;
> +	t->tm_mday =3D bcd2bin(ds1307->regs[DS1307_REG_MDAY] & 0x3f);
> +	tmp =3D ds1307->regs[DS1307_REG_MONTH] & 0x1f;
> +	t->tm_mon =3D bcd2bin(tmp) - 1;
> +
> +	/* assume 20YY not 19YY, and ignore DS1337_BIT_CENTURY */
> +	t->tm_year =3D bcd2bin(ds1307->regs[DS1307_REG_YEAR]) + 100;
> +
> +	dev_dbg(dev, "%s secs=3D%d, mins=3D%d, "
> +		"hours=3D%d, mday=3D%d, mon=3D%d, year=3D%d, wday=3D%d\n",
> +		"read", t->tm_sec, t->tm_min,
> +		t->tm_hour, t->tm_mday,
> +		t->tm_mon, t->tm_year, t->tm_wday);
> +
> +	/* initial clock setting can be undefined */
> +	return rtc_valid_tm(t);
> +}
> +
> +static int ds1307_set_time(struct rtc_device *rtcdev, struct rtc_time *t)
> +{
> +	struct device_d *dev =3D rtcdev->dev;
> +	struct ds1307 *ds1307 =3D to_ds1307_priv(rtcdev);
> +	int		result;
> +	int		tmp;
> +	u8		*buf =3D ds1307->regs;
> +
> +	dev_dbg(dev, "%s secs=3D%d, mins=3D%d, "
> +		"hours=3D%d, mday=3D%d, mon=3D%d, year=3D%d, wday=3D%d\n",
> +		"write", t->tm_sec, t->tm_min,
> +		t->tm_hour, t->tm_mday,
> +		t->tm_mon, t->tm_year, t->tm_wday);
> +
> +	buf[DS1307_REG_SECS] =3D bin2bcd(t->tm_sec);
> +	buf[DS1307_REG_MIN] =3D bin2bcd(t->tm_min);
> +	buf[DS1307_REG_HOUR] =3D bin2bcd(t->tm_hour);
> +	buf[DS1307_REG_WDAY] =3D bin2bcd(t->tm_wday + 1);
> +	buf[DS1307_REG_MDAY] =3D bin2bcd(t->tm_mday);
> +	buf[DS1307_REG_MONTH] =3D bin2bcd(t->tm_mon + 1);
> +
> +	/* assume 20YY not 19YY */
> +	tmp =3D t->tm_year - 100;
> +	buf[DS1307_REG_YEAR] =3D bin2bcd(tmp);
> +
> +	dev_dbg(dev, "%s: %7ph\n", "write", buf);
> +
> +	result =3D ds1307->write_block_data(ds1307->client,
> +		ds1307->offset, 7, buf);
> +	if (result < 0) {
> +		dev_err(dev, "%s error %d\n", "write", result);
> +		return result;
> +	}
> +	return 0;
> +}
> +
> +static const struct rtc_class_ops ds13xx_rtc_ops =3D {
> +	.read_time	=3D ds1307_get_time,
> +	.set_time	=3D ds1307_set_time,
> +};
> +
> +static int ds1307_probe(struct device_d *dev)
> +{
> +	struct i2c_client *client =3D to_i2c_client(dev);
> +	struct ds1307		*ds1307;
> +	int			err =3D -ENODEV;
> +	int			tmp;
> +	unsigned char		*buf;
> +	unsigned long driver_data;
> +
> +	ds1307 =3D xzalloc(sizeof(struct ds1307));
> +
> +	err =3D dev_get_drvdata(dev, &driver_data);
> +	if (err)
> +		goto exit;
> +
> +	ds1307->client =3D client;
> +	ds1307->type =3D driver_data;
> +
> +	buf =3D ds1307->regs;
> +
> +	ds1307->read_block_data =3D ds1307_read_block_data;
> +	ds1307->write_block_data =3D ds1307_write_block_data;
> +
> +read_rtc:
> +	/* read RTC registers */
> +	tmp =3D ds1307->read_block_data(client, ds1307->offset, 8, buf);
> +	if (tmp !=3D 8) {
> +		dev_dbg(&client->dev, "read error %d\n", tmp);
> +		err =3D -EIO;
> +		goto exit;
> +	}
> +
> +	/*
> +	 * minimal sanity checking; some chips (like DS1340) don't
> +	 * specify the extra bits as must-be-zero, but there are
> +	 * still a few values that are clearly out-of-range.
> +	 */
> +	tmp =3D ds1307->regs[DS1307_REG_SECS];
> +	switch (ds1307->type) {
> +	case ds_1307:
> +		/* clock halted?  turn it on, so clock can tick. */
> +		if (tmp & DS1307_BIT_CH) {
> +			i2c_smbus_write_byte_data(client, DS1307_REG_SECS, 0);
> +			dev_warn(&client->dev, "SET TIME!\n");
> +			goto read_rtc;
> +		}
> +		break;
> +	case ds_1338:
> +		/* clock halted?  turn it on, so clock can tick. */
> +		if (tmp & DS1307_BIT_CH)
> +			i2c_smbus_write_byte_data(client, DS1307_REG_SECS, 0);
> +
> +		/* oscillator fault?  clear flag, and warn */
> +		if (ds1307->regs[DS1307_REG_CONTROL] & DS1338_BIT_OSF) {
> +			i2c_smbus_write_byte_data(client, DS1307_REG_CONTROL,
> +					ds1307->regs[DS1307_REG_CONTROL]
> +					& ~DS1338_BIT_OSF);
> +			dev_warn(&client->dev, "SET TIME!\n");
> +			goto read_rtc;
> +		}
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	tmp =3D ds1307->regs[DS1307_REG_HOUR];
> +	switch (ds1307->type) {
> +	default:
> +		if (!(tmp & DS1307_BIT_12HR))
> +			break;
> +
> +		/*
> +		 * Be sure we're in 24 hour mode.  Multi-master systems
> +		 * take note...
> +		 */
> +		tmp =3D bcd2bin(tmp & 0x1f);
> +		if (tmp =3D=3D 12)
> +			tmp =3D 0;
> +		if (ds1307->regs[DS1307_REG_HOUR] & DS1307_BIT_PM)
> +			tmp +=3D 12;
> +		i2c_smbus_write_byte_data(client,
> +				ds1307->offset + DS1307_REG_HOUR,
> +				bin2bcd(tmp));
> +	}
> +
> +	ds1307->rtc.ops =3D &ds13xx_rtc_ops;
> +	ds1307->rtc.dev =3D dev;
> +
> +	err =3D rtc_register(&ds1307->rtc);
> +
> +exit:
> +	return err;
> +}
> +
> +static struct driver_d ds1307_driver =3D {
> +	.name	=3D "rtc-ds1307",
> +	.probe		=3D ds1307_probe,
> +	.id_table	=3D ds1307_id,
> +};
> +
> +static int __init ds1307_init(void)
> +{
> +	return i2c_driver_register(&ds1307_driver);
> +}
> +device_initcall(ds1307_init);
> -- =

> 2.0.1
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
