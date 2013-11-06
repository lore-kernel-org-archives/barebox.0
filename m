Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vdyei-0007lt-B6
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 08:40:05 +0000
Date: Wed, 6 Nov 2013 09:39:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131106083938.GG24559@pengutronix.de>
References: <1383662527-8538-1-git-send-email-lisovy@gmail.com>
 <1383662527-8538-3-git-send-email-lisovy@gmail.com>
 <20131105161516.GI26639@ns203013.ovh.net>
 <201311052011.05133.pisa@cmp.felk.cvut.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201311052011.05133.pisa@cmp.felk.cvut.cz>
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
To: Pavel Pisa <pisa@cmp.felk.cvut.cz>
Cc: barebox@lists.infradead.org, Rostislav Lisovy <lisovy@gmail.com>

Hi Pavel,

On Tue, Nov 05, 2013 at 08:11:05PM +0100, Pavel Pisa wrote:
> Hello Jean-Christophe and Rosta,
> 
> On Tuesday 05 of November 2013 17:15:16 Jean-Christophe PLAGNIOL-VILLARD 
> wrote:
> > On 15:42 Tue 05 Nov     , Rostislav Lisovy wrote:
> > > Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
> > >
> > > diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> > > index 2f31352..6f883bf 100644
> > > --- a/drivers/net/fec_imx.c
> > > +++ b/drivers/net/fec_imx.c
> > > @@ -671,6 +676,22 @@ static int fec_probe(struct device_d *dev)
> > >
> > >  	fec->regs = dev_request_mem_region(dev, 0);
> > >
> > > +#ifdef CONFIG_OFDEVICE
> >
> > use if (IS_ENABLED(CONFIG_OFDEVICE))
> >
> > so we can improve the code coverage
> >
> > > +	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
> 
> I have question if the missing definition of reset pin should/must lead
> to whole ethernet interface removal/initialization abort.

Thanks for spotting. The gpio pin should indeed be optional. The driver
should only fail if the gpio is specified, but not working. It should
not fail if there's no gpio specified at all.

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
