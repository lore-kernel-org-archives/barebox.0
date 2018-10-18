Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gDAaP-000716-A1
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 15:51:47 +0000
Date: Thu, 18 Oct 2018 17:51:31 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20181018155131.zxnbqgxyu7pb7iob@pengutronix.de>
References: <20181018101931.11417-1-m.felsch@pengutronix.de>
 <20181018154204.GD2206@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181018154204.GD2206@ravnborg.org>
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
Subject: Re: [PATCH] i2c: introduce device_i2c_driver() macro
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hi Sam,

On 18-10-18 17:42, Sam Ravnborg wrote:
> Hi Marco
> 
> > diff --git a/drivers/video/mtl017.c b/drivers/video/mtl017.c
> > index 1a1f686223..085ea110ba 100644
> > --- a/drivers/video/mtl017.c
> > +++ b/drivers/video/mtl017.c
> > @@ -16,7 +16,6 @@
> >   *
> >   */
> >  #include <common.h>
> > -#include <init.h>
> >  #include <driver.h>
> >  #include <xfuncs.h>
> >  #include <errno.h>
> > @@ -270,11 +269,4 @@ static struct driver_d twl_driver = {
> >  	.name  = "mtl017",
> >  	.probe = mtl017_probe,
> >  };
> > -
> > -static int mtl017_init(void)
> > -{
> > -	i2c_driver_register(&twl_driver);
> > -	return 0;
> > -}
> > -
> > -device_initcall(mtl017_init);
> > +device_i2c_driver(twl_driver);
> 
> Not related to your patch, but it looks strange that
> the mtl017 file has a twl_driver.

You're right.

> It looks like a copy-paste issue from the past.

Yes it does and I copy-paste the issue too *argh*
We should fix this by a follow up patch.

Regards,
Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
