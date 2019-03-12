Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3WX9-0004BL-Ir
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 01:48:48 +0000
Received: by mail-wr1-x443.google.com with SMTP id t18so913784wrx.2
 for <barebox@lists.infradead.org>; Mon, 11 Mar 2019 18:48:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190307074813.19664-1-andrew.smirnov@gmail.com>
 <20190311071325.2q3x2x3ntupsp4td@pengutronix.de>
In-Reply-To: <20190311071325.2q3x2x3ntupsp4td@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Mar 2019 18:48:34 -0700
Message-ID: <CAHQ1cqHuj_BD1hDV7ZpQXx7Ov817APWyV-q4OVm7wn6ADd4QuA@mail.gmail.com>
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
Subject: Re: [PATCH] usb: dwc3: Toggle GCTL.CORESOFTRESET as a first step
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Mar 11, 2019 at 12:13 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Wed, Mar 06, 2019 at 11:48:13PM -0800, Andrey Smirnov wrote:
> > Toggle GCTL.CORESOFTRESET before trying to access any of the block's
> > registers. Without this additional step, first read of DWC3_GHWPARAMS*
> > that follows results in assertion of GSTS.CSRTIMEOUT and IP block
> > stuck in a non-functional state.
> >
> > Note that all above has only been observed on i.MX8MQ (ZII Zest board)
> > for USB1 controller. USB2 doesn't seem to be affected by this.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  drivers/usb/dwc3/core.c | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >
> > diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> > index 2e7031a34..1fc24a441 100644
> > --- a/drivers/usb/dwc3/core.c
> > +++ b/drivers/usb/dwc3/core.c
> > @@ -663,6 +663,21 @@ static void dwc3_check_params(struct dwc3 *dwc)
> >       }
> >  }
> >
> > +static void dwc3_coresoft_reset(struct dwc3 *dwc)
> > +{
> > +     u32 reg;
> > +
> > +     reg = dwc3_readl(dwc->regs, DWC3_GCTL);
> > +     reg |= DWC3_GCTL_CORESOFTRESET;
> > +     dwc3_writel(dwc->regs, DWC3_GCTL, reg);
> > +
> > +     mdelay(100);
>
> 100ms is quite long. Isn't a shorter delay enough?

Hmm, not sure, that's the number I got from similar reset sequence
found in U-Boot. I'll experiment on bringing it down and submit a v2
if smaller delay is enough.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
