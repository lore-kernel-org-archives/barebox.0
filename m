Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtplK-0004BL-Fh
 for barebox@lists.infradead.org; Wed, 13 Feb 2019 08:19:24 +0000
Message-ID: <e810351bb446451f584595f17c88b6de38f27436.camel@phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 13 Feb 2019 09:19:19 +0100
In-Reply-To: <CAHQ1cqHH_o962ApYEuwAS6aC6Tckitazqet0jDVxhgJ9VOAhgg@mail.gmail.com>
References: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
 <1549898200-32688-2-git-send-email-t.remmet@phytec.de>
 <CAHQ1cqGq51BYSwNZ+8YDWHxgeBTEkpVBMguu5_P-SiqkBRoDXg@mail.gmail.com>
 <cce155c6376da68152e9e2e6771c873a0027ba3a.camel@phytec.de>
 <CAHQ1cqHH_o962ApYEuwAS6aC6Tckitazqet0jDVxhgJ9VOAhgg@mail.gmail.com>
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

Am Dienstag, den 12.02.2019, 16:56 -0800 schrieb Andrey Smirnov:
> On Tue, Feb 12, 2019 at 5:13 AM Teresa Remmet <t.remmet@phytec.de>
> wrote:
> > 
> > Hello Andrey,
> > 
> > Am Montag, den 11.02.2019, 18:57 -0800 schrieb Andrey Smirnov:
> > > On Mon, Feb 11, 2019 at 7:16 AM Teresa Remmet <t.remmet@phytec.de
> > > >
> > > wrote:
> > > > 
> > > > Adds minimal support for the sysc interconnect target module
> > > > found
> > > > on many TI SoCs. With this device tree includes have been
> > > > rearagned.
> > > > We need the driver to probe the child devices of the bus.
> > > > 
> > > > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > > > ---
> > > > 
> > > > +
> > > > +static const struct of_device_id sysc_match_table[] = {
> > > > +       { .compatible = "simple-bus", },
> > > > +       { /* sentinel */ },
> > > > +};
> > > > +
> > > > +static int ti_sysc_probe(struct device_d *dev)
> > > > +{
> > > > +       int ret;
> > > > +
> > > > +       ret = of_platform_populate(dev->device_node,
> > > > sysc_match_table, dev);
> > > 
> > > Is sysc_match_table really necessary? AFAIK that argument can be
> > > NULL
> > > unless on of the child nodes needs to be treated like a platform
> > > bus
> > > as well.
> > 
> > My first attempted was using NULL but this does not work. As for
> > example the pinmux node (pinmux@800) is child of a simple-bus. And
> > the
> > simple-bus itself is a child of a ti-sysc node. See
> > dts/src/arm/am33xx-
> > l4.dtsi.
> > The kernel does it the same way.
> > 
> 
> Ah, I see, your use-case does require child nodes to be treated as a
> platform bus. FWIW, there's also globally visible
> of_default_bus_match_table that can probably replace
> sysc_match_table.

Yes, will add this in v2. 

Thanks,
Teresa


> 
> Thanks,
> Andrey Smirnov


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
