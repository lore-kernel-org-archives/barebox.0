Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCarz-0008MW-RD
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 19:16:24 +0000
Date: Mon, 4 Mar 2013 20:16:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130304191617.GG1906@pengutronix.de>
References: <1362412809-23253-1-git-send-email-s.hauer@pengutronix.de>
 <20130304190529.GJ23022@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130304190529.GJ23022@game.jcrosoft.org>
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
Subject: Re: [PATCH] usb: ehci: initialize ehci_data
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 04, 2013 at 08:05:29PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 17:00 Mon 04 Mar     , Sascha Hauer wrote:
> > Without it fields of ehci_data may be unitialized and the driver
> > crashes.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/usb/host/ehci-hcd.c |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> > index 0c789e4..7c389aa 100644
> > --- a/drivers/usb/host/ehci-hcd.c
> > +++ b/drivers/usb/host/ehci-hcd.c
> > @@ -892,7 +892,7 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
> >  
> >  static int ehci_probe(struct device_d *dev)
> >  {
> > -	struct ehci_data data;
> > +	struct ehci_data data = {};
> 
> I'll prefer a memset

Then you'll happy to hear that this is what the compiler makes from it
anyway.

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
