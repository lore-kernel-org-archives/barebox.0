Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo6.mail-out.ovh.net ([87.98.157.236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zjqpm-0000sk-CT
 for barebox@lists.infradead.org; Wed, 07 Oct 2015 15:40:51 +0000
Received: from mail179.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id ED1FCFFA7E3
 for <barebox@lists.infradead.org>; Wed,  7 Oct 2015 17:40:27 +0200 (CEST)
Date: Wed, 7 Oct 2015 17:40:24 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20151007154024.GA14384@ns203013.ovh.net>
References: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
 <1442937514-19675-5-git-send-email-pmamonov@gmail.com>
 <20151007134703.GA8288@ns203013.ovh.net>
 <20151007174016.00ac1be5@berta>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151007174016.00ac1be5@berta>
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
Subject: Re: [PATCH 4/5] usb: ehci-hcd: use mdelay_non_inerruptible()
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On 17:40 Wed 07 Oct     , Peter Mamonov wrote:
> On Wed, 7 Oct 2015 15:47:03 +0200
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> 
> > On 18:58 Tue 22 Sep     , Peter Mamonov wrote:
> > > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > > ---
> > >  drivers/usb/host/ehci-hcd.c | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/usb/host/ehci-hcd.c
> > > b/drivers/usb/host/ehci-hcd.c index d6df7b8..03d6150 100644
> > > --- a/drivers/usb/host/ehci-hcd.c
> > > +++ b/drivers/usb/host/ehci-hcd.c
> > > @@ -684,7 +684,7 @@ ehci_submit_root(struct usb_device *dev,
> > > unsigned long pipe, void *buffer,
> > >  				 * root
> > >  				 */
> > >  				ehci_powerup_fixup(ehci);
> > > -				mdelay(50);
> > > +				mdelay_non_interruptible(50);
> > >  				ehci->portreset |= 1 << port;
> > >  				/* terminate the reset */
> > >  				ehci_writel(status_reg, reg &
> > > ~EHCI_PS_PR); @@ -747,7 +747,7 @@ ehci_submit_root(struct
> > > usb_device *dev, unsigned long pipe, void *buffer, goto unknown;
> > >  	}
> > >  
> > > -	mdelay(1);
> > > +	mdelay_non_interruptible(1);
> > >  	len = min3(srclen, (int)le16_to_cpu(req->length), length);
> > >  	if (srcptr != NULL && len > 0)
> > >  		memcpy(buffer, srcptr, len);
> > > @@ -889,7 +889,7 @@ static int ehci_init(struct usb_host *host)
> > >  	ehci_writel(&ehci->hcor->or_configflag, cmd);
> > >  	/* unblock posted write */
> > >  	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
> > > -	mdelay(5);
> > > +	mdelay_non_interruptible(5);
> > why do you need that much non interruptible delau?
> 
> Non-interruptible delays are needed here to prevent ehci_* functions
> re-entrance. The re-entrance occurs during a usb bus scan, after
> detection of a usb keyboard. As soon as a USB keyboard is detected, it's
> driver starts the poller, which interferes with the process of usb bus scan.
> However that last one delay may be interruptible.

my problem is as soon as you start a usb control msg you block everything

nothing else can run in barebox

can slow down barebox boot

I do think we need a real mdelay_non_interruptible feature but just forbidden
to recall usb control msg.
But the rest of barebox can run durring those 5ms

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
