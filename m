Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PIdVi-0001rP-LK
	for barebox@lists.infradead.org; Wed, 17 Nov 2010 08:37:07 +0000
Date: Wed, 17 Nov 2010 09:36:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101117083644.GP6017@pengutronix.de>
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
	<1288092708-5187-9-git-send-email-jbe@pengutronix.de>
	<20101101144142.GA6017@pengutronix.de>
	<201011151235.09524.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201011151235.09524.jbe@pengutronix.de>
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
Subject: Re: [PATCH 08/12] Add a video driver for S3C2440 bases platforms
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 15, 2010 at 12:35:09PM +0100, Juergen Beisert wrote:
> Sascha Hauer wrote:
> > On Tue, Oct 26, 2010 at 01:31:44PM +0200, Juergen Beisert wrote:
> > > From: Juergen Beisert <juergen@kreuzholzen.de>
> > >
> > > Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
> > > ---
> > >  arch/arm/mach-s3c24xx/include/mach/fb.h |   40 +++
> > >  drivers/video/Kconfig                   |    6 +
> > >  drivers/video/Makefile                  |    1 +
> > >  drivers/video/s3c.c                     |  452
> > > +++++++++++++++++++++++++++++++ 4 files changed, 499 insertions(+), 0
> > > deletions(-)
> > >  create mode 100644 arch/arm/mach-s3c24xx/include/mach/fb.h
> > >  create mode 100644 drivers/video/s3c.c
> > >
> > > diff --git a/arch/arm/mach-s3c24xx/include/mach/fb.h
> > > +
> > > +#define fb_info_to_s3cfb_host(x) ((struct s3cfb_host*)((x)->host))
> > >
> > > +#define s3cfb_host_to_s3c_fb_platform_data(x) ((struct
> > > s3c_fb_platform_data*)((x)->hw_dev->platform_data))
> >
> > Please add a pointer to 3c_fb_platform_data to s3cfb_host and get rid of
> > this define.
> 
> But this pointer would only provide redundant information, as this pointer is 
> already part of the hw_dev member.

As said before it's a bad idea to dereference this platform_data pointer
in too many functions. We loose type safety and when multiple devices
are involved it gets to easy to pick the wrong device. Also, it's
unreadable.

> > > +
> > > +	/*
> > > +	 * if no framebuffer memory was specified yet, allocate one,
> > > +	 * and allocate more memory, on user request
> > > +	 */
> > > +	if (fb_info->fb_dev->map_base == 0U)
> > > +		fb_info->fb_dev->map_base =
> > > (resource_size_t)xzalloc(fb_info->fb_dev->size);
> >
> > Honestly I don't understand what the two blocks above do. I hope this
> > gets simpler once we remove the base/size arguments from
> > register_framebuffer.
> 
> These blocks distinguish between dynamic and a fixed framebuffer. And 
> register_framebuffer's base/size parameters only allow to define a fixed 
> framebuffer. So, how to define a fixed framebuffer when the base and size 
> parameter are gone?

At some point you either allocate a framebuffer or use the memory
provided by the platform data. There is no need to pass the memory
through the framework beforehand.

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
