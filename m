Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvUIh-0006DE-7Q
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 13:44:39 +0000
Date: Thu, 9 Feb 2012 14:44:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120209134431.GZ3852@pengutronix.de>
References: <1328002599-7539-1-git-send-email-s.hauer@pengutronix.de>
 <1328136148-23307-1-git-send-email-robert.jarzmik@free.fr>
 <20120203095205.GF1990@pengutronix.de> <87mx903p09.fsf@free.fr>
 <87ehu54a8y.fsf@free.fr> <20120209081045.GU3852@pengutronix.de>
 <877gzw445i.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877gzw445i.fsf@free.fr>
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

On Thu, Feb 09, 2012 at 12:50:17PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> > Experience shows that the framebuffer shouldn't be enabled on
> > initialization time. If it does you end up with a framebuffer showing
> > a blank screen in the best case. Instead the framebuffer should be
> > enabled explicitely once there is an image on the screen which looks
> > much nicer to the user. That said the following should be removed from
> > the pxafb driver:
> >
> > 	if (pdata->enable_on_load)
> > 		info->fbops->fb_enable(info);
> >
> > Are you ok with that?
> For the pxafb, yes agreed.
> 
> I still see a small issue with the PWM API.
> When I register the pxa-pwm driver, I have :
>  pxa_pwm_probe(struct device_d *dev)
>    -> base = dev_request_mem_region(dev, 0);
>    -> pxa_pwm = xzalloc(...)
>    -> pxa_pwm->name = drv_name(...)
>    -> pxa_pwm->ops = &pxa_pwm_ops,
>    -> pwmchip_add(pxa_pwm)
> 
> As you can see, the "base" is lost, and I have no way to store it in the
> pwm_chip structure.
> 
> Shouldn't the pwm_chip structure have a priv pointer ?

The intention was to put a struct pwm_chip into a struct pxa_pwm_chip
and use container_of.

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
