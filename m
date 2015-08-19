Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS3jM-0001N6-5f
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 13:48:40 +0000
Message-ID: <1439992098.31432.16.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 19 Aug 2015 15:48:18 +0200
In-Reply-To: <20150819134634.GT18700@pengutronix.de>
References: <1439885905-4214-1-git-send-email-l.stach@pengutronix.de>
 <20150819134634.GT18700@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/2] video: vpl: depend on OFTREE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 19.08.2015, 15:46 +0200 schrieb Sascha Hauer:
> On Tue, Aug 18, 2015 at 10:18:24AM +0200, Lucas Stach wrote:
> > VPL uses the of_graph bindings, which are only available if OFTREE
> > support is compiled in.
> > 
> > Also fix the drivers using VPL to depend on OFTREE.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  drivers/video/Kconfig | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> > index bb8bbb539481..5ecac4209696 100644
> > --- a/drivers/video/Kconfig
> > +++ b/drivers/video/Kconfig
> > @@ -13,6 +13,7 @@ config FRAMEBUFFER_CONSOLE
> >  	prompt "framebuffer console support"
> >  
> >  config VIDEO_VPL
> > +	depends on OFTREE
> >  	bool
> >  
> >  config DRIVER_VIDEO_ATMEL
> > @@ -122,6 +123,7 @@ config DRIVER_VIDEO_MTL017
> >  	select VIDEO_VPL
> >  	depends on I2C
> >  	depends on GPIOLIB
> > +	depends on OFTREE
> 
> This doesn't apply neither on master nor on next. Where shall this patch
> be applied?
> 
On top of the previous randcfg fixes series I sent out earlier.

Regards,
Lucas

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
