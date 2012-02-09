Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvP5f-0000lt-Io
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 08:10:53 +0000
Date: Thu, 9 Feb 2012 09:10:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120209081045.GU3852@pengutronix.de>
References: <1328002599-7539-1-git-send-email-s.hauer@pengutronix.de>
 <1328136148-23307-1-git-send-email-robert.jarzmik@free.fr>
 <20120203095205.GF1990@pengutronix.de> <87mx903p09.fsf@free.fr>
 <87ehu54a8y.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ehu54a8y.fsf@free.fr>
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
Subject: Re: [PATCH] drivers/pwm: add PXA pulse width modulator controller
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Wed, Feb 08, 2012 at 04:26:21PM +0100, Robert Jarzmik wrote:
> Robert Jarzmik <robert.jarzmik@free.fr> writes:
> 
> > Sascha Hauer <s.hauer@pengutronix.de> writes:
> >
> >> Hi Robert,
> >>
> >> Why not implement it as a regular driver? If we ever want to implement
> >> a commandline control of the pwms via pwm0.dutyns=xx we'll need
> >> a struct device.
> >
> > This is because in my own case, I need pwm to be registered before other devices
> > are probed. The trouble (in my case) is that for drivers/video/pxa.c, I have the
> > following call path :
> >  - pxafb_probe()
> >    -> pxafb_enable_controller()
> >      -> pxafb_backlight_power()
> >        -> mioa701_lcd_backlight()
> >           => 	struct pwm_device *pwm0 = pwm_request("pxa_pwm0");
> > 		pwm_enable(pwm0);
> > 		pwm_config(pwm0, 2000 * 1024, 4000 * 1024);
> >
> > I'm a bit afraid that the pxafb driver will be probed first, before pwm_pxa, and
> > therefore the backlight setting won't work. I haven't found a clean way to
> > specify this dependency.
> 
> Sascha, ping ?
> 
> Do you have a way to specify the dependency, and do you want me to adapt the
> driver ?

Sorry, I wanted to think about this issue and appearently forgot about
it.
So the moment has come we have the same problems as in the kernel: we
can't express the dependencies between devices. For your case I think
we can get around the problem once more.

Experience shows that the framebuffer shouldn't be enabled on
initialization time. If it does you end up with a framebuffer showing
a blank screen in the best case. Instead the framebuffer should be
enabled explicitely once there is an image on the screen which looks
much nicer to the user. That said the following should be removed from
the pxafb driver:

	if (pdata->enable_on_load)
		info->fbops->fb_enable(info);

Are you ok with that?

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
