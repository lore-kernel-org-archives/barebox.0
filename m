Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUUmB-0001m1-W1
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 09:14:44 +0000
Message-ID: <1499678062.2924.10.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 10 Jul 2017 11:14:22 +0200
In-Reply-To: <20170707221759.GA29219@ravnborg.org>
References: <20170707221759.GA29219@ravnborg.org>
Mime-Version: 1.0
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
Subject: Re: Next step to enable DT support for at91sam9263ek?
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

Am Samstag, den 08.07.2017, 00:17 +0200 schrieb Sam Ravnborg:
> Hi all.
> 
> I have now spent some time trying to dive into how to enable DT
> support for at91sam9263ek - but so far with only limited success.
> I have copied the device tree from the kernel and included
> the tree in the build. This step was simple.
> 
> I also updated the ENTRY_FUNCTION to take a pointer to the ftd.
> Also simple.
> 
> There was a few build issues that I then had to fix.
> But when running the resulting barebox nothing was printed to
> the console.
> I ended up dropping following from the build:
> arch/arm/boards/at91sam9263ek/init.c
> arch/arm/mach-at91/at91sam9263.c
> arch/arm/mach-at91/at91sam9263_devices.c
> 
> Thein I got following output when booting:
> 
> barebox 2017.07.0-00082-g265d9e416-dirty #27 Sat Jul 8 00:00:54 CEST 2017
> 
> 
> Board: Atmel at91sam9263ek
> fset: 10000000
> Main crystal frequency not set, using approximate value
> AT91: Detected soc type: at91sam9263
> AT91: Detected soc subtype: Unknown
> comparing usart with usart
> Main crystal frequency not set, using approximate value
> comparing usart with usart
> Main crystal frequency not set, using approximate value
> gpio-at91 fffff200.gpio: AT91 gpio driver registered
> gpio-at91 fffff400.gpio: AT91 gpio driver registered
> gpio-at91 fffff600.gpio: AT91 gpio driver registered
> gpio-at91 fffff800.gpio: AT91 gpio driver registered
> gpio-at91 fffffa00.gpio: AT91 gpio driver registered
> pinctrl-at91 pinctrl.2: AT91 pinctrl registered
> comparing macb_clk with hclk
> comparing macb_clk with pclk
> macb fffbc000.ethernet: no macb_clk
> macb fffbc000.ethernet: probe failed: Invalid argument
> of_get_named_gpio_flags: cannot parse cd-gpios property: -2
> comparing mci_clk with mci_clk
> Main crystal frequency not set, using approximate value
> atmel_mci fff80000.mmc: version: 0x210
> atmel_mci fff80000.mmc: registered as fff80000.mmc
> malloc space: 0x23afad80 -> 0x23efad7f (size 4 MiB)
> environment load /dev/env0: No such file or directory
> Maybe you have to create the partition.
> running /env/bin/init...
> \e[?25h
> Hit any key to stop autoboot:    1
> 
> This does not look entirely correct...
> 
> Right now I am a bit stuck for what would be next step - any hints
> would be highly appreciated.

Probably a lot of the devices present on the AT91 boards have driver
with no proper DT support in Barebox, so you might need to extend some
of them.

Also if the boards have any specific board code, you need to convert
that to initcalls guarded by the board DT compatible.

HTH,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
