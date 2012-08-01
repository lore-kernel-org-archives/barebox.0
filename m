Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwTJ4-0008Gz-8t
 for barebox@lists.infradead.org; Wed, 01 Aug 2012 07:25:23 +0000
Date: Wed, 1 Aug 2012 09:25:14 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120801072514.GD10670@pengutronix.de>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
 <1343547714-32740-8-git-send-email-marc@cpdesign.com.au>
 <20120730082505.GN1528@pengutronix.de> <3749450.lP8xDhAWsE@dev1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3749450.lP8xDhAWsE@dev1>
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
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

Hi Marc,

On Mon, Jul 30, 2012 at 08:36:46PM +1000, Marc Reilly wrote:
> Thanks for comments. You are very thorough, and I mean that in a nice way.
> I gather you also have an at24 driver, did you support addressing offsets=
 > =

> 256?
yes, our driver does. But it hardcodes two address bytes similar to your
driver hardcoding a single byte :-)

> > > +#define DRIVERNAME		"at24"
> > > +#define DEVICENAME		"eeprom"
> > =

> > why not DEVICENAME =3D=3D DRIVERNAME?
> =

> Originally I'd started with DRIVENAME as eeprom, but changed it later as =
that =

> seemed too generic. I wanted to keep the device name as eeprom so that th=
e =

> device would be "/dev/eepromX", both for compatibilty with existing board =

> setup and as a conceptual abstraction to regard the device as a more gene=
ric =

> "eeprom" device, rather than a more specific "at24".
> (Hope that makes sense).
Ah, I missed that your devices have a number included after eeprom. Then
I'm ok with your approach.
 =

> > > +	while (i && retries) {
> > > +		ret =3D i2c_read_reg(priv->client, offset, buf, i);
> > > +		if (ret < 0)
> > > +			return (ssize_t)ret;
> > =

> > This cast is also done implicitly.
> > =

> > > +		else if (ret =3D=3D 0)
> > > +			--retries;
> > > +
> > > +		numwritten +=3D ret;
> > > +		i -=3D ret;
> > > +		offset +=3D ret;
> > > +		buf +=3D ret;
> > > +	}
> > =

> > IMHO this loop should be in a more generic place once instead of
> > repeating it for each driver. Also I wonder if you saw the eeprom
> > yielding some but not all requested bytes on a read request.
> =

> Not that I can remember, but this code is old, and I think was copied fro=
m a =

> kernel driver and I just left as is.
> I considered doing a generic loop, but in my head anything I thought of w=
asn't =

> much better than having similar code 2 or 3 times.
I think it would be worth to have it in generic code. (For our driver I
did it in the command that implements the custom eeprom layout. So I
don't have anything to share.)

> > > +static int at24_poll_device(struct i2c_client *client)
> > > +{
> > > +	uint64_t start;
> > > +	u8 dummy;
> > > +	int ret;
> > > +
> > > +	/*
> > > +	 * eeprom can take 5-10ms to write, during which time it
> > > +	 * will not respond. Poll it by attempting reads.
> > > +	 */
> > > +	start =3D get_time_ns();
> > > +	while (1) {
> > > +		ret =3D i2c_master_recv(client, &dummy, 1);
> > =

> > I implemented a write of length 0 here. IMHO this is better.
> =

> I'm not clear whether you are saying that your way is better :)
> This way reads just one byte after device responds. I'm thinking that you=
r way
> would write a byte for the address...
/me rechecks ... Hm, our driver uses:

	i2c_write_reg(at24->client, I2C_ADDR_16_BIT, buf, 0);

so it even transfers two bytes for the address, so regarding the
generated overhead, you're right. But "my" datasheet[1] says:

	ACKNOWLEDGE POLLING: Once the internally-timed write cycle has
	started and the EEPROM inputs are disabled, acknowledge polling
	can be initiated. This involves sending a start condition
	followed by the device address word. The read/write bit is
	representative of the operation desired. Only if the internal
	write cycle has completed will the EEPROM respond with a zero,
	allowing the read or write sequence to continue.

So I think you must not do a read operation to check if a write is
possible. That might be a theoretical problem now, but still I prefer
being aligned to the datasheet.

[1] http://www.atmel.com/Images/doc0670.pdf

> > I think conceptually you don't need the erase callback for this eeprom.
> =

> While it is possible to write 0xff through the device, this was more =

> convenient. I'd prefer to keep it, unless theres a reason otherwise. =

I don't care much, but IMHO the erase callback is for devices that need
the erase before writing.
 =

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
