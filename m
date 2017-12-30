Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eVOcV-0001GK-54
 for barebox@lists.infradead.org; Sat, 30 Dec 2017 21:24:45 +0000
Date: Sat, 30 Dec 2017 22:24:27 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20171230212427.GA27962@ravnborg.org>
References: <20171227211743.GA1084@ravnborg.org>
 <20171227211839.2359-5-sam@ravnborg.org>
 <CAHQ1cqGiUdFNbAGc_ce5E9cuxu4Ts7oW=XXCOu=Vg34J4yvykg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGiUdFNbAGc_ce5E9cuxu4Ts7oW=XXCOu=Vg34J4yvykg@mail.gmail.com>
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
Subject: Re: [PATCH 5/5] at91sam9263ek: enable devicetree
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey.

> > +static int check_fdt(void)
> > +{
> > +       return of_machine_is_compatible("atmel,at91sam9263ek");
> > +}
> > +postcore_initcall(check_fdt);
> > +
> 
> Reading this I realized that I wrote buggy initcalls in my original
> AT91SAM9x5EK patches and set a bad example/precedent (I'll submit
> patches to fix that). That check above is just going to print a error
> message, but it wouldn't prevent the code for wrong board from being
> executed (say if you are running image that supports both
> at91sam9263ek and at91sam9g45 on either). IMHO, what you want to do,
> and what I should've done as well, is to add
> 
> if (!of_machine_is_compatible("atmel,at91sam9263ek"))
>     return 0;
> 
> early exit code to the start of very *_callback call. Here's a decent
> example where I didn't screw this up:
> 
> https://git.pengutronix.de/cgit/barebox/tree/arch/arm/boards/zii-vf610-dev/board.c#n55

Lucas Stach already told me so in another mail some months ago.
But I somehow missed it when re-spinning the patches.
So very good that you noticed this.

If you do a respin of the AT91SAM9x5EK then consider if the current
DT support for the display can replace what is used today.

> > +       /* setup bus-width (8 or 16) */
> > +#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
> > +       ek_nand_smc_config.mode |= AT91_SMC_DBW_16;
> > +#else
> > +       ek_nand_smc_config.mode |= AT91_SMC_DBW_8;
> > +#endif
> > +
> 
> You already use IS_ENABLED below, so it might be more consistent to
> use it here as well.
Agreed, much nicer.

> > +static int at91sam9263ek_phy_init(void)
> > +{
> > +       /*
> > +        * PB27 enables the 50MHz oscillator for Ethernet PHY
> > +        * 1 - enable
> > +        * 0 - disable
> > +        */
> > +       at91_set_gpio_output(AT91_PIN_PB27, 1);
> > +       gpio_set_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
> > +       return 0;
> > +}
> > +device_initcall(at91sam9263ek_phy_init);
> > +
> 
> This is fine as it is, but you can probably drop the code above in
> favor of gpio-hog in DT file.
Did not know of the hog thingy. Done, thanks,

> >
> > +#if defined(CONFIG_COMMON_CLK_AT91)
> > +static void at91sam9263_initialize(void)
> > +{
> > +       at91_add_sam9_smc(0, AT91SAM9263_BASE_SMC0, 0x200);
> > +       at91_add_sam9_smc(1, AT91SAM9263_BASE_SMC1, 0x200);
> > +}
> > +#else
> >  /*
> >   * The peripheral clocks.
> >   */
> > @@ -248,6 +255,7 @@ static void at91sam9263_initialize(void)
> >         at91_add_sam9_smc(0, AT91SAM9263_BASE_SMC0, 0x200);
> >         at91_add_sam9_smc(1, AT91SAM9263_BASE_SMC1, 0x200);
> >  }
> > +#endif
> 
> Is it too much work to move those two SMC-related calls into board
> file and not compile mach-at91/at91sam9263.c for DT enabled build at
> all?
This is more work than what one would think looking at this diff.
And if done right then both at91sam9263.c and at91sam9263_devices.c
should no longer be used.

But...
- The code uses at91_rtt_irq_fixup() which can only be called from mach-at91.
- setup.c has the at91_init_soc thing that must be defined

so looking into solving these in a nice way as a preparation.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
