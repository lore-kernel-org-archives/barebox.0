Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwQ7s-00067J-Ay
 for barebox@lists.infradead.org; Wed, 01 Aug 2012 04:01:37 +0000
Received: by pbbrq13 with SMTP id rq13so404746pbb.36
 for <barebox@lists.infradead.org>; Tue, 31 Jul 2012 21:01:33 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Mon, 30 Jul 2012 20:36:46 +1000
Message-ID: <3749450.lP8xDhAWsE@dev1>
In-Reply-To: <20120730082505.GN1528@pengutronix.de>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
 <1343547714-32740-8-git-send-email-marc@cpdesign.com.au>
 <20120730082505.GN1528@pengutronix.de>
MIME-Version: 1.0
Reply-To: Marc Reilly <marc@cpdesign.com.au>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/7] drivers/eeprom: at24: add I2C eeprom driver for
 24c01/02
To: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Uwe,

Thanks for comments. You are very thorough, and I mean that in a nice way.
I gather you also have an at24 driver, did you support addressing offsets > =

256?

On Monday, July 30, 2012 10:25:05 AM Uwe Kleine-K=F6nig wrote:
> Hello Marc,
> =

> On Sun, Jul 29, 2012 at 05:41:54PM +1000, Marc Reilly wrote:
> > This series adds a driver for at24 eeproms. Much of the guts of the code
> > was taken from the at24 driver in the linux kernel.
> > =

> > The device is polled for write completion. All the datasheets I looked
> > at had a max of 10ms for eeprom write time.
> > The driver automatically wraps the writes to page boundaries, so we don=
't
> > write more than is remaining in the page.
> > =

> > The driver can not yet handle addressing offsets > 256 in devices with
> > larger capacities.
> > =

> > The platform data fields are all optional, if they are zero they are
> > assigned default values. As the device capabilities can not be probed,
> > the default assumption is that the device is 256 bytes.
> > =

> > Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> > ---
> > =

> >  drivers/eeprom/Kconfig  |    7 ++
> >  drivers/eeprom/Makefile |    1 +
> >  drivers/eeprom/at24.c   |  233
> >  +++++++++++++++++++++++++++++++++++++++++++++++ include/i2c/at24.h     =

> >  |   13 +++
> >  4 files changed, 254 insertions(+), 0 deletions(-)
> >  create mode 100644 drivers/eeprom/at24.c
> >  create mode 100644 include/i2c/at24.h
> > =

> > diff --git a/drivers/eeprom/Kconfig b/drivers/eeprom/Kconfig
> > index a0b5489..a2bcaaa 100644
> > --- a/drivers/eeprom/Kconfig
> > +++ b/drivers/eeprom/Kconfig
> > @@ -8,4 +8,11 @@ config EEPROM_AT25
> > =

> >  	  after you configure the board init code to know about each eeprom
> >  	  on your target board.
> > =

> > +config EEPROM_AT24
> > +	bool "at24 based eeprom"
> > +	depends on I2C
> > +	help
> > +	  Provides read/write for the at24 family of I2C EEPROMS.
> > +	  Currently only the 2K bit versions are supported.
> > +
> > =

> >  endmenu
> > =

> > diff --git a/drivers/eeprom/Makefile b/drivers/eeprom/Makefile
> > index e323bd0..e287eb0 100644
> > --- a/drivers/eeprom/Makefile
> > +++ b/drivers/eeprom/Makefile
> > @@ -1 +1,2 @@
> > =

> >  obj-$(CONFIG_EEPROM_AT25)	+=3D at25.o
> > =

> > +obj-$(CONFIG_EEPROM_AT24)	+=3D at24.o
> =

> nitpick: sort at24 before at25?

Cool.

> =

> > diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
> > new file mode 100644
> > index 0000000..fa16d88
> > --- /dev/null
> > +++ b/drivers/eeprom/at24.c
> > @@ -0,0 +1,233 @@
> > +/*
> > + * Copyright (C) 2007 Sascha Hauer, Pengutronix
> > + *               2009 Marc Kleine-Budde <mkl@pengutronix.de>
> > + *               2010 Marc Reilly, Creative Product Design
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> > + *
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <clock.h>
> > +#include <driver.h>
> > +#include <xfuncs.h>
> > +#include <errno.h>
> > +
> > +#include <i2c/i2c.h>
> > +#include <i2c/at24.h>
> > +
> > +#define DRIVERNAME		"at24"
> > +#define DEVICENAME		"eeprom"
> =

> why not DEVICENAME =3D=3D DRIVERNAME?

Originally I'd started with DRIVENAME as eeprom, but changed it later as th=
at =

seemed too generic. I wanted to keep the device name as eeprom so that the =

device would be "/dev/eepromX", both for compatibilty with existing board =

setup and as a conceptual abstraction to regard the device as a more generi=
c =

"eeprom" device, rather than a more specific "at24".
(Hope that makes sense).

> =

> > +
> > +struct at24 {
> > +	struct cdev		cdev;
> > +	struct i2c_client	*client;
> > +	/* size in bytes */
> > +	unsigned int		size;
> > +	unsigned int		page_size;
> > +};
> > +
> > +#define to_at24(a)		container_of(a, struct at24, cdev)
> > +
> > +static ssize_t at24_read(struct cdev *cdev, void *_buf, size_t count,
> > +		ulong offset, ulong flags)
> > +{
> > +	struct at24 *priv =3D to_at24(cdev);
> > +	u8 *buf =3D _buf;
> > +	size_t i =3D count;
> > +	ssize_t numwritten =3D 0;
> =

> s/written/read/
> =

> > +	int retries =3D 5;
> > +	int ret;
> > +
> > +	while (i && retries) {
> > +		ret =3D i2c_read_reg(priv->client, offset, buf, i);
> > +		if (ret < 0)
> > +			return (ssize_t)ret;
> =

> This cast is also done implicitly.
> =

> > +		else if (ret =3D=3D 0)
> > +			--retries;
> > +
> > +		numwritten +=3D ret;
> > +		i -=3D ret;
> > +		offset +=3D ret;
> > +		buf +=3D ret;
> > +	}
> =

> IMHO this loop should be in a more generic place once instead of
> repeating it for each driver. Also I wonder if you saw the eeprom
> yielding some but not all requested bytes on a read request.

Not that I can remember, but this code is old, and I think was copied from =
a =

kernel driver and I just left as is.
I considered doing a generic loop, but in my head anything I thought of was=
n't =

much better than having similar code 2 or 3 times.

> =

> > +
> > +	return numwritten;
> > +}
> > +
> > +static int at24_poll_device(struct i2c_client *client)
> > +{
> > +	uint64_t start;
> > +	u8 dummy;
> > +	int ret;
> > +
> > +	/*
> > +	 * eeprom can take 5-10ms to write, during which time it
> > +	 * will not respond. Poll it by attempting reads.
> > +	 */
> > +	start =3D get_time_ns();
> > +	while (1) {
> > +		ret =3D i2c_master_recv(client, &dummy, 1);
> =

> I implemented a write of length 0 here. IMHO this is better.

I'm not clear whether you are saying that your way is better :)
This way reads just one byte after device responds. I'm thinking that your =
way =

would write a byte for the address...

> =

> > +		if (ret > 0)
> > +			return ret;
> > +
> > +		if (is_timeout(start, 20 * MSECOND))
> > +			return -EIO;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static ssize_t at24_write(struct cdev *cdev, const void *_buf, size_t
> > count, +		ulong offset, ulong flags)
> > +{
> > +	struct at24 *priv =3D to_at24(cdev);
> > +	const u8 *buf =3D _buf;
> > +	const int pagesize =3D priv->page_size;
> > +	ssize_t numwritten =3D 0;
> > +
> > +	while (count) {
> > +		int ret, numtowrite;
> > +		int page_remain =3D pagesize - (offset % pagesize);
> > +
> > +		numtowrite =3D count;
> > +		if (numtowrite > pagesize)
> > +			numtowrite =3D pagesize;
> =

> I think you can skip this if in the presence of the the if below.
> =

> > +		/* don't write past page */
> > +		if (numtowrite > page_remain)
> > +			numtowrite =3D page_remain;
> > +
> > +		ret =3D i2c_write_reg(priv->client, offset, buf, numtowrite);
> > +		if (ret < 0)
> > +			return (ssize_t)ret;
> > +
> > +		numwritten +=3D ret;
> > +		buf +=3D ret;
> > +		count -=3D ret;
> > +		offset +=3D ret;
> > +
> > +		ret =3D at24_poll_device(priv->client);
> > +		if (ret < 0)
> > +			return (ssize_t)ret;
> =

> Don't you need to poll before writing instead of after a write?

That would probably be better.

> =

> > +	}
> > +
> > +	return numwritten;
> > +}
> > +
> > +/* max page size of any of the at24 family devices is 16 bytes */
> > +#define AT24_MAX_PAGE_SIZE	16
> =

> That is wrong. My eeprom has a page size of 64 bytes.

That comment should have had a "that I looked at" after devices. I'll chang=
e =

it to 64.

> =

> > +
> > +static ssize_t at24_erase(struct cdev *cdev, size_t count, unsigned lo=
ng
> > offset) +{
> > +	struct at24 *priv =3D to_at24(cdev);
> > +	char erase[AT24_MAX_PAGE_SIZE];
> > +	const int pagesize =3D priv->page_size;
> > +	ssize_t numwritten =3D 0;
> > +
> > +	memset(erase, 0xff, sizeof(erase));
> > +
> > +	while (count) {
> > +		int ret, numtowrite;
> > +		int page_remain =3D pagesize - (offset % pagesize);
> > +
> > +		numtowrite =3D count;
> > +		if (numtowrite > pagesize)
> > +			numtowrite =3D pagesize;
> > +		/* don't write past page */
> > +		if (numtowrite > page_remain)
> > +			numtowrite =3D page_remain;
> > +
> > +		ret =3D i2c_write_reg(priv->client, offset, erase, numtowrite);
> > +		if (ret < 0)
> > +			return (ssize_t)ret;
> > +
> > +		numwritten +=3D ret;
> > +		count -=3D ret;
> > +		offset +=3D ret;
> > +
> > +		ret =3D at24_poll_device(priv->client);
> > +		if (ret < 0)
> > +			return (ssize_t)ret;
> > +	}
> > +
> > +	return 0;
> > +}
> =

> I think conceptually you don't need the erase callback for this eeprom.

While it is possible to write 0xff through the device, this was more =

convenient. I'd prefer to keep it, unless theres a reason otherwise. =


> =

> > +
> > +static struct file_operations at24_fops =3D {
> > +	.lseek	=3D dev_lseek_default,
> > +	.read	=3D at24_read,
> > +	.write	=3D at24_write,
> > +	.erase	=3D at24_erase,
> > +};
> > +
> > +static int at24_probe(struct device_d *dev)
> > +{
> > +	const struct at24_platform_data *pdata;
> > +	struct at24 *at24;
> > +	at24 =3D xzalloc(sizeof(*at24));
> > +
> > +	dev->priv =3D at24;
> > +	at24->client =3D to_i2c_client(dev);
> > +	at24->cdev.dev =3D dev;
> > +	at24->cdev.ops =3D &at24_fops;
> > +
> > +	pdata =3D dev->platform_data;
> > +	if (pdata) {
> > +		at24->cdev.size =3D pdata->size_bytes;
> > +		at24->cdev.name =3D strdup(pdata->name);
> > +		at24->page_size =3D pdata->page_size;
> > +	}
> > +
> > +	if (at24->cdev.size =3D=3D 0)
> > +		at24->cdev.size =3D 256;
> > +	if (!at24->cdev.name || at24->cdev.name[0] =3D=3D '\0') {
> > +		char buf[20];
> > +		sprintf(buf, DEVICENAME"%d", dev->id);

I have an issue myself with this, as an spi eeprom could also be present or =

even two at24s on different i2c busses.

I remember, a while ago, working on a function that would make up a name fo=
r a =

device. I'll try dig that up.


> > +		at24->cdev.name =3D strdup(buf);
> > +	}
> > +	if (at24->page_size =3D=3D 0) {
> > +		switch (at24->cdev.size) {
> > +		case 512:
> > +		case 1024:
> > +		case 2048:
> > +			at24->page_size =3D 16;
> > +			break;
> > +		case 128:
> > +		case 256:
> > +		default:
> > +			at24->page_size =3D 8;
> > +			break;
> > +		}
> > +	}
> > +
> > +	devfs_create(&at24->cdev);
> > +
> > +	return 0;
> > +}
> > +
> > +static struct driver_d at24_driver =3D {
> > +	.name  =3D DRIVERNAME,
> > +	.probe =3D at24_probe,
> > +};
> > +
> > +static int at24_init(void)
> > +{
> > +	register_driver(&at24_driver);
> > +	return 0;
> =

> return register_driver(&at24_driver) ?

Yup.

Thanks again! I'll rework this soon.

Cheers,
Marc

> =

> > +}
> > +
> > +device_initcall(at24_init);
> > diff --git a/include/i2c/at24.h b/include/i2c/at24.h
> > new file mode 100644
> > index 0000000..00e4624
> > --- /dev/null
> > +++ b/include/i2c/at24.h
> > @@ -0,0 +1,13 @@
> > +#ifndef _EEPROM_AT24_H
> > +#define _EEPROM_AT24_H
> > +
> > +struct at24_platform_data {
> > +	/* preferred device name */
> > +	const char name[10];
> > +	/* page write size in bytes */
> > +	u8 page_size;
> > +	/* device size in bytes */
> > +	u16 size_bytes;
> > +};
> > +
> > +#endif /* _EEPROM_AT24_H */

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
