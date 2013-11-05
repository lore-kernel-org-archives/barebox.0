Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x235.google.com ([2a00:1450:4013:c00::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdcJQ-00030G-Ar
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 08:48:37 +0000
Received: by mail-ee0-f53.google.com with SMTP id e51so1650622eek.12
 for <barebox@lists.infradead.org>; Tue, 05 Nov 2013 00:48:12 -0800 (PST)
Date: Tue, 5 Nov 2013 09:48:07 +0100
From: Andre Heider <a.heider@gmail.com>
Message-ID: <20131105084807.GA89597@localhost>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
 <1383606064-30494-2-git-send-email-a.heider@gmail.com>
 <20131105000615.GA27728@omega>
 <20131105080057.GC24559@pengutronix.de>
 <20131105081743.GA26656@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131105081743.GA26656@omega>
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

Hi Alexander,

On Tue, Nov 05, 2013 at 09:17:44AM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> On Tue, Nov 05, 2013 at 09:00:57AM +0100, Sascha Hauer wrote:
> > On Tue, Nov 05, 2013 at 01:06:22AM +0100, Alexander Aring wrote:
> > > On Tue, Nov 05, 2013 at 12:00:59AM +0100, Andre Heider wrote:
> > > > Add support for framebuffers with noncontiguous horizontal lines.
> > > > 
> > > > Video drivers can set this value if the hardware requires it.
> > > > In case a driver does not set it, the current value of
> > > > xres * (bpp / 8) is used instead.
> > > > 
> > > > Signed-off-by: Andre Heider <a.heider@gmail.com>
> > > > ---
> > > >  drivers/video/fb.c | 11 +++++++++--
> > > >  include/fb.h       |  1 +
> > > >  2 files changed, 10 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> > > > index 420e4e3..0159994 100644
> > > > --- a/drivers/video/fb.c
> > > > +++ b/drivers/video/fb.c
> > > > @@ -72,12 +72,16 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
> > > >  
> > > >  	info->xres = info->mode->xres;
> > > >  	info->yres = info->mode->yres;
> > > > +	info->line_length = 0;
> > > >  
> > > >  	ret = info->fbops->fb_activate_var(info);
> > > >  
> > > > +	if (!info->line_length)
> > > > +		info->line_length = info->xres * (info->bits_per_pixel >> 3);
> > > > +
> > > Isn't this already set from the register_framebuffer function?
> > > You wanna see that somebody changed this value in info->fbops->fb_activate_var(info)?
> > > 
> > > Then I would do nothing here.
> > 
> > It is set from register_framebuffer, but the mode setup invalidates it,
> > So Andre sets it to 0 first and updates it after calling into the driver
> > if necessary. The code looks correct. Maybe I misunderstand you?
> > 
> ok. Was a hard day and night for me ;-)
> Maybe I was too tired and look all day into another code and other
> things ;-).
> 
> I think I need a coffee or beer now.
> 
> 
> I mean we have the same code in register_framebuffer:
> 
> if (!info->line_length)
>         info->line_length = info->xres * (info->bits_per_pixel >> 3);
> 
> I don't know the exactly context to call fb_setup_mode but then we set
> it twice and we don't need to check if the value has changed from
> fb_activate_var function.

With this patch we have a new line_length value, but fb drivers don't
have to set it, its optional. What you see in register_framebuffer()
is a default value for the initial mode. The framework sets it in case
the driver doesn't.

But we can also change modes, so if a fb driver doesn't update
line_length in the fb_activate_var callback, we have a stale line_length
value from the old mode.
So I set it to zero before the callback and check afterwards if the
driver set it. Without that there would be no way to distinguish if the
value is valid for the new mode or a stale one from the prior mode.

Thanks,
Andre

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
