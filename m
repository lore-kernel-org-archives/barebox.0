Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtXsP-0007oo-Pn
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 13:13:31 +0000
Message-ID: <cce155c6376da68152e9e2e6771c873a0027ba3a.camel@phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 12 Feb 2019 14:13:26 +0100
In-Reply-To: <CAHQ1cqGq51BYSwNZ+8YDWHxgeBTEkpVBMguu5_P-SiqkBRoDXg@mail.gmail.com>
References: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
 <1549898200-32688-2-git-send-email-t.remmet@phytec.de>
 <CAHQ1cqGq51BYSwNZ+8YDWHxgeBTEkpVBMguu5_P-SiqkBRoDXg@mail.gmail.com>
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
Subject: Re: [PATCH 1/7] drivers: bus: Add ti-sysc bus driver
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hello Andrey,

Am Montag, den 11.02.2019, 18:57 -0800 schrieb Andrey Smirnov:
> On Mon, Feb 11, 2019 at 7:16 AM Teresa Remmet <t.remmet@phytec.de>
> wrote:
> > 
> > Adds minimal support for the sysc interconnect target module found
> > on many TI SoCs. With this device tree includes have been
> > rearagned.
> > We need the driver to probe the child devices of the bus.
> > 
> > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > ---
> > 
> > +
> > +static const struct of_device_id sysc_match_table[] = {
> > +       { .compatible = "simple-bus", },
> > +       { /* sentinel */ },
> > +};
> > +
> > +static int ti_sysc_probe(struct device_d *dev)
> > +{
> > +       int ret;
> > +
> > +       ret = of_platform_populate(dev->device_node,
> > sysc_match_table, dev);
> 
> Is sysc_match_table really necessary? AFAIK that argument can be NULL
> unless on of the child nodes needs to be treated like a platform bus
> as well.

My first attempted was using NULL but this does not work. As for
example the pinmux node (pinmux@800) is child of a simple-bus. And the
simple-bus itself is a child of a ti-sysc node. See dts/src/arm/am33xx-
l4.dtsi.
The kernel does it the same way. 

> 
> > +       if (ret)
> > +               dev_err(dev, "%s fail to create devices.\n",
> > +                                       dev->device_node-
> > >full_name);
> > +       return ret;
> > +};
> > +
> > +static struct of_device_id ti_sysc_dt_ids[] = {
> > +       { .compatible = "ti,sysc-omap4",},
> > +       { .compatible = "ti,sysc-omap4-simple",},
> > +       { .compatible = "ti,sysc-omap4-timer",},
> > +       { .compatible = "ti,sysc-omap2",},
> > +       { },
> > +};
> > +
> > +static struct driver_d ti_sysc_driver = {
> > +       .name = "ti-sysc",
> > +       .probe = ti_sysc_probe,
> > +       .of_compatible = DRV_OF_COMPAT(ti_sysc_dt_ids),
> > +};
> > +
> > +static int ti_sysc_init(void)
> > +{
> > +       return platform_driver_register(&ti_sysc_driver);
> > +}
> > +postcore_initcall(ti_sysc_init);
> 
> postcore_platform_driver()?

Thanks! I will update this.

Teresa

> 
> Thanks,
> Andrey Smirnov


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
