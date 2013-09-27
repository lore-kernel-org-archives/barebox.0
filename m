Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPU0B-00045X-Bf
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 09:06:20 +0000
Date: Fri, 27 Sep 2013 11:05:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130927090556.GS30088@pengutronix.de>
References: <20130927071255.GB32444@ns203013.ovh.net>
 <1380266058-18501-1-git-send-email-plagnioj@jcrosoft.com>
 <1380266058-18501-3-git-send-email-plagnioj@jcrosoft.com>
 <20130927085056.GP30088@pengutronix.de>
 <20130927085847.GE32444@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130927085847.GE32444@ns203013.ovh.net>
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
Subject: Re: [PATCH 3/8] console: factorise function to get the console by name
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 27, 2013 at 10:58:47AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:50 Fri 27 Sep     , Sascha Hauer wrote:
> > On Fri, Sep 27, 2013 at 09:14:13AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > rename it to console_get_by_name
> > > 
> > > +struct console_device *console_get_by_name(const char *cname)
> > > +{
> > > +	struct console_device *cdev;
> > > +	const char *target;
> > > +
> > > +	for_each_console(cdev) {
> > > +		target = dev_id(&cdev->class_dev);
> > > +		if (strcmp(cname, target))
> > > +			continue;
> > > +		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT))
> > > +			return cdev;
> > > +		return NULL;
> > > +	}
> > > +	return NULL;
> > > +}
> > > +EXPORT_SYMBOL(console_get_by_name);
> > 
> > I know this patch doesn't change the current behaviour, but a common
> > function console_get_by_name() should return return the console by name
> > regardless of whether it's active or not.
> 
> I change it behaviour later as now this function will check the console
> feature
> 
> as the current implemetation do it too but in the wrong way
> > 
> > For the loadx code this would be a net win aswell. I think this code
> > should not depend on an active console but the other way round: It
> > should clear the CONSOLE_STDIN/CONSOLE_STDOUT during loadx operation.
> > This way we could easily make sure there are no printf message garbling
> > the line during transfers and still we could have console messages on
> > other consoles.
> 
> patch 8 finaly clean it

?

patch 8/8 is an atmel serial driver specific patch that changes nothing
in this regard.

What I mean is that the loadx stuff should do a cdev->active = 0 so that
during transfers printf is still possible without corrupting the
transfers. This behaviour is not changed in this series.


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
