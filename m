Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay.felk.cvut.cz ([2001:718:2:1611:0:1:0:70])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vdm2j-00034m-Uw
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 19:12:04 +0000
From: Pavel Pisa <pisa@cmp.felk.cvut.cz>
Date: Tue, 5 Nov 2013 20:11:05 +0100
References: <1383662527-8538-1-git-send-email-lisovy@gmail.com>
 <1383662527-8538-3-git-send-email-lisovy@gmail.com>
 <20131105161516.GI26639@ns203013.ovh.net>
In-Reply-To: <20131105161516.GI26639@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201311052011.05133.pisa@cmp.felk.cvut.cz>
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
Subject: Re: [PATCH 2/3] ARM: i.mx53: Parse Reset GPIO pin in FEC driver from
 Devicetree
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, Rostislav Lisovy <lisovy@gmail.com>
Cc: barebox@lists.infradead.org

Hello Jean-Christophe and Rosta,

On Tuesday 05 of November 2013 17:15:16 Jean-Christophe PLAGNIOL-VILLARD 
wrote:
> On 15:42 Tue 05 Nov     , Rostislav Lisovy wrote:
> > Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
> >
> > diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> > index 2f31352..6f883bf 100644
> > --- a/drivers/net/fec_imx.c
> > +++ b/drivers/net/fec_imx.c
> > @@ -671,6 +676,22 @@ static int fec_probe(struct device_d *dev)
> >
> >  	fec->regs = dev_request_mem_region(dev, 0);
> >
> > +#ifdef CONFIG_OFDEVICE
>
> use if (IS_ENABLED(CONFIG_OFDEVICE))
>
> so we can improve the code coverage
>
> > +	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);

I have question if the missing definition of reset pin should/must lead
to whole ethernet interface removal/initialization abort.

I think, that there can be design where PHY reset is not controlled
by MCU pin (it is usually possible even reset device through MDIO)
and then it would be better to check if "phy-reset-gpios" is present
and if not then skip whole attempt to manipulate GPIO.
On the other hand if "phy-reset-gpios", it is required to configure it,
because default pin state can/should lead to PHY reset.

I.e.

if (IS_ENABLED(CONFIG_OFDEVICE))

  phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);

  if(phy_reset < 0) {
    print info ("\"phy-reset-gpios\" is not used for i.MX fec, skipping forced 
reset\n")
    
  } else {

> > +	if (!gpio_is_valid(phy_reset))
> > +		goto err_free;
> > +
> > +	ret = gpio_request(phy_reset, "phy-reset");
> > +	if (ret) {
> > +		pr_err("Can not request gpio %d (phy-reset): %d\n", phy_reset, ret);
> > +		goto err_free;
> > +	}
> > +
> > +	gpio_direction_output(phy_reset, 0);
>
> you need to check the return too
>
> > +	udelay(10);
> > +	gpio_set_value(phy_reset, 1);
  }
}
> > +
> >  	/* Reset chip. */
> >  	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
> >  	while(readl(fec->regs + FEC_ECNTRL) & 1) {

Best wishes,


                 Pavel


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
