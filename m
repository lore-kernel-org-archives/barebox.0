Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihtSd-0007BN-TM
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 10:55:17 +0000
Message-ID: <8ecfb46e932d3153937f8d568ac0e8b37fe40cc0.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 19 Dec 2019 11:55:14 +0100
In-Reply-To: <20191219105243.GA16955@localhost.localdomain>
References: <20191219101011.17583-1-l.stach@pengutronix.de>
 <20191219105243.GA16955@localhost.localdomain>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] driver: add function to look up device by DT node
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Do, 2019-12-19 at 13:52 +0300, Peter Mamonov wrote:
> Hi, Lucas,
> 
> On Thu, Dec 19, 2019 at 11:10:11AM +0100, Lucas Stach wrote:
> > Useful if we need to remove a deivce from the Barebox internal DT.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> > This is a prerequisite for "ARM: zii-imx8mq-dev: add DT fixups",
> > which
> > I missed to send out in the series.
> > ---
> >  drivers/base/driver.c | 12 ++++++++++++
> >  include/driver.h      |  1 +
> >  2 files changed, 13 insertions(+)
> > 
> > diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> > index eec2a2d8a2a5..437b0162d3f7 100644
> > --- a/drivers/base/driver.c
> > +++ b/drivers/base/driver.c
> > @@ -70,6 +70,18 @@ static struct device_d
> > *get_device_by_name_id(const char *name, int id)
> >  	return NULL;
> >  }
> >  
> > +struct device_d *get_device_by_device_node(struct device_node *np)
> > +{
> > +	struct device_d *dev;
> > +
> > +	for_each_device(dev) {
> > +		if(dev->device_node == np)
> > +			return dev;
> > +	}
> > +
> > +	return NULL;
> > +}
> > +
> 
> This is already implemented in `of_find_device_by_node`.

Thanks! How did I miss that?

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
