Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zjruy-0007AL-4B
 for barebox@lists.infradead.org; Wed, 07 Oct 2015 16:50:17 +0000
Received: by lbcao8 with SMTP id ao8so18711511lbc.3
 for <barebox@lists.infradead.org>; Wed, 07 Oct 2015 09:49:54 -0700 (PDT)
Date: Wed, 7 Oct 2015 19:52:21 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20151007195221.7aaea4c6@berta>
In-Reply-To: <20151007154024.GA14384@ns203013.ovh.net>
References: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
 <1442937514-19675-5-git-send-email-pmamonov@gmail.com>
 <20151007134703.GA8288@ns203013.ovh.net>
 <20151007174016.00ac1be5@berta>
 <20151007154024.GA14384@ns203013.ovh.net>
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
Subject: Re: [PATCH 4/5] usb: ehci-hcd: use mdelay_non_inerruptible()
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, 7 Oct 2015 17:40:24 +0200
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> On 17:40 Wed 07 Oct     , Peter Mamonov wrote:
> > On Wed, 7 Oct 2015 15:47:03 +0200
> > Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> > 
> > > On 18:58 Tue 22 Sep     , Peter Mamonov wrote:
> > > > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > > > ---
> > > >  drivers/usb/host/ehci-hcd.c | 6 +++---
> > > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/drivers/usb/host/ehci-hcd.c
> > > > b/drivers/usb/host/ehci-hcd.c index d6df7b8..03d6150 100644
> > > > --- a/drivers/usb/host/ehci-hcd.c
> > > > +++ b/drivers/usb/host/ehci-hcd.c
> > > > @@ -684,7 +684,7 @@ ehci_submit_root(struct usb_device *dev,
> > > > unsigned long pipe, void *buffer,
> > > >  				 * root
> > > >  				 */
> > > >  				ehci_powerup_fixup(ehci);
> > > > -				mdelay(50);
> > > > +				mdelay_non_interruptible(50);
> > > >  				ehci->portreset |= 1 << port;
> > > >  				/* terminate the reset */
> > > >  				ehci_writel(status_reg, reg &
> > > > ~EHCI_PS_PR); @@ -747,7 +747,7 @@ ehci_submit_root(struct
> > > > usb_device *dev, unsigned long pipe, void *buffer, goto unknown;
> > > >  	}
> > > >  
> > > > -	mdelay(1);
> > > > +	mdelay_non_interruptible(1);
> > > >  	len = min3(srclen, (int)le16_to_cpu(req->length),
> > > > length); if (srcptr != NULL && len > 0)
> > > >  		memcpy(buffer, srcptr, len);
> > > > @@ -889,7 +889,7 @@ static int ehci_init(struct usb_host *host)
> > > >  	ehci_writel(&ehci->hcor->or_configflag, cmd);
> > > >  	/* unblock posted write */
> > > >  	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
> > > > -	mdelay(5);
> > > > +	mdelay_non_interruptible(5);
> > > why do you need that much non interruptible delau?
> > 
> > Non-interruptible delays are needed here to prevent ehci_* functions
> > re-entrance. The re-entrance occurs during a usb bus scan, after
> > detection of a usb keyboard. As soon as a USB keyboard is detected,
> > it's driver starts the poller, which interferes with the process of
> > usb bus scan. However that last one delay may be interruptible.
> 
> my problem is as soon as you start a usb control msg you block
> everything
> 
> nothing else can run in barebox
> 
> can slow down barebox boot
> 
> I do think we need a real mdelay_non_interruptible feature but just
> forbidden to recall usb control msg.
> But the rest of barebox can run durring those 5ms

Well, I think it can be done by returning -EAGAIN on re-entrance
detection in ehci_* functions [1], and skipping the poll in the keyboard
driver.

By the way, could you clarify: do you really experience
considerable barebox slowdown or you make an assumtion based on the
code analysis?

[1]
http://lists.infradead.org/pipermail/barebox/2015-September/024715.html

Regards,
Peter

> 
> Best Regards,
> J.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
