Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZVav-0001Ey-1s
 for barebox@lists.infradead.org; Fri, 15 May 2020 08:21:26 +0000
Message-ID: <b14b3b08ee06f0fd78a4506e1bacd1ff7c6d58fe.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 15 May 2020 10:21:20 +0200
In-Reply-To: <aabfc4bf-e50a-e4f3-47d5-0401907dd8f9@pengutronix.de>
References: <20200513120847.7894-1-l.stach@pengutronix.de>
 <aabfc4bf-e50a-e4f3-47d5-0401907dd8f9@pengutronix.de>
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
Subject: Re: [PATCH] mci: stm32_sdmmc2: add detect function
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org

Hi Ahmad,

Am Mittwoch, den 13.05.2020, 20:38 +0200 schrieb Ahmad Fatoum:
> Hello Lucas,
> 
> On 5/13/20 2:08 PM, Lucas Stach wrote:
> > This way we can avoid probing for the SD/MMC devices at startup
> > and just detect them when actually needed.
> 
> Is there a reason we can't have mci_register do it for every MCI.hw_dev
> at registration time?
> 
> Out of 17 MCI drivers, 8 already have the same wrapper around mci_detect_card.

I've looked at this, but it's not easily possible. We already have a
detect function implemented by the mci core on the mci device, but this
doesn't suffice to allow detection of the card when called on the
controller device, which is needed for example when the environment is
located on the mmc device.

To implement the detect callback one needs to pass some data through
the driver private data and the mci core has no business of changing
this data on the controller device struct.

Regards,
Lucas

> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  drivers/mci/stm32_sdmmc2.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
> > index 3ce3bb0f89d2..ac52b62fa0b7 100644
> > --- a/drivers/mci/stm32_sdmmc2.c
> > +++ b/drivers/mci/stm32_sdmmc2.c
> > @@ -571,6 +571,13 @@ static void stm32_sdmmc2_set_ios(struct mci_host *mci, struct mci_ios *ios)
> >  	       priv->base + SDMMC_CLKCR);
> >  }
> >  
> > +static int stm32_sdmmc2_detect(struct device_d *dev)
> > +{
> > +	struct stm32_sdmmc2_priv *priv = dev->priv;
> > +
> > +	return mci_detect_card(&priv->mci);
> > +}
> > +
> >  static int stm32_sdmmc2_probe(struct amba_device *adev,
> >  			      const struct amba_id *id)
> >  {
> > @@ -591,6 +598,9 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
> >  	mci->init = stm32_sdmmc2_reset;
> >  	mci->hw_dev = dev;
> >  
> > +	dev->priv = priv;
> > +	dev->detect = stm32_sdmmc2_detect;
> > +
> >  	priv->clk = clk_get(dev, NULL);
> >  	if (IS_ERR(priv->clk)) {
> >  		ret = PTR_ERR(priv->clk);
> > 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
