Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TLTLA-0000Yn-CZ
 for barebox@lists.infradead.org; Tue, 09 Oct 2012 06:30:53 +0000
Message-ID: <5073C495.4070900@phytec.de>
Date: Tue, 09 Oct 2012 08:30:45 +0200
From: Teresa Gamez <t.gamez@phytec.de>
MIME-Version: 1.0
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
 <1349476393-25520-6-git-send-email-vicencb@gmail.com>
 <20121007101130.GC1322@pengutronix.de>
In-Reply-To: <20121007101130.GC1322@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 05/11] omap: revert gpiolib
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, vj <vicencb@gmail.com>

Hello Sascha,

Am 07.10.2012 12:11, schrieb Sascha Hauer:
> On Sat, Oct 06, 2012 at 12:33:07AM +0200, vj wrote:
>> This patch reverts 29e4031b460d1c84c1a8fc276199d40680b354d4.
>> This is not meant to revert the gpiolib, this is only a temporal
>> workaround because it breaks support for ArchosG9 tablet.
>> Please, can anybody check if using gpiolib works for other omap4460
>> based boards?
> Teresa, have you tested this on OMAP4?

Yes, but I have only tested it with OMAP4430.
Now checking it with 4460, I see that it does not work here, too.
Problem is in the omap4_scale_vcores function called by *_init_lowlevel().
It already uses the gpio_direction_output() function on an OMAP4460 and 
crashes there. Should I do the gpio setup
just "manually" here?
But I wonder anyway why It is crashing at all. I would expect the 
condition if (!chip) to be true in the function gpio_direction_output 
(drivers/gpio/gpio.c) and to return at this point. But it doesn't.

>
>
> I can't find anything obviously wrong int this patch.
>>   
>> -static int omap_gpio_probe(struct device_d *dev)
>> -{
>> -	struct omap_gpio_chip *omapgpio;
>> +	gpio_set_value(gpio, value);
>>   
>> -	omapgpio = xzalloc(sizeof(*omapgpio));
>> -	omapgpio->base = dev_request_mem_region(dev, 0);
>> -	omapgpio->chip.ops = &omap_gpio_ops;
>> -	omapgpio->chip.base = -1;
> base should be calculated as dev->id * 32. Otherwise the gpio numbering
> gets depended on the probe order.

I will fix this.

>
>> -	omapgpio->chip.ngpio = 32;
>> -	omapgpio->chip.dev = dev;
>> -	gpiochip_add(&omapgpio->chip);
>> +	reg += OMAP_GPIO_OE;
>>   
>> -	dev_dbg(dev, "probed gpiochip%d with base %d\n",
>> -				dev->id, omapgpio->chip.base);
>> +	val = __raw_readl(reg);
>> +	val &= ~(1 << get_gpio_index(gpio));
>> +	__raw_writel(val, reg);
>>   
>>   	return 0;
>>   }
> [...]
>
>>   
>> -coredevice_initcall(omap3_gpio_init);
>> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
>> index 584d724..6562268 100644
>> --- a/arch/arm/mach-omap/omap4_generic.c
>> +++ b/arch/arm/mach-omap/omap4_generic.c
>> @@ -574,22 +574,3 @@ const struct gpmc_config omap4_nand_cfg = {
>>   	.base = 0x28000000,
>>   	.size = GPMC_SIZE_16M,
>>   };
>> -
>> -static int omap4_gpio_init(void)
>> -{
>> -	add_generic_device("omap-gpio", 0, NULL, 0x4a310100,
>> -				0x1000, IORESOURCE_MEM, NULL);
> It seems on OMAP4 the register addresses are at an additional 0x100
> offset compared to OMAP3. This little trick here to compensate that
> will lead to problems should we add devicetree support for omap. For
> now it's ok, but the region size should be reduced to 0x0f00 so that
> there's no risk that it overlaps with the next region.

What about moving the gpio offsets to the *-silicon.h? So we may have
different values for OMAP3 and OMAP4.

Teresa

>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
