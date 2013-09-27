Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPTx7-0003vc-J8
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 09:03:10 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 28F86DC224B
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 11:02:45 +0200 (CEST)
Date: Fri, 27 Sep 2013 11:03:57 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130927090357.GF32444@ns203013.ovh.net>
References: <20130927071255.GB32444@ns203013.ovh.net>
 <1380266058-18501-1-git-send-email-plagnioj@jcrosoft.com>
 <1380266058-18501-4-git-send-email-plagnioj@jcrosoft.com>
 <20130927085509.GQ30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130927085509.GQ30088@pengutronix.de>
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
Subject: Re: [PATCH 4/8] console: introduce startup and shutdown
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:55 Fri 27 Sep     , Sascha Hauer wrote:
> On Fri, Sep 27, 2013 at 09:14:14AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > so enable the uart only if used
> > so linux can detect the right one enable if it want
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  common/console.c        |  6 ++++++
> >  common/console_common.c | 36 ++++++++++++++++++++++++++++++++++++
> >  common/console_simple.c |  3 +++
> >  include/console.h       |  4 ++++
> >  4 files changed, 49 insertions(+)
> > 
> > diff --git a/common/console.c b/common/console.c
> > index 56bc864..00fd2cf 100644
> > --- a/common/console.c
> > +++ b/common/console.c
> > @@ -83,8 +83,14 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
> >  
> >  	if (flag && !cdev->f_active) {
> >  		/* The device is being activated, set its baudrate */
> > +		if (cdev->startup)
> > +			cdev->startup(cdev);
> >  		if (cdev->setbrg)
> >  			cdev->setbrg(cdev, cdev->baudrate);
> > +	} else if (!flag && cdev->f_active) {
> > +		/* The device is being desactivated, shutdown it */
> 
> 		/* The device is being deactivated, shut it down */
> 
> > +
> > +int console_open(struct console_device *cdev)
> > +{
> > +	int ret;
> > +
> > +	if (cdev->f_active)
> > +		return 0;
> > +
> > +	if (cdev->startup) {
> > +		ret = cdev->startup(cdev);
> > +		if (ret)
> > +			return ret;
> > +	}
> > +
> > +	if (cdev->setbrg) {
> > +		cdev->baudrate = CONFIG_BAUDRATE;
> 
> I believe cdev->baudrate should be set only once during initialization.
> When I deactivate a console and activate it again I don't expect the
> baudrate to be changed to it's default value.

maybe but if the device is not a console but rs485 you never set the baudrate
today same if a device is never active

as example use a non active device for loadxy

so I'm think that the console_open is more like man 2 open + ioctl to use a
cdev

later we will switch to open + ioctl API
for now on I prefer to just fix the big issues and prepare to switch easly

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
