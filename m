Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1URKCq-0005Om-8H
 for barebox@lists.infradead.org; Sun, 14 Apr 2013 10:30:45 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m3r4ixgmok.fsf@intrepid.localdomain>
 <m3ehexgmbs.fsf@intrepid.localdomain>
 <20130402065241.GB1906@pengutronix.de>
 <m3bo9q36ua.fsf@intrepid.localdomain>
 <m3obdq15hr.fsf_-_@intrepid.localdomain>
 <20130408072708.GT1568@game.jcrosoft.org>
Date: Sun, 14 Apr 2013 12:30:40 +0200
In-Reply-To: <20130408072708.GT1568@game.jcrosoft.org> (Jean-Christophe
 PLAGNIOL-VILLARD's message of "Mon, 8 Apr 2013 09:27:08 +0200")
Message-ID: <m3haj94d67.fsf@intrepid.localdomain>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: Support for IXP4xx CPU.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

>> +static int ixp4xx_console_init(void)
>> +{
>> +	/* Register the serial port */
>> +	add_ns16550_device(0, (u32)IXP4XX_UART1_BASE, 1024, IORESOURCE_MEM_8BIT, &serial_plat);
> we have multiple uart on ixp do no hard code it

Yes, but there is a single console, at least on all devices I have
access to. I can add CONFIG_* item for this, but it will be forced to 0
for now anyway (on all supported boards).

>> --- a/drivers/serial/serial_ns16550.c
>> +++ b/drivers/serial/serial_ns16550.c
> please split this in an other patch
>
> and pass this as a pdata
>> @@ -137,7 +137,11 @@ static void ns16550_serial_init_port(struct console_device *cdev)
>>  {
>>  	/* initializing the device for the first time */
>>  	ns16550_write(cdev, 0x00, lcr); /* select ier reg */
>> +#ifdef CONFIG_ARCH_IXP4XX
>> +	ns16550_write(cdev, IER_UUE, ier); /* Enable UART operation */
>> +#else
>>  	ns16550_write(cdev, 0x00, ier);
>> +#endif
>>  
>>  #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
>>  	ns16550_write(cdev, 0x07, mdr1);	/* Disable */

What do you mean?

ns16550_probe() doesn't seem to accept anything which could be used for
custom init:

static int ns16550_probe(struct device_d *dev)
{
	struct console_device *cdev;
	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;

	/* we do expect platform specific data */
	if (plat == NULL)
		return -EINVAL;
	dev->priv = dev_request_mem_region(dev, 0);

	cdev = xzalloc(sizeof(*cdev));

	cdev->dev = dev;
	if (plat->f_caps)
		cdev->f_caps = plat->f_caps;
	else
		cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
	cdev->tstc = ns16550_tstc;
	cdev->putc = ns16550_putc;
	cdev->getc = ns16550_getc;
	cdev->setbrg = ns16550_setbaudrate;

	ns16550_serial_init_port(cdev);

	return console_register(cdev);
}

-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
