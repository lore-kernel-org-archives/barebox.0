Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBRQx-0006TT-Hp
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 14:27:24 +0000
Date: Tue, 11 Sep 2012 16:27:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120911142722.GD6180@pengutronix.de>
References: <1347370313-15184-1-git-send-email-s.hauer@pengutronix.de>
 <1347370313-15184-4-git-send-email-s.hauer@pengutronix.de>
 <20120911140455.GL31207@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120911140455.GL31207@game.jcrosoft.org>
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
Subject: Re: [PATCH 3/5] I2C: Put I2C devices on their own bus
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 11, 2012 at 04:04:55PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:31 Tue 11 Sep     , Sascha Hauer wrote:
> > This patch adds a I2C bus on which the I2C devices and drivers register.
> > This makes it cleaner as I2C devices won't accidently end up probed by
> > a platform_device driver.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/i2c/i2c.c       |   23 +++++++++++++++++++++++
> >  drivers/mfd/lp3972.c    |    2 +-
> >  drivers/mfd/mc13xxx.c   |    2 +-
> >  drivers/mfd/mc34704.c   |    4 ++--
> >  drivers/mfd/mc34708.c   |    2 +-
> >  drivers/mfd/mc9sdz60.c  |    2 +-
> >  drivers/mfd/stmpe-i2c.c |    2 +-
> >  drivers/mfd/twl4030.c   |    2 +-
> >  drivers/mfd/twl6030.c   |    2 +-
> >  include/i2c/i2c.h       |    8 ++++++++
> >  10 files changed, 40 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> > index 3af2b3e..555722b 100644
> > --- a/drivers/i2c/i2c.c
> > +++ b/drivers/i2c/i2c.c
> > @@ -251,6 +251,7 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
> >  	strcpy(client->dev.name, chip->type);
> >  	client->dev.type_data = client;
> >  	client->dev.platform_data = chip->platform_data;
> > +	client->dev.bus = &i2c_bus;
> >  	client->adapter = adapter;
> >  	client->addr = chip->addr;
> >  
> > @@ -372,3 +373,25 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
> >  	return 0;
> >  }
> >  EXPORT_SYMBOL(i2c_add_numbered_adapter);
> > +
> > +static int i2c_match(struct device_d *dev, struct driver_d *drv)
> > +{
> > +	return strcmp(dev->name, drv->name) ? -1 : 0;
> can we check the address too here

What do you mean?

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
