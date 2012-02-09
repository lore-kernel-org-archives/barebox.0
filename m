Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSWA-0000Wu-TN
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:50:29 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1328002599-7539-1-git-send-email-s.hauer@pengutronix.de>
 <1328136148-23307-1-git-send-email-robert.jarzmik@free.fr>
 <20120203095205.GF1990@pengutronix.de> <87mx903p09.fsf@free.fr>
 <87ehu54a8y.fsf@free.fr> <20120209081045.GU3852@pengutronix.de>
Date: Thu, 09 Feb 2012 12:50:17 +0100
In-Reply-To: <20120209081045.GU3852@pengutronix.de> (Sascha Hauer's message of
 "Thu, 9 Feb 2012 09:10:45 +0100")
Message-ID: <877gzw445i.fsf@free.fr>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:
> Experience shows that the framebuffer shouldn't be enabled on
> initialization time. If it does you end up with a framebuffer showing
> a blank screen in the best case. Instead the framebuffer should be
> enabled explicitely once there is an image on the screen which looks
> much nicer to the user. That said the following should be removed from
> the pxafb driver:
>
> 	if (pdata->enable_on_load)
> 		info->fbops->fb_enable(info);
>
> Are you ok with that?
For the pxafb, yes agreed.

I still see a small issue with the PWM API.
When I register the pxa-pwm driver, I have :
 pxa_pwm_probe(struct device_d *dev)
   -> base = dev_request_mem_region(dev, 0);
   -> pxa_pwm = xzalloc(...)
   -> pxa_pwm->name = drv_name(...)
   -> pxa_pwm->ops = &pxa_pwm_ops,
   -> pwmchip_add(pxa_pwm)

As you can see, the "base" is lost, and I have no way to store it in the
pwm_chip structure.

Shouldn't the pwm_chip structure have a priv pointer ?

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
