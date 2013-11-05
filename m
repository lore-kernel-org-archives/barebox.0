Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdbZj-0001YP-FM
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 08:01:24 +0000
Date: Tue, 5 Nov 2013 09:00:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131105080057.GC24559@pengutronix.de>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
 <1383606064-30494-2-git-send-email-a.heider@gmail.com>
 <20131105000615.GA27728@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131105000615.GA27728@omega>
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
Subject: Re: [PATCH v2 1/6] fb: add a line_length value to struct fb_info
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 05, 2013 at 01:06:22AM +0100, Alexander Aring wrote:
> On Tue, Nov 05, 2013 at 12:00:59AM +0100, Andre Heider wrote:
> > Add support for framebuffers with noncontiguous horizontal lines.
> > 
> > Video drivers can set this value if the hardware requires it.
> > In case a driver does not set it, the current value of
> > xres * (bpp / 8) is used instead.
> > 
> > Signed-off-by: Andre Heider <a.heider@gmail.com>
> > ---
> >  drivers/video/fb.c | 11 +++++++++--
> >  include/fb.h       |  1 +
> >  2 files changed, 10 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> > index 420e4e3..0159994 100644
> > --- a/drivers/video/fb.c
> > +++ b/drivers/video/fb.c
> > @@ -72,12 +72,16 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
> >  
> >  	info->xres = info->mode->xres;
> >  	info->yres = info->mode->yres;
> > +	info->line_length = 0;
> >  
> >  	ret = info->fbops->fb_activate_var(info);
> >  
> > +	if (!info->line_length)
> > +		info->line_length = info->xres * (info->bits_per_pixel >> 3);
> > +
> Isn't this already set from the register_framebuffer function?
> You wanna see that somebody changed this value in info->fbops->fb_activate_var(info)?
> 
> Then I would do nothing here.

It is set from register_framebuffer, but the mode setup invalidates it,
So Andre sets it to 0 first and updates it after calling into the driver
if necessary. The code looks correct. Maybe I misunderstand you?

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
