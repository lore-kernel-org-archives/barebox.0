Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBL9A-0008A1-Bz
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 07:44:41 +0000
Date: Tue, 11 Sep 2012 09:44:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120911074432.GH18243@pengutronix.de>
References: <1347014799-23478-1-git-send-email-alexg@meprolight.com>
 <20120910073632.GV18243@pengutronix.de>
 <4875438356E7CA4A8F2145FCD3E61C0B3074AA38F9@MEP-EXCH.meprolight.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4875438356E7CA4A8F2145FCD3E61C0B3074AA38F9@MEP-EXCH.meprolight.com>
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
Subject: Re: [PATCH]    video imx-ipu-fb: add clear screen
To: Alex Gershgorin <alexg@meprolight.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Alex Gershgorin <alexgershgorin@gmail.com>

On Mon, Sep 10, 2012 at 01:16:26PM +0300, Alex Gershgorin wrote:
> Hi Sascha,
> 
>  On Fri, Sep 07, 2012 at 01:46:39PM +0300, Alex Gershgorin wrote:
> > This patch clear screen before usage
> >
> > Signed-off-by: Alex Gershgorin <alexg@meprolight.com>
> > ---
> >  drivers/video/imx-ipu-fb.c |    4 ++++
> >  1 files changed, 4 insertions(+), 0 deletions(-)
> >
> > diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
> > index 8039de0..d46cced 100644
> > --- a/drivers/video/imx-ipu-fb.c
> > +++ b/drivers/video/imx-ipu-fb.c
> > @@ -1012,6 +1012,10 @@ static int imxfb_probe(struct device_d *dev)
> >                                              (info->bits_per_pixel >> 3));
> >               if (!fbi->info.screen_base)
> >                       return -ENOMEM;
> > +
> > +             /* Clear the screen */
> > +             memset((char *)fbi->info.screen_base, 0,
> > +             info->xres * info->yres * (info->bits_per_pixel >> 3));
> 
> > > Not clearing the screen is intentional. Normally the fb drivers do not
> > > enable the framebuffer until explicitely requested via fb0.enable=1. The
> > > environment normally is supposed to set a picture on the screen and
> > > enable it afterwards.
> > > That said, we can clear the screen as with MMU enabled this probably
> > > does not take long time. But then it should be done in the fb core.
> 
> Thanks for your explanation.
> In my case, I displayed picture on the screen, of course as you said I added to "init" script   
> fb0.enable = 1
> bmp / env / logo.bmp

I would exchange the above commands. I don't know how this looks on your
hardware, but often enough it looks a lot nicer if you draw the logo
first and enable the framebuffer (the backlight most importantly)
afterwards.

> it was easy.
> 
> The problem is that I have a screen with resolution 800x600, but
> picture that I displayed on the my screen is much smaller, resulting
> in a picture is displayed fine, but on the sides I get garbage.  This
> patch fixes this issue, of course it is not the only way to solve this
> issue.

Yes, I thought that. 'cp /dev/zero /dev/fb0' would be another solution.
I think the memset in the fb code is fine, but it should be done in the
generic code.

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
