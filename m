Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLThn-00010o-5f
 for barebox@lists.infradead.org; Tue, 09 Oct 2012 06:54:17 +0000
Date: Tue, 9 Oct 2012 08:54:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121009065408.GB27665@pengutronix.de>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
 <1349476393-25520-6-git-send-email-vicencb@gmail.com>
 <20121007101130.GC1322@pengutronix.de> <5073C495.4070900@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5073C495.4070900@phytec.de>
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
Subject: Re: [PATCH 05/11] omap: revert gpiolib
To: Teresa Gamez <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org, vj <vicencb@gmail.com>

Hi Teresa,

On Tue, Oct 09, 2012 at 08:30:45AM +0200, Teresa Gamez wrote:
> Hello Sascha,
> 
> Am 07.10.2012 12:11, schrieb Sascha Hauer:
> >On Sat, Oct 06, 2012 at 12:33:07AM +0200, vj wrote:
> >>This patch reverts 29e4031b460d1c84c1a8fc276199d40680b354d4.
> >>This is not meant to revert the gpiolib, this is only a temporal
> >>workaround because it breaks support for ArchosG9 tablet.
> >>Please, can anybody check if using gpiolib works for other omap4460
> >>based boards?
> >Teresa, have you tested this on OMAP4?
> 
> Yes, but I have only tested it with OMAP4430.
> Now checking it with 4460, I see that it does not work here, too.
> Problem is in the omap4_scale_vcores function called by *_init_lowlevel().
> It already uses the gpio_direction_output() function on an OMAP4460
> and crashes there. Should I do the gpio setup
> just "manually" here?

I think you have to. Otherwise we would pull the whole gpio/driver stack
into the pbl should we want to build omap as a compressed image.

> But I wonder anyway why It is crashing at all. I would expect the
> condition if (!chip) to be true in the function
> gpio_direction_output (drivers/gpio/gpio.c) and to return at this
> point. But it doesn't.

The bss is not yet cleared which means that all unitialized variables
contain random garbage.

> >>-	struct omap_gpio_chip *omapgpio;
> >>+	gpio_set_value(gpio, value);
> >>-	omapgpio = xzalloc(sizeof(*omapgpio));
> >>-	omapgpio->base = dev_request_mem_region(dev, 0);
> >>-	omapgpio->chip.ops = &omap_gpio_ops;
> >>-	omapgpio->chip.base = -1;
> >base should be calculated as dev->id * 32. Otherwise the gpio numbering
> >gets depended on the probe order.
> 
> I will fix this.

Thanks.

> >>-				0x1000, IORESOURCE_MEM, NULL);
> >It seems on OMAP4 the register addresses are at an additional 0x100
> >offset compared to OMAP3. This little trick here to compensate that
> >will lead to problems should we add devicetree support for omap. For
> >now it's ok, but the region size should be reduced to 0x0f00 so that
> >there's no risk that it overlaps with the next region.
> 
> What about moving the gpio offsets to the *-silicon.h? So we may have
> different values for OMAP3 and OMAP4.

No. That would mean conflicting defines in the header files. These are a
pain I'm currently trying to get rid of at i.MX. The correct way would
be to use the device_id mechanism to abstract between SoC differences.

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
