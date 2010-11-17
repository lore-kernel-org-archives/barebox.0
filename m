Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PIdMJ-0001jV-IT
	for barebox@lists.infradead.org; Wed, 17 Nov 2010 08:27:16 +0000
Date: Wed, 17 Nov 2010 09:27:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101117082712.GO6017@pengutronix.de>
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
	<1288092708-5187-4-git-send-email-jbe@pengutronix.de>
	<20101101134714.GX6017@pengutronix.de>
	<201011151104.52552.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201011151104.52552.jbe@pengutronix.de>
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
Subject: Re: [PATCH 03/12] Bring in dynamic videomode selection at runtime
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 15, 2010 at 11:04:52AM +0100, Juergen Beisert wrote:
> Sascha Hauer wrote:
> > [...]
> > > +	fb_dev->priv = cdev;	/* pointer forward */
> > > +	cdev->dev = fb_dev;	/* pointer backward */
> > > +
> > > +	cdev->ops = &fb_ops;
> > > +	cdev->name = asprintf("fb%d", id);
> > > +
> > > +	cdev->size = fb_dev->size;	/* use the default if any */
> > > +	cdev->priv = info;
> > > +
> > > +	info->host = host;
> > > +	info->fb_dev = fb_dev;
> > > +
> > > +	/* setup defaults */
> > > +	if (host->bits_per_pixel != 0)
> > > +		info->bits_per_pixel = host->bits_per_pixel;
> > > +	else
> > > +		info->bits_per_pixel = 16;	/* means RGB565 */
> >
> > No, this does not mean RGB565. It could also mean BGR or even something
> > else.
> 
> You are right. But currently it means exactly what I wrote. All drivers 
> currently using RGB565 for 16 bpp. To make it as you stated, we need more 
> information about the bits per colour and their layout. Currently the 
> graphics drivers do it in their own way. No way to intervent from the 
> platform file.

No, the drivers are free to pass an arbitrary layout to the framework
using fb_bitfields. So you can't state in the framework that 16bit is
RGB565.

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
