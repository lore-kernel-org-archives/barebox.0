Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UocBx-0005ap-2s
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 16:22:06 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 51AE7FFA222
 for <barebox@lists.infradead.org>; Mon, 17 Jun 2013 18:21:42 +0200 (CEST)
Date: Mon, 17 Jun 2013 18:17:42 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130617161742.GH27130@game.jcrosoft.org>
References: <1370207222.5021.0.camel@lovely> <1371069946.25992.104.camel@mars>
 <B2329465-02EF-41CF-8B29-5C7A8BDFB349@jcrosoft.com>
 <1371163239.4055.180.camel@mars>
 <20130614062910.GA10743@x61s.8.8.8.8>
 <1371194628.3655.1.camel@lws-weitzel>
 <1371197742.3873.8.camel@mars>
 <20130614114312.GG27130@game.jcrosoft.org>
 <1371222662.28854.15.camel@mars>
 <20130617073647.GJ32299@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130617073647.GJ32299@pengutronix.de>
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
Subject: Re: [PATCH v6] omap4-fb: add driver
To: Sascha Hauer <s.hauer@pengutronix.de>, Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc: barebox@lists.infradead.org

On 09:36 Mon 17 Jun     , Sascha Hauer wrote:
> Hi Christoph,
> 
> Some small comments, then we shoulf be good to go.
> 
> On Fri, Jun 14, 2013 at 05:11:02PM +0200, Christoph Fritz wrote:
> > This patch adds omap4 display controller support.
> > 
> > index 94e42c6..e70ddbd 100644
> > --- a/arch/arm/mach-omap/Makefile
> > +++ b/arch/arm/mach-omap/Makefile
> > @@ -28,6 +28,7 @@ obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
> >  pbl-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
> >  obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
> >  obj-$(CONFIG_SHELL_NONE) += xload.o
> > +obj-$(CONFIG_DRIVER_VIDEO_OMAP4) += omap4_fb.o
> 
> Please compile this in unconditionally. Otherwise board using this have
> to add a dependency on CONFIG_DRIVER_VIDEO_OMAP4 aswell.

if you have an inline for the fonction no need
as this will do the trick too

the mach-omap and the driver should be splittted and IIRC the omap fb is not
only for omap 4

I add Tomi to this patch from TI

> 
> > +struct device_d *omap4_add_display(void *pdata)
> 
> Let this function take a struct omap4fb_platform_data *. This makes it
> more clear how to call it.
and check the prototype by gcc
> 
> > +static void omap4fb_enable(struct fb_info *info)
> > +{
> > +	struct omap4fb_device *fbi =
> > +		container_of(info, struct omap4fb_device, info);
> 
> You could add a static inline to_omap4fb function. It's less error prone
> and the above would fit into a single line.
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
