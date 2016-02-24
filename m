Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYXPu-0007Dl-Qm
 for barebox@lists.infradead.org; Wed, 24 Feb 2016 11:15:39 +0000
Date: Wed, 24 Feb 2016 12:15:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160224111516.GM3939@pengutronix.de>
References: <CABQt-UnnTJffkX_6hCXOjh+hgkjiGausWuuCwwEWncvpoiTqAQ@mail.gmail.com>
 <20160223083236.GA3939@pengutronix.de>
 <CABQt-U=+f_5EJvw=9FFbw2cR2A54te6WN3Dgn4jtyuoPvC+CzQ@mail.gmail.com>
 <CABQt-U=jXuJMJY1Uew4cVa2Ap=dpX9rzW91JbiuRSDpeuf+C0g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABQt-U=jXuJMJY1Uew4cVa2Ap=dpX9rzW91JbiuRSDpeuf+C0g@mail.gmail.com>
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
Subject: Re: Help configuring i.MX6 IPUv3 with a parrallel display
To: Philippe Leduc <ledphilippe@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 24, 2016 at 09:22:40AM +0100, Philippe Leduc wrote:
> Hi,
> 
> Since I do not manage to get a splashscreen with the simple-panel
> driver, I tried the other way: adding a driver for
> imx-parrallel-display that exposes the display-timings. So far I
> managed to add a video mode to my framebuffer:
> 
> devinfo fb0
> Resources:
>   num: 0
>   start: 0x2005a000
>   size: 0x0007f800
> Available modes:
>   rk043fn07h: 480x272@0
> Parameters:
>   enable: 0
>   mode_name: rk043fn07h
>   shadowfb: 1
> 
> But there is no refresh rate? Don't know if it is a problem, but my
> framebuffer still doesn't want to work (however it is more or less
> better than before):

The refresh rate is 0 because the code in of_display_timing.c doesn't
set the refresh rate. That's not nice, but shouldn't be a problem.

> 
> fb0.enable=1
> imx-ipuv3-crtc imx-ipuv3-crtc0: ipu_crtc_mode_set: mode->xres: 480
> imx-ipuv3-crtc imx-ipuv3-crtc0: ipu_crtc_mode_set: mode->yres: 272
> imx-ipuv3-crtc imx-ipuv3-crtc0: initializing display controller failed with -22

The only way ipu_dc_init_sync() fails is when interface_pix_fmt is
invalid. This means you either have no "interface-pix-fmt" property or
this property doesn't get evaluated. You could try setting it to
V4L2_PIX_FMT_RGB24 manually in ipu_crtc_mode_set().

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
