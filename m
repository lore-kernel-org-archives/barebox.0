Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate03.web.de ([217.72.192.234])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PUb6G-0002jb-CV
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 08:28:26 +0000
Date: Mon, 20 Dec 2010 09:27:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101220082720.GN6017@pengutronix.de>
References: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
	<1292685309-32326-3-git-send-email-s.hauer@pengutronix.de>
	<201012200831.34131.marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201012200831.34131.marc@cpdesign.com.au>
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
Subject: Re: [PATCH 2/7] basic LED support
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

Hi Marc,

On Mon, Dec 20, 2010 at 08:31:34AM +1100, Marc Reilly wrote:
> Hi Sascha,
> 
> Thanks, this works well for my board. (tri colour led).
> 
> Was drivers/led/led-triggers.c missing from the patch set? 
> I haven't been able to compile with trigger support...

Yes, it's missing. I'll send a new series shortly.

> 
> > +/**
> > + * led_register - Register a LED
> > + * @param led	the led
> > + */
> > +int led_register(struct led *led)
> > +{
> > +	led->num = num_leds++;
> > +
> > +	list_add_tail(&led->list, &leds);
> > +
> > +	return 0;
> > +}
> 
> How about being able to register a led at a specific number? This means that 
> boot/init scripts that want to interact with leds don't rely on the order that 
> they are registered.
> 
> I also like the suggestion of associating a name to LEDs. This may even be a 
> better fit for scripting than reserved numbering.

I'll add a name for the LEDs

> 
> 
> > +
> > +/**
> > + * led_unregister - Unegister a LED
> > + * @param led	the led
> > + */
> > +void led_unregister(struct led *led)
> > +{
> > +	list_del(&led->list);
> > +}
> > diff --git a/include/led.h b/include/led.h
> > new file mode 100644
> > index 0000000..62d0d08
> > --- /dev/null
> > +++ b/include/led.h
> > @@ -0,0 +1,25 @@
> > +#ifndef __LED_H
> > +#define __LED_H
> > +
> > +struct led {
> > +	unsigned long triger;
> 
> Spelling typo? (Should this be trigger ?)

Indeed. It turns out I don't need this line add all, so I removed it.

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
