Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cvhpR-0006EU-FY
 for barebox@lists.infradead.org; Wed, 05 Apr 2017 10:06:19 +0000
Received: by mail-lf0-x242.google.com with SMTP id v2so733394lfi.2
 for <barebox@lists.infradead.org>; Wed, 05 Apr 2017 03:05:56 -0700 (PDT)
Date: Wed, 5 Apr 2017 13:05:47 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20170405100547.GA16849@berta>
References: <20170322213615.24527-1-pmamonov@gmail.com>
 <20170324062055.f7oeacmhkm3hkizj@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170324062055.f7oeacmhkm3hkizj@pengutronix.de>
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
Subject: Re: [PATCH] usb: uhci-hcd: fix uhci_alloc_int_td()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sasha,

On Fri, Mar 24, 2017 at 07:20:55AM +0100, Sascha Hauer wrote:
> Hi Peter,
> 
> On Thu, Mar 23, 2017 at 12:36:15AM +0300, Peter Mamonov wrote:
> > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > ---
> >  drivers/usb/host/uhci-hcd.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/usb/host/uhci-hcd.c b/drivers/usb/host/uhci-hcd.c
> > index 9ad4644e8..04d167ee3 100644
> > --- a/drivers/usb/host/uhci-hcd.c
> > +++ b/drivers/usb/host/uhci-hcd.c
> > @@ -554,8 +554,12 @@ static int submit_bulk_msg(struct usb_device *dev, unsigned long pipe,
> >   */
> >  static struct uhci_td *uhci_alloc_int_td(struct uhci_priv *uhci)
> >  {
> > -	return &uhci->tmp_int_td[0];
> > +	int i;
> >  
> > +	for (i = 0; i < USB_MAX_TEMP_INT_TD; i++)
> > +		if (uhci->tmp_int_td[i].dev_ptr == 0)
> > +			return &uhci->tmp_int_td[i];
> > +	return NULL;
> 
> You have to upstream the uhci driver first before I can apply fixes for
> it ;)

Right =)

I've just realized it was not accepted... for a good reason: 
http://lists.infradead.org/pipermail/barebox/2016-January/026016.html

Regards,
Peter

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
