Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PfTc2-0005TF-5O
	for barebox@lists.infradead.org; Wed, 19 Jan 2011 08:41:56 +0000
Date: Wed, 19 Jan 2011 09:41:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110119084149.GR9041@pengutronix.de>
References: <20110114093937.GF24373@pengutronix.de>
	<1295139858-9193-1-git-send-email-marc@cpdesign.com.au>
	<20110117180137.GN9041@pengutronix.de>
	<201101180922.20345.marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201101180922.20345.marc@cpdesign.com.au>
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
Subject: Re: cdev name generation
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On Tue, Jan 18, 2011 at 09:22:20AM +1100, Marc Reilly wrote:
> Hi Sascha,
> 
> > > 
> > > Do you mean something like this attached patch?
> > 
> > Yes
> > 
> > > I preferred having the possibilty for assigning the id, so that boards
> > > can have some expectations of what the device name will be.
> > 
> > Generally a good idea, but how do you want to pass previd to the drivers
> > using it? via platform_data? I haven't looked into it to see if this
> > works well.
> > 
> 
> That's what I did for the at24, (although preferred_id would be a better name 
> than just id)
> 
> static struct at24_platform_data at24_data = {
> 	.size	= 2048 / 8,
> 	.id		= 1,
> };
> 
> 
> static int at24_probe(struct device_d *dev)
> {
> 	struct at24 *at24;
> 	struct at24_platform_data *pdata;
> 	at24 = xzalloc(sizeof(*at24));
> 
> 	dev->priv = at24;
> 	pdata = dev->platform_data;
> 
> 	at24->cdev.name = make_cdev_name("eeprom", pdata->id);
> 	at24->client = to_i2c_client(dev);
> 	at24->cdev.size = pdata->size;
> 	at24->cdev.dev = dev;
> 
> 
> Maybe the platform data should have the preferred cdev name also? In the 
> example above, the driver just blindly calls it "eeprom", ie a more generic 
> term than "at24", the driver name.
> If the desired end result is to have for example eeprom0, eeprom1 and eeprom2 
> cdevs all from potentially different drivers then I makes sense to also be 
> able to specify the "eeprom" part. (and then we'd probably want to pass in the 
> device_d* to make_cdev_name in case the user doesn't specify a cdev name - the 
> device name, and id, could be used).
> 
> Seems like too much thinking for so little code :)

I don't think so. This is one of the places where we'll regret a wrong
decision once we have to change it in the future and have to deal with
loads of breaking environments.

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
