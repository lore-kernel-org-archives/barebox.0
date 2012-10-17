Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo4.mail-out.ovh.net ([46.105.41.16]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOO2x-0006em-OJ
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 07:28:09 +0000
Received: from mail438.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 79D6F104F492
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 09:34:45 +0200 (CEST)
Date: Wed, 17 Oct 2012 09:25:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121017072548.GE30038@game.jcrosoft.org>
References: <1350410685-46202-1-git-send-email-carlo.caione@gmail.com>
 <1350410685-46202-5-git-send-email-carlo.caione@gmail.com>
 <20121016212416.GC27665@pengutronix.de>
 <20121017065135.GC30038@game.jcrosoft.org>
 <20121017070139.GM27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121017070139.GM27665@pengutronix.de>
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
Subject: Re: [PATCH 4/5] BCM2835: add support (arch)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:01 Wed 17 Oct     , Sascha Hauer wrote:
> On Wed, Oct 17, 2012 at 08:51:35AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 23:24 Tue 16 Oct     , Sascha Hauer wrote:
> > > On Tue, Oct 16, 2012 at 08:04:44PM +0200, Carlo Caione wrote:
> > > > +
> > > > +static struct clk ref_3_clk = {
> > > > +	.rate = 3 * 1000 * 1000,
> > > > +};
> > > > +
> > > > +static struct clk ref_1_clk = {
> > > > +	.rate = 1 * 1000 * 1000,
> > > > +};
> > > 
> > > Add a 'select COMMON_CLK' to your Kconfig and do a:
> > > 
> > > 	clk_dummy = clk_fixed("dummy", 0);
> > > 	clk_ref_3 = clk_fixed("ref3", 3 * 1000 * 1000);
> > > 	clk_ref_1 = clk_fixed("ref1", 1 * 1000 * 1000);
> > > 
> > > Then you can drop your clk code and get a clk_dump command
> > > which you can use to see what clocks you have.
> > > 
> > > > +static int bcm2835_gpio_init(void)
> > > > +{
> > > > +	add_generic_device("bcm2835-gpio", 0, NULL, BCM2835_GPIO_BASE, 0xB0, IORESOURCE_MEM, NULL);
> > > > +	return 0;
> > > > +}
> > > > +coredevice_initcall(bcm2835_gpio_init);
> > > > +
> > > > +static int bcm2835_clkdev_init(void)
> > > > +{
> > > > +	clkdev_add_table(clocks_lookups, ARRAY_SIZE(clocks_lookups));
> > > > +	return 0;
> > > > +}
> > > > +postcore_initcall(bcm2835_clkdev_init);
> > > > +
> > > > +static int bcm2835_clocksource_init(void)
> > > > +{
> > > > +	add_generic_device("bcm2835-cs", DEVICE_ID_SINGLE, NULL, BCM2835_ST_BASE, 0x1C, IORESOURCE_MEM, NULL);
> > > > +	return 0;
> > > > +}
> > > > +coredevice_initcall(bcm2835_clocksource_init);
> > > > +
> > > 
> > > Please consolidate the initcalls. A single function for the three above
> > > is enough.
> > > 
> > > > +void bcm2835_register_uart(void)
> > > 
> > > Please add the UART index to the function name.
> > as we discuss no need the uart1 use the same pin as uart0 and is a wired mini
> > uart
> 
> But it has a different register base. How do I decide which one I use?
why use a different at the end it the same pin

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
