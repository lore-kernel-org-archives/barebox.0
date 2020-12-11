Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knlAW-0006P1-Fx
 for barebox@lists.infradead.org; Fri, 11 Dec 2020 16:21:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id BB5181A42CD
 for <barebox@lists.infradead.org>; Fri, 11 Dec 2020 16:21:16 +0000 (UTC)
Date: Fri, 11 Dec 2020 17:21:10 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20201211162110.th725gs3ddrcyp5s@tellis.lin.mbt.kalray.eu>
References: <20201210103104.3816-1-jmaselbas@kalray.eu>
 <20201211153608.GB3977@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201211153608.GB3977@pengutronix.de>
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
Subject: Re: [PATCH v2 1/4] usb: dwc2: Add support for optional usb phy
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Fri, Dec 11, 2020 at 04:36:08PM +0100, Sascha Hauer wrote:
> On Thu, Dec 10, 2020 at 11:31:01AM +0100, Jules Maselbas wrote:
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> > ---
> >  drivers/usb/dwc2/core.h |  2 ++
> >  drivers/usb/dwc2/dwc2.c | 24 ++++++++++++++++++++++++
> >  drivers/usb/dwc2/dwc2.h |  1 +
> >  3 files changed, 27 insertions(+)
> > 
> > diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
> > index 090ca15fe..b9845b552 100644
> > --- a/drivers/usb/dwc2/core.h
> > +++ b/drivers/usb/dwc2/core.h
> > @@ -466,6 +466,8 @@ struct dwc2 {
> >  	struct dwc2_hw_params hw_params;
> >  	struct dwc2_core_params params;
> >  
> > +	struct phy *phy; /* optional */
> > +
> >  #ifdef CONFIG_USB_DWC2_HOST
> >  	struct usb_host host;
> >  	u8 in_data_toggle[MAX_DEVICE][MAX_ENDPOINT];
> > diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
> > index 282e6754b..9ab3b5b53 100644
> > --- a/drivers/usb/dwc2/dwc2.c
> > +++ b/drivers/usb/dwc2/dwc2.c
> > @@ -50,6 +50,20 @@ static int dwc2_probe(struct device_d *dev)
> >  	dwc2->regs = IOMEM(iores->start);
> >  	dwc2->dev = dev;
> >  
> > +	dwc2->phy = phy_optional_get(dev, "usb2-phy");
> > +	if (IS_ERR(dwc2->phy)) {
> > +		ret = PTR_ERR(dwc2->phy);
> > +		return ret;
> > +	}
> > +
> > +	if (dwc2->phy) {
> > +		ret = phy_power_on(dwc2->phy);
> > +		if (ret == 0)
> > +			ret = phy_init(dwc2->phy);
> > +		if (ret)
> > +			goto error;
> > +	}
> 
> Just like with clocks a NULL pointer is handled like a dummy phy, you
> can drop the if (dwc2->phy) tests here.
Alright, I'll remove theses ifs.

> 
> Shouldn't phy_init() called before phy_power_on()? At least that's the
> order I find in the Kernel in several places.
Indeed, from what I've seen it is mostly phy_power_on and then phy_init.
However in the dwc2 driver in Linux's kernel, it is done the other way
around, see the function __dwc2_lowlevel_hw_enable in dwc2/platform.c [1]

I don't fully understand the phy api. My assumption was that phy_power_on
is used to power the phy interface, and that phy_init does initialisation
of the phy device such as toggling the reset pin as done by usb-nop-xceiv.

That's why I thought it was correct to first power on the phy and then do
initilisation. But I may have missunderstand both functions. Any insight
is more than welcome as I am new to this.

[1] https://elixir.bootlin.com/linux/latest/source/drivers/usb/dwc2/platform.c#L145

> >  	dwc2_gadget_uninit(dwc2);
> > +
> > +	if (dwc2->phy) {
> > +		ret = phy_exit(dwc2->phy);
> > +		if (ret == 0)
> > +			phy_power_off(dwc2->phy);
> > +	}
> 
> Likewise phy_power_off() before phy_exit().


---
Jules


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
