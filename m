Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pdg8D-0002H8-EB
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 09:39:43 +0000
Date: Fri, 14 Jan 2011 10:39:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110114093937.GF24373@pengutronix.de>
References: <1294963621-4177-1-git-send-email-marc@cpdesign.com.au>
	<1294963621-4177-3-git-send-email-marc@cpdesign.com.au>
	<20110114091912.GD24373@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110114091912.GD24373@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] at24: add I2C eeprom for 24cl02
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On Fri, Jan 14, 2011 at 10:19:12AM +0100, Sascha Hauer wrote:
> Hi Marc,
> 
> > +
> > +static int at24_probe(struct device_d *dev)
> > +{
> > +	struct at24 *at24;
> > +	struct at24_platform_data *pdata;
> > +	at24 = xzalloc(sizeof(*at24));
> > +
> > +	dev->priv = at24;
> > +	pdata = dev->platform_data;
> > +
> > +	at24->cdev.name = DRIVERNAME;
> 
> You should use at24->cdev.name = asprintf("%s%d", DRIVERNAME, dev->id);
> here to support multiple eeproms. Note that this afaics needs patching
> i2c_new_device to initialize client->dev.id to -1 to make sure the i2c
> device gets an autoassigned id.

This reminds me of something I should do in the next time.
A cdev is not in any way related to a struct device_d anymore.
Nevertheless we more than once use the device id to construct a
cdev name like above. Instead we should have a
get_cdev_name(char *template) function which creates a name suitable for
cdevs. This way both a spi and a i2c eeprom driver could use "eeprom" as
template and both would get a valid name.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
