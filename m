Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBwdo-0001Hm-4G
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 09:27:32 +0000
Date: Tue, 16 Feb 2021 10:27:29 +0100
Message-ID: <20210216092729.GW19583@pengutronix.de>
References: <20210208163458.29143-2-jmaselbas@kalray.eu>
 <20210215141843.27629-1-jmaselbas@kalray.eu>
 <2e8c050e-b72d-5f29-c905-8c8e1bf5e303@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2e8c050e-b72d-5f29-c905-8c8e1bf5e303@grinn-global.com>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] usb: gadget: dfu: Rework print messages
To: Bartosz Bilas <b.bilas@grinn-global.com>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org

On Tue, Feb 16, 2021 at 10:19:00AM +0100, Bartosz Bilas wrote:
> Hello Jules,
> 
> On 15.02.2021 15:18, Jules Maselbas wrote:
> > Replace printf with pr_err and debug with pr_debug.
> > Defines "dfu :" as a prefix for formatted prints.
> > 
> > ---
> > v1 -> v2:
> >   - add `pr_fmt(fmt) "dfu: " fmt`
> >   - change debug call to pr_debug
> >   - remove "dfu: " in print messages
> > 
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> > ---
> >   drivers/usb/gadget/dfu.c | 11 ++++++-----
> >   1 file changed, 6 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
> > index 9d6a9d252..fba4ad782 100644
> > --- a/drivers/usb/gadget/dfu.c
> > +++ b/drivers/usb/gadget/dfu.c
> > @@ -32,6 +32,7 @@
> >    *   checking?
> >    * - make 'dnstate' attached to 'struct usb_device_instance'
> >    */
> > +#define pr_fmt(fmt) "dfu: " fmt
> >   #include <dma.h>
> >   #include <asm/byteorder.h>
> > @@ -209,7 +210,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
> >   	dfu->dnreq = usb_ep_alloc_request(c->cdev->gadget->ep0);
> >   	if (!dfu->dnreq) {
> > -		printf("usb_ep_alloc_request failed\n");
> > +		pr_err("dfu: usb_ep_alloc_request failed\n");
> 
> you have missed this one ^^^^^

Fixed while applying, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
